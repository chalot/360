/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  vlib_platforms.h
 *
 */

#ifndef __VLIB_PLATFORMS_H__
#define __VLIB_PLATFORMS_H__

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#ifdef _VC_HOST_BUILD

# include "C6xSimulator.h"
# include <assert.h>
# include "vlibapis.h"

typedef short Int16;

#define restrict
#define _nassert assert

#else  /* _VC_HOST_BUILD */
/* Includes for target */
# include <c6x.h>
# include "vlibapis.h"
typedef long long int64_ll;
typedef double int64_d;
#define __inline inline

#endif /* _VC_HOST_BUILD */



#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* ! __VLIB_PLATFORMS_H__ */
