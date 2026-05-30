#include "bh1750.h"
#include "dht11.h"
#include "mq_adc.h"
#include "trans_data.h"
#include "soc_osal.h"
#include "cmsis_os2.h"
#include "app_init.h"
#include "demo.h"

#define BH1750_TASK_STACK_SIZE   0x1000
#define BH1750_TASK_PRIO         (osPriority_t)(17)

#define DHT11_TASK_STACK_SIZE   0x1000
#define DHT11_TASK_PRIO         (osPriority_t)(17)

#define CONFIG_SLE_UART_BUS 0
#define CONFIG_UART_TXD_PIN 17
#define CONFIG_UART_RXD_PIN 18

#define SLE_UART_TASK_STACK_SIZE            0x2000
#define SLE_UART_TASK_PRIO                  17


static void sle_uart_entry(void)
{
    // board_hardware_init();
    osThreadAttr_t attr;

    /************ 1. 创建 SLE 任务 ************/
    attr.name = "SLETask";
    attr.attr_bits = 0U;
    attr.cb_mem = NULL;
    attr.cb_size = 0U;
    attr.stack_mem = NULL;
    attr.stack_size = SLE_UART_TASK_STACK_SIZE;
    attr.priority = SLE_UART_TASK_PRIO;

    if (osThreadNew((osThreadFunc_t)sle_uart_client_task, NULL, &attr) == NULL) {
        osal_printk("Create SLE UART task fail!\r\n");
    }

    /************ 2. 创建 ADC 任务 ************/
    attr.name = "MQADCTask";
    attr.stack_size = MQ_ADC_TASK_STACK_SIZE;
    attr.priority = MQ_ADC_TASK_PRIO;

    if (osThreadNew((osThreadFunc_t)mq_adc_task, NULL, &attr) == NULL) {
        osal_printk("Create MQ ADC task fail!\r\n");
    }
    /************ 3. BH1750任务 ************/
    attr.name = "BH1750Task";
    attr.stack_size = BH1750_TASK_STACK_SIZE;
    attr.priority = BH1750_TASK_PRIO;

    if (osThreadNew((osThreadFunc_t)bh1750_task, NULL, &attr) == NULL) {
        osal_printk("Create BH1750 task fail!\r\n");
    }
    /************ 4. dht11任务 ************/
    attr.name = "DHT11";
    attr.stack_size = DHT11_TASK_STACK_SIZE;
    attr.priority = DHT11_TASK_PRIO;
    if (osThreadNew((osThreadFunc_t)dht11_task, NULL, &attr) == NULL) {
        osal_printk("[ERR]\r\n");
    }


    
    attr.stack_size = 0x2000;
    attr.priority   = 17;
    attr.name = "FingerTask";
    // osThreadNew((osThreadFunc_t)fingerprint_task, NULL, &attr);

    attr.name = "OledTask";
    osThreadNew((osThreadFunc_t)oled_task, NULL, &attr);
}
/* Run the sle_uart_entry. */
app_run(sle_uart_entry);