/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  bayer_to_yuyv.h
 *
 */

#ifndef BAYER_TO_YUYV_H
#define BAYER_TO_YUYV_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#define WIDTH 1280
#define HEIGHT 720
#define OUT_WIDTH 640
#define OUT_HEIGHT 360

#define R_OFFSET 0
#define G_OFFSET 1
#define B_OFFSET 2

#define Y_OFFSET 0
#define U_OFFSET 1
#define V_OFFSET 2

void convertBayerGRBGToYUYV(uint16_t *pBayerBuf, uint8_t *pYUYVBuf);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BAYER_TO_YUYV_H */
