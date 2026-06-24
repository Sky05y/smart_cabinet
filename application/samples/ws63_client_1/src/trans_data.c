#include "sle_low_latency.h"
#include "sle_connection_manager.h"
#include "sle_ssap_server.h"
#include "sle_uart_server.h"
#include "sle_uart_server_adv.h"
#include "sle_device_discovery.h"
#include "sle_errcode.h"
#include "common_def.h"
#include "uart.h"
#include "pinctrl.h"
#include "app_init.h"
#include "soc_osal.h"
#include "cmsis_os2.h"
#include "bh1750.h"
#include "mq_adc.h"
#include "dht11.h"
#include "demo.h"

#define SLE_UART_TASK_DURATION_MS           2000
#define SLE_UART_BAUDRATE                   115200
#define SLE_UART_TRANSFER_SIZE              512
#define DEVICE_NO 1                 // 设备编号：1 或 2，每个设备不同

#define CONFIG_SLE_UART_BUS 0
#define CONFIG_UART_TXD_PIN 17
#define CONFIG_UART_RXD_PIN 18

static uint8_t g_app_uart_rx_buff[SLE_UART_TRANSFER_SIZE] = { 0 };

static uart_buffer_config_t g_app_uart_buffer_config = {
    .rx_buffer = g_app_uart_rx_buff,
    .rx_buffer_size = SLE_UART_TRANSFER_SIZE
};

uint16_t t_lux = 0;
uint32_t adc_v = 0;
uint32_t adc_alcohol = 0;
int t_int = 0, t_dec = 0, h_int = 0, h_dec = 0;

// ===== SLE Server 相关 =====
#define SLE_UART_SERVER_LOG "[sle uart server]"

static void uart_init_pin(void)
{
    if (CONFIG_SLE_UART_BUS == 0) {
        uapi_pin_set_mode(CONFIG_UART_TXD_PIN, PIN_MODE_1);
        uapi_pin_set_mode(CONFIG_UART_RXD_PIN, PIN_MODE_1);       
    } else if (CONFIG_SLE_UART_BUS == 1) {
        uapi_pin_set_mode(CONFIG_UART_TXD_PIN, PIN_MODE_1);
        uapi_pin_set_mode(CONFIG_UART_RXD_PIN, PIN_MODE_1);       
    }
}

static void uart_init_config(void)
{
    uart_attr_t attr = {
        .baud_rate = SLE_UART_BAUDRATE,
        .data_bits = UART_DATA_BIT_8,
        .stop_bits = UART_STOP_BIT_1,
        .parity = UART_PARITY_NONE
    };

    uart_pin_config_t pin_config = {
        .tx_pin = CONFIG_UART_TXD_PIN,
        .rx_pin = CONFIG_UART_RXD_PIN,
        .cts_pin = PIN_NONE,
        .rts_pin = PIN_NONE
    };
    uapi_uart_deinit(CONFIG_SLE_UART_BUS);
    uapi_uart_init(CONFIG_SLE_UART_BUS, &pin_config, &attr, NULL, &g_app_uart_buffer_config);
}

// ===== SLE Server 回调 =====

static void ssaps_server_read_request_cbk(uint8_t server_id, uint16_t conn_id, 
    ssaps_req_read_cb_t *read_cb_para, errcode_t status)
{
    osal_printk("%s ssaps read request cbk server_id:%x, conn_id:%x, handle:%x, status:%x\r\n",
        SLE_UART_SERVER_LOG, server_id, conn_id, read_cb_para->handle, status);
}

static void ssaps_server_write_request_cbk(uint8_t server_id, uint16_t conn_id, 
    ssaps_req_write_cb_t *write_cb_para, errcode_t status)
{
    osal_printk("%s ssaps write request cbk server_id:%x, conn_id:%x, handle:%x, status:%x\r\n",
        SLE_UART_SERVER_LOG, server_id, conn_id, write_cb_para->handle, status);
    
    if ((write_cb_para->length > 0) && write_cb_para->value) {
        osal_printk("\n sle uart received data : %s\r\n", write_cb_para->value);
        
        // 解析开门指令
        int door_no = 0;
        if (sscanf((char *)write_cb_para->value, "open:%d", &door_no) == 1) {
            if (door_no == DEVICE_NO) {
                trigger_unlock(); // 触发开锁动作
                osal_printk("Door %d unlocked!\r\n", door_no);
            }
        }
        
        uapi_uart_write(CONFIG_SLE_UART_BUS, (uint8_t *)write_cb_para->value, 
            write_cb_para->length, 0);
    }
}

// ===== 定时发送数据给 Client =====

static void send_sensor_data(void)
{
    // 读取传感器
    t_lux = get_lux_value();
    adc_v = mq_adc_get_voltage();
    adc_alcohol = mq_adc_get_display();
    dht11_get_data(&t_int, &t_dec, &h_int, &h_dec);
    
    osal_printk("Send data: lux=%d, alcohol=%d, T=%d.%d, H=%d.%d\r\n",
        t_lux, adc_alcohol, t_int, t_dec, h_int, h_dec);
    
    // 打包数据
    uint8_t send_buf[11];
    send_buf[0] = (t_lux >> 8) & 0xFF;
    send_buf[1] = t_lux & 0xFF;
    send_buf[2] = (adc_alcohol >> 24) & 0xFF;
    send_buf[3] = (adc_alcohol >> 16) & 0xFF;
    send_buf[4] = (adc_alcohol >> 8) & 0xFF;
    send_buf[5] = adc_alcohol & 0xFF;
    send_buf[6] = (uint8_t)t_int;
    send_buf[7] = (uint8_t)t_dec;
    send_buf[8] = (uint8_t)h_int;
    send_buf[9] = (uint8_t)h_dec;
    send_buf[10] = DEVICE_NO; // 设备编号
    
    // 通过 SLE 发送给 Client（主动 notify）
    sle_uart_server_send_report_by_handle(send_buf, 11);
}

// ===== 保持原函数名，但内部改为 Server 任务 =====

void *sle_uart_client_task(const char *arg)
{
    unused(arg);
    
    /* UART pinmux */
    uart_init_pin();
    /* UART init config */
    uart_init_config();

    // 初始化 SLE Server
    sle_uart_server_init(ssaps_server_read_request_cbk, ssaps_server_write_request_cbk);
    
    // 启动广播
    // errcode_t ret = sle_uart_server_adv_init();
    // if (ret != ERRCODE_SLE_SUCCESS) {
    //     osal_printk("[SLE] Server adv init fail: %d\r\n", ret);
    //     return NULL;
    // }
    osal_printk("[SLE] Server started, waiting for Client connection...\r\n");

    while (1) {
        // 检查是否有 Client 连接
        if (sle_uart_client_is_connected()) {
            // 定时发送传感器数据
            send_sensor_data();
        }
        osDelay(300); // 300ms 发送一次
    }
    return NULL;
}
