/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  sys_info.h
 *
 */

#ifndef SYS_INFO_H
#define SYS_INFO_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

/* CPU Revision for TI81XX PG2.1 is 0x3, 0xC, PG3.0 is 0x4 and PG1.0 is 0 */
typedef enum eCpuRev_t {
    CENT_PG1_0 = 0x06000000,
    CENT_PG2_1 = 0x06000001,
    CENT_PG3_0 = 0x06000002,
    CENT_PG3_A = 0x06000003,
    CENT_PG3_B = 0x06000004,
    CENT_PG3_C = 0x06000005,
    CENT_EVE_PG1_0 = 0x06000006,
    CENT_EVE_PG2_X = 0x06000007,
    PG_NONE = 0x00000000,
} eCpuRev_t;

uint32_t getCpuRev(void);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* SYS_INFO_H */
