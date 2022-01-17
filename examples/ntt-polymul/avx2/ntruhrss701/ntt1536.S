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

.macro levels1t2 off
/* level 1 */
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
vmovdqa		(384+16*\off)*2(%rsi),%ymm6
vmovdqa		(576+16*\off)*2(%rsi),%ymm7

fqmulprecomp2	1,2,6,10,x=3
fqmulprecomp2	1,2,7,11,x=3

vmovdqa		(  0+16*\off)*2(%rsi),%ymm12
vmovdqa		(192+16*\off)*2(%rsi),%ymm13

vpaddw		%ymm6,%ymm12,%ymm4
vpsubw		%ymm6,%ymm12,%ymm6
vpaddw		%ymm7,%ymm13,%ymm5
vpsubw		%ymm7,%ymm13,%ymm7
vpaddw		%ymm10,%ymm12,%ymm8
vpsubw		%ymm10,%ymm12,%ymm10
vpaddw		%ymm11,%ymm13,%ymm9
vpsubw		%ymm11,%ymm13,%ymm11

/* level 2 */
fqmulprecomp	1,2,7,x=3
vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
fqmulprecomp	1,2,9,x=3
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=3

vpaddw		%ymm5,%ymm4,%ymm3
vpsubw		%ymm5,%ymm4,%ymm4
vpaddw		%ymm7,%ymm6,%ymm5
vpsubw		%ymm7,%ymm6,%ymm6
vpaddw		%ymm9,%ymm8,%ymm7
vpsubw		%ymm9,%ymm8,%ymm8
vpaddw		%ymm11,%ymm10,%ymm9
vpsubw		%ymm11,%ymm10,%ymm10

vmovdqa		%ymm3,(  0+16*\off)*2(%rdi)
vmovdqa		%ymm4,(192+16*\off)*2(%rdi)
vmovdqa		%ymm5,(384+16*\off)*2(%rdi)
vmovdqa		%ymm6,(576+16*\off)*2(%rdi)
vmovdqa		%ymm7,(768+16*\off)*2(%rdi)
vmovdqa		%ymm8,(960+16*\off)*2(%rdi)
vmovdqa		%ymm9,(1152+16*\off)*2(%rdi)
vmovdqa		%ymm10,(1344+16*\off)*2(%rdi)
.endm

.macro levels3t8 off
/* level 3 */
.if \off
vpbroadcastd	(_ZETAS_PINV+2*(\off-1))*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS+2*(\off-1))*2(%rdx),%ymm2
.endif
vmovdqa		(192*\off+96+ 0)*2(%rdi),%ymm10
vmovdqa		(192*\off+96+16)*2(%rdi),%ymm11
vmovdqa		(192*\off+96+32)*2(%rdi),%ymm12
vmovdqa		(192*\off+96+48)*2(%rdi),%ymm13
vmovdqa		(192*\off+96+64)*2(%rdi),%ymm14
vmovdqa		(192*\off+96+80)*2(%rdi),%ymm15

.if \off
fqmulprecomp	1,2,10,x=3
fqmulprecomp	1,2,11,x=3
fqmulprecomp	1,2,12,x=3
fqmulprecomp	1,2,13,x=3
fqmulprecomp	1,2,14,x=3
fqmulprecomp	1,2,15,x=3
.endif

vmovdqa		(192*\off+ 0)*2(%rdi),%ymm4
vmovdqa		(192*\off+16)*2(%rdi),%ymm5
vmovdqa		(192*\off+32)*2(%rdi),%ymm6
vmovdqa		(192*\off+48)*2(%rdi),%ymm7
vmovdqa		(192*\off+64)*2(%rdi),%ymm8
vmovdqa		(192*\off+80)*2(%rdi),%ymm9

update		3,4,5,6,7,8,9,10,11,12,13,14,15

.if \off == 0
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,3,x=9
fqmulprecomp1	(_TWIST96+  0),10,x=9
fqmulprecomp	1,2,4,x=9
fqmulprecomp1	(_TWIST96+ 32),11,x=9
fqmulprecomp	1,2,5,x=9
fqmulprecomp1	(_TWIST96+ 64),12,x=9
fqmulprecomp	1,2,6,x=9
fqmulprecomp1	(_TWIST96+ 96),13,x=9
fqmulprecomp	1,2,7,x=9
fqmulprecomp1	(_TWIST96+128),14,x=9
fqmulprecomp	1,2,8,x=9
fqmulprecomp1	(_TWIST96+160),15,x=9
.else
fqmulprecomp1	(_TWIST96+384*\off+  0),3,x=9
fqmulprecomp1	(_TWIST96+384*\off+192),10,x=9
fqmulprecomp1	(_TWIST96+384*\off+ 32),4,x=9
fqmulprecomp1	(_TWIST96+384*\off+224),11,x=9
fqmulprecomp1	(_TWIST96+384*\off+ 64),5,x=9
fqmulprecomp1	(_TWIST96+384*\off+256),12,x=9
fqmulprecomp1	(_TWIST96+384*\off+ 96),6,x=9
fqmulprecomp1	(_TWIST96+384*\off+288),13,x=9
fqmulprecomp1	(_TWIST96+384*\off+128),7,x=9
fqmulprecomp1	(_TWIST96+384*\off+320),14,x=9
fqmulprecomp1	(_TWIST96+384*\off+160),8,x=9
fqmulprecomp1	(_TWIST96+384*\off+352),15,x=9
.endif

/* level 4 */
shuffle8	3,10,9,10
shuffle8	4,11,3,11
shuffle8	5,12,4,12
shuffle8	6,13,5,13
shuffle8	7,14,6,14
shuffle8	8,15,7,15

update		8,9,10,3,11,4,12,5,13,6,14,7,15

/* level 5 */
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp1	(_16XMONT_PINV),3,x=12  // extra reduction
fqmulprecomp	1,2,14,x=12
fqmulprecomp	1,2,7,x=12
fqmulprecomp	1,2,15,x=12

update		12,8,9,10,5,13,6,3,11,4,14,7,15

/* level 6 */
fqmulprecomp	1,2,4,x=6
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,11,x=6
vmovdqa		(_16XMONT_PINV)*2(%rdx),%ymm1
vmovdqa		(_16XMONT)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=6  // extra reduction
fqmulprecomp	1,2,9,x=6  // extra reduction

shuffle4	10,14,6,14
shuffle4	5,7,10,7
shuffle4	13,15,5,15

vpbroadcastd	(_ZETAS_PINV+2)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS_PINV+4)*2(%rdx),%ymm2
vpblendd	$0x33,%ymm1,%ymm2,%ymm1
vpbroadcastd	(_ZETAS+2)*2(%rdx),%ymm2
vpbroadcastd	(_ZETAS+4)*2(%rdx),%ymm13
vpblendd	$0x33,%ymm2,%ymm13,%ymm2
fqmulprecomp	1,2,7,x=13
fqmulprecomp	1,2,5,x=13
fqmulprecomp	1,2,15,x=13

shuffle4	12,3,13,3
shuffle4	8,11,12,11
shuffle4	9,4,8,4

update		9,13,3,12,6,14,10,11,8,4,7,5,15

/* level 7 */
vbroadcasti128	(_TWIST12+ 0)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+ 8)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,9,x=1
vbroadcasti128	(_TWIST12+96)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+104)*2(%rdx),%ymm2
fqmulprecomp	1,2,12,x=1
vbroadcasti128	(_TWIST12+16)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+24)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,13,x=1
vbroadcasti128	(_TWIST12+112)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+120)*2(%rdx),%ymm2
fqmulprecomp	1,2,6,x=1
vbroadcasti128	(_TWIST12+32)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+40)*2(%rdx),%ymm2
vpblendd	$0x33,(_16XMONT_PINV)*2(%rdx),%ymm1,%ymm1
vpblendd	$0x33,(_16XMONT)*2(%rdx),%ymm2,%ymm2
fqmulprecomp	1,2,3,x=1
vbroadcasti128	(_TWIST12+128)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+136)*2(%rdx),%ymm2
fqmulprecomp	1,2,14,x=1
vbroadcasti128	(_TWIST12+48)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+56)*2(%rdx),%ymm2
fqmulprecomp	1,2,11,x=1
vbroadcasti128	(_TWIST12+144)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+152)*2(%rdx),%ymm2
fqmulprecomp	1,2,7,x=1
vbroadcasti128	(_TWIST12+64)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+72)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=1
vbroadcasti128	(_TWIST12+160)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+168)*2(%rdx),%ymm2
fqmulprecomp	1,2,5,x=1
vbroadcasti128	(_TWIST12+80)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+88)*2(%rdx),%ymm2
fqmulprecomp	1,2,4,x=1
vbroadcasti128	(_TWIST12+176)*2(%rdx),%ymm1
vbroadcasti128	(_TWIST12+184)*2(%rdx),%ymm2
fqmulprecomp	1,2,15,x=1

shuffle2	9,12,10,12
shuffle2	13,6,9,6
shuffle2	3,14,13,14
shuffle2	11,7,3,7
shuffle2	8,5,11,5
shuffle2	4,15,8,15

shuffle1	10,3,4,3
shuffle1	12,7,10,7
shuffle1	9,11,12,11
shuffle1	6,5,9,5
shuffle1	13,8,6,8
shuffle1	14,15,13,15

update		14,4,3,10,7,12,11,9,5,6,8,13,15

/* level 8 */
vpbroadcastd	(_ZETAS_PINV)*2(%rdx),%ymm1
vpbroadcastd	(_ZETAS)*2(%rdx),%ymm2
fqmulprecomp	1,2,8,x=11
fqmulprecomp	1,2,13,x=11
fqmulprecomp	1,2,15,x=11

update		11,14,4,3,9,5,6,10,7,12,8,13,15

vmovdqa		%ymm11,(192*\off+ 0)*2(%rdi)
vmovdqa		%ymm14,(192*\off+16)*2(%rdi)
vmovdqa		%ymm4,(192*\off+32)*2(%rdi)
vmovdqa		%ymm10,(192*\off+48)*2(%rdi)
vmovdqa		%ymm7,(192*\off+64)*2(%rdi)
vmovdqa		%ymm12,(192*\off+80)*2(%rdi)
vmovdqa		%ymm3,(192*\off+96+ 0)*2(%rdi)
vmovdqa		%ymm9,(192*\off+96+16)*2(%rdi)
vmovdqa		%ymm5,(192*\off+96+32)*2(%rdi)
vmovdqa		%ymm8,(192*\off+96+48)*2(%rdi)
vmovdqa		%ymm13,(192*\off+96+64)*2(%rdi)
vmovdqa		%ymm15,(192*\off+96+80)*2(%rdi)
.endm

.text
.global cdecl(poly_ntt)
cdecl(poly_ntt):
vmovdqa		_16XP*2(%rdx),%ymm0

levels1t2	0
levels1t2	1
levels1t2	2
levels1t2	3
levels1t2	4
levels1t2	5
levels1t2	6
levels1t2	7
levels1t2	8
levels1t2	9
levels1t2	10
levels1t2	11

levels3t8	0
levels3t8	1
levels3t8	2
levels3t8	3
levels3t8	4
levels3t8	5
levels3t8	6
levels3t8	7

ret
