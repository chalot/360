/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  shared_frame_buffers.h
 *
 */

#ifndef SHARED_FRAME_BUFFERS_H
#define SHARED_FRAME_BUFFERS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/sysbios/knl/Semaphore.h>

#include "cmd_msg_defs.h"


/* Indicates the status of frame processing. */
typedef enum eChFrmStatus_t
{
    chFrmStatusOk = 0x02000000,
    chFrmStatusPending,
    chFrmStatusPendingSlice,
    chFrmStatusQueueing,
    chFrmStatusDequeueing,
    chFrmStatusError,
    chFrmStatusAVBPending
} eChFrmStatus_t;

/* Buffer availability status. Currently unused. */
typedef enum eBufStatus_t
{
    bufFree = 0x03000000,
    bufInUse
} eBufStatus_t;

/* Frame buffer header. */
typedef struct frame_t
{
    /* Buffer index. */
    uint32_t nBufIdx;
    /* Width of frame. */
    uint32_t nWidth;
    /* Height of frame. */
    uint32_t nHeight;
    /* Frame pitch. */
    uint32_t nPitch;
    /* Slice mask. For frame mode, it should be all 1s. */
    uint32_t nSliceMask;
    /* Frame color format. */
    eColorFormatType_t colorFmtType;
    /* Required for handling dup-buffer case, where same buffer is given to multiple readers. */
    uint32_t nRefCnt;
    /* Timestamp. */
#ifdef LATENCY_64BIT_RESOLUTION
    uint64_t nTimeStamp;
#else
    uint32_t nTimeStamp;
#endif
    /* Channel Number. */
    int32_t nChanNum;
	/* Filled length of the buffer */
	uint32_t nFilledLen[MAX_SLICES];
    /* Buffer pointer. */
    void *pBuffer;
} frame_t;

/* Frame buffer manager - Base context */
typedef struct FRAME_BUFFER_MGR
{
    /* Frame buffer manager instance name. */
    int8_t cInstName[MAX_NAME];
    
    /*
     * Free Buffer Q containing index of buffer. 
     * Write pointer points to the index where new free buffer will be available.
     * Read pointer points to the index from where a used buffer has to be put back.
     */
    int32_t nFreeBufferQ[NUM_BUFFERS];
    /* FreeBufferQ write pointer - index of available output buffer. */
    int32_t nFreeQWriteIdx;
    /* FreeBufferQ read pointer - index of available input buffer. */
    int32_t nFreeQReadIdx[MAX_READERS];
    
    /*
     * Filled Buffer Q containing index of buffer. 
     * Write pointer points to the index where new filled buffer has to be queued.
     * Read pointer points to the index from where a new filled buffer will be available.
     */
    int32_t nFilledBufferQ[NUM_BUFFERS];
    /* FilledBufferQ write pointer - index of available output buffer. */
    int32_t nFilledQWriteIdx;
    /* FilledBufferQ read pointer - index of available input buffer. */
    int32_t nFilledQReadIdx[MAX_READERS];
    
    /* Number of frame buffers. */
    uint32_t nNumFrameBufs;
    /* Pointer to frame buffer header. */
    frame_t *pFrameBufs[NUM_BUFFERS];

    /* Number of readers. */
    uint32_t nReaderCnt;
} frameBufMgr_t;

/* Buffer manager functions. */
typedef struct BUF_MGMT_INTERFACE_FXNS
{
    /* 
     * Buffer manager APIs
     * Create buffer manager (writer)
     * Init buffer manager (writer)
     * Open buffer manager (reader)
     * Close buffer manager (reader)
     * Destroy buffer manager (writer)
     */
    frameBufMgr_t * (*createBufferMgr)(uint32_t nNumBufs,
        uint32_t nWidth,
        uint32_t nHeight,
        eColorFormatType_t colorFmtType);
    ERRORTYPE (*initBufferMgr)(frameBufMgr_t *pFrameBufMgr, 
        eMode_t mode);
    ERRORTYPE (*openBufferMgr)(frameBufMgr_t *pFrameBufMgr, 
        eMode_t mode);
    ERRORTYPE (*closeBufferMgr)(frameBufMgr_t *pFrameBufMgr, 
        eMode_t mode);
    ERRORTYPE (*destroyBufferMgr)(frameBufMgr_t *pFrameBufMgr);

    /* 
     * Default buffer management APIs
     * Manages buffers between components, which execute on different cores.
     * Get empty buffer from output buffer manager
     * Put empty buffer to input buffer manager
     * Get filled buffer from input buffer manager
     * Put filled buffer to output buffer manager
     */
    ERRORTYPE (*getEmptyBuffer)(frameBufMgr_t *pFrameBufMgr, 
        uint32_t nTimeOut, 
        frame_t **ppFrame);
    ERRORTYPE (*putEmptyBuffer)(frameBufMgr_t *pFrameBufMgr, 
        uint32_t nReaderIdx, 
        frame_t *pFrame);
    ERRORTYPE (*getFilledBuffer)(frameBufMgr_t *pFrameBufMgr, 
        uint32_t nReaderIdx, 
        uint32_t nTimeOut, 
        frame_t **ppFrame);
    ERRORTYPE (*putFilledBuffer)(frameBufMgr_t *pFrameBufMgr, 
        frame_t *pFrame);
} bufMgmtIfFxns_t;

/* Functions */
#if 0
frameBufMgr_t *sharedFrameBufPoolAlloc(uint32_t nNumBufs, 
                                       uint32_t nWidth, 
                                       uint32_t nHeight, 
                                       eColorFormatType_t colorFmtType);
void sharedFrameBufPoolFree(frameBufMgr_t *pFrameBufMgr);
#endif /* 0 */

float getFactor(eColorFormatType_t colorFmtType);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* SHARED_FRAME_BUFFERS_H */
