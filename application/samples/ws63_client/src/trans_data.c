#include "sle_low_latency.h"
#include "sle_connection_manager.h"
#include "sle_ssap_client.h"
#include "sle_uart_client.h"
#include "common_def.h"
#include "uart.h"
#include "pinctrl.h"
#include "app_init.h"
#include "soc_osal.h"
#include "cmsis_os2.h"
#include "bh1750.h"
#include "mq_adc.h"
#include "dht11.h"

#define SLE_UART_TASK_DURATION_MS           2000
#define SLE_UART_BAUDRATE                   115200
#define SLE_UART_TRANSFER_SIZE              512
#define DEVICE_NO 1                 // 设备编号设置


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
static void uart_init_pin(void)
{
    if (CONFIG_SLE_UART_BUS == 0) {
        uapi_pin_set_mode(CONFIG_UART_TXD_PIN, PIN_MODE_1);
        uapi_pin_set_mode(CONFIG_UART_RXD_PIN, PIN_MODE_1);       
    }else if (CONFIG_SLE_UART_BUS == 1) {
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

static void sle_uart_client_read_int_handler(const void *buffer, uint16_t length, bool error)
{
    unused(error);
    ssapc_write_param_t *sle_uart_send_param = get_g_sle_uart_send_param();
    uint16_t g_sle_uart_conn_id = get_g_sle_uart_conn_id();
    sle_uart_send_param->data_len = length;
    sle_uart_send_param->data = (uint8_t *)buffer;
    ssapc_write_req(0, g_sle_uart_conn_id, sle_uart_send_param);    // 通过SLE发送数据
}

void *sle_uart_client_task(const char *arg)
{
    unused(arg);
    /* UART pinmux. */
    uart_init_pin();

    /* UART init config. */
    uart_init_config();

    uapi_uart_unregister_rx_callback(CONFIG_SLE_UART_BUS);
    errcode_t ret = uapi_uart_register_rx_callback(CONFIG_SLE_UART_BUS,
                                                   UART_RX_CONDITION_FULL_OR_IDLE,
                                                   1, sle_uart_client_read_int_handler);
    sle_uart_client_init(sle_uart_notification_cb, sle_uart_indication_cb); // 注册SLE接收回调（用于接收对端发来的数据）
    
    if (ret != ERRCODE_SUCC) {
        osal_printk("Register uart callback fail.");
        return NULL;
    }
    while(1)
    {
        // 定时通过SLE发送数据
        osDelay(300);
        t_lux = get_lux_value();
        osal_printk("Current lux: %d\r\n", t_lux);
        adc_v = mq_adc_get_voltage();
        adc_alcohol = mq_adc_get_display();
        osal_printk("Current voltage: %dmV, alcohol: %d%%\r\n", adc_v, adc_alcohol);
        dht11_get_data(&t_int, &t_dec, &h_int, &h_dec);
        osal_printk("Current temperature: %d.%dC, humidity: %d.%d%%\r\n", t_int, t_dec, h_int, h_dec);

        osal_printk("Send data: lux=%d, alcohol=%d, T=%d.%d, H=%d.%d\r\n",t_lux, adc_alcohol, t_int, t_dec, h_int, h_dec);
            // ================== 打包数据 ==================
        uint8_t send_buf[11];

        // lux (2字节)
        send_buf[0] = (t_lux >> 8) & 0xFF;
        send_buf[1] = t_lux & 0xFF;

        // alcohol (4字节)
        send_buf[2] = (adc_alcohol >> 24) & 0xFF;
        send_buf[3] = (adc_alcohol >> 16) & 0xFF;
        send_buf[4] = (adc_alcohol >> 8) & 0xFF;
        send_buf[5] = adc_alcohol & 0xFF;

        // 温度
        send_buf[6] = (uint8_t)t_int;
        send_buf[7] = (uint8_t)t_dec;

        // 湿度
        send_buf[8] = (uint8_t)h_int;
        send_buf[9] = (uint8_t)h_dec;
        send_buf[10] = DEVICE_NO; // 设备编号
        // ================== SLE发送 ==================
        ssapc_write_param_t *param = get_g_sle_uart_send_param();
        uint16_t conn_id = get_g_sle_uart_conn_id();

        param->data_len = sizeof(send_buf);
        param->data = send_buf;

        ssapc_write_req(0, conn_id, param);

    }
    return NULL;
}

void sle_uart_notification_cb(uint8_t client_id, uint16_t conn_id, ssapc_handle_value_t *data,
    errcode_t status)
{
    unused(client_id);
    unused(conn_id);
    unused(status);
    osal_printk("\n sle uart recived data : %s\r\n", data->data);
    uapi_uart_write(CONFIG_SLE_UART_BUS, (uint8_t *)(data->data), data->data_len, 0);
}

void sle_uart_indication_cb(uint8_t client_id, uint16_t conn_id, ssapc_handle_value_t *data,
    errcode_t status)
{
    unused(client_id);
    unused(conn_id);
    unused(status);
    osal_printk("\n sle uart recived data : %s\r\n", data->data);
    uapi_uart_write(CONFIG_SLE_UART_BUS, (uint8_t *)(data->data), data->data_len, 0);
}