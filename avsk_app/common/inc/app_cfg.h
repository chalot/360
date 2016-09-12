/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  app_cfg.h
 *
 *   @brief 
 */

#ifndef APP_CFG_H
#define APP_CFG_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#define DSP_LITE
#ifndef DSP_LITE
#define MEMCFG_NUMSHAREDREGIONS (0x4)
#else
#define MEMCFG_NUMSHAREDREGIONS (0x2)//liuxuliuxu, 8/22/2013, add one for frame buffer.
#endif

#define MEMCFG_SRINDEX0         (0x0u)

#ifndef DSP_LITE
#define MEMCFG_SRBASE0          (0x80000000u)        /* SHARED_CTRL for IPC init. */ 
#define MEMCFG_SRSIZE0          (0x01000000u)
#else//liuxuliuxu
#define MEMCFG_SRBASE0          (0x85B00000u)        //liuxu, 11/5/2013, for mem_size_128MB. //liuxuliuxu, 8/21/2013. (0x9BE00000u) /* SHARED_CTRL for IPC init. */ 
#define MEMCFG_SRSIZE0          (0x100000u)
#endif

#define MEMCFG_SRCACHEENABLE0   (0u)//liuxuliuxu, 8/22/2013, non-cache.

#define MEMCFG_SRINDEX1         (0x1u)
#define MEMCFG_SRBASE1          (0x81800000u)//liuxu, 11/5/2013, for mem_size_128MB. liuxu, 10/17/2013, align with ipc.cfg. liuxuliuxu, 8/22/2013. (0x88100000u)        /* SHARED_MEM for shared data structures. */
#define MEMCFG_SRSIZE1          (0x3f00000u)//liuxu, 8/22/2013, 0x55D9680u, the frame buffers are too huge, need to optimize. Otherwise, DSP program could be crashed.
#define MEMCFG_SRCACHEENABLE1   (0u)

#define MEMCFG_SRINDEX2         (0x2u)
#define MEMCFG_SRBASE2          (0x8A100000u)        /* SHARED_FRAME_BUFFERS for shared buffers and buffer headers. */
#define MEMCFG_SRSIZE2          (0x05E00000u)
#define MEMCFG_SRMEMTYPE2       (sharedRegionMemoryTypeData)
#define MEMCFG_SRCACHEENABLE2   (1u)

#define MEMCFG_SRINDEX3         (0x3u)
#define MEMCFG_SRBASE3          (0x8FF00000u)        /* SHARED_LOG_MEM for shared logger */ 
#define MEMCFG_SRSIZE3          (0x00090000u)
#define MEMCFG_SRCACHEENABLE3   (1u)

#ifdef _cplusplus
}
#endif/* __cplusplus */

#endif /* APP_CFG_H */ 
