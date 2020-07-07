(* quine: -v -isafety -jobs 10 -btor blst_fp_add-armv8.cl
Parsing Cryptoline file:                [OK]            0.001626 seconds
Checking well-formedness:               [OK]            0.000355 seconds
Transforming to SSA form:               [OK]            0.000106 seconds
Rewriting assignments:                  [OK]            0.000356 seconds
Verifying program safety:               [OK]            0.036577 seconds
Verifying range specification:          [OK]            3.696432 seconds
Rewriting value-preserved casting:      [OK]            0.000008 seconds
Verifying algebraic specification:      [OK]            0.000253 seconds
Verification result:                    [OK]            3.736125 seconds
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

(* #bl	0x4000011a40 <add_mod_384>                  #! PC = 0x274877971184 *)
#bl	0x4000011a40 <add_mod_384>                  #! 0x274877971184 = 0x274877971184;
(* ldp	x4, x5, [x3]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877979220 *)
mov x4 L0x4000016868;
mov x5 L0x4000016870;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877979224 *)
mov x6 L0x4000016878;
mov x7 L0x4000016880;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877979228 *)
mov x8 L0x4000016888;
mov x9 L0x4000016890;
(* #bl	0x4000011aa0 <__add_mod_384>                #! PC = 0x274877979232 *)
#bl	0x4000011aa0 <__add_mod_384>                #! 0x274877979232 = 0x274877979232;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877979296 *)
mov x10 L0x400082ac28;
mov x11 L0x400082ac30;
(* ldp	x16, x17, [x2]                              #! EA = L0x400082ac58; Value = 0x0000000000000000; PC = 0x274877979300 *)
mov x16 L0x400082ac58;
mov x17 L0x400082ac60;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877979304 *)
mov x12 L0x400082ac38;
mov x13 L0x400082ac40;
(* ldp	x19, x20, [x2, #16]                         #! EA = L0x400082ac68; Value = 0x00000040008a772c; PC = 0x274877979308 *)
mov x19 L0x400082ac68;
mov x20 L0x400082ac70;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877979312 *)
mov x14 L0x400082ac48;
mov x15 L0x400082ac50;
(* ldp	x21, x22, [x2, #32]                         #! EA = L0x400082ac78; Value = 0x0000004000014e70; PC = 0x274877979316 *)
mov x21 L0x400082ac78;
mov x22 L0x400082ac80;
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
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac88; PC = 0x274877979240 *)
mov L0x400082ac88 x10;
mov L0x400082ac90 x11;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac98; PC = 0x274877979244 *)
mov L0x400082ac98 x12;
mov L0x400082aca0 x13;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082aca8; PC = 0x274877979248 *)
mov L0x400082aca8 x14;
mov L0x400082acb0 x15;
(* #ret                                            #! PC = 0x274877979268 *)
#ret                                            #! 0x274877979268 = 0x274877979268;
(* #ret                                            #! PC = 0x274877971192 *)
#ret                                            #! 0x274877971192 = 0x274877971192;

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
          ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
           (limbs 64 [b0, b1, b2, b3, b4, b5]))
          (limbs 64 [m0, m1, m2, m3, m4, m5]),
    (limbs 64 [c0, c1, c2, c3, c4, c5]) <u
    (limbs 64 [m0, m1, m2, m3, m4, m5])
  ]
}

