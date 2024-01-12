const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [limbs 64 [a0, a1, a2, a3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [b0, b1, b2, b3] <u
       limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]]
}

mov L0x400008fd08 a0; mov L0x400008fd10 a1;
mov L0x400008fd18 a2; mov L0x400008fd20 a3;
mov L0x400008fdd8 b0; mov L0x400008fde0 b1;
mov L0x400008fde8 b2; mov L0x400008fdf0 b3;

mov L0x129658 $P256_1@uint64;
mov L0x129660 $P256_3@uint64;

nondet x27@uint64; nondet x29@uint64; nondet x30@uint64; nondet sp@uint64;
nondet L0x400008fb38@uint64; nondet L0x400008fb50@uint64;
nondet L0x400008fb68@uint64;


(* #! -> SP = 0x400008fb30 *)
#! 0x400008fb30 = 0x400008fb30;
(* str	x30, [sp, #-16]!                            #! EA = L0x400008fb20; PC = 0xc3e50 *)
mov L0x400008fb20 x30;
(* stur	x29, [sp, #-8]                             #! EA = L0x400008fb18; PC = 0xc3e54 *)
mov L0x400008fb18 x29;
(* sub	x29, sp, #0x8                               #! PC = 0xc3e58 *)
subs dc x29 sp 0x8@uint64;
(* ldr	x0, [sp, #24]                               #! EA = L0x400008fb38; Value = 0x000000400008fb88; PC = 0xc3e5c *)
mov x0 L0x400008fb38;
(* ldr	x1, [sp, #48]                               #! EA = L0x400008fb50; Value = 0x000000400008fd08; PC = 0xc3e60 *)
mov x1 L0x400008fb50;
(* ldr	x2, [sp, #72]                               #! EA = L0x400008fb68; Value = 0x000000400008fdd8; PC = 0xc3e64 *)
mov x2 L0x400008fb68;
(* #adrp	x27, 0x129000 <runtime.gcbss+1171>         #! PC = 0xc3e68 *)
#adrp	%%x27, 0x129000 <runtime.gcbss+1171>         #! 0xc3e68 = 0xc3e68;
(* add	x27, x27, #0x658                            #! PC = 0xc3e6c *)
adds dc x27 x27 0x658@uint64;
(* ldr	x15, [x27]                                  #! EA = L0x129658; Value = 0x00000000ffffffff; PC = 0xc3e70 *)
mov x15 L0x129658;
(* #adrp	x27, 0x129000 <runtime.gcbss+1171>         #! PC = 0xc3e74 *)
#adrp	%%x27, 0x129000 <runtime.gcbss+1171>         #! 0xc3e74 = 0xc3e74;
(* add	x27, x27, #0x660                            #! PC = 0xc3e78 *)
adds dc x27 x27 0x660@uint64;
(* ldr	x16, [x27]                                  #! EA = L0x129660; Value = 0xffffffff00000001; PC = 0xc3e7c *)
mov x16 L0x129660;
(* ldp	x19, x20, [x1]                              #! EA = L0x400008fd08; Value = 0x63667ad9c2dbb11b; PC = 0xc3e80 *)
mov x19 L0x400008fd08; mov x20 L0x400008fd10;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0x400008fd18; Value = 0xbd4f601e0d45f3ff; PC = 0xc3e84 *)
mov x21 L0x400008fd18; mov x22 L0x400008fd20;
(* ldp	x23, x24, [x2]                              #! EA = L0x400008fdd8; Value = 0x923020a6e119e002; PC = 0xc3e88 *)
mov x23 L0x400008fdd8; mov x24 L0x400008fde0;
(* ldp	x25, x26, [x2, #16]                         #! EA = L0x400008fde8; Value = 0x568d552aeb44b9fb; PC = 0xc3e8c *)
mov x25 L0x400008fde8; mov x26 L0x400008fdf0;
(* #bl	0xc3af0 <p256MulInternal>                   #! PC = 0xc3e90 *)
#bl	0xc3af0 <p256MulInternal>                   #! 0xc3e90 = 0xc3e90;
(* #! -> SP = 0x400008fb20 *)
#! 0x400008fb20 = 0x400008fb20;
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

(* related variables *)
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
mull dch x11 x22 x26;
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

(* related variables *)
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
adcs carry0 x6 x6 x10 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xc3c6c *)
adc x7 0@uint64 0@uint64 carry0;
(* mov	x27, #0xffffffffffffffff    	// #-1         #! PC = 0xc3c70 *)
mov x27 0xffffffffffffffff@uint64;
(* subs	x11, x3, x27                               #! PC = 0xc3c74 *)
subc carry x11 x3 x27;
(* sbcs	x12, x4, x15                               #! PC = 0xc3c78 *)
sbcs carry x12 x4 x15 carry;
(* sbcs	x13, x5, xzr                               #! PC = 0xc3c7c *)
sbcs carry x13 x5 0@uint64 carry;
(* sbcs	x14, x6, x16                               #! PC = 0xc3c80 *)
sbcs carry1 x14 x6 x16 carry;
(* sbcs	x7, x7, xzr                                #! PC = 0xc3c84 *)
sbcs carry x7 x7 0@uint64 carry1;

(* NOTE: more identities *)
assert true && or [carry = 1@1, carry1 = 0@1];
assume (carry - 1)*carry1 = 0 && true;
assert true && uext carry 1 = uext carry0 1 + uext carry1 1;
assume carry = carry0 + carry1 && true;

(* csel	x23, x11, x3, cs  // cs = hs, nlast        #! PC = 0xc3c88 *)
cmov x23 carry x11 x3;
(* csel	x24, x12, x4, cs  // cs = hs, nlast        #! PC = 0xc3c8c *)
cmov x24 carry x12 x4;
(* csel	x25, x13, x5, cs  // cs = hs, nlast        #! PC = 0xc3c90 *)
cmov x25 carry x13 x5;
(* csel	x26, x14, x6, cs  // cs = hs, nlast        #! PC = 0xc3c94 *)
cmov x26 carry x14 x6;
(* #! <- SP = 0x400008fb20 *)
#! 0x400008fb20 = 0x400008fb20;
(* #ret                                            #! PC = 0xc3c98 *)
#ret                                            #! 0xc3c98 = 0xc3c98;
(* stp	x23, x24, [x0]                              #! EA = L0x400008fb88; PC = 0xc3e94 *)
mov L0x400008fb88 x23; mov L0x400008fb90 x24;
(* stp	x25, x26, [x0, #16]                         #! EA = L0x400008fb98; PC = 0xc3e98 *)
mov L0x400008fb98 x25; mov L0x400008fba0 x26;
(* ldur	x29, [sp, #-8]                             #! EA = L0x400008fb18; Value = 0x000000400008fb28; PC = 0xc3e9c *)
mov x29 L0x400008fb18;
(* ldr	x30, [sp], #16                              #! EA = L0x400008fb20; Value = 0x00000000000c1174; PC = 0xc3ea0 *)
mov x30 L0x400008fb20;
(* #! <- SP = 0x400008fb30 *)
#! 0x400008fb30 = 0x400008fb30;
(* #ret                                            #! PC = 0xc3ea4 *)
#ret                                            #! 0xc3ea4 = 0xc3ea4;

mov r0 L0x400008fb88; mov r1 L0x400008fb90;
mov r2 L0x400008fb98; mov r3 L0x400008fba0;

{
  eqmod (limbs 64 [0, 0, 0, 0, r0, r1, r2, r3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
        (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
&&
  limbs 64 [r0, r1, r2, r3] <u
  limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]

}

