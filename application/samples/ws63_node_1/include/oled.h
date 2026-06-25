#ifndef OLED_H
#define OLED_H

// --- OLED I2C1 配置 ---
// 官方接线: TXD(GPIO15)=SDA, RXD(GPIO16)=SCL
#define CONFIG_I2C_SCL_MASTER_PIN   15
#define CONFIG_I2C_SDA_MASTER_PIN   16
#define CONFIG_I2C_MASTER_BUS_ID    1
#define I2C_SLAVE2_ADDR             0x3C

/* ===================== 对外 API ===================== */

/**
 * @brief OLED 显示任务
 * @param arg 任务参数
 */
void *oled_task(void *arg);

#endif // OLED_H