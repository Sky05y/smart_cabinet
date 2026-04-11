#include "pinctrl.h"
#include "osal_debug.h"
#include "gpio.h"
#include "osal_task.h"
#include "common_def.h"
#include "cmsis_os2.h"
#include "app_init.h"

#define DHT11_PIN    GPIO_00
#define PIN_MODE_0   0

// 温度
static int g_temperature_int = 0;   // 整数部分
static int g_temperature_dec = 0;   // 小数部分

// 湿度
static int g_humidity_int = 0;      // 整数部分
static int g_humidity_dec = 0;      // 小数部分

static int read_bit(void)
{
    int t = 0;
    // 等待低电平结束（bit开始信号）
    while (uapi_gpio_get_val(DHT11_PIN) == GPIO_LEVEL_LOW && t < 200) t++;
    if (t >= 200) return -1;
    
    // 计数高电平时长
    t = 0;
    while (uapi_gpio_get_val(DHT11_PIN) == GPIO_LEVEL_HIGH && t < 200) t++;
    if (t >= 200) return -1;
    
    return t;  // 返回高电平时长
}

void dht11_task(void *arg)
{
    unused(arg);
    osal_msleep(2000);
    
    while (1) {
        // 发送启动信号
        uapi_pin_set_mode(DHT11_PIN, PIN_MODE_0);
        uapi_pin_set_pull(DHT11_PIN, PIN_PULL_TYPE_UP);
        uapi_gpio_set_dir(DHT11_PIN, GPIO_DIRECTION_OUTPUT);
        uapi_gpio_set_val(DHT11_PIN, GPIO_LEVEL_LOW);
        osal_msleep(20);
        
        // 切换输入
        uapi_pin_set_mode(DHT11_PIN, PIN_MODE_0);
        uapi_gpio_set_dir(DHT11_PIN, GPIO_DIRECTION_INPUT);
        uapi_pin_set_pull(DHT11_PIN, PIN_PULL_TYPE_DISABLE);
        
        // 等待ACK
        int t = 0;
        while (uapi_gpio_get_val(DHT11_PIN) == GPIO_LEVEL_HIGH && t < 300) { t++; osal_udelay(1); }
        if (t >= 300) { osal_printk("No ACK\r\n"); osal_msleep(3000); continue; }
        
        // 等待ACK结束
        t = 0;
        while (uapi_gpio_get_val(DHT11_PIN) == GPIO_LEVEL_LOW && t < 300) { t++; osal_udelay(1); }
        
        // 等待准备信号结束
        t = 0;
        while (uapi_gpio_get_val(DHT11_PIN) == GPIO_LEVEL_HIGH && t < 300) { t++; osal_udelay(1); }
        
        // 读取40个bit
        int bits[40];
        int valid = 1;
        for (int i = 0; i < 40; i++) {
            bits[i] = read_bit();
            if (bits[i] < 0) {
                // osal_printk("Bit%d timeout\r\n", i);
                valid = 0;
                break;
            }
        }
        
        if (valid) {
            // 组合成5个字节
            unsigned char data[5] = {0};
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 8; j++) {
                    data[i] = (data[i] << 1) | (bits[i*8+j] > 50 ? 1 : 0);
                }
            }
            
            // 显示前8个bit的时序
            // osal_printk("Bits: %d %d %d %d %d %d %d %d\r\n", 
            //     bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
            
            // 验证校验和
            if (data[0]+data[1]+data[2]+data[3] == data[4]) {
                // 湿度
                g_humidity_int = data[0];   // 整数部分
                g_humidity_dec = data[1];   // 小数部分

                // 温度
                g_temperature_int = data[2];
                g_temperature_dec = data[3];
                // osal_printk("[OK] T=%d.%dC H=%d.%d%%\r\n", data[2], data[3], data[0], data[1]);
            } else {
                osal_printk("[ERR] %d %d %d %d %d\r\n", data[0], data[1], data[2], data[3], data[4]);
            }
        }
        
        osal_msleep(2000);
    }
    return;
}

// 获取温湿度（整数+小数）
// 返回0=成功，-1=无效
void dht11_get_data(int *t_int, int *t_dec, int *h_int, int *h_dec)
{
    *t_int = g_temperature_int;
    *t_dec = g_temperature_dec;
    *h_int = g_humidity_int;
    *h_dec = g_humidity_dec;
}