(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint -slicing blst_fp_mul_by_3-armv8.cl
Parsing Cryptoline file:                [OK]            0.002071 seconds
Checking well-formedness:               [OK]            0.000524 seconds
Transforming to SSA form:               [OK]            0.000255 seconds
Rewriting assignments:                  [OK]            0.000630 seconds
Verifying program safety:               [OK]            0.066176 seconds
Verifying range specification:          [OK]            36.898376 seconds
Rewriting value-preserved casting:      [OK]            0.000012 seconds
Verifying algebraic specification:      [OK]            0.000139 seconds
Verification result:                    [OK]            36.968775 seconds
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

(* #bl	0x4000011c40 <mul_by_3_mod_384>             #! PC = 0x274877971240 *)
#bl	0x4000011c40 <mul_by_3_mod_384>             #! 0x274877971240 = 0x274877971240;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877979732 *)
mov x10 L0x400082ac28;
mov x11 L0x400082ac30;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877979736 *)
mov x12 L0x400082ac38;
mov x13 L0x400082ac40;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877979740 *)
mov x14 L0x400082ac48;
mov x15 L0x400082ac50;
(* ldp	x4, x5, [x2]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877979744 *)
mov x4 L0x4000016868;
mov x5 L0x4000016870;
(* ldp	x6, x7, [x2, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877979748 *)
mov x6 L0x4000016878;
mov x7 L0x4000016880;
(* ldp	x8, x9, [x2, #32]                           #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979752 *)
mov x8 L0x4000016888;
mov x9 L0x4000016890;
(* #bl	0x4000011be0 <__lshift_mod_384>             #! PC = 0x274877979756 *)
#bl	0x4000011be0 <__lshift_mod_384>             #! 0x274877979756 = 0x274877979756;
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
(* #ret                                            #! PC = 0x274877979696 *)
#ret                                            #! 0x274877979696 = 0x274877979696;
(* ldp	x16, x17, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877979760 *)
mov x16 L0x400082ac28;
mov x17 L0x400082ac30;
(* ldp	x19, x20, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877979764 *)
mov x19 L0x400082ac38;
mov x20 L0x400082ac40;
(* ldp	x21, x22, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877979768 *)
mov x21 L0x400082ac48;
mov x22 L0x400082ac50;
(* #bl	0x4000011ab8 <__add_mod_384_ab_are_loaded>  #! PC = 0x274877979772 *)
#bl	0x4000011ab8 <__add_mod_384_ab_are_loaded>  #! 0x274877979772 = 0x274877979772;
(* adds	x10, x10, x16                              #! PC = 0x274877979320 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979324 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979328 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979332 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979336 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979340 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979344 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979348 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979352 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979356 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979360 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979364 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979368 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979372 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979376 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979380 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979384 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979388 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979392 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979396 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979400 *)
#ret                                            #! 0x274877979400 = 0x274877979400;
(* ldr	x30, [sp, #8]                               #! EA = L0x400082ab68; Value = 0x002500400000fb2c; PC = 0x274877979776 *)
#ldr	%%x30, [sp, #8]                               #! L0x400082ab68 = L0x400082ab68; 0x002500400000fb2c = 0x002500400000fb2c; 0x274877979776 = 0x274877979776;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac88; PC = 0x274877979780 *)
mov L0x400082ac88 x10;
mov L0x400082ac90 x11;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac98; PC = 0x274877979784 *)
mov L0x400082ac98 x12;
mov L0x400082aca0 x13;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082aca8; PC = 0x274877979788 *)
mov L0x400082aca8 x14;
mov L0x400082acb0 x15;
(* #ret                                            #! PC = 0x274877979808 *)
#ret                                            #! 0x274877979808 = 0x274877979808;
(* #ret                                            #! PC = 0x274877971248 *)
#ret                                            #! 0x274877971248 = 0x274877971248;

mov c0 x10;
mov c1 x11;
mov c2 x12;
mov c3 x13;
mov c4 x14;
mov c5 x15;

{
  true
&&
  eqmod (limbs 64 [c0, c1, c2, c3, c4, c5, 0@64])
        ((limbs 64 [a0, a1, a2, a3, a4, a5, 0@64]) * 3@448)
        (limbs 64 [m0, m1, m2, m3, m4, m5, 0@64])
}
