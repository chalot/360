/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *  @file   logger.c
 *
 *  @brief
 */

#include <xdc/std.h>
#include <string.h>
#include <stdlib.h>

#include <stdarg.h>

#include <xdc/runtime/System.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/hal/Cache.h>
#include "error_codes.h"
#include "common_defs.h"
#include "slave_task_mgr_priv.h"
#include "logger.h"

extern void *getSlaveTaskMgrCtxt(void);

/*************************************************************************
 *  @func       initLogClient
 *
 *  @brief      This function will be called from Slave Task manager to 
 *              initializes the client logger. it will assign the 
 *              logger Shared region address to slave manager context 
 *              and opens the GateMp handle.
 *
 *  @param[in] pLoggerSharedInfo : logger Shared Region pointer
 *
 *  @returns
 ************************************************************************/
ERRORTYPE initLogClient(loggerSharedInfo_t *pLoggerSharedInfo)
{
    int32_t             nStatus             = 0;
    uint16_t            nRetryCount         = 0u;
    ERRORTYPE           nRetVal             = ecNone;
    loggerInfo_t        *pLoggerInfo        = NULL_VALUE;
    slaveTaskMgrCtxt_t  *pSlaveTaskMgrCtxt  = NULL_VALUE;

    do
    {
        if(pLoggerSharedInfo == NULL)
        {
            nRetVal = ecBadParameter;
            break;
        }
        
        pSlaveTaskMgrCtxt   = (slaveTaskMgrCtxt_t *) getSlaveTaskMgrCtxt();
        pLoggerInfo         = &pSlaveTaskMgrCtxt->loggerInfo;
        pLoggerInfo->pLoggerSharedInfo = pLoggerSharedInfo;

        for (nRetryCount = 0u; nRetryCount < 65535u; nRetryCount++)
        {
            nStatus = GateMP_open((String) pLoggerSharedInfo->cGateMPInstName, &(pLoggerInfo->hLoggerGate));
            if (nStatus >= 0)
            {
                break;
            }
            Task_sleep(1u);
        }

        if (nStatus < 0)
        {
            System_printf("\n%s: %d: GateMP_open error. Status: %d, Gate name: %s \n", 
                __FUNCTION__, __LINE__, nStatus, pLoggerSharedInfo->cGateMPInstName);
            nRetVal = ecFail;
            break;
        }
    } while(0);

    return nRetVal;
}

/*************************************************************************
 *  @func       deInitLogClient
 *
 *  @brief      This function will be called from Slave Task manager to 
 *              initializes the client logger. it will closes the GateMP handle.
 *
 *  @param[in]  None
 *
 *  @returns    
 ************************************************************************/
ERRORTYPE deInitLogClient(void)
{
    ERRORTYPE           nRetVal             = ecNone;
    loggerInfo_t        *pLoggerInfo        = NULL_VALUE;
    slaveTaskMgrCtxt_t  *pSlaveTaskMgrCtxt  = NULL_VALUE;

    pSlaveTaskMgrCtxt   = (slaveTaskMgrCtxt_t *) getSlaveTaskMgrCtxt();
    pLoggerInfo         = &pSlaveTaskMgrCtxt->loggerInfo;

    if (NULL != pLoggerInfo->hLoggerGate)
    {
        GateMP_close(&(pLoggerInfo->hLoggerGate));
        pLoggerInfo->hLoggerGate = NULL_VALUE;
        pLoggerInfo->pLoggerSharedInfo = NULL_VALUE;
    }
    return nRetVal;
}

/*************************************************************************
 *  @func       LOG_PRINT
 *
 *  @brief      This function will be called, when any Task wants to print 
 *              a log on the Uart. Basically it writes the logs to Shared Region
 *              so readLogs Server reads the Logs and prints on Uart.
 *
 *  @param[in]  fmt     :  String format
 *  @param[in]  ...     :  variable List
 *  @returns    None
 ************************************************************************/
#define DSP_LITE
#ifndef DSP_LITE
void LOG_PRINT(char *fmt, ... )
{
    va_list arg_ptr;
    uint32_t nLength = 0u;
    IArg key;
    void *pWriterPtr = NULL_VALUE;

#ifdef ENABLE_CONSOLE_PRINTS
    int8_t cPrintBuffer[UART_BUFFER_SIZE] = {0};
#endif /* ENABLE_CONSOLE_PRINTS */
    loggerInfo_t        *pLoggerInfo        = NULL_VALUE;
    slaveTaskMgrCtxt_t  *pSlaveTaskMgrCtxt  = NULL_VALUE;

    pSlaveTaskMgrCtxt   = (slaveTaskMgrCtxt_t *) getSlaveTaskMgrCtxt();
    pLoggerInfo         = &pSlaveTaskMgrCtxt->loggerInfo;

    key = GateMP_enter(pLoggerInfo->hLoggerGate);

    va_start( arg_ptr, fmt );

    /* Invalidate cache. */
    Cache_inv((Ptr) pLoggerInfo->pLoggerSharedInfo, sizeof(loggerSharedInfo_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    pWriterPtr = pLoggerInfo->pLoggerSharedInfo->pWriteAddr;
    nLength = System_vsprintf(pLoggerInfo->pLoggerSharedInfo->pWriteAddr, fmt, arg_ptr );
    va_end( arg_ptr );

    pLoggerInfo->pLoggerSharedInfo->pWriteAddr =
            (void *)((char *)pLoggerInfo->pLoggerSharedInfo->pWriteAddr +  (nLength));

    *((char *)pLoggerInfo->pLoggerSharedInfo->pWriteAddr) = '\r';

    pLoggerInfo->pLoggerSharedInfo->pWriteAddr =
            (void *)((char *)pLoggerInfo->pLoggerSharedInfo->pWriteAddr +  1);

    /* Flush and invalidate cache. */
    Cache_wbInv((Ptr) pWriterPtr, nLength + 1u , (UInt16)Cache_Type_ALL, (Bool)TRUE);
    /* Flush and invalidate cache. */
    Cache_wbInv((Ptr) pLoggerInfo->pLoggerSharedInfo, sizeof(loggerSharedInfo_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    GateMP_leave(pLoggerInfo->hLoggerGate, key);


#ifdef ENABLE_CONSOLE_PRINTS
    va_start(arg_ptr, fmt);
    vsprintf((char *) cPrintBuffer, fmt, arg_ptr);
    va_end(arg_ptr);

    System_printf("%s", cPrintBuffer);
#endif /* ENABLE_CONSOLE_PRINTS */
}
#else
#endif

