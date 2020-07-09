(* quine: -v -isafety -slicing -no_carry_constraint blst_fp2_add-armv8.cl
Parsing Cryptoline file:                [OK]            0.002268 seconds
Checking well-formedness:               [OK]            0.000650 seconds
Transforming to SSA form:               [OK]            0.000323 seconds
Rewriting assignments:                  [OK]            0.002248 seconds
Verifying program safety:               [OK]            0.063427 seconds
Verifying range specification:          [OK]            2.935067 seconds
Rewriting value-preserved casting:      [OK]            0.000011 seconds
Verifying algebraic specification:      [OK]            0.000129 seconds
Verification result:                    [OK]            3.004796 seconds
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

(* #bl	0x4000011ba0 <add_mod_384x>                 #! PC = 0x274877972628 *)
#bl	0x4000011ba0 <add_mod_384x>                 #! 0x274877972628 = 0x274877972628;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877979572 *)
mov x4 L0x40000168e8;
mov x5 L0x40000168f0;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877979576 *)
mov x6 L0x40000168f8;
mov x7 L0x4000016900;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979580 *)
mov x8 L0x4000016908;
mov x9 L0x4000016910;
(* #bl	0x4000011b20 <__add_mod_384>                #! PC = 0x274877979584 *)
#bl	0x4000011b20 <__add_mod_384>                #! 0x274877979584 = 0x274877979584;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877979424 *)
mov x10 L0x400082ab88;
mov x11 L0x400082ab90;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877979428 *)
mov x16 L0x400082abe8;
mov x17 L0x400082abf0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877979432 *)
mov x12 L0x400082ab98;
mov x13 L0x400082aba0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877979436 *)
mov x19 L0x400082abf8;
mov x20 L0x400082ac00;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877979440 *)
mov x14 L0x400082aba8;
mov x15 L0x400082abb0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac08; Value = 0x0000000000000000; PC = 0x274877979444 *)
mov x21 L0x400082ac08;
mov x22 L0x400082ac10;
(* adds	x10, x10, x16                              #! PC = 0x274877979448 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979452 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979456 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979460 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979464 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979468 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979472 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979476 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979480 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979484 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979488 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979492 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979496 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979500 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979504 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979508 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979512 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979516 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979520 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979524 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979528 *)
#ret                                            #! 0x274877979528 = 0x274877979528;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac48; PC = 0x274877979588 *)
mov L0x400082ac48 x10;
mov L0x400082ac50 x11;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac58; PC = 0x274877979596 *)
mov L0x400082ac58 x12;
mov L0x400082ac60 x13;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082ac68; PC = 0x274877979604 *)
mov L0x400082ac68 x14;
mov L0x400082ac70 x15;
(* #bl	0x4000011b20 <__add_mod_384>                #! PC = 0x274877979608 *)
#bl	0x4000011b20 <__add_mod_384>                #! 0x274877979608 = 0x274877979608;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877979424 *)
mov x10 L0x400082abb8;
mov x11 L0x400082abc0;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082ac18; Value = 0x0000000000000000; PC = 0x274877979428 *)
mov x16 L0x400082ac18;
mov x17 L0x400082ac20;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877979432 *)
mov x12 L0x400082abc8;
mov x13 L0x400082abd0;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877979436 *)
mov x19 L0x400082ac28;
mov x20 L0x400082ac30;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877979440 *)
mov x14 L0x400082abd8;
mov x15 L0x400082abe0;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877979444 *)
mov x21 L0x400082ac38;
mov x22 L0x400082ac40;
(* adds	x10, x10, x16                              #! PC = 0x274877979448 *)
adds carry x10 x10 x16;
(* adcs	x11, x11, x17                              #! PC = 0x274877979452 *)
adcs carry x11 x11 x17 carry;
(* adcs	x12, x12, x19                              #! PC = 0x274877979456 *)
adcs carry x12 x12 x19 carry;
(* adcs	x13, x13, x20                              #! PC = 0x274877979460 *)
adcs carry x13 x13 x20 carry;
(* adcs	x14, x14, x21                              #! PC = 0x274877979464 *)
adcs carry x14 x14 x21 carry;
(* adcs	x15, x15, x22                              #! PC = 0x274877979468 *)
adcs carry x15 x15 x22 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877979472 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x10, x4                               #! PC = 0x274877979476 *)
subc carry x16 x10 x4;
(* sbcs	x17, x11, x5                               #! PC = 0x274877979480 *)
sbcs carry x17 x11 x5 carry;
(* sbcs	x19, x12, x6                               #! PC = 0x274877979484 *)
sbcs carry x19 x12 x6 carry;
(* sbcs	x20, x13, x7                               #! PC = 0x274877979488 *)
sbcs carry x20 x13 x7 carry;
(* sbcs	x21, x14, x8                               #! PC = 0x274877979492 *)
sbcs carry x21 x14 x8 carry;
(* sbcs	x22, x15, x9                               #! PC = 0x274877979496 *)
sbcs carry x22 x15 x9 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877979500 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x10, x10, x16, cc  // cc = lo, ul, last    #! PC = 0x274877979504 *)
cmov x10 carry x16 x10;
(* csel	x11, x11, x17, cc  // cc = lo, ul, last    #! PC = 0x274877979508 *)
cmov x11 carry x17 x11;
(* csel	x12, x12, x19, cc  // cc = lo, ul, last    #! PC = 0x274877979512 *)
cmov x12 carry x19 x12;
(* csel	x13, x13, x20, cc  // cc = lo, ul, last    #! PC = 0x274877979516 *)
cmov x13 carry x20 x13;
(* csel	x14, x14, x21, cc  // cc = lo, ul, last    #! PC = 0x274877979520 *)
cmov x14 carry x21 x14;
(* csel	x15, x15, x22, cc  // cc = lo, ul, last    #! PC = 0x274877979524 *)
cmov x15 carry x22 x15;
(* #ret                                            #! PC = 0x274877979528 *)
#ret                                            #! 0x274877979528 = 0x274877979528;
(* stp	x10, x11, [x0, #48]                         #! EA = L0x400082ac78; PC = 0x274877979616 *)
mov L0x400082ac78 x10;
mov L0x400082ac80 x11;
(* stp	x12, x13, [x0, #64]                         #! EA = L0x400082ac88; PC = 0x274877979620 *)
mov L0x400082ac88 x12;
mov L0x400082ac90 x13;
(* stp	x14, x15, [x0, #80]                         #! EA = L0x400082ac98; PC = 0x274877979624 *)
mov L0x400082ac98 x14;
mov L0x400082aca0 x15;
(* #ret                                            #! PC = 0x274877979644 *)
#ret                                            #! 0x274877979644 = 0x274877979644;
(* #ret                                            #! PC = 0x274877972636 *)
#ret                                            #! 0x274877972636 = 0x274877972636;

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
          ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
           (limbs 64 [c0, c1, c2, c3, c4, c5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5]),
    eqmod (limbs 64 [f0, f1, f2, f3, f4, f5])
          ((limbs 64 [b0, b1, b2, b3, b4, b5]) +
           (limbs 64 [d0, d1, d2, d3, d4, d5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}

