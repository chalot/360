/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  error_codes.h
 *
 */

#ifndef ERROR_CODES_H
#define ERROR_CODES_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

typedef enum ERRORTYPE
{
    ecNone = 0,
    ecFail = (int32_t ) 0x80001000,
    ecUndefined = (int32_t ) 0x80001001,
    ecAlreadyExists = (int32_t ) 0x80001002,
    ecBadParameter = (int32_t ) 0x80001003,
    ecNotImplemented = (int32_t ) 0x80001004,
    ecInvalidState = (int32_t ) 0x80001005,
    ecTimeOut = (int32_t ) 0x80001006,
    ecOutOfMemory = (int32_t ) 0x80001007
} ERRORTYPE;

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* ERROR_CODES_H */
