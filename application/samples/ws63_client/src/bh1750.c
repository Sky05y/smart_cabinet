#include "bh1750.h"
#include "i2c.h"
#include "soc_osal.h"
#include "osal_debug.h"
#include "pinctrl.h"

#define I2C_SCL_PIN  15     // 接线对应bh1750的SDA
#define I2C_SDA_PIN  16     // 接线对应bh1750的SCL
/* 命令 */
#define BH1750_POWER_ON        0x01
#define BH1750_RESET           0x07
#define BH1750_CONT_H_RES_MODE 0x10

static uint8_t g_addr = BH1750_ADDR_LOW;

/*************** 写命令 ***************/
static int bh1750_write_cmd(uint8_t cmd)
{
    uint8_t buf = cmd;
    i2c_data_t data = {0};

    data.send_buf = &buf;
    data.send_len = 1;

    int ret = uapi_i2c_master_write(BH1750_I2C_BUS, g_addr, &data);
    osal_printk("BH1750 write cmd 0x%02X, ret=%d\n", cmd, ret);
    if (ret != 0) {
        osal_printk("BH1750 write fail ret=%d\n", ret);
        return ret;
    }

    return 0;
}

/*************** 初始化 ***************/
int bh1750_init(uint8_t addr)
{
    g_addr = addr;
    if (bh1750_write_cmd(BH1750_POWER_ON) != 0) return -1;
    else osal_printk("BH1750 powered on\r\n");

    if (bh1750_write_cmd(BH1750_RESET) != 0) return -1;
    else osal_printk("BH1750 reset\r\n");

    if (bh1750_write_cmd(BH1750_CONT_H_RES_MODE) != 0) return -1;
    else osal_printk("BH1750 set mode\r\n");

    osal_msleep(180);

    return 0;
}

/*************** 读取光照 ***************/
int bh1750_read_lux(uint16_t *lux)
{
    uint8_t buf[2];
    i2c_data_t data;

    data.send_buf = NULL;
    data.send_len = 0;
    data.receive_buf = buf;
    data.receive_len = 2;

    if (uapi_i2c_master_read(BH1750_I2C_BUS, g_addr, &data) != 0) {
        return -1;
    }

    uint16_t raw = (buf[0] << 8) | buf[1];
    *lux = (uint16_t)(raw / 1.2);

    return 0;
}

/*************** 任务函数 ***************/
void bh1750_task(void *arg)
{
    unused(arg);

    uint16_t lux = 0;

    /************ ⭐ I2C引脚配置（关键） ************/
    uapi_pin_set_mode(I2C_SCL_PIN, 2);
    uapi_pin_set_mode(I2C_SDA_PIN, 2);

    uapi_pin_set_pull(I2C_SCL_PIN, PIN_PULL_TYPE_UP);
    uapi_pin_set_pull(I2C_SDA_PIN, PIN_PULL_TYPE_UP);

    /************ I2C初始化 ************/
    if (uapi_i2c_master_init(BH1750_I2C_BUS, 400000, 0) != 0) {
        osal_printk("I2C init fail\r\n");
    }

    if (bh1750_init(BH1750_ADDR_LOW) != 0) {
        osal_printk("Error code: %d\r\n", bh1750_init(BH1750_ADDR_LOW));
        osal_printk("BH1750 init fail\r\n");
    }

    while (1) {
        if (bh1750_read_lux(&lux) == 0) {
            osal_printk("Light: %d lx\r\n", lux);
        } else {
            osal_printk("BH1750 read error\r\n");
        }

        osal_msleep(500);
    }
}