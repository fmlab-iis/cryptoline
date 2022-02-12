#include "params.h"
#include "consts256.h"
.include "fq.inc"

.macro pointwise64 off
vmovdqa		(0  +64*\off+ 0)*2(%rsi),%ymm4
vmovdqa		(0  +64*\off+ 0)*2(%rdx),%ymm5
vmovdqa		(0  +64*\off+16)*2(%rsi),%ymm6
vmovdqa		(0  +64*\off+16)*2(%rdx),%ymm7
vmovdqa		(0  +64*\off+32)*2(%rsi),%ymm8
vmovdqa		(0  +64*\off+32)*2(%rdx),%ymm9
vmovdqa		(0  +64*\off+48)*2(%rsi),%ymm10
vmovdqa		(0  +64*\off+48)*2(%rdx),%ymm11

vpmullw		%ymm5,%ymm4,%ymm3
vpmulhw		%ymm5,%ymm4,%ymm4
vpmullw		%ymm7,%ymm6,%ymm5
vpmulhw		%ymm7,%ymm6,%ymm6
vpmullw		%ymm9,%ymm8,%ymm7
vpmulhw		%ymm9,%ymm8,%ymm8
vpmullw		%ymm11,%ymm10,%ymm9
vpmulhw		%ymm11,%ymm10,%ymm10

vpmullw		%ymm1,%ymm3,%ymm3
vpmullw		%ymm1,%ymm5,%ymm5
vpmullw		%ymm1,%ymm7,%ymm7
vpmullw		%ymm1,%ymm9,%ymm9
vpmulhw		%ymm0,%ymm3,%ymm3
vpmulhw		%ymm0,%ymm5,%ymm5
vpmulhw		%ymm0,%ymm7,%ymm7
vpmulhw		%ymm0,%ymm9,%ymm9
vpsubw		%ymm3,%ymm4,%ymm3
vpsubw		%ymm5,%ymm6,%ymm4
vpsubw		%ymm7,%ymm8,%ymm5
vpsubw		%ymm9,%ymm10,%ymm6

fqmulprecomp	14,15,3,x=7
fqmulprecomp	14,15,4,x=7
fqmulprecomp	14,15,5,x=7
fqmulprecomp	14,15,6,x=7

vmovdqa		%ymm3,(64*\off+ 0)*2(%rdi)
vmovdqa		%ymm4,(64*\off+16)*2(%rdi)
vmovdqa		%ymm5,(64*\off+32)*2(%rdi)
vmovdqa		%ymm6,(64*\off+48)*2(%rdi)
.endm

.macro pointwise32acc off
vmovdqa		(0  +32*\off+ 0)*2(%rsi),%ymm4
vmovdqa		(0  +32*\off+ 0)*2(%rdx),%ymm5
vmovdqa		(0  +32*\off+16)*2(%rsi),%ymm6
vmovdqa		(0  +32*\off+16)*2(%rdx),%ymm7
vmovdqa		(256+32*\off+ 0)*2(%rsi),%ymm8
vmovdqa		(256+32*\off+ 0)*2(%rdx),%ymm9

vpmullw		%ymm5,%ymm4,%ymm3
vpmulhw		%ymm5,%ymm4,%ymm4
vmovdqa		(256+32*\off+16)*2(%rsi),%ymm10
vmovdqa		(256+32*\off+16)*2(%rdx),%ymm11

vpmullw		%ymm7,%ymm6,%ymm5
vpmulhw		%ymm7,%ymm6,%ymm6
#if KEM_K > 2
vmovdqa		(512+32*\off+ 0)*2(%rsi),%ymm12
vmovdqa		(512+32*\off+ 0)*2(%rdx),%ymm13
#endif

vpmullw		%ymm9,%ymm8,%ymm7
vpmulhw		%ymm9,%ymm8,%ymm8
#if KEM_K > 2
vmovdqa		(512+32*\off+16)*2(%rsi),%ymm14
vmovdqa		(512+32*\off+16)*2(%rdx),%ymm15
#endif

vpmullw		%ymm11,%ymm10,%ymm9
vpmulhw		%ymm11,%ymm10,%ymm10
#if KEM_K > 2
vpmullw		%ymm13,%ymm12,%ymm11
vpmulhw		%ymm13,%ymm12,%ymm12
vpmullw		%ymm15,%ymm14,%ymm13
vpmulhw		%ymm15,%ymm14,%ymm14
#endif

vpmullw		%ymm1,%ymm3,%ymm3
vpmullw		%ymm1,%ymm5,%ymm5
vpmullw		%ymm1,%ymm7,%ymm7
vpmullw		%ymm1,%ymm9,%ymm9
#if KEM_K > 2
vpmullw		%ymm1,%ymm11,%ymm11
vpmullw		%ymm1,%ymm13,%ymm13
#endif
vpmulhw		%ymm0,%ymm3,%ymm3
vpmulhw		%ymm0,%ymm5,%ymm5
vpmulhw		%ymm0,%ymm7,%ymm7
vpmulhw		%ymm0,%ymm9,%ymm9
#if KEM_K > 2
vpmulhw		%ymm0,%ymm11,%ymm11
vpmulhw		%ymm0,%ymm13,%ymm13
#endif

vpaddw		%ymm8,%ymm4,%ymm4
vpaddw		%ymm10,%ymm6,%ymm6
#if KEM_K > 2
vpaddw		%ymm12,%ymm4,%ymm4
vpaddw		%ymm14,%ymm6,%ymm6
#endif
vpsubw		%ymm3,%ymm4,%ymm3
vpsubw		%ymm5,%ymm6,%ymm4
vpsubw		%ymm7,%ymm3,%ymm3
vpsubw		%ymm9,%ymm4,%ymm4
#if KEM_K > 2
vpsubw		%ymm11,%ymm3,%ymm3
vpsubw		%ymm13,%ymm4,%ymm4
#endif

#if KEM_K > 3
vmovdqa		(768+32*\off+ 0)*2(%rsi),%ymm6
vmovdqa		(768+32*\off+ 0)*2(%rdx),%ymm7
vmovdqa		(768+32*\off+16)*2(%rsi),%ymm8
vmovdqa		(768+32*\off+16)*2(%rdx),%ymm9
vpmullw		%ymm7,%ymm6,%ymm5
vpmulhw		%ymm7,%ymm6,%ymm6
vpmullw		%ymm9,%ymm8,%ymm7
vpmulhw		%ymm9,%ymm8,%ymm8
vpmullw		%ymm1,%ymm5,%ymm5
vpmullw		%ymm1,%ymm7,%ymm7
vpmulhw		%ymm0,%ymm5,%ymm5
vpmulhw		%ymm0,%ymm7,%ymm7
vpaddw		%ymm6,%ymm3,%ymm3
vpaddw		%ymm8,%ymm4,%ymm4
vpsubw		%ymm5,%ymm3,%ymm3
vpsubw		%ymm7,%ymm4,%ymm4
#endif

vmovdqa		_16XF_PINV*2(%rcx),%ymm14
vmovdqa		_16XF*2(%rcx),%ymm15
fqmulprecomp	14,15,3,x=5
fqmulprecomp	14,15,4,x=5

vmovdqa		%ymm3,(32*\off+ 0)*2(%rdi)
vmovdqa		%ymm4,(32*\off+16)*2(%rdi)
.endm

.text
.global cdecl(poly_basemul_montgomery)
cdecl(poly_basemul_montgomery):
/* consts */
vmovdqa		_16XP*2(%rcx),%ymm0
vmovdqa		_16XPINV*2(%rcx),%ymm1
vmovdqa		_16XF_PINV*2(%rcx),%ymm14
vmovdqa		_16XF*2(%rcx),%ymm15

pointwise64	0
pointwise64	1
pointwise64	2
pointwise64	3

ret

.global cdecl(polyvec_basemul_acc_montgomery)
cdecl(polyvec_basemul_acc_montgomery):
/* consts */
vmovdqa		_16XP*2(%rcx),%ymm0
vmovdqa		_16XPINV*2(%rcx),%ymm1

pointwise32acc	0
pointwise32acc	1
pointwise32acc	2
pointwise32acc	3
pointwise32acc	4
pointwise32acc	5
pointwise32acc	6
pointwise32acc	7

ret
