/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  buffer_mgmt_ipc_if.h
 *
 */

#ifndef BUFFER_MGMT_IPC_IF_H
#define BUFFER_MGMT_IPC_IF_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include "shared_frame_buffers.h"
#include "buffer_mgmt_ipc.h"


/* Structures */
typedef struct FRAME_BUF_MGR_IPC
{
    /* Base frame buffer manager */
    frameBufMgr_t frameBufMgr;
    
    /* Inter-component communication using IPC related constructs. */
    ipcCommParams_t ipcParams;
} frameBufMgrIpc_t;


/* Functions */

/* 
 * Buffer manager APIs
 * Create buffer manager
 * Open buffer manager
 * Close buffer manager
 * Destroy buffer manager
 */
frameBufMgr_t *ipcCreateBufferMgr(uint32_t nNumBufs,
                                  uint32_t nWidth,
                                  uint32_t nHeight,
                                  eColorFormatType_t colorFmtType);
ERRORTYPE ipcOpenBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                           eMode_t mode);
ERRORTYPE ipcInitBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                           eMode_t mode);
ERRORTYPE ipcCloseBufferMgr(frameBufMgr_t *pFrameBufMgr, 
                            eMode_t mode);
ERRORTYPE ipcDestroyBufferMgr(frameBufMgr_t *pFrameBufMgr);

/* 
 * Default buffer management APIs
 * Manages buffers between components, which execute on different cores.
 * Get empty buffer from output buffer manager
 * Put empty buffer to input buffer manager
 * Get filled buffer from input buffer manager
 * Put filled buffer to output buffer manager
 */
ERRORTYPE ipcGetEmptyFrame(frameBufMgr_t *pFrameBufMgr, 
                           uint32_t nTimeOut, 
                           frame_t **ppFrame);
ERRORTYPE ipcPutEmptyFrame(frameBufMgr_t *pFrameBufMgr, 
                           uint32_t nReaderIdx, 
                           frame_t *pFrame);
ERRORTYPE ipcGetFilledFrame(frameBufMgr_t *pFrameBufMgr, 
                            uint32_t nReaderIdx, 
                            uint32_t nTimeOut, 
                            frame_t **ppFrame);
ERRORTYPE ipcPutFilledFrame(frameBufMgr_t *pFrameBufMgr, 
                            frame_t *pFrame);

/* APIs to set IPC related input and output buffer manager interfaces. */
void setBufMgrIfIpc(bufMgmtIfFxns_t *pBufMgmtIfFxns);

/* APIs to init/de-init IPC params. */
ERRORTYPE initWriterIpcParams(ipcCommParams_t *pIpcCommParams);
ERRORTYPE deInitWriterIpcParams(ipcCommParams_t *pIpcCommParams);
ERRORTYPE initReaderIpcParams(ipcCommParams_t *pIpcCommParams, 
                              uint32_t nReaderIdx);
ERRORTYPE deInitReaderIpcParams(ipcCommParams_t *pIpcCommParams, 
                                uint32_t nReaderCnt,
                                Bool bUnregNotifyEvent,
                                Bool bCloseGate);

/* APIs to set IPC notification params. */
void *getIpcReaderParams(frameBufMgr_t *pFrameBufMgr, int32_t nReaderIdx);
void *getIpcCommParams(frameBufMgr_t *pFrameBufMgr);
ERRORTYPE setIpcNotifySrcCoreId(void *pParams,
                                uint16_t nCoreId);
ERRORTYPE setIpcNotifyDstCoreId(void *pParams,
                                uint16_t nCoreId);
ERRORTYPE setIpcNotifyIntLineId(void *pParams,
                                uint16_t nIntLineId);
ERRORTYPE setIpcNotifyEventId(void *pParams,
                              uint16_t nEventId);
ERRORTYPE ipcNotifyEventAvailable(void *pParams,
                                  Bool *pEventAvailable);
void setIpcGateMPName(const char *pSrcTaskName,
                      const char *pDstTaskName,
                      void *pParams,
                      int32_t nChanNum);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BUFFER_MGMT_IPC_IF_H */
