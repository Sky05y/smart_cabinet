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
    int last_st = -1;
    int cur;

    unused(arg);
    oled_init();
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