#include "consts256.h"
.include "shuffle.inc"
.include "fq.inc"

.macro mul rh0,rh1,rh2,rh3,zl0=15,zl1=15,zh0=2,zh1=2
vpmullw		%ymm\zl0,%ymm\rh0,%ymm12
vpmullw		%ymm\zl0,%ymm\rh1,%ymm13

vpmullw		%ymm\zl1,%ymm\rh2,%ymm14
vpmullw		%ymm\zl1,%ymm\rh3,%ymm15

vpmulhw		%ymm\zh0,%ymm\rh0,%ymm\rh0
vpmulhw		%ymm\zh0,%ymm\rh1,%ymm\rh1

vpmulhw		%ymm\zh1,%ymm\rh2,%ymm\rh2
vpmulhw		%ymm\zh1,%ymm\rh3,%ymm\rh3
.endm

.macro reduce rh0,rh1,rh2,rh3,flag=1
vpmulhw		%ymm0,%ymm12,%ymm12
vpmulhw		%ymm0,%ymm13,%ymm13

vpmulhw		%ymm0,%ymm14,%ymm14
vpmulhw		%ymm0,%ymm15,%ymm15

.if \flag == 0
vpsubw		%ymm12,%ymm\rh0,%ymm\rh0
vpsubw		%ymm13,%ymm\rh1,%ymm\rh1
vpsubw		%ymm14,%ymm\rh2,%ymm\rh2
vpsubw		%ymm15,%ymm\rh3,%ymm\rh3
.endif
.endm

.macro update rln,rl0,rl1,rl2,rl3,rh0,rh1,rh2,rh3,flag=1
vpaddw		%ymm\rh0,%ymm\rl0,%ymm\rln
vpsubw		%ymm\rh0,%ymm\rl0,%ymm\rh0
vpaddw		%ymm\rh1,%ymm\rl1,%ymm\rl0

vpsubw		%ymm\rh1,%ymm\rl1,%ymm\rh1
vpaddw		%ymm\rh2,%ymm\rl2,%ymm\rl1
vpsubw		%ymm\rh2,%ymm\rl2,%ymm\rh2

vpaddw		%ymm\rh3,%ymm\rl3,%ymm\rl2
vpsubw		%ymm\rh3,%ymm\rl3,%ymm\rh3

.if \flag
vpsubw		%ymm12,%ymm\rln,%ymm\rln
vpaddw		%ymm12,%ymm\rh0,%ymm\rh0
vpsubw		%ymm13,%ymm\rl0,%ymm\rl0

vpaddw		%ymm13,%ymm\rh1,%ymm\rh1
vpsubw		%ymm14,%ymm\rl1,%ymm\rl1
vpaddw		%ymm14,%ymm\rh2,%ymm\rh2

vpsubw		%ymm15,%ymm\rl2,%ymm\rl2
vpaddw		%ymm15,%ymm\rh3,%ymm\rh3
.endif
.endm

.macro level0 off
/* level 0 */
vmovdqa		(64*\off+128)*2(%rsi),%ymm8
vmovdqa		(64*\off+144)*2(%rsi),%ymm9
vmovdqa		(64*\off+160)*2(%rsi),%ymm10
vmovdqa		(64*\off+176)*2(%rsi),%ymm11

mul		8,9,10,11,1,1,2,2

vmovdqa		(64*\off+  0)*2(%rsi),%ymm4
vmovdqa		(64*\off+ 16)*2(%rsi),%ymm5
vmovdqa		(64*\off+ 32)*2(%rsi),%ymm6
vmovdqa		(64*\off+ 48)*2(%rsi),%ymm7

reduce		8,9,10,11
update		3,4,5,6,7,8,9,10,11

vmovdqa		%ymm3,(64*\off+  0)*2(%rdi)
vmovdqa		%ymm4,(64*\off+ 16)*2(%rdi)
vmovdqa		%ymm5,(64*\off+ 32)*2(%rdi)
vmovdqa		%ymm6,(64*\off+ 48)*2(%rdi)
vmovdqa		%ymm8,(64*\off+128)*2(%rdi)
vmovdqa		%ymm9,(64*\off+144)*2(%rdi)
vmovdqa		%ymm10,(64*\off+160)*2(%rdi)
vmovdqa		%ymm11,(64*\off+176)*2(%rdi)
.endm

.macro levels1t7 off
/* level 1 */
vmovdqa		(_ZETAS+64*\off+32)*2(%rdx),%ymm15
vmovdqa		(128*\off+ 64)*2(%rdi),%ymm8
vmovdqa		(128*\off+ 80)*2(%rdi),%ymm9
vmovdqa		(128*\off+ 96)*2(%rdi),%ymm10
vmovdqa		(128*\off+112)*2(%rdi),%ymm11
vmovdqa		(_ZETAS+64*\off+48)*2(%rdx),%ymm3

mul		8,9,10,11,15,15,3,3

vmovdqa		(128*\off+  0)*2(%rdi),%ymm4
vmovdqa	 	(128*\off+ 16)*2(%rdi),%ymm5
vmovdqa		(128*\off+ 32)*2(%rdi),%ymm6
vmovdqa		(128*\off+ 48)*2(%rdi),%ymm7

reduce		8,9,10,11
update		3,4,5,6,7,8,9,10,11

/* level 2 */
shuffle8	5,10,7,10
shuffle8	6,11,5,11

vmovdqa		(_ZETAS+64*\off+64)*2(%rdx),%ymm15
vmovdqa		(_ZETAS+64*\off+80)*2(%rdx),%ymm6

mul		7,10,5,11,15,15,6,6

shuffle8	3,8,6,8
shuffle8	4,9,3,9

reduce		7,10,5,11
update		4,6,8,3,9,7,10,5,11

/* level 3 */
shuffle4	4,7,9,7
shuffle4	6,10,4,10
shuffle4	8,5,6,5
shuffle4	3,11,8,11

vpmullw		(_TWIST32+256*\off+  0)*2(%rdx),%ymm9,%ymm12
vpmullw		(_TWIST32+256*\off+ 32)*2(%rdx),%ymm7,%ymm13
vpmullw		(_TWIST32+256*\off+ 64)*2(%rdx),%ymm4,%ymm14
vpmullw		(_TWIST32+256*\off+ 96)*2(%rdx),%ymm10,%ymm15
vpmulhw		(_TWIST32+256*\off+ 16)*2(%rdx),%ymm9,%ymm9
vpmulhw		(_TWIST32+256*\off+ 48)*2(%rdx),%ymm7,%ymm7
vpmulhw		(_TWIST32+256*\off+ 80)*2(%rdx),%ymm4,%ymm4
vpmulhw		(_TWIST32+256*\off+112)*2(%rdx),%ymm10,%ymm10
reduce		9,7,4,10,0

vpmullw		(_TWIST32+256*\off+128)*2(%rdx),%ymm6,%ymm12
vpmullw		(_TWIST32+256*\off+160)*2(%rdx),%ymm5,%ymm13
vpmullw		(_TWIST32+256*\off+192)*2(%rdx),%ymm8,%ymm14
vpmullw		(_TWIST32+256*\off+224)*2(%rdx),%ymm11,%ymm15
vpmulhw		(_TWIST32+256*\off+144)*2(%rdx),%ymm6,%ymm6
vpmulhw		(_TWIST32+256*\off+176)*2(%rdx),%ymm5,%ymm5
vpmulhw		(_TWIST32+256*\off+208)*2(%rdx),%ymm8,%ymm8
vpmulhw		(_TWIST32+256*\off+240)*2(%rdx),%ymm11,%ymm11
reduce		6,5,8,11,0

update		3,9,7,4,10,6,5,8,11,0

/* level 4 */
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm14
vmovdqa		(_16XMONT)*2(%rdx),%ymm15
fqmulprecomp	14,15,7,x=13  // extra reduction
fqmulprecomp	14,15,4,x=13  // extra reduction

vpmullw		%ymm1,%ymm8,%ymm12
vpmullw		%ymm1,%ymm11,%ymm13
vpmulhw		%ymm2,%ymm8,%ymm8
vpmulhw		%ymm2,%ymm11,%ymm11

vpaddw		%ymm7,%ymm3,%ymm10
vpsubw		%ymm7,%ymm3,%ymm7
vpaddw		%ymm4,%ymm9,%ymm3
vpsubw		%ymm4,%ymm9,%ymm4

vpmulhw		%ymm0,%ymm12,%ymm12
vpmulhw		%ymm0,%ymm13,%ymm13

vpaddw		%ymm8,%ymm6,%ymm9
vpsubw		%ymm8,%ymm6,%ymm8
vpaddw		%ymm11,%ymm5,%ymm6
vpsubw		%ymm11,%ymm5,%ymm11
vpsubw		%ymm12,%ymm9,%ymm9
vpaddw		%ymm12,%ymm8,%ymm8
vpsubw		%ymm13,%ymm6,%ymm6
vpaddw		%ymm13,%ymm11,%ymm11

/* level 5 */
fqmulprecomp	14,15,3,x=13  // extra reduction

vpmullw		%ymm1,%ymm4,%ymm12
vpmullw		(_ZETAS+32)*2(%rdx),%ymm6,%ymm13
vpmullw		(_ZETAS+96)*2(%rdx),%ymm11,%ymm14
vpmulhw		%ymm2,%ymm4,%ymm4
vpmulhw		(_ZETAS+48)*2(%rdx),%ymm6,%ymm6
vpmulhw		(_ZETAS+112)*2(%rdx),%ymm11,%ymm11

vpaddw		%ymm3,%ymm10,%ymm5
vpsubw		%ymm3,%ymm10,%ymm3

vpmulhw		%ymm0,%ymm12,%ymm12
vpmulhw		%ymm0,%ymm13,%ymm13
vpmulhw		%ymm0,%ymm14,%ymm14

vpaddw		%ymm4,%ymm7,%ymm10
vpsubw		%ymm4,%ymm7,%ymm4
vpaddw		%ymm6,%ymm9,%ymm7
vpsubw		%ymm6,%ymm9,%ymm6
vpaddw		%ymm11,%ymm8,%ymm9
vpsubw		%ymm11,%ymm8,%ymm11
vpsubw		%ymm12,%ymm10,%ymm10
vpaddw		%ymm12,%ymm4,%ymm4
vpsubw		%ymm13,%ymm7,%ymm7
vpaddw		%ymm13,%ymm6,%ymm6
vpsubw		%ymm14,%ymm9,%ymm9
vpaddw		%ymm14,%ymm11,%ymm11

/* level6 */
fqmulprecomp1	(_16XMONT_PINV),5,x=12
vpbroadcastq	(_TWIST4+ 8)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+12)*2(%rdx),%ymm13
fqmulprecomp	12,13,3,x=12
vpbroadcastq	(_TWIST4+16)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+20)*2(%rdx),%ymm13
fqmulprecomp	12,13,10,x=12
vpbroadcastq	(_TWIST4+24)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+28)*2(%rdx),%ymm13
fqmulprecomp	12,13,4,x=12
vpbroadcastq	(_TWIST4+32)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+36)*2(%rdx),%ymm13
fqmulprecomp	12,13,7,x=12
vpbroadcastq	(_TWIST4+40)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+44)*2(%rdx),%ymm13
fqmulprecomp	12,13,6,x=12
vpbroadcastq	(_TWIST4+48)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+52)*2(%rdx),%ymm13
fqmulprecomp	12,13,9,x=12
vpbroadcastq	(_TWIST4+56)*2(%rdx),%ymm12
vpbroadcastq	(_TWIST4+60)*2(%rdx),%ymm13
fqmulprecomp	12,13,11,x=12

shuffle2	5,7,8,7
shuffle2	3,6,5,6
shuffle2	10,9,3,9
shuffle2	4,11,10,11

shuffle1	8,3,4,3
shuffle1	7,9,8,9
shuffle1	5,10,7,10
shuffle1	6,11,5,11

update		6,4,3,7,10,8,9,5,11,0

/* level7 */
vpmullw		%ymm1,%ymm9,%ymm12
vpmullw		%ymm1,%ymm11,%ymm13
vpmulhw		%ymm2,%ymm9,%ymm9
vpmulhw		%ymm2,%ymm11,%ymm11

vpaddw		%ymm4,%ymm6,%ymm10
vpsubw		%ymm4,%ymm6,%ymm4
vpaddw		%ymm7,%ymm3,%ymm6
vpsubw		%ymm7,%ymm3,%ymm7

vpmulhw		%ymm0,%ymm12,%ymm12
vpmulhw		%ymm0,%ymm13,%ymm13

vpaddw		%ymm9,%ymm8,%ymm3
vpsubw		%ymm9,%ymm8,%ymm9
vpaddw		%ymm11,%ymm5,%ymm8
vpsubw		%ymm11,%ymm5,%ymm11
vpsubw		%ymm12,%ymm3,%ymm3
vpaddw		%ymm12,%ymm9,%ymm9
vpsubw		%ymm13,%ymm8,%ymm8
vpaddw		%ymm13,%ymm11,%ymm11

vmovdqa		%ymm10,(128*\off+  0)*2(%rdi)
vmovdqa		%ymm4,(128*\off+ 16)*2(%rdi)
vmovdqa		%ymm3,(128*\off+ 32)*2(%rdi)
vmovdqa		%ymm9,(128*\off+ 48)*2(%rdi)
vmovdqa		%ymm6,(128*\off+ 64)*2(%rdi)
vmovdqa		%ymm7,(128*\off+ 80)*2(%rdi)
vmovdqa		%ymm8,(128*\off+ 96)*2(%rdi)
vmovdqa		%ymm11,(128*\off+112)*2(%rdi)
.endm

.text
.global cdecl(poly_ntt)
cdecl(poly_ntt):
vmovdqa		_16XP*2(%rdx),%ymm0
vmovdqa		(_ZETAS+0)*2(%rdx),%ymm1
vmovdqa		(_ZETAS+16)*2(%rdx),%ymm2

level0		0
level0		1

levels1t7	0
levels1t7	1

ret
