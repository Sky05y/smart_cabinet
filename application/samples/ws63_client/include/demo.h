#ifndef DEMO_H
#define DEMO_H

// --- OLED I2C1 配置 ---
// 官方接线: TXD(GPIO15)=SDA, RXD(GPIO16)=SCL
#define CONFIG_I2C_SCL_MASTER_PIN   15
#define CONFIG_I2C_SDA_MASTER_PIN   16
#define CONFIG_I2C_MASTER_BUS_ID    1
#define I2C_SLAVE2_ADDR             0x3C

// --- 指纹 UART2 配置 ---
// GPIO8=UART2_TXD 接 ZW101_RXD
// GPIO7=UART2_RXD 接 ZW101_TXD
#define FP_UART_BUS_ID              2
#define FP_UART_TX_PIN              8
#define FP_UART_RX_PIN              7
#define FP_BAUD_RATE                57600

// --- 指纹唤醒引脚 (GPIO11) ---
#define FP_WAKE_PIN                 11

// --- ZW101 指令头 ---
#define HEADER_HIGH                 0xEF
#define HEADER_LOW                  0x01

#define RELAY_CTRL_PIN              2   // 使用 GPIO2 控制继电器
#define RELAY_ON_LEVEL              1   // 继电器吸合电平 (1:高电平触发, 0:低电平触发)
#define RELAY_OFF_LEVEL             0   // 继电器断开电平 (与上方相反)

/* ===================== 对外 API ===================== */

/**
 * @brief 硬件初始化（I2C / UART / GPIO）
 */
void board_hardware_init(void);

/**
 * @brief 指纹识别任务
 */
void *fingerprint_task(void *arg);

/**
 * @brief OLED 显示任务
 */
void *oled_task(void *arg);

#endif