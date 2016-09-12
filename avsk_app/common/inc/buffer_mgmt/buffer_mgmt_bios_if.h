/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  buffer_mgmt_bios_if.h
 *
 */

#ifndef BUFFER_MGMT_BIOS_IF_H
#define BUFFER_MGMT_BIOS_IF_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include "shared_frame_buffers.h"
#include "buffer_mgmt_bios.h"


/* Structures */
typedef struct FRAME_BUF_MGR_BIOS
{
    /* Base frame buffer manager */
    frameBufMgr_t frameBufMgr;
    
    /* Inter-component communication using Sys/BIOS related constructs. */
    biosCommParams_t biosCommParams;
} frameBufMgrBios_t;


/* Functions */

/* 
 * Buffer manager APIs
 * Create buffer manager
 * Open buffer manager
 * Close buffer manager
 * Destroy buffer manager
 */
frameBufMgr_t *biosCreateBufferMgr(uint32_t nNumBufs,
                                   uint32_t nWidth,
                                   uint32_t nHeight,
                                   eColorFormatType_t colorFmtType);
ERRORTYPE biosInitBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                            eMode_t mode);
ERRORTYPE biosOpenBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                            eMode_t mode);
ERRORTYPE biosCloseBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                             eMode_t mode);
ERRORTYPE biosDestroyBufferMgr(frameBufMgr_t *pFrameBufMgr);

/* 
 * Default buffer management APIs
 * Manages buffers between components, which execute on different cores.
 * Get empty buffer from output buffer manager
 * Put empty buffer to input buffer manager
 * Get filled buffer from input buffer manager
 * Put filled buffer to output buffer manager
 */
ERRORTYPE biosGetEmptyFrame(frameBufMgr_t *pFrameBufMgr, 
                            uint32_t nTimeOut, 
                            frame_t **ppFrame);
ERRORTYPE biosPutEmptyFrame(frameBufMgr_t *pFrameBufMgr, 
                            uint32_t nReaderIdx, 
                            frame_t *pFrame);
ERRORTYPE biosGetFilledFrame(frameBufMgr_t *pFrameBufMgr, 
                             uint32_t nReaderIdx, 
                             uint32_t nTimeOut, 
                             frame_t **ppFrame);
ERRORTYPE biosPutFilledFrame(frameBufMgr_t *pFrameBufMgr, 
                             frame_t *pFrame);

/* 
 * APIs to set inter-component communication interfaces for
 * reader and writer. 
 */
void setBufMgrIfBios(bufMgmtIfFxns_t *pBufMgmtIfFxns);

/* APIs to init/de-init inter-component communication params. */
void *getBiosCommParams(frameBufMgr_t *pFrameBufMgr);
ERRORTYPE initWriterBiosCommParams(biosCommParams_t *pBiosCommParams);
ERRORTYPE deInitWriterBiosCommParams(biosCommParams_t *pBiosCommParams);
ERRORTYPE initReaderBiosCommParams(biosCommParams_t *pBiosCommParams, 
                                   uint32_t nReaderIdx);
ERRORTYPE deInitReaderBiosCommParams(biosCommParams_t *pBiosCommParams, 
                                     uint32_t nReaderCnt);
void setBiosGateTaskName(const char *pSrcTaskName,
                         const char *pDstTaskName,
                         void *pParams,
                         int32_t nChanNum);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BUFFER_MGMT_BIOS_IF_H */
