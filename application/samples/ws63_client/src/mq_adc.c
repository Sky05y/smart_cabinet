#include "mq_adc.h"
#include "adc.h"
#include "adc_porting.h"
#include "soc_osal.h"
#include "osal_debug.h"
#include "math.h"

#define UNUSED(x) (void)(x)
static uint32_t g_voltage_mv = 0;
static uint32_t g_display_val = 0;

#define VCC     3.3f     // 参考电压（根据你的板子改）
#define RL      10.0f    // 负载电阻（单位kΩ）
#define R0      115.0f
#define V_MIN 300     // 空气电压（你测的）
#define V_MAX 2900    // 喷酒精最大电压

static int last_alcohol = 0;   // 滤波用

static void adc_callback(uint8_t ch, uint32_t *buffer, uint32_t length, bool *next)
{
    (void)next;

    if (length > 0) {

        /************ 1. 电压 ************/
        g_voltage_mv = buffer[0];
        if (g_voltage_mv > 3300)
            g_voltage_mv = 3300;

        int v_mv = g_voltage_mv;

        /************ 2. 原有算法（保留调试） ************/
        float v_float = v_mv / 1000.0f;   // ✅ 改名
        if (v_float < 0.01f) return;

        float Rs_f = RL * (VCC / v_float - 1.0f);
        int Rs = (int)Rs_f;

        float ratio_f = Rs_f / R0;
        int ratio = (int)(ratio_f * 100);

        float a = -1.5f;
        float b = 0.9f;

        float log_ppm = a * log10f(ratio_f);
        float ppm_f = powf(10, log_ppm + b);
        int ppm = (int)ppm_f;

        /************ 3. 线性酒精浓度 ************/
        int v_cal = v_mv;   // ✅ 改名（用于计算）

        if (v_cal < V_MIN) v_cal = V_MIN;
        if (v_cal > V_MAX) v_cal = V_MAX;

        int alcohol = (v_cal - V_MIN) * 75 / (V_MAX - V_MIN);

        /************ 4. 滤波 ************/
        alcohol = (last_alcohol * 3 + alcohol) / 4;
        last_alcohol = alcohol;

        /************ 5. 输出 ************/
        g_display_val = alcohol;

        osal_printk("[ADC] V:%dmV alcohol:%d%%\r\n", v_mv, alcohol);
    }
}

/**************** ADC任务 ****************/
void *mq_adc_task(const char *arg)
{
    UNUSED(arg);

    osal_printk("MQ ADC task start\r\n");

    uapi_adc_init(ADC_CLOCK_500KHZ);
    uapi_adc_power_en(AFE_SCAN_MODE_MAX_NUM, true);

    adc_scan_config_t config = {
        .type = 0,
        .freq = 1,
    };

    while (1) {
        /* 开始采样 */
        uapi_adc_auto_scan_ch_enable(ADC_CHANNEL_0, config, adc_callback);

        osal_msleep(100);

        /* 停止采样 */
        uapi_adc_auto_scan_ch_disable(ADC_CHANNEL_0);

        osal_msleep(2000);
    }

    return NULL;
}

/**************** 对外接口 ****************/
uint32_t mq_adc_get_voltage(void)
{
    return g_voltage_mv;
}

uint32_t mq_adc_get_display(void)
{
    return g_display_val;
}