/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  buffer_mgmt_bios.h
 *
 */

#ifndef BUFFER_MGMT_BIOS_H
#define BUFFER_MGMT_BIOS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/sysbios/gates/GateTask.h>
#include <ti/sysbios/knl/Semaphore.h>

#include "error_codes.h"
#include "common_defs.h"
#include "queue.h"


/* 
 * Sys/BIOS related inter-component communication params. 
 * Components reside on same core.
 * Use Sys/BIOS semaphores for inter-component notification.
 * Use Sys/BIOS gates for protecting critical sections.
 */
typedef struct BIOS_COMM_PARAMS
{
    /* Name of the Gate instance. */
    int8_t cGateInstName[MAX_NAME];

    /* Gate to ensure mutually exclusive access to the shared frame buffer manager object. */
    GateTask_Handle hGate;
    
    /* 
     * Reader queues - buffer availability notifications from the writer 
     * are posted here.
     */
    hQueue readerQueue[MAX_READERS];

    /* Notify elements */
    queueElem_t notifyElem[MAX_READERS][NUM_BUFFERS];    
} biosCommParams_t;

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BUFFER_MGMT_BIOS_H */
