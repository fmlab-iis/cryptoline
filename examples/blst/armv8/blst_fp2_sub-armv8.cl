(* quine:  -v -isafety -slicing -no_carry_constraint blst_fp2_sub-armv8.cl
Parsing Cryptoline file:                [OK]            0.002076 seconds
Checking well-formedness:               [OK]            0.000585 seconds
Transforming to SSA form:               [OK]            0.000295 seconds
Rewriting assignments:                  [OK]            0.002031 seconds
Verifying program safety:               [OK]            0.000157 seconds
Verifying range specification:          [OK]            38.933556 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic specification:      [OK]            0.000126 seconds
Verification result:                    [OK]            38.939452 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5,
           uint64 d0, uint64 d1, uint64 d2, uint64 d3, uint64 d4, uint64 d5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

mov L0x400082ab88 a0;
mov L0x400082ab90 a1;
mov L0x400082ab98 a2;
mov L0x400082aba0 a3;
mov L0x400082aba8 a4;
mov L0x400082abb0 a5;
mov L0x400082abb8 b0;
mov L0x400082abc0 b1;
mov L0x400082abc8 b2;
mov L0x400082abd0 b3;
mov L0x400082abd8 b4;
mov L0x400082abe0 b5;

mov L0x400082abe8 c0;
mov L0x400082abf0 c1;
mov L0x400082abf8 c2;
mov L0x400082ac00 c3;
mov L0x400082ac08 c4;
mov L0x400082ac10 c5;
mov L0x400082ac18 d0;
mov L0x400082ac20 d1;
mov L0x400082ac28 d2;
mov L0x400082ac30 d3;
mov L0x400082ac38 d4;
mov L0x400082ac40 d5;

mov L0x40000168e8 m0;
mov L0x40000168f0 m1;
mov L0x40000168f8 m2;
mov L0x4000016900 m3;
mov L0x4000016908 m4;
mov L0x4000016910 m5;

(* #bl	0x4000012240 <sub_mod_384x>                 #! PC = 0x274877972656 *)
#bl	0x4000012240 <sub_mod_384x>                 #! 0x274877972656 = 0x274877972656;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877981268 *)
mov x4 L0x40000168e8;
mov x5 L0x40000168f0;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877981272 *)
mov x6 L0x40000168f8;
mov x7 L0x4000016900;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877981276 *)
mov x8 L0x4000016908;
mov x9 L0x4000016910;
(* #bl	0x40000121c0 <__sub_mod_384>                #! PC = 0x274877981280 *)
#bl	0x40000121c0 <__sub_mod_384>                #! 0x274877981280 = 0x274877981280;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877981120 *)
mov x10 L0x400082ab88;
mov x11 L0x400082ab90;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877981124 *)
mov x16 L0x400082abe8;
mov x17 L0x400082abf0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877981128 *)
mov x12 L0x400082ab98;
mov x13 L0x400082aba0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877981132 *)
mov x19 L0x400082abf8;
mov x20 L0x400082ac00;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877981136 *)
mov x14 L0x400082aba8;
mov x15 L0x400082abb0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac08; Value = 0x0000000000000000; PC = 0x274877981140 *)
mov x21 L0x400082ac08;
mov x22 L0x400082ac10;
(* subs	x10, x10, x16                              #! PC = 0x274877981144 *)
subc carry x10 x10 x16;
(* sbcs	x11, x11, x17                              #! PC = 0x274877981148 *)
sbcs carry x11 x11 x17 carry;
(* sbcs	x12, x12, x19                              #! PC = 0x274877981152 *)
sbcs carry x12 x12 x19 carry;
(* sbcs	x13, x13, x20                              #! PC = 0x274877981156 *)
sbcs carry x13 x13 x20 carry;
(* sbcs	x14, x14, x21                              #! PC = 0x274877981160 *)
sbcs carry x14 x14 x21 carry;
(* sbcs	x15, x15, x22                              #! PC = 0x274877981164 *)
sbcs carry x15 x15 x22 carry;
(* ngc	x3, xzr                                     #! PC = 0x274877981168 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x16, x4, x3                                 #! PC = 0x274877981172 *)
and x16@uint64 x4 x3;
(* and	x17, x5, x3                                 #! PC = 0x274877981176 *)
and x17@uint64 x5 x3;
(* adds	x10, x10, x16                              #! PC = 0x274877981180 *)
adds carry x10 x10 x16;
(* and	x19, x6, x3                                 #! PC = 0x274877981184 *)
and x19@uint64 x6 x3;
(* adcs	x11, x11, x17                              #! PC = 0x274877981188 *)
adcs carry x11 x11 x17 carry;
(* and	x20, x7, x3                                 #! PC = 0x274877981192 *)
and x20@uint64 x7 x3;
(* adcs	x12, x12, x19                              #! PC = 0x274877981196 *)
adcs carry x12 x12 x19 carry;
(* and	x21, x8, x3                                 #! PC = 0x274877981200 *)
and x21@uint64 x8 x3;
(* adcs	x13, x13, x20                              #! PC = 0x274877981204 *)
adcs carry x13 x13 x20 carry;
(* and	x22, x9, x3                                 #! PC = 0x274877981208 *)
and x22@uint64 x9 x3;
(* adcs	x14, x14, x21                              #! PC = 0x274877981212 *)
adcs carry x14 x14 x21 carry;
(* adc	x15, x15, x22                               #! PC = 0x274877981216 *)
adcs dontcare x15 x15 x22 carry;
(* #ret                                            #! PC = 0x274877981220 *)
#ret                                            #! 0x274877981220 = 0x274877981220;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac48; PC = 0x274877981284 *)
mov L0x400082ac48 x10;
mov L0x400082ac50 x11;
(* add	x1, x1, #0x30                               #! PC = 0x274877981288 *)
#add	%%x1, %%x1, #0x30                               #! 0x274877981288 = 0x274877981288;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac58; PC = 0x274877981292 *)
mov L0x400082ac58 x12;
mov L0x400082ac60 x13;
(* add	x2, x2, #0x30                               #! PC = 0x274877981296 *)
#add	%%x2, %%x2, #0x30                               #! 0x274877981296 = 0x274877981296;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082ac68; PC = 0x274877981300 *)
mov L0x400082ac68 x14;
mov L0x400082ac70 x15;
(* #bl	0x40000121c0 <__sub_mod_384>                #! PC = 0x274877981304 *)
#bl	0x40000121c0 <__sub_mod_384>                #! 0x274877981304 = 0x274877981304;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877981120 *)
mov x10 L0x400082abb8;
mov x11 L0x400082abc0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082ac18; Value = 0x0000000000000000; PC = 0x274877981124 *)
mov x16 L0x400082ac18;
mov x17 L0x400082ac20;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877981128 *)
mov x12 L0x400082abc8;
mov x13 L0x400082abd0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877981132 *)
mov x19 L0x400082ac28;
mov x20 L0x400082ac30;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877981136 *)
mov x14 L0x400082abd8;
mov x15 L0x400082abe0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877981140 *)
mov x21 L0x400082ac38;
mov x22 L0x400082ac40;
(* subs	x10, x10, x16                              #! PC = 0x274877981144 *)
subc carry x10 x10 x16;
(* sbcs	x11, x11, x17                              #! PC = 0x274877981148 *)
sbcs carry x11 x11 x17 carry;
(* sbcs	x12, x12, x19                              #! PC = 0x274877981152 *)
sbcs carry x12 x12 x19 carry;
(* sbcs	x13, x13, x20                              #! PC = 0x274877981156 *)
sbcs carry x13 x13 x20 carry;
(* sbcs	x14, x14, x21                              #! PC = 0x274877981160 *)
sbcs carry x14 x14 x21 carry;
(* sbcs	x15, x15, x22                              #! PC = 0x274877981164 *)
sbcs carry x15 x15 x22 carry;
(* ngc	x3, xzr                                     #! PC = 0x274877981168 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x16, x4, x3                                 #! PC = 0x274877981172 *)
and x16@uint64 x4 x3;
(* and	x17, x5, x3                                 #! PC = 0x274877981176 *)
and x17@uint64 x5 x3;
(* adds	x10, x10, x16                              #! PC = 0x274877981180 *)
adds carry x10 x10 x16;
(* and	x19, x6, x3                                 #! PC = 0x274877981184 *)
and x19@uint64 x6 x3;
(* adcs	x11, x11, x17                              #! PC = 0x274877981188 *)
adcs carry x11 x11 x17 carry;
(* and	x20, x7, x3                                 #! PC = 0x274877981192 *)
and x20@uint64 x7 x3;
(* adcs	x12, x12, x19                              #! PC = 0x274877981196 *)
adcs carry x12 x12 x19 carry;
(* and	x21, x8, x3                                 #! PC = 0x274877981200 *)
and x21@uint64 x8 x3;
(* adcs	x13, x13, x20                              #! PC = 0x274877981204 *)
adcs carry x13 x13 x20 carry;
(* and	x22, x9, x3                                 #! PC = 0x274877981208 *)
and x22@uint64 x9 x3;
(* adcs	x14, x14, x21                              #! PC = 0x274877981212 *)
adcs carry x14 x14 x21 carry;
(* adc	x15, x15, x22                               #! PC = 0x274877981216 *)
adcs dontcare x15 x15 x22 carry;
(* #ret                                            #! PC = 0x274877981220 *)
#ret                                            #! 0x274877981220 = 0x274877981220;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082ac78; PC = 0x274877981312 *)
mov L0x400082ac78 x10;
mov L0x400082ac80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082ac88; PC = 0x274877981316 *)
mov L0x400082ac88 x12;
mov L0x400082ac90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082ac98; PC = 0x274877981320 *)
mov L0x400082ac98 x14;
mov L0x400082aca0 x15;
(* #ret                                            #! PC = 0x274877981340 *)
#ret                                            #! 0x274877981340 = 0x274877981340;
(* #ret                                            #! PC = 0x274877972664 *)
#ret                                            #! 0x274877972664 = 0x274877972664;

mov e0 L0x400082ac48;
mov e1 L0x400082ac50;
mov e2 L0x400082ac58;
mov e3 L0x400082ac60;
mov e4 L0x400082ac68;
mov e5 L0x400082ac70;
mov f0 L0x400082ac78;
mov f1 L0x400082ac80;
mov f2 L0x400082ac88;
mov f3 L0x400082ac90;
mov f4 L0x400082ac98;
mov f5 L0x400082aca0;

{
  true
&&
  and [
    eqmod ((limbs 64 [e0, e1, e2, e3, e4, e5]) +
           (limbs 64 [c0, c1, c2, c3, c4, c5]))
          ((limbs 64 [a0, a1, a2, a3, a4, a5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5]),
    eqmod ((limbs 64 [f0, f1, f2, f3, f4, f5]) +
           (limbs 64 [d0, d1, d2, d3, d4, d5]))
          ((limbs 64 [b0, b1, b2, b3, b4, b5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}
