(* quine: -v -isafety -jobs 20 -slicing -no_carry_constraint fpmul610_mont.cl rm
Parsing Cryptoline file:                [OK]            0.013519 seconds
Checking well-formedness:               [OK]            0.002653 seconds
Transforming to SSA form:               [OK]            0.000979 seconds
Normalizing specification:              [OK]            0.001726 seconds
Rewriting assignments:                  [OK]            0.001338 seconds
Verifying program safety:               [OK]            16.669591 seconds
Verifying range assertions:             [OK]            1.072084 seconds
Verifying range specification:          [OK]            211.214196 seconds
Rewriting value-preserved casting:      [OK]            0.000401 seconds
Verifying algebraic assertions:         [OK]            0.628567 seconds
Verifying algebraic specification:      [OK]            0.310386 seconds
Verification result:                    [OK]            229.916781 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 a9,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4,
           uint64 b5, uint64 b6, uint64 b7, uint64 b8, uint64 b9,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4,
           uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9) =
{
  and [m0=0xFFFFFFFFFFFFFFFF, m1=0xFFFFFFFFFFFFFFFF, m2=0xFFFFFFFFFFFFFFFF,
       m3=0xFFFFFFFFFFFFFFFF, m4=0x6E01FFFFFFFFFFFF, m5=0xB1784DE8AA5AB02E,
       m6=0x9AE7BF45048FF9AB, m7=0xB255B2FA10C4252A, m8=0x819010C251E7D88C,
       m9=0x000000027BF6A768]
&&
  and [
  limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9],
  m0=0xFFFFFFFFFFFFFFFF@64, m1=0xFFFFFFFFFFFFFFFF@64, m2=0xFFFFFFFFFFFFFFFF@64,
  m3=0xFFFFFFFFFFFFFFFF@64, m4=0x6E01FFFFFFFFFFFF@64, m5=0xB1784DE8AA5AB02E@64,
  m6=0x9AE7BF45048FF9AB@64, m7=0xB255B2FA10C4252A@64, m8=0x819010C251E7D88C@64,
  m9=0x000000027BF6A768@64 ]
}

mov L0xffffffffe898 a0; mov L0xffffffffe8a0 a1; mov L0xffffffffe8a8 a2;
mov L0xffffffffe8b0 a3; mov L0xffffffffe8b8 a4; mov L0xffffffffe8c0 a5;
mov L0xffffffffe8c8 a6; mov L0xffffffffe8d0 a7; mov L0xffffffffe8d8 a8;
mov L0xffffffffe8e0 a9;

mov L0xffffffffe8e8 b0; mov L0xffffffffe8f0 b1; mov L0xffffffffe8f8 b2;
mov L0xffffffffe900 b3; mov L0xffffffffe908 b4; mov L0xffffffffe910 b5;
mov L0xffffffffe918 b6; mov L0xffffffffe920 b7; mov L0xffffffffe928 b8;
mov L0xffffffffe930 b9;

mov L0xaaaaaaab67d0 0x4DE8AA5AB02E6E02@uint64;
mov L0xaaaaaaab67d8 0xBF45048FF9ABB178@uint64;
mov L0xaaaaaaab67e0 0xB2FA10C4252A9AE7@uint64;
mov L0xaaaaaaab67e8 0x10C251E7D88CB255@uint64;
mov L0xaaaaaaab67f0    0x27BF6A7688190@uint64;

nondet  x0@uint64;  nondet x2@uint64;
nondet x19@uint64; nondet x20@uint64; nondet x21@uint64; nondet x22@uint64;
nondet x23@uint64; nondet x24@uint64; nondet x25@uint64; nondet x26@uint64;
nondet x27@uint64; nondet x28@uint64; nondet x29@uint64; nondet x30@uint64;
nondet sp@uint64;

nondet L0xaaaaaaacbfd0@uint64; nondet L0xfffff7ffd6b0@uint64;

(* #! -> SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* stp	x29, x30, [sp, #-208]!                      #! EA = L0xffffffffe560; PC = 0xaaaaaaaae000 *)
mov L0xffffffffe560 x29;
mov L0xffffffffe568 x30;
(* mov	w3, #0xa                   	// #10          #! PC = 0xaaaaaaaae008 *)
mov	w3 0xa@uint64;          #! 0xaaaaaaaae008 = 0xaaaaaaaae008;
(* mov	x29, sp                                     #! PC = 0xaaaaaaaae00c *)
mov x29 sp;
(* ldr	x4, [x4, #4048]                             #! EA = L0xaaaaaaacbfd0; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae010 *)
mov x4 L0xaaaaaaacbfd0;
(* stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe570; PC = 0xaaaaaaaae014 *)
mov L0xffffffffe570 x19;
mov L0xffffffffe578 x20;
(* add	x19, sp, #0x28                              #! PC = 0xaaaaaaaae018 *)
adds dontcare x19 sp 0x28@uint64;
(* ldr	x5, [x4]                                    #! EA = L0xfffff7ffd6b0; Value = 0x467167a6e6990d00; PC = 0xaaaaaaaae01c *)
mov x5 L0xfffff7ffd6b0;
(* str	x5, [sp, #200]                              #! EA = L0xffffffffe628; PC = 0xaaaaaaaae020 *)
mov L0xffffffffe628 x5;
(* mov	x5, #0x0                   	// #0           #! PC = 0xaaaaaaaae024 *)
mov x5 0x0@uint64;
(* mov	x20, x2                                     #! PC = 0xaaaaaaaae028 *)
mov x20 x2;
(* mov	x2, x19                                     #! PC = 0xaaaaaaaae02c *)
mov x2 x19;
(* stp	xzr, xzr, [sp, #40]                         #! EA = L0xffffffffe588; PC = 0xaaaaaaaae030 *)
mov L0xffffffffe588 0@uint64;
mov L0xffffffffe590 0@uint64;
(* stp	xzr, xzr, [sp, #56]                         #! EA = L0xffffffffe598; PC = 0xaaaaaaaae034 *)
mov L0xffffffffe598 0@uint64;
mov L0xffffffffe5a0 0@uint64;
(* stp	xzr, xzr, [sp, #72]                         #! EA = L0xffffffffe5a8; PC = 0xaaaaaaaae038 *)
mov L0xffffffffe5a8 0@uint64;
mov L0xffffffffe5b0 0@uint64;
(* stp	xzr, xzr, [sp, #88]                         #! EA = L0xffffffffe5b8; PC = 0xaaaaaaaae03c *)
mov L0xffffffffe5b8 0@uint64;
mov L0xffffffffe5c0 0@uint64;
(* stp	xzr, xzr, [sp, #104]                        #! EA = L0xffffffffe5c8; PC = 0xaaaaaaaae040 *)
mov L0xffffffffe5c8 0@uint64;
mov L0xffffffffe5d0 0@uint64;
(* stp	xzr, xzr, [sp, #120]                        #! EA = L0xffffffffe5d8; PC = 0xaaaaaaaae044 *)
mov L0xffffffffe5d8 0@uint64;
mov L0xffffffffe5e0 0@uint64;
(* stp	xzr, xzr, [sp, #136]                        #! EA = L0xffffffffe5e8; PC = 0xaaaaaaaae048 *)
mov L0xffffffffe5e8 0@uint64;
mov L0xffffffffe5f0 0@uint64;
(* stp	xzr, xzr, [sp, #152]                        #! EA = L0xffffffffe5f8; PC = 0xaaaaaaaae04c *)
mov L0xffffffffe5f8 0@uint64;
mov L0xffffffffe600 0@uint64;
(* stp	xzr, xzr, [sp, #168]                        #! EA = L0xffffffffe608; PC = 0xaaaaaaaae050 *)
mov L0xffffffffe608 0@uint64;
mov L0xffffffffe610 0@uint64;
(* stp	xzr, xzr, [sp, #184]                        #! EA = L0xffffffffe618; PC = 0xaaaaaaaae054 *)
mov L0xffffffffe618 0@uint64;
mov L0xffffffffe620 0@uint64;
(* #bl	0xaaaaaaab6710 <mp_mul>                     #! PC = 0xaaaaaaaae058 *)
#bl	0xaaaaaaab6710 <mp_mul>                     #! 0xaaaaaaaae058 = 0xaaaaaaaae058;
(* #! -> SP = 0xffffffffe560 *)
#! 0xffffffffe560 = 0xffffffffe560;
(* #b	0xaaaaaaab6b30 <mul610_asm>                  #! PC = 0xaaaaaaab6710 *)
#b	0xaaaaaaab6b30 <mul610_asm>                  #! 0xaaaaaaab6710 = 0xaaaaaaab6710;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab6b30 *)
subc dontcare sp sp 0x60@uint64;
(* ldp	x3, x4, [x0]                                #! EA = L0xffffffffe898; Value = 0xfa5fc2abad4a0047; PC = 0xaaaaaaab6b34 *)
mov x3 L0xffffffffe898;
mov x4 L0xffffffffe8a0;
(* ldp	x5, x6, [x0, #16]                           #! EA = L0xffffffffe8a8; Value = 0xd0f27e80520c7307; PC = 0xaaaaaaab6b38 *)
mov x5 L0xffffffffe8a8;
mov x6 L0xffffffffe8b0;
(* ldp	x7, x8, [x0, #32]                           #! EA = L0xffffffffe8b8; Value = 0xbb7dc30a0930f7cf; PC = 0xaaaaaaab6b3c *)
mov x7 L0xffffffffe8b8;
mov x8 L0xffffffffe8c0;
(* ldp	x10, x11, [x0, #48]                         #! EA = L0xffffffffe8c8; Value = 0xb305b4e8debf2411; PC = 0xaaaaaaab6b40 *)
mov x10 L0xffffffffe8c8;
mov x11 L0xffffffffe8d0;
(* ldp	x12, x13, [x0, #64]                         #! EA = L0xffffffffe8d8; Value = 0x6f4fbcf0ef470319; PC = 0xaaaaaaab6b44 *)
mov x12 L0xffffffffe8d8;
mov x13 L0xffffffffe8e0;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe530; PC = 0xaaaaaaab6b48 *)
mov L0xffffffffe530 x25;
mov L0xffffffffe538 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe540; PC = 0xaaaaaaab6b4c *)
mov L0xffffffffe540 x27;
mov L0xffffffffe548 x28;
(* stp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe550; PC = 0xaaaaaaab6b50 *)
mov L0xffffffffe550 x29;
mov L0xffffffffe558 x30;
(* adds	x26, x3, x8                                #! PC = 0xaaaaaaab6b54 *)
adds carry x26 x3 x8;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe510; PC = 0xaaaaaaab6b58 *)
mov L0xffffffffe510 x21;
mov L0xffffffffe518 x22;
(* adcs	x27, x4, x10                               #! PC = 0xaaaaaaab6b5c *)
adcs carry x27 x4 x10 carry;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe520; PC = 0xaaaaaaab6b60 *)
mov L0xffffffffe520 x23;
mov L0xffffffffe528 x24;
(* adcs	x28, x5, x11                               #! PC = 0xaaaaaaab6b64 *)
adcs carry x28 x5 x11 carry;
(* ldp	x21, x22, [x1]                              #! EA = L0xffffffffe8e8; Value = 0xf94ef7265867cd3a; PC = 0xaaaaaaab6b68 *)
mov x21 L0xffffffffe8e8;
mov x22 L0xffffffffe8f0;
(* adcs	x29, x6, x12                               #! PC = 0xaaaaaaab6b6c *)
adcs carry x29 x6 x12 carry;
(* ldp	x14, x15, [x1, #48]                         #! EA = L0xffffffffe918; Value = 0x80744b00aa5bbf34; PC = 0xaaaaaaab6b70 *)
mov x14 L0xffffffffe918;
mov x15 L0xffffffffe920;
(* adcs	x30, x7, x13                               #! PC = 0xaaaaaaab6b74 *)
adcs carry x30 x7 x13 carry;
(* ldp	x23, x24, [x1, #16]                         #! EA = L0xffffffffe8f8; Value = 0x9340097c48935635; PC = 0xaaaaaaab6b78 *)
mov x23 L0xffffffffe8f8;
mov x24 L0xffffffffe900;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab6b7c *)
adc x9 0@uint64 0@uint64 carry;
(* ldp	x25, x13, [x1, #32]                         #! EA = L0xffffffffe908; Value = 0x749190d2ef674575; PC = 0xaaaaaaab6b80 *)
mov x25 L0xffffffffe908;
mov x13 L0xffffffffe910;
(* adds	x13, x13, x21                              #! PC = 0xaaaaaaab6b84 *)
adds carry x13 x13 x21;
(* ldp	x16, x17, [x1, #64]                         #! EA = L0xffffffffe928; Value = 0xe7f154fdc4f5be42; PC = 0xaaaaaaab6b88 *)
mov x16 L0xffffffffe928;
mov x17 L0xffffffffe930;
(* adcs	x14, x14, x22                              #! PC = 0xaaaaaaab6b8c *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6b90 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0xaaaaaaab6b94 *)
adcs carry x16 x16 x24 carry;
(* adcs	x17, x17, x25                              #! PC = 0xaaaaaaab6b98 *)
adcs carry x17 x17 x25 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab6b9c *)
adc x8 0@uint64 0@uint64 carry;

ghost x8m@uint64, x9m@uint64 :
      and [x8m = x8, x9m = x9] && and [x8m = x8, x9m = x9];
      
(* neg	x8, x8                                      #! PC = 0xaaaaaaab6ba0 *)
subc dontcare x8 0@uint64 x8;
(* neg	x9, x9                                      #! PC = 0xaaaaaaab6ba4 *)
subc dontcare x9 0@uint64 x9;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe500; PC = 0xaaaaaaab6ba8 *)
mov L0xffffffffe500 x19;
mov L0xffffffffe508 x20;
(* and	x3, x13, x9                                 #! PC = 0xaaaaaaab6bac *)
and x3@uint64 x13 x9;
(* and	x4, x14, x9                                 #! PC = 0xaaaaaaab6bb0 *)
and x4@uint64 x14 x9;
(* and	x5, x15, x9                                 #! PC = 0xaaaaaaab6bb4 *)
and x5@uint64 x15 x9;
(* and	x6, x16, x9                                 #! PC = 0xaaaaaaab6bb8 *)
and x6@uint64 x16 x9;
(* and	x7, x17, x9                                 #! PC = 0xaaaaaaab6bbc *)
and x7@uint64 x17 x9;
(* and	x9, x27, x8                                 #! PC = 0xaaaaaaab6bc0 *)
and x9@uint64 x27 x8;
(* and	x10, x28, x8                                #! PC = 0xaaaaaaab6bc4 *)
and x10@uint64 x28 x8;
(* and	x11, x29, x8                                #! PC = 0xaaaaaaab6bc8 *)
and x11@uint64 x29 x8;
(* and	x12, x30, x8                                #! PC = 0xaaaaaaab6bcc *)
and x12@uint64 x30 x8;
(* and	x8, x26, x8                                 #! PC = 0xaaaaaaab6bd0 *)
and x8@uint64 x26 x8;

(* NOTE: mask *)
assert true
    && and [x8m * (1@64 - x8m) = 0@64, x9m * (1@64 - x9m) = 0@64,
            limbs 64 [x3, x4, x5, x6, x7] =
            (uext x9m 256) * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            (uext x8m 256) * limbs 64 [x26, x27, x28, x29, x30]];
assume and [x8m * (1 - x8m) = 0, x9m * (1 - x9m) = 0,
            limbs 64 [x3, x4, x5, x6, x7] =
            x9m * limbs 64 [x13, x14, x15, x16, x17],
            limbs 64 [x8, x9, x10, x11, x12] =
            x8m * limbs 64 [x26, x27, x28, x29, x30]] && true;
            
(* adds	x8, x8, x3                                 #! PC = 0xaaaaaaab6bd4 *)
adds carry x8 x8 x3;
(* adcs	x9, x9, x4                                 #! PC = 0xaaaaaaab6bd8 *)
adcs carry x9 x9 x4 carry;
(* stp	x26, x27, [x2]                              #! EA = L0xffffffffe588; PC = 0xaaaaaaab6bdc *)
mov L0xffffffffe588 x26;
mov L0xffffffffe590 x27;
(* adcs	x10, x10, x5                               #! PC = 0xaaaaaaab6be0 *)
adcs carry x10 x10 x5 carry;
(* stp	x28, x29, [x2, #16]                         #! EA = L0xffffffffe598; PC = 0xaaaaaaab6be4 *)
mov L0xffffffffe598 x28;
mov L0xffffffffe5a0 x29;
(* adcs	x11, x11, x6                               #! PC = 0xaaaaaaab6be8 *)
adcs carry x11 x11 x6 carry;
(* str	x30, [x2, #32]                              #! EA = L0xffffffffe5a8; PC = 0xaaaaaaab6bec *)
mov L0xffffffffe5a8 x30;
(* adc	x12, x12, x7                                #! PC = 0xaaaaaaab6bf0 *)
adc x12 x12 x7 carry;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o@uint64, a1o@uint64, a2o@uint64, a3o@uint64, a4o@uint64,
      b0o@uint64, b1o@uint64, b2o@uint64, b3o@uint64, b4o@uint64 :
      and [a0o=x26, a1o=x27, a2o=x28, a3o=x29, a4o=x30,
           b0o=x13, b1o=x14, b2o=x15, b3o=x16, b4o=x17]
   && and [a0o=x26, a1o=x27, a2o=x28, a3o=x29, a4o=x30,
           b0o=x13, b1o=x14, b2o=x15, b3o=x16, b4o=x17];

(* adds	x3, x26, x29                               #! PC = 0xaaaaaaab6bf4 *)
adds carry x3 x26 x29;
(* adcs	x4, x27, x30                               #! PC = 0xaaaaaaab6bf8 *)
adcs carry x4 x27 x30 carry;
(* adcs	x5, x28, xzr                               #! PC = 0xaaaaaaab6bfc *)
adcs carry x5 x28 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c00 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x13, x16                               #! PC = 0xaaaaaaab6c04 *)
adds carry x6 x13 x16;
(* adcs	x7, x14, x17                               #! PC = 0xaaaaaaab6c08 *)
adcs carry x7 x14 x17 carry;
(* adcs	x19, x15, xzr                              #! PC = 0xaaaaaaab6c0c *)
adcs carry x19 x15 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6c10 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m@uint64, x25m@uint64 :
      and [x24m = x24, x25m = x25] && and [x24m = x24, x25m = x25];
      
(* neg	x24, x24                                    #! PC = 0xaaaaaaab6c14 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6c18 *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6c1c *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6c20 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6c24 *)
and x22@uint64 x19 x24;
(* mul	x26, x3, x6                                 #! PC = 0xaaaaaaab6c28 *)
mull Hx3x6 x26 x3 x6;
(* mul	x27, x3, x7                                 #! PC = 0xaaaaaaab6c2c *)
mull Hx3x7 x27 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6c30 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6c34 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6c38 *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m * (1@64-x24m) = 0@64, x25m * (1@64 - x25m) = 0@64,
            limbs 64 [x20, x21, x22] =
            uext x24m 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] =
            uext x25m 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m * (1-x24m) = 0, x25m * (1 - x25m) = 0,
            limbs 64 [x20, x21, x22] =
            x24m * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] =
            x25m * limbs 64 [x3, x4,  x5]] && true;
            
(* umulh	x29, x3, x6                               #! PC = 0xaaaaaaab6c3c *)
mov x29 Hx3x6;
(* umulh	x28, x3, x7                               #! PC = 0xaaaaaaab6c40 *)
mov x28 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6c44 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6c48 *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6c4c *)
adc x22 x22 x25 carry;
(* mul	x30, x4, x6                                 #! PC = 0xaaaaaaab6c50 *)
mull Hx4x6 x30 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6c54 *)
mov x23 Hx4x6;
(* adds	x27, x27, x29                              #! PC = 0xaaaaaaab6c58 *)
adds carry x27 x27 x29;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab6c5c *)
adc x28 x28 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6c60 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x29, x4, x7                               #! PC = 0xaaaaaaab6c64 *)
mov x29 Hx4x7;
(* adds	x27, x27, x30                              #! PC = 0xaaaaaaab6c68 *)
adds carry x27 x27 x30;
(* adcs	x28, x28, x23                              #! PC = 0xaaaaaaab6c6c *)
adcs carry x28 x28 x23 carry;
(* adc	x29, x29, xzr                               #! PC = 0xaaaaaaab6c70 *)
adc x29 x29 0@uint64 carry;
(* mul	x30, x3, x19                                #! PC = 0xaaaaaaab6c74 *)
mull Hx3x19 x30 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6c78 *)
mov x23 Hx3x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6c7c *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c80 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6c84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6c88 *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6c8c *)
mov x23 Hx5x6;
(* adds	x28, x28, x30                              #! PC = 0xaaaaaaab6c90 *)
adds carry x28 x28 x30;
(* adcs	x29, x29, x23                              #! PC = 0xaaaaaaab6c94 *)
adcs carry x29 x29 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6c98 *)
adc x24 x24 0@uint64 carry;
(* mul	x30, x4, x19                                #! PC = 0xaaaaaaab6c9c *)
mull Hx4x19 x30 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ca0 *)
mov x23 Hx4x19;
(* adds	x28, x28, x25                              #! PC = 0xaaaaaaab6ca4 *)
adds carry x28 x28 x25;
(* adcs	x29, x29, x30                              #! PC = 0xaaaaaaab6ca8 *)
adcs carry x29 x29 x30 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cac *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6cb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x30, x5, x7                                 #! PC = 0xaaaaaaab6cb4 *)
mull Hx5x7 x30 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6cb8 *)
mov x23 Hx5x7;
(* adds	x29, x29, x30                              #! PC = 0xaaaaaaab6cbc *)
adds carry x29 x29 x30;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6cc0 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6cc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x30, x5, x19                                #! PC = 0xaaaaaaab6cc8 *)
mull Hx5x19 x30 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6ccc *)
mov x23 Hx5x19;
(* adds	x30, x30, x24                              #! PC = 0xaaaaaaab6cd0 *)
adds carry x30 x30 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6cd4 *)
adc x23 x23 x25 carry;
(* adds	x20, x29, x20                              #! PC = 0xaaaaaaab6cd8 *)
adds carry x20 x29 x20;
(* adcs	x21, x30, x21                              #! PC = 0xaaaaaaab6cdc *)
adcs carry x21 x30 x21 carry;
(* ldp	x29, x30, [x2]                              #! EA = L0xffffffffe588; Value = 0x2bb05b03453c004a; PC = 0xaaaaaaab6ce0 *)
mov x29 L0xffffffffe588;
mov x30 L0xffffffffe590;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6ce4 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x2, #16]                              #! EA = L0xffffffffe598; Value = 0xa8745cdb15bd2a7b; PC = 0xaaaaaaab6ce8 *)
mov x23 L0xffffffffe598;
(* mul	x3, x29, x13                                #! PC = 0xaaaaaaab6cec *)
mull Hx29x13 x3 x29 x13;
(* mul	x4, x29, x14                                #! PC = 0xaaaaaaab6cf0 *)
mull Hx29x14 x4 x29 x14;
(* umulh	x6, x29, x13                              #! PC = 0xaaaaaaab6cf4 *)
mov x6 Hx29x13;
(* umulh	x5, x29, x14                              #! PC = 0xaaaaaaab6cf8 *)
mov x5 Hx29x14;
(* mul	x7, x30, x13                                #! PC = 0xaaaaaaab6cfc *)
mull Hx30x13 x7 x30 x13;
(* umulh	x19, x30, x13                             #! PC = 0xaaaaaaab6d00 *)
mov x19 Hx30x13;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6d04 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6d08 *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x30, x14                               #! PC = 0xaaaaaaab6d0c *)
mull Hx30x14 x25 x30 x14;
(* umulh	x6, x30, x14                              #! PC = 0xaaaaaaab6d10 *)
mov x6 Hx30x14;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6d14 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6d18 *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6d1c *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x29, x15                                #! PC = 0xaaaaaaab6d20 *)
mull Hx29x15 x7 x29 x15;
(* umulh	x19, x29, x15                             #! PC = 0xaaaaaaab6d24 *)
mov x19 Hx29x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d28 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d2c *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6d30 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x13                               #! PC = 0xaaaaaaab6d34 *)
mull Hx23x13 x25 x23 x13;
(* umulh	x19, x23, x13                             #! PC = 0xaaaaaaab6d38 *)
mov x19 Hx23x13;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6d3c *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6d40 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6d44 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x30, x15                                #! PC = 0xaaaaaaab6d48 *)
mull Hx30x15 x7 x30 x15;
(* umulh	x19, x30, x15                             #! PC = 0xaaaaaaab6d4c *)
mov x19 Hx30x15;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6d50 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6d54 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d58 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6d5c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x14                                #! PC = 0xaaaaaaab6d60 *)
mull Hx23x14 x7 x23 x14;
(* umulh	x19, x23, x14                             #! PC = 0xaaaaaaab6d64 *)
mov x19 Hx23x14;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6d68 *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6d6c *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6d70 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x15                                #! PC = 0xaaaaaaab6d74 *)
mull Hx23x15 x7 x23 x15;
(* umulh	x19, x23, x15                             #! PC = 0xaaaaaaab6d78 *)
mov x19 Hx23x15;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6d7c *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6d80 *)
adc x19 x19 x25 carry;
(* ldp	x29, x30, [x2, #24]                         #! EA = L0xffffffffe5a0; Value = 0x7041a4c7e923f71d; PC = 0xaaaaaaab6d84 *)
mov x29 L0xffffffffe5a0;
mov x30 L0xffffffffe5a8;
(* subs	x26, x26, x3                               #! PC = 0xaaaaaaab6d88 *)
subc carry x26 x26 x3;
(* sbcs	x27, x27, x4                               #! PC = 0xaaaaaaab6d8c *)
sbcs carry x27 x27 x4 carry;
(* mul	x13, x29, x16                               #! PC = 0xaaaaaaab6d90 *)
mull Hx29x16 x13 x29 x16;
(* umulh	x23, x29, x16                             #! PC = 0xaaaaaaab6d94 *)
mov x23 Hx29x16;
(* sbcs	x28, x28, x5                               #! PC = 0xaaaaaaab6d98 *)
sbcs carry x28 x28 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6d9c *)
sbcs carry x20 x20 x6 carry;
(* mul	x14, x29, x17                               #! PC = 0xaaaaaaab6da0 *)
mull Hx29x17 x14 x29 x17;
(* umulh	x15, x29, x17                             #! PC = 0xaaaaaaab6da4 *)
mov x15 Hx29x17;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6da8 *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab6dac *)
sbcs dontcare x22 x22 x19 carry;
(* mul	x29, x30, x16                               #! PC = 0xaaaaaaab6db0 *)
mull Hx30x16 x29 x30 x16;
(* umulh	x16, x30, x16                             #! PC = 0xaaaaaaab6db4 *)
mov x16 Hx30x16;
(* adds	x14, x14, x23                              #! PC = 0xaaaaaaab6db8 *)
adds carry x14 x14 x23;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6dbc *)
adc x15 x15 0@uint64 carry;
(* mul	x24, x30, x17                               #! PC = 0xaaaaaaab6dc0 *)
mull Hx30x17 x24 x30 x17;
(* umulh	x17, x30, x17                             #! PC = 0xaaaaaaab6dc4 *)
mov x17 Hx30x17;
(* adds	x14, x14, x29                              #! PC = 0xaaaaaaab6dc8 *)
adds carry x14 x14 x29;
(* adcs	x15, x15, x16                              #! PC = 0xaaaaaaab6dcc *)
adcs carry x15 x15 x16 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab6dd0 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x15, x15, x24                              #! PC = 0xaaaaaaab6dd4 *)
adds carry x15 x15 x24;
(* adc	x23, x23, x17                               #! PC = 0xaaaaaaab6dd8 *)
adc x23 x23 x17 carry;
(* subs	x26, x26, x13                              #! PC = 0xaaaaaaab6ddc *)
subc carry x26 x26 x13;
(* sbcs	x27, x27, x14                              #! PC = 0xaaaaaaab6de0 *)
sbcs carry x27 x27 x14 carry;
(* sbcs	x28, x28, x15                              #! PC = 0xaaaaaaab6de4 *)
sbcs carry x28 x28 x15 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab6de8 *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab6dec *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab6df0 *)
sbcs dontcare x22 x22 0@uint64 carry;

(* NOTE: summary *)
assert eqmod limbs 64 [x26, x27, x28, x20, x21, x22]
             limbs 64 [a0o, a1o, a2o] * limbs 64 [b3o, b4o] +
             limbs 64 [b0o, b1o, b2o] * limbs 64 [a3o, a4o]
             2**384 && true;
assume limbs 64 [x26, x27, x28, x20, x21, x22] =
       limbs 64 [a0o, a1o, a2o] * limbs 64 [b3o, b4o] +
       limbs 64 [b0o, b1o, b2o] * limbs 64 [a3o, a4o] && true;

(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab6df4 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab6df8 *)
adcs carry x7 x7 x27 carry;
(* adcs	x19, x19, x28                              #! PC = 0xaaaaaaab6dfc *)
adcs carry x19 x19 x28 carry;
(* adcs	x20, x20, x13                              #! PC = 0xaaaaaaab6e00 *)
adcs carry x20 x20 x13 carry;
(* adcs	x21, x21, x14                              #! PC = 0xaaaaaaab6e04 *)
adcs carry x21 x21 x14 carry;
(* adcs	x22, x22, x15                              #! PC = 0xaaaaaaab6e08 *)
adcs carry x22 x22 x15 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab6e0c *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL320_KARATSUBA_COMBA ends *)

(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe588; PC = 0xaaaaaaab6e10 *)
mov L0xffffffffe588 x3;
mov L0xffffffffe590 x4;
(* adds	x8, x8, x19                                #! PC = 0xaaaaaaab6e14 *)
adds carry x8 x8 x19;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe598; PC = 0xaaaaaaab6e18 *)
mov L0xffffffffe598 x5;
mov L0xffffffffe5a0 x6;
(* adcs	x9, x9, x20                                #! PC = 0xaaaaaaab6e1c *)
adcs carry x9 x9 x20 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe5a8; PC = 0xaaaaaaab6e20 *)
mov L0xffffffffe5a8 x7;
(* adcs	x10, x10, x21                              #! PC = 0xaaaaaaab6e24 *)
adcs carry x10 x10 x21 carry;
(* ldp	x13, x14, [x0]                              #! EA = L0xffffffffe898; Value = 0xfa5fc2abad4a0047; PC = 0xaaaaaaab6e28 *)
mov x13 L0xffffffffe898;
mov x14 L0xffffffffe8a0;
(* adcs	x11, x11, x22                              #! PC = 0xaaaaaaab6e2c *)
adcs carry x11 x11 x22 carry;
(* ldp	x15, x16, [x0, #16]                         #! EA = L0xffffffffe8a8; Value = 0xd0f27e80520c7307; PC = 0xaaaaaaab6e30 *)
mov x15 L0xffffffffe8a8;
mov x16 L0xffffffffe8b0;
(* adc	x12, x12, x23                               #! PC = 0xaaaaaaab6e34 *)
adcs dontcare x12 x12 x23 carry;

assert eqmod limbs 64 [x3, x4, x5, x6, x7, x8, x9, x10, x11, x12]
             (limbs 64 [a0, a1, a2, a3, a4] + limbs 64 [a5, a6, a7, a8, a9]) *
             (limbs 64 [b0, b1, b2, b3, b4] + limbs 64 [b5, b6, b7, b8, b9])
             2**640 && true;

(* ldr	x17, [x0, #32]                              #! EA = L0xffffffffe8b8; Value = 0xbb7dc30a0930f7cf; PC = 0xaaaaaaab6e38 *)
mov x17 L0xffffffffe8b8;
(* ldp	x26, x27, [x1]                              #! EA = L0xffffffffe8e8; Value = 0xf94ef7265867cd3a; PC = 0xaaaaaaab6e3c *)
mov x26 L0xffffffffe8e8;
mov x27 L0xffffffffe8f0;
(* ldp	x28, x29, [x1, #16]                         #! EA = L0xffffffffe8f8; Value = 0x9340097c48935635; PC = 0xaaaaaaab6e40 *)
mov x28 L0xffffffffe8f8;
mov x29 L0xffffffffe900;
(* ldr	x30, [x1, #32]                              #! EA = L0xffffffffe908; Value = 0x749190d2ef674575; PC = 0xaaaaaaab6e44 *)
mov x30 L0xffffffffe908;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o2@uint64, a1o2@uint64, a2o2@uint64, a3o2@uint64, a4o2@uint64,
      b0o2@uint64, b1o2@uint64, b2o2@uint64, b3o2@uint64, b4o2@uint64 :
      and [a0o2=x13, a1o2=x14, a2o2=x15, a3o2=x16, a4o2=x17,
           b0o2=x26, b1o2=x27, b2o2=x28, b3o2=x29, b4o2=x30]
   && and [a0o2=x13, a1o2=x14, a2o2=x15, a3o2=x16, a4o2=x17,
           b0o2=x26, b1o2=x27, b2o2=x28, b3o2=x29, b4o2=x30];

(* adds	x3, x13, x16                               #! PC = 0xaaaaaaab6e48 *)
adds carry x3 x13 x16;
(* adcs	x4, x14, x17                               #! PC = 0xaaaaaaab6e4c *)
adcs carry x4 x14 x17 carry;
(* adcs	x5, x15, xzr                               #! PC = 0xaaaaaaab6e50 *)
adcs carry x5 x15 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6e54 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x6, x26, x29                               #! PC = 0xaaaaaaab6e58 *)
adds carry x6 x26 x29;
(* adcs	x7, x27, x30                               #! PC = 0xaaaaaaab6e5c *)
adcs carry x7 x27 x30 carry;
(* adcs	x19, x28, xzr                              #! PC = 0xaaaaaaab6e60 *)
adcs carry x19 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6e64 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m2@uint64, x25m2@uint64 :
      and [x24m2 = x24, x25m2 = x25] && and [x24m2 = x24, x25m2 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab6e68 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab6e6c *)
subc dontcare x25 0@uint64 x25;
(* and	x20, x6, x24                                #! PC = 0xaaaaaaab6e70 *)
and x20@uint64 x6 x24;
(* and	x21, x7, x24                                #! PC = 0xaaaaaaab6e74 *)
and x21@uint64 x7 x24;
(* and	x22, x19, x24                               #! PC = 0xaaaaaaab6e78 *)
and x22@uint64 x19 x24;
(* mul	x13, x3, x6                                 #! PC = 0xaaaaaaab6e7c *)
mull Hx3x6 x13 x3 x6;
(* mul	x14, x3, x7                                 #! PC = 0xaaaaaaab6e80 *)
mull Hx3x7 x14 x3 x7;
(* and	x23, x3, x25                                #! PC = 0xaaaaaaab6e84 *)
and x23@uint64 x3 x25;
(* and	x24, x4, x25                                #! PC = 0xaaaaaaab6e88 *)
and x24@uint64 x4 x25;
(* and	x25, x5, x25                                #! PC = 0xaaaaaaab6e8c *)
and x25@uint64 x5 x25;

(* NOTE: mask *)
assert true
    && and [x24m2 * (1@64-x24m2) = 0@64, x25m2 * (1@64 - x25m2) = 0@64,
            limbs 64 [x20, x21, x22] =
            uext x24m2 128 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] =
            uext x25m2 128 * limbs 64 [x3, x4,  x5]];
assume and [x24m2 * (1-x24m2) = 0, x25m2 * (1 - x25m2) = 0,
            limbs 64 [x20, x21, x22] =
            x24m2 * limbs 64 [x6, x7, x19],
            limbs 64 [x23, x24, x25] =
            x25m2 * limbs 64 [x3, x4,  x5]] && true;

(* umulh	x16, x3, x6                               #! PC = 0xaaaaaaab6e90 *)
mov x16 Hx3x6;
(* umulh	x15, x3, x7                               #! PC = 0xaaaaaaab6e94 *)
mov x15 Hx3x7;
(* adds	x20, x20, x23                              #! PC = 0xaaaaaaab6e98 *)
adds carry x20 x20 x23;
(* adcs	x21, x21, x24                              #! PC = 0xaaaaaaab6e9c *)
adcs carry x21 x21 x24 carry;
(* adc	x22, x22, x25                               #! PC = 0xaaaaaaab6ea0 *)
adc x22 x22 x25 carry;
(* mul	x17, x4, x6                                 #! PC = 0xaaaaaaab6ea4 *)
mull Hx4x6 x17 x4 x6;
(* umulh	x23, x4, x6                               #! PC = 0xaaaaaaab6ea8 *)
mov x23 Hx4x6;
(* adds	x14, x14, x16                              #! PC = 0xaaaaaaab6eac *)
adds carry x14 x14 x16;
(* adc	x15, x15, xzr                               #! PC = 0xaaaaaaab6eb0 *)
adc x15 x15 0@uint64 carry;
(* mul	x25, x4, x7                                 #! PC = 0xaaaaaaab6eb4 *)
mull Hx4x7 x25 x4 x7;
(* umulh	x16, x4, x7                               #! PC = 0xaaaaaaab6eb8 *)
mov x16 Hx4x7;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab6ebc *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x23                              #! PC = 0xaaaaaaab6ec0 *)
adcs carry x15 x15 x23 carry;
(* adc	x16, x16, xzr                               #! PC = 0xaaaaaaab6ec4 *)
adc x16 x16 0@uint64 carry;
(* mul	x17, x3, x19                                #! PC = 0xaaaaaaab6ec8 *)
mull Hx3x19 x17 x3 x19;
(* umulh	x23, x3, x19                              #! PC = 0xaaaaaaab6ecc *)
mov x23 Hx3x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ed0 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ed4 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6ed8 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x5, x6                                 #! PC = 0xaaaaaaab6edc *)
mull Hx5x6 x25 x5 x6;
(* umulh	x23, x5, x6                               #! PC = 0xaaaaaaab6ee0 *)
mov x23 Hx5x6;
(* adds	x15, x15, x17                              #! PC = 0xaaaaaaab6ee4 *)
adds carry x15 x15 x17;
(* adcs	x16, x16, x23                              #! PC = 0xaaaaaaab6ee8 *)
adcs carry x16 x16 x23 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6eec *)
adc x24 x24 0@uint64 carry;
(* mul	x17, x4, x19                                #! PC = 0xaaaaaaab6ef0 *)
mull Hx4x19 x17 x4 x19;
(* umulh	x23, x4, x19                              #! PC = 0xaaaaaaab6ef4 *)
mov x23 Hx4x19;
(* adds	x15, x15, x25                              #! PC = 0xaaaaaaab6ef8 *)
adds carry x15 x15 x25;
(* adcs	x16, x16, x17                              #! PC = 0xaaaaaaab6efc *)
adcs carry x16 x16 x17 carry;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f00 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6f04 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x17, x5, x7                                 #! PC = 0xaaaaaaab6f08 *)
mull Hx5x7 x17 x5 x7;
(* umulh	x23, x5, x7                               #! PC = 0xaaaaaaab6f0c *)
mov x23 Hx5x7;
(* adds	x16, x16, x17                              #! PC = 0xaaaaaaab6f10 *)
adds carry x16 x16 x17;
(* adcs	x24, x24, x23                              #! PC = 0xaaaaaaab6f14 *)
adcs carry x24 x24 x23 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6f18 *)
adc x25 x25 0@uint64 carry;
(* mul	x17, x5, x19                                #! PC = 0xaaaaaaab6f1c *)
mull Hx5x19 x17 x5 x19;
(* umulh	x23, x5, x19                              #! PC = 0xaaaaaaab6f20 *)
mov x23 Hx5x19;
(* adds	x17, x17, x24                              #! PC = 0xaaaaaaab6f24 *)
adds carry x17 x17 x24;
(* adc	x23, x23, x25                               #! PC = 0xaaaaaaab6f28 *)
adc x23 x23 x25 carry;
(* adds	x20, x16, x20                              #! PC = 0xaaaaaaab6f2c *)
adds carry x20 x16 x20;
(* adcs	x21, x17, x21                              #! PC = 0xaaaaaaab6f30 *)
adcs carry x21 x17 x21 carry;
(* ldp	x16, x17, [x0]                              #! EA = L0xffffffffe898; Value = 0xfa5fc2abad4a0047; PC = 0xaaaaaaab6f34 *)
mov x16 L0xffffffffe898;
mov x17 L0xffffffffe8a0;
(* adc	x22, x23, x22                               #! PC = 0xaaaaaaab6f38 *)
adcs dontcare x22 x23 x22 carry;
(* ldr	x23, [x0, #16]                              #! EA = L0xffffffffe8a8; Value = 0xd0f27e80520c7307; PC = 0xaaaaaaab6f3c *)
mov x23 L0xffffffffe8a8;
(* mul	x3, x16, x26                                #! PC = 0xaaaaaaab6f40 *)
mull Hx16x26 x3 x16 x26;
(* mul	x4, x16, x27                                #! PC = 0xaaaaaaab6f44 *)
mull Hx16x27 x4 x16 x27;
(* umulh	x6, x16, x26                              #! PC = 0xaaaaaaab6f48 *)
mov x6 Hx16x26;
(* umulh	x5, x16, x27                              #! PC = 0xaaaaaaab6f4c *)
mov x5 Hx16x27;
(* mul	x7, x17, x26                                #! PC = 0xaaaaaaab6f50 *)
mull Hx17x26 x7 x17 x26;
(* umulh	x19, x17, x26                             #! PC = 0xaaaaaaab6f54 *)
mov x19 Hx17x26;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab6f58 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab6f5c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x17, x27                               #! PC = 0xaaaaaaab6f60 *)
mull Hx17x27 x25 x17 x27;
(* umulh	x6, x17, x27                              #! PC = 0xaaaaaaab6f64 *)
mov x6 Hx17x27;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab6f68 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x19                                #! PC = 0xaaaaaaab6f6c *)
adcs carry x5 x5 x19 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab6f70 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x16, x28                                #! PC = 0xaaaaaaab6f74 *)
mull Hx16x28 x7 x16 x28;
(* umulh	x19, x16, x28                             #! PC = 0xaaaaaaab6f78 *)
mov x19 Hx16x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6f7c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f80 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab6f84 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x23, x26                               #! PC = 0xaaaaaaab6f88 *)
mull Hx23x26 x25 x23 x26;
(* umulh	x19, x23, x26                             #! PC = 0xaaaaaaab6f8c *)
mov x19 Hx23x26;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab6f90 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x19                                #! PC = 0xaaaaaaab6f94 *)
adcs carry x6 x6 x19 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab6f98 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x17, x28                                #! PC = 0xaaaaaaab6f9c *)
mull Hx17x28 x7 x17 x28;
(* umulh	x19, x17, x28                             #! PC = 0xaaaaaaab6fa0 *)
mov x19 Hx17x28;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab6fa4 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab6fa8 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fac *)
adcs carry x24 x24 x19 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab6fb0 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x23, x27                                #! PC = 0xaaaaaaab6fb4 *)
mull Hx23x27 x7 x23 x27;
(* umulh	x19, x23, x27                             #! PC = 0xaaaaaaab6fb8 *)
mov x19 Hx23x27;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab6fbc *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x19                              #! PC = 0xaaaaaaab6fc0 *)
adcs carry x24 x24 x19 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab6fc4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x23, x28                                #! PC = 0xaaaaaaab6fc8 *)
mull Hx23x28 x7 x23 x28;
(* umulh	x19, x23, x28                             #! PC = 0xaaaaaaab6fcc *)
mov x19 Hx23x28;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab6fd0 *)
adds carry x7 x7 x24;
(* adc	x19, x19, x25                               #! PC = 0xaaaaaaab6fd4 *)
adc x19 x19 x25 carry;
(* ldp	x16, x17, [x0, #24]                         #! EA = L0xffffffffe8b0; Value = 0x00f1e7d6f9dcf403; PC = 0xaaaaaaab6fd8 *)
mov x16 L0xffffffffe8b0;
mov x17 L0xffffffffe8b8;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab6fdc *)
subc carry x13 x13 x3;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab6fe0 *)
sbcs carry x14 x14 x4 carry;
(* mul	x26, x16, x29                               #! PC = 0xaaaaaaab6fe4 *)
mull Hx16x29 x26 x16 x29;
(* umulh	x23, x16, x29                             #! PC = 0xaaaaaaab6fe8 *)
mov x23 Hx16x29;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab6fec *)
sbcs carry x15 x15 x5 carry;
(* sbcs	x20, x20, x6                               #! PC = 0xaaaaaaab6ff0 *)
sbcs carry x20 x20 x6 carry;
(* mul	x27, x16, x30                               #! PC = 0xaaaaaaab6ff4 *)
mull Hx16x30 x27 x16 x30;
(* umulh	x28, x16, x30                             #! PC = 0xaaaaaaab6ff8 *)
mov x28 Hx16x30;
(* sbcs	x21, x21, x7                               #! PC = 0xaaaaaaab6ffc *)
sbcs carry x21 x21 x7 carry;
(* sbc	x22, x22, x19                               #! PC = 0xaaaaaaab7000 *)
sbcs docare x22 x22 x19 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x16, x17, x29                               #! PC = 0xaaaaaaab7004 *)
mull Hx17x29 x16 x17 x29;
(* umulh	x29, x17, x29                             #! PC = 0xaaaaaaab7008 *)
mov x29 Hx17x29;
(* adds	x27, x27, x23                              #! PC = 0xaaaaaaab700c *)
adds carry x27 x27 x23;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab7010 *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x17, x30                               #! PC = 0xaaaaaaab7014 *)
mull Hx17x30 x24 x17 x30;
(* umulh	x30, x17, x30                             #! PC = 0xaaaaaaab7018 *)
mov x30 Hx17x30;
(* adds	x27, x27, x16                              #! PC = 0xaaaaaaab701c *)
adds carry x27 x27 x16;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab7020 *)
adcs carry x28 x28 x29 carry;
(* adc	x23, xzr, xzr                               #! PC = 0xaaaaaaab7024 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab7028 *)
adds carry x28 x28 x24;
(* adc	x23, x23, x30                               #! PC = 0xaaaaaaab702c *)
adc x23 x23 x30 carry;
(* subs	x13, x13, x26                              #! PC = 0xaaaaaaab7030 *)
subc carry x13 x13 x26;
(* sbcs	x14, x14, x27                              #! PC = 0xaaaaaaab7034 *)
sbcs carry x14 x14 x27 carry;
(* sbcs	x15, x15, x28                              #! PC = 0xaaaaaaab7038 *)
sbcs carry x15 x15 x28 carry;
(* sbcs	x20, x20, x23                              #! PC = 0xaaaaaaab703c *)
sbcs carry x20 x20 x23 carry;
(* sbcs	x21, x21, xzr                              #! PC = 0xaaaaaaab7040 *)
sbcs carry x21 x21 0@uint64 carry;
(* sbc	x22, x22, xzr                               #! PC = 0xaaaaaaab7044 *)
sbcs docare x22 x22 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod limbs 64 [x13, x14, x15, x20, x21, x22]
             limbs 64 [a0o2, a1o2, a2o2] * limbs 64 [b3o2, b4o2] +
             limbs 64 [b0o2, b1o2, b2o2] * limbs 64 [a3o2, a4o2]
             2**384 && true;
assume limbs 64 [x13, x14, x15, x20, x21, x22] =
       limbs 64 [a0o2, a1o2, a2o2] * limbs 64 [b3o2, b4o2] +
       limbs 64 [b0o2, b1o2, b2o2] * limbs 64 [a3o2, a4o2] && true;

(* adds	x6, x6, x13                                #! PC = 0xaaaaaaab7048 *)
adds carry x6 x6 x13;
(* adcs	x7, x7, x14                                #! PC = 0xaaaaaaab704c *)
adcs carry x7 x7 x14 carry;
(* adcs	x19, x19, x15                              #! PC = 0xaaaaaaab7050 *)
adcs carry x19 x19 x15 carry;
(* adcs	x20, x20, x26                              #! PC = 0xaaaaaaab7054 *)
adcs carry x20 x20 x26 carry;
(* adcs	x21, x21, x27                              #! PC = 0xaaaaaaab7058 *)
adcs carry x21 x21 x27 carry;
(* adcs	x22, x22, x28                              #! PC = 0xaaaaaaab705c *)
adcs carry x22 x22 x28 carry;
(* adc	x23, x23, xzr                               #! PC = 0xaaaaaaab7060 *)
adcs docare x23 x23 0@uint64 carry;

(* TODO: cannot carry *)
(* assert true && docare = 0@1; *)
assume docare = 0 && true;

(* NOTE: MUL320_KARATSUBA_COMBA ends *)

(* ldp	x13, x14, [x2]                              #! EA = L0xffffffffe588; Value = 0xb051a501a6ed96d0; PC = 0xaaaaaaab7064 *)
mov x13 L0xffffffffe588;
mov x14 L0xffffffffe590;
(* subs	x13, x13, x3                               #! PC = 0xaaaaaaab7068 *)
subc carry x13 x13 x3;
(* ldp	x15, x16, [x2, #16]                         #! EA = L0xffffffffe598; Value = 0x4951ab1cd8fd4177; PC = 0xaaaaaaab706c *)
mov x15 L0xffffffffe598;
mov x16 L0xffffffffe5a0;
(* sbcs	x14, x14, x4                               #! PC = 0xaaaaaaab7070 *)
sbcs carry x14 x14 x4 carry;
(* ldr	x17, [x2, #32]                              #! EA = L0xffffffffe5a8; Value = 0x43dab1145ed2514c; PC = 0xaaaaaaab7074 *)
mov x17 L0xffffffffe5a8;
(* sbcs	x15, x15, x5                               #! PC = 0xaaaaaaab7078 *)
sbcs carry x15 x15 x5 carry;
(* stp	x3, x4, [x2]                                #! EA = L0xffffffffe588; PC = 0xaaaaaaab707c *)
mov L0xffffffffe588 x3;
mov L0xffffffffe590 x4;
(* sbcs	x16, x16, x6                               #! PC = 0xaaaaaaab7080 *)
sbcs carry x16 x16 x6 carry;
(* stp	x5, x6, [x2, #16]                           #! EA = L0xffffffffe598; PC = 0xaaaaaaab7084 *)
mov L0xffffffffe598 x5;
mov L0xffffffffe5a0 x6;
(* sbcs	x17, x17, x7                               #! PC = 0xaaaaaaab7088 *)
sbcs carry x17 x17 x7 carry;
(* str	x7, [x2, #32]                               #! EA = L0xffffffffe5a8; PC = 0xaaaaaaab708c *)
mov L0xffffffffe5a8 x7;
(* sbcs	x8, x8, x19                                #! PC = 0xaaaaaaab7090 *)
sbcs carry x8 x8 x19 carry;
(* ldp	x3, x4, [x0, #40]                           #! EA = L0xffffffffe8c0; Value = 0x3150985797f20003; PC = 0xaaaaaaab7094 *)
mov x3 L0xffffffffe8c0;
mov x4 L0xffffffffe8c8;
(* sbcs	x9, x9, x20                                #! PC = 0xaaaaaaab7098 *)
sbcs carry x9 x9 x20 carry;
(* ldp	x5, x6, [x0, #56]                           #! EA = L0xffffffffe8d0; Value = 0xd781de5ac3b0b774; PC = 0xaaaaaaab709c *)
mov x5 L0xffffffffe8d0;
mov x6 L0xffffffffe8d8;
(* ldr	x7, [x0, #72]                               #! EA = L0xffffffffe8e0; Value = 0x000000013f0332e7; PC = 0xaaaaaaab70a0 *)
mov x7 L0xffffffffe8e0;
(* sbcs	x10, x10, x21                              #! PC = 0xaaaaaaab70a4 *)
sbcs carry x10 x10 x21 carry;
(* ldp	x26, x27, [x1, #40]                         #! EA = L0xffffffffe910; Value = 0x22b4ee8beb83a00e; PC = 0xaaaaaaab70a8 *)
mov x26 L0xffffffffe910;
mov x27 L0xffffffffe918;
(* sbcs	x11, x11, x22                              #! PC = 0xaaaaaaab70ac *)
sbcs carry x11 x11 x22 carry;
(* ldp	x28, x29, [x1, #56]                         #! EA = L0xffffffffe920; Value = 0x95294985787e7492; PC = 0xaaaaaaab70b0 *)
mov x28 L0xffffffffe920;
mov x29 L0xffffffffe928;
(* ldr	x30, [x1, #72]                              #! EA = L0xffffffffe930; Value = 0x000000023a3ba144; PC = 0xaaaaaaab70b4 *)
mov x30 L0xffffffffe930;
(* sbc	x12, x12, x23                               #! PC = 0xaaaaaaab70b8 *)
sbcs dontcare x12 x12 x23 carry;
(* stp	x8, x9, [x2, #40]                           #! EA = L0xffffffffe5b0; PC = 0xaaaaaaab70bc *)
mov L0xffffffffe5b0 x8;
mov L0xffffffffe5b8 x9;
(* stp	x10, x11, [x2, #56]                         #! EA = L0xffffffffe5c0; PC = 0xaaaaaaab70c0 *)
mov L0xffffffffe5c0 x10;
mov L0xffffffffe5c8 x11;
(* stp	x12, x13, [x2, #72]                         #! EA = L0xffffffffe5d0; PC = 0xaaaaaaab70c4 *)
mov L0xffffffffe5d0 x12;
mov L0xffffffffe5d8 x13;
(* stp	x14, x15, [x2, #88]                         #! EA = L0xffffffffe5e0; PC = 0xaaaaaaab70c8 *)
mov L0xffffffffe5e0 x14;
mov L0xffffffffe5e8 x15;
(* stp	x16, x17, [x2, #104]                        #! EA = L0xffffffffe5f0; PC = 0xaaaaaaab70cc *)
mov L0xffffffffe5f0 x16;
mov L0xffffffffe5f8 x17;
(* add	x0, x0, #0x28                               #! PC = 0xaaaaaaab70d0 *)
adds dontcare x0 x0 0x28@uint64;

(* NOTE: MUL320_KARATSUBA_COMBA starts *)

ghost a0o3@uint64, a1o3@uint64, a2o3@uint64, a3o3@uint64, a4o3@uint64,
      b0o3@uint64, b1o3@uint64, b2o3@uint64, b3o3@uint64, b4o3@uint64 :
      and [a0o3= x3, a1o3= x4, a2o3= x5, a3o3= x6, a4o3= x7,
           b0o3=x26, b1o3=x27, b2o3=x28, b3o3=x29, b4o3=x30]
   && and [a0o3= x3, a1o3= x4, a2o3= x5, a3o3= x6, a4o3= x7,
           b0o3=x26, b1o3=x27, b2o3=x28, b3o3=x29, b4o3=x30];

(* adds	x8, x3, x6                                 #! PC = 0xaaaaaaab70d4 *)
adds carry x8 x3 x6;
(* adcs	x9, x4, x7                                 #! PC = 0xaaaaaaab70d8 *)
adcs carry x9 x4 x7 carry;
(* adcs	x10, x5, xzr                               #! PC = 0xaaaaaaab70dc *)
adcs carry x10 x5 0@uint64 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab70e0 *)
adc x24 0@uint64 0@uint64 carry;
(* adds	x11, x26, x29                              #! PC = 0xaaaaaaab70e4 *)
adds carry x11 x26 x29;
(* adcs	x12, x27, x30                              #! PC = 0xaaaaaaab70e8 *)
adcs carry x12 x27 x30 carry;
(* adcs	x13, x28, xzr                              #! PC = 0xaaaaaaab70ec *)
adcs carry x13 x28 0@uint64 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab70f0 *)
adc x25 0@uint64 0@uint64 carry;

ghost x24m3@uint64, x25m3@uint64 :
      and [x24m3 = x24, x25m3 = x25] && and [x24m3 = x24, x25m3 = x25];

(* neg	x24, x24                                    #! PC = 0xaaaaaaab70f4 *)
subc dontcare x24 0@uint64 x24;
(* neg	x25, x25                                    #! PC = 0xaaaaaaab70f8 *)
subc dontcare x25 0@uint64 x25;
(* and	x14, x11, x24                               #! PC = 0xaaaaaaab70fc *)
and x14@uint64 x11 x24;
(* and	x15, x12, x24                               #! PC = 0xaaaaaaab7100 *)
and x15@uint64 x12 x24;
(* and	x16, x13, x24                               #! PC = 0xaaaaaaab7104 *)
and x16@uint64 x13 x24;
(* mul	x3, x8, x11                                 #! PC = 0xaaaaaaab7108 *)
mull Hx8x11 x3 x8 x11;
(* mul	x4, x8, x12                                 #! PC = 0xaaaaaaab710c *)
mull Hx8x12 x4 x8 x12;
(* and	x17, x8, x25                                #! PC = 0xaaaaaaab7110 *)
and x17@uint64 x8 x25;
(* and	x24, x9, x25                                #! PC = 0xaaaaaaab7114 *)
and x24@uint64 x9 x25;
(* and	x25, x10, x25                               #! PC = 0xaaaaaaab7118 *)
and x25@uint64 x10 x25;

(* NOTE: mask *)
assert true
    && and [x24m3 * (1@64-x24m3) = 0@64, x25m3 * (1@64 - x25m3) = 0@64,
            limbs 64 [x14, x15, x16] =
            uext x24m3 128 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] =
            uext x25m3 128 * limbs 64 [ x8, x9,  x10]];
assume and [x24m3 * (1-x24m3) = 0, x25m3 * (1 - x25m3) = 0,
            limbs 64 [x14, x15, x16] =
            x24m3 * limbs 64 [x11, x12, x13],
            limbs 64 [x17, x24, x25] =
            x25m3 * limbs 64 [ x8,  x9, x10]] && true;

(* umulh	x6, x8, x11                               #! PC = 0xaaaaaaab711c *)
mov x6 Hx8x11;
(* umulh	x5, x8, x12                               #! PC = 0xaaaaaaab7120 *)
mov x5 Hx8x12;
(* adds	x14, x14, x17                              #! PC = 0xaaaaaaab7124 *)
adds carry x14 x14 x17;
(* adcs	x15, x15, x24                              #! PC = 0xaaaaaaab7128 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0xaaaaaaab712c *)
adc x16 x16 x25 carry;
(* mul	x7, x9, x11                                 #! PC = 0xaaaaaaab7130 *)
mull Hx9x11 x7 x9 x11;
(* umulh	x17, x9, x11                              #! PC = 0xaaaaaaab7134 *)
mov x17 Hx9x11;
(* adds	x4, x4, x6                                 #! PC = 0xaaaaaaab7138 *)
adds carry x4 x4 x6;
(* adc	x5, x5, xzr                                 #! PC = 0xaaaaaaab713c *)
adc x5 x5 0@uint64 carry;
(* mul	x25, x9, x12                                #! PC = 0xaaaaaaab7140 *)
mull Hx9x12 x25 x9 x12;
(* umulh	x6, x9, x12                               #! PC = 0xaaaaaaab7144 *)
mov x6 Hx9x12;
(* adds	x4, x4, x7                                 #! PC = 0xaaaaaaab7148 *)
adds carry x4 x4 x7;
(* adcs	x5, x5, x17                                #! PC = 0xaaaaaaab714c *)
adcs carry x5 x5 x17 carry;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7150 *)
adc x6 x6 0@uint64 carry;
(* mul	x7, x8, x13                                 #! PC = 0xaaaaaaab7154 *)
mull Hx8x13 x7 x8 x13;
(* umulh	x17, x8, x13                              #! PC = 0xaaaaaaab7158 *)
mov x17 Hx8x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab715c *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7160 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7164 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x10, x11                               #! PC = 0xaaaaaaab7168 *)
mull Hx10x11 x25 x10 x11;
(* umulh	x17, x10, x11                             #! PC = 0xaaaaaaab716c *)
mov x17 Hx10x11;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7170 *)
adds carry x5 x5 x7;
(* adcs	x6, x6, x17                                #! PC = 0xaaaaaaab7174 *)
adcs carry x6 x6 x17 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7178 *)
adc x24 x24 0@uint64 carry;
(* mul	x7, x9, x13                                 #! PC = 0xaaaaaaab717c *)
mull Hx9x13 x7 x9 x13;
(* umulh	x17, x9, x13                              #! PC = 0xaaaaaaab7180 *)
mov x17 Hx9x13;
(* adds	x5, x5, x25                                #! PC = 0xaaaaaaab7184 *)
adds carry x5 x5 x25;
(* adcs	x6, x6, x7                                 #! PC = 0xaaaaaaab7188 *)
adcs carry x6 x6 x7 carry;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab718c *)
adcs carry x24 x24 x17 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab7190 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x7, x10, x12                                #! PC = 0xaaaaaaab7194 *)
mull Hx10x12 x7 x10 x12;
(* umulh	x17, x10, x12                             #! PC = 0xaaaaaaab7198 *)
mov x17 Hx10x12;
(* adds	x6, x6, x7                                 #! PC = 0xaaaaaaab719c *)
adds carry x6 x6 x7;
(* adcs	x24, x24, x17                              #! PC = 0xaaaaaaab71a0 *)
adcs carry x24 x24 x17 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab71a4 *)
adc x25 x25 0@uint64 carry;
(* mul	x7, x10, x13                                #! PC = 0xaaaaaaab71a8 *)
mull Hx10x13 x7 x10 x13;
(* umulh	x17, x10, x13                             #! PC = 0xaaaaaaab71ac *)
mov x17 Hx10x13;
(* adds	x7, x7, x24                                #! PC = 0xaaaaaaab71b0 *)
adds carry x7 x7 x24;
(* adc	x17, x17, x25                               #! PC = 0xaaaaaaab71b4 *)
adc x17 x17 x25 carry;
(* adds	x14, x6, x14                               #! PC = 0xaaaaaaab71b8 *)
adds carry x14 x6 x14;
(* adcs	x15, x7, x15                               #! PC = 0xaaaaaaab71bc *)
adcs carry x15 x7 x15 carry;
(* ldp	x6, x7, [x0]                                #! EA = L0xffffffffe8c0; Value = 0x3150985797f20003; PC = 0xaaaaaaab71c0 *)
mov x6 L0xffffffffe8c0;
mov x7 L0xffffffffe8c8;
(* adc	x16, x17, x16                               #! PC = 0xaaaaaaab71c4 *)
adcs dontcare x16 x17 x16 carry;
(* ldr	x17, [x0, #16]                              #! EA = L0xffffffffe8d0; Value = 0xd781de5ac3b0b774; PC = 0xaaaaaaab71c8 *)
mov x17 L0xffffffffe8d0;
(* mul	x8, x6, x26                                 #! PC = 0xaaaaaaab71cc *)
mull Hx6x26 x8 x6 x26;
(* mul	x9, x6, x27                                 #! PC = 0xaaaaaaab71d0 *)
mull Hx6x27 x9 x6 x27;
(* umulh	x11, x6, x26                              #! PC = 0xaaaaaaab71d4 *)
mov x11 Hx6x26;
(* umulh	x10, x6, x27                              #! PC = 0xaaaaaaab71d8 *)
mov x10 Hx6x27;
(* mul	x12, x7, x26                                #! PC = 0xaaaaaaab71dc *)
mull Hx7x26 x12 x7 x26;
(* umulh	x13, x7, x26                              #! PC = 0xaaaaaaab71e0 *)
mov x13 Hx7x26;
(* adds	x9, x9, x11                                #! PC = 0xaaaaaaab71e4 *)
adds carry x9 x9 x11;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab71e8 *)
adc x10 x10 0@uint64 carry;
(* mul	x25, x7, x27                                #! PC = 0xaaaaaaab71ec *)
mull Hx7x27 x25 x7 x27;
(* umulh	x11, x7, x27                              #! PC = 0xaaaaaaab71f0 *)
mov x11 Hx7x27;
(* adds	x9, x9, x12                                #! PC = 0xaaaaaaab71f4 *)
adds carry x9 x9 x12;
(* adcs	x10, x10, x13                              #! PC = 0xaaaaaaab71f8 *)
adcs carry x10 x10 x13 carry;
(* adc	x11, x11, xzr                               #! PC = 0xaaaaaaab71fc *)
adc x11 x11 0@uint64 carry;
(* mul	x12, x6, x28                                #! PC = 0xaaaaaaab7200 *)
mull Hx6x28 x12 x6 x28;
(* umulh	x13, x6, x28                              #! PC = 0xaaaaaaab7204 *)
mov x13 Hx6x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7208 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab720c *)
adcs carry x11 x11 x13 carry;
(* adc	x24, xzr, xzr                               #! PC = 0xaaaaaaab7210 *)
adc x24 0@uint64 0@uint64 carry;
(* mul	x25, x17, x26                               #! PC = 0xaaaaaaab7214 *)
mull Hx17x26 x25 x17 x26;
(* umulh	x13, x17, x26                             #! PC = 0xaaaaaaab7218 *)
mov x13 Hx17x26;
(* adds	x10, x10, x12                              #! PC = 0xaaaaaaab721c *)
adds carry x10 x10 x12;
(* adcs	x11, x11, x13                              #! PC = 0xaaaaaaab7220 *)
adcs carry x11 x11 x13 carry;
(* adc	x24, x24, xzr                               #! PC = 0xaaaaaaab7224 *)
adc x24 x24 0@uint64 carry;
(* mul	x12, x7, x28                                #! PC = 0xaaaaaaab7228 *)
mull Hx7x28 x12 x7 x28;
(* umulh	x13, x7, x28                              #! PC = 0xaaaaaaab722c *)
mov x13 Hx7x28;
(* adds	x10, x10, x25                              #! PC = 0xaaaaaaab7230 *)
adds carry x10 x10 x25;
(* adcs	x11, x11, x12                              #! PC = 0xaaaaaaab7234 *)
adcs carry x11 x11 x12 carry;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab7238 *)
adcs carry x24 x24 x13 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab723c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x12, x17, x27                               #! PC = 0xaaaaaaab7240 *)
mull Hx17x27 x12 x17 x27;
(* umulh	x13, x17, x27                             #! PC = 0xaaaaaaab7244 *)
mov x13 Hx17x27;
(* adds	x11, x11, x12                              #! PC = 0xaaaaaaab7248 *)
adds carry x11 x11 x12;
(* adcs	x24, x24, x13                              #! PC = 0xaaaaaaab724c *)
adcs carry x24 x24 x13 carry;
(* adc	x25, x25, xzr                               #! PC = 0xaaaaaaab7250 *)
adc x25 x25 0@uint64 carry;
(* mul	x12, x17, x28                               #! PC = 0xaaaaaaab7254 *)
mull Hx17x28 x12 x17 x28;
(* umulh	x13, x17, x28                             #! PC = 0xaaaaaaab7258 *)
mov x13 Hx17x28;
(* adds	x12, x12, x24                              #! PC = 0xaaaaaaab725c *)
adds carry x12 x12 x24;
(* adc	x13, x13, x25                               #! PC = 0xaaaaaaab7260 *)
adc x13 x13 x25 carry;
(* ldp	x6, x7, [x0, #24]                           #! EA = L0xffffffffe8d8; Value = 0x6f4fbcf0ef470319; PC = 0xaaaaaaab7264 *)
mov x6 L0xffffffffe8d8;
mov x7 L0xffffffffe8e0;
(* subs	x3, x3, x8                                 #! PC = 0xaaaaaaab7268 *)
subc carry x3 x3 x8;
(* sbcs	x4, x4, x9                                 #! PC = 0xaaaaaaab726c *)
sbcs carry x4 x4 x9 carry;
(* mul	x26, x6, x29                                #! PC = 0xaaaaaaab7270 *)
mull Hx6x29 x26 x6 x29;
(* umulh	x17, x6, x29                              #! PC = 0xaaaaaaab7274 *)
mov x17 Hx6x29;
(* sbcs	x5, x5, x10                                #! PC = 0xaaaaaaab7278 *)
sbcs carry x5 x5 x10 carry;
(* sbcs	x14, x14, x11                              #! PC = 0xaaaaaaab727c *)
sbcs carry x14 x14 x11 carry;
(* mul	x27, x6, x30                                #! PC = 0xaaaaaaab7280 *)
mull Hx6x30 x27 x6 x30;
(* umulh	x28, x6, x30                              #! PC = 0xaaaaaaab7284 *)
mov x28 Hx6x30;
(* sbcs	x15, x15, x12                              #! PC = 0xaaaaaaab7288 *)
sbcs carry x15 x15 x12 carry;
(* sbc	x16, x16, x13                               #! PC = 0xaaaaaaab728c *)
sbcs docare x16 x16 x13 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* mul	x6, x7, x29                                 #! PC = 0xaaaaaaab7290 *)
mull Hx7x29 x6 x7 x29;
(* umulh	x29, x7, x29                              #! PC = 0xaaaaaaab7294 *)
mov x29 Hx7x29;
(* adds	x27, x27, x17                              #! PC = 0xaaaaaaab7298 *)
adds carry x27 x27 x17;
(* adc	x28, x28, xzr                               #! PC = 0xaaaaaaab729c *)
adc x28 x28 0@uint64 carry;
(* mul	x24, x7, x30                                #! PC = 0xaaaaaaab72a0 *)
mull Hx7x30 x24 x7 x30;
(* umulh	x30, x7, x30                              #! PC = 0xaaaaaaab72a4 *)
mov x30 Hx7x30;
(* adds	x27, x27, x6                               #! PC = 0xaaaaaaab72a8 *)
adds carry x27 x27 x6;
(* adcs	x28, x28, x29                              #! PC = 0xaaaaaaab72ac *)
adcs carry x28 x28 x29 carry;
(* adc	x17, xzr, xzr                               #! PC = 0xaaaaaaab72b0 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x28, x28, x24                              #! PC = 0xaaaaaaab72b4 *)
adds carry x28 x28 x24;
(* adc	x17, x17, x30                               #! PC = 0xaaaaaaab72b8 *)
adc x17 x17 x30 carry;
(* subs	x3, x3, x26                                #! PC = 0xaaaaaaab72bc *)
subc carry x3 x3 x26;
(* sbcs	x4, x4, x27                                #! PC = 0xaaaaaaab72c0 *)
sbcs carry x4 x4 x27 carry;
(* sbcs	x5, x5, x28                                #! PC = 0xaaaaaaab72c4 *)
sbcs carry x5 x5 x28 carry;
(* sbcs	x14, x14, x17                              #! PC = 0xaaaaaaab72c8 *)
sbcs carry x14 x14 x17 carry;
(* sbcs	x15, x15, xzr                              #! PC = 0xaaaaaaab72cc *)
sbcs carry x15 x15 0@uint64 carry;
(* sbc	x16, x16, xzr                               #! PC = 0xaaaaaaab72d0 *)
sbcs docare x16 x16 0@uint64 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod limbs 64 [x3, x4, x5, x14, x15, x16]
             limbs 64 [a0o3, a1o3, a2o3] * limbs 64 [b3o3, b4o3] +
             limbs 64 [b0o3, b1o3, b2o3] * limbs 64 [a3o3, a4o3]
             2**384 && true;
assume limbs 64 [x3, x4, x5, x14, x15, x16] =
       limbs 64 [a0o3, a1o3, a2o3] * limbs 64 [b3o3, b4o3] +
       limbs 64 [b0o3, b1o3, b2o3] * limbs 64 [a3o3, a4o3] && true;

(* adds	x11, x11, x3                               #! PC = 0xaaaaaaab72d4 *)
adds carry x11 x11 x3;
(* adcs	x12, x12, x4                               #! PC = 0xaaaaaaab72d8 *)
adcs carry x12 x12 x4 carry;
(* adcs	x13, x13, x5                               #! PC = 0xaaaaaaab72dc *)
adcs carry x13 x13 x5 carry;
(* adcs	x14, x14, x26                              #! PC = 0xaaaaaaab72e0 *)
adcs carry x14 x14 x26 carry;
(* adcs	x15, x15, x27                              #! PC = 0xaaaaaaab72e4 *)
adcs carry x15 x15 x27 carry;
(* adcs	x16, x16, x28                              #! PC = 0xaaaaaaab72e8 *)
adcs carry x16 x16 x28 carry;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab72ec *)
adc x17 x17 0@uint64 carry;

(* NOTE: MUL320_KARATSUBA_COMBA ends *)

(* ldp	x7, x26, [x2, #72]                          #! EA = L0xffffffffe5d0; Value = 0x0000000232e488b8; PC = 0xaaaaaaab72f0 *)
mov x7 L0xffffffffe5d0;
mov x26 L0xffffffffe5d8;
(* ldp	x27, x28, [x2, #88]                         #! EA = L0xffffffffe5e0; Value = 0xd6fbd9d63f7ee4bc; PC = 0xaaaaaaab72f4 *)
mov x27 L0xffffffffe5e0;
mov x28 L0xffffffffe5e8;
(* subs	x26, x26, x8                               #! PC = 0xaaaaaaab72f8 *)
subc carry x26 x26 x8;
(* ldp	x29, x30, [x2, #104]                        #! EA = L0xffffffffe5f0; Value = 0x4a0d66d135ce87c8; PC = 0xaaaaaaab72fc *)
mov x29 L0xffffffffe5f0;
mov x30 L0xffffffffe5f8;
(* sbcs	x27, x27, x9                               #! PC = 0xaaaaaaab7300 *)
sbcs carry x27 x27 x9 carry;
(* sbcs	x28, x28, x10                              #! PC = 0xaaaaaaab7304 *)
sbcs carry x28 x28 x10 carry;
(* ldp	x3, x4, [x2, #40]                           #! EA = L0xffffffffe5b0; Value = 0xb1c32b56f6b872d3; PC = 0xaaaaaaab7308 *)
mov x3 L0xffffffffe5b0;
mov x4 L0xffffffffe5b8;
(* sbcs	x29, x29, x11                              #! PC = 0xaaaaaaab730c *)
sbcs carry x29 x29 x11 carry;
(* sbcs	x30, x30, x12                              #! PC = 0xaaaaaaab7310 *)
sbcs carry x30 x30 x12 carry;
(* ldp	x5, x6, [x2, #56]                           #! EA = L0xffffffffe5c0; Value = 0xea1d673bc42de1fe; PC = 0xaaaaaaab7314 *)
mov x5 L0xffffffffe5c0;
mov x6 L0xffffffffe5c8;
(* sbcs	x3, x3, x13                                #! PC = 0xaaaaaaab7318 *)
sbcs carry x3 x3 x13 carry;
(* sbcs	x4, x4, x14                                #! PC = 0xaaaaaaab731c *)
sbcs carry x4 x4 x14 carry;
(* sbcs	x5, x5, x15                                #! PC = 0xaaaaaaab7320 *)
sbcs carry x5 x5 x15 carry;
(* sbcs	x6, x6, x16                                #! PC = 0xaaaaaaab7324 *)
sbcs carry x6 x6 x16 carry;
(* sbc	x7, x7, x17                                 #! PC = 0xaaaaaaab7328 *)
sbcs docare x7 x7 x17 carry;

(* TODO: must carry *)
(* assert true && docare = 1@1; *)
assume docare = 1 && true;

(* NOTE: summary *)
assert eqmod limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7]
             limbs 64 [a0, a1, a2, a3, a4] * limbs 64 [b5, b6, b7, b8, b9] +
             limbs 64 [b0, b1, b2, b3, b4] * limbs 64 [a5, a6, a7, a8, a9]
             2**640 && true;
assume limbs 64 [x26, x27, x28, x29, x30, x3, x4, x5, x6, x7] =
       limbs 64 [a0, a1, a2, a3, a4] * limbs 64 [b5, b6, b7, b8, b9] +
       limbs 64 [b0, b1, b2, b3, b4] * limbs 64 [a5, a6, a7, a8, a9] && true;

(* adds	x19, x19, x26                              #! PC = 0xaaaaaaab732c *)
adds carry x19 x19 x26;
(* adcs	x20, x20, x27                              #! PC = 0xaaaaaaab7330 *)
adcs carry x20 x20 x27 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe530; Value = 0x0000ffffffffe898; PC = 0xaaaaaaab7334 *)
mov x25 L0xffffffffe530;
mov x26 L0xffffffffe538;
(* adcs	x21, x21, x28                              #! PC = 0xaaaaaaab7338 *)
adcs carry x21 x21 x28 carry;
(* adcs	x22, x22, x29                              #! PC = 0xaaaaaaab733c *)
adcs carry x22 x22 x29 carry;
(* stp	x19, x20, [x2, #40]                         #! EA = L0xffffffffe5b0; PC = 0xaaaaaaab7340 *)
mov L0xffffffffe5b0 x19;
mov L0xffffffffe5b8 x20;
(* adcs	x23, x23, x30                              #! PC = 0xaaaaaaab7344 *)
adcs carry x23 x23 x30 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe540; Value = 0x0000ffffffffe8e8; PC = 0xaaaaaaab7348 *)
mov x27 L0xffffffffe540;
mov x28 L0xffffffffe548;
(* adcs	x3, x3, x8                                 #! PC = 0xaaaaaaab734c *)
adcs carry x3 x3 x8 carry;
(* stp	x21, x22, [x2, #56]                         #! EA = L0xffffffffe5c0; PC = 0xaaaaaaab7350 *)
mov L0xffffffffe5c0 x21;
mov L0xffffffffe5c8 x22;
(* adcs	x4, x4, x9                                 #! PC = 0xaaaaaaab7354 *)
adcs carry x4 x4 x9 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe500; Value = 0x0000ffffffffe588; PC = 0xaaaaaaab7358 *)
mov x19 L0xffffffffe500;
mov x20 L0xffffffffe508;
(* adcs	x5, x5, x10                                #! PC = 0xaaaaaaab735c *)
adcs carry x5 x5 x10 carry;
(* stp	x23, x3, [x2, #72]                          #! EA = L0xffffffffe5d0; PC = 0xaaaaaaab7360 *)
mov L0xffffffffe5d0 x23;
mov L0xffffffffe5d8 x3;
(* adcs	x6, x6, x11                                #! PC = 0xaaaaaaab7364 *)
adcs carry x6 x6 x11 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe510; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7368 *)
mov x21 L0xffffffffe510;
mov x22 L0xffffffffe518;
(* adcs	x7, x7, x12                                #! PC = 0xaaaaaaab736c *)
adcs carry x7 x7 x12 carry;
(* stp	x4, x5, [x2, #88]                           #! EA = L0xffffffffe5e0; PC = 0xaaaaaaab7370 *)
mov L0xffffffffe5e0 x4;
mov L0xffffffffe5e8 x5;
(* adcs	x13, x13, xzr                              #! PC = 0xaaaaaaab7374 *)
adcs carry x13 x13 0@uint64 carry;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe520; Value = 0x0000ffffffffe848; PC = 0xaaaaaaab7378 *)
mov x23 L0xffffffffe520;
mov x24 L0xffffffffe528;
(* adcs	x14, x14, xzr                              #! PC = 0xaaaaaaab737c *)
adcs carry x14 x14 0@uint64 carry;
(* stp	x6, x7, [x2, #104]                          #! EA = L0xffffffffe5f0; PC = 0xaaaaaaab7380 *)
mov L0xffffffffe5f0 x6;
mov L0xffffffffe5f8 x7;
(* adcs	x15, x15, xzr                              #! PC = 0xaaaaaaab7384 *)
adcs carry x15 x15 0@uint64 carry;
(* ldp	x29, x30, [sp, #80]                         #! EA = L0xffffffffe550; Value = 0x0000ffffffffe560; PC = 0xaaaaaaab7388 *)
mov x29 L0xffffffffe550;
mov x30 L0xffffffffe558;
(* adcs	x16, x16, xzr                              #! PC = 0xaaaaaaab738c *)
adcs carry x16 x16 0@uint64 carry;
(* stp	x13, x14, [x2, #120]                        #! EA = L0xffffffffe600; PC = 0xaaaaaaab7390 *)
mov L0xffffffffe600 x13;
mov L0xffffffffe608 x14;
(* adc	x17, x17, xzr                               #! PC = 0xaaaaaaab7394 *)
adc x17 x17 0@uint64 carry;
(* stp	x15, x16, [x2, #136]                        #! EA = L0xffffffffe610; PC = 0xaaaaaaab7398 *)
mov L0xffffffffe610 x15;
mov L0xffffffffe618 x16;
(* str	x17, [x2, #152]                             #! EA = L0xffffffffe620; PC = 0xaaaaaaab739c *)
mov L0xffffffffe620 x17;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a0 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe560 *)
#! 0xffffffffe560 = 0xffffffffe560;
(* #ret                                            #! PC = 0xaaaaaaab73a4 *)
#ret                                            #! 0xaaaaaaab73a4 = 0xaaaaaaab73a4;

cut limbs 64 [L0xffffffffe588, L0xffffffffe590, L0xffffffffe598,
              L0xffffffffe5a0, L0xffffffffe5a8, L0xffffffffe5b0,
              L0xffffffffe5b8, L0xffffffffe5c0, L0xffffffffe5c8,
              L0xffffffffe5d0, L0xffffffffe5d8, L0xffffffffe5e0,
              L0xffffffffe5e8, L0xffffffffe5f0, L0xffffffffe5f8,
              L0xffffffffe600, L0xffffffffe608, L0xffffffffe610,
              L0xffffffffe618, L0xffffffffe620] =
    limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] *
    limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9]
 && limbs 64 [L0xffffffffe588, L0xffffffffe590, L0xffffffffe598,
              L0xffffffffe5a0, L0xffffffffe5a8, L0xffffffffe5b0,
              L0xffffffffe5b8, L0xffffffffe5c0, L0xffffffffe5c8,
              L0xffffffffe5d0, L0xffffffffe5d8, L0xffffffffe5e0,
              L0xffffffffe5e8, L0xffffffffe5f0, L0xffffffffe5f8,
              L0xffffffffe600, L0xffffffffe608, L0xffffffffe610,
              L0xffffffffe618, L0xffffffffe620] <u
    limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64,
              0@64, 0@64, 0@64, 0@64, 0@64,
              m0, m1, m2, m3, m4, m5, m6, m7, m8, m9];
    
(* mov	x1, x20                                     #! PC = 0xaaaaaaaae05c *)
mov x1 x20;
(* mov	x0, x19                                     #! PC = 0xaaaaaaaae060 *)
mov x0 x19;
(* #bl	0xaaaaaaab6714 <rdc_mont>                   #! PC = 0xaaaaaaaae064 *)
#bl	0xaaaaaaab6714 <rdc_mont>                   #! 0xaaaaaaaae064 = 0xaaaaaaaae064;
(* #! -> SP = 0xffffffffe560 *)
#! 0xffffffffe560 = 0xffffffffe560;
(* #b	0xaaaaaaab73a8 <rdc610_asm>                  #! PC = 0xaaaaaaab6714 *)
#b	0xaaaaaaab73a8 <rdc610_asm>                  #! 0xaaaaaaab6714 = 0xaaaaaaab6714;
(* sub	sp, sp, #0x60                               #! PC = 0xaaaaaaab73a8 *)
subc dontcare sp sp 0x60@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffe500; PC = 0xaaaaaaab73ac *)
mov L0xffffffffe500 x19;
mov L0xffffffffe508 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe510; PC = 0xaaaaaaab73b0 *)
mov L0xffffffffe510 x21;
mov L0xffffffffe518 x22;
(* ldp	x2, x3, [x0]                                #! EA = L0xffffffffe588; Value = 0x031c4912098deb16; PC = 0xaaaaaaab73b4 *)
mov x2 L0xffffffffe588;
mov x3 L0xffffffffe590;
(* ldr	x19, 0xaaaaaaab67d0 <p610p1_nz_s6>          #! PC = 0xaaaaaaab73b8 *)
mov x19 L0xaaaaaaab67d0;
(* ldr	x20, 0xaaaaaaab67d8 <p610p1_nz_s6+8>        #! PC = 0xaaaaaaab73bc *)
mov x20 L0xaaaaaaab67d8;
(* ldr	x21, 0xaaaaaaab67e0 <p610p1_nz_s6+16>       #! PC = 0xaaaaaaab73c0 *)
mov x21 L0xaaaaaaab67e0;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe520; PC = 0xaaaaaaab73c4 *)
mov L0xffffffffe520 x23;
mov L0xffffffffe528 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe530; PC = 0xaaaaaaab73c8 *)
mov L0xffffffffe530 x25;
mov L0xffffffffe538 x26;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab73cc *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab73d0 *)
mov x7 Hx2x19;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe540; PC = 0xaaaaaaab73d4 *)
mov L0xffffffffe540 x27;
mov L0xffffffffe548 x28;
(* str	x29, [sp, #80]                              #! EA = L0xffffffffe550; PC = 0xaaaaaaab73d8 *)
mov L0xffffffffe550 x29;
(* ldr	x22, 0xaaaaaaab67e8 <p610p1_nz_s6+24>       #! PC = 0xaaaaaaab73dc *)
mov x22 L0xaaaaaaab67e8;
(* ldr	x23, 0xaaaaaaab67f0 <p610p1_nz_s6+32>       #! PC = 0xaaaaaaab73e0 *)
mov x23 L0xaaaaaaab67f0;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab73e4 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab73e8 *)
mov x6 Hx2x20;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab73ec *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab73f0 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab73f4 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab73f8 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab73fc *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7400 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7404 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7408 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab740c *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7410 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7414 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7418 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab741c *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7420 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7424 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab7428 *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab742c *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7430 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7434 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab7438 *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab743c *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7440 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7444 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab7448 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab744c *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7450 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7454 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab7458 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab745c *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7460 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7464 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab7468 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab746c *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7470 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7474 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab7478 *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab747c *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab7480 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab7484 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab7488 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab748c *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab7490 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab7494 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab7498 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab749c *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab74a0 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab74a4 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab74a8 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab74ac *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab74b0 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab74b4 *)
shl x6 Lx6 48;
(* ldp	x2, x3, [x0, #16]                           #! EA = L0xffffffffe598; Value = 0xe7d00d950a278880; PC = 0xaaaaaaab74b8 *)
mov x2 L0xffffffffe598;
mov x3 L0xffffffffe5a0;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab74bc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab74c0 *)
shl x5 Lx5 48;
(* ldp	x11, x12, [x0, #32]                         #! EA = L0xffffffffe5a8; Value = 0xf46544f1fe5d71ce; PC = 0xaaaaaaab74c4 *)
mov x11 L0xffffffffe5a8;
mov x12 L0xffffffffe5b0;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab74c8 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab74cc *)
shl x4 Lx4 48;
(* ldp	x13, x14, [x0, #48]                         #! EA = L0xffffffffe5b8; Value = 0xa0edecee71f6223e; PC = 0xaaaaaaab74d0 *)
mov x13 L0xffffffffe5b8;
mov x14 L0xffffffffe5c0;
(* adds	x11, x4, x11                               #! PC = 0xaaaaaaab74d4 *)
adds carry x11 x4 x11;
(* adcs	x12, x5, x12                               #! PC = 0xaaaaaaab74d8 *)
adcs carry x12 x5 x12 carry;
(* ldp	x15, x16, [x0, #64]                         #! EA = L0xffffffffe5c8; Value = 0x411ab03cbe25cfd6; PC = 0xaaaaaaab74dc *)
mov x15 L0xffffffffe5c8;
mov x16 L0xffffffffe5d0;
(* adcs	x13, x6, x13                               #! PC = 0xaaaaaaab74e0 *)
adcs carry x13 x6 x13 carry;
(* adcs	x14, x7, x14                               #! PC = 0xaaaaaaab74e4 *)
adcs carry x14 x7 x14 carry;
(* ldp	x17, x24, [x0, #80]                         #! EA = L0xffffffffe5d8; Value = 0xdbee549c41682d72; PC = 0xaaaaaaab74e8 *)
mov x17 L0xffffffffe5d8;
mov x24 L0xffffffffe5e0;
(* adcs	x15, x8, x15                               #! PC = 0xaaaaaaab74ec *)
adcs carry x15 x8 x15 carry;
(* mul	x4, x2, x19                                 #! PC = 0xaaaaaaab74f0 *)
mull Hx2x19 x4 x2 x19;
(* umulh	x7, x2, x19                               #! PC = 0xaaaaaaab74f4 *)
mov x7 Hx2x19;
(* adcs	x16, x9, x16                               #! PC = 0xaaaaaaab74f8 *)
adcs carry x16 x9 x16 carry;
(* adcs	x17, x10, x17                              #! PC = 0xaaaaaaab74fc *)
adcs carry x17 x10 x17 carry;
(* mul	x5, x2, x20                                 #! PC = 0xaaaaaaab7500 *)
mull Hx2x20 x5 x2 x20;
(* umulh	x6, x2, x20                               #! PC = 0xaaaaaaab7504 *)
mov x6 Hx2x20;
(* adcs	x24, x26, x24                              #! PC = 0xaaaaaaab7508 *)
adcs carry x24 x26 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0xaaaaaaab750c *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x26, x3, x19                                #! PC = 0xaaaaaaab7510 *)
mull Hx3x19 x26 x3 x19;
(* umulh	x27, x3, x19                              #! PC = 0xaaaaaaab7514 *)
mov x27 Hx3x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7518 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab751c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x2, x21                                #! PC = 0xaaaaaaab7520 *)
mull Hx2x21 x28 x2 x21;
(* umulh	x29, x2, x21                              #! PC = 0xaaaaaaab7524 *)
mov x29 Hx2x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7528 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab752c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7530 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x3, x20                                #! PC = 0xaaaaaaab7534 *)
mull Hx3x20 x26 x3 x20;
(* umulh	x27, x3, x20                              #! PC = 0xaaaaaaab7538 *)
mov x27 Hx3x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab753c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7540 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7544 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x2, x22                                #! PC = 0xaaaaaaab7548 *)
mull Hx2x22 x28 x2 x22;
(* umulh	x29, x2, x22                              #! PC = 0xaaaaaaab754c *)
mov x29 Hx2x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7550 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7554 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7558 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x3, x21                                #! PC = 0xaaaaaaab755c *)
mull Hx3x21 x26 x3 x21;
(* umulh	x27, x3, x21                              #! PC = 0xaaaaaaab7560 *)
mov x27 Hx3x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7564 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7568 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab756c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x3, x22                                #! PC = 0xaaaaaaab7570 *)
mull Hx3x22 x28 x3 x22;
(* umulh	x29, x3, x22                              #! PC = 0xaaaaaaab7574 *)
mov x29 Hx3x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7578 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab757c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7580 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x2, x23                                #! PC = 0xaaaaaaab7584 *)
mull Hx2x23 x26 x2 x23;
(* umulh	x27, x2, x23                              #! PC = 0xaaaaaaab7588 *)
mov x27 Hx2x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab758c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab7590 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab7594 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x3, x23                                #! PC = 0xaaaaaaab7598 *)
mull Hx3x23 x28 x3 x23;
(* umulh	x29, x3, x23                              #! PC = 0xaaaaaaab759c *)
mov x29 Hx3x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab75a0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab75a4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab75a8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab75ac *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab75b0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab75b4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab75b8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab75bc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab75c0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab75c4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab75c8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab75cc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab75d0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab75d4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab75d8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab75dc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab75e0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab75e4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab75e8 *)
shl x4 Lx4 48;
(* adds	x13, x4, x13                               #! PC = 0xaaaaaaab75ec *)
adds carry x13 x4 x13;
(* adcs	x14, x5, x14                               #! PC = 0xaaaaaaab75f0 *)
adcs carry x14 x5 x14 carry;
(* adcs	x15, x6, x15                               #! PC = 0xaaaaaaab75f4 *)
adcs carry x15 x6 x15 carry;
(* adcs	x16, x7, x16                               #! PC = 0xaaaaaaab75f8 *)
adcs carry x16 x7 x16 carry;
(* adcs	x17, x8, x17                               #! PC = 0xaaaaaaab75fc *)
adcs carry x17 x8 x17 carry;
(* mul	x4, x11, x19                                #! PC = 0xaaaaaaab7600 *)
mull Hx11x19 x4 x11 x19;
(* umulh	x7, x11, x19                              #! PC = 0xaaaaaaab7604 *)
mov x7 Hx11x19;
(* adcs	x24, x9, x24                               #! PC = 0xaaaaaaab7608 *)
adcs carry x24 x9 x24 carry;
(* adcs	x25, x10, x25                              #! PC = 0xaaaaaaab760c *)
adcs carry x25 x10 x25 carry;
(* mul	x5, x11, x20                                #! PC = 0xaaaaaaab7610 *)
mull Hx11x20 x5 x11 x20;
(* umulh	x6, x11, x20                              #! PC = 0xaaaaaaab7614 *)
mov x6 Hx11x20;
(* adcs	x2, x26, xzr                               #! PC = 0xaaaaaaab7618 *)
adcs carry x2 x26 0@uint64 carry;
(* adc	x3, xzr, xzr                                #! PC = 0xaaaaaaab761c *)
adc x3 0@uint64 0@uint64 carry;
(* mul	x26, x12, x19                               #! PC = 0xaaaaaaab7620 *)
mull Hx12x19 x26 x12 x19;
(* umulh	x27, x12, x19                             #! PC = 0xaaaaaaab7624 *)
mov x27 Hx12x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7628 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab762c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x11, x21                               #! PC = 0xaaaaaaab7630 *)
mull Hx11x21 x28 x11 x21;
(* umulh	x29, x11, x21                             #! PC = 0xaaaaaaab7634 *)
mov x29 Hx11x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7638 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab763c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7640 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x12, x20                               #! PC = 0xaaaaaaab7644 *)
mull Hx12x20 x26 x12 x20;
(* umulh	x27, x12, x20                             #! PC = 0xaaaaaaab7648 *)
mov x27 Hx12x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab764c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7650 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7654 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x11, x22                               #! PC = 0xaaaaaaab7658 *)
mull Hx11x22 x28 x11 x22;
(* umulh	x29, x11, x22                             #! PC = 0xaaaaaaab765c *)
mov x29 Hx11x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7660 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7664 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7668 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x12, x21                               #! PC = 0xaaaaaaab766c *)
mull Hx12x21 x26 x12 x21;
(* umulh	x27, x12, x21                             #! PC = 0xaaaaaaab7670 *)
mov x27 Hx12x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7674 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7678 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab767c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x12, x22                               #! PC = 0xaaaaaaab7680 *)
mull Hx12x22 x28 x12 x22;
(* umulh	x29, x12, x22                             #! PC = 0xaaaaaaab7684 *)
mov x29 Hx12x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7688 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab768c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab7690 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x11, x23                               #! PC = 0xaaaaaaab7694 *)
mull Hx11x23 x26 x11 x23;
(* umulh	x27, x11, x23                             #! PC = 0xaaaaaaab7698 *)
mov x27 Hx11x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab769c *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab76a0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab76a4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x12, x23                               #! PC = 0xaaaaaaab76a8 *)
mull Hx12x23 x28 x12 x23;
(* umulh	x29, x12, x23                             #! PC = 0xaaaaaaab76ac *)
mov x29 Hx12x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab76b0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab76b4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab76b8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab76bc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab76c0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab76c4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab76c8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab76cc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab76d0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab76d4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab76d8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab76dc *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab76e0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab76e4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab76e8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab76ec *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab76f0 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab76f4 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab76f8 *)
shl x4 Lx4 48;
(* adds	x15, x4, x15                               #! PC = 0xaaaaaaab76fc *)
adds carry x15 x4 x15;
(* adcs	x16, x5, x16                               #! PC = 0xaaaaaaab7700 *)
adcs carry x16 x5 x16 carry;
(* adcs	x17, x6, x17                               #! PC = 0xaaaaaaab7704 *)
adcs carry x17 x6 x17 carry;
(* adcs	x24, x7, x24                               #! PC = 0xaaaaaaab7708 *)
adcs carry x24 x7 x24 carry;
(* adcs	x25, x8, x25                               #! PC = 0xaaaaaaab770c *)
adcs carry x25 x8 x25 carry;
(* mul	x4, x13, x19                                #! PC = 0xaaaaaaab7710 *)
mull Hx13x19 x4 x13 x19;
(* umulh	x7, x13, x19                              #! PC = 0xaaaaaaab7714 *)
mov x7 Hx13x19;
(* adcs	x2, x9, x2                                 #! PC = 0xaaaaaaab7718 *)
adcs carry x2 x9 x2 carry;
(* adcs	x3, x10, x3                                #! PC = 0xaaaaaaab771c *)
adcs carry x3 x10 x3 carry;
(* mul	x5, x13, x20                                #! PC = 0xaaaaaaab7720 *)
mull Hx13x20 x5 x13 x20;
(* umulh	x6, x13, x20                              #! PC = 0xaaaaaaab7724 *)
mov x6 Hx13x20;
(* adcs	x11, x26, xzr                              #! PC = 0xaaaaaaab7728 *)
adcs carry x11 x26 0@uint64 carry;
(* adc	x12, xzr, xzr                               #! PC = 0xaaaaaaab772c *)
adc x12 0@uint64 0@uint64 carry;
(* mul	x26, x14, x19                               #! PC = 0xaaaaaaab7730 *)
mull Hx14x19 x26 x14 x19;
(* umulh	x27, x14, x19                             #! PC = 0xaaaaaaab7734 *)
mov x27 Hx14x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab7738 *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab773c *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x13, x21                               #! PC = 0xaaaaaaab7740 *)
mull Hx13x21 x28 x13 x21;
(* umulh	x29, x13, x21                             #! PC = 0xaaaaaaab7744 *)
mov x29 Hx13x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab7748 *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab774c *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7750 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x14, x20                               #! PC = 0xaaaaaaab7754 *)
mull Hx14x20 x26 x14 x20;
(* umulh	x27, x14, x20                             #! PC = 0xaaaaaaab7758 *)
mov x27 Hx14x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab775c *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7760 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7764 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x13, x22                               #! PC = 0xaaaaaaab7768 *)
mull Hx13x22 x28 x13 x22;
(* umulh	x29, x13, x22                             #! PC = 0xaaaaaaab776c *)
mov x29 Hx13x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7770 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7774 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab7778 *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x14, x21                               #! PC = 0xaaaaaaab777c *)
mull Hx14x21 x26 x14 x21;
(* umulh	x27, x14, x21                             #! PC = 0xaaaaaaab7780 *)
mov x27 Hx14x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7784 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab7788 *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab778c *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x14, x22                               #! PC = 0xaaaaaaab7790 *)
mull Hx14x22 x28 x14 x22;
(* umulh	x29, x14, x22                             #! PC = 0xaaaaaaab7794 *)
mov x29 Hx14x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab7798 *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab779c *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab77a0 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x13, x23                               #! PC = 0xaaaaaaab77a4 *)
mull Hx13x23 x26 x13 x23;
(* umulh	x27, x13, x23                             #! PC = 0xaaaaaaab77a8 *)
mov x27 Hx13x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab77ac *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab77b0 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab77b4 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x14, x23                               #! PC = 0xaaaaaaab77b8 *)
mull Hx14x23 x28 x14 x23;
(* umulh	x29, x14, x23                             #! PC = 0xaaaaaaab77bc *)
mov x29 Hx14x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab77c0 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab77c4 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab77c8 *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab77cc *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab77d0 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab77d4 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab77d8 *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab77dc *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab77e0 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab77e4 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab77e8 *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab77ec *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab77f0 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab77f4 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab77f8 *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab77fc *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7800 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7804 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab7808 *)
shl x4 Lx4 48;
(* adds	x17, x4, x17                               #! PC = 0xaaaaaaab780c *)
adds carry x17 x4 x17;
(* adcs	x24, x5, x24                               #! PC = 0xaaaaaaab7810 *)
adcs carry x24 x5 x24 carry;
(* adcs	x25, x6, x25                               #! PC = 0xaaaaaaab7814 *)
adcs carry x25 x6 x25 carry;
(* adcs	x2, x7, x2                                 #! PC = 0xaaaaaaab7818 *)
adcs carry x2 x7 x2 carry;
(* adcs	x3, x8, x3                                 #! PC = 0xaaaaaaab781c *)
adcs carry x3 x8 x3 carry;
(* adcs	x11, x9, x11                               #! PC = 0xaaaaaaab7820 *)
adcs carry x11 x9 x11 carry;
(* adcs	x12, x10, x12                              #! PC = 0xaaaaaaab7824 *)
adcs carry x12 x10 x12 carry;
(* stp	x17, x24, [x1]                              #! EA = L0xffffffffe988; PC = 0xaaaaaaab7828 *)
mov L0xffffffffe988 x17;
mov L0xffffffffe990 x24;
(* adcs	x13, x26, xzr                              #! PC = 0xaaaaaaab782c *)
adcs carry x13 x26 0@uint64 carry;
(* adc	x14, xzr, xzr                               #! PC = 0xaaaaaaab7830 *)
adc x14 0@uint64 0@uint64 carry;
(* mul	x4, x15, x19                                #! PC = 0xaaaaaaab7834 *)
mull Hx15x19 x4 x15 x19;
(* umulh	x7, x15, x19                              #! PC = 0xaaaaaaab7838 *)
mov x7 Hx15x19;
(* mul	x5, x15, x20                                #! PC = 0xaaaaaaab783c *)
mull Hx15x20 x5 x15 x20;
(* umulh	x6, x15, x20                              #! PC = 0xaaaaaaab7840 *)
mov x6 Hx15x20;
(* mul	x26, x16, x19                               #! PC = 0xaaaaaaab7844 *)
mull Hx16x19 x26 x16 x19;
(* umulh	x27, x16, x19                             #! PC = 0xaaaaaaab7848 *)
mov x27 Hx16x19;
(* adds	x5, x5, x7                                 #! PC = 0xaaaaaaab784c *)
adds carry x5 x5 x7;
(* adc	x6, x6, xzr                                 #! PC = 0xaaaaaaab7850 *)
adc x6 x6 0@uint64 carry;
(* mul	x28, x15, x21                               #! PC = 0xaaaaaaab7854 *)
mull Hx15x21 x28 x15 x21;
(* umulh	x29, x15, x21                             #! PC = 0xaaaaaaab7858 *)
mov x29 Hx15x21;
(* adds	x5, x5, x26                                #! PC = 0xaaaaaaab785c *)
adds carry x5 x5 x26;
(* adcs	x6, x6, x27                                #! PC = 0xaaaaaaab7860 *)
adcs carry x6 x6 x27 carry;
(* adc	x7, xzr, xzr                                #! PC = 0xaaaaaaab7864 *)
adc x7 0@uint64 0@uint64 carry;
(* mul	x26, x16, x20                               #! PC = 0xaaaaaaab7868 *)
mull Hx16x20 x26 x16 x20;
(* umulh	x27, x16, x20                             #! PC = 0xaaaaaaab786c *)
mov x27 Hx16x20;
(* adds	x6, x6, x28                                #! PC = 0xaaaaaaab7870 *)
adds carry x6 x6 x28;
(* adcs	x7, x7, x29                                #! PC = 0xaaaaaaab7874 *)
adcs carry x7 x7 x29 carry;
(* adc	x8, xzr, xzr                                #! PC = 0xaaaaaaab7878 *)
adc x8 0@uint64 0@uint64 carry;
(* mul	x28, x15, x22                               #! PC = 0xaaaaaaab787c *)
mull Hx15x22 x28 x15 x22;
(* umulh	x29, x15, x22                             #! PC = 0xaaaaaaab7880 *)
mov x29 Hx15x22;
(* adds	x6, x6, x26                                #! PC = 0xaaaaaaab7884 *)
adds carry x6 x6 x26;
(* adcs	x7, x7, x27                                #! PC = 0xaaaaaaab7888 *)
adcs carry x7 x7 x27 carry;
(* adc	x8, x8, xzr                                 #! PC = 0xaaaaaaab788c *)
adc x8 x8 0@uint64 carry;
(* mul	x26, x16, x21                               #! PC = 0xaaaaaaab7890 *)
mull Hx16x21 x26 x16 x21;
(* umulh	x27, x16, x21                             #! PC = 0xaaaaaaab7894 *)
mov x27 Hx16x21;
(* adds	x7, x7, x28                                #! PC = 0xaaaaaaab7898 *)
adds carry x7 x7 x28;
(* adcs	x8, x8, x29                                #! PC = 0xaaaaaaab789c *)
adcs carry x8 x8 x29 carry;
(* adc	x9, xzr, xzr                                #! PC = 0xaaaaaaab78a0 *)
adc x9 0@uint64 0@uint64 carry;
(* mul	x28, x16, x22                               #! PC = 0xaaaaaaab78a4 *)
mull Hx16x22 x28 x16 x22;
(* umulh	x29, x16, x22                             #! PC = 0xaaaaaaab78a8 *)
mov x29 Hx16x22;
(* adds	x7, x7, x26                                #! PC = 0xaaaaaaab78ac *)
adds carry x7 x7 x26;
(* adcs	x8, x8, x27                                #! PC = 0xaaaaaaab78b0 *)
adcs carry x8 x8 x27 carry;
(* adc	x9, x9, xzr                                 #! PC = 0xaaaaaaab78b4 *)
adc x9 x9 0@uint64 carry;
(* mul	x26, x15, x23                               #! PC = 0xaaaaaaab78b8 *)
mull Hx15x23 x26 x15 x23;
(* umulh	x27, x15, x23                             #! PC = 0xaaaaaaab78bc *)
mov x27 Hx15x23;
(* adds	x8, x8, x28                                #! PC = 0xaaaaaaab78c0 *)
adds carry x8 x8 x28;
(* adcs	x9, x9, x29                                #! PC = 0xaaaaaaab78c4 *)
adcs carry x9 x9 x29 carry;
(* adc	x10, xzr, xzr                               #! PC = 0xaaaaaaab78c8 *)
adc x10 0@uint64 0@uint64 carry;
(* mul	x28, x16, x23                               #! PC = 0xaaaaaaab78cc *)
mull Hx16x23 x28 x16 x23;
(* umulh	x29, x16, x23                             #! PC = 0xaaaaaaab78d0 *)
mov x29 Hx16x23;
(* adds	x8, x8, x26                                #! PC = 0xaaaaaaab78d4 *)
adds carry x8 x8 x26;
(* adcs	x9, x9, x27                                #! PC = 0xaaaaaaab78d8 *)
adcs carry x9 x9 x27 carry;
(* adc	x10, x10, xzr                               #! PC = 0xaaaaaaab78dc *)
adc x10 x10 0@uint64 carry;
(* adds	x9, x9, x28                                #! PC = 0xaaaaaaab78e0 *)
adds carry x9 x9 x28;
(* adc	x10, x10, x29                               #! PC = 0xaaaaaaab78e4 *)
adc x10 x10 x29 carry;
(* orr	x26, xzr, x10, lsr #16                      #! PC = 0xaaaaaaab78e8 *)
split x26 Lx10 x10 16;
(* lsl	x10, x10, #48                               #! PC = 0xaaaaaaab78ec *)
shl x10 Lx10 48;
(* orr	x10, x10, x9, lsr #16                       #! PC = 0xaaaaaaab78f0 *)
split Hx9 Lx9 x9 16;
add x10 x10 Hx9;
(* lsl	x9, x9, #48                                 #! PC = 0xaaaaaaab78f4 *)
shl x9 Lx9 48;
(* orr	x9, x9, x8, lsr #16                         #! PC = 0xaaaaaaab78f8 *)
split Hx8 Lx8 x8 16;
add x9 x9 Hx8;
(* lsl	x8, x8, #48                                 #! PC = 0xaaaaaaab78fc *)
shl x8 Lx8 48;
(* orr	x8, x8, x7, lsr #16                         #! PC = 0xaaaaaaab7900 *)
split Hx7 Lx7 x7 16;
add x8 x8 Hx7;
(* lsl	x7, x7, #48                                 #! PC = 0xaaaaaaab7904 *)
shl x7 Lx7 48;
(* orr	x7, x7, x6, lsr #16                         #! PC = 0xaaaaaaab7908 *)
split Hx6 Lx6 x6 16;
add x7 x7 Hx6;
(* lsl	x6, x6, #48                                 #! PC = 0xaaaaaaab790c *)
shl x6 Lx6 48;
(* orr	x6, x6, x5, lsr #16                         #! PC = 0xaaaaaaab7910 *)
split Hx5 Lx5 x5 16;
add x6 x6 Hx5;
(* lsl	x5, x5, #48                                 #! PC = 0xaaaaaaab7914 *)
shl x5 Lx5 48;
(* orr	x5, x5, x4, lsr #16                         #! PC = 0xaaaaaaab7918 *)
split Hx4 Lx4 x4 16;
add x5 x5 Hx4;
(* lsl	x4, x4, #48                                 #! PC = 0xaaaaaaab791c *)
shl x4 Lx4 48;
(* adds	x25, x4, x25                               #! PC = 0xaaaaaaab7920 *)
adds carry x25 x4 x25;
(* adcs	x2, x5, x2                                 #! PC = 0xaaaaaaab7924 *)
adcs carry x2 x5 x2 carry;
(* ldp	x19, x20, [x0, #96]                         #! EA = L0xffffffffe5e8; Value = 0x2413af80a438b541; PC = 0xaaaaaaab7928 *)
mov x19 L0xffffffffe5e8;
mov x20 L0xffffffffe5f0;
(* adcs	x3, x6, x3                                 #! PC = 0xaaaaaaab792c *)
adcs carry x3 x6 x3 carry;
(* adcs	x11, x7, x11                               #! PC = 0xaaaaaaab7930 *)
adcs carry x11 x7 x11 carry;
(* ldp	x21, x22, [x0, #112]                        #! EA = L0xffffffffe5f8; Value = 0x6ca6a06342fbed09; PC = 0xaaaaaaab7934 *)
mov x21 L0xffffffffe5f8;
mov x22 L0xffffffffe600;
(* adcs	x12, x8, x12                               #! PC = 0xaaaaaaab7938 *)
adcs carry x12 x8 x12 carry;
(* adcs	x13, x9, x13                               #! PC = 0xaaaaaaab793c *)
adcs carry x13 x9 x13 carry;
(* ldp	x23, x24, [x0, #128]                        #! EA = L0xffffffffe608; Value = 0x86b4fafed0b20ed9; PC = 0xaaaaaaab7940 *)
mov x23 L0xffffffffe608;
mov x24 L0xffffffffe610;
(* adcs	x14, x10, x14                              #! PC = 0xaaaaaaab7944 *)
adcs carry x14 x10 x14 carry;
(* adc	x15, x26, xzr                               #! PC = 0xaaaaaaab7948 *)
adc x15 x26 0@uint64 carry;
(* ldp	x4, x5, [x0, #144]                          #! EA = L0xffffffffe618; Value = 0xc6976e0aea13e366; PC = 0xaaaaaaab794c *)
mov x4 L0xffffffffe618;
mov x5 L0xffffffffe620;

ghost x25o@uint64,  x2o@uint64,  x3o@uint64, x11o@uint64,
      x12o@uint64, x13o@uint64, x14o@uint64, x15o@uint64 :
      and [x25o=x25,  x2o= x2,  x3o= x3, x11o=x11,
           x12o=x12, x13o=x13, x14o=x14, x15o=x15] &&
      and [x25o=x25,  x2o= x2,  x3o= x3, x11o=x11,
           x12o=x12, x13o=x13, x14o=x14, x15o=x15];

(* adds	x25, x19, x25                              #! PC = 0xaaaaaaab7950 *)
adds carry x25 x19 x25;
(* ldr	x29, [sp, #80]                              #! EA = L0xffffffffe550; Value = 0x0000ffffffffe560; PC = 0xaaaaaaab7954 *)
mov x29 L0xffffffffe550;
(* adcs	x2, x20, x2                                #! PC = 0xaaaaaaab7958 *)
adcs carry x2 x20 x2 carry;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffe540; Value = 0x0000ffffffffe8e8; PC = 0xaaaaaaab795c *)
mov x27 L0xffffffffe540;
mov x28 L0xffffffffe548;
(* adcs	x3, x21, x3                                #! PC = 0xaaaaaaab7960 *)
adcs carry x3 x21 x3 carry;
(* stp	x25, x2, [x1, #16]                          #! EA = L0xffffffffe998; PC = 0xaaaaaaab7964 *)
mov L0xffffffffe998 x25;
mov L0xffffffffe9a0 x2;
(* adcs	x11, x22, x11                              #! PC = 0xaaaaaaab7968 *)
adcs carry x11 x22 x11 carry;
(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffe500; Value = 0x0000ffffffffe588; PC = 0xaaaaaaab796c *)
mov x19 L0xffffffffe500;
mov x20 L0xffffffffe508;
(* adcs	x12, x23, x12                              #! PC = 0xaaaaaaab7970 *)
adcs carry x12 x23 x12 carry;
(* stp	x3, x11, [x1, #32]                          #! EA = L0xffffffffe9a8; PC = 0xaaaaaaab7974 *)
mov L0xffffffffe9a8 x3;
mov L0xffffffffe9b0 x11;
(* adcs	x13, x24, x13                              #! PC = 0xaaaaaaab7978 *)
adcs carry x13 x24 x13 carry;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffe530; Value = 0x0000ffffffffe898; PC = 0xaaaaaaab797c *)
mov x25 L0xffffffffe530;
mov x26 L0xffffffffe538;
(* adcs	x14, x4, x14                               #! PC = 0xaaaaaaab7980 *)
adcs carry x14 x4 x14 carry;
(* stp	x12, x13, [x1, #48]                         #! EA = L0xffffffffe9b8; PC = 0xaaaaaaab7984 *)
mov L0xffffffffe9b8 x12;
mov L0xffffffffe9c0 x13;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffe520; Value = 0x0000ffffffffe848; PC = 0xaaaaaaab7988 *)
mov x23 L0xffffffffe520;
mov x24 L0xffffffffe528;
(* adc	x15, x5, x15                                #! PC = 0xaaaaaaab798c *)
adcs dontcare x15 x5 x15 carry;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffe510; Value = 0x0000ffffffffe6b8; PC = 0xaaaaaaab7990 *)
mov x21 L0xffffffffe510;
mov x22 L0xffffffffe518;
(* stp	x14, x15, [x1, #64]                         #! EA = L0xffffffffe9c8; PC = 0xaaaaaaab7994 *)
mov L0xffffffffe9c8 x14;
mov L0xffffffffe9d0 x15;
(* add	sp, sp, #0x60                               #! PC = 0xaaaaaaab7998 *)
adds dontcare sp sp 0x60@uint64;
(* #! <- SP = 0xffffffffe560 *)
#! 0xffffffffe560 = 0xffffffffe560;
(* #ret                                            #! PC = 0xaaaaaaab799c *)
#ret                                            #! 0xaaaaaaab799c = 0xaaaaaaab799c;
(* ldr	x0, [x0, #4048]                             #! EA = L0xaaaaaaacbfd0; Value = 0x0000fffff7ffd6b0; PC = 0xaaaaaaaae06c *)
mov x0 L0xaaaaaaacbfd0;
(* ldr	x1, [sp, #200]                              #! EA = L0xffffffffe628; Value = 0x467167a6e6990d00; PC = 0xaaaaaaaae070 *)
mov x1 L0xffffffffe628;
(* ldr	x2, [x0]                                    #! EA = L0xfffff7ffd6b0; Value = 0x467167a6e6990d00; PC = 0xaaaaaaaae074 *)
mov x2 L0xfffff7ffd6b0;
(* subs	x1, x1, x2                                 #! PC = 0xaaaaaaaae078 *)
subc carry x1 x1 x2;
(* mov	x2, #0x0                   	// #0           #! PC = 0xaaaaaaaae07c *)
mov x2 0x0@uint64;
(* #b.ne	0xaaaaaaaae090 <fpmul610_mont+144>  // b.any#! PC = 0xaaaaaaaae080 *)
#b.ne	0xaaaaaaaae090 <fpmul610_mont+144>  // b.any#! 0xaaaaaaaae080 = 0xaaaaaaaae080;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe570; Value = 0x0000ffffffffe7a8; PC = 0xaaaaaaaae084 *)
mov x19 L0xffffffffe570;
mov x20 L0xffffffffe578;
(* ldp	x29, x30, [sp], #208                        #! EA = L0xffffffffe560; Value = 0x0000ffffffffe630; PC = 0xaaaaaaaae088 *)
mov x29 L0xffffffffe560;
mov x30 L0xffffffffe568;
(* #! <- SP = 0xffffffffe630 *)
#! 0xffffffffe630 = 0xffffffffe630;
(* #ret                                            #! PC = 0xaaaaaaaae08c *)
#ret                                            #! 0xaaaaaaaae08c = 0xaaaaaaaae08c;

mov c0 L0xffffffffe988; mov c1 L0xffffffffe990; mov c2 L0xffffffffe998;
mov c3 L0xffffffffe9a0; mov c4 L0xffffffffe9a8; mov c5 L0xffffffffe9b0;
mov c6 L0xffffffffe9b8; mov c7 L0xffffffffe9c0; mov c8 L0xffffffffe9c8;
mov c9 L0xffffffffe9d0;

assert eqmod limbs 64 [c2, c3, c4, c5, c6, c7, c8, c9]
             limbs 64 [x25o,  x2o,  x3o, x11o, x12o, x13o, x14o, x15o] +
             limbs 64 [L0xffffffffe5e8, L0xffffffffe5f0, L0xffffffffe5f8,
                       L0xffffffffe600, L0xffffffffe608, L0xffffffffe610,
                       L0xffffffffe618, L0xffffffffe620]
             2**512 && true;
assume limbs 64 [c2, c3, c4, c5, c6, c7, c8, c9] =
       limbs 64 [x25o,  x2o,  x3o, x11o, x12o, x13o, x14o, x15o] +
       limbs 64 [L0xffffffffe5e8, L0xffffffffe5f0, L0xffffffffe5f8,
                 L0xffffffffe600, L0xffffffffe608, L0xffffffffe610,
                 L0xffffffffe618, L0xffffffffe620] && true;

{
  eqmod limbs 64 [0, 0, 0, 0, 0,  0, 0, 0, 0, 0,
                  c0, c1, c2, c3, c4, c5, c6, c7, c8, c9]
        limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9] *
        limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9]
        limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]
  prove with [ precondition ]
&&
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9] <u
  2@640 * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9]
  prove with [ precondition ]
}

