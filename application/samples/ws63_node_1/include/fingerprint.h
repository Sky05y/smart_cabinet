#ifndef FINGERPRINT_H
#define FINGERPRINT_H

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

/* ===================== 对外 API ===================== */

/**
 * @brief 指纹识别任务
 * @param arg 任务参数
 */
void *fingerprint_task(void *arg);

extern volatile int g_verify_status;

#endif // FINGERPRINT_H