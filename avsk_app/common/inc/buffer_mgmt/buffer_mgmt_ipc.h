/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  buffer_mgmt_ipc.h
 *
 */

#ifndef BUFFER_MGMT_IPC_H
#define BUFFER_MGMT_IPC_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/sysbios/knl/Semaphore.h>

#include <ti/ipc/Notify.h>
#include <ti/ipc/GateMP.h>

#include "error_codes.h"
#include "common_defs.h"


/* Notify interrupt lines. */
#define DSP_INTERRUPT_LINE              0u
#define VIDEOM3_INTERRUPT_LINE          0u
#define VPSSM3_INTERRUPT_LINE           0u
#define HOST_INTERRUPT_LINE             0u

extern uint16_t nScalarEventID[MAX_PORTS];
extern uint16_t nDspVlibEventID[MAX_PORTS];
extern uint16_t nDspPTEventID[MAX_PORTS];
extern uint16_t nVicpWarpEventID[MAX_PORTS];
extern uint16_t nDisplayEventID[MAX_PORTS];
extern uint16_t nPcieSinkEventID[MAX_PORTS];
extern uint16_t nRawEthSinkEventID[MAX_PORTS];
extern uint16_t nGraphicsEventID[MAX_PORTS];
extern uint16_t nCropFrameEventID[MAX_PORTS];
extern uint16_t nDeIEventID[MAX_PORTS];
extern uint16_t nBopEventID[MAX_PORTS];
extern uint16_t nVidDecEventID[MAX_PORTS];
extern uint16_t nAVBSinkEventID[MAX_PORTS];
extern uint16_t nAVBSourceEventID[MAX_PORTS];


/* Params passed to the notify callback. */
typedef struct notifyCbFxnParams_t
{
    /* Handle to the filled Q sema. Once a buffer is queued into Filled Q, raise the sema. */
    Semaphore_Handle hFilledBufQSema;
} notifyCbFxnParams_t;

/* 
 * IPC Notify event related params -
 * Source core ID
 * Destination core ID
 * Interrupt line ID
 * Event ID
 */
typedef struct IPC_NOTIFY_EVENT_PARAMS
{
    /* Notify source core id. */
    uint16_t nSrcCoreId;

    /* Notify destination core id. */
    uint16_t nDstCoreId;

    /* Notify Interrupt line. */
    uint16_t nInterruptLineId;

    /* Notify event. */
    uint16_t nEventId;
} ipcNotifyEventParams_t;

/* SDO IPC Reader params. */
typedef struct IPC_READER_PARAMS
{
    /* Reader index - required for handling single writer, multiple reader case. */
    uint32_t nReaderIdx;
    
    /* Gate to ensure mutually exclusive access to the shared frame buffer manager object. */
    /* Reader Gate handle. */
    GateMP_Handle hReaderGate;

    /* IPC notify event releated params. */
    ipcNotifyEventParams_t notifyEventParams;

    /* Notify callback function. */
    Notify_FnNotifyCbck notifyCbFxn;

    /* Params to the notifyCbFxn - handle to the filled Q and sema to indicate a buffer has been added to Q. */
    notifyCbFxnParams_t notifyCbFxnParams;
} ipcReaderParams_t;

/* SDO IPC Writer params. */
typedef struct IPC_WRITER_PARAMS
{
    /* Gate to ensure mutually exclusive access to the shared frame buffer manager object. */
    /* Writer gate. */
    GateMP_Handle hWriterGate;
} ipcWriterParams_t;

/* 
 * SDO IPC communication params. 
 * Components reside on same/different cores.
 * Use IPC Notify for inter-component notification.
 * Use GateMP for protecting critical sections.
 */
typedef struct SDO_IPC_COMM_PARAMS
{
    /* Name of the GateMP instance. */
    int8_t cGateMPInstName[MAX_NAME];

    /* Writer params. */
    ipcReaderParams_t readerParams[MAX_READERS];
    /* Reader params. */
    ipcWriterParams_t writerParams;
} ipcCommParams_t;

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BUFFER_MGMT_IPC_H */
