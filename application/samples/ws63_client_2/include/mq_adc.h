#ifndef __MQ_ADC_H__
#define __MQ_ADC_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/**************** 宏定义 ****************/
#define MQ_ADC_TASK_STACK_SIZE   0x1000
#define MQ_ADC_TASK_PRIO    (osPriority_t)(17)

/**************** 对外接口 ****************/

/**
 * @brief ADC任务入口（线程函数）
 */
void *mq_adc_task(const char *arg);

/**
 * @brief 获取当前电压值（mV）
 */
uint32_t mq_adc_get_voltage(void);

/**
 * @brief 获取显示值（用于数码管）
 */
uint32_t mq_adc_get_display(void);

#ifdef __cplusplus
}
#endif

#endif