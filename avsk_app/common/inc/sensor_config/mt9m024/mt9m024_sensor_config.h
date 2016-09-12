/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
*   @file  mt9m024_sensor_config.h
*
*   @brief 
*/

#ifndef MT9M024_SENSOR_CONFIG_H
#define MT9M024_SENSOR_CONFIG_H

#ifdef __cplusplus
extern "C" 
{
#endif

#include "error_codes.h"

/* i2c address of MT9M024 sensor. */
#define MT9M024_I2C_DEVICE_ADDR (0x10u)
/* I2C Switch -> PCA9543 */
#define PCA9543_I2C_DEVICE_ADDR (0x70)
/*
 *====================
 * Function declaration
 *====================
*/
ERRORTYPE mt9m024SensorInit(void);
void mt9m024SensorDeinit(void);

#ifdef __cplusplus
} /* End of extern C */
#endif /* #ifdef __cplusplus */

#endif  /* End of MT9M024_SENSOR_CONFIG_H */
