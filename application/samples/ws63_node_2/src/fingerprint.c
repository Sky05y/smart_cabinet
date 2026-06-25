#include "uart.h"
#include "common_def.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "pinctrl.h"
#include "fingerprint.h"
#include "lock.h"
#include "gpio.h"
// 全局识别状态：0-等待, 1-成功, 2-失败
volatile int g_verify_status = 0;

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
void fingerprint_init(void)
{
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

    // osal_printk("[ZW101] recv(%d): ", len);
    // for (int i = 0; i < len && i < 16; i++) {
    //     osal_printk("%02X ", rx[i]);
    // }
    // osal_printk("\r\n");
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
    fingerprint_init();
    lock_init();
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