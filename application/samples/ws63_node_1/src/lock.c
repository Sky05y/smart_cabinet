#include "gpio.h"
#include "common_def.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "pinctrl.h"
#include "lock.h"
void lock_init(void)
{
    // 【新增】：继电器控制引脚 GPIO 2 输出初始化
    uapi_pin_set_mode(RELAY_CTRL_PIN, 0); // 配置为普通 GPIO
    uapi_gpio_set_dir(RELAY_CTRL_PIN, GPIO_DIRECTION_OUTPUT);
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_OFF_LEVEL); // 初始状态必须为断电！防止上电乱开锁
}
// ===================== 开锁动作函数 (带安全保护) =====================
void trigger_unlock(void)
{
    osal_printk("[LOCK] Unlocking! (Relay ON)\r\n");
    // 1. 通电，继电器吸合，锁舌缩回
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_ON_LEVEL);
    
    // 2. 保持通电 2 秒钟（给开门留出时间）
    osDelay(1000); 
    
    // 3. 断电，继电器断开，锁舌弹出（恢复常闭安全状态）
    uapi_gpio_set_val(RELAY_CTRL_PIN, RELAY_OFF_LEVEL);
    osal_printk("[LOCK] Locked. (Relay OFF)\r\n");
}