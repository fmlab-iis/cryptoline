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

.macro levels0t5 off
.if \off == 0
.set invoff,0
.elseif \off == 1
.set invoff,1
.elseif \off < 4
.set invoff,5-\off
.else
.set invoff,11-\off
.endif

vmovdqa		(128*\off+  0)*2(%rsi),%ymm4
vmovdqa		(128*\off+ 16)*2(%rsi),%ymm5
vmovdqa		(128*\off+ 32)*2(%rsi),%ymm6
vmovdqa		(128*\off+ 48)*2(%rsi),%ymm7
vmovdqa		(128*\off+ 64)*2(%rsi),%ymm8
vmovdqa		(128*\off+ 80)*2(%rsi),%ymm9
vmovdqa		(128*\off+ 96)*2(%rsi),%ymm10
vmovdqa		(128*\off+112)*2(%rsi),%ymm11

/* level 0 */
update		3,4,6,8,10,5,7,9,11

.ifeq \off
vbroadcasti128	(_ZETAS_INV_PINV)*2(%rdx),%ymm12
vbroadcasti128	(_ZETAS_INV)*2(%rdx),%ymm13
fqmulprecomp	12,13,5,x=10
vbroadcasti128	(_ZETAS_PINV+8)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+8)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=10,neg=1
vbroadcasti128	(_ZETAS_PINV+24)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+24)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=10,neg=1
vbroadcasti128	(_ZETAS_PINV+16)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+16)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=10,neg=1
.else
vbroadcasti128	(_ZETAS_PINV+32*invoff+24)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*invoff+24)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,5,x=10,neg=1
vbroadcasti128	(_ZETAS_PINV+32*invoff+16)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*invoff+16)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=10,neg=1
vbroadcasti128	(_ZETAS_PINV+32*invoff+8)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*invoff+8)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=10,neg=1
vbroadcasti128	(_ZETAS_PINV+32*invoff)*2(%rdx),%ymm1
vbroadcasti128	(_ZETAS+32*invoff)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=10,neg=1
.endif

pack		3,5,10,5
pack		4,7,3,7
pack		6,9,4,9
pack		8,11,6,11

/* level 1 */
update		8,10,3,4,6,5,7,9,11

.ifeq \off
vpbroadcastq	%xmm12,%ymm12
vpbroadcastq	%xmm13,%ymm13
fqmulprecomp	12,13,5,x=6
vpbroadcastq	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+4)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=6,neg=1
vpbroadcastq	(_ZETAS_PINV+12)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+12)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=6,neg=1
vpbroadcastq	(_ZETAS_PINV+8)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+8)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=6,neg=1
.else
vpbroadcastq	(_ZETAS_PINV+16*invoff+12)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*invoff+12)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,5,x=6,neg=1
vpbroadcastq	(_ZETAS_PINV+16*invoff+8)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*invoff+8)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=6,neg=1
vpbroadcastq	(_ZETAS_PINV+16*invoff+4)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*invoff+4)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=6,neg=1
vpbroadcastq	(_ZETAS_PINV+16*invoff)*2(%rdx),%ymm1
vpbroadcastq	(_ZETAS+16*invoff)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=6,neg=1
.endif

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=6  // extra reduction
fqmulprecomp	1,2,10,x=6  // extra reduction
fqmulprecomp	1,2,3,x=6  // extra reduction
fqmulprecomp	1,2,4,x=6  // extra reduction

pack		8,5,6,5
pack		10,7,8,7
pack		3,9,10,9
pack		4,11,3,11

/* level 2 */
update		4,6,8,10,3,5,7,9,11

.ifeq \off
vpbroadcastd	%xmm12,%ymm12
vpbroadcastd	%xmm13,%ymm13
fqmulprecomp	12,13,5,x=3
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=3,neg=1
vpbroadcastd	(_ZETAS_PINV+6)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+6)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=3,neg=1
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=3,neg=1
.else
vpbroadcastd	(_ZETAS_PINV+8*invoff+6)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*invoff+6)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,5,x=3,neg=1
vpbroadcastd	(_ZETAS_PINV+8*invoff+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*invoff+4)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,7,x=3,neg=1
vpbroadcastd	(_ZETAS_PINV+8*invoff+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*invoff+2)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,9,x=3,neg=1
vpbroadcastd	(_ZETAS_PINV+8*invoff)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+8*invoff)*2(%rdx),%ymm2
vpshufb		%ymm15,%ymm1,%ymm1
vpshufb		%ymm15,%ymm2,%ymm2
fqmulprecomp	1,2,11,x=3,neg=1
.endif

pack		4,5,3,5
pack		6,7,4,7
pack		8,9,6,9
pack		10,11,8,11

vmovdqa		cdecl(idxdata)+_UNPCKWIDX(%rip),%ymm1
vpermq		$0xD8,%ymm3,%ymm3
vpshufb		%ymm1,%ymm3,%ymm3
vpermq		$0xD8,%ymm5,%ymm5
vpshufb		%ymm1,%ymm5,%ymm5
vpermq		$0xD8,%ymm4,%ymm4
vpshufb		%ymm1,%ymm4,%ymm4
vpermq		$0xD8,%ymm7,%ymm7
vpshufb		%ymm1,%ymm7,%ymm7
vpermq		$0xD8,%ymm6,%ymm6
vpshufb		%ymm1,%ymm6,%ymm6
vpermq		$0xD8,%ymm9,%ymm9
vpshufb		%ymm1,%ymm9,%ymm9
vpermq		$0xD8,%ymm8,%ymm8
vpshufb		%ymm1,%ymm8,%ymm8
vpermq		$0xD8,%ymm11,%ymm11
vpshufb		%ymm1,%ymm11,%ymm11

/* level 3 */
update		10,3,4,6,8,5,7,9,11

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm12
vmovdqa		(_16XMONT)*2(%rdx),%ymm13

.ifeq \off
fqmulprecomp	12,13,5,x=8  // extra reduction
vpbroadcastw	(_ZETAS_PINV+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=8,neg=1
vpbroadcastw	(_ZETAS_PINV+3)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+3)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=8,neg=1
vpbroadcastw	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=8,neg=1
.else
vpbroadcastw	(_ZETAS_PINV+4*invoff+3)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*invoff+3)*2(%rdx),%ymm2
fqmulprecomp	1,2,5,x=8,neg=1
vpbroadcastw	(_ZETAS_PINV+4*invoff+2)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*invoff+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=8,neg=1
vpbroadcastw	(_ZETAS_PINV+4*invoff+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*invoff+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=8,neg=1
vpbroadcastw	(_ZETAS_PINV+4*invoff)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+4*invoff)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=8,neg=1
.endif

fqmulprecomp	12,13,10,x=8  // extra reduction
fqmulprecomp	12,13,3,x=8  // extra reduction
fqmulprecomp	12,13,4,x=8  // extra reduction
fqmulprecomp	12,13,6,x=8  // extra reduction

/* level 4 */
update		8,10,5,4,9,3,7,6,11

.ifeq \off
vpbroadcastw	(_ZETAS_PINV+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=9,neg=1
fqmulprecomp	1,2,11,x=9,neg=1
.else
vpbroadcastw	(_ZETAS_PINV+2*invoff+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2*invoff+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=9,neg=1
fqmulprecomp	1,2,7,x=9,neg=1
vpbroadcastw	(_ZETAS_PINV+2*invoff)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2*invoff)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=9,neg=1
fqmulprecomp	1,2,11,x=9,neg=1
.endif

/* level 5 */
update		9,8,10,3,7,5,4,6,11

.if \off
vpbroadcastw	(_ZETAS_PINV+invoff)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+invoff)*2(%rdx),%ymm2
fqmulprecomp	1,2,5,x=7,neg=1
fqmulprecomp	1,2,4,x=7,neg=1
fqmulprecomp	1,2,6,x=7,neg=1
fqmulprecomp	1,2,11,x=7,neg=1
.endif

fqmulprecomp	12,13,9,x=7  // extra reduction
fqmulprecomp	12,13,8,x=7  // extra reduction

vmovdqa		%ymm9,(128*\off+  0)*2(%rdi)
vmovdqa		%ymm8,(128*\off+ 16)*2(%rdi)
vmovdqa		%ymm10,(128*\off+ 32)*2(%rdi)
vmovdqa		%ymm3,(128*\off+ 48)*2(%rdi)
vmovdqa		%ymm5,(128*\off+ 64)*2(%rdi)
vmovdqa		%ymm4,(128*\off+ 80)*2(%rdi)
vmovdqa		%ymm6,(128*\off+ 96)*2(%rdi)
vmovdqa		%ymm11,(128*\off+112)*2(%rdi)
.endm

.macro levels6t8 off
vmovdqa		(  0+16*\off)*2(%rdi),%ymm4
vmovdqa		(128+16*\off)*2(%rdi),%ymm5
vmovdqa		(256+16*\off)*2(%rdi),%ymm6
vmovdqa		(384+16*\off)*2(%rdi),%ymm7
vmovdqa		(512+16*\off)*2(%rdi),%ymm8
vmovdqa		(640+16*\off)*2(%rdi),%ymm9
vmovdqa		(768+16*\off)*2(%rdi),%ymm10
vmovdqa		(896+16*\off)*2(%rdi),%ymm11

/* level 6 */
update		3,4,6,8,10,5,7,9,11

vpbroadcastw	(_ZETAS_PINV+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=10,neg=1
vpbroadcastw	(_ZETAS_PINV+3)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+3)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=10,neg=1
vpbroadcastw	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=10,neg=1

.if \off >= 2 && \off < 4
fqmulprecomp	12,13,5,x=10  // extra reduction
fqmulprecomp	12,13,3,x=10  // extra reduction
fqmulprecomp	12,13,4,x=10  // extra reduction
fqmulprecomp	12,13,6,x=10  // extra reduction
fqmulprecomp	12,13,8,x=10  // extra reduction
.elseif \off >= 4 && \off < 6
fqmulprecomp	12,13,5,x=10  // extra reduction
fqmulprecomp	12,13,3,x=10  // extra reduction
.elseif \off >= 6
fqmulprecomp	12,13,3,x=10  // extra reduction
.endif

/* level 7 */
update		10,3,5,6,9,4,7,8,11

vpbroadcastw	(_ZETAS_PINV+1)*2(%rdx),%ymm1
vpbroadcastw	(_ZETAS+1)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=9,neg=1
fqmulprecomp	1,2,11,x=9,neg=1

.if \off
fqmulprecomp	12,13,4,x=9  // extra reduction
fqmulprecomp	12,13,10,x=9  // extra reduction
.endif
fqmulprecomp	12,13,7,x=9  // extra reduction
fqmulprecomp	12,13,3,x=9  // extra reduction
.if \off == 0 || \off == 2 || \off == 3
fqmulprecomp	12,13,3,x=9  // extra reduction
fqmulprecomp	12,13,5,x=9  // extra reduction
fqmulprecomp	12,13,6,x=9  // extra reduction
.endif

/* level 8 */
update		9,10,3,4,7,5,6,8,11

vmovdqa		%ymm9,(  0+16*\off)*2(%rdi)
vmovdqa		%ymm10,(128+16*\off)*2(%rdi)
vmovdqa		%ymm3,(256+16*\off)*2(%rdi)
vmovdqa		%ymm4,(384+16*\off)*2(%rdi)
vmovdqa		%ymm5,(512+16*\off)*2(%rdi)
vmovdqa		%ymm6,(640+16*\off)*2(%rdi)
vmovdqa		%ymm8,(768+16*\off)*2(%rdi)
vmovdqa		%ymm11,(896+16*\off)*2(%rdi)
.endm

.text
.global cdecl(poly_invntt_tomont)
cdecl(poly_invntt_tomont):
vmovdqa         _16XP*2(%rdx),%ymm0
vmovdqa		cdecl(idxdata)+_REVWIDX(%rip),%ymm15
vmovdqa		cdecl(idxdata)+_PACKWIDX(%rip),%ymm14

levels0t5	0
levels0t5	1
levels0t5	2
levels0t5	3
levels0t5	4
levels0t5	5
levels0t5	6
levels0t5	7

levels6t8	0
levels6t8	1
levels6t8	2
levels6t8	3
levels6t8	4
levels6t8	5
levels6t8	6
levels6t8	7

ret
