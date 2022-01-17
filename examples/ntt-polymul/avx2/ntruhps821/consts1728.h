#ifndef CONSTS1728_H
#define CONSTS1728_H

#include "params.h"

/* qdata */
#define _16XP            0
#define _16XPINV        16
#define _16XV           32
#define	_16XSHIFT       48
#define	_16XMONT_PINV   64
#define	_16XMONT        80
#define	_16XF_PINV      96
#define	_16XF          112
#define _ZETAS3_PINV   128
#define _ZETAS3        136
#define _ZETAS3_INV_PINV   144
#define _ZETAS3_INV    152
#define _ZETAS_PINV    160
#define _ZETAS         168
#define _TWIST192      176
#define _TWIST24      3632
#define _TWIST24INV   4016

/* The C ABI on MacOS exports all symbols with a leading
 * underscore. This means that any symbols we refer to from
 * C files (functions) can't be found, and all symbols we
 * refer to from ASM also can't be found.
 *
 * This define helps us get around this
 */
#ifdef __ASSEMBLER__
#if defined(__WIN32__) || defined(__APPLE__)
#define decorate(s) _##s
#define cdecl2(s) decorate(s)
#define cdecl(s) cdecl2(POLYMUL_NAMESPACE(_##s))
#else
#define cdecl(s) POLYMUL_NAMESPACE(_##s)
#endif
#endif

#ifndef __ASSEMBLER__
#include <stdint.h>

#define idxdata POLYMUL_NAMESPACE(_idxdata)
extern const uint8_t idxdata[];
#define pdata3457 POLYMUL_NAMESPACE(_pdata3457)
extern const int16_t pdata3457[];
#define pdata8641 POLYMUL_NAMESPACE(_pdata8641)
extern const int16_t pdata8641[];

#define P0 3457
#define P1 8641
#define CRT_U_PINV -21858
#define CRT_U -226
#define PDATA0 pdata3457
#define PDATA1 pdata8641

#endif
#endif
