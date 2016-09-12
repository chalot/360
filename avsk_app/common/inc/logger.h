/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  logger.h
 *
 */
#ifndef LOGGER_H
#define LOGGER_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <ti/ipc/GateMP.h>
#include "error_codes.h"

#define LOGGER_GATE "LOG_GATE"
#define MAX_LOG_SHARED_REGION  1024u * 512u

#define UART_BUFFER_SIZE   3000

typedef struct loggerSharedInfo_t
{
    /* Logger Gate instance name. */
    int8_t cGateMPInstName[10];
    /*Holds starting address of shared region*/
    void *pStartAddr;
    /*Holds reader address*/
    void *pReadAddr;
    /*Holds writer address*/
    void *pWriteAddr;
} loggerSharedInfo_t;

typedef struct loggerInfo_t
{
    loggerSharedInfo_t *pLoggerSharedInfo;
    /* Logger Gate handle. */
    GateMP_Handle hLoggerGate;
} loggerInfo_t;

typedef enum logLevels_t
{
    LOG_ALL = 0xd0000000,
    LOG_INFO,
    LOG_ERROR

} logLevels_t;

#define DSP_LITE
#ifndef DSP_LITE
void LOG_PRINT(char *fmt, ... );
#else
    #include <xdc/runtime/System.h>
    #define LOG_PRINT System_printf //liuxuliuxu, otherwise log_print would use the GateMP handler of slavetaskmanager, which is null.
#endif
ERRORTYPE initLogClient(loggerSharedInfo_t *pLoggerSharedInfo);
ERRORTYPE deInitLogClient();

ERRORTYPE createLogServer();
ERRORTYPE destroyLogServer();
static void printLogger(char * sLog);
/* void selectTaskLogLevel(int32_t *pTaskHandle,int32_t *pLogLevel); */
/* void selectTask(int32_t *pTaskHandle); */

#pragma DATA_ALIGN(uartLogWriteBuffer, 128);
static char uartLogWriteBuffer[UART_BUFFER_SIZE];

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* LOGGER_H */

