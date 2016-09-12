/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
*   @file  ov10630_sensor_config.h
*
*   @brief 
*/

#ifndef OV10630_SENSOR_CONFIG_H
#define OV10630_SENSOR_CONFIG_H

#ifdef __cplusplus
extern "C" 
{
#endif

#include "error_codes.h"

/* i2c address of OV10630 sensor. */
#define OV10630_I2C_DEVICE_ADDR (0x30u)

/*
 *====================
 * Function declaration
 *====================
*/
ERRORTYPE ov10630SensorInit(void);
void ov10630SensorDeinit(void);
ERRORTYPE configOV10630CaptureModeUYVY(void);
ERRORTYPE configOV1063030FPS(void);
ERRORTYPE configOV1063036FPS(void);

#ifdef __cplusplus
} /* End of extern C */
#endif /* #ifdef __cplusplus */

#endif  /* End of OV10630_SENSOR_CONFIG_H */
