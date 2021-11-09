#include "consts1024.h"
.include "shuffle.inc"
.include "fq.inc"

.macro update rln,rl0,rl1,rl2,rl3,rh0,rh1,rh2,rh3
vpaddw		%ymm\rh0,%ymm\rl0,%ymm\rln
vpsubw		%ymm\rh0,%ymm\rl0,%ymm\rh0

vpaddw		%ymm\rh1,%ymm\rl1,%ymm\rl0
vpsubw		%ymm\rh1,%ymm\rl1,%ymm\rh1

vpaddw		%ymm\rh2,%ymm\rl2,%ymm\rl1
vpsubw		%ymm\rh2,%ymm\rl2,%ymm\rh2

vpaddw		%ymm\rh3,%ymm\rl3,%ymm\rl2
vpsubw		%ymm\rh3,%ymm\rl3,%ymm\rh3
.endm

.macro levels0t2 off
/* level 1 */
vpbroadcastw	(_ZETAS_PINV+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+1)*2(%rdx),%ymm2
vmovdqa		(256+16*\off)*2(%rsi),%ymm6
vmovdqa		(384+16*\off)*2(%rsi),%ymm7

fqmulprecomp2	1,2,6,10,x=3
fqmulprecomp2	1,2,7,11,x=3

vmovdqa		(  0+16*\off)*2(%rsi),%ymm4
vmovdqa		(128+16*\off)*2(%rsi),%ymm5

vpaddw		%ymm10,%ymm4,%ymm8
vpsubw		%ymm10,%ymm4,%ymm10
vpaddw		%ymm11,%ymm5,%ymm9
vpsubw		%ymm11,%ymm5,%ymm11
vpaddw		%ymm6,%ymm4,%ymm3
vpsubw		%ymm6,%ymm4,%ymm6
vpaddw		%ymm7,%ymm5,%ymm4
vpsubw		%ymm7,%ymm5,%ymm7

/* level 2 */
fqmulprecomp	1,2,7,x=5
vpbroadcastw	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=5
vpbroadcastw	(_ZETAS_PINV+3)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+3)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=5

update		5,3,6,8,10,4,7,9,11

vmovdqa		%ymm5,(  0+16*\off)*2(%rdi)
vmovdqa		%ymm4,(128+16*\off)*2(%rdi)
vmovdqa		%ymm3,(256+16*\off)*2(%rdi)
vmovdqa		%ymm7,(384+16*\off)*2(%rdi)
vmovdqa		%ymm6,(512+16*\off)*2(%rdi)
vmovdqa		%ymm9,(640+16*\off)*2(%rdi)
vmovdqa		%ymm8,(768+16*\off)*2(%rdi)
vmovdqa		%ymm11,(896+16*\off)*2(%rdi)
.endm

.macro levels3t8 off
vmovdqa		(128*\off+  0)*2(%rdi),%ymm4
vmovdqa		(128*\off+ 16)*2(%rdi),%ymm5
vmovdqa		(128*\off+ 32)*2(%rdi),%ymm6
vmovdqa		(128*\off+ 48)*2(%rdi),%ymm7
vmovdqa		(128*\off+ 64)*2(%rdi),%ymm8
vmovdqa		(128*\off+ 80)*2(%rdi),%ymm9
vmovdqa		(128*\off+ 96)*2(%rdi),%ymm10
vmovdqa		(128*\off+112)*2(%rdi),%ymm11

/* level 3 */
.if \off
vpbroadcastw	(_ZETAS_PINV+\off)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=3
fqmulprecomp	1,2,9,x=3
fqmulprecomp	1,2,10,x=3
fqmulprecomp	1,2,11,x=3
.endif

update		3,4,5,6,7,8,9,10,11

/* level 4 */
.if \off
vpbroadcastw	(_ZETAS_PINV+2*\off)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2*\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,5,x=7
fqmulprecomp	1,2,6,x=7
.endif
vpbroadcastw	(_ZETAS_PINV+2*\off+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2*\off+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,10,x=7
fqmulprecomp	1,2,11,x=7

update		7,3,4,8,9,5,6,10,11

/* level 5 */
.if \off == 0
fqmulprecomp	14,15,3,x=9  // extra reduction
.else
vpbroadcastw	(_ZETAS_PINV+4*\off)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=9
.endif
vpbroadcastw	(_ZETAS_PINV+4*\off+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*\off+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=9
vpbroadcastw	(_ZETAS_PINV+4*\off+2)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*\off+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=9
vpbroadcastw	(_ZETAS_PINV+4*\off+3)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*\off+3)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=9
#if 1
.if \off == 0
fqmulprecomp	14,15,7,x=9 // extra reduction
fqmulprecomp	14,15,5,x=9 // extra reduction
.elseif \off >= 4
fqmulprecomp	14,15,7,x=9 // extra reduction
fqmulprecomp	14,15,5,x=9 // extra reduction
fqmulprecomp	14,15,4,x=9 // extra reduction
fqmulprecomp	14,15,10,x=9 // extra reduction
.endif
#else
fqmulprecomp	14,15,7,x=9 // extra reduction
fqmulprecomp	14,15,5,x=9 // extra reduction
fqmulprecomp	14,15,4,x=9 // extra reduction
fqmulprecomp	14,15,10,x=9 // extra reduction
#endif

update		9,7,5,4,10,3,6,8,11

/* level 6 */
vmovdqa		cdecl(idxdata)+_PACKWIDX(%rip),%ymm1
vpshufb		%ymm1,%ymm9,%ymm9
vpermq		$0xD8,%ymm9,%ymm9
vpshufb		%ymm1,%ymm3,%ymm3
vpermq		$0xD8,%ymm3,%ymm3
vpshufb		%ymm1,%ymm7,%ymm7
vpermq		$0xD8,%ymm7,%ymm7
vpshufb		%ymm1,%ymm6,%ymm6
vpermq		$0xD8,%ymm6,%ymm6
vpshufb		%ymm1,%ymm5,%ymm5
vpermq		$0xD8,%ymm5,%ymm5
vpshufb		%ymm1,%ymm8,%ymm8
vpermq		$0xD8,%ymm8,%ymm8
vpshufb		%ymm1,%ymm4,%ymm4
vpermq		$0xD8,%ymm4,%ymm4
vpshufb		%ymm1,%ymm11,%ymm11
vpermq		$0xD8,%ymm11,%ymm11

unpack		9,3,10,3
unpack		7,6,9,6
unpack		5,8,7,8
unpack		4,11,5,11

vpbroadcastd	(_ZETAS_PINV+8*\off)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=4
vpbroadcastd	(_ZETAS_PINV+8*\off+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*\off+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=4
vpbroadcastd	(_ZETAS_PINV+8*\off+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*\off+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=4
vpbroadcastd	(_ZETAS_PINV+8*\off+6)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*\off+6)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=4
#if 1
.if \off == 0
fqmulprecomp	14,15,7,x=4 // extra reduction
fqmulprecomp	14,15,5,x=4 // extra reduction
.elseif \off < 4
fqmulprecomp	14,15,10,x=4 // extra reduction
fqmulprecomp	14,15,9,x=4 // extra reduction
fqmulprecomp	14,15,7,x=4 // extra reduction
fqmulprecomp	14,15,5,x=4 // extra reduction
.endif
#endif

update		4,10,9,7,5,3,6,8,11

/* level 7 */
unpack		4,3,5,3
unpack		10,6,4,6
unpack		9,8,10,8
unpack		7,11,9,11

vpbroadcastq	(_ZETAS_PINV+16*\off)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=7
vpbroadcastq	(_ZETAS_PINV+16*\off+4)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*\off+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=7
vpbroadcastq	(_ZETAS_PINV+16*\off+8)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*\off+8)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=7
vpbroadcastq	(_ZETAS_PINV+16*\off+12)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*\off+12)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=7

update		7,5,4,10,9,3,6,8,11

/* level 8 */
unpack		7,3,9,3
unpack		5,6,7,6
unpack		4,8,5,8
unpack		10,11,4,11

vbroadcasti128	(_ZETAS_PINV+32*\off)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*\off)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=10
vbroadcasti128	(_ZETAS_PINV+32*\off+8)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*\off+8)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=10
vbroadcasti128	(_ZETAS_PINV+32*\off+16)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*\off+16)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=10
vbroadcasti128	(_ZETAS_PINV+32*\off+24)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*\off+24)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=10

update		10,9,7,5,4,3,6,8,11

vmovdqa		%ymm10,(128*\off+  0)*2(%rdi)
vmovdqa		%ymm3,(128*\off+ 16)*2(%rdi)
vmovdqa		%ymm9,(128*\off+ 32)*2(%rdi)
vmovdqa		%ymm6,(128*\off+ 48)*2(%rdi)
vmovdqa		%ymm7,(128*\off+ 64)*2(%rdi)
vmovdqa		%ymm8,(128*\off+ 80)*2(%rdi)
vmovdqa		%ymm5,(128*\off+ 96)*2(%rdi)
vmovdqa		%ymm11,(128*\off+112)*2(%rdi)
.endm

.global cdecl(poly_ntt)
cdecl(poly_ntt):
vmovdqa		_16XP*2(%rdx),%ymm0
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm14
vmovdqa		(_16XMONT)*2(%rdx),%ymm15

levels0t2	0
levels0t2	1
levels0t2	2
levels0t2	3
levels0t2	4
levels0t2	5
levels0t2	6
levels0t2	7

levels3t8	0
levels3t8	1
levels3t8	2
levels3t8	3
levels3t8	4
levels3t8	5
levels3t8	6
levels3t8	7

ret
