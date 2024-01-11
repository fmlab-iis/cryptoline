(* macbook: cv -v -jobs 8 -slicing -isafety p256PointAddAsm.cl
Parsing CryptoLine file:			[OK]		0.0188 seconds
Checking well-formedness:			[OK]		0.0095 seconds

Procedure main
--------------
Transforming to SSA form:			[OK]		0.0029 seconds
Normalizing specification:			[OK]		0.0043 seconds
Rewriting assignments:				[OK]		0.0018 seconds
Verifying program safety:	
	Overall					[OK]		48.7247 seconds
Verifying range assertions:			[OK]		24.4756 seconds
Verifying range specification:			[OK]		156.0350 seconds
Rewriting value-preserved casting:		[OK]		0.0010 seconds
Verifying algebraic assertions:			[OK]		0.0054 seconds
Verifying algebraic specification:		[OK]		216.6470 seconds
Procedure verification:				[OK]		445.8993 seconds

Summary
-------
Verification result:				[OK]		445.9277 seconds
*)

const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 x1R_0, uint64 x1R_1, uint64 x1R_2, uint64 x1R_3,
           uint64 y1R_0, uint64 y1R_1, uint64 y1R_2, uint64 y1R_3,
           uint64 z1R_0, uint64 z1R_1, uint64 z1R_2, uint64 z1R_3,
           uint64 x2R_0, uint64 x2R_1, uint64 x2R_2, uint64 x2R_3,
           uint64 y2R_0, uint64 y2R_1, uint64 y2R_2, uint64 y2R_3,
           uint64 z2R_0, uint64 z2R_1, uint64 z2R_2, uint64 z2R_3) =
{
  true
  &&
  and [limbs 64 [x1R_0,x1R_1,x1R_2,x1R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y1R_0,y1R_1,y1R_2,y1R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [z1R_0,z1R_1,z1R_2,z1R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [x2R_0,x2R_1,x2R_2,x2R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y2R_0,y2R_1,y2R_2,y2R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [z2R_0,z2R_1,z2R_2,z2R_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64]]
}

ghost x1_0@uint64, x1_1@uint64, x1_2@uint64, x1_3@uint64,
      y1_0@uint64, y1_1@uint64, y1_2@uint64, y1_3@uint64,
      z1_0@uint64, z1_1@uint64, z1_2@uint64, z1_3@uint64,
      x2_0@uint64, x2_1@uint64, x2_2@uint64, x2_3@uint64,
      y2_0@uint64, y2_1@uint64, y2_2@uint64, y2_3@uint64,
      z2_0@uint64, z2_1@uint64, z2_2@uint64, z2_3@uint64 :
  and [eqmod (limbs 64 [x1R_0,x1R_1,x1R_2,x1R_3])
             (2**256 * limbs 64 [x1_0,x1_1,x1_2,x1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [y1R_0,y1R_1,y1R_2,y1R_3])
             (2**256 * limbs 64 [y1_0,y1_1,y1_2,y1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [z1R_0,z1R_1,z1R_2,z1R_3])
             (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [x2R_0,x2R_1,x2R_2,x2R_3])
             (2**256 * limbs 64 [x2_0,x2_1,x2_2,x2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [y2R_0,y2R_1,y2R_2,y2R_3])
             (2**256 * limbs 64 [y2_0,y2_1,y2_2,y2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [z2R_0,z2R_1,z2R_2,z2R_3])
             (2**256 * limbs 64 [z2_0,z2_1,z2_2,z2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3])]
    && true;

mov L0x400018f6e8 x1R_0; mov L0x400018f6f0 x1R_1;
mov L0x400018f6f8 x1R_2; mov L0x400018f700 x1R_3;
mov L0x400018f708 y1R_0; mov L0x400018f710 y1R_1;
mov L0x400018f718 y1R_2; mov L0x400018f720 y1R_3;
mov L0x400018f728 z1R_0; mov L0x400018f730 z1R_1;
mov L0x400018f738 z1R_2; mov L0x400018f740 z1R_3;

mov L0x400018fdc8 x2R_0; mov L0x400018fdd0 x2R_1;
mov L0x400018fdd8 x2R_2; mov L0x400018fde0 x2R_3;
mov L0x400018fde8 y2R_0; mov L0x400018fdf0 y2R_1;
mov L0x400018fdf8 y2R_2; mov L0x400018fe00 y2R_3;
mov L0x400018fe08 z2R_0; mov L0x400018fe10 z2R_1;
mov L0x400018fe18 z2R_2; mov L0x400018fe20 z2R_3;

mov L0x129658 $P256_1@uint64;
mov L0x129660 $P256_3@uint64;

nondet sp@uint64; nondet x29@uint64; nondet x30@uint64;
nondet L0x40000021b0@uint64; nondet L0x400018f548@uint64;
nondet L0x400018f560@uint64; nondet L0x400018f578@uint64;

(* #! -> SP = 0x400018f540 *)
#! 0x400018f540 = 0x400018f540;
(* ldr	x16, [x28, #16]                             #! EA = L0x40000021b0; Value = 0x000000400018e3a0; PC = 0xc46f0 *)
mov x16 L0x40000021b0;
(* sub	x17, sp, #0x120                             #! PC = 0xc46f4 *)
subs dc x17 sp 0x120@uint64;
(* cmp	x17, x16                                    #! PC = 0xc46f8 *)
(* cmp x17, x16 *)
(* #b.ls	0xc49a8 <crypto/elliptic.p256PointAddAsm+696>  // b.plast#! PC = 0xc46fc *)
#b.ls	0xc49a8 <crypto/elliptic.p256PointAddAsm+696>  // b.plast#! 0xc46fc = 0xc46fc;
(* sub	x27, sp, #0x1a0                             #! PC = 0xc4700 *)
subs dc x27 sp 0x1a0@uint64;
(* str	x30, [x27]                                  #! EA = L0x400018f3a0; PC = 0xc4704 *)
mov L0x400018f3a0 x30;
(* mov	sp, x27                                     #! PC = 0xc4708 *)
mov sp x27;
(* stur	x29, [sp, #-8]                             #! EA = L0x400018f398; PC = 0xc470c *)
mov L0x400018f398 x29;
(* sub	x29, sp, #0x8                               #! PC = 0xc4710 *)
subs dc x29 sp 0x8@uint64;
(* ldr	x1, [sp, #448]                              #! EA = L0x400018f560; Value = 0x000000400018f6e8; PC = 0xc4714 *)
mov x1 L0x400018f560;
(* ldr	x2, [sp, #472]                              #! EA = L0x400018f578; Value = 0x000000400018fdc8; PC = 0xc4718 *)
mov x2 L0x400018f578;
(* add	x27, x27, #0x658                            #! PC = 0xc4720 *)
adds dc x27 x27 0x658@uint64;
(* ldr	x15, [x27]                                  #! EA = L0x129658; Value = 0x00000000ffffffff; PC = 0xc4724 *)
mov x15 L0x129658;
(* add	x27, x27, #0x660                            #! PC = 0xc472c *)
adds dc x27 x27 0x660@uint64;
(* ldr	x16, [x27]                                  #! EA = L0x129660; Value = 0xffffffff00000001; PC = 0xc4730 *)
mov x16 L0x129660;
(* ldp	x19, x20, [x2, #64]                         #! EA = L0x400018fe08; Value = 0x0000000000000001; PC = 0xc4734 *)
mov x19 L0x400018fe08; mov x20 L0x400018fe10;
(* ldp	x21, x22, [x2, #80]                         #! EA = L0x400018fe18; Value = 0xffffffffffffffff; PC = 0xc4738 *)
mov x21 L0x400018fe18; mov x22 L0x400018fe20;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc473c *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc473c = 0xc473c;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x4 = dcL;
assume x4 = dcL && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x7, x7, x12                                #! PC = 0xc39b0 *)
adcs carry x7 x7 x12 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xc39b4 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x11, x22, x20                               #! PC = 0xc39b8 *)
mull dcH x11 x22 x20;
(* adds	x7, x7, x11                                #! PC = 0xc39bc *)
adds carry x7 x7 x11;
(* umulh	x12, x22, x20                             #! PC = 0xc39c0 *)
mull x12 dcL x22 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, x9, xzr                                 #! PC = 0xc39d4 *)
adc x9 x9 0@uint64 carry;
(* mov	x10, #0x0                   	// #0          #! PC = 0xc39d8 *)
mov x10 0x0@uint64;
(* adds	x4, x4, x4                                 #! PC = 0xc39dc *)
adds carry x4 x4 x4;
(* adcs	x5, x5, x5                                 #! PC = 0xc39e0 *)
adcs carry x5 x5 x5 carry;
(* adcs	x6, x6, x6                                 #! PC = 0xc39e4 *)
adcs carry x6 x6 x6 carry;
(* adcs	x7, x7, x7                                 #! PC = 0xc39e8 *)
adcs carry x7 x7 x7 carry;
(* adcs	x8, x8, x8                                 #! PC = 0xc39ec *)
adcs carry x8 x8 x8 carry;
(* adcs	x9, x9, x9                                 #! PC = 0xc39f0 *)
adcs carry x9 x9 x9 carry;
(* adc	x10, x10, xzr                               #! PC = 0xc39f4 *)
adc x10 x10 0@uint64 carry;
(* mul	x3, x19, x19                                #! PC = 0xc39f8 *)
mull dcH x3 x19 x19;
(* umulh	x11, x19, x19                             #! PC = 0xc39fc *)
mull x11 dcL x19 x19;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3a44 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3a48 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3a4c *)
adc x3 x3 0@uint64 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3a50 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3a54 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3a60 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3a64 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3a68 *)
adc x4 x4 0@uint64 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3a6c *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3a70 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3a7c *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3a80 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3a84 *)
adc x5 x5 0@uint64 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3a88 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3a8c *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3a98 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3a9c *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3aa0 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3aa4 *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3aa8 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3aac *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3ab0 *)
adcs carry6 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry6;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry7 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry7;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry7 = 0@1];
assume (carry - 1)*carry7 = 0 && true;
assert true && uext carry 1 = uext carry6 1 + uext carry7 1;
assume carry = carry6 + carry7 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #264]                        #! EA = L0x400018f4a8; PC = 0xc4740 *)
mov L0x400018f4a8 x23; mov L0x400018f4b0 x24;
(* stp	x25, x26, [sp, #280]                        #! EA = L0x400018f4b8; PC = 0xc4744 *)
mov L0x400018f4b8 x25; mov L0x400018f4c0 x26;

(* 0 *)
cut eqmod (limbs 64 [L0x400018f4a8, L0x400018f4b0, L0x400018f4b8, L0x400018f4c0])
          (2**256 * limbs 64 [z2_0, z2_1, z2_2, z2_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x400018f4a8, L0x400018f4b0, L0x400018f4b8, L0x400018f4c0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4748 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4748 = 0xc4748;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry14 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry14;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry15 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry15;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry15 = 0@1];
assume (carry - 1)*carry15 = 0 && true;
assert true && uext carry 1 = uext carry14 1 + uext carry15 1;
assume carry = carry14 + carry15 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 1 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * limbs 64 [z2_0, z2_1, z2_2, z2_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x19, x20, [x1, #32]                         #! EA = L0x400018f708; Value = 0x6bf12f7f64156dfb; PC = 0xc474c *)
mov x19 L0x400018f708; mov x20 L0x400018f710;
(* ldp	x21, x22, [x1, #48]                         #! EA = L0x400018f718; Value = 0xfc062acfba037883; PC = 0xc4750 *)
mov x21 L0x400018f718; mov x22 L0x400018f720;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4754 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4754 = 0xc4754;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry16 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry16;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry17 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry17;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry17 = 0@1];
assume (carry - 1)*carry17 = 0 && true;
assert true && uext carry 1 = uext carry16 1 + uext carry17 1;
assume carry = carry16 + carry17 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #296]                        #! EA = L0x400018f4c8; PC = 0xc4758 *)
mov L0x400018f4c8 x23; mov L0x400018f4d0 x24;
(* stp	x25, x26, [sp, #312]                        #! EA = L0x400018f4d8; PC = 0xc475c *)
mov L0x400018f4d8 x25; mov L0x400018f4e0 x26;

(* 2 *)
cut eqmod (limbs 64 [L0x400018f4c8, L0x400018f4d0, L0x400018f4d8, L0x400018f4e0])
          (2**256 *
          limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [L0x400018f4c8, L0x400018f4d0, L0x400018f4d8, L0x400018f4e0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x19, x20, [x1, #64]                         #! EA = L0x400018f728; Value = 0x8d00018f18337624; PC = 0xc4760 *)
mov x19 L0x400018f728; mov x20 L0x400018f730;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x400018f738; Value = 0x416ee386d2326609; PC = 0xc4764 *)
mov x21 L0x400018f738; mov x22 L0x400018f740;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4768 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4768 = 0xc4768;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x4 = dcL;
assume x4 = dcL && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x7, x7, x12                                #! PC = 0xc39b0 *)
adcs carry x7 x7 x12 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xc39b4 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x11, x22, x20                               #! PC = 0xc39b8 *)
mull dcH x11 x22 x20;
(* adds	x7, x7, x11                                #! PC = 0xc39bc *)
adds carry x7 x7 x11;
(* umulh	x12, x22, x20                             #! PC = 0xc39c0 *)
mull x12 dcL x22 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, x9, xzr                                 #! PC = 0xc39d4 *)
adc x9 x9 0@uint64 carry;
(* mov	x10, #0x0                   	// #0          #! PC = 0xc39d8 *)
mov x10 0x0@uint64;
(* adds	x4, x4, x4                                 #! PC = 0xc39dc *)
adds carry x4 x4 x4;
(* adcs	x5, x5, x5                                 #! PC = 0xc39e0 *)
adcs carry x5 x5 x5 carry;
(* adcs	x6, x6, x6                                 #! PC = 0xc39e4 *)
adcs carry x6 x6 x6 carry;
(* adcs	x7, x7, x7                                 #! PC = 0xc39e8 *)
adcs carry x7 x7 x7 carry;
(* adcs	x8, x8, x8                                 #! PC = 0xc39ec *)
adcs carry x8 x8 x8 carry;
(* adcs	x9, x9, x9                                 #! PC = 0xc39f0 *)
adcs carry x9 x9 x9 carry;
(* adc	x10, x10, xzr                               #! PC = 0xc39f4 *)
adc x10 x10 0@uint64 carry;
(* mul	x3, x19, x19                                #! PC = 0xc39f8 *)
mull dcH x3 x19 x19;
(* umulh	x11, x19, x19                             #! PC = 0xc39fc *)
mull x11 dcL x19 x19;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3a44 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3a48 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3a4c *)
adc x3 x3 0@uint64 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3a50 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3a54 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3a60 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3a64 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3a68 *)
adc x4 x4 0@uint64 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3a6c *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3a70 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3a7c *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3a80 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3a84 *)
adc x5 x5 0@uint64 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3a88 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3a8c *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3a98 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3a9c *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3aa0 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3aa4 *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3aa8 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3aac *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3ab0 *)
adcs carry8 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry8;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry9 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry9;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry9 = 0@1];
assume (carry - 1)*carry9 = 0 && true;
assert true && uext carry 1 = uext carry8 1 + uext carry9 1;
assume carry = carry8 + carry9 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #72]                         #! EA = L0x400018f3e8; PC = 0xc476c *)
mov L0x400018f3e8 x23; mov L0x400018f3f0 x24;
(* stp	x25, x26, [sp, #88]                         #! EA = L0x400018f3f8; PC = 0xc4770 *)
mov L0x400018f3f8 x25; mov L0x400018f400 x26;

(* 3 *)
cut eqmod (limbs 64 [L0x400018f3e8, L0x400018f3f0, L0x400018f3f8, L0x400018f400])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [L0x400018f3e8, L0x400018f3f0, L0x400018f3f8, L0x400018f400] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4774 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4774 = 0xc4774;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry18 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry18;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry19 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry19;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry19 = 0@1];
assume (carry - 1)*carry19 = 0 && true;
assert true && uext carry 1 = uext carry18 1 + uext carry19 1;
assume carry = carry18 + carry19 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 4 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x19, x20, [x2, #32]                         #! EA = L0x400018fde8; Value = 0x468000c78c19bb12; PC = 0xc4778 *)
mov x19 L0x400018fde8; mov x20 L0x400018fdf0;
(* ldp	x21, x22, [x2, #48]                         #! EA = L0x400018fdf8; Value = 0xa0b771c369193304; PC = 0xc477c *)
mov x21 L0x400018fdf8; mov x22 L0x400018fe00;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4780 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4780 = 0xc4780;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry20 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry20;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry21 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry21;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry21 = 0@1];
assume (carry - 1)*carry21 = 0 && true;
assert true && uext carry 1 = uext carry20 1 + uext carry21 1;
assume carry = carry20 + carry21 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 5 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 *
          limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x19, x20, [sp, #296]                        #! EA = L0x400018f4c8; Value = 0x6bf12f7f64156dfb; PC = 0xc4784 *)
mov x19 L0x400018f4c8; mov x20 L0x400018f4d0;
(* ldp	x21, x22, [sp, #312]                        #! EA = L0x400018f4d8; Value = 0xfc062acfba037883; PC = 0xc4788 *)
mov x21 L0x400018f4d8; mov x22 L0x400018f4e0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc478c *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc478c = 0xc478c;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry0 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry0;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc0 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry0;
assume zero = carry0 && true;
assert true && or [dc0 = 1@1, carry0 = 1@1];
assume (dc0 - 1)*(carry0 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [sp, #136]                        #! EA = L0x400018f428; PC = 0xc4790 *)
mov L0x400018f428 x19; mov L0x400018f430 x20;
(* stp	x21, x22, [sp, #152]                        #! EA = L0x400018f438; PC = 0xc4794 *)
mov L0x400018f438 x21; mov L0x400018f440 x22;

(* 6 *)
cut eqmod (limbs 64 [L0x400018f428, L0x400018f430, L0x400018f438, L0x400018f440])
          (2**256 *
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [2]]
 && limbs 64 [L0x400018f428, L0x400018f430, L0x400018f438, L0x400018f440] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [2]];

(* orr	x13, xzr, #0x1                              #! PC = 0xc4798 *)
mov x13 0x1@uint64;
(* orr	x11, x20, x19                               #! PC = 0xc479c *)
or x11@uint64 x20 x19;
(* orr	x12, x22, x21                               #! PC = 0xc47a0 *)
or x12@uint64 x22 x21;
(* orr	x11, x11, x12                               #! PC = 0xc47a4 *)
or x11@uint64 x11 x12;
(* cmp	x11, xzr                                    #! PC = 0xc47a8 *)
subc zero dc 0@uint64 x11;
(* csel	x0, x13, xzr, eq  // eq = none             #! PC = 0xc47ac *)
cmov x0 zero x13 0@uint64;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc47b0 *)
mov x27 0xffffffffffffffff@uint64;
(* eor	x11, x19, x27                               #! PC = 0xc47b4 *)
xor x11@uint64 x19 x27;
(* eor	x12, x20, x15                               #! PC = 0xc47b8 *)
xor x12@uint64 x20 x15;
(* eor	x14, x22, x16                               #! PC = 0xc47bc *)
xor x14@uint64 x22 x16;
(* orr	x11, x12, x11                               #! PC = 0xc47c0 *)
or x11@uint64 x12 x11;
(* orr	x12, x14, x21                               #! PC = 0xc47c4 *)
or x12@uint64 x14 x21;
(* orr	x11, x11, x12                               #! PC = 0xc47c8 *)
or x11@uint64 x11 x12;
(* cmp	x11, xzr                                    #! PC = 0xc47cc *)
subc zero dc 0@uint64 x11;
(* csel	x0, x13, x0, eq  // eq = none              #! PC = 0xc47d0 *)
cmov x0 zero x13 x0;
(* ldp	x19, x20, [sp, #264]                        #! EA = L0x400018f4a8; Value = 0x0000000000000001; PC = 0xc47d4 *)
mov x19 L0x400018f4a8; mov x20 L0x400018f4b0;
(* ldp	x21, x22, [sp, #280]                        #! EA = L0x400018f4b8; Value = 0xffffffffffffffff; PC = 0xc47d8 *)
mov x21 L0x400018f4b8; mov x22 L0x400018f4c0;
(* ldp	x23, x24, [x1]                              #! EA = L0x400018f6e8; Value = 0xdf580e7124ac307d; PC = 0xc47dc *)
mov x23 L0x400018f6e8; mov x24 L0x400018f6f0;
(* ldp	x25, x26, [x1, #16]                         #! EA = L0x400018f6f8; Value = 0xfb50b2cdb28031fe; PC = 0xc47e0 *)
mov x25 L0x400018f6f8; mov x26 L0x400018f700;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc47e4 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc47e4 = 0xc47e4;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry22 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry22;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry23 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry23;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry23 = 0@1];
assume (carry - 1)*carry23 = 0 && true;
assert true && uext carry 1 = uext carry22 1 + uext carry23 1;
assume carry = carry22 + carry23 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #328]                        #! EA = L0x400018f4e8; PC = 0xc47e8 *)
mov L0x400018f4e8 x23; mov L0x400018f4f0 x24;
(* stp	x25, x26, [sp, #344]                        #! EA = L0x400018f4f8; PC = 0xc47ec *)
mov L0x400018f4f8 x25; mov L0x400018f500 x26;

(* 7 *)
cut eqmod (limbs 64 [L0x400018f4e8, L0x400018f4f0, L0x400018f4f8, L0x400018f500])
          (2**256 *
          limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [0]]
 && limbs 64 [L0x400018f4e8, L0x400018f4f0, L0x400018f4f8, L0x400018f500] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [0]];

(* ldp	x19, x20, [sp, #72]                         #! EA = L0x400018f3e8; Value = 0xc4d32010bc9594f1; PC = 0xc47f0 *)
mov x19 L0x400018f3e8; mov x20 L0x400018f3f0;
(* ldp	x21, x22, [sp, #88]                         #! EA = L0x400018f3f8; Value = 0x64b7c79c42ccb4e8; PC = 0xc47f4 *)
mov x21 L0x400018f3f8; mov x22 L0x400018f400;
(* ldp	x23, x24, [x2]                              #! EA = L0x400018fdc8; Value = 0xc8184d1504bafa64; PC = 0xc47f8 *)
mov x23 L0x400018fdc8; mov x24 L0x400018fdd0;
(* ldp	x25, x26, [x2, #16]                         #! EA = L0x400018fdd8; Value = 0xa9d45ba1679c4099; PC = 0xc47fc *)
mov x25 L0x400018fdd8; mov x26 L0x400018fde0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4800 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4800 = 0xc4800;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry24 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry24;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry25 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry25;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry25 = 0@1];
assume (carry - 1)*carry25 = 0 && true;
assert true && uext carry 1 = uext carry24 1 + uext carry25 1;
assume carry = carry24 + carry25 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #360]                        #! EA = L0x400018f508; PC = 0xc4804 *)
mov L0x400018f508 x23; mov L0x400018f510 x24;
(* stp	x25, x26, [sp, #376]                        #! EA = L0x400018f518; PC = 0xc4808 *)
mov L0x400018f518 x25; mov L0x400018f520 x26;

(* 8 *)
cut eqmod (limbs 64 [L0x400018f508, L0x400018f510, L0x400018f518, L0x400018f520])
          (2**256 *
          limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [3]]
 && limbs 64 [L0x400018f508, L0x400018f510, L0x400018f518, L0x400018f520] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [3]];

(* ldp	x19, x20, [sp, #328]                        #! EA = L0x400018f4e8; Value = 0xdf580e7124ac307d; PC = 0xc480c *)
mov x19 L0x400018f4e8; mov x20 L0x400018f4f0;
(* ldp	x21, x22, [sp, #344]                        #! EA = L0x400018f4f8; Value = 0xfb50b2cdb28031fe; PC = 0xc4810 *)
mov x21 L0x400018f4f8; mov x22 L0x400018f500;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4814 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4814 = 0xc4814;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry1 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry1;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc1 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry1;
assume zero = carry1 && true;
assert true && or [dc1 = 1@1, carry1 = 1@1];
assume (dc1 - 1)*(carry1 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [sp, #104]                        #! EA = L0x400018f408; PC = 0xc4818 *)
mov L0x400018f408 x19; mov L0x400018f410 x20;
(* stp	x21, x22, [sp, #120]                        #! EA = L0x400018f418; PC = 0xc481c *)
mov L0x400018f418 x21; mov L0x400018f420 x22;

(* 9 *)
cut eqmod (limbs 64 [L0x400018f408, L0x400018f410, L0x400018f418, L0x400018f420])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [7]]
 && limbs 64 [L0x400018f408, L0x400018f410, L0x400018f418, L0x400018f420] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [7]];

(* orr	x13, xzr, #0x1                              #! PC = 0xc4820 *)
mov x13 0x1@uint64;
(* orr	x11, x20, x19                               #! PC = 0xc4824 *)
or x11@uint64 x20 x19;
(* orr	x12, x22, x21                               #! PC = 0xc4828 *)
or x12@uint64 x22 x21;
(* orr	x11, x11, x12                               #! PC = 0xc482c *)
or x11@uint64 x11 x12;
(* cmp	x11, xzr                                    #! PC = 0xc4830 *)
subc zero dc 0@uint64 x11;
(* csel	x17, x13, xzr, eq  // eq = none            #! PC = 0xc4834 *)
cmov x17 zero x13 0@uint64;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc4838 *)
mov x27 0xffffffffffffffff@uint64;
(* eor	x11, x19, x27                               #! PC = 0xc483c *)
xor x11@uint64 x19 x27;
(* eor	x12, x20, x15                               #! PC = 0xc4840 *)
xor x12@uint64 x20 x15;
(* eor	x14, x22, x16                               #! PC = 0xc4844 *)
xor x14@uint64 x22 x16;
(* orr	x11, x12, x11                               #! PC = 0xc4848 *)
or x11@uint64 x12 x11;
(* orr	x12, x14, x21                               #! PC = 0xc484c *)
or x12@uint64 x14 x21;
(* orr	x11, x11, x12                               #! PC = 0xc4850 *)
or x11@uint64 x11 x12;
(* cmp	x11, xzr                                    #! PC = 0xc4854 *)
subc zero dc 0@uint64 x11;
(* csel	x17, x13, x17, eq  // eq = none            #! PC = 0xc4858 *)
cmov x17 zero x13 x17;
(* and	x0, x0, x17                                 #! PC = 0xc485c *)
and x0@uint64 x0 x17;
(* ldp	x19, x20, [sp, #136]                        #! EA = L0x400018f428; Value = 0x7f3ed4753d9effad; PC = 0xc4860 *)
mov x19 L0x400018f428; mov x20 L0x400018f430;
(* ldp	x21, x22, [sp, #152]                        #! EA = L0x400018f438; Value = 0x8f550e86b4187b7d; PC = 0xc4864 *)
mov x21 L0x400018f438; mov x22 L0x400018f440;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4868 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4868 = 0xc4868;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x4 = dcL;
assume x4 = dcL && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x7, x7, x12                                #! PC = 0xc39b0 *)
adcs carry x7 x7 x12 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xc39b4 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x11, x22, x20                               #! PC = 0xc39b8 *)
mull dcH x11 x22 x20;
(* adds	x7, x7, x11                                #! PC = 0xc39bc *)
adds carry x7 x7 x11;
(* umulh	x12, x22, x20                             #! PC = 0xc39c0 *)
mull x12 dcL x22 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, x9, xzr                                 #! PC = 0xc39d4 *)
adc x9 x9 0@uint64 carry;
(* mov	x10, #0x0                   	// #0          #! PC = 0xc39d8 *)
mov x10 0x0@uint64;
(* adds	x4, x4, x4                                 #! PC = 0xc39dc *)
adds carry x4 x4 x4;
(* adcs	x5, x5, x5                                 #! PC = 0xc39e0 *)
adcs carry x5 x5 x5 carry;
(* adcs	x6, x6, x6                                 #! PC = 0xc39e4 *)
adcs carry x6 x6 x6 carry;
(* adcs	x7, x7, x7                                 #! PC = 0xc39e8 *)
adcs carry x7 x7 x7 carry;
(* adcs	x8, x8, x8                                 #! PC = 0xc39ec *)
adcs carry x8 x8 x8 carry;
(* adcs	x9, x9, x9                                 #! PC = 0xc39f0 *)
adcs carry x9 x9 x9 carry;
(* adc	x10, x10, xzr                               #! PC = 0xc39f4 *)
adc x10 x10 0@uint64 carry;
(* mul	x3, x19, x19                                #! PC = 0xc39f8 *)
mull dcH x3 x19 x19;
(* umulh	x11, x19, x19                             #! PC = 0xc39fc *)
mull x11 dcL x19 x19;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3a44 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3a48 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3a4c *)
adc x3 x3 0@uint64 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3a50 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3a54 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3a60 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3a64 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3a68 *)
adc x4 x4 0@uint64 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3a6c *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3a70 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3a7c *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3a80 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3a84 *)
adc x5 x5 0@uint64 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3a88 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3a8c *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3a98 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3a9c *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3aa0 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3aa4 *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3aa8 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3aac *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3ab0 *)
adcs carry10 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry10;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry11 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry11;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry11 = 0@1];
assume (carry - 1)*carry11 = 0 && true;
assert true && uext carry 1 = uext carry10 1 + uext carry11 1;
assume carry = carry10 + carry11 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #200]                        #! EA = L0x400018f468; PC = 0xc486c *)
mov L0x400018f468 x23; mov L0x400018f470 x24;
(* stp	x25, x26, [sp, #216]                        #! EA = L0x400018f478; PC = 0xc4870 *)
mov L0x400018f478 x25; mov L0x400018f480 x26;

(* 10 *)
cut eqmod (limbs 64 [L0x400018f468, L0x400018f470, L0x400018f478, L0x400018f480])
          (2**256 *
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [6]]
 && limbs 64 [L0x400018f468, L0x400018f470, L0x400018f478, L0x400018f480] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [6]];

(* ldp	x19, x20, [sp, #104]                        #! EA = L0x400018f408; Value = 0x7f436a6516ab56d1; PC = 0xc4874 *)
mov x19 L0x400018f408; mov x20 L0x400018f410;
(* ldp	x21, x22, [sp, #120]                        #! EA = L0x400018f418; Value = 0xb0a524d9ab75e45f; PC = 0xc4878 *)
mov x21 L0x400018f418; mov x22 L0x400018f420;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc487c *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc487c = 0xc487c;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;
(* mul	x11, x21, x19                               #! PC = 0xc3988 *)

(* NOTE: related variables *)
assert true && x4 = dcL;
assume x4 = dcL && true;

mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x7, x7, x12                                #! PC = 0xc39b0 *)
adcs carry x7 x7 x12 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xc39b4 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x11, x22, x20                               #! PC = 0xc39b8 *)
mull dcH x11 x22 x20;
(* adds	x7, x7, x11                                #! PC = 0xc39bc *)
adds carry x7 x7 x11;
(* umulh	x12, x22, x20                             #! PC = 0xc39c0 *)
mull x12 dcL x22 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, x9, xzr                                 #! PC = 0xc39d4 *)
adc x9 x9 0@uint64 carry;
(* mov	x10, #0x0                   	// #0          #! PC = 0xc39d8 *)
mov x10 0x0@uint64;
(* adds	x4, x4, x4                                 #! PC = 0xc39dc *)
adds carry x4 x4 x4;
(* adcs	x5, x5, x5                                 #! PC = 0xc39e0 *)
adcs carry x5 x5 x5 carry;
(* adcs	x6, x6, x6                                 #! PC = 0xc39e4 *)
adcs carry x6 x6 x6 carry;
(* adcs	x7, x7, x7                                 #! PC = 0xc39e8 *)
adcs carry x7 x7 x7 carry;
(* adcs	x8, x8, x8                                 #! PC = 0xc39ec *)
adcs carry x8 x8 x8 carry;
(* adcs	x9, x9, x9                                 #! PC = 0xc39f0 *)
adcs carry x9 x9 x9 carry;
(* adc	x10, x10, xzr                               #! PC = 0xc39f4 *)
adc x10 x10 0@uint64 carry;
(* mul	x3, x19, x19                                #! PC = 0xc39f8 *)
mull dcH x3 x19 x19;
(* umulh	x11, x19, x19                             #! PC = 0xc39fc *)
mull x11 dcL x19 x19;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3a44 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3a48 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3a4c *)
adc x3 x3 0@uint64 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3a50 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3a54 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3a60 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3a64 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3a68 *)
adc x4 x4 0@uint64 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3a6c *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3a70 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3a7c *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3a80 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3a84 *)
adc x5 x5 0@uint64 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3a88 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3a8c *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3a98 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3a9c *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3aa0 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3aa4 *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3aa8 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3aac *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3ab0 *)
adcs carry12 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry12;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry13 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry13;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry13 = 0@1];
assume (carry - 1)*carry13 = 0 && true;
assert true && uext carry 1 = uext carry12 1 + uext carry13 1;
assume carry = carry12 + carry13 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #168]                        #! EA = L0x400018f448; PC = 0xc4880 *)
mov L0x400018f448 x23; mov L0x400018f450 x24;
(* stp	x25, x26, [sp, #184]                        #! EA = L0x400018f458; PC = 0xc4884 *)
mov L0x400018f458 x25; mov L0x400018f460 x26;

(* 11 *)
cut eqmod (limbs 64 [L0x400018f448, L0x400018f450, L0x400018f458, L0x400018f460])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [L0x400018f448, L0x400018f450, L0x400018f458, L0x400018f460] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];

(* ldp	x19, x20, [sp, #104]                        #! EA = L0x400018f408; Value = 0x7f436a6516ab56d1; PC = 0xc4888 *)
mov x19 L0x400018f408; mov x20 L0x400018f410;
(* ldp	x21, x22, [sp, #120]                        #! EA = L0x400018f418; Value = 0xb0a524d9ab75e45f; PC = 0xc488c *)
mov x21 L0x400018f418; mov x22 L0x400018f420;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4890 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4890 = 0xc4890;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry26 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry26;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry27 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry27;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry27 = 0@1];
assume (carry - 1)*carry27 = 0 && true;
assert true && uext carry 1 = uext carry26 1 + uext carry27 1;
assume carry = carry26 + carry27 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #232]                        #! EA = L0x400018f488; PC = 0xc4894 *)
mov L0x400018f488 x23; mov L0x400018f490 x24;
(* stp	x25, x26, [sp, #248]                        #! EA = L0x400018f498; PC = 0xc4898 *)
mov L0x400018f498 x25; mov L0x400018f4a0 x26;

(* 12 *)
cut eqmod (limbs 64 [L0x400018f488, L0x400018f490, L0x400018f498, L0x400018f4a0])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [L0x400018f488, L0x400018f490, L0x400018f498, L0x400018f4a0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];

(* ldp	x19, x20, [sp, #296]                        #! EA = L0x400018f4c8; Value = 0x6bf12f7f64156dfb; PC = 0xc489c *)
mov x19 L0x400018f4c8; mov x20 L0x400018f4d0;
(* ldp	x21, x22, [sp, #312]                        #! EA = L0x400018f4d8; Value = 0xfc062acfba037883; PC = 0xc48a0 *)
mov x21 L0x400018f4d8; mov x22 L0x400018f4e0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc48a4 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc48a4 = 0xc48a4;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry28 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry28;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry29 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry29;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry29 = 0@1];
assume (carry - 1)*carry29 = 0 && true;
assert true && uext carry 1 = uext carry28 1 + uext carry29 1;
assume carry = carry28 + carry29 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #40]                         #! EA = L0x400018f3c8; PC = 0xc48a8 *)
mov L0x400018f3c8 x23; mov L0x400018f3d0 x24;
(* stp	x25, x26, [sp, #56]                         #! EA = L0x400018f3d8; PC = 0xc48ac *)
mov L0x400018f3d8 x25; mov L0x400018f3e0 x26;

(* 13 *)
cut eqmod (limbs 64 [L0x400018f3c8, L0x400018f3d0, L0x400018f3d8, L0x400018f3e0])
          (2**256 *
          limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [2]]
 && limbs 64 [L0x400018f3c8, L0x400018f3d0, L0x400018f3d8, L0x400018f3e0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [2]];

(* ldp	x19, x20, [x1, #64]                         #! EA = L0x400018f728; Value = 0x8d00018f18337624; PC = 0xc48b0 *)
mov x19 L0x400018f728; mov x20 L0x400018f730;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x400018f738; Value = 0x416ee386d2326609; PC = 0xc48b4 *)
mov x21 L0x400018f738; mov x22 L0x400018f740;
(* ldp	x23, x24, [x2, #64]                         #! EA = L0x400018fe08; Value = 0x0000000000000001; PC = 0xc48b8 *)
mov x23 L0x400018fe08; mov x24 L0x400018fe10;
(* ldp	x25, x26, [x2, #80]                         #! EA = L0x400018fe18; Value = 0xffffffffffffffff; PC = 0xc48bc *)
mov x25 L0x400018fe18; mov x26 L0x400018fe20;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc48c0 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc48c0 = 0xc48c0;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry30 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry30;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry31 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry31;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry31 = 0@1];
assume (carry - 1)*carry31 = 0 && true;
assert true && uext carry 1 = uext carry30 1 + uext carry31 1;
assume carry = carry30 + carry31 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 14 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x19, x20, [sp, #104]                        #! EA = L0x400018f408; Value = 0x7f436a6516ab56d1; PC = 0xc48c4 *)
mov x19 L0x400018f408; mov x20 L0x400018f410;
(* ldp	x21, x22, [sp, #120]                        #! EA = L0x400018f418; Value = 0xb0a524d9ab75e45f; PC = 0xc48c8 *)
mov x21 L0x400018f418; mov x22 L0x400018f420;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc48cc *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc48cc = 0xc48cc;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry32 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry32;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry33 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry33;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry33 = 0@1];
assume (carry - 1)*carry33 = 0 && true;
assert true && uext carry 1 = uext carry32 1 + uext carry33 1;
assume carry = carry32 + carry33 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* ldr	x2, [sp, #424]                              #! EA = L0x400018f548; Value = 0x000000400018f6e8; PC = 0xc48d0 *)
mov x2 L0x400018f548;
(* stp	x23, x24, [x2, #64]                         #! EA = L0x400018f728; PC = 0xc48d4 *)
mov L0x400018f728 x23; mov L0x400018f730 x24;
(* stp	x25, x26, [x2, #80]                         #! EA = L0x400018f738; PC = 0xc48d8 *)
mov L0x400018f738 x25; mov L0x400018f740 x26;

(* 15 *)
cut eqmod (limbs 64 [L0x400018f728, L0x400018f730, L0x400018f738, L0x400018f740])
          (2**256 *
          (limbs 64 [z1_0,z1_1,z1_2,z1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3])
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [L0x400018f728, L0x400018f730, L0x400018f738, L0x400018f740] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];

(* ldp	x19, x20, [sp, #168]                        #! EA = L0x400018f448; Value = 0x827cfb99d7f9f9bc; PC = 0xc48dc *)
mov x19 L0x400018f448; mov x20 L0x400018f450;
(* ldp	x21, x22, [sp, #184]                        #! EA = L0x400018f458; Value = 0x5fda574280fa84d5; PC = 0xc48e0 *)
mov x21 L0x400018f458; mov x22 L0x400018f460;
(* ldp	x23, x24, [sp, #328]                        #! EA = L0x400018f4e8; Value = 0xdf580e7124ac307d; PC = 0xc48e4 *)
mov x23 L0x400018f4e8; mov x24 L0x400018f4f0;
(* ldp	x25, x26, [sp, #344]                        #! EA = L0x400018f4f8; Value = 0xfb50b2cdb28031fe; PC = 0xc48e8 *)
mov x25 L0x400018f4f8; mov x26 L0x400018f500;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc48ec *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc48ec = 0xc48ec;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry34 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry34;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry35 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry35;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry35 = 0@1];
assume (carry - 1)*carry35 = 0 && true;
assert true && uext carry 1 = uext carry34 1 + uext carry35 1;
assume carry = carry34 + carry35 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #360]                        #! EA = L0x400018f508; PC = 0xc48f0 *)
mov L0x400018f508 x23; mov L0x400018f510 x24;
(* stp	x25, x26, [sp, #376]                        #! EA = L0x400018f518; PC = 0xc48f4 *)
mov L0x400018f518 x25; mov L0x400018f520 x26;

(* 16 *)
cut eqmod (limbs 64 [L0x400018f508, L0x400018f510, L0x400018f518, L0x400018f520])
          (2**256 *
          (limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [7, 11]]
 && limbs 64 [L0x400018f508, L0x400018f510, L0x400018f518, L0x400018f520] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [7, 11]];

(* adds	x19, x23, x23                              #! PC = 0xc48f8 *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc48fc *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc4900 *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc4904 *)
adcs carry38 x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc4908 *)
adc x17 0@uint64 0@uint64 carry38;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc490c *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc4910 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc4914 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc4918 *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc491c *)
sbcs carry39 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc4920 *)
sbcs carry x17 x17 0@uint64 carry39;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry39 = 0@1];
assume (carry - 1)*carry39 = 0 && true;
assert true && uext carry 1 = uext carry38 1 + uext carry39 1;
assume carry = carry38 + carry39 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc4924 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc4928 *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc492c *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc4930 *)
cmov x22 carry x14 x22;

(* 17 *)
cut eqmod (limbs 64 [x19, x20, x21, x22])
          (2**256 *
          2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [x19, x20, x21, x22] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];

(* ldp	x23, x24, [sp, #200]                        #! EA = L0x400018f468; Value = 0x74c117136455006c; PC = 0xc4934 *)
mov x23 L0x400018f468; mov x24 L0x400018f470;
(* ldp	x25, x26, [sp, #216]                        #! EA = L0x400018f478; Value = 0x0960d645f89e8d33; PC = 0xc4938 *)
mov x25 L0x400018f478; mov x26 L0x400018f480;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc493c *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc493c = 0xc493c;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry2 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry2;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc2 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry2;
assume zero = carry2 && true;
assert true && or [dc2 = 1@1, carry2 = 1@1];
assume (dc2 - 1)*(carry2 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;

(* 18 *)
cut eqmod (limbs 64 [x19, x20, x21, x22])
          (2**256 *
          ((limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           -
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [10]]
 && limbs 64 [x19, x20, x21, x22] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [10]];

(* mov	x23, x19                                    #! PC = 0xc4940 *)
mov x23 x19;
(* mov	x24, x20                                    #! PC = 0xc4944 *)
mov x24 x20;
(* mov	x25, x21                                    #! PC = 0xc4948 *)
mov x25 x21;
(* mov	x26, x22                                    #! PC = 0xc494c *)
mov x26 x22;
(* ldp	x19, x20, [sp, #232]                        #! EA = L0x400018f488; Value = 0x3f5f4040beac31d0; PC = 0xc4950 *)
mov x19 L0x400018f488; mov x20 L0x400018f490;
(* ldp	x21, x22, [sp, #248]                        #! EA = L0x400018f498; Value = 0x66792325cc3d5597; PC = 0xc4954 *)
mov x21 L0x400018f498; mov x22 L0x400018f4a0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4958 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4958 = 0xc4958;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry3 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry3;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc3 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry3;
assume zero = carry3 && true;
assert true && or [dc3 = 1@1, carry3 = 1@1];
assume (dc3 - 1)*(carry3 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [x2]                              #! EA = L0x400018f6e8; PC = 0xc495c *)
mov L0x400018f6e8 x19; mov L0x400018f6f0 x20;
(* stp	x21, x22, [x2, #16]                         #! EA = L0x400018f6f8; PC = 0xc4960 *)
mov L0x400018f6f8 x21; mov L0x400018f700 x22;

(* 19 *)
cut eqmod (limbs 64 [L0x400018f6e8, L0x400018f6f0, L0x400018f6f8, L0x400018f700])
          (2**256 *
          ((limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           -
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [12]]
 && limbs 64 [L0x400018f6e8, L0x400018f6f0, L0x400018f6f8, L0x400018f700] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [12]];

(* ldp	x23, x24, [sp, #360]                        #! EA = L0x400018f508; Value = 0xad0dd2a194c51a8a; PC = 0xc4964 *)
mov x23 L0x400018f508; mov x24 L0x400018f510;
(* ldp	x25, x26, [sp, #376]                        #! EA = L0x400018f518; Value = 0x924bcba595071e89; PC = 0xc4968 *)
mov x25 L0x400018f518; mov x26 L0x400018f520;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc496c *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc496c = 0xc496c;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry4 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry4;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc4 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry4;
assume zero = carry4 && true;
assert true && or [dc4 = 1@1, carry4 = 1@1];
assume (dc4 - 1)*(carry4 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;

(* 20 *)
cut eqmod (limbs 64 [x19, x20, x21, x22])
          (2**256 *
          ((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           +
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           +
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [16]]
 && limbs 64 [x19, x20, x21, x22] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [16]];

(* ldp	x23, x24, [sp, #136]                        #! EA = L0x400018f428; Value = 0x7f3ed4753d9effad; PC = 0xc4970 *)
mov x23 L0x400018f428; mov x24 L0x400018f430;
(* ldp	x25, x26, [sp, #152]                        #! EA = L0x400018f438; Value = 0x8f550e86b4187b7d; PC = 0xc4974 *)
mov x25 L0x400018f438; mov x26 L0x400018f440;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4978 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4978 = 0xc4978;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x3 = dcL;
assume x3 = dcL && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x5, x5, x11                                #! PC = 0xc3b30 *)
adcs carry x5 x5 x11 carry;
(* adcs	x6, x6, x12                                #! PC = 0xc3b34 *)
adcs carry x6 x6 x12 carry;
(* adc	x3, x3, xzr                                 #! PC = 0xc3b38 *)
adc x3 x3 0@uint64 carry;
(* mul	x11, x19, x24                               #! PC = 0xc3b3c *)
mull dcH x11 x19 x24;
(* adds	x4, x4, x11                                #! PC = 0xc3b40 *)
adds carry x4 x4 x11;
(* umulh	x12, x19, x24                             #! PC = 0xc3b44 *)
mull x12 dcL x19 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x8, xzr, xzr                                #! PC = 0xc3b6c *)
adc x8 0@uint64 0@uint64 carry;
(* adds	x5, x5, x12                                #! PC = 0xc3b70 *)
adds carry x5 x5 x12;
(* adcs	x6, x6, x13                                #! PC = 0xc3b74 *)
adcs carry x6 x6 x13 carry;
(* adcs	x7, x7, x14                                #! PC = 0xc3b78 *)
adcs carry x7 x7 x14 carry;
(* adc	x8, x8, x17                                 #! PC = 0xc3b7c *)
adc x8 x8 x17 carry;
(* adds	x5, x5, x4, lsl #32                        #! PC = 0xc3b80 *)
split dcH x4_t x4 32; shl x4_t x4_t 32; adds carry x5 x5 x4_t;
(* lsr	x11, x4, #32                                #! PC = 0xc3b84 *)
split x11 dcL x4 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x6, x6, x11                                #! PC = 0xc3b90 *)
adcs carry x6 x6 x11 carry;
(* adcs	x3, x3, x12                                #! PC = 0xc3b94 *)
adcs carry x3 x3 x12 carry;
(* adc	x4, x4, xzr                                 #! PC = 0xc3b98 *)
adc x4 x4 0@uint64 carry;
(* mul	x11, x19, x25                               #! PC = 0xc3b9c *)
mull dcH x11 x19 x25;
(* adds	x5, x5, x11                                #! PC = 0xc3ba0 *)
adds carry x5 x5 x11;
(* umulh	x12, x19, x25                             #! PC = 0xc3ba4 *)
mull x12 dcL x19 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x9, xzr, xzr                                #! PC = 0xc3bcc *)
adc x9 0@uint64 0@uint64 carry;
(* adds	x6, x6, x12                                #! PC = 0xc3bd0 *)
adds carry x6 x6 x12;
(* adcs	x7, x7, x13                                #! PC = 0xc3bd4 *)
adcs carry x7 x7 x13 carry;
(* adcs	x8, x8, x14                                #! PC = 0xc3bd8 *)
adcs carry x8 x8 x14 carry;
(* adc	x9, x9, x17                                 #! PC = 0xc3bdc *)
adc x9 x9 x17 carry;
(* adds	x6, x6, x5, lsl #32                        #! PC = 0xc3be0 *)
split dcH x5_t x5 32; shl x5_t x5_t 32; adds carry x6 x6 x5_t;
(* lsr	x11, x5, #32                                #! PC = 0xc3be4 *)
split x11 dcL x5 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x3, x3, x11                                #! PC = 0xc3bf0 *)
adcs carry x3 x3 x11 carry;
(* adcs	x4, x4, x12                                #! PC = 0xc3bf4 *)
adcs carry x4 x4 x12 carry;
(* adc	x5, x5, xzr                                 #! PC = 0xc3bf8 *)
adc x5 x5 0@uint64 carry;
(* mul	x11, x19, x26                               #! PC = 0xc3bfc *)
mull dcH x11 x19 x26;
(* adds	x6, x6, x11                                #! PC = 0xc3c00 *)
adds carry x6 x6 x11;
(* umulh	x12, x19, x26                             #! PC = 0xc3c04 *)
mull x12 dcL x19 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x11 = dcL;
assume x11 = dcL && true;

(* adc	x10, xzr, xzr                               #! PC = 0xc3c2c *)
adc x10 0@uint64 0@uint64 carry;
(* adds	x7, x7, x12                                #! PC = 0xc3c30 *)
adds carry x7 x7 x12;
(* adcs	x8, x8, x13                                #! PC = 0xc3c34 *)
adcs carry x8 x8 x13 carry;
(* adcs	x9, x9, x14                                #! PC = 0xc3c38 *)
adcs carry x9 x9 x14 carry;
(* adc	x10, x10, x17                               #! PC = 0xc3c3c *)
adc x10 x10 x17 carry;
(* adds	x3, x3, x6, lsl #32                        #! PC = 0xc3c40 *)
split dcH x6_t x6 32; shl x6_t x6_t 32; adds carry x3 x3 x6_t;
(* lsr	x11, x6, #32                                #! PC = 0xc3c44 *)
split x11 dcL x6 32;

(* NOTE: related variables *)
assert true && x11 = dcH;
assume x11 = dcH && true;

(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;

(* NOTE: related variables *)
assert true && x12 = dcL;
assume x12 = dcL && true;

(* adcs	x4, x4, x11                                #! PC = 0xc3c50 *)
adcs carry x4 x4 x11 carry;
(* adcs	x5, x5, x12                                #! PC = 0xc3c54 *)
adcs carry x5 x5 x12 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xc3c58 *)
adc x6 x6 0@uint64 carry;
(* adds	x3, x3, x7                                 #! PC = 0xc3c5c *)
adds carry x3 x3 x7;
(* adcs	x4, x4, x8                                 #! PC = 0xc3c60 *)
adcs carry x4 x4 x8 carry;
(* adcs	x5, x5, x9                                 #! PC = 0xc3c64 *)
adcs carry x5 x5 x9 carry;
(* adcs	x6, x6, x10                                #! PC = 0xc3c68 *)
adcs carry36 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry36;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry37 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry37;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry37 = 0@1];
assume (carry - 1)*carry37 = 0 && true;
assert true && uext carry 1 = uext carry36 1 + uext carry37 1;
assume carry = carry36 + carry37 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 21 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 *
          ((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           +
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           +
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)*
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [6]]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [6]];

(* ldp	x19, x20, [sp, #40]                         #! EA = L0x400018f3c8; Value = 0x19bfedb1b6125a3a; PC = 0xc497c *)
mov x19 L0x400018f3c8; mov x20 L0x400018f3d0;
(* ldp	x21, x22, [sp, #56]                         #! EA = L0x400018f3d8; Value = 0x23938b455f6f0a33; PC = 0xc4980 *)
mov x21 L0x400018f3d8; mov x22 L0x400018f3e0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4984 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4984 = 0xc4984;
(* #! -> SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry5 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry5;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
(* NOTE: don't care *)
adcs dc5 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry5;
assume zero = carry5 && true;
assert true && or [dc5 = 1@1, carry5 = 1@1];
assume (dc5 - 1)*(carry5 - 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x400018f3a0 *)
#! 0x400018f3a0 = 0x400018f3a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [x2, #32]                         #! EA = L0x400018f708; PC = 0xc4988 *)
mov L0x400018f708 x19; mov L0x400018f710 x20;
(* stp	x21, x22, [x2, #48]                         #! EA = L0x400018f718; PC = 0xc498c *)
mov L0x400018f718 x21; mov L0x400018f720 x22;

(* 22 *)
cut eqmod (limbs 64 [L0x400018f708, L0x400018f710, L0x400018f718, L0x400018f720])
          (2**256 *
          (((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
            *
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
            -
            (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
             limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
            +
            2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
            *
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
            +
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
           *
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3) -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [13]]
 && limbs 64 [L0x400018f708, L0x400018f710, L0x400018f718, L0x400018f720] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [13]];

(* mov	x0, x0                                      #! PC = 0xc4990 *)
mov x0 x0;
(* str	x0, [sp, #496]                              #! EA = L0x400018f590; PC = 0xc4994 *)
mov L0x400018f590 x0;
(* ldur	x29, [sp, #-8]                             #! EA = L0x400018f398; Value = 0x000000400018f538; PC = 0xc4998 *)
mov x29 L0x400018f398;
(* ldr	x30, [sp]                                   #! EA = L0x400018f3a0; Value = 0x00000000000c1c8c; PC = 0xc499c *)
mov x30 L0x400018f3a0;
(* add	sp, sp, #0x1a0                              #! PC = 0xc49a0 *)
adds dc sp sp 0x1a0@uint64;
(* #! <- SP = 0x400018f540 *)
#! 0x400018f540 = 0x400018f540;
(* #ret                                            #! PC = 0xc49a4 *)
#ret                                            #! 0xc49a4 = 0xc49a4;

mov x3_0 L0x400018f6e8; mov x3_1 L0x400018f6f0;
mov x3_2 L0x400018f6f8; mov x3_3 L0x400018f700;
mov y3_0 L0x400018f708; mov y3_1 L0x400018f710;
mov y3_2 L0x400018f718; mov y3_3 L0x400018f720;
mov z3_0 L0x400018f728; mov z3_1 L0x400018f730;
mov z3_2 L0x400018f738; mov z3_3 L0x400018f740;


ghost X1@uint256, Y1@uint256, Z1@uint256,
      X2@uint256, Y2@uint256, Z2@uint256:
  and [
    X1 = limbs 64 [x1_0, x1_1, x1_2, x1_3],
    Y1 = limbs 64 [y1_0, y1_1, y1_2, y1_3],
    Z1 = limbs 64 [z1_0, z1_1, z1_2, z1_3],
    X2 = limbs 64 [x2_0, x2_1, x2_2, x2_3],
    Y2 = limbs 64 [y2_0, y2_1, y2_2, y2_3],
    Z2 = limbs 64 [z2_0, z2_1, z2_2, z2_3]
  ]
  &&
  true;


(* Spec w.r.t. https://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#addition-add-1998-cmo-2 *)

ghost Z1Z1@uint256, Z2Z2@uint256, U1@uint256, U2@uint256, 
      S1@uint256, S2@uint256, H@uint256, HH@uint256, HHH@uint256, 
      r@uint256, V@uint256, X3@uint256, Y3@uint256, Z3@uint256:
  and [
    Z1Z1 = Z1 * Z1,
    Z2Z2 = Z2 * Z2,
    U1 = X1 * Z2Z2,
    U2 = X2 * Z1Z1,
    S1 = Y1 * Z2 * Z2Z2,
    S2 = Y2 * Z1 * Z1Z1,
    H = U2 - U1,
    HH = H * H,
    HHH = H * HH,
    r = S2 - S1,
    V = U1 * HH,
    X3 = r * r - HHH - 2 * V,
    Y3 = r * (V - X3) - S1 * HHH,
    Z3 = Z1 * Z2 * H
  ]
  && 
  true;
  
{
  and [
    eqmod (limbs 64 [x3_0, x3_1, x3_2, x3_3])
          (2**256 * X3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [y3_0, y3_1, y3_2, y3_3])
          (2**256 * Y3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [z3_0, z3_1, z3_2, z3_3])
          (2**256 * Z3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
  ] prove with [ cuts [15, 19, 22] ]
&&
  and [limbs 64 [x3_0, x3_1, x3_2, x3_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [y3_0, y3_1, y3_2, y3_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [z3_0, z3_1, z3_2, z3_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
  ] prove with [ cuts [15, 19, 22] ]
}

