/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  slave_task_mgr.h
 *
 */

#ifndef SLAVE_TASK_MGR_H
#define SLAVE_TASK_MGR_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include "error_codes.h"

/* Data structure declarations */


/* Function prototypes */
ERRORTYPE initSlaveTaskMgr(uint16_t nCoreId);
ERRORTYPE handleMasterCmds();

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* SLAVE_TASK_MGR_H */
