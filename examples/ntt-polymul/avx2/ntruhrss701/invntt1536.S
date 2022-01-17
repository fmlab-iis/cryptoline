#include "consts1536.h"
.include "shuffle.inc"
.include "fq.inc"

.macro update rln,rl0,rl1,rl2,rl3,rl4,rl5,rh0,rh1,rh2,rh3,rh4,rh5
vpaddw		%ymm\rh0,%ymm\rl0,%ymm\rln
vpsubw		%ymm\rh0,%ymm\rl0,%ymm\rh0
vpaddw		%ymm\rh1,%ymm\rl1,%ymm\rl0

vpsubw		%ymm\rh1,%ymm\rl1,%ymm\rh1
vpaddw		%ymm\rh2,%ymm\rl2,%ymm\rl1
vpsubw		%ymm\rh2,%ymm\rl2,%ymm\rh2

vpaddw		%ymm\rh3,%ymm\rl3,%ymm\rl2
vpsubw		%ymm\rh3,%ymm\rl3,%ymm\rh3
vpaddw		%ymm\rh4,%ymm\rl4,%ymm\rl3

vpsubw		%ymm\rh4,%ymm\rl4,%ymm\rh4
vpaddw		%ymm\rh5,%ymm\rl5,%ymm\rl4
vpsubw		%ymm\rh5,%ymm\rl5,%ymm\rh5
.endm

.macro levels0t5 off
/* level0 */
vmovdqa         (192*\off+ 96)*2(%rsi),%ymm10
vmovdqa         (192*\off+144)*2(%rsi),%ymm13
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
vmovdqa         (192*\off+112)*2(%rsi),%ymm11
vmovdqa         (192*\off+160)*2(%rsi),%ymm14
vmovdqa         (192*\off+128)*2(%rsi),%ymm12
vmovdqa         (192*\off+176)*2(%rsi),%ymm15

vpsubw		%ymm13,%ymm10,%ymm3
vpaddw		%ymm13,%ymm10,%ymm10
fqmulprecomp	1,2,3,x=13,neg=1
vpsubw		%ymm14,%ymm11,%ymm13
vpaddw		%ymm14,%ymm11,%ymm11
fqmulprecomp	1,2,13,x=14,neg=1
vpsubw		%ymm15,%ymm12,%ymm14
vpaddw		%ymm15,%ymm12,%ymm12
fqmulprecomp	1,2,14,x=15,neg=1

vmovdqa         (192*\off+  0)*2(%rsi),%ymm4
vmovdqa         (192*\off+ 48)*2(%rsi),%ymm7
vmovdqa         (192*\off+ 16)*2(%rsi),%ymm5
vmovdqa         (192*\off+ 64)*2(%rsi),%ymm8
vmovdqa         (192*\off+ 32)*2(%rsi),%ymm6
vmovdqa         (192*\off+ 80)*2(%rsi),%ymm9

vpsubw		%ymm7,%ymm4,%ymm15
vpaddw		%ymm7,%ymm4,%ymm4
vpsubw		%ymm8,%ymm5,%ymm7
vpaddw		%ymm8,%ymm5,%ymm5
vpsubw		%ymm9,%ymm6,%ymm8
vpaddw		%ymm9,%ymm6,%ymm6

/*   13, 14, 15,  7,  8,  9
  ->  3, 13, 14, 15,  7,  8  */

/* level1 */
update		9,4,5,6,15,7,8,10,11,12,3,13,14

shuffle1	9,4,8,4
shuffle1	5,6,9,6
shuffle1	15,7,5,7
shuffle1	10,11,15,11
shuffle1	12,3,10,3
shuffle1	13,14,12,14

shuffle2	8,9,13,9
shuffle2	5,15,8,15
shuffle2	10,12,5,12
shuffle2	4,6,10,6
shuffle2	7,11,4,11
shuffle2	3,14,7,14

vbroadcasti128	(_TWIST12+ 48)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 56)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,13,x=1
vbroadcasti128	(_TWIST12+ 64)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 72)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,8,x=1
vbroadcasti128	(_TWIST12+ 80)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 88)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,5,x=1
vmovdqa		(_TWIST12+144)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,9,x=1
vmovdqa		(_TWIST12+160)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,15,x=1
vmovdqa		(_TWIST12+176)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,12,x=1
vbroadcasti128	(_TWIST12+  0)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+  8)*2(%rdx),%ymm2
fqmulprecomp	1,2,10,x=1
vmovdqa		(_TWIST12+ 96)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,6,x=1
vbroadcasti128	(_TWIST12+ 16)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 24)*2(%rdx),%ymm2
fqmulprecomp	1,2,4,x=1
vmovdqa		(_TWIST12+112)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,11,x=1
vbroadcasti128	(_TWIST12+ 32)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 40)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=1
vmovdqa		(_TWIST12+128)*2(%rdx),%ymm1
vpermq		$0xBB,%ymm1,%ymm2
vpermq		$0x11,%ymm1,%ymm1
fqmulprecomp	1,2,14,x=1

/* level2 */
update		3,13,8,5,9,15,12,10,4,7,6,11,14

vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm2
vpblendd	$0x33,%ymm1,%ymm2,%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm12
vpblendd	$0x33,%ymm2,%ymm12,%ymm2
fqmulprecomp	1,2,6,x=12,neg=1
fqmulprecomp	1,2,11,x=12,neg=1
fqmulprecomp	1,2,14,x=12,neg=1

shuffle4	3,13,12,13
shuffle4	8,10,3,10
shuffle4	4,7,8,7

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,13,x=4  // extra reduction
vpxor		%ymm4,%ymm4,%ymm4
vpsubw		%ymm1,%ymm4,%ymm1
vpsubw		%ymm2,%ymm4,%ymm2

vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm4
vpblendd	$0x33,%ymm1,%ymm4,%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm4
vpblendd	$0x33,%ymm2,%ymm4,%ymm2
fqmulprecomp	1,2,10,x=4,neg=1

vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=4,neg=1

shuffle4	5,9,4,9
shuffle4	15,6,5,6
shuffle4	11,14,15,14

/* level3 */
update		11,12,3,8,4,5,15,13,10,7,9,6,14

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=15  // extra reduction
fqmulprecomp	1,2,4,x=15  // extra reduction
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=15,neg=1
fqmulprecomp	1,2,6,x=15,neg=1
fqmulprecomp	1,2,14,x=15,neg=1

/* level4 */
update		15,11,12,3,13,10,7,8,4,5,9,6,14

shuffle8	15,11,7,11
shuffle8	12,3,15,3
shuffle8	13,10,12,10
shuffle8	8,4,13,4
shuffle8	5,9,8,9
shuffle8	6,14,5,14

.if \off == 0
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=6
fqmulprecomp1	(_TWIST96+192+  0),11,x=6
fqmulprecomp	1,2,15,x=6
fqmulprecomp1	(_TWIST96+192+ 32),3,x=6
fqmulprecomp	1,2,12,x=6
fqmulprecomp1	(_TWIST96+192+ 64),10,x=6
fqmulprecomp	1,2,13,x=6
fqmulprecomp1	(_TWIST96+192+ 96),4,x=6
fqmulprecomp	1,2,8,x=6
fqmulprecomp1	(_TWIST96+192+128),9,x=6
fqmulprecomp	1,2,5,x=6
fqmulprecomp1	(_TWIST96+192+160),14,x=6
.elseif \off == 1
fqmulprecomp1	(_TWIST96+384+192),7,x=1
fqmulprecomp1	(_TWIST96+384+  0),11,x=1
fqmulprecomp1	(_TWIST96+384+224),15,x=1
fqmulprecomp1	(_TWIST96+384+ 32),3,x=1
fqmulprecomp1	(_TWIST96+384+256),12,x=1
fqmulprecomp1	(_TWIST96+384+ 64),10,x=1
fqmulprecomp1	(_TWIST96+384+288),13,x=1
fqmulprecomp1	(_TWIST96+384+ 96),4,x=1
fqmulprecomp1	(_TWIST96+384+320),8,x=1
fqmulprecomp1	(_TWIST96+384+128),9,x=1
fqmulprecomp1	(_TWIST96+384+352),5,x=1
fqmulprecomp1	(_TWIST96+384+160),14,x=1
.elseif \off == 2
fqmulprecomp1	(_TWIST96+3*384+192),7,x=1
fqmulprecomp1	(_TWIST96+3*384+  0),11,x=1
fqmulprecomp1	(_TWIST96+3*384+224),15,x=1
fqmulprecomp1	(_TWIST96+3*384+ 32),3,x=1
fqmulprecomp1	(_TWIST96+3*384+256),12,x=1
fqmulprecomp1	(_TWIST96+3*384+ 64),10,x=1
fqmulprecomp1	(_TWIST96+3*384+288),13,x=1
fqmulprecomp1	(_TWIST96+3*384+ 96),4,x=1
fqmulprecomp1	(_TWIST96+3*384+320),8,x=1
fqmulprecomp1	(_TWIST96+3*384+128),9,x=1
fqmulprecomp1	(_TWIST96+3*384+352),5,x=1
fqmulprecomp1	(_TWIST96+3*384+160),14,x=1
.elseif \off == 3
fqmulprecomp1	(_TWIST96+2*384+192),7,x=1
fqmulprecomp1	(_TWIST96+2*384+  0),11,x=1
fqmulprecomp1	(_TWIST96+2*384+224),15,x=1
fqmulprecomp1	(_TWIST96+2*384+ 32),3,x=1
fqmulprecomp1	(_TWIST96+2*384+256),12,x=1
fqmulprecomp1	(_TWIST96+2*384+ 64),10,x=1
fqmulprecomp1	(_TWIST96+2*384+288),13,x=1
fqmulprecomp1	(_TWIST96+2*384+ 96),4,x=1
fqmulprecomp1	(_TWIST96+2*384+320),8,x=1
fqmulprecomp1	(_TWIST96+2*384+128),9,x=1
fqmulprecomp1	(_TWIST96+2*384+352),5,x=1
fqmulprecomp1	(_TWIST96+2*384+160),14,x=1
.else
fqmulprecomp1	(_TWIST96+384*(11-\off)+192),7,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+  0),11,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+224),15,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+ 32),3,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+256),12,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+ 64),10,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+288),13,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+ 96),4,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+320),8,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+128),9,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+352),5,x=1
fqmulprecomp1	(_TWIST96+384*(11-\off)+160),14,x=1
.endif

/* level5 */
update		6,7,15,12,13,8,5,11,3,10,4,9,14

.if \off == 0
#
.elseif \off == 1
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
.elseif \off == 2
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
.elseif \off == 3
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
.else
vpbroadcastd	(_ZETAS_PINV+20-2*\off)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+20-2*\off)*2(%rdx),%ymm2
.endif

.if \off
fqmulprecomp	1,2,11,x=5,neg=1
fqmulprecomp	1,2,3,x=5,neg=1
fqmulprecomp	1,2,10,x=5,neg=1
fqmulprecomp	1,2,4,x=5,neg=1
fqmulprecomp	1,2,9,x=5,neg=1
fqmulprecomp	1,2,14,x=5,neg=1
.endif

vmovdqa         %ymm6,(192*\off+  0)*2(%rdi)
vmovdqa         %ymm7,(192*\off+ 16)*2(%rdi)
vmovdqa         %ymm15,(192*\off+ 32)*2(%rdi)
vmovdqa         %ymm12,(192*\off+ 48)*2(%rdi)
vmovdqa         %ymm13,(192*\off+ 64)*2(%rdi)
vmovdqa         %ymm8,(192*\off+ 80)*2(%rdi)
vmovdqa         %ymm11,(192*\off+ 96)*2(%rdi)
vmovdqa         %ymm3,(192*\off+112)*2(%rdi)
vmovdqa         %ymm10,(192*\off+128)*2(%rdi)
vmovdqa         %ymm4,(192*\off+144)*2(%rdi)
vmovdqa         %ymm9,(192*\off+160)*2(%rdi)
vmovdqa         %ymm14,(192*\off+176)*2(%rdi)
.endm

.macro levels6t8 off
vmovdqa		(  0+16*\off)*2(%rdi),%ymm4
vmovdqa		(192+16*\off)*2(%rdi),%ymm5
vmovdqa		(384+16*\off)*2(%rdi),%ymm6
vmovdqa		(576+16*\off)*2(%rdi),%ymm7
vmovdqa		(768+16*\off)*2(%rdi),%ymm8
vmovdqa		(960+16*\off)*2(%rdi),%ymm9
vmovdqa		(1152+16*\off)*2(%rdi),%ymm10
vmovdqa		(1344+16*\off)*2(%rdi),%ymm11

/* level 6 */
vpsubw		%ymm5,%ymm4,%ymm12
vpsubw		%ymm7,%ymm6,%ymm13
vpsubw		%ymm9,%ymm8,%ymm14
vpsubw		%ymm11,%ymm10,%ymm15
vpaddw		%ymm5,%ymm4,%ymm4
vpaddw		%ymm7,%ymm6,%ymm6
vpaddw		%ymm9,%ymm8,%ymm8
vpaddw		%ymm11,%ymm10,%ymm10

vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,13,x=1,neg=1
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,14,x=1,neg=1
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,15,x=1,neg=1
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,12,x=3  // extra reduction
fqmulprecomp	1,2,4,x=3  // extra reduction
.if \off < 6
fqmulprecomp	1,2,6,x=3  // extra reduction
fqmulprecomp	1,2,8,x=3  // extra reduction
fqmulprecomp	1,2,10,x=3  // extra reduction
.endif

/* level 7 */
vpsubw		%ymm6,%ymm4,%ymm5
vpsubw		%ymm13,%ymm12,%ymm7
vpsubw		%ymm10,%ymm8,%ymm9
vpsubw		%ymm15,%ymm14,%ymm11
vpaddw		%ymm6,%ymm4,%ymm4
vpaddw		%ymm13,%ymm12,%ymm6
vpaddw		%ymm10,%ymm8,%ymm8
vpaddw		%ymm15,%ymm14,%ymm10

.if \off >= 6
fqmulprecomp	1,2,8,x=12  // extra reduction
.endif
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=12,neg=1
fqmulprecomp	1,2,11,x=12,neg=1

/* level 8 */
vpsubw		%ymm8,%ymm4,%ymm12
vpsubw		%ymm10,%ymm6,%ymm13
vpsubw		%ymm9,%ymm5,%ymm14
vpsubw		%ymm11,%ymm7,%ymm15
vpaddw		%ymm8,%ymm4,%ymm4
vpaddw		%ymm10,%ymm6,%ymm6
vpaddw		%ymm9,%ymm5,%ymm8
vpaddw		%ymm11,%ymm7,%ymm10

vmovdqa		%ymm4,(  0+16*\off)*2(%rdi)
vmovdqa		%ymm6,(192+16*\off)*2(%rdi)
vmovdqa		%ymm8,(384+16*\off)*2(%rdi)
vmovdqa		%ymm10,(576+16*\off)*2(%rdi)
vmovdqa		%ymm12,(768+16*\off)*2(%rdi)
vmovdqa		%ymm13,(960+16*\off)*2(%rdi)
vmovdqa		%ymm14,(1152+16*\off)*2(%rdi)
vmovdqa		%ymm15,(1344+16*\off)*2(%rdi)
.endm

.text
.global cdecl(poly_invntt_tomont)
cdecl(poly_invntt_tomont):
vmovdqa         _16XP*2(%rdx),%ymm0

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
levels6t8	8
levels6t8	9
levels6t8	10
levels6t8	11

ret
