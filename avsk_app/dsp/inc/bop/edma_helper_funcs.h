/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  edma_helper_funcs.h
 *
 */

#ifndef EDMA_HELPER_FUNCS_H
#define EDMA_HELPER_FUNCS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
/* Include EDMA3 Driver */
#include <ti/sdo/edma3/drv/edma3_drv.h>

void edmaMemcpy(EDMA3_DRV_Handle hEdma, void * dstBuf, void * srcBuf, Uint32 numBytes);
void edmaYextract(EDMA3_DRV_Handle hEdma, void * srcBuf, void * dstBuf, Uint32 width, Uint32 height);
void edmaWarpImgCpy(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height);
void edmaWarpImgCpy1(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height);
void edmaDoneCb(unsigned int tcc, EDMA3_RM_TccStatus status,void *appData);

void edmaWarpImgCpy4(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height, Uint32 user_srcbidx, Uint32 user_desbidx);//liuxu, 02/13/2014. 


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* EDMA_HELPER_FUNCS_H */
