const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

const P256one_0 = 0x0000000000000001
const P256one_1 = 0xffffffff00000000
const P256one_2 = 0xffffffffffffffff
const P256one_3 = 0x00000000fffffffe


proc main (uint64 x1_0, uint64 x1_1, uint64 x1_2, uint64 x1_3,
           uint64 y1_0, uint64 y1_1, uint64 y1_2, uint64 y1_3,
           uint64 z1_0, uint64 z1_1, uint64 z1_2, uint64 z1_3,
           uint64 x2_0, uint64 x2_1, uint64 x2_2, uint64 x2_3,
           uint64 y2_0, uint64 y2_1, uint64 y2_2, uint64 y2_3,
           uint64 sign, uint64 sel, uint64 zero) =
{
  true
&&
  and [limbs 64 [x1_0,x1_1,x1_2,x1_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y1_0,y1_1,y1_2,y1_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [z1_0,z1_1,z1_2,z1_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [x2_0,x2_1,x2_2,x2_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y2_0,y2_1,y2_2,y2_3] <u
       limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64]]
}

mov L0x4000103d98 x1_0; mov L0x4000103da0 x1_1;
mov L0x4000103da8 x1_2; mov L0x4000103db0 x1_3;
mov L0x4000103db8 y1_0; mov L0x4000103dc0 y1_1;
mov L0x4000103dc8 y1_2; mov L0x4000103dd0 y1_3;
mov L0x4000103dd8 z1_0; mov L0x4000103de0 z1_1;
mov L0x4000103de8 z1_2; mov L0x4000103df0 z1_3;

mov L0x4000103cd8 x2_0; mov L0x4000103ce0 x2_1;
mov L0x4000103ce8 x2_2; mov L0x4000103cf0 x2_3;
mov L0x4000103cf8 y2_0; mov L0x4000103d00 y2_1;
mov L0x4000103d08 y2_2; mov L0x4000103d10 y2_3;

mov L0x4000103c80 sign; mov L0x4000103c88 sel; mov L0x4000103c90 zero;

mov L0x129658 $P256_1@uint64;
mov L0x129660 $P256_3@uint64;

mov L0x129d20 $P256one_0@uint64; mov L0x129d28 $P256one_1@uint64;
mov L0x129d30 $P256one_2@uint64; mov L0x129d38 $P256one_3@uint64;

nondet sp@uint64; nondet x29@uint64; nondet x30@uint64;
nondet L0x40000021b0@uint64; nondet L0x4000103c38@uint64;
nondet L0x4000103c50@uint64; nondet L0x4000103c68@uint64; 

(* #! -> SP = 0x4000103c30 *)
#! 0x4000103c30 = 0x4000103c30;
(* ldr	x16, [x28, #16]                             #! EA = L0x40000021b0; Value = 0x00000040001023a0; PC = 0xc40d0 *)
mov x16 L0x40000021b0;
(* sub	x17, sp, #0xa0                              #! PC = 0xc40d4 *)
subs dc x17 sp 0xa0@uint64;
(* #b.ls	0xc43ec <crypto/elliptic.p256PointAddAffineAsm+796>  // b.plast#! PC = 0xc40dc *)
#b.ls	0xc43ec <crypto/elliptic.p256PointAddAffineAsm+796>  // b.plast#! 0xc40dc = 0xc40dc;
(* sub	x27, sp, #0x120                             #! PC = 0xc40e0 *)
subs dc x27 sp 0x120@uint64;
(* str	x30, [x27]                                  #! EA = L0x4000103b10; PC = 0xc40e4 *)
mov L0x4000103b10 x30;
(* mov	sp, x27                                     #! PC = 0xc40e8 *)
mov sp x27;
(* stur	x29, [sp, #-8]                             #! EA = L0x4000103b08; PC = 0xc40ec *)
mov L0x4000103b08 x29;
(* sub	x29, sp, #0x8                               #! PC = 0xc40f0 *)
subs dc x29 sp 0x8@uint64;
(* ldr	x1, [sp, #320]                              #! EA = L0x4000103c50; Value = 0x0000004000103d98; PC = 0xc40f4 *)
mov x1 L0x4000103c50;
(* ldr	x2, [sp, #344]                              #! EA = L0x4000103c68; Value = 0x0000004000103cd8; PC = 0xc40f8 *)
mov x2 L0x4000103c68;
(* ldr	x17, [sp, #368]                             #! EA = L0x4000103c80; Value = 0x0000000000000000; PC = 0xc40fc *)
mov x17 L0x4000103c80;
(* ldr	x0, [sp, #376]                              #! EA = L0x4000103c88; Value = 0x0000000000000004; PC = 0xc4100 *)
mov x0 L0x4000103c88;
(* ldr	x13, [sp, #384]                             #! EA = L0x4000103c90; Value = 0x0000000000000003; PC = 0xc4104 *)
mov x13 L0x4000103c90;
(* orr	x11, xzr, #0x1                              #! PC = 0xc4108 *)
mov x11 0x1@uint64;
(* cmp	x13, xzr                                    #! PC = 0xc410c *)
subc zero dc 0@uint64 x13;
(* csel	x13, xzr, x11, eq  // eq = none            #! PC = 0xc4110 *)
cmov x13 zero 0@uint64 x11;
(* cmp	x0, xzr                                     #! PC = 0xc4114 *)
subc zero dc 0@uint64 x0;
(* csel	x0, xzr, x11, eq  // eq = none             #! PC = 0xc4118 *)
cmov x0 zero 0@uint64 x11;
(* add	x27, x27, #0x658                            #! PC = 0xc4120 *)
adds dc x27 x27 0x658@uint64;
(* ldr	x15, [x27]                                  #! EA = L0x129658; Value = 0x00000000ffffffff; PC = 0xc4124 *)
mov x15 L0x129658;
(* add	x27, x27, #0x660                            #! PC = 0xc412c *)
adds dc x27 x27 0x660@uint64;
(* ldr	x16, [x27]                                  #! EA = L0x129660; Value = 0xffffffff00000001; PC = 0xc4130 *)
mov x16 L0x129660;
(* eor	x0, x0, x13, lsl #1                         #! PC = 0xc4134 *)
split dc x13_L x13 63; shl x13_S x13_L 1; xor x0@uint64 x0 x13_L;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x4000103cf8; Value = 0xe673fdb03cfd5d8b; PC = 0xc4138 *)
mov x23 L0x4000103cf8; mov x24 L0x4000103d00;
(* ldp	x25, x26, [x2, #48]                         #! EA = L0x4000103d08; Value = 0xf6ce581ff52305aa; PC = 0xc413c *)
mov x25 L0x4000103d08; mov x26 L0x4000103d10;
(* mov	x3, #0xffffffffffffffff    	// #-1          #! PC = 0xc4140 *)
mov x3 0xffffffffffffffff@uint64;
(* subs	x3, x3, x23                                #! PC = 0xc4144 *)
subc carry x3 x3 x23;
(* sbcs	x4, x15, x24                               #! PC = 0xc4148 *)
sbcs carry x4 x15 x24 carry;
(* ngcs	x5, x25                                    #! PC = 0xc414c *)
sbcs carry x5 0@uint64 x25 carry;
(* sbcs	x6, x16, x26                               #! PC = 0xc4150 *)
sbcs carry x6 x16 x26 carry;
(* ngc	x11, xzr                                    #! PC = 0xc4154 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc4158 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc415c *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc4160 *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc4164 *)
adcs carry x9 x5 0@uint64 carry;
(* adcs	x10, x6, x16                               #! PC = 0xc4168 *)
adcs carry x10 x6 x16 carry;
(* adc	x11, x11, xzr                               #! PC = 0xc416c *)
adc x11 x11 0@uint64 carry;
(* cmp	x11, xzr                                    #! PC = 0xc4170 *)
subc zero dc 0@uint64 x11;
(* csel	x3, x7, x3, eq  // eq = none               #! PC = 0xc4174 *)
cmov x3 zero x7 x3;
(* csel	x4, x8, x4, eq  // eq = none               #! PC = 0xc4178 *)
cmov x4 zero x8 x4;
(* csel	x5, x9, x5, eq  // eq = none               #! PC = 0xc417c *)
cmov x5 zero x9 x5;
(* csel	x6, x10, x6, eq  // eq = none              #! PC = 0xc4180 *)
cmov x6 zero x10 x6;
(* cmp	x17, xzr                                    #! PC = 0xc4184 *)
subc zero dc 0@uint64 x17;
(* csel	x23, x23, x3, eq  // eq = none             #! PC = 0xc4188 *)
cmov x23 zero x23 x3;
(* csel	x24, x24, x4, eq  // eq = none             #! PC = 0xc418c *)
cmov x24 zero x24 x4;
(* csel	x25, x25, x5, eq  // eq = none             #! PC = 0xc4190 *)
cmov x25 zero x25 x5;
(* csel	x26, x26, x6, eq  // eq = none             #! PC = 0xc4194 *)
cmov x26 zero x26 x6;
(* stp	x23, x24, [sp, #8]                          #! EA = L0x4000103b18; PC = 0xc4198 *)
mov L0x4000103b18 x23; mov L0x4000103b20 x24;
(* stp	x25, x26, [sp, #24]                         #! EA = L0x4000103b28; PC = 0xc419c *)
mov L0x4000103b28 x25; mov L0x4000103b30 x26;
(* ldp	x19, x20, [x1, #64]                         #! EA = L0x4000103dd8; Value = 0x0000000000000001; PC = 0xc41a0 *)
mov x19 L0x4000103dd8; mov x20 L0x4000103de0;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x4000103de8; Value = 0xffffffffffffffff; PC = 0xc41a4 *)
mov x21 L0x4000103de8; mov x22 L0x4000103df0;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc41a8 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc41a8 = 0xc41a8;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;
assert true && x9 = dcH; assume x9 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #72]                         #! EA = L0x4000103b58; PC = 0xc41ac *)
mov L0x4000103b58 x23; mov L0x4000103b60 x24;
(* stp	x25, x26, [sp, #88]                         #! EA = L0x4000103b68; PC = 0xc41b0 *)
mov L0x4000103b68 x25; mov L0x4000103b70 x26;
(* ldp	x19, x20, [x2]                              #! EA = L0x4000103cd8; Value = 0x486d8ffa696946fc; PC = 0xc41b4 *)
mov x19 L0x4000103cd8; mov x20 L0x4000103ce0;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x4000103ce8; Value = 0x7e3d423e90f35a15; PC = 0xc41b8 *)
mov x21 L0x4000103ce8; mov x22 L0x4000103cf0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc41bc *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc41bc = 0xc41bc;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* ldp	x19, x20, [x1]                              #! EA = L0x4000103d98; Value = 0xffac3f904eebc127; PC = 0xc41c0 *)
mov x19 L0x4000103d98; mov x20 L0x4000103da0;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0x4000103da8; Value = 0x66ad77dd87cbbc98; PC = 0xc41c4 *)
mov x21 L0x4000103da8; mov x22 L0x4000103db0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc41c8 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc41c8 = 0xc41c8;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [sp, #104]                        #! EA = L0x4000103b78; PC = 0xc41cc *)
mov L0x4000103b78 x19; mov L0x4000103b80 x20;
(* stp	x21, x22, [sp, #120]                        #! EA = L0x4000103b88; PC = 0xc41d0 *)
mov L0x4000103b88 x21; mov L0x4000103b90 x22;
(* ldp	x23, x24, [x1, #64]                         #! EA = L0x4000103dd8; Value = 0x0000000000000001; PC = 0xc41d4 *)
mov x23 L0x4000103dd8; mov x24 L0x4000103de0;
(* ldp	x25, x26, [x1, #80]                         #! EA = L0x4000103de8; Value = 0xffffffffffffffff; PC = 0xc41d8 *)
mov x25 L0x4000103de8; mov x26 L0x4000103df0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc41dc *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc41dc = 0xc41dc;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* ldp	x3, x4, [x1, #64]                           #! EA = L0x4000103dd8; Value = 0x0000000000000001; PC = 0xc41e0 *)
mov x3 L0x4000103dd8; mov x4 L0x4000103de0;
(* ldp	x5, x6, [x1, #80]                           #! EA = L0x4000103de8; Value = 0xffffffffffffffff; PC = 0xc41e4 *)
mov x5 L0x4000103de8; mov x6 L0x4000103df0;
(* tst	x0, #0x1                                    #! PC = 0xc41e8 *)
and tst_t@uint64 x0 0x1@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x23, x3, x23, eq  // eq = none             #! PC = 0xc41ec *)
cmov x23 zero x3 x23;
(* csel	x24, x4, x24, eq  // eq = none             #! PC = 0xc41f0 *)
cmov x24 zero x4 x24;
(* csel	x25, x5, x25, eq  // eq = none             #! PC = 0xc41f4 *)
cmov x25 zero x5 x25;
(* csel	x26, x6, x26, eq  // eq = none             #! PC = 0xc41f8 *)
cmov x26 zero x6 x26;
(* add	x27, x27, #0xd20                            #! PC = 0xc4200 *)
adds dc x27 x27 0xd20@uint64;
(* ldp	x3, x4, [x27]                               #! EA = L0x129d20; Value = 0x0000000000000001; PC = 0xc4204 *)
mov x3 L0x129d20; mov x4 L0x129d28;
(* add	x27, x27, #0xd30                            #! PC = 0xc420c *)
adds dc x27 x27 0xd30@uint64;
(* ldp	x5, x6, [x27]                               #! EA = L0x129d30; Value = 0xffffffffffffffff; PC = 0xc4210 *)
mov x5 L0x129d30; mov x6 L0x129d38;
(* tst	x0, #0x2                                    #! PC = 0xc4214 *)
and tst_t@uint64 x0 0x2@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x23, x3, x23, eq  // eq = none             #! PC = 0xc4218 *)
cmov x23 zero x3 x23;
(* csel	x24, x4, x24, eq  // eq = none             #! PC = 0xc421c *)
cmov x24 zero x4 x24;
(* csel	x25, x5, x25, eq  // eq = none             #! PC = 0xc4220 *)
cmov x25 zero x5 x25;
(* csel	x26, x6, x26, eq  // eq = none             #! PC = 0xc4224 *)
cmov x26 zero x6 x26;
(* ldp	x19, x20, [x1, #64]                         #! EA = L0x4000103dd8; Value = 0x0000000000000001; PC = 0xc4228 *)
mov x19 L0x4000103dd8; mov x20 L0x4000103de0;
(* ldp	x21, x22, [x1, #80]                         #! EA = L0x4000103de8; Value = 0xffffffffffffffff; PC = 0xc422c *)
mov x21 L0x4000103de8; mov x22 L0x4000103df0;
(* ldr	x11, [sp, #296]                             #! EA = L0x4000103c38; Value = 0x0000004000103d98; PC = 0xc4230 *)
mov x11 L0x4000103c38;
(* stp	x23, x24, [x11, #64]                        #! EA = L0x4000103dd8; PC = 0xc4234 *)
mov L0x4000103dd8 x23; mov L0x4000103de0 x24;
(* stp	x25, x26, [x11, #80]                        #! EA = L0x4000103de8; PC = 0xc4238 *)
mov L0x4000103de8 x25; mov L0x4000103df0 x26;
(* ldp	x23, x24, [sp, #72]                         #! EA = L0x4000103b58; Value = 0x0000000000000001; PC = 0xc423c *)
mov x23 L0x4000103b58; mov x24 L0x4000103b60;
(* ldp	x25, x26, [sp, #88]                         #! EA = L0x4000103b68; Value = 0xffffffffffffffff; PC = 0xc4240 *)
mov x25 L0x4000103b68; mov x26 L0x4000103b70;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4244 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4244 = 0xc4244;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* ldp	x19, x20, [sp, #8]                          #! EA = L0x4000103b18; Value = 0xe673fdb03cfd5d8b; PC = 0xc4248 *)
mov x19 L0x4000103b18; mov x20 L0x4000103b20;
(* ldp	x21, x22, [sp, #24]                         #! EA = L0x4000103b28; Value = 0xf6ce581ff52305aa; PC = 0xc424c *)
mov x21 L0x4000103b28; mov x22 L0x4000103b30;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4250 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4250 = 0xc4250;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #40]                         #! EA = L0x4000103b38; PC = 0xc4254 *)
mov L0x4000103b38 x23; mov L0x4000103b40 x24;
(* stp	x25, x26, [sp, #56]                         #! EA = L0x4000103b48; PC = 0xc4258 *)
mov L0x4000103b48 x25; mov L0x4000103b50 x26;
(* ldp	x19, x20, [x1, #32]                         #! EA = L0x4000103db8; Value = 0xb04c5c1fc983a7eb; PC = 0xc425c *)
mov x19 L0x4000103db8; mov x20 L0x4000103dc0;
(* ldp	x21, x22, [x1, #48]                         #! EA = L0x4000103dc8; Value = 0x788208311a2ee98e; PC = 0xc4260 *)
mov x21 L0x4000103dc8; mov x22 L0x4000103dd0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4264 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4264 = 0xc4264;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* stp	x19, x20, [sp, #136]                        #! EA = L0x4000103b98; PC = 0xc4268 *)
mov L0x4000103b98 x19; mov L0x4000103ba0 x20;
(* stp	x21, x22, [sp, #152]                        #! EA = L0x4000103ba8; PC = 0xc426c *)
mov L0x4000103ba8 x21; mov L0x4000103bb0 x22;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4270 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4270 = 0xc4270;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;
assert true && x9 = dcH; assume x9 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #200]                        #! EA = L0x4000103bd8; PC = 0xc4274 *)
mov L0x4000103bd8 x23; mov L0x4000103be0 x24;
(* stp	x25, x26, [sp, #216]                        #! EA = L0x4000103be8; PC = 0xc4278 *)
mov L0x4000103be8 x25; mov L0x4000103bf0 x26;
(* ldp	x19, x20, [sp, #104]                        #! EA = L0x4000103b78; Value = 0x48c1506a1a7d85d5; PC = 0xc427c *)
mov x19 L0x4000103b78; mov x20 L0x4000103b80;
(* ldp	x21, x22, [sp, #120]                        #! EA = L0x4000103b88; Value = 0x178fca6109279d7c; PC = 0xc4280 *)
mov x21 L0x4000103b88; mov x22 L0x4000103b90;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc4284 *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc4284 = 0xc4284;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x4, x20, x19                                #! PC = 0xc3980 *)
mull dcH x4 x20 x19;
(* umulh	x5, x20, x19                              #! PC = 0xc3984 *)
mull x5 dcL x20 x19;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x19                               #! PC = 0xc3988 *)
mull dcH x11 x21 x19;
(* adds	x5, x5, x11                                #! PC = 0xc398c *)
adds carry x5 x5 x11;
(* umulh	x6, x21, x19                              #! PC = 0xc3990 *)
mull x6 dcL x21 x19;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x19                               #! PC = 0xc3994 *)
mull dcH x11 x22 x19;
(* adcs	x6, x6, x11                                #! PC = 0xc3998 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x19                              #! PC = 0xc399c *)
mull x7 dcL x22 x19;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc39a0 *)
adc x7 x7 0@uint64 carry;
(* mul	x11, x21, x20                               #! PC = 0xc39a4 *)
mull dcH x11 x21 x20;
(* adds	x6, x6, x11                                #! PC = 0xc39a8 *)
adds carry x6 x6 x11;
(* umulh	x12, x21, x20                             #! PC = 0xc39ac *)
mull x12 dcL x21 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* adc	x8, x8, x12                                 #! PC = 0xc39c4 *)
adc x8 x8 x12 carry;
(* mul	x11, x22, x21                               #! PC = 0xc39c8 *)
mull dcH x11 x22 x21;
(* adds	x8, x8, x11                                #! PC = 0xc39cc *)
adds carry x8 x8 x11;
(* umulh	x9, x22, x21                              #! PC = 0xc39d0 *)
mull x9 dcL x22 x21;
assert true && x9 = dcH; assume x9 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* adds	x4, x4, x11                                #! PC = 0xc3a00 *)
adds carry x4 x4 x11;
(* mul	x11, x20, x20                               #! PC = 0xc3a04 *)
mull dcH x11 x20 x20;
(* adcs	x5, x5, x11                                #! PC = 0xc3a08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x12, x20, x20                             #! PC = 0xc3a0c *)
mull x12 dcL x20 x20;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x6, x6, x12                                #! PC = 0xc3a10 *)
adcs carry x6 x6 x12 carry;
(* mul	x11, x21, x21                               #! PC = 0xc3a14 *)
mull dcH x11 x21 x21;
(* adcs	x7, x7, x11                                #! PC = 0xc3a18 *)
adcs carry x7 x7 x11 carry;
(* umulh	x12, x21, x21                             #! PC = 0xc3a1c *)
mull x12 dcL x21 x21;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x8, x8, x12                                #! PC = 0xc3a20 *)
adcs carry x8 x8 x12 carry;
(* mul	x11, x22, x22                               #! PC = 0xc3a24 *)
mull dcH x11 x22 x22;
(* adcs	x9, x9, x11                                #! PC = 0xc3a28 *)
adcs carry x9 x9 x11 carry;
(* umulh	x12, x22, x22                             #! PC = 0xc3a2c *)
mull x12 dcL x22 x22;
assert true && x12 = dcH; assume x12 = dcH && true;
(* adcs	x10, x10, x12                              #! PC = 0xc3a30 *)
adc x10 x10 x12 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3a34 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3a38 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3a3c *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3a40 *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3a58 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3a5c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3a74 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3a78 *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3a90 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3a94 *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3ab4 *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3ab8 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3abc *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3ac0 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3ac4 *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3ac8 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3acc *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3ad0 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3ad4 *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3ad8 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3adc *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* stp	x23, x24, [sp, #168]                        #! EA = L0x4000103bb8; PC = 0xc4288 *)
mov L0x4000103bb8 x23; mov L0x4000103bc0 x24;
(* stp	x25, x26, [sp, #184]                        #! EA = L0x4000103bc8; PC = 0xc428c *)
mov L0x4000103bc8 x25; mov L0x4000103bd0 x26;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4290 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4290 = 0xc4290;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #232]                        #! EA = L0x4000103bf8; PC = 0xc4294 *)
mov L0x4000103bf8 x23; mov L0x4000103c00 x24;
(* stp	x25, x26, [sp, #248]                        #! EA = L0x4000103c08; PC = 0xc4298 *)
mov L0x4000103c08 x25; mov L0x4000103c10 x26;
(* ldp	x19, x20, [x1, #32]                         #! EA = L0x4000103db8; Value = 0xb04c5c1fc983a7eb; PC = 0xc429c *)
mov x19 L0x4000103db8; mov x20 L0x4000103dc0;
(* ldp	x21, x22, [x1, #48]                         #! EA = L0x4000103dc8; Value = 0x788208311a2ee98e; PC = 0xc42a0 *)
mov x21 L0x4000103dc8; mov x22 L0x4000103dd0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc42a4 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc42a4 = 0xc42a4;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #40]                         #! EA = L0x4000103b38; PC = 0xc42a8 *)
mov L0x4000103b38 x23; mov L0x4000103b40 x24;
(* stp	x25, x26, [sp, #56]                         #! EA = L0x4000103b48; PC = 0xc42ac *)
mov L0x4000103b48 x25; mov L0x4000103b50 x26;
(* ldp	x19, x20, [sp, #168]                        #! EA = L0x4000103bb8; Value = 0xf503dd9cd7963009; PC = 0xc42b0 *)
mov x19 L0x4000103bb8; mov x20 L0x4000103bc0;
(* ldp	x21, x22, [sp, #184]                        #! EA = L0x4000103bc8; Value = 0x41937a9af514c929; PC = 0xc42b4 *)
mov x21 L0x4000103bc8; mov x22 L0x4000103bd0;
(* ldp	x23, x24, [x1]                              #! EA = L0x4000103d98; Value = 0xffac3f904eebc127; PC = 0xc42b8 *)
mov x23 L0x4000103d98; mov x24 L0x4000103da0;
(* ldp	x25, x26, [x1, #16]                         #! EA = L0x4000103da8; Value = 0x66ad77dd87cbbc98; PC = 0xc42bc *)
mov x25 L0x4000103da8; mov x26 L0x4000103db0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc42c0 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc42c0 = 0xc42c0;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [sp, #104]                        #! EA = L0x4000103b78; PC = 0xc42c4 *)
mov L0x4000103b78 x23; mov L0x4000103b80 x24;
(* stp	x25, x26, [sp, #120]                        #! EA = L0x4000103b88; PC = 0xc42c8 *)
mov L0x4000103b88 x25; mov L0x4000103b90 x26;
(* adds	x19, x23, x23                              #! PC = 0xc42cc *)
adds carry x19 x23 x23;
(* adcs	x20, x24, x24                              #! PC = 0xc42d0 *)
adcs carry x20 x24 x24 carry;
(* adcs	x21, x25, x25                              #! PC = 0xc42d4 *)
adcs carry x21 x25 x25 carry;
(* adcs	x22, x26, x26                              #! PC = 0xc42d8 *)
adcs carry x22 x26 x26 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xc42dc *)
adc x17 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc42e0 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x19, x27                              #! PC = 0xc42e4 *)
subc carry x11 x19 x27;
(* sbcs	x12, x20, x15                              #! PC = 0xc42e8 *)
sbcs carry x12 x20 x15 carry;
(* sbcs	x13, x21, xzr                              #! PC = 0xc42ec *)
sbcs carry x13 x21 0@uint64 carry;
(* sbcs	x14, x22, x16                              #! PC = 0xc42f0 *)
sbcs carry x14 x22 x16 carry;
(* sbcs	x17, x17, xzr                              #! PC = 0xc42f4 *)
sbcs carry x17 x17 0@uint64 carry;
(* csel	x19, x19, x11, cc  // cc = lo, ul, last    #! PC = 0xc42f8 *)
cmov x19 carry x11 x19;
(* csel	x20, x20, x12, cc  // cc = lo, ul, last    #! PC = 0xc42fc *)
cmov x20 carry x12 x20;
(* csel	x21, x21, x13, cc  // cc = lo, ul, last    #! PC = 0xc4300 *)
cmov x21 carry x13 x21;
(* csel	x22, x22, x14, cc  // cc = lo, ul, last    #! PC = 0xc4304 *)
cmov x22 carry x14 x22;
(* ldp	x23, x24, [sp, #200]                        #! EA = L0x4000103bd8; Value = 0x7f5806f72bc44a6e; PC = 0xc4308 *)
mov x23 L0x4000103bd8; mov x24 L0x4000103be0;
(* ldp	x25, x26, [sp, #216]                        #! EA = L0x4000103be8; Value = 0x0a6d444fd4125a69; PC = 0xc430c *)
mov x25 L0x4000103be8; mov x26 L0x4000103bf0;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4310 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4310 = 0xc4310;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* mov	x23, x19                                    #! PC = 0xc4314 *)
mov x23 x19;
(* mov	x24, x20                                    #! PC = 0xc4318 *)
mov x24 x20;
(* mov	x25, x21                                    #! PC = 0xc431c *)
mov x25 x21;
(* mov	x26, x22                                    #! PC = 0xc4320 *)
mov x26 x22;
(* ldp	x19, x20, [sp, #232]                        #! EA = L0x4000103bf8; Value = 0x356837bf9155fc15; PC = 0xc4324 *)
mov x19 L0x4000103bf8; mov x20 L0x4000103c00;
(* ldp	x21, x22, [sp, #248]                        #! EA = L0x4000103c08; Value = 0x4a503e7dd6918548; PC = 0xc4328 *)
mov x21 L0x4000103c08; mov x22 L0x4000103c10;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc432c *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc432c = 0xc432c;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* ldp	x3, x4, [x1]                                #! EA = L0x4000103d98; Value = 0xffac3f904eebc127; PC = 0xc4330 *)
mov x3 L0x4000103d98; mov x4 L0x4000103da0;
(* ldp	x5, x6, [x1, #16]                           #! EA = L0x4000103da8; Value = 0x66ad77dd87cbbc98; PC = 0xc4334 *)
mov x5 L0x4000103da8; mov x6 L0x4000103db0;
(* tst	x0, #0x1                                    #! PC = 0xc4338 *)
and tst_t@uint64 x0 0x1@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x19, x3, x19, eq  // eq = none             #! PC = 0xc433c *)
cmov x19 zero x3 x19;
(* csel	x20, x4, x20, eq  // eq = none             #! PC = 0xc4340 *)
cmov x20 zero x4 x20;
(* csel	x21, x5, x21, eq  // eq = none             #! PC = 0xc4344 *)
cmov x21 zero x5 x21;
(* csel	x22, x6, x22, eq  // eq = none             #! PC = 0xc4348 *)
cmov x22 zero x6 x22;
(* ldp	x3, x4, [x2]                                #! EA = L0x4000103cd8; Value = 0x486d8ffa696946fc; PC = 0xc434c *)
mov x3 L0x4000103cd8; mov x4 L0x4000103ce0;
(* ldp	x5, x6, [x2, #16]                           #! EA = L0x4000103ce8; Value = 0x7e3d423e90f35a15; PC = 0xc4350 *)
mov x5 L0x4000103ce8; mov x6 L0x4000103cf0;
(* tst	x0, #0x2                                    #! PC = 0xc4354 *)
and tst_t@uint64 x0 0x2@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x19, x3, x19, eq  // eq = none             #! PC = 0xc4358 *)
cmov x19 zero x3 x19;
(* csel	x20, x4, x20, eq  // eq = none             #! PC = 0xc435c *)
cmov x20 zero x4 x20;
(* csel	x21, x5, x21, eq  // eq = none             #! PC = 0xc4360 *)
cmov x21 zero x5 x21;
(* csel	x22, x6, x22, eq  // eq = none             #! PC = 0xc4364 *)
cmov x22 zero x6 x22;
(* ldr	x11, [sp, #296]                             #! EA = L0x4000103c38; Value = 0x0000004000103d98; PC = 0xc4368 *)
mov x11 L0x4000103c38;
(* stp	x19, x20, [x11]                             #! EA = L0x4000103d98; PC = 0xc436c *)
mov L0x4000103d98 x19; mov L0x4000103da0 x20;
(* stp	x21, x22, [x11, #16]                        #! EA = L0x4000103da8; PC = 0xc4370 *)
mov L0x4000103da8 x21; mov L0x4000103db0 x22;
(* ldp	x23, x24, [sp, #104]                        #! EA = L0x4000103b78; Value = 0x402ba1ab5c9b4fa2; PC = 0xc4374 *)
mov x23 L0x4000103b78; mov x24 L0x4000103b80;
(* ldp	x25, x26, [sp, #120]                        #! EA = L0x4000103b88; Value = 0xc487993ef8292b0d; PC = 0xc4378 *)
mov x25 L0x4000103b88; mov x26 L0x4000103b90;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc437c *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc437c = 0xc437c;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* ldp	x23, x24, [sp, #136]                        #! EA = L0x4000103b98; Value = 0x3627a1907379b59f; PC = 0xc4380 *)
mov x23 L0x4000103b98; mov x24 L0x4000103ba0;
(* ldp	x25, x26, [sp, #152]                        #! EA = L0x4000103ba8; Value = 0x7e4c4feedaf41c1b; PC = 0xc4384 *)
mov x25 L0x4000103ba8; mov x26 L0x4000103bb0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc4388 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc4388 = 0xc4388;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* mul	x3, x19, x23                                #! PC = 0xc3af0 *)
mull dcH x3 x19 x23;
(* umulh	x4, x19, x23                              #! PC = 0xc3af4 *)
mull x4 dcL x19 x23;
assert true && x4 = dcH; assume x4 = dcH && true;
(* mul	x11, x20, x23                               #! PC = 0xc3af8 *)
mull dcH x11 x20 x23;
(* adds	x4, x4, x11                                #! PC = 0xc3afc *)
adds carry x4 x4 x11;
(* umulh	x5, x20, x23                              #! PC = 0xc3b00 *)
mull x5 dcL x20 x23;
assert true && x5 = dcH; assume x5 = dcH && true;
(* mul	x11, x21, x23                               #! PC = 0xc3b04 *)
mull dcH x11 x21 x23;
(* adcs	x5, x5, x11                                #! PC = 0xc3b08 *)
adcs carry x5 x5 x11 carry;
(* umulh	x6, x21, x23                              #! PC = 0xc3b0c *)
mull x6 dcL x21 x23;
assert true && x6 = dcH; assume x6 = dcH && true;
(* mul	x11, x22, x23                               #! PC = 0xc3b10 *)
mull dcH x11 x22 x23;
(* adcs	x6, x6, x11                                #! PC = 0xc3b14 *)
adcs carry x6 x6 x11 carry;
(* umulh	x7, x22, x23                              #! PC = 0xc3b18 *)
mull x7 dcL x22 x23;
assert true && x7 = dcH; assume x7 = dcH && true;
(* adc	x7, x7, xzr                                 #! PC = 0xc3b1c *)
adc x7 x7 0@uint64 carry;
(* adds	x4, x4, x3, lsl #32                        #! PC = 0xc3b20 *)
split dcH x3_t x3 32; shl x3_t x3_t 32; adds carry x4 x4 x3_t;
(* lsr	x11, x3, #32                                #! PC = 0xc3b24 *)
split x11 dcL x3 32;
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x3                                #! PC = 0xc3b28 *)
mull dcH x12 x16 x3;
(* umulh	x3, x16, x3                               #! PC = 0xc3b2c *)
mull x3 dcL x16 x3;
assert true && x3 = dcH; assume x3 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x24                               #! PC = 0xc3b48 *)
mull dcH x11 x20 x24;
(* adcs	x5, x5, x11                                #! PC = 0xc3b4c *)
adcs carry x5 x5 x11 carry;
(* umulh	x13, x20, x24                             #! PC = 0xc3b50 *)
mull x13 dcL x20 x24;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x24                               #! PC = 0xc3b54 *)
mull dcH x11 x21 x24;
(* adcs	x6, x6, x11                                #! PC = 0xc3b58 *)
adcs carry x6 x6 x11 carry;
(* umulh	x14, x21, x24                             #! PC = 0xc3b5c *)
mull x14 dcL x21 x24;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x24                               #! PC = 0xc3b60 *)
mull dcH x11 x22 x24;
(* adcs	x7, x7, x11                                #! PC = 0xc3b64 *)
adcs carry x7 x7 x11 carry;
(* umulh	x17, x22, x24                             #! PC = 0xc3b68 *)
mull x17 dcL x22 x24;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x4                                #! PC = 0xc3b88 *)
mull dcH x12 x16 x4;
(* umulh	x4, x16, x4                               #! PC = 0xc3b8c *)
mull x4 dcL x16 x4;
assert true && x4 = dcH; assume x4 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x25                               #! PC = 0xc3ba8 *)
mull dcH x11 x20 x25;
(* adcs	x6, x6, x11                                #! PC = 0xc3bac *)
adcs carry x6 x6 x11 carry;
(* umulh	x13, x20, x25                             #! PC = 0xc3bb0 *)
mull x13 dcL x20 x25;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x25                               #! PC = 0xc3bb4 *)
mull dcH x11 x21 x25;
(* adcs	x7, x7, x11                                #! PC = 0xc3bb8 *)
adcs carry x7 x7 x11 carry;
(* umulh	x14, x21, x25                             #! PC = 0xc3bbc *)
mull x14 dcL x21 x25;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x25                               #! PC = 0xc3bc0 *)
mull dcH x11 x22 x25;
(* adcs	x8, x8, x11                                #! PC = 0xc3bc4 *)
adcs carry x8 x8 x11 carry;
(* umulh	x17, x22, x25                             #! PC = 0xc3bc8 *)
mull x17 dcL x22 x25;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x5                                #! PC = 0xc3be8 *)
mull dcH x12 x16 x5;
(* umulh	x5, x16, x5                               #! PC = 0xc3bec *)
mull x5 dcL x16 x5;
assert true && x5 = dcH; assume x5 = dcH && true;
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
assert true && x12 = dcH; assume x12 = dcH && true;
(* mul	x11, x20, x26                               #! PC = 0xc3c08 *)
mull dcH x11 x20 x26;
(* adcs	x7, x7, x11                                #! PC = 0xc3c0c *)
adcs carry x7 x7 x11 carry;
(* umulh	x13, x20, x26                             #! PC = 0xc3c10 *)
mull x13 dcL x20 x26;
assert true && x13 = dcH; assume x13 = dcH && true;
(* mul	x11, x21, x26                               #! PC = 0xc3c14 *)
mull dcH x11 x21 x26;
(* adcs	x8, x8, x11                                #! PC = 0xc3c18 *)
adcs carry x8 x8 x11 carry;
(* umulh	x14, x21, x26                             #! PC = 0xc3c1c *)
mull x14 dcL x21 x26;
assert true && x14 = dcH; assume x14 = dcH && true;
(* mul	x11, x22, x26                               #! PC = 0xc3c20 *)
mull dcH x11 x22 x26;
(* adcs	x9, x9, x11                                #! PC = 0xc3c24 *)
adcs carry x9 x9 x11 carry;
(* umulh	x17, x22, x26                             #! PC = 0xc3c28 *)
mull x17 dcL x22 x26;
assert true && x17 = dcH; assume x17 = dcH && true;
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
assert true && x11 = dcH; assume x11 = dcH && true;
(* mul	x12, x16, x6                                #! PC = 0xc3c48 *)
mull dcH x12 x16 x6;
(* umulh	x6, x16, x6                               #! PC = 0xc3c4c *)
mull x6 dcL x16 x6;
assert true && x6 = dcH; assume x6 = dcH && true;
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
adcs carry x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry;
(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* ldp	x19, x20, [sp, #40]                         #! EA = L0x4000103b38; Value = 0xdaa0e1bdb4a1a3bd; PC = 0xc438c *)
mov x19 L0x4000103b38; mov x20 L0x4000103b40;
(* ldp	x21, x22, [sp, #56]                         #! EA = L0x4000103b48; Value = 0x3c1168807713ec32; PC = 0xc4390 *)
mov x21 L0x4000103b48; mov x22 L0x4000103b50;
(* #bl	0xc3940 <p256SubInternal>                   #! PC = 0xc4394 *)
#bl	0xc3940 <p256SubInternal>                   #! 0xc4394 = 0xc4394;
(* #! -> SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* subs	x3, x23, x19                               #! PC = 0xc3940 *)
subc carry x3 x23 x19;
(* sbcs	x4, x24, x20                               #! PC = 0xc3944 *)
sbcs carry x4 x24 x20 carry;
(* sbcs	x5, x25, x21                               #! PC = 0xc3948 *)
sbcs carry x5 x25 x21 carry;
(* sbcs	x6, x26, x22                               #! PC = 0xc394c *)
sbcs carry x6 x26 x22 carry;
(* ngc	x11, xzr                                    #! PC = 0xc3950 *)
sbcs dc x11 0@uint64 0@uint64 carry;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3954 *)
mov x27 0xffffffffffffffff@uint64;
(* adds	x7, x3, x27                                #! PC = 0xc3958 *)
adds carry x7 x3 x27;
(* adcs	x8, x4, x15                                #! PC = 0xc395c *)
adcs carry x8 x4 x15 carry;
(* adcs	x9, x5, xzr                                #! PC = 0xc3960 *)
adcs carry x9 x5 0@uint64 carry;
(* adc	x10, x6, x16                                #! PC = 0xc3964 *)
adc x10 x6 x16 carry;
(* ands	x11, x11, #0x1                             #! PC = 0xc3968 *)
and x11@uint64 x11 0x1@uint64; subc zero dc 0@uint64 x11;
(* csel	x19, x3, x7, eq  // eq = none              #! PC = 0xc396c *)
cmov x19 zero x3 x7;
(* csel	x20, x4, x8, eq  // eq = none              #! PC = 0xc3970 *)
cmov x20 zero x4 x8;
(* csel	x21, x5, x9, eq  // eq = none              #! PC = 0xc3974 *)
cmov x21 zero x5 x9;
(* csel	x22, x6, x10, eq  // eq = none             #! PC = 0xc3978 *)
cmov x22 zero x6 x10;
(* #! <- SP = 0x4000103b10 *)
#! 0x4000103b10 = 0x4000103b10;
(* #ret                                            #! PC = 0xc397c *)
#ret                                            #! 0xc397c = 0xc397c;
(* ldp	x3, x4, [x1, #32]                           #! EA = L0x4000103db8; Value = 0xb04c5c1fc983a7eb; PC = 0xc4398 *)
mov x3 L0x4000103db8; mov x4 L0x4000103dc0;
(* ldp	x5, x6, [x1, #48]                           #! EA = L0x4000103dc8; Value = 0x788208311a2ee98e; PC = 0xc439c *)
mov x5 L0x4000103dc8; mov x6 L0x4000103dd0;
(* tst	x0, #0x1                                    #! PC = 0xc43a0 *)
and tst_t@uint64 x0 0x1@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x19, x3, x19, eq  // eq = none             #! PC = 0xc43a4 *)
cmov x19 zero x3 x19;
(* csel	x20, x4, x20, eq  // eq = none             #! PC = 0xc43a8 *)
cmov x20 zero x4 x20;
(* csel	x21, x5, x21, eq  // eq = none             #! PC = 0xc43ac *)
cmov x21 zero x5 x21;
(* csel	x22, x6, x22, eq  // eq = none             #! PC = 0xc43b0 *)
cmov x22 zero x6 x22;
(* ldp	x3, x4, [sp, #8]                            #! EA = L0x4000103b18; Value = 0xe673fdb03cfd5d8b; PC = 0xc43b4 *)
mov x3 L0x4000103b18; mov x4 L0x4000103b20;
(* ldp	x5, x6, [sp, #24]                           #! EA = L0x4000103b28; Value = 0xf6ce581ff52305aa; PC = 0xc43b8 *)
mov x5 L0x4000103b28; mov x6 L0x4000103b30;
(* tst	x0, #0x2                                    #! PC = 0xc43bc *)
and tst_t@uint64 x0 0x2@uint64; subc zero dc 0@uint64 tst_t;
(* csel	x19, x3, x19, eq  // eq = none             #! PC = 0xc43c0 *)
cmov x19 zero x3 x19;
(* csel	x20, x4, x20, eq  // eq = none             #! PC = 0xc43c4 *)
cmov x20 zero x4 x20;
(* csel	x21, x5, x21, eq  // eq = none             #! PC = 0xc43c8 *)
cmov x21 zero x5 x21;
(* csel	x22, x6, x22, eq  // eq = none             #! PC = 0xc43cc *)
cmov x22 zero x6 x22;
(* ldr	x11, [sp, #296]                             #! EA = L0x4000103c38; Value = 0x0000004000103d98; PC = 0xc43d0 *)
mov x11 L0x4000103c38;
(* stp	x19, x20, [x11, #32]                        #! EA = L0x4000103db8; PC = 0xc43d4 *)
mov L0x4000103db8 x19; mov L0x4000103dc0 x20;
(* stp	x21, x22, [x11, #48]                        #! EA = L0x4000103dc8; PC = 0xc43d8 *)
mov L0x4000103dc8 x21; mov L0x4000103dd0 x22;
(* ldur	x29, [sp, #-8]                             #! EA = L0x4000103b08; Value = 0x0000004000103c28; PC = 0xc43dc *)
mov x29 L0x4000103b08;
(* ldr	x30, [sp]                                   #! EA = L0x4000103b10; Value = 0x00000000000c192c; PC = 0xc43e0 *)
mov x30 L0x4000103b10;
(* add	sp, sp, #0x120                              #! PC = 0xc43e4 *)
adds dc sp sp 0x120@uint64;
(* #! <- SP = 0x4000103c30 *)
#! 0x4000103c30 = 0x4000103c30;
(* #ret                                            #! PC = 0xc43e8 *)
#ret                                            #! 0xc43e8 = 0xc43e8;

{
  true
  &&
  true
}

