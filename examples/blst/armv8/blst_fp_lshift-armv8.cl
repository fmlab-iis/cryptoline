(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint -slicing blst_fp_lshift-armv8.cl
Parsing Cryptoline file:                [OK]            0.000840 seconds
Checking well-formedness:               [OK]            0.000225 seconds
Transforming to SSA form:               [OK]            0.000107 seconds
Rewriting assignments:                  [OK]            0.000243 seconds
Verifying program safety:               [OK]            0.035569 seconds
Verifying range specification:          [OK]            0.705830 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic specification:      [OK]            0.000211 seconds
Verification result:                    [OK]            0.743402 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5) =
{
  true
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

(* inputs *)

mov L0x400082ac28 a0;
mov L0x400082ac30 a1;
mov L0x400082ac38 a2;
mov L0x400082ac40 a3;
mov L0x400082ac48 a4;
mov L0x400082ac50 a5;

mov L0x4000016868 m0;
mov L0x4000016870 m1;
mov L0x4000016878 m2;
mov L0x4000016880 m3;
mov L0x4000016888 m4;
mov L0x4000016890 m5;

(* #bl	0x4000011b80 <lshift_mod_384>               #! PC = 0x274877971296 *)
#bl	0x4000011b80 <lshift_mod_384>               #! 0x274877971296 = 0x274877971296;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877979540 *)
mov x10 L0x400082ac28;
mov x11 L0x400082ac30;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877979544 *)
mov x12 L0x400082ac38;
mov x13 L0x400082ac40;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877979548 *)
mov x14 L0x400082ac48;
mov x15 L0x400082ac50;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877979552 *)
mov x4 L0x4000016868;
mov x5 L0x4000016870;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877979556 *)
mov x6 L0x4000016878;
mov x7 L0x4000016880;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979560 *)
mov x8 L0x4000016888;
mov x9 L0x4000016890;
(* sub	x2, x2, #0x1                                #! PC = 0x274877979564 *)
#sub	%%x2, %%x2, #0x1                                #! 0x274877979564 = 0x274877979564;
(* #bl	0x4000011be0 <__lshift_mod_384>             #! PC = 0x274877979568 *)
#bl	0x4000011be0 <__lshift_mod_384>             #! 0x274877979568 = 0x274877979568;
(* adds	x10, x10, x10                              #! PC = 0x274877979616 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979620 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979624 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979628 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979632 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979636 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979640 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979644 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979648 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979652 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979656 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979660 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979664 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979668 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979672 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979676 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979680 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979684 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979688 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979692 *)
cmov x15 carry x22 x15;

mov c0 x10;
mov c1 x11;
mov c2 x12;
mov c3 x13;
mov c4 x14;
mov c5 x15;

{
  true
&&
  eqmod (limbs 64 [c0, c1, c2, c3, c4, c5])
        ((limbs 64 [a0, a1, a2, a3, a4, a5]) * 2@384)
        (limbs 64 [m0, m1, m2, m3, m4, m5])
}

