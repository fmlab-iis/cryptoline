#ifndef CONSTS256_H
#define CONSTS256_H

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
#define _ZETAS         128
#define _TWIST32       288
#define _TWIST4        800

/* idx */
#define _REVIDXW         0
#define _REVIDXD        32
#define _SIGNMSKW	64

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
#define pdata7681 POLYMUL_NAMESPACE(_pdata7681)
extern const int16_t pdata7681[];
#define pdata10753 POLYMUL_NAMESPACE(_pdata10753)
extern const int16_t pdata10753[];

#define P0 7681
#define P1 10753
#define CRT_U_PINV 32747
#define CRT_U 3563
#define PDATA0 pdata7681
#define PDATA1 pdata10753

#endif
#endif
