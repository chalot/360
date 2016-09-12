/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  sys_info.c
 *
 *   @brief
 */

#include <stdint.h>
#include <sys_info.h>

#define CTRL_BASE   0x48140000
#define DEVICE_ID    (CTRL_BASE + 0x0600)


/*************************************************************************
 *  @func       get_cpu_rev
 *
 *  @brief      Gets the CPU revision info.
 *
 *  @param[in]
 *
 *  @returns    PG2_1, PG1_0
 ************************************************************************/
uint32_t getCpuRev(void)
{
    uint32_t    nId     = 0u;
    uint32_t    nRev    = 0u;
    uint32_t    nRetVal = 0u;

    nId = (*(volatile unsigned int *) (DEVICE_ID));
    nRev = (nId >> 28u) & 0xFu;

    /* PG2.1 devices should read 0x3 as chip rev
     * Some PG2.1 devices have 0xc as chip rev
     */
    if ((nRev == 0x3u) || (nRev == 0xcu ))
    {
        nRetVal = (uint32_t)CENT_PG2_1;
    }
    else if (nRev == 0x0u)
    {
        nRetVal = (uint32_t)CENT_PG1_0;
    }
    else if (nRev == 0x4u)
    {
        nRetVal = (uint32_t)CENT_PG3_0;
    }
    else if (nRev == 0x5u)
    {
        nRetVal = (uint32_t)CENT_PG3_A;
    }
    else if (nRev == 0x6u)
    {
        nRetVal = (uint32_t)CENT_PG3_B;
    }
    else if (nRev == 0x7u)
    {
        nRetVal = (uint32_t)CENT_PG3_C;
    }
    else if (nRev == 0x8u)
    {
        nRetVal = (uint32_t)CENT_EVE_PG1_0;
    }
    else if (nRev == 0x9u)
    {
        nRetVal = (uint32_t)CENT_EVE_PG2_X;
    }
    else
    {
        nRetVal = (uint32_t)PG_NONE;
    }

    return nRetVal;
}
