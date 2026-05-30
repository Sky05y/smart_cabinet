#include "common_def.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "pinctrl.h"
#include "i2c.h"
#include "uart.h"
#include "gpio.h"
#include "demo.h"
#include "ssd1306.h"
#include "ssd1306_fonts.h"
#include "bh1750.h"
#include "mq_adc.h"
#include "dht11.h"

// 全局识别状态：0-等待, 1-成功, 2-失败
static volatile int g_verify_status = 0;

// UART 接收缓存
static uint8_t g_uart_rx_buff[512] = {0};
static uart_buffer_config_t g_uart_buffer_config = {
    .rx_buffer      = g_uart_rx_buff,
    .rx_buffer_size = 512
};



// ===================== 静态指令包 =====================
static const uint8_t CMD_GET_IMAGE[] = {
    0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x01, 0x00, 0x03, 0x01, 0x00, 0x05
};
static const uint8_t CMD_GEN_CHAR[] = {
    0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x01, 0x00, 0x04, 0x02, 0x01, 0x00, 0x08
};
static const uint8_t CMD_SEARCH[] = {
    0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x01, 0x00, 0x08, 0x04, 0x01,
    0x00, 0x00,
    0x00, 0xFF,
    0x01, 0x0D
};

// ===================== 硬件初始化 =====================
static void app_i2c_init_pin(void)
{
    uapi_pin_set_mode(CONFIG_I2C_SCL_MASTER_PIN, 2);
    uapi_pin_set_mode(CONFIG_I2C_SDA_MASTER_PIN, 2);
    uapi_pin_set_pull(CONFIG_I2C_SCL_MASTER_PIN, PIN_PULL_TYPE_UP);
    uapi_pin_set_pull(CONFIG_I2C_SDA_MASTER_PIN, PIN_PULL_TYPE_UP);
}
void board_hardware_init(void)
{
    // OLED I2C1 (GPIO15=SDA, GPIO16=SCL)
    uapi_gpio_init();

    // 指纹 UART2 (GPIO8=TX, GPIO7=RX)
    uapi_pin_set_mode(FP_UART_TX_PIN, 2);
    uapi_pin_set_mode(FP_UART_RX_PIN, 2);

    uart_pin_config_t uart_cfg = {
        .tx_pin  = FP_UART_TX_PIN,
        .rx_pin  = FP_UART_RX_PIN,
        .cts_pin = PIN_NONE,
        .rts_pin = PIN_NONE
    };
    uart_attr_t uart_attr = {
        .baud_rate = FP_BAUD_RATE,
        .data_bits = UART_DATA_BIT_8,
        .stop_bits = UART_STOP_BIT_1,
        .parity    = UART_PARITY_NONE,
    };


    uapi_uart_deinit(FP_UART_BUS_ID);
    uapi_uart_init(FP_UART_BUS_ID, &uart_cfg, &uart_attr, NULL, &g_uart_buffer_config);
    uapi_uart_unregister_rx_callback(FP_UART_BUS_ID);

    // WAKE 引脚 GPIO11 输入下拉
    uapi_pin_set_mode(FP_WAKE_PIN, 0);
    uapi_gpio_set_dir(FP_WAKE_PIN, GPIO_DIRECTION_INPUT);
    uapi_pin_set_pull(FP_WAKE_PIN, 2);

    // 【新增】：继电器控制引脚 GPIO 2 输出初始化
    uapi_pin_set_mode(RELAY_CTRL_PIN, 0); // 配置为普通 GPIO
    uapi_gpio_set_dir(RELAY_CTRL_PIN, GPIO_DIRECTION_OUTPUT);
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_OFF_LEVEL); // 初始状态必须为断电！防止上电乱开锁

}

// ===================== 开锁动作函数 (带安全保护) =====================
static void trigger_unlock(void)
{
    osal_printk("[LOCK] Unlocking! (Relay ON)\r\n");
    // 1. 通电，继电器吸合，锁舌缩回
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_ON_LEVEL);
    
    // 2. 保持通电 2 秒钟（给开门留出时间）
    osDelay(2000); 
    
    // 3. 断电，继电器断开，锁舌弹出（恢复常闭安全状态）
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_OFF_LEVEL);
    osal_printk("[LOCK] Locked. (Relay OFF)\r\n");
}

// ===================== OLED I2C 发送适配 =====================
uint32_t ssd1306_SendData(uint8_t *buffer, uint32_t size)
{
    i2c_data_t data = {0};
    data.send_buf = buffer;
    data.send_len = size;
    return uapi_i2c_master_write(CONFIG_I2C_MASTER_BUS_ID, I2C_SLAVE2_ADDR, &data);
}

// ===================== UART 极速通信核心 =====================
static void uart_flush_rx(void)
{
    uint8_t tmp[64];
    while (uapi_uart_read(FP_UART_BUS_ID, tmp, sizeof(tmp), 10) > 0) {}
}

static int32_t zw101_send_recv(const uint8_t *cmd, uint8_t cmd_len,
                               uint8_t *rx, uint8_t rx_max,
                               uint32_t timeout_ms)
{
    int32_t len = 0;
    uart_flush_rx();
    uapi_uart_write(FP_UART_BUS_ID, (uint8_t *)cmd, cmd_len, 0);

    uint32_t step = 10;
    uint32_t elapsed = 0;
    while (elapsed < timeout_ms) {
        int32_t chunk = uapi_uart_read(FP_UART_BUS_ID, rx + len, rx_max - len, step);
        if (chunk > 0) {
            len += chunk;
        }
        
        if (len >= 9 && rx[0] == 0xEF && rx[1] == 0x01) {
            uint16_t expected_payload_len = ((uint16_t)rx[7] << 8) | rx[8];
            if (len >= 9 + expected_payload_len) {
                break; 
            }
        }
        elapsed += step;
    }

    osal_printk("[ZW101] recv(%d): ", len);
    for (int i = 0; i < len && i < 16; i++) {
        osal_printk("%02X ", rx[i]);
    }
    osal_printk("\r\n");
    return len;
}

// ===================== 指纹识别任务 =====================
void *fingerprint_task(void *arg)
{
    uint8_t rx[32];
    int is_locked = 0;
    int success;
    int got_image;
    int i;
    int32_t len;

    unused(arg);
    osal_printk("[FP] Task ready, waiting for finger...\r\n");

    while (1) {
        if (uapi_gpio_get_val(FP_WAKE_PIN) == GPIO_LEVEL_HIGH) {
            if (!is_locked) {
                is_locked = 1;
                success   = 0;
                got_image = 0;

                osal_printk("\r\n[FP] Finger detected!\r\n");
                osDelay(50);

                for (i = 0; i < 40; i++) {
                    len = zw101_send_recv(CMD_GET_IMAGE, sizeof(CMD_GET_IMAGE), rx, sizeof(rx), 100);
                    if (len >= 12 && rx[9] == 0x00) {
                        got_image = 1;
                        break;
                    }
                    osDelay(30);
                }

                if (!got_image) {
                    osal_printk("[FP] No image -> DENIED\r\n");
                    g_verify_status = 2;
                    goto wait_lift;
                }

                len = zw101_send_recv(CMD_GEN_CHAR, sizeof(CMD_GEN_CHAR), rx, sizeof(rx), 300);
                if (len < 12 || rx[9] != 0x00) {
                    osal_printk("[FP] GenChar fail -> DENIED\r\n");
                    g_verify_status = 2;
                    goto wait_lift;
                }

                len = zw101_send_recv(CMD_SEARCH, sizeof(CMD_SEARCH), rx, sizeof(rx), 500);
                if (len >= 12 && rx[9] == 0x00) {
                    success = 1;
                }

                g_verify_status = success ? 1 : 2;

                if (success) {
                    osal_printk("[FP] Match SUCCESS\r\n");
                    trigger_unlock();
                } else {
                    osal_printk("[FP] Match fail -> DENIED\r\n");
                    osDelay(1500);
                }

wait_lift:
                osal_printk("[FP] Please lift finger...\r\n");
                while (uapi_gpio_get_val(FP_WAKE_PIN) == GPIO_LEVEL_HIGH) {
                    osDelay(50);
                }

                g_verify_status = 0;
                is_locked = 0;
                osal_printk("[FP] Standby.\r\n");
            }
        }
        osDelay(50);
    }
    return NULL;
}

// ===================== OLED 显示任务 =====================
void *oled_task(void *arg)
{
    int last_st = -1;
    int cur;

    unused(arg);
    app_i2c_init_pin();
    uapi_i2c_master_init(CONFIG_I2C_MASTER_BUS_ID, 400000, 0);
    ssd1306_Init();
    osal_printk("[OLED] Init done\r\n");

    uint16_t show_lux = 0;
    uint32_t adc_alcohol_s = 0;
    int t_int_s = 0, t_dec_s = 0, h_int_s = 0, h_dec_s = 0;

    while (1) {
        show_lux = get_lux_value();
        adc_alcohol_s = mq_adc_get_display();
        dht11_get_data(&t_int_s, &t_dec_s, &h_int_s, &h_dec_s);

        cur = g_verify_status;
        if (cur != last_st) {
            ssd1306_Fill(Black);

            /* 第一行：指纹结果 */
            if (cur == 1) {
                ssd1306_SetCursor(25, 0);
                ssd1306_DrawString("SUCCESS", Font_11x18, White);
            } else if (cur == 2) {
                ssd1306_SetCursor(25, 0);
                ssd1306_DrawString("DENIED", Font_11x18, White);
            } else {
                ssd1306_SetCursor(10, 0);
                ssd1306_DrawString("WAITING...", Font_7x10, White);
                ssd1306_SetCursor(5, 16);
                ssd1306_DrawString("Place Finger", Font_7x10, White);
            }

            last_st = cur;
        }
            /* 3. 传感器区（固定位置，不依赖指纹状态） */
        char buf[32];

        snprintf(buf, sizeof(buf), "T:%d.%dC H:%d.%d%%",
                t_int_s, t_dec_s, h_int_s, h_dec_s);
        ssd1306_SetCursor(0, 36);
        ssd1306_DrawString(buf, Font_6x8, White);

        snprintf(buf, sizeof(buf), "Lux:%d Alc:%lu",
                show_lux, adc_alcohol_s);
        ssd1306_SetCursor(0, 46);
        ssd1306_DrawString(buf, Font_6x8, White);

        ssd1306_UpdateScreen();
        osDelay(100);
    }
    return NULL;
}

// ===================== 主入口 =====================
// static void main_entry(void)
// {
//     board_hardware_init();

//     osThreadAttr_t attr = {
//         .stack_size = 0x2000,
//         .priority   = osPriorityNormal
//     };

//     attr.name = "FingerTask";
//     osThreadNew((osThreadFunc_t)fingerprint_task, NULL, &attr);

//     attr.name = "OledTask";
//     osThreadNew((osThreadFunc_t)oled_task, NULL, &attr);
// }

// app_run(main_entry);