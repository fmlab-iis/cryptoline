#include "consts256.h"
.include "shuffle.inc"
.include "fq.inc"

.macro butterfly rl0,rl1,rl2,rl3,rh0,rh1,rh2,rh3,zl0=2,zl1=2,zh0=3,zh1=3
vpsubw		%ymm\rl0,%ymm\rh0,%ymm12
vpaddw		%ymm\rh0,%ymm\rl0,%ymm\rl0
vpsubw		%ymm\rl1,%ymm\rh1,%ymm13

vpmullw		%ymm\zl0,%ymm12,%ymm\rh0
vpaddw		%ymm\rh1,%ymm\rl1,%ymm\rl1
vpsubw		%ymm\rl2,%ymm\rh2,%ymm14

vpmullw		%ymm\zl0,%ymm13,%ymm\rh1
vpaddw		%ymm\rh2,%ymm\rl2,%ymm\rl2
vpsubw		%ymm\rl3,%ymm\rh3,%ymm15

vpmullw		%ymm\zl1,%ymm14,%ymm\rh2
vpaddw		%ymm\rh3,%ymm\rl3,%ymm\rl3
vpmullw		%ymm\zl1,%ymm15,%ymm\rh3

vpmulhw		%ymm\zh0,%ymm12,%ymm12
vpmulhw		%ymm\zh0,%ymm13,%ymm13

vpmulhw		%ymm\zh1,%ymm14,%ymm14
vpmulhw		%ymm\zh1,%ymm15,%ymm15

vpmulhw		%ymm0,%ymm\rh0,%ymm\rh0

vpmulhw		%ymm0,%ymm\rh1,%ymm\rh1

vpmulhw		%ymm0,%ymm\rh2,%ymm\rh2
vpmulhw		%ymm0,%ymm\rh3,%ymm\rh3

#

#

vpsubw		%ymm\rh0,%ymm12,%ymm\rh0

vpsubw		%ymm\rh1,%ymm13,%ymm\rh1

vpsubw		%ymm\rh2,%ymm14,%ymm\rh2
vpsubw		%ymm\rh3,%ymm15,%ymm\rh3
.endm

.macro intt_levels0t6 off
/* level 0 */
vmovdqa         (128*\off+ 32)*2(%rsi),%ymm6
vmovdqa         (128*\off+ 48)*2(%rsi),%ymm7
vmovdqa         (128*\off+ 96)*2(%rsi),%ymm10
vmovdqa         (128*\off+112)*2(%rsi),%ymm11
vmovdqa		(_ZETAS+ 0)*2(%rdx),%ymm1

vpsubw		%ymm6,%ymm7,%ymm12
vpaddw		%ymm7,%ymm6,%ymm6
vpmullw		%ymm1,%ymm12,%ymm7
vpsubw		%ymm10,%ymm11,%ymm13
vpaddw		%ymm11,%ymm10,%ymm10
vpmullw		%ymm1,%ymm13,%ymm11

vmovdqa         (128*\off+  0)*2(%rsi),%ymm4
vmovdqa         (128*\off+ 16)*2(%rsi),%ymm5
vmovdqa         (128*\off+ 64)*2(%rsi),%ymm8
vmovdqa         (128*\off+ 80)*2(%rsi),%ymm9
vmovdqa		(_ZETAS+16)*2(%rdx),%ymm2

vpmulhw		%ymm2,%ymm12,%ymm12
vpmulhw		%ymm2,%ymm13,%ymm13
vpmulhw		%ymm0,%ymm7,%ymm7
vpmulhw		%ymm0,%ymm11,%ymm11

vpaddw		%ymm5,%ymm4,%ymm14
vpsubw		%ymm5,%ymm4,%ymm5
vpaddw		%ymm9,%ymm8,%ymm15
vpsubw		%ymm9,%ymm8,%ymm9

vpsubw		%ymm7,%ymm12,%ymm7
vpsubw		%ymm11,%ymm13,%ymm11

/* 4 -> 14, 8 -> 15 */

/* level 1 */
vpaddw		%ymm6,%ymm14,%ymm4
vpsubw		%ymm6,%ymm14,%ymm6
vpaddw		%ymm7,%ymm5,%ymm12
vpsubw		%ymm7,%ymm5,%ymm7
vpaddw		%ymm10,%ymm15,%ymm8
vpsubw		%ymm10,%ymm15,%ymm10
vpaddw		%ymm11,%ymm9,%ymm13
vpsubw		%ymm11,%ymm9,%ymm11

shuffle1	4,12,14,15
shuffle1	6,7,5,9
shuffle1	8,13,6,12
shuffle1	10,11,7,11

shuffle2	14,5,4,8
shuffle2	6,7,5,13
shuffle2	15,9,6,10
shuffle2	12,11,7,11

fqmulprecomp1	(_16XMONT_PINV),4,x=14
vpbroadcastq	(_TWIST4+ 0)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+ 4)*2(%rdx),%ymm15
fqmulprecomp	14,15,5,x=14
vpbroadcastq	(_TWIST4+24)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+28)*2(%rdx),%ymm15
fqmulprecomp	14,15,6,x=14
vpbroadcastq	(_TWIST4+16)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+20)*2(%rdx),%ymm15
fqmulprecomp	14,15,7,x=14
vpbroadcastq	(_TWIST4+56)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+60)*2(%rdx),%ymm15
fqmulprecomp	14,15,8,x=14
vpbroadcastq	(_TWIST4+48)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+52)*2(%rdx),%ymm15
fqmulprecomp	14,15,13,x=14
vpbroadcastq	(_TWIST4+40)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+44)*2(%rdx),%ymm15
fqmulprecomp	14,15,10,x=14
vpbroadcastq	(_TWIST4+32)*2(%rdx),%ymm14
vpbroadcastq	(_TWIST4+36)*2(%rdx),%ymm15
fqmulprecomp	14,15,11,x=14

/* 9 -> 13 */

/* level 2 */
vpsubw		%ymm6,%ymm7,%ymm12
vpaddw		%ymm7,%ymm6,%ymm6

vpmullw		%ymm1,%ymm12,%ymm7
vpsubw		%ymm8,%ymm13,%ymm9
vpaddw		%ymm13,%ymm8,%ymm8

vpmullw		(_ZETAS+96)*2(%rdx),%ymm9,%ymm13
vpsubw		%ymm10,%ymm11,%ymm14
vpaddw		%ymm11,%ymm10,%ymm10

vpmullw		(_ZETAS+32)*2(%rdx),%ymm14,%ymm11

vpmulhw		%ymm2,%ymm12,%ymm12
vpmulhw		(_ZETAS+112)*2(%rdx),%ymm9,%ymm9
vpmulhw		(_ZETAS+48)*2(%rdx),%ymm14,%ymm14

vpmulhw		%ymm0,%ymm7,%ymm7
vpmulhw		%ymm0,%ymm13,%ymm13
vpmulhw		%ymm0,%ymm11,%ymm11

vpaddw		%ymm5,%ymm4,%ymm15
vpsubw		%ymm5,%ymm4,%ymm5

vpsubw		%ymm7,%ymm12,%ymm7
vpsubw		%ymm13,%ymm9,%ymm9
vpsubw		%ymm11,%ymm14,%ymm11

/* 4 -> 15 */

/* level 3 */
vpsubw		%ymm8,%ymm10,%ymm12
vpaddw		%ymm10,%ymm8,%ymm8

vpmullw		%ymm1,%ymm12,%ymm10
vpsubw		%ymm9,%ymm11,%ymm13
vpaddw		%ymm11,%ymm9,%ymm9

vpmullw		%ymm1,%ymm13,%ymm11
vpmulhw		%ymm2,%ymm12,%ymm12
vpmulhw		%ymm2,%ymm13,%ymm13
vpmulhw		%ymm0,%ymm10,%ymm10
vpmulhw		%ymm0,%ymm11,%ymm11

vpaddw		%ymm6,%ymm15,%ymm4
vpsubw		%ymm6,%ymm15,%ymm6
vpaddw		%ymm7,%ymm5,%ymm15
vpsubw		%ymm7,%ymm5,%ymm7

vpsubw		%ymm10,%ymm12,%ymm10
vpsubw		%ymm11,%ymm13,%ymm11

/* 5 -> 15 */

/* level 4 */
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm13
vmovdqa		(_16XMONT)*2(%rdx),%ymm14
fqmulprecomp	13,14,4,x=12  // extra reduction

vpaddw		%ymm8,%ymm4,%ymm12
vpsubw		%ymm8,%ymm4,%ymm8
vpaddw		%ymm9,%ymm15,%ymm5
vpsubw		%ymm9,%ymm15,%ymm9
vpaddw		%ymm10,%ymm6,%ymm13
vpsubw		%ymm10,%ymm6,%ymm10
vpaddw		%ymm11,%ymm7,%ymm14
vpsubw		%ymm11,%ymm7,%ymm11

vpermq		$0x1B,(_TWIST32+256*(1-\off)+  0)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 16)*2(%rdx),%ymm15
fqmulprecomp	7,15,12,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 32)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 48)*2(%rdx),%ymm15
fqmulprecomp	7,15,5,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 64)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 80)*2(%rdx),%ymm15
fqmulprecomp	7,15,13,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+ 96)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+112)*2(%rdx),%ymm15
fqmulprecomp	7,15,14,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+128)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+144)*2(%rdx),%ymm15
fqmulprecomp	7,15,8,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+160)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+176)*2(%rdx),%ymm15
fqmulprecomp	7,15,9,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+192)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+208)*2(%rdx),%ymm15
fqmulprecomp	7,15,10,x=7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+224)*2(%rdx),%ymm7
vpermq		$0x1B,(_TWIST32+256*(1-\off)+240)*2(%rdx),%ymm15
fqmulprecomp	7,15,11,x=7

shuffle4	12,5,3,4
shuffle4	13,14,5,6
shuffle4	8,9,7,8
shuffle4	10,11,9,10

/* level 5 */
vpermq		$0x4E,(_ZETAS+(1-\off)*64+64)*2(%rdx),%ymm2
vpermq		$0x4E,(_ZETAS+(1-\off)*64+80)*2(%rdx),%ymm11

butterfly	3,5,7,9,4,6,8,10,2,2,11,11

shuffle8	3,5,11,5
shuffle8	7,9,3,9
shuffle8	4,6,7,6
shuffle8	8,10,4,10

/* level 6 */
vmovdqa		(_ZETAS+(1-\off)*64+32)*2(%rdx),%ymm2
vmovdqa		(_ZETAS+(1-\off)*64+48)*2(%rdx),%ymm8

butterfly	11,3,7,4,5,9,6,10,2,2,8,8

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm14
vmovdqa		(_16XMONT)*2(%rdx),%ymm15
fqmulprecomp	14,15,11,x=13  // extra reduction
fqmulprecomp	14,15,3,x=13  // extra reduction

vmovdqa         %ymm11,(128*\off+  0)*2(%rdi)
vmovdqa         %ymm3,(128*\off+ 16)*2(%rdi)
vmovdqa         %ymm7,(128*\off+ 32)*2(%rdi)
vmovdqa         %ymm4,(128*\off+ 48)*2(%rdi)
vmovdqa         %ymm5,(128*\off+ 64)*2(%rdi)
vmovdqa         %ymm9,(128*\off+ 80)*2(%rdi)
vmovdqa         %ymm6,(128*\off+ 96)*2(%rdi)
vmovdqa         %ymm10,(128*\off+112)*2(%rdi)
.endm

.macro intt_level7 off
/* level 7 */
vmovdqa         (64*\off+  0)*2(%rdi),%ymm4
vmovdqa         (64*\off+128)*2(%rdi),%ymm8
vmovdqa         (64*\off+ 16)*2(%rdi),%ymm5
vmovdqa         (64*\off+144)*2(%rdi),%ymm9
vmovdqa		(_ZETAS+ 0)*2(%rdx),%ymm1

vmovdqa         (64*\off+ 32)*2(%rdi),%ymm6
vmovdqa         (64*\off+160)*2(%rdi),%ymm10
vmovdqa         (64*\off+ 48)*2(%rdi),%ymm7
vmovdqa         (64*\off+176)*2(%rdi),%ymm11
vmovdqa		(_ZETAS+16)*2(%rdx),%ymm2

butterfly	4,5,6,7,8,9,10,11,1,1,2,2

vmovdqa		%ymm4,(64*\off+  0)*2(%rdi)
vmovdqa		%ymm5,(64*\off+ 16)*2(%rdi)
vmovdqa		%ymm6,(64*\off+ 32)*2(%rdi)
vmovdqa		%ymm7,(64*\off+ 48)*2(%rdi)
vmovdqa		%ymm8,(64*\off+128)*2(%rdi)
vmovdqa		%ymm9,(64*\off+144)*2(%rdi)
vmovdqa		%ymm10,(64*\off+160)*2(%rdi)
vmovdqa		%ymm11,(64*\off+176)*2(%rdi)
.endm

.text
.global cdecl(poly_invntt_tomont)
cdecl(poly_invntt_tomont):
vmovdqa         _16XP*2(%rdx),%ymm0

intt_levels0t6	0
intt_levels0t6	1

intt_level7	0
intt_level7	1
ret
