/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  a8_task_mgr.h
 *
 */

#ifndef MASTER_TASK_MGR_H
#define MASTER_TASK_MGR_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include "error_codes.h"
#include "cmd_msg_defs.h"

/* Data structure declarations */


/* Function prototypes */
ERRORTYPE initTaskMgr();
void *getTaskMgrCtxt();
ERRORTYPE initSharedRegionCmd(uint16_t nCoreId);
ERRORTYPE createRemoteTask(int8_t *pTaskName, uint16_t nCoreId, int32_t *pTaskHandle);
ERRORTYPE initRemoteTask(int32_t nTaskHandle, int32_t nPortNum, void *pInitParams, uint8_t bIsSink);
void getRemoteTaskNumPorts(int32_t nTaskHandle, void *pInitParams, int32_t *pNumInputPorts, int32_t *pNumOutputPorts);
uint32_t isCompEnable(char * pTaskName, void *pInitParams);
void getRemoteTskSrcPortId(int32_t nTaskHandle, int32_t nPortId, void *pInitParams, int32_t *pSrcIdx, int32_t *pSrcPortId);
void getTaskNumPorts(int8_t *pTaskName, int32_t *nNumInputPorts, int32_t *nNumOutputPorts);
void getSrcPortDetails(int8_t *pTaskName, int32_t nPortNum, int32_t *pSrcTaskIdx, int32_t *pSrcPortId);
void getInputPortId(int8_t *pTaskName, int32_t nOutPortIdx, int32_t *pInPortidx);
ERRORTYPE chainRemoteTasks(int32_t nSrcTaskHandle, 
                           int32_t nSrcChanNum, 
                           int32_t nDstTaskHandle, 
                           int32_t nDstChanNum, 
                           eBufMgrType_t bufMgrType);
ERRORTYPE readyRemoteTask(int32_t nTaskHandle, int32_t nTaskChanNum);
ERRORTYPE stopRemoteTask(int32_t nTaskHandle, int32_t nTaskChanNum);
ERRORTYPE startRemoteTask(int32_t nTaskHandle);
ERRORTYPE pauseRemoteTask(int32_t nTaskHandle);
ERRORTYPE destroyRemoteTask(int32_t nTaskHandle);
ERRORTYPE startRemoteChain();
ERRORTYPE stopRemoteChain();
ERRORTYPE pauseRemoteChain();
ERRORTYPE flushRemoteChain();
ERRORTYPE startPrfRemoteChain();
ERRORTYPE stopPrfRemoteChain();
ERRORTYPE startPrfRemoteTask(int32_t nTaskHandle, int32_t nPortNum);
ERRORTYPE stopPrfRemoteTask(int32_t nTaskHandle, int32_t nPortNum);
ERRORTYPE startLatencyMeasurement();
ERRORTYPE stoptLatencyMeasurement(void);
ERRORTYPE startLatencyRemoteTask(int32_t nTaskHandle, int32_t nPortNum);
ERRORTYPE stopLatencyRemoteTask(int32_t nTaskHandle, int32_t nPortNum);
ERRORTYPE printSystemLoad(uint16_t nCoreId);
ERRORTYPE startProfilingSystemLoad(uint16_t nCoreId, uint32_t nCaptureInterval, uint32_t nLogInterval);
ERRORTYPE stopProfilingSystemLoad(uint16_t nCoreId);
void vpssPlatformInitialization(int32_t nCoreId);
void vpssPlatformDeInitialization(int32_t nCoreId);
void initRemoteLoggerClient();
void deInitRemoteLoggerClient();
void getConfigFromUART(chanConfig_t *defaultAppconfig);
void getCmdFromUART(char *cmd);
void initUART();
void centaurus_init();

eBufMgrType_t getSrcBufMgrType(int32_t nTaskIdx,
                               void *pInitParams,
                               int32_t nPortId);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* MASTER_TASK_MGR_H */
