#include "common_def.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "pinctrl.h"
#include "bh1750.h"
#include "mq_adc.h"
#include "dht11.h"
#include "ssd1306.h"
#include "ssd1306_fonts.h"
#include "i2c.h"
#include "oled.h"
#include "gpio.h"
#include "fingerprint.h"
static void app_i2c_init_pin(void)
{
    uapi_pin_set_mode(CONFIG_I2C_SCL_MASTER_PIN, 2);
    uapi_pin_set_mode(CONFIG_I2C_SDA_MASTER_PIN, 2);
    uapi_pin_set_pull(CONFIG_I2C_SCL_MASTER_PIN, PIN_PULL_TYPE_UP);
    uapi_pin_set_pull(CONFIG_I2C_SDA_MASTER_PIN, PIN_PULL_TYPE_UP);
}
void oled_init(void)
{
    // OLED I2C1 (GPIO15=SDA, GPIO16=SCL)
    uapi_gpio_init();
    app_i2c_init_pin();
}
// ===================== OLED I2C 发送适配 =====================
uint32_t ssd1306_SendData(uint8_t *buffer, uint32_t size)
{
    i2c_data_t data = {0};
    data.send_buf = buffer;
    data.send_len = size;
    return uapi_i2c_master_write(CONFIG_I2C_MASTER_BUS_ID, I2C_SLAVE2_ADDR, &data);
}
// ===================== OLED 显示任务 =====================
void *oled_task(void *arg)
{
    unused(arg);
    oled_init();
    uapi_i2c_master_init(CONFIG_I2C_MASTER_BUS_ID, 400000, 0);
    ssd1306_Init();
    osal_printk("[OLED] Init done\r\n");

    uint16_t show_lux = 0;
    uint32_t adc_alcohol_s = 0;
    int t_int_s = 0, t_dec_s = 0, h_int_s = 0, h_dec_s = 0;

    // 清屏一次
    ssd1306_Fill(Black);
    ssd1306_UpdateScreen();

    while (1) {
        show_lux = get_lux_value();
        adc_alcohol_s = mq_adc_get_display();
        dht11_get_data(&t_int_s, &t_dec_s, &h_int_s, &h_dec_s);

        ssd1306_Fill(Black);

        /* 传感器区居中显示（4个传感器数值） */
        char buf[32];

        // 第一行：温度 + 湿度（居中）
        snprintf(buf, sizeof(buf), "T:%d.%dC H:%d.%d%%",
                t_int_s, t_dec_s, h_int_s, h_dec_s);
        ssd1306_SetCursor(8, 20);
        ssd1306_DrawString(buf, Font_6x8, White);

        // 第二行：光照 + 酒精（居中）
        snprintf(buf, sizeof(buf), "Lux:%d Alc:%lu",
                show_lux, adc_alcohol_s);
        ssd1306_SetCursor(8, 34);
        ssd1306_DrawString(buf, Font_6x8, White);

        ssd1306_UpdateScreen();
        osDelay(500);
    }
    return NULL;
}