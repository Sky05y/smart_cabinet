#ifndef __DHT11_H
#define __DHT11_H

#define ONE_WIRE_DQ GPIO_00

#define dht11_high uapi_gpio_set_val(ONE_WIRE_DQ, GPIO_LEVEL_HIGH)
#define dht11_low uapi_gpio_set_val(ONE_WIRE_DQ, GPIO_LEVEL_LOW)
#define Read_Data uapi_gpio_get_val(ONE_WIRE_DQ)

void DHT11_GPIO_Init_OUT(void);
void DHT11_GPIO_Init_IN(void);
void DHT11_Start(void);
unsigned char DHT11_REC_Byte(void);
unsigned char DHT11_REC_Data(void);
static void debug_dht11_timing(void);
static void debug_gpio_state(const char *phase);
void dht11_task(void *arg);

#endif