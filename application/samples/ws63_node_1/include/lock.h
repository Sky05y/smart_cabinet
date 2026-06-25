#ifndef LOCK_H
#define LOCK_H

// --- 继电器（门锁）控制引脚 ---
#define RELAY_CTRL_PIN              2   // 使用 GPIO2 控制继电器
#define RELAY_ON_LEVEL              1   // 继电器吸合电平 (1:高电平触发, 0:低电平触发)
#define RELAY_OFF_LEVEL             0   // 继电器断开电平 (与上方相反)

/**
 * @brief 触发开门动作（控制继电器吸合）
 */
void trigger_unlock(void);

void lock_init(void);

#endif // LOCK_H