#ifndef __BH1750_H__
#define __BH1750_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/* I2C总线（Hi3863一般用0） */
#define BH1750_I2C_BUS  1

/* 地址 */
#define BH1750_ADDR_LOW   0x23
#define BH1750_ADDR_HIGH  0x5C

/* API */
int bh1750_init(uint8_t addr);
int bh1750_read_lux(uint16_t *lux);

/* 任务 */
void bh1750_task(void *arg);

#ifdef __cplusplus
}
#endif

#endif