(* quine:  -v -isafety -slicing -no_carry_constraint blst_fp2_mul_by_8-armv8.cl
Parsing Cryptoline file:                [OK]            0.003841 seconds
Checking well-formedness:               [OK]            0.000600 seconds
Transforming to SSA form:               [OK]            0.000171 seconds
Rewriting assignments:                  [OK]            0.000457 seconds
Verifying program safety:               [OK]            0.182298 seconds
Verifying range specification:          [OK]            16.595463 seconds
Rewriting value-preserved casting:      [OK]            0.000018 seconds
Verifying algebraic specification:      [OK]            0.000170 seconds
Verification result:                    [OK]            16.784053 seconds
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
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
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

mov L0x40000168e8 m0;
mov L0x40000168f0 m1;
mov L0x40000168f8 m2;
mov L0x4000016900 m3;
mov L0x4000016908 m4;
mov L0x4000016910 m5;

(* #bl	0x4000011f20 <mul_by_8_mod_384x>            #! PC = 0x274877972712 *)
#bl	0x4000011f20 <mul_by_8_mod_384x>            #! 0x274877972712 = 0x274877972712;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877980468 *)
mov x10 L0x400082ab88;
mov x11 L0x400082ab90;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877980472 *)
mov x12 L0x400082ab98;
mov x13 L0x400082aba0;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877980476 *)
mov x14 L0x400082aba8;
mov x15 L0x400082abb0;
(* ldp	x4, x5, [x2]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877980480 *)
mov x4 L0x40000168e8;
mov x5 L0x40000168f0;
(* ldp	x6, x7, [x2, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877980484 *)
mov x6 L0x40000168f8;
mov x7 L0x4000016900;
(* ldp	x8, x9, [x2, #32]                           #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877980488 *)
mov x8 L0x4000016908;
mov x9 L0x4000016910;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980492 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980492 = 0x274877980492;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980496 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980496 = 0x274877980496;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980500 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980500 = 0x274877980500;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac48; PC = 0x274877980504 *)
mov L0x400082ac48 x10;
mov L0x400082ac50 x11;
(* ldp	x10, x11, [x1, #48]                         #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877980508 *)
mov x10 L0x400082abb8;
mov x11 L0x400082abc0;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac58; PC = 0x274877980512 *)
mov L0x400082ac58 x12;
mov L0x400082ac60 x13;
(* ldp	x12, x13, [x1, #64]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877980516 *)
mov x12 L0x400082abc8;
mov x13 L0x400082abd0;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082ac68; PC = 0x274877980520 *)
mov L0x400082ac68 x14;
mov L0x400082ac70 x15;
(* ldp	x14, x15, [x1, #80]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877980524 *)
mov x14 L0x400082abd8;
mov x15 L0x400082abe0;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980528 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980528 = 0x274877980528;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980532 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980532 = 0x274877980532;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* #bl	0x4000011c60 <__lshift_mod_384>             #! PC = 0x274877980536 *)
#bl	0x4000011c60 <__lshift_mod_384>             #! 0x274877980536 = 0x274877980536;
(* adds	x10, x10, x10                              #! PC = 0x274877979744 *)
adds carry x10 x10 x10;
(* adcs	x11, x11, x11                              #! PC = 0x274877979748 *)
adcs carry x11 x11 x11 carry;
(* adcs	x12, x12, x12                              #! PC = 0x274877979752 *)
adcs carry x12 x12 x12 carry;
(* adcs	x13, x13, x13                              #! PC = 0x274877979756 *)
adcs carry x13 x13 x13 carry;
(* adcs	x14, x14, x14                              #! PC = 0x274877979760 *)
adcs carry x14 x14 x14 carry;
(* adcs	x15, x15, x15                              #! PC = 0x274877979764 *)
adcs carry x15 x15 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979768 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979772 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979776 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979780 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979784 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979788 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979792 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979796 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979800 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979804 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979808 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979812 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979816 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979820 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979824 *)
#ret                                            #! 0x274877979824 = 0x274877979824;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082ac78; PC = 0x274877980544 *)
mov L0x400082ac78 x10;
mov L0x400082ac80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082ac88; PC = 0x274877980548 *)
mov L0x400082ac88 x12;
mov L0x400082ac90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082ac98; PC = 0x274877980552 *)
mov L0x400082ac98 x14;
mov L0x400082aca0 x15;
(* #ret                                            #! PC = 0x274877980572 *)
#ret                                            #! 0x274877980572 = 0x274877980572;
(* #ret                                            #! PC = 0x274877972720 *)
#ret                                            #! 0x274877972720 = 0x274877972720;

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
    eqmod (limbs 64 [e0, e1, e2, e3, e4, e5])
          (8@384 * (limbs 64 [a0, a1, a2, a3, a4, a5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5]),
    eqmod (limbs 64 [f0, f1, f2, f3, f4, f5])
          (8@384 * (limbs 64 [b0, b1, b2, b3, b4, b5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}
