const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  limbs 64 [a0, a1, a2, a3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
}

mov L0x4000073dd8 a0; mov L0x4000073de0 a1;
mov L0x4000073de8 a2; mov L0x4000073df0 a3;

mov L0x129658 $P256_1@uint64;
mov L0x129660 $P256_3@uint64;

nondet sp@uint64; nondet x27@uint64; nondet x29@uint64; nondet x30@uint64;
nondet L0x4000073b38@uint64; nondet L0x4000073b50@uint64;
nondet L0x4000073b68@uint64;

(* #! -> SP = 0x4000073b30 *)
#! 0x4000073b30 = 0x4000073b30;
(* str	x30, [sp, #-16]!                            #! EA = L0x4000073b20; PC = 0xc3de0 *)
mov L0x4000073b20 x30;
(* stur	x29, [sp, #-8]                             #! EA = L0x4000073b18; PC = 0xc3de4 *)
mov L0x4000073b18 x29;
(* sub	x29, sp, #0x8                               #! PC = 0xc3de8 *)
subc dc x29 sp 0x8@uint64;
(* ldr	x0, [sp, #24]                               #! EA = L0x4000073b38; Value = 0x0000004000073d08; PC = 0xc3dec *)
mov x0 L0x4000073b38;
(* ldr	x1, [sp, #48]                               #! EA = L0x4000073b50; Value = 0x0000004000073dd8; PC = 0xc3df0 *)
mov x1 L0x4000073b50;
(* ldr	x2, [sp, #72]                               #! EA = L0x4000073b68; Value = 0x0000000000000001; PC = 0xc3df4 *)
mov x2 L0x4000073b68;
(* #adrp	x27, 0x129000 <runtime.gcbss+1171>         #! PC = 0xc3df8 *)
#adrp	%%x27, 0x129000 <runtime.gcbss+1171>         #! 0xc3df8 = 0xc3df8;
(* add	x27, x27, #0x658                            #! PC = 0xc3dfc *)
adds dc x27 x27 0x658@uint64;
(* ldr	x15, [x27]                                  #! EA = L0x129658; Value = 0x00000000ffffffff; PC = 0xc3e00 *)
mov x15 L0x129658;
(* #adrp	x27, 0x129000 <runtime.gcbss+1171>         #! PC = 0xc3e04 *)
#adrp	%%x27, 0x129000 <runtime.gcbss+1171>         #! 0xc3e04 = 0xc3e04;
(* add	x27, x27, #0x660                            #! PC = 0xc3e08 *)
adds dc x27 x27 0x660@uint64;
(* ldr	x16, [x27]                                  #! EA = L0x129660; Value = 0xffffffff00000001; PC = 0xc3e0c *)
mov x16 L0x129660;
(* ldp	x19, x20, [x1]                              #! EA = L0x4000073dd8; Value = 0xea1fecab8a19f121; PC = 0xc3e10 *)
mov x19 L0x4000073dd8; mov x20 L0x4000073de0;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0x4000073de8; Value = 0xc1e20e4777062b59; PC = 0xc3e14 *)
mov x21 L0x4000073de8; mov x22 L0x4000073df0;
(* sub	x2, x2, #0x1                                #! PC = 0xc3e18 *)
subc dc x2 x2 0x1@uint64;
(* #bl	0xc3980 <p256SqrInternal>                   #! PC = 0xc3e1c *)
#bl	0xc3980 <p256SqrInternal>                   #! 0xc3e1c = 0xc3e1c;
(* #! -> SP = 0x4000073b20 *)
#! 0x4000073b20 = 0x4000073b20;
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
(* #! <- SP = 0x4000073b20 *)
#! 0x4000073b20 = 0x4000073b20;
(* #ret                                            #! PC = 0xc3ae0 *)
#ret                                            #! 0xc3ae0 = 0xc3ae0;
(* mov	x19, x23                                    #! PC = 0xc3e20 *)
mov x19 x23;
(* mov	x20, x24                                    #! PC = 0xc3e24 *)
mov x20 x24;
(* mov	x21, x25                                    #! PC = 0xc3e28 *)
mov x21 x25;
(* mov	x22, x26                                    #! PC = 0xc3e2c *)
mov x22 x26;
(* #cbnz	x2, 0xc3e18 <crypto/elliptic.p256Sqr+56>  #! PC = 0xc3e30 *)
#cbnz	%%x2, 0xc3e18 <crypto/elliptic.p256Sqr+56>  #! 0xc3e30 = 0xc3e30;
(* stp	x23, x24, [x0]                              #! EA = L0x4000073d08; PC = 0xc3e34 *)
mov L0x4000073d08 x23; mov L0x4000073d10 x24;
(* stp	x25, x26, [x0, #16]                         #! EA = L0x4000073d18; PC = 0xc3e38 *)
mov L0x4000073d18 x25; mov L0x4000073d20 x26;
(* ldur	x29, [sp, #-8]                             #! EA = L0x4000073b18; Value = 0x0000004000073b28; PC = 0xc3e3c *)
mov x29 L0x4000073b18;
(* ldr	x30, [sp], #16                              #! EA = L0x4000073b20; Value = 0x00000000000c1128; PC = 0xc3e40 *)
mov x30 L0x4000073b20;
(* #! <- SP = 0x4000073b30 *)
#! 0x4000073b30 = 0x4000073b30;
(* #ret                                            #! PC = 0xc3e44 *)
#ret                                            #! 0xc3e44 = 0xc3e44;

mov r0 L0x4000073d08; mov r1 L0x4000073d10;
mov r2 L0x4000073d18; mov r3 L0x4000073d20;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        (limbs 64 [a0, a1, a2, a3] ** 2)
        (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
  limbs 64 [r0, r1, r2, r3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]

}
