#include "bh1750.h"
#include "dht11.h"
#include "mq_adc.h"
#include "trans_data.h"
#include "soc_osal.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "gpio.h"
#include "fingerprint.h"
#include "lock.h"
#include "oled.h"

#define BH1750_TASK_STACK_SIZE   0x1000
#define BH1750_TASK_PRIO         (osPriority_t)(17)

#define DHT11_TASK_STACK_SIZE    0x1000
#define DHT11_TASK_PRIO          (osPriority_t)(17)

#define SLE_UART_TASK_STACK_SIZE 0x2000
#define SLE_UART_TASK_PRIO       17

static void sle_uart_entry(void)
{
    // 全局 GPIO 初始化(必须最先,只调一次)
    uapi_gpio_init();

    osThreadAttr_t attr;
    attr.attr_bits = 0U;
    attr.cb_mem    = NULL;
    attr.cb_size   = 0U;
    attr.stack_mem = NULL;
    attr.priority  = osPriorityNormal;

    /* 1. 指纹任务 */
    attr.stack_size = 0x2000;
    attr.name       = "FingerTask";
    if (osThreadNew((osThreadFunc_t)fingerprint_task, NULL, &attr) == NULL) {
        osal_printk("Create Finger task fail!\r\n");
    }

    /* 2. OLED 任务 */
    attr.stack_size = 0x2000;
    attr.name       = "OledTask";
    if (osThreadNew((osThreadFunc_t)oled_task, NULL, &attr) == NULL) {
        osal_printk("Create Oled task fail!\r\n");
    }

    /* 3. BH1750 光照任务 */
    attr.stack_size = BH1750_TASK_STACK_SIZE;
    attr.priority   = BH1750_TASK_PRIO;
    attr.name       = "BH1750Task";
    if (osThreadNew((osThreadFunc_t)bh1750_task, NULL, &attr) == NULL) {
        osal_printk("Create BH1750 task fail!\r\n");
    }

    /* 4. DHT11 温湿度任务 */
    attr.stack_size = DHT11_TASK_STACK_SIZE;
    attr.priority   = DHT11_TASK_PRIO;
    attr.name       = "DHT11";
    if (osThreadNew((osThreadFunc_t)dht11_task, NULL, &attr) == NULL) {
        osal_printk("Create DHT11 task fail!\r\n");
    }

    /* ========== 以下任务暂时不启用,定位干扰源 ========== */

    /* 5. MQ 气体/酒精 ADC */
    attr.stack_size = MQ_ADC_TASK_STACK_SIZE;
    attr.priority   = MQ_ADC_TASK_PRIO;
    attr.name       = "MQADCTask";
    osThreadNew((osThreadFunc_t)mq_adc_task, NULL, &attr);

    /* 6. SLE 星闪上传 */
    attr.stack_size = SLE_UART_TASK_STACK_SIZE;
    attr.priority   = SLE_UART_TASK_PRIO;
    attr.name       = "SLETask";
    osThreadNew((osThreadFunc_t)sle_uart_client_task, NULL, &attr);

}

app_run(sle_uart_entry);