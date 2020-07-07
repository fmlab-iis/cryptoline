(* quine: -v -isafety -jobs 10 -btor blst_fp_sub-armv8.cl
Parsing Cryptoline file:                [OK]            0.001408 seconds
Checking well-formedness:               [OK]            0.000376 seconds
Transforming to SSA form:               [OK]            0.000181 seconds
Rewriting assignments:                  [OK]            0.000636 seconds
Verifying program safety:               [OK]            0.001208 seconds
Verifying range specification:          [OK]            17.140538 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic specification:      [OK]            0.000233 seconds
Verification result:                    [OK]            17.145096 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    (limbs 64 [a0, a1, a2, a3, a4, a5]) <u
    (limbs 64 [m0, m1, m2, m3, m4, m5]),
    (limbs 64 [b0, b1, b2, b3, b4, b5]) <u
    (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}

(* inputs *)

mov L0x400082ac28 a0;
mov L0x400082ac30 a1;
mov L0x400082ac38 a2;
mov L0x400082ac40 a3;
mov L0x400082ac48 a4;
mov L0x400082ac50 a5;

mov L0x400082ac58 b0;
mov L0x400082ac60 b1;
mov L0x400082ac68 b2;
mov L0x400082ac70 b3;
mov L0x400082ac78 b4;
mov L0x400082ac80 b5;

mov L0x4000016868 m0;
mov L0x4000016870 m1;
mov L0x4000016878 m2;
mov L0x4000016880 m3;
mov L0x4000016888 m4;
mov L0x4000016890 m5;

(* #bl	0x40000120e0 <sub_mod_384>                  #! PC = 0x274877971212 *)
#bl	0x40000120e0 <sub_mod_384>                  #! 0x274877971212 = 0x274877971212;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877980916 *)
mov x4 L0x4000016868;
mov x5 L0x4000016870;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877980920 *)
mov x6 L0x4000016878;
mov x7 L0x4000016880;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877980924 *)
mov x8 L0x4000016888;
mov x9 L0x4000016890;
(* #bl	0x4000012140 <__sub_mod_384>                #! PC = 0x274877980928 *)
#bl	0x4000012140 <__sub_mod_384>                #! 0x274877980928 = 0x274877980928;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877980992 *)
mov x10 L0x400082ac28;
mov x11 L0x400082ac30;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082ac58; Value = 0x0000000000000000; PC = 0x274877980996 *)
mov x16 L0x400082ac58;
mov x17 L0x400082ac60;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877981000 *)
mov x12 L0x400082ac38;
mov x13 L0x400082ac40;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082ac68; Value = 0x00000040008a772c; PC = 0x274877981004 *)
mov x19 L0x400082ac68;
mov x20 L0x400082ac70;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877981008 *)
mov x14 L0x400082ac48;
mov x15 L0x400082ac50;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac78; Value = 0x0000004000014e70; PC = 0x274877981012 *)
mov x21 L0x400082ac78;
mov x22 L0x400082ac80;
(* subs	x10, x10, x16                              #! PC = 0x274877981016 *)
subc carry x10 x10 x16;
(* sbcs	x11, x11, x17                              #! PC = 0x274877981020 *)
sbcs carry x11 x11 x17 carry;
(* sbcs	x12, x12, x19                              #! PC = 0x274877981024 *)
sbcs carry x12 x12 x19 carry;
(* sbcs	x13, x13, x20                              #! PC = 0x274877981028 *)
sbcs carry x13 x13 x20 carry;
(* sbcs	x14, x14, x21                              #! PC = 0x274877981032 *)
sbcs carry x14 x14 x21 carry;
(* sbcs	x15, x15, x22                              #! PC = 0x274877981036 *)
sbcs carry x15 x15 x22 carry;
(* ngc	x3, xzr                                     #! PC = 0x274877981040 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x16, x4, x3                                 #! PC = 0x274877981044 *)
and x16@uint64 x4 x3;
(* and	x17, x5, x3                                 #! PC = 0x274877981048 *)
and x17@uint64 x5 x3;
(* adds	x10, x10, x16                              #! PC = 0x274877981052 *)
adds carry x10 x10 x16;
(* and	x19, x6, x3                                 #! PC = 0x274877981056 *)
and x19@uint64 x6 x3;
(* adcs	x11, x11, x17                              #! PC = 0x274877981060 *)
adcs carry x11 x11 x17 carry;
(* and	x20, x7, x3                                 #! PC = 0x274877981064 *)
and x20@uint64 x7 x3;
(* adcs	x12, x12, x19                              #! PC = 0x274877981068 *)
adcs carry x12 x12 x19 carry;
(* and	x21, x8, x3                                 #! PC = 0x274877981072 *)
and x21@uint64 x8 x3;
(* adcs	x13, x13, x20                              #! PC = 0x274877981076 *)
adcs carry x13 x13 x20 carry;
(* and	x22, x9, x3                                 #! PC = 0x274877981080 *)
and x22@uint64 x9 x3;
(* adcs	x14, x14, x21                              #! PC = 0x274877981084 *)
adcs carry x14 x14 x21 carry;
(* adc	x15, x15, x22                               #! PC = 0x274877981088 *)
adcs dontcare x15 x15 x22 carry;
(* #ret                                            #! PC = 0x274877981092 *)
#ret                                            #! 0x274877981092 = 0x274877981092;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac88; PC = 0x274877980936 *)
mov L0x400082ac88 x10;
mov L0x400082ac90 x11;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac98; PC = 0x274877980940 *)
mov L0x400082ac98 x12;
mov L0x400082aca0 x13;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082aca8; PC = 0x274877980944 *)
mov L0x400082aca8 x14;
mov L0x400082acb0 x15;
(* #ret                                            #! PC = 0x274877980964 *)
#ret                                            #! 0x274877980964 = 0x274877980964;
(* #ret                                            #! PC = 0x274877971220 *)
#ret                                            #! 0x274877971220 = 0x274877971220;

mov c0 L0x400082ac88;
mov c1 L0x400082ac90;
mov c2 L0x400082ac98;
mov c3 L0x400082aca0;
mov c4 L0x400082aca8;
mov c5 L0x400082acb0;

{
  true
&&
  and [
    eqmod (limbs 64 [c0, c1, c2, c3, c4, c5])
          ((limbs 64 [a0, a1, a2, a3, a4, a5]) -
           (limbs 64 [b0, b1, b2, b3, b4, b5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5]),
    (limbs 64 [c0, c1, c2, c3, c4, c5]) <u
    (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}
