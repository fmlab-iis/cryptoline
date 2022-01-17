#include "consts1728.h"
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
/* level 0 */
vmovdqa         (192*\off+  0)*2(%rsi),%ymm4
vmovdqa         (192*\off+ 48)*2(%rsi),%ymm7
vmovdqa         (192*\off+ 16)*2(%rsi),%ymm5
vmovdqa         (192*\off+ 64)*2(%rsi),%ymm8
vmovdqa         (192*\off+ 32)*2(%rsi),%ymm6
vmovdqa         (192*\off+ 80)*2(%rsi),%ymm9
vmovdqa         (192*\off+ 96)*2(%rsi),%ymm10
vmovdqa         (192*\off+144)*2(%rsi),%ymm13
vmovdqa         (192*\off+112)*2(%rsi),%ymm11
vmovdqa         (192*\off+160)*2(%rsi),%ymm14
vmovdqa         (192*\off+128)*2(%rsi),%ymm12
vmovdqa         (192*\off+176)*2(%rsi),%ymm15

update		3,4,5,6,10,11,12,7,8,9,13,14,15

vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm2
vpblendw	$0x55,%ymm1,%ymm2,%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm12
vpblendw	$0x55,%ymm2,%ymm12,%ymm2
fqmulprecomp	1,2,13,x=12,neg=1
fqmulprecomp	1,2,14,x=12,neg=1
fqmulprecomp	1,2,15,x=12,neg=1

shuffle1	3,4,12,4
shuffle1	5,7,3,7
shuffle1	8,9,5,9

vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=8,neg=1
vpxor		%ymm8,%ymm8,%ymm8
vpsubw		%ymm1,%ymm8,%ymm1
vpsubw		%ymm2,%ymm8,%ymm2
vpblendw	$0x55,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendw	$0x55,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,7,x=8

shuffle1	6,10,8,10
shuffle1	11,13,6,13
shuffle1	14,15,11,15

/* level 1 */
update		14,12,3,5,4,7,9,8,6,11,10,13,15

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,5,x=9  // extra reduction
fqmulprecomp	1,2,4,x=9  // extra reduction
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,10,x=9,neg=1
fqmulprecomp	1,2,13,x=9,neg=1
fqmulprecomp	1,2,15,x=9,neg=1

/* level 2 */
update		9,14,12,3,8,6,11,5,4,7,10,13,15

fqmulprecomp1	(_TWIST24INV+  0),9,x=11
fqmulprecomp1	(_TWIST24INV+ 32),14,x=11
fqmulprecomp1	(_TWIST24INV+ 64),12,x=11
fqmulprecomp1	(_TWIST24INV+ 96),3,x=11
fqmulprecomp1	(_TWIST24INV+128),8,x=11
fqmulprecomp1	(_TWIST24INV+160),6,x=11
fqmulprecomp1	(_TWIST24INV+192),5,x=11
fqmulprecomp1	(_TWIST24INV+224),4,x=11
fqmulprecomp1	(_TWIST24INV+256),7,x=11
fqmulprecomp1	(_TWIST24INV+288),10,x=11
fqmulprecomp1	(_TWIST24INV+320),13,x=11
fqmulprecomp1	(_TWIST24INV+352),15,x=11

shuffle2	9,14,11,14
shuffle2	12,3,9,3
shuffle2	8,6,12,6
shuffle2	5,4,8,4
shuffle2	7,10,5,10
shuffle2	13,15,7,15

/* level 3 */
update		13,11,9,12,8,5,7,14,3,6,4,10,15

shuffle4	13,11,7,11
shuffle4	9,12,13,12
shuffle4	8,5,9,5
shuffle4	14,3,8,3
shuffle4	6,4,14,4
shuffle4	10,15,6,15

vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm2
vpblendd	$0x0F,%ymm1,%ymm2,%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm10
vpblendd	$0x0F,%ymm2,%ymm10,%ymm2
fqmulprecomp	1,2,3,x=10,neg=1
fqmulprecomp	1,2,4,x=10,neg=1
fqmulprecomp	1,2,15,x=10,neg=1

shuffle8	7,13,10,13
shuffle8	9,8,7,8
shuffle8	14,6,9,6

vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=14,neg=1
vpxor		%ymm14,%ymm14,%ymm14
vpsubw		%ymm1,%ymm14,%ymm1
vpsubw		%ymm2,%ymm14,%ymm2
vpblendd	$0x0F,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x0F,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,8,x=14

shuffle8	11,12,14,12
shuffle8	5,3,11,3
shuffle8	4,15,5,15

/* level 4 */
update		4,10,7,9,13,8,6,14,11,5,12,3,15

vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=6  // extra reduction
fqmulprecomp	1,2,13,x=6  // extra reduction
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,12,x=6,neg=1
fqmulprecomp	1,2,3,x=6,neg=1
fqmulprecomp	1,2,15,x=6,neg=1

/* level 5 */
update		6,4,10,7,14,11,5,9,13,8,12,3,15

vmovdqa         %ymm6,(192*\off+  0)*2(%rdi)
vmovdqa         %ymm4,(192*\off+ 16)*2(%rdi)
vmovdqa         %ymm10,(192*\off+ 32)*2(%rdi)
vmovdqa         %ymm7,(192*\off+ 48)*2(%rdi)
vmovdqa         %ymm14,(192*\off+ 64)*2(%rdi)
vmovdqa         %ymm11,(192*\off+ 80)*2(%rdi)
vmovdqa         %ymm9,(192*\off+ 96)*2(%rdi)
vmovdqa         %ymm13,(192*\off+112)*2(%rdi)
vmovdqa         %ymm8,(192*\off+128)*2(%rdi)
vmovdqa         %ymm12,(192*\off+144)*2(%rdi)
vmovdqa         %ymm3,(192*\off+160)*2(%rdi)
vmovdqa         %ymm15,(192*\off+176)*2(%rdi)
.endm

.macro levels6t7 off
/* level 6 */
vmovdqa		(192+16*\off)*2(%rdi),%ymm8
vmovdqa		(384+16*\off)*2(%rdi),%ymm9
vmovdqa		(  0+16*\off)*2(%rdi),%ymm7

fqmulprecomp1	(_TWIST192+288*\off+ 64),8,x=3
fqmulprecomp1	(_TWIST192+288*\off+ 32),9,x=3
fqmulprecomp1	(_TWIST192+288*\off+  0),7,x=3

vpbroadcastd	(_ZETAS3_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS3)*2(%rdx),%ymm2
fqmulprecomp2	1,2,8,10,x=3
fqmulprecomp2	1,2,9,11,x=3

vpaddw		%ymm8,%ymm7,%ymm4
vpsubw		%ymm8,%ymm7,%ymm5
vpsubw		%ymm9,%ymm7,%ymm6
vpaddw		%ymm9,%ymm4,%ymm4

vpsubw		%ymm10,%ymm5,%ymm5
vpaddw		%ymm10,%ymm6,%ymm6
vpaddw		%ymm11,%ymm5,%ymm5
vpsubw		%ymm11,%ymm6,%ymm6

vmovdqa		(768+16*\off)*2(%rdi),%ymm11
vmovdqa		(960+16*\off)*2(%rdi),%ymm12
vmovdqa		(576+16*\off)*2(%rdi),%ymm10

fqmulprecomp1	(_TWIST192+288*\off+224),11,x=3
fqmulprecomp1	(_TWIST192+288*\off+192),12,x=3
fqmulprecomp1	(_TWIST192+288*\off+256),10,x=3

fqmulprecomp2	1,2,11,13,x=3
fqmulprecomp2	1,2,12,14,x=3

vpaddw		%ymm11,%ymm10,%ymm7
vpsubw		%ymm11,%ymm10,%ymm8
vpsubw		%ymm12,%ymm10,%ymm9
vpaddw		%ymm12,%ymm7,%ymm7

vpsubw		%ymm13,%ymm8,%ymm8
vpaddw		%ymm13,%ymm9,%ymm9
vpaddw		%ymm14,%ymm8,%ymm8
vpsubw		%ymm14,%ymm9,%ymm9

vpbroadcastd	(_ZETAS3_INV_PINV+2)*2(%rdx),%ymm10
vpbroadcastd	(_ZETAS3_INV+2)*2(%rdx),%ymm11
fqmulprecomp	10,11,8,x=3
vpbroadcastd	(_ZETAS3_INV_PINV+4)*2(%rdx),%ymm10
vpbroadcastd	(_ZETAS3_INV+4)*2(%rdx),%ymm11
fqmulprecomp	10,11,9,x=3

vmovdqa		(1344+16*\off)*2(%rdi),%ymm14
vmovdqa		(1536+16*\off)*2(%rdi),%ymm15
vmovdqa		(1152+16*\off)*2(%rdi),%ymm13

fqmulprecomp1	(_TWIST192+288*\off+128),14,x=3
fqmulprecomp1	(_TWIST192+288*\off+ 96),15,x=3
fqmulprecomp1	(_TWIST192+288*\off+160),13,x=3

fqmulprecomp2	1,2,14,3,x=10

vpaddw		%ymm14,%ymm13,%ymm10
vpsubw		%ymm14,%ymm13,%ymm11
vpsubw		%ymm15,%ymm13,%ymm12
vpaddw		%ymm15,%ymm10,%ymm10

fqmulprecomp	1,2,15,x=14

vpsubw		%ymm3,%ymm11,%ymm11
vpaddw		%ymm3,%ymm12,%ymm12
vpaddw		%ymm15,%ymm11,%ymm11
vpsubw		%ymm15,%ymm12,%ymm12

vpbroadcastd	(_ZETAS3_INV_PINV+4)*2(%rdx),%ymm13
vpbroadcastd	(_ZETAS3_INV+4)*2(%rdx),%ymm14
fqmulprecomp	13,14,11,x=3
vpbroadcastd	(_ZETAS3_INV_PINV+6)*2(%rdx),%ymm13
vpbroadcastd	(_ZETAS3_INV+6)*2(%rdx),%ymm14
fqmulprecomp	13,14,12,x=3

/* level 7 */
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm13
vmovdqa		(_16XMONT)*2(%rdx),%ymm14
fqmulprecomp	13,14,4,x=3  // extra reduction
fqmulprecomp	13,14,7,x=3  // extra reduction
fqmulprecomp	13,14,10,x=3  // extra reduction
fqmulprecomp	13,14,5,x=3  // extra reduction
fqmulprecomp	13,14,6,x=3  // extra reduction

vpaddw		%ymm7,%ymm4,%ymm13
vpsubw		%ymm7,%ymm4,%ymm14
fqmulprecomp	1,2,7,x=3

vpsubw		%ymm10,%ymm4,%ymm15
vpaddw		%ymm10,%ymm13,%ymm13
fqmulprecomp	1,2,10,x=3

vpsubw		%ymm7,%ymm14,%ymm14
vpaddw		%ymm7,%ymm15,%ymm15
vpaddw		%ymm10,%ymm14,%ymm14
vpsubw		%ymm10,%ymm15,%ymm15

vmovdqa		%ymm13,(   0+16*\off)*2(%rdi)
vmovdqa		%ymm14,( 576+16*\off)*2(%rdi)
vmovdqa		%ymm15,(1152+16*\off)*2(%rdi)

vpaddw		%ymm8,%ymm5,%ymm13
vpsubw		%ymm8,%ymm5,%ymm14
fqmulprecomp	1,2,8,x=3

vpsubw		%ymm11,%ymm5,%ymm15
vpaddw		%ymm11,%ymm13,%ymm13
fqmulprecomp	1,2,11,x=3

vpsubw		%ymm8,%ymm14,%ymm14
vpaddw		%ymm8,%ymm15,%ymm15
vpaddw		%ymm11,%ymm14,%ymm14
vpsubw		%ymm11,%ymm15,%ymm15

vmovdqa		%ymm13,( 192+16*\off)*2(%rdi)
vmovdqa		%ymm14,( 768+16*\off)*2(%rdi)
vmovdqa		%ymm15,(1344+16*\off)*2(%rdi)

vpaddw		%ymm9,%ymm6,%ymm13
vpsubw		%ymm9,%ymm6,%ymm14
fqmulprecomp	1,2,9,x=3

vpsubw		%ymm12,%ymm6,%ymm15
vpaddw		%ymm12,%ymm13,%ymm13
fqmulprecomp	1,2,12,x=3

vpsubw		%ymm9,%ymm14,%ymm14
vpaddw		%ymm9,%ymm15,%ymm15
vpaddw		%ymm12,%ymm14,%ymm14
vpsubw		%ymm12,%ymm15,%ymm15

vmovdqa		%ymm13,( 384+16*\off)*2(%rdi)
vmovdqa		%ymm14,( 960+16*\off)*2(%rdi)
vmovdqa		%ymm15,(1536+16*\off)*2(%rdi)
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
levels0t5	8

levels6t7	0
levels6t7	1
levels6t7	2
levels6t7	3
levels6t7	4
levels6t7	5
levels6t7	6
levels6t7	7
levels6t7	8
levels6t7	9
levels6t7	10
levels6t7	11

ret
