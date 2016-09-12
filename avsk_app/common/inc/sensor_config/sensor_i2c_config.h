/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
*   @file  sensor_i2c_config.h
*
*   @brief 
*/

#ifndef SENSOR_I2C_CONFIG_H
#define SENSOR_I2C_CONFIG_H

#ifdef __cplusplus
extern "C" 
{
#endif

#include "error_codes.h"

#define I2C_TRANSFER_SIZE (4u)

/*
 *====================
 * Structure declaration
 *====================
*/

typedef struct sensorConfig_t {
    uint16_t reg;
    uint16_t value;
    uint16_t mask;
} sensorConfig_t;

/*
 *====================
 * Function declaration
 *====================
*/

ERRORTYPE i2cDrvInit(Error_Block *pEb);
void i2cDrvDeinit(void);
ERRORTYPE i2cDevWrite(uint32_t nDevAddr, uint8_t *pData, uint8_t nNumRegs);
#if 0
ERRORTYPE i2cDevRead(uint16_t nReg, uint16_t *pVal, Error_Block *pEb);
#endif /* 0 */

#ifdef __cplusplus
} /* End of extern C */
#endif /* #ifdef __cplusplus */

#endif  /* End of SENSOR_I2C_CONFIG_H */
