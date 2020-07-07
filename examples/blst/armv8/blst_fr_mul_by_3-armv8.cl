(* quine: -v -isafety -jobs 10 -btor blst_fr_mul_by_3-armv8.cl
Parsing Cryptoline file:                [OK]            0.001467 seconds
Checking well-formedness:               [OK]            0.000221 seconds
Transforming to SSA form:               [OK]            0.000099 seconds
Rewriting assignments:                  [OK]            0.000192 seconds
Verifying program safety:               [OK]            0.068781 seconds
Verifying range specification:          [OK]            12.157605 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic specification:      [OK]            0.000163 seconds
Verification result:                    [OK]            12.228936 seconds
*)                                                    

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
&&
  and [
    m0=0xffffffff00000001@64, m1=0x53bda402fffe5bfe@64,
    m2=0x3339d80809a1d805@64, m3=0x73eda753299d7d48@64,
    limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

(* inputs *)

mov L0x400082abc8 a0;
mov L0x400082abd0 a1;
mov L0x400082abd8 a2;
mov L0x400082abe0 a3;

mov L0x40000167b0 m0;
mov L0x40000167b8 m1;
mov L0x40000167c0 m2;
mov L0x40000167c8 m3;

(* #bl	0x4000011820 <mul_by_3_mod_256>             #! PC = 0x274877970936 *)
#bl	0x4000011820 <mul_by_3_mod_256>             #! 0x274877970936 = 0x274877970936;
(* ldp	x12, x13, [x1]                              #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877978656 *)
mov x12 L0x400082abc8;
mov x13 L0x400082abd0;
(* ldp	x14, x15, [x1, #16]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877978660 *)
mov x14 L0x400082abd8;
mov x15 L0x400082abe0;
(* adds	x8, x12, x12                               #! PC = 0x274877978664 *)
adds carry x8 x12 x12;
(* ldp	x4, x5, [x2]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877978668 *)
mov x4 L0x40000167b0;
mov x5 L0x40000167b8;
(* adcs	x9, x13, x13                               #! PC = 0x274877978672 *)
adcs carry x9 x13 x13 carry;
(* ldp	x6, x7, [x2, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877978676 *)
mov x6 L0x40000167c0;
mov x7 L0x40000167c8;
(* adcs	x10, x14, x14                              #! PC = 0x274877978680 *)
adcs carry x10 x14 x14 carry;
(* adcs	x11, x15, x15                              #! PC = 0x274877978684 *)
adcs carry x11 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877978688 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x8, x4                                #! PC = 0x274877978692 *)
subc carry x16 x8 x4;
(* sbcs	x17, x9, x5                                #! PC = 0x274877978696 *)
sbcs carry x17 x9 x5 carry;
(* sbcs	x1, x10, x6                                #! PC = 0x274877978700 *)
sbcs carry x1 x10 x6 carry;
(* sbcs	x2, x11, x7                                #! PC = 0x274877978704 *)
sbcs carry x2 x11 x7 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877978708 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x8, x8, x16, cc  // cc = lo, ul, last      #! PC = 0x274877978712 *)
cmov x8 carry x16 x8;
(* csel	x9, x9, x17, cc  // cc = lo, ul, last      #! PC = 0x274877978716 *)
cmov x9 carry x17 x9;
(* csel	x10, x10, x1, cc  // cc = lo, ul, last     #! PC = 0x274877978720 *)
cmov x10 carry x1 x10;
(* csel	x11, x11, x2, cc  // cc = lo, ul, last     #! PC = 0x274877978724 *)
cmov x11 carry x2 x11;
(* adds	x8, x8, x12                                #! PC = 0x274877978728 *)
adds carry x8 x8 x12;
(* adcs	x9, x9, x13                                #! PC = 0x274877978732 *)
adcs carry x9 x9 x13 carry;
(* adcs	x10, x10, x14                              #! PC = 0x274877978736 *)
adcs carry x10 x10 x14 carry;
(* adcs	x11, x11, x15                              #! PC = 0x274877978740 *)
adcs carry x11 x11 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877978744 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x8, x4                                #! PC = 0x274877978748 *)
subc carry x16 x8 x4;
(* sbcs	x17, x9, x5                                #! PC = 0x274877978752 *)
sbcs carry x17 x9 x5 carry;
(* sbcs	x1, x10, x6                                #! PC = 0x274877978756 *)
sbcs carry x1 x10 x6 carry;
(* sbcs	x2, x11, x7                                #! PC = 0x274877978760 *)
sbcs carry x2 x11 x7 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877978764 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x8, x8, x16, cc  // cc = lo, ul, last      #! PC = 0x274877978768 *)
cmov x8 carry x16 x8;
(* csel	x9, x9, x17, cc  // cc = lo, ul, last      #! PC = 0x274877978772 *)
cmov x9 carry x17 x9;
(* csel	x10, x10, x1, cc  // cc = lo, ul, last     #! PC = 0x274877978776 *)
cmov x10 carry x1 x10;
(* stp	x8, x9, [x0]                                #! EA = L0x400082ac08; PC = 0x274877978780 *)
mov L0x400082ac08 x8;
mov L0x400082ac10 x9;
(* csel	x11, x11, x2, cc  // cc = lo, ul, last     #! PC = 0x274877978784 *)
cmov x11 carry x2 x11;
(* stp	x10, x11, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877978788 *)
mov L0x400082ac18 x10;
mov L0x400082ac20 x11;
(* #ret                                            #! PC = 0x274877978792 *)
#ret                                            #! 0x274877978792 = 0x274877978792;
(* #ret                                            #! PC = 0x274877970944 *)
#ret                                            #! 0x274877970944 = 0x274877970944;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;

{
  true
&&
  and [
  (* add additional MSB to avoid signed remainder *)
     eqmod (limbs 64 [c0, c1, c2, c3, 0@64])
           (mul (limbs 64 [a0, a1, a2, a3, 0@64])
                (limbs 64 [3@64, 0@64, 0@64, 0@64, 0@64]))
           (limbs 64 [m0, m1, m2, m3, 0@64]),
    (limbs 64 [c0, c1, c2, c3]) <u (limbs 64 [m0, m1, m2, m3])
  ]
}


