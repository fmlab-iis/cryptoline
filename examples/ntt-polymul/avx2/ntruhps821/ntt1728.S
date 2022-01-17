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

.macro levels0t1 off
/* level 0 */
vpbroadcastd	(_ZETAS3_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS3)*2(%rdx),%ymm2
vmovdqa		(576+16*\off)*2(%rsi),%ymm7
vmovdqa		(768+16*\off)*2(%rsi),%ymm8

fqmulprecomp2	1,2,7,14,x=3
fqmulprecomp2	1,2,8,15,x=3

vmovdqa		(  0+16*\off)*2(%rsi),%ymm12
vmovdqa		(192+16*\off)*2(%rsi),%ymm13
vmovdqa		(384+16*\off)*2(%rsi),%ymm6

vpaddw		%ymm7,%ymm12,%ymm4
vpaddw		%ymm8,%ymm13,%ymm5
vpsubw		%ymm7,%ymm12,%ymm10
vpsubw		%ymm8,%ymm13,%ymm11

vpaddw		%ymm14,%ymm12,%ymm7
vpsubw		%ymm14,%ymm10,%ymm10
vpaddw		%ymm15,%ymm13,%ymm8
vpsubw		%ymm15,%ymm11,%ymm11

vmovdqa		%ymm6,%ymm9
vmovdqa		%ymm6,%ymm12

/* level 1 */
vpaddw		%ymm5,%ymm4,%ymm13
vpsubw		%ymm5,%ymm4,%ymm15
fqmulprecomp	1,2,5,x=3

vpaddw		%ymm6,%ymm13,%ymm13
vpsubw		%ymm6,%ymm4,%ymm14
fqmulprecomp	1,2,6,x=3

vpaddw		%ymm5,%ymm14,%ymm14
vpsubw		%ymm5,%ymm15,%ymm15
vpsubw		%ymm6,%ymm14,%ymm14
vpaddw		%ymm6,%ymm15,%ymm15

fqmulprecomp1	(_TWIST192+288*\off+ 0),13,x=3
fqmulprecomp1	(_TWIST192+288*\off+32),14,x=3
fqmulprecomp1	(_TWIST192+288*\off+64),15,x=3

vmovdqa		%ymm13,(  0+16*\off)*2(%rdi)
vmovdqa		%ymm14,(192+16*\off)*2(%rdi)
vmovdqa		%ymm15,(384+16*\off)*2(%rdi)

vpbroadcastd	(_ZETAS3_PINV+2)*2(%rdx),%ymm3
vpbroadcastd	(_ZETAS3+2)*2(%rdx),%ymm4
fqmulprecomp	3,4,8,x=15
vpbroadcastd	(_ZETAS3_PINV+4)*2(%rdx),%ymm5
vpbroadcastd	(_ZETAS3+4)*2(%rdx),%ymm6
fqmulprecomp	5,6,9,x=15

vpaddw		%ymm8,%ymm7,%ymm13
vpsubw		%ymm8,%ymm7,%ymm15
fqmulprecomp	1,2,8,x=14

vpaddw		%ymm9,%ymm13,%ymm13
vpsubw		%ymm9,%ymm7,%ymm14
fqmulprecomp	1,2,9,x=7

vpaddw		%ymm8,%ymm14,%ymm14
vpsubw		%ymm8,%ymm15,%ymm15
vpsubw		%ymm9,%ymm14,%ymm14
vpaddw		%ymm9,%ymm15,%ymm15

fqmulprecomp1	(_TWIST192+288*\off+ 96),13,x=7
fqmulprecomp1	(_TWIST192+288*\off+128),14,x=7
fqmulprecomp1	(_TWIST192+288*\off+160),15,x=7

vmovdqa		%ymm13,(576+16*\off)*2(%rdi)
vmovdqa		%ymm14,(768+16*\off)*2(%rdi)
vmovdqa		%ymm15,(960+16*\off)*2(%rdi)

fqmulprecomp	5,6,11,x=15
#vpbroadcastd	(_ZETAS3_PINV+6)*2(%rdx),%ymm3
#vpbroadcastd	(_ZETAS3+6)*2(%rdx),%ymm4
fqmulprecomp	3,4,12,x=15

vpaddw		%ymm11,%ymm10,%ymm13
vpsubw		%ymm11,%ymm10,%ymm15
fqmulprecomp	1,2,11,x=7

vpaddw		%ymm12,%ymm10,%ymm14
vpsubw		%ymm12,%ymm15,%ymm15
fqmulprecomp	1,2,12,x=7

vpaddw		%ymm11,%ymm14,%ymm14
vpsubw		%ymm11,%ymm15,%ymm15
vpaddw		%ymm12,%ymm13,%ymm13
vpsubw		%ymm12,%ymm15,%ymm15

fqmulprecomp1	(_TWIST192+288*\off+192),13,x=3
fqmulprecomp1	(_TWIST192+288*\off+224),14,x=3
fqmulprecomp1	(_TWIST192+288*\off+256),15,x=3

vmovdqa		%ymm13,(1152+16*\off)*2(%rdi)
vmovdqa		%ymm14,(1344+16*\off)*2(%rdi)
vmovdqa		%ymm15,(1536+16*\off)*2(%rdi)
.endm

.macro levels2t7 off
/* level 2 */
vmovdqa		(192*\off+ 0)*2(%rdi),%ymm4
vmovdqa		(192*\off+16)*2(%rdi),%ymm5
vmovdqa		(192*\off+32)*2(%rdi),%ymm6
vmovdqa		(192*\off+48)*2(%rdi),%ymm7
vmovdqa		(192*\off+64)*2(%rdi),%ymm8
vmovdqa		(192*\off+80)*2(%rdi),%ymm9
vmovdqa		(192*\off+96+ 0)*2(%rdi),%ymm10
vmovdqa		(192*\off+96+16)*2(%rdi),%ymm11
vmovdqa		(192*\off+96+32)*2(%rdi),%ymm12
vmovdqa		(192*\off+96+48)*2(%rdi),%ymm13
vmovdqa		(192*\off+96+64)*2(%rdi),%ymm14
vmovdqa		(192*\off+96+80)*2(%rdi),%ymm15

update		3,4,5,6,7,8,9,10,11,12,13,14,15

/* level 3 */
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,13,x=9
fqmulprecomp	1,2,14,x=9
fqmulprecomp	1,2,15,x=9

shuffle8	3,10,9,10
shuffle8	4,11,3,11
shuffle8	5,12,4,12
shuffle8	6,13,5,13
shuffle8	7,14,6,14
shuffle8	8,15,7,15

update		8,9,10,3,11,4,12,5,13,6,14,7,15

/* level 4 */
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm12
vpblendd	$0x0F,%ymm1,%ymm12,%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm12
vpblendd	$0x0F,%ymm2,%ymm12,%ymm2
fqmulprecomp	1,2,14,x=12
fqmulprecomp	1,2,7,x=12
fqmulprecomp	1,2,15,x=12

shuffle4	8,5,12,5
shuffle4	9,13,8,13
shuffle4	10,6,9,6

vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
vpblendd	$0x0F,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x0F,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,3,x=10
fqmulprecomp	1,2,11,x=10
fqmulprecomp	1,2,4,x=10

shuffle4	3,14,10,14
shuffle4	11,7,3,7
shuffle4	4,15,11,15

update		4,12,5,8,13,9,6,10,14,3,7,11,15

/* level 5 */
shuffle2	4,10,6,10
shuffle2	12,14,4,14
shuffle2	5,3,12,3
shuffle2	8,7,5,7
shuffle2	13,11,8,11
shuffle2	9,15,13,15

fqmulprecomp1	(_TWIST24+  0),6,x=9
fqmulprecomp1	(_TWIST24+ 32),10,x=9
fqmulprecomp1	(_TWIST24+ 64),4,x=9
fqmulprecomp1	(_TWIST24+ 96),14,x=9
fqmulprecomp1	(_TWIST24+128),12,x=9
fqmulprecomp1	(_TWIST24+160),3,x=9
fqmulprecomp1	(_TWIST24+192),5,x=9
fqmulprecomp1	(_TWIST24+224),7,x=9
fqmulprecomp1	(_TWIST24+256),8,x=9
fqmulprecomp1	(_TWIST24+288),11,x=9
fqmulprecomp1	(_TWIST24+320),13,x=9
fqmulprecomp1	(_TWIST24+352),15,x=9

update		9,6,10,4,14,12,3,5,7,8,11,13,15

/* level 6 */
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=3
fqmulprecomp	1,2,13,x=3
fqmulprecomp	1,2,15,x=3

shuffle1	9,5,3,5
shuffle1	6,7,9,7
shuffle1	10,8,6,8
shuffle1	4,11,10,11
shuffle1	14,13,4,13
shuffle1	12,15,14,15

update		12,3,5,9,7,6,8,10,11,4,13,14,15

/* level 7 */
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm8
vpblendw	$0x55,%ymm1,%ymm8,%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm8
vpblendw	$0x55,%ymm2,%ymm8,%ymm2
fqmulprecomp	1,2,13,x=8
fqmulprecomp	1,2,14,x=8
fqmulprecomp	1,2,15,x=8

vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
vpblendw	$0x55,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendw	$0x55,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,9,x=8
fqmulprecomp	1,2,7,x=8
fqmulprecomp	1,2,6,x=8

update		8,12,3,5,10,11,4,9,7,6,13,14,15

vmovdqa		%ymm8,(192*\off+ 0)*2(%rdi)
vmovdqa		%ymm12,(192*\off+16)*2(%rdi)
vmovdqa		%ymm3,(192*\off+32)*2(%rdi)
vmovdqa		%ymm9,(192*\off+48)*2(%rdi)
vmovdqa		%ymm7,(192*\off+64)*2(%rdi)
vmovdqa		%ymm6,(192*\off+80)*2(%rdi)
vmovdqa		%ymm5,(192*\off+96+ 0)*2(%rdi)
vmovdqa		%ymm10,(192*\off+96+16)*2(%rdi)
vmovdqa		%ymm11,(192*\off+96+32)*2(%rdi)
vmovdqa		%ymm13,(192*\off+96+48)*2(%rdi)
vmovdqa		%ymm14,(192*\off+96+64)*2(%rdi)
vmovdqa		%ymm15,(192*\off+96+80)*2(%rdi)
.endm

.text
.global cdecl(poly_ntt)
cdecl(poly_ntt):
vmovdqa		_16XP*2(%rdx),%ymm0

levels0t1	0
levels0t1	1
levels0t1	2
levels0t1	3
levels0t1	4
levels0t1	5
levels0t1	6
levels0t1	7
levels0t1	8
levels0t1	9
levels0t1	10
levels0t1	11

levels2t7	0
levels2t7	1
levels2t7	2
levels2t7	3
levels2t7	4
levels2t7	5
levels2t7	6
levels2t7	7
levels2t7	8

ret
