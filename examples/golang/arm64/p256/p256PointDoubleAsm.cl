(* macbook: cv -v -jobs 8 -slicing -isafety p256PointDoubleAsm.cl
Parsing CryptoLine file:			[OK]		0.0115 seconds
Checking well-formedness:			[OK]		0.0039 seconds

Procedure main
--------------
Transforming to SSA form:			[OK]		0.0009 seconds
Normalizing specification:			[OK]		0.0021 seconds
Rewriting assignments:				[OK]		0.0010 seconds
Verifying program safety:			
	Overall					[OK]		25.5125 seconds
Verifying range assertions:			[OK]		12.4160 seconds
Verifying range specification:			[OK]		89.9947 seconds
Rewriting value-preserved casting:		[OK]		0.0003 seconds
Verifying algebraic assertions:			[OK]		0.0020 seconds
Verifying algebraic specification:		[OK]		1.0203 seconds
Procedure verification:				[OK]		128.9509 seconds

Summary
-------
Verification result:				[OK]		128.9666 seconds
*)

const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 xR_0, uint64 xR_1, uint64 xR_2, uint64 xR_3,
           uint64 yR_0, uint64 yR_1, uint64 yR_2, uint64 yR_3,
           uint64 zR_0, uint64 zR_1, uint64 zR_2, uint64 zR_3) =
{
  true
&&
  and [limbs 64 [xR_0,xR_1,xR_2,xR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [yR_0,yR_1,yR_2,yR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [zR_0,zR_1,zR_2,zR_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64]]
}

ghost x_0@uint64, x_1@uint64, x_2@uint64, x_3@uint64,
      y_0@uint64, y_1@uint64, y_2@uint64, y_3@uint64,
      z_0@uint64, z_1@uint64, z_2@uint64, z_3@uint64 :
      and [eqmod (limbs 64 [xR_0, xR_1, xR_2, xR_3])
                 (2**256 * limbs 64 [x_0, x_1, x_2, x_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
           eqmod (limbs 64 [yR_0, yR_1, yR_2, yR_3])
                 (2**256 * limbs 64 [y_0, y_1, y_2, y_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
           eqmod (limbs 64 [zR_0, zR_1, zR_2, zR_3])
                 (2**256 * limbs 64 [z_0, z_1, z_2, z_3])
                 (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3])] && true;

mov L0x4000057dc8 xR_0; mov L0x4000057dd0 xR_1;
mov L0x4000057dd8 xR_2; mov L0x4000057de0 xR_3;
mov L0x4000057de8 yR_0; mov L0x4000057df0 yR_1;
mov L0x4000057df8 yR_2; mov L0x4000057e00 yR_3;
mov L0x4000057e08 zR_0; mov L0x4000057e10 zR_1;
mov L0x4000057e18 zR_2; mov L0x4000057e20 zR_3;

mov L0x129658 $P256_1@uint64;
mov L0x129660 $P256_3@uint64;

nondet sp@uint64; nondet x27@uint64; nondet x29@uint64; nondet x30@uint64; 
nondet L0x4000057548@uint64; nondet L0x4000057560@uint64;

(* #! -> SP = 0x4000057540 *)
#! 0x4000057540 = 0x4000057540;
(* str	x30, [sp, #-160]!                           #! EA = L0x40000574a0; PC = 0xc4400 *)
mov L0x40000574a0 x30;
(* stur	x29, [sp, #-8]                             #! EA = L0x4000057498; PC = 0xc4404 *)
mov L0x4000057498 x29;
(* sub	x29, sp, #0x8                               #! PC = 0xc4408 *)
subs dc x29 sp 0x8@uint64;
(* ldr	x0, [sp, #168]                              #! EA = L0x4000057548; Value = 0x00000040000576e8; PC = 0xc440c *)
mov x0 L0x4000057548;
(* ldr	x1, [sp, #192]                              #! EA = L0x4000057560; Value = 0x0000004000057dc8; PC = 0xc4410 *)
mov x1 L0x4000057560;
(* add	x27, x27, #0x658                            #! PC = 0xc4418 *)
adds dc x27 x27 0x658@uint64;
(* ldr	x15, [x27]                                  #! EA = L0x129658; Value = 0x00000000ffffffff; PC = 0xc441c *)
mov x15 L0x129658;
(* add	x27, x27, #0x660                            #! PC = 0xc4424 *)
adds dc x27 x27 0x660@uint64;
(* ldr	x16, [x27]                                  #! EA = L0x129660; Value = 0xffffffff00000001; PC = 0xc4428 *)
mov x16 L0x129660;
(* ldp	x19, x20, [x1, #64]                         #! EA = L0x4000057e08; Value = 0x0000000000000001; PC = 0xc442c *)
mov x19 L0x4000057e08; mov x20 L0x4000057e10;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x4000057e18; Value = 0xffffffffffffffff; PC = 0xc4430 *)
mov x21 L0x4000057e18; mov x22 L0x4000057e20;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4434 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4434 = 0xc4434;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x9 = dcH;
assume x9 = dcH && true;

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
assert true && x11 = dcH;
assume x11 = dcH && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry0 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry0;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry1 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry1;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry1 = 0@1];
assume (carry - 1)*carry1 = 0 && true;
assert true && uext carry 1 = uext carry0 1 + uext carry1 1;
assume carry = carry0 + carry1 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #72]                         #! EA = L0x40000574e8; PC = 0xc4438 *)
mov L0x40000574e8 x23; mov L0x40000574f0 x24;
(* stp	x25, x26, [sp, #88]                         #! EA = L0x40000574f8; PC = 0xc443c *)
mov L0x40000574f8 x25; mov L0x4000057500 x26;

(* 0 *)
cut eqmod (limbs 64 [L0x40000574e8, L0x40000574f0, L0x40000574f8, L0x4000057500])
          (2**256 * (limbs 64 [z_0, z_1, z_2, z_3])**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x40000574e8, L0x40000574f0, L0x40000574f8, L0x4000057500] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x19, x20, [x1]                              #! EA = L0x4000057dc8; Value = 0x4ee5f8e3ffacff77; PC = 0xc4440 *)
mov x19 L0x4000057dc8; mov x20 L0x4000057dd0;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0x4000057dd8; Value = 0x42857eb1dc4dccb1; PC = 0xc4444 *)
mov x21 L0x4000057dd8; mov x22 L0x4000057de0;
(* adds	x19, x19, x23                              #! PC = 0xc4448 *)
adds carry x19 x19 x23;
(* adcs	x20, x20, x24                              #! PC = 0xc444c *)
adcs carry x20 x20 x24 carry;
(* adcs	x21, x21, x25                              #! PC = 0xc4450 *)
adcs carry x21 x21 x25 carry;
(* adcs	x22, x22, x26                              #! PC = 0xc4454 *)
adcs carry2 x22 x22 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc4458 *)
adc x17 0@uint64 0@uint64 carry2;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc445c *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc4460 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc4464 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc4468 *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc446c *)
sbcs carry3 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc4470 *)
sbcs carry x17 x17 0@uint64 carry3;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry3 = 0@1];
assume (carry - 1)*carry3 = 0 && true;
assert true && uext carry 1 = uext carry2 1 + uext carry3 1;
assume carry = carry2 + carry3 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc4474 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc4478 *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc447c *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc4480 *)
cmov x22 carry x14 x22;
(* stp	x19, x20, [sp, #40]                         #! EA = L0x40000574c8; PC = 0xc4484 *)
mov L0x40000574c8 x19; mov L0x40000574d0 x20;
(* stp	x21, x22, [sp, #56]                         #! EA = L0x40000574d8; PC = 0xc4488 *)
mov L0x40000574d8 x21; mov L0x40000574e0 x22;

(* 1 *)
cut eqmod (limbs 64 [L0x40000574c8, L0x40000574d0, L0x40000574d8, L0x40000574e0])
          (2**256*(limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x40000574c8, L0x40000574d0, L0x40000574d8, L0x40000574e0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x19, x20, [x1, #64]                         #! EA = L0x4000057e08; Value = 0x0000000000000001; PC = 0xc448c *)
mov x19 L0x4000057e08; mov x20 L0x4000057e10;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x4000057e18; Value = 0xffffffffffffffff; PC = 0xc4490 *)
mov x21 L0x4000057e18; mov x22 L0x4000057e20;
(* ldp	x23, x24, [x1, #32]                         #! EA = L0x4000057de8; Value = 0x65539690f3f15509; PC = 0xc4494 *)
mov x23 L0x4000057de8; mov x24 L0x4000057df0;
(* ldp	x25, x26, [x1, #48]                         #! EA = L0x4000057df8; Value = 0xdb0e41600c1d22c6; PC = 0xc4498 *)
mov x25 L0x4000057df8; mov x26 L0x4000057e00;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc449c *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc449c = 0xc449c;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x4 = dcH;
assume x4 = dcH && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry4 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry4;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry5 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry5;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry5 = 0@1];
assume (carry - 1)*carry5 = 0 && true;
assert true && uext carry 1 = uext carry4 1 + uext carry5 1;
assume carry = carry4 + carry5 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 2 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * limbs 64 [y_0,y_1,y_2,y_3] * limbs 64 [z_0,z_1,z_2,z_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* adds	x19, x23, x23                              #! PC = 0xc44a0 *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc44a4 *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc44a8 *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc44ac *)
adcs carry6 x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc44b0 *)
adc x17 0@uint64 0@uint64 carry6;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc44b4 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc44b8 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc44bc *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc44c0 *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc44c4 *)
sbcs carry7 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc44c8 *)
sbcs carry x17 x17 0@uint64 carry7;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry7 = 0@1];
assume (carry - 1)*carry7 = 0 && true;
assert true && uext carry 1 = uext carry6 1 + uext carry7 1;
assume carry = carry6 + carry7 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc44cc *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc44d0 *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc44d4 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc44d8 *)
cmov x22 carry x14 x22;
(* stp	x19, x20, [x0, #64]                         #! EA = L0x4000057728; PC = 0xc44dc *)
mov L0x4000057728 x19; mov L0x4000057730 x20;
(* stp	x21, x22, [x0, #80]                         #! EA = L0x4000057738; PC = 0xc44e0 *)
mov L0x4000057738 x21; mov L0x4000057740 x22;

(* 3 *)
cut eqmod (limbs 64 [L0x4000057728, L0x4000057730, L0x4000057738, L0x4000057740])
          (2 * 2**256 * limbs 64 [y_0,y_1,y_2,y_3] * limbs 64 [z_0,z_1,z_2,z_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x4000057728, L0x4000057730, L0x4000057738, L0x4000057740] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x23, x24, [x1]                              #! EA = L0x4000057dc8; Value = 0x4ee5f8e3ffacff77; PC = 0xc44e4 *)
mov x23 L0x4000057dc8; mov x24 L0x4000057dd0;
(* ldp	x25, x26, [x1, #16]                         #! EA = L0x4000057dd8; Value = 0x42857eb1dc4dccb1; PC = 0xc44e8 *)
mov x25 L0x4000057dd8; mov x26 L0x4000057de0;
(* ldp	x19, x20, [sp, #72]                         #! EA = L0x40000574e8; Value = 0x0000000000000001; PC = 0xc44ec *)
mov x19 L0x40000574e8; mov x20 L0x40000574f0;
(* ldp	x21, x22, [sp, #88]                         #! EA = L0x40000574f8; Value = 0xffffffffffffffff; PC = 0xc44f0 *)
mov x21 L0x40000574f8; mov x22 L0x4000057500;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc44f4 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc44f4 = 0xc44f4;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry8 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry8;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adcs dc9 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry8;
assume zero = carry8 && true;
(* assert true && or [dc9 = 1@1, carry8 = 1@1]; *)
(* assert true && (dc9 - 1@1)*(carry8 - 1@1) = 0@1; *)
assume (dc9- 1)*(carry8- 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;

(* 4 *)
cut eqmod (limbs 64 [x19, x20, x21, x22])
          (2**256 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [0] ]
 && limbs 64 [x19, x20, x21, x22] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [0] ];

(* ldp	x23, x24, [sp, #40]                         #! EA = L0x40000574c8; Value = 0x4ee5f8e3ffacff78; PC = 0xc44f8 *)
mov x23 L0x40000574c8; mov x24 L0x40000574d0;
(* ldp	x25, x26, [sp, #56]                         #! EA = L0x40000574d8; Value = 0x42857eb1dc4dccb1; PC = 0xc44fc *)
mov x25 L0x40000574d8; mov x26 L0x40000574e0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4500 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4500 = 0xc4500;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x4 = dcH;
assume x4 = dcH && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry10 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry10;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry11 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry11;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry11 = 0@1];
assume (carry - 1)*carry11 = 0 && true;
assert true && uext carry 1 = uext carry10 1 + uext carry11 1;
assume carry = carry10 + carry11 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 5 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                   (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [1] ]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [1] ];

(* adds	x19, x23, x23                              #! PC = 0xc4504 *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc4508 *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc450c *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc4510 *)
adcs carry12 x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc4514 *)
adc x17 0@uint64 0@uint64 carry12;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc4518 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc451c *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc4520 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc4524 *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc4528 *)
sbcs carry13 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc452c *)
sbcs carry x17 x17 0@uint64 carry13;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry13 = 0@1];
assume (carry - 1)*carry13 = 0 && true;
assert true && uext carry 1 = uext carry12 1 + uext carry13 1;
assume carry = carry12 + carry13 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc4530 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc4534 *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc4538 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc453c *)
cmov x22 carry x14 x22;
(* adds	x19, x19, x23                              #! PC = 0xc4540 *)
adds carry x19 x19 x23;
(* adcs	x20, x20, x24                              #! PC = 0xc4544 *)
adcs carry x20 x20 x24 carry;
(* adcs	x21, x21, x25                              #! PC = 0xc4548 *)
adcs carry x21 x21 x25 carry;
(* adcs	x22, x22, x26                              #! PC = 0xc454c *)
adcs carry14 x22 x22 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc4550 *)
adc x17 0@uint64 0@uint64 carry14;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc4554 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc4558 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc455c *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc4560 *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc4564 *)
sbcs carry15 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc4568 *)
sbcs carry x17 x17 0@uint64 carry15;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry15 = 0@1];
assume (carry - 1)*carry15 = 0 && true;
assert true && uext carry 1 = uext carry14 1 + uext carry15 1;
assume carry = carry14 + carry15 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc456c *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc4570 *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc4574 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc4578 *)
cmov x22 carry x14 x22;
(* stp	x19, x20, [sp, #40]                         #! EA = L0x40000574c8; PC = 0xc457c *)
mov L0x40000574c8 x19; mov L0x40000574d0 x20;
(* stp	x21, x22, [sp, #56]                         #! EA = L0x40000574d8; PC = 0xc4580 *)
mov L0x40000574d8 x21; mov L0x40000574e0 x22;

(* 6 *)
cut eqmod (limbs 64 [L0x40000574c8, L0x40000574d0, L0x40000574d8, L0x40000574e0])
          (2**256 *3*(limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                    (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x40000574c8, L0x40000574d0, L0x40000574d8, L0x40000574e0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x23, x24, [x1, #32]                         #! EA = L0x4000057de8; Value = 0x65539690f3f15509; PC = 0xc4584 *)
mov x23 L0x4000057de8; mov x24 L0x4000057df0;
(* ldp	x25, x26, [x1, #48]                         #! EA = L0x4000057df8; Value = 0xdb0e41600c1d22c6; PC = 0xc4588 *)
mov x25 L0x4000057df8; mov x26 L0x4000057e00;
(* adds	x19, x23, x23                              #! PC = 0xc458c *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc4590 *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc4594 *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc4598 *)
adcs carry16 x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc459c *)
adc x17 0@uint64 0@uint64 carry16;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc45a0 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc45a4 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc45a8 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc45ac *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc45b0 *)
sbcs carry17 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc45b4 *)
sbcs carry x17 x17 0@uint64 carry17;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry17 = 0@1];
assume (carry - 1)*carry17 = 0 && true;
assert true && uext carry 1 = uext carry16 1 + uext carry17 1;
assume carry = carry16 + carry17 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc45b8 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc45bc *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc45c0 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc45c4 *)
cmov x22 carry x14 x22;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc45c8 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc45c8 = 0xc45c8;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x9 = dcH;
assume x9 = dcH && true;

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
assert true && x11 = dcH;
assume x11 = dcH && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry18 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry18;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry19 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry19;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry19 = 0@1];
assume (carry - 1)*carry19 = 0 && true;
assert true && uext carry 1 = uext carry18 1 + uext carry19 1;
assume carry = carry18 + carry19 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #8]                          #! EA = L0x40000574a8; PC = 0xc45cc *)
mov L0x40000574a8 x23; mov L0x40000574b0 x24;
(* stp	x25, x26, [sp, #24]                         #! EA = L0x40000574b8; PC = 0xc45d0 *)
mov L0x40000574b8 x25; mov L0x40000574c0 x26;

(* 7 *)
cut eqmod (limbs 64 [L0x40000574a8, L0x40000574b0, L0x40000574b8, L0x40000574c0])
          (2**256 * 4 * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x40000574a8, L0x40000574b0, L0x40000574b8, L0x40000574c0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* mov	x19, x23                                    #! PC = 0xc45d4 *)
mov x19 x23;
(* mov	x20, x24                                    #! PC = 0xc45d8 *)
mov x20 x24;
(* mov	x21, x25                                    #! PC = 0xc45dc *)
mov x21 x25;
(* mov	x22, x26                                    #! PC = 0xc45e0 *)
mov x22 x26;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc45e4 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc45e4 = 0xc45e4;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x9 = dcH;
assume x9 = dcH && true;

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
assert true && x11 = dcH;
assume x11 = dcH && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry20 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry20;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry21 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry21;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry21 = 0@1];
assume (carry - 1)*carry21 = 0 && true;
assert true && uext carry 1 = uext carry20 1 + uext carry21 1;
assume carry = carry20 + carry21 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;

(* 8 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 * 16 * limbs 64 [y_0,y_1,y_2,y_3]**4)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

ghost x23o@uint64, x24o@uint64, x25o@uint64, x26o@uint64 :
      and [x23o=x23, x24o=x24, x25o=x25, x26o=x26]
   && and [x23o=x23, x24o=x24, x25o=x25, x26o=x26];

(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc45e8 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x11, x23, x27                              #! PC = 0xc45ec *)
adds carry x11 x23 x27;
(* adcs	x12, x24, x15                              #! PC = 0xc45f0 *)
adcs carry x12 x24 x15 carry;
(* adcs	x13, x25, xzr                              #! PC = 0xc45f4 *)
adcs carry x13 x25 0@uint64 carry;
(* adcs	x14, x26, x16                              #! PC = 0xc45f8 *)
adcs carry x14 x26 x16 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc45fc *)
adc x17 0@uint64 0@uint64 carry;
(* tst	x23, #0x1                                   #! PC = 0xc4600 *)
(* and tst_t@uint64 x23 0x1@uint64; subc zero dc 0@uint64 tst_t; *)
(* NOTE: manual translation *)
split dc tst_t x23 1; subc zero dc 0@uint64 tst_t;
(* csel	x11, x23, x11, eq  // eq = none            #! PC = 0xc4604 *)
cmov x11 zero x23 x11;
(* csel	x12, x24, x12, eq  // eq = none            #! PC = 0xc4608 *)
cmov x12 zero x24 x12;
(* csel	x13, x25, x13, eq  // eq = none            #! PC = 0xc460c *)
cmov x13 zero x25 x13;
(* csel	x14, x26, x14, eq  // eq = none            #! PC = 0xc4610 *)
cmov x14 zero x26 x14;
(* and	x17, x17, x23                               #! PC = 0xc4614 *)
(* and x17@uint64 x17 x23; *)
(* NOTE: manual translation *)
subc z dc 0@uint64 x17; cmov x17 z 0@uint64 tst_t;
(* extr	x23, x12, x11, #1                          #! PC = 0xc4618 *)
spl dc extr_H x12 1; spl extr_L dc x11 1; join x23 extr_H extr_L;
(* extr	x24, x13, x12, #1                          #! PC = 0xc461c *)
spl dc extr_H x13 1; spl extr_L dc x12 1; join x24 extr_H extr_L;
(* extr	x25, x14, x13, #1                          #! PC = 0xc4620 *)
spl dc extr_H x14 1; spl extr_L dc x13 1; join x25 extr_H extr_L;
(* extr	x26, x17, x14, #1                          #! PC = 0xc4624 *)
spl dc extr_H x17 1; spl extr_L dc x14 1; join x26 extr_H extr_L;
(* stp	x23, x24, [x0, #32]                         #! EA = L0x4000057708; PC = 0xc4628 *)
mov L0x4000057708 x23; mov L0x4000057710 x24;
(* stp	x25, x26, [x0, #48]                         #! EA = L0x4000057718; PC = 0xc462c *)
mov L0x4000057718 x25; mov L0x4000057720 x26;

assert true
    && eqmod (2@320 *
             limbs 64 [x23, x24, x25, x26, 0@64])
             (limbs 64 [x23o, x24o, x25o, x26o, 0@64])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (2 * limbs 64 [x23, x24, x25, x26])
             (limbs 64 [x23o, x24o, x25o, x26o])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    && true;

(* 9 *)
cut eqmod (limbs 64 [L0x4000057708, L0x4000057710, L0x4000057718, L0x4000057720])
          (2**256 * 8 * limbs 64 [y_0,y_1,y_2,y_3]**4)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x4000057708, L0x4000057710, L0x4000057718, L0x4000057720] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x19, x20, [x1]                              #! EA = L0x4000057dc8; Value = 0x4ee5f8e3ffacff77; PC = 0xc4630 *)
mov x19 L0x4000057dc8; mov x20 L0x4000057dd0;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0x4000057dd8; Value = 0x42857eb1dc4dccb1; PC = 0xc4634 *)
mov x21 L0x4000057dd8; mov x22 L0x4000057de0;
(* ldp	x23, x24, [sp, #8]                          #! EA = L0x40000574a8; Value = 0xd49a76e1ceede5c8; PC = 0xc4638 *)
mov x23 L0x40000574a8; mov x24 L0x40000574b0;
(* ldp	x25, x26, [sp, #24]                         #! EA = L0x40000574b8; Value = 0xbc6d76acb0c36090; PC = 0xc463c *)
mov x25 L0x40000574b8; mov x26 L0x40000574c0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4640 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4640 = 0xc4640;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x4 = dcH;
assume x4 = dcH && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #8]                          #! EA = L0x40000574a8; PC = 0xc4644 *)
mov L0x40000574a8 x23; mov L0x40000574b0 x24;
(* stp	x25, x26, [sp, #24]                         #! EA = L0x40000574b8; PC = 0xc4648 *)
mov L0x40000574b8 x25; mov L0x40000574c0 x26;

(* 10 *)
cut eqmod (limbs 64 [L0x40000574a8, L0x40000574b0, L0x40000574b8, L0x40000574c0])
          (2**256 * 4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [7] ]
 && limbs 64 [L0x40000574a8, L0x40000574b0, L0x40000574b8, L0x40000574c0] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [7] ];

(* adds	x19, x23, x23                              #! PC = 0xc464c *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc4650 *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc4654 *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc4658 *)
adcs carry24 x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc465c *)
adc x17 0@uint64 0@uint64 carry24;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc4660 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc4664 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc4668 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc466c *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc4670 *)
sbcs carry25 x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc4674 *)
sbcs carry x17 x17 0@uint64 carry25;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry25 = 0@1];
assume (carry - 1)*carry25 = 0 && true;
assert true && uext carry 1 = uext carry24 1 + uext carry25 1;
assume carry = carry24 + carry25 && true;

(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc4678 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc467c *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc4680 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc4684 *)
cmov x22 carry x14 x22;
(* stp	x19, x20, [sp, #104]                        #! EA = L0x4000057508; PC = 0xc4688 *)
mov L0x4000057508 x19; mov L0x4000057510 x20;
(* stp	x21, x22, [sp, #120]                        #! EA = L0x4000057518; PC = 0xc468c *)
mov L0x4000057518 x21; mov L0x4000057520 x22;

(* 11 *)
cut eqmod (limbs 64 [L0x4000057508, L0x4000057510, L0x4000057518, L0x4000057520])
          (2**256 * 8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [L0x4000057508, L0x4000057510, L0x4000057518, L0x4000057520] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];

(* ldp	x19, x20, [sp, #40]                         #! EA = L0x40000574c8; Value = 0xace92713dfbddb64; PC = 0xc4690 *)
mov x19 L0x40000574c8; mov x20 L0x40000574d0;
(* ldp	x21, x22, [sp, #56]                         #! EA = L0x40000574d8; Value = 0xbb60517a73b6b82c; PC = 0xc4694 *)
mov x21 L0x40000574d8; mov x22 L0x40000574e0;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4698 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4698 = 0xc4698;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;

(* NOTE: related variables *)
assert true && x9 = dcH;
assume x9 = dcH && true;

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
assert true && x11 = dcH;
assume x11 = dcH && true;

(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;

(* NOTE: related variables *)
assert true && x12 = dcH;
assume x12 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
adcs carry26 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry26;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry27 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry27;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry27 = 0@1];
assume (carry - 1)*carry27 = 0 && true;
assert true && uext carry 1 = uext carry26 1 + uext carry27 1;
assume carry = carry26 + carry27 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;

(* 12 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 *
          9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
               (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [6] ]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [6] ];

(* ldp	x19, x20, [sp, #104]                        #! EA = L0x4000057508; Value = 0x480968ea96e9c714; PC = 0xc469c *)
mov x19 L0x4000057508; mov x20 L0x4000057510;
(* ldp	x21, x22, [sp, #120]                        #! EA = L0x4000057518; Value = 0x5bd3ec6b4d3a67a6; PC = 0xc46a0 *)
mov x21 L0x4000057518; mov x22 L0x4000057520;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc46a4 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc46a4 = 0xc46a4;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry28 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry28;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adcs dc29 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry28;
assume zero = carry28 && true;
(* assert true && or [dc29 = 1@1, carry28 = 1@1]; *)
(* assert true && (dc29 - 1@1)*(carry28 - 1@1) = 0@1; *)
assume (dc29- 1)*(carry28- 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [x0]                              #! EA = L0x40000576e8; PC = 0xc46a8 *)
mov L0x40000576e8 x19; mov L0x40000576f0 x20;
(* stp	x21, x22, [x0, #16]                         #! EA = L0x40000576f8; PC = 0xc46ac *)
mov L0x40000576f8 x21; mov L0x4000057700 x22;

(* 13 *)
cut eqmod (limbs 64 [L0x40000576e8, L0x40000576f0, L0x40000576f8, L0x4000057700])
          (2**256 *
          (9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 -
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [11] ]
 && limbs 64 [L0x40000576e8, L0x40000576f0, L0x40000576f8, L0x4000057700] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [11] ];

(* ldp	x23, x24, [sp, #8]                          #! EA = L0x40000574a8; Value = 0x2404b4754b74e38a; PC = 0xc46b0 *)
mov x23 L0x40000574a8; mov x24 L0x40000574b0;
(* ldp	x25, x26, [sp, #24]                         #! EA = L0x40000574b8; Value = 0xade9f635a69d33d3; PC = 0xc46b4 *)
mov x25 L0x40000574b8; mov x26 L0x40000574c0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc46b8 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc46b8 = 0xc46b8;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry30 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry30;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adcs dc31 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry30;
assume zero = carry30 && true;
(* assert true && or [dc31 = 1@1, carry30 = 1@1]; *)
(* assert true && (dc31 - 1@1)*(carry30 - 1@1) = 0@1; *)
assume (dc31- 1)*(carry30- 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;

(* 14 *)
cut eqmod (limbs 64 [x19, x20, x21, x22])
          (2**256 *
          (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
           9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [10] ]
 && limbs 64 [x19, x20, x21, x22] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [10] ];

(* ldp	x23, x24, [sp, #40]                         #! EA = L0x40000574c8; Value = 0xace92713dfbddb64; PC = 0xc46bc *)
mov x23 L0x40000574c8; mov x24 L0x40000574d0;
(* ldp	x25, x26, [sp, #56]                         #! EA = L0x40000574d8; Value = 0xbb60517a73b6b82c; PC = 0xc46c0 *)
mov x25 L0x40000574d8; mov x26 L0x40000574e0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc46c4 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc46c4 = 0xc46c4;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;

(* NOTE: related variables *)
assert true && x4 = dcH;
assume x4 = dcH && true;

(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;

(* NOTE: related variables *)
assert true && x5 = dcH;
assume x5 = dcH && true;

(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;

(* NOTE: related variables *)
assert true && x6 = dcH;
assume x6 = dcH && true;

(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;

(* NOTE: related variables *)
assert true && x7 = dcH;
assume x7 = dcH && true;

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
assert true && x3 = dcH;
assume x3 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x4 = dcH;
assume x4 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x5 = dcH;
assume x5 = dcH && true;

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
assert true && x12 = dcH;
assume x12 = dcH && true;

(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;

(* NOTE: related variables *)
assert true && x13 = dcH;
assume x13 = dcH && true;

(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;

(* NOTE: related variables *)
assert true && x14 = dcH;
assume x14 = dcH && true;

(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;

(* NOTE: related variables *)
assert true && x17 = dcH;
assume x17 = dcH && true;

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
assert true && x6 = dcH;
assume x6 = dcH && true;

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
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;

(* 15 *)
cut eqmod (limbs 64 [x23, x24, x25, x26])
          (2**256 *
          3 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
              (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2) *
          (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
           9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
           8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [6] ]
 && limbs 64 [x23, x24, x25, x26] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [6] ];

(* ldp	x19, x20, [x0, #32]                         #! EA = L0x4000057708; Value = 0xf9e14c4b774666aa; PC = 0xc46c8 *)
mov x19 L0x4000057708; mov x20 L0x4000057710;
(* ldp	x21, x22, [x0, #48]                         #! EA = L0x4000057718; Value = 0x277b36e370b8af63; PC = 0xc46cc *)
mov x21 L0x4000057718; mov x22 L0x4000057720;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc46d0 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc46d0 = 0xc46d0;
(* #! -> SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry34 x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry34;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adcs dc35 x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;

(* NOTE: more identities *)
assert true && zero = carry34;
assume zero = carry34 && true;
(* assert true && or [dc35 = 1@1, carry34 = 1@1]; *)
(* assert true && (dc35 - 1@1)*(carry34 - 1@1) = 0@1; *)
assume (dc35- 1)*(carry34- 1)= 0 && true;

(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x40000574a0 *)
#! 0x40000574a0 = 0x40000574a0;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [x0, #32]                         #! EA = L0x4000057708; PC = 0xc46d4 *)
mov L0x4000057708 x19; mov L0x4000057710 x20;
(* stp	x21, x22, [x0, #48]                         #! EA = L0x4000057718; PC = 0xc46d8 *)
mov L0x4000057718 x21; mov L0x4000057720 x22;
(* ldur	x29, [sp, #-8]                             #! EA = L0x4000057498; Value = 0x0000004000057538; PC = 0xc46dc *)
mov x29 L0x4000057498;
(* ldr	x30, [sp], #160                             #! EA = L0x40000574a0; Value = 0x00000000000c1b90; PC = 0xc46e0 *)
mov x30 L0x40000574a0;
(* #! <- SP = 0x4000057540 *)
#! 0x4000057540 = 0x4000057540;
(* #ret                                            #! PC = 0xc46e4 *)
#ret                                            #! 0xc46e4 = 0xc46e4;

(* 16 *)
cut eqmod (limbs 64 [L0x4000057708, L0x4000057710, L0x4000057718, L0x4000057720])
          (2**256 *
          (3 * (limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
               (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2) *
           (4 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2 -
            9 * ((limbs 64 [x_0,x_1,x_2,x_3] - limbs 64 [z_0,z_1,z_2,z_3]**2) *
                 (limbs 64 [x_0,x_1,x_2,x_3] + limbs 64 [z_0,z_1,z_2,z_3]**2))**2 +
            8 * limbs 64 [x_0, x_1, x_2, x_3] * limbs 64 [y_0,y_1,y_2,y_3]**2) -
            8 * limbs 64 [y_0,y_1,y_2,y_3]**4))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts, cuts [9] ]
 && limbs 64 [L0x4000057708, L0x4000057710, L0x4000057718, L0x4000057720] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition, cuts [9] ];

mov rx_0 L0x40000576e8; mov rx_1 L0x40000576f0;
mov rx_2 L0x40000576f8; mov rx_3 L0x4000057700;
mov ry_0 L0x4000057708; mov ry_1 L0x4000057710;
mov ry_2 L0x4000057718; mov ry_3 L0x4000057720;
mov rz_0 L0x4000057728; mov rz_1 L0x4000057730;
mov rz_2 L0x4000057738; mov rz_3 L0x4000057740;


ghost X1@uint256, Y1@uint256, Z1@uint256, a@uint256:
  and [
    X1 = limbs 64 [x_0, x_1, x_2, x_3],
    Y1 = limbs 64 [y_0, y_1, y_2, y_3],
    Z1 = limbs 64 [z_0, z_1, z_2, z_3],
    a = -3
  ]
  &&
  true;

(*https://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#doubling-dbl-1998-cmo-2*)

ghost XX@uint256, YY@uint256, ZZ@uint256, S@uint256, 
      M@uint256, T@uint256, XR@uint256, YR@uint256, ZR@uint256:
  and [
      XX = X1 * X1,
      YY = Y1 * Y1,
      ZZ = Z1 * Z1,
      S = 4 * X1 * YY,
      M = 3*XX + a*ZZ**2,
      T = M * M - 2*S,
      XR = T,
      YR = M*(S-T) - 8*YY**2,
      ZR = 2*Y1*Z1
      ]
      && true;


{
  and [
    eqmod (limbs 64 [rx_0, rx_1, rx_2, rx_3])
    	  (2**256 * XR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [ry_0, ry_1, ry_2, ry_3])
    	  (2**256 * YR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [rz_0, rz_1, rz_2, rz_3])
    	  (2**256 * ZR)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])

]  prove with [ cuts [3, 13, 16] ]
&&
  and [limbs 64 [rx_0, rx_1, rx_2, rx_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [ry_0, ry_1, ry_2, ry_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [rz_0, rz_1, rz_2, rz_3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
  prove with [ cuts [3, 13, 16] ]
}

