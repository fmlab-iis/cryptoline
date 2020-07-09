(* quine:  -v -isafety -slicing -no_carry_constraint blst_fp2_cneg-armv8.cl
Parsing Cryptoline file:                [OK]            0.002707 seconds
Checking well-formedness:               [OK]            0.000391 seconds
Transforming to SSA form:               [OK]            0.000188 seconds
Rewriting assignments:                  [OK]            0.001561 seconds
Verifying program safety:               [OK]            0.121744 seconds
Verifying range specification:          [OK]            2.791028 seconds
Rewriting value-preserved casting:      [OK]            0.000012 seconds
Verifying algebraic specification:      [OK]            0.000120 seconds
Verification result:                    [OK]            2.918248 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 flag,
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

mov x2 flag;

mov L0x40000168e8 m0;
mov L0x40000168f0 m1;
mov L0x40000168f8 m2;
mov L0x4000016900 m3;
mov L0x4000016908 m4;
mov L0x4000016910 m5;

(* mov	x22, x2                                     #! PC = 0x274877972916 *)
mov x22 x2;
(* #bl	0x40000120c0 <cneg_mod_384>                 #! PC = 0x274877972932 *)
#bl	0x40000120c0 <cneg_mod_384>                 #! 0x274877972932 = 0x274877972932;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x400082aa30; PC = 0x274877980880 *)
#mov L0x400082aa30 x21;
mov L0x400082aa38 x22;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877980884 *)
mov x10 L0x400082ab88;
mov x11 L0x400082ab90;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877980888 *)
mov x4 L0x40000168e8;
mov x5 L0x40000168f0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877980892 *)
mov x12 L0x400082ab98;
mov x13 L0x400082aba0;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877980896 *)
mov x6 L0x40000168f8;
mov x7 L0x4000016900;
(* subs	x16, x4, x10                               #! PC = 0x274877980900 *)
subc carry x16 x4 x10;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877980904 *)
mov x14 L0x400082aba8;
mov x15 L0x400082abb0;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877980908 *)
mov x8 L0x4000016908;
mov x9 L0x4000016910;
(* orr	x3, x10, x11                                #! PC = 0x274877980912 *)
or x3@uint64 x10 x11;
(* sbcs	x17, x5, x11                               #! PC = 0x274877980916 *)
sbcs carry x17 x5 x11 carry;
(* orr	x3, x3, x12                                 #! PC = 0x274877980920 *)
or x3@uint64 x3 x12;
(* sbcs	x19, x6, x12                               #! PC = 0x274877980924 *)
sbcs carry x19 x6 x12 carry;
(* orr	x3, x3, x13                                 #! PC = 0x274877980928 *)
or x3@uint64 x3 x13;
(* sbcs	x20, x7, x13                               #! PC = 0x274877980932 *)
sbcs carry x20 x7 x13 carry;
(* orr	x3, x3, x14                                 #! PC = 0x274877980936 *)
or x3@uint64 x3 x14;
(* sbcs	x21, x8, x14                               #! PC = 0x274877980940 *)
sbcs carry x21 x8 x14 carry;
(* orr	x3, x3, x15                                 #! PC = 0x274877980944 *)
or x3@uint64 x3 x15;
(* sbc	x22, x9, x15                                #! PC = 0x274877980948 *)
sbc x22 x9 x15 carry;
(* cmp	x3, #0x0                                    #! PC = 0x274877980952 *)
subc neqz dontcare x3 1@uint64;
(* csetm	x3, ne  // ne = any                       #! PC = 0x274877980956 *)
cmov x3 neqz 0xffffffffffffffff@uint64 0@uint64;
(* ands	x2, x2, x3                                 #! PC = 0x274877980960 *)
and x2@uint64 x2 x3;
subb eqz dontcare x2 1@uint64;
(* csel	x10, x10, x16, eq  // eq = none            #! PC = 0x274877980964 *)
cmov x10 eqz x10 x16;
(* csel	x11, x11, x17, eq  // eq = none            #! PC = 0x274877980968 *)
cmov x11 eqz x11 x17;
(* csel	x12, x12, x19, eq  // eq = none            #! PC = 0x274877980972 *)
cmov x12 eqz x12 x19;
(* csel	x13, x13, x20, eq  // eq = none            #! PC = 0x274877980976 *)
cmov x13 eqz x13 x20;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac48; PC = 0x274877980980 *)
mov L0x400082ac48 x10;
mov L0x400082ac50 x11;
(* csel	x14, x14, x21, eq  // eq = none            #! PC = 0x274877980984 *)
cmov x14 eqz x14 x21;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac58; PC = 0x274877980988 *)
mov L0x400082ac58 x12;
mov L0x400082ac60 x13;
(* csel	x15, x15, x22, eq  // eq = none            #! PC = 0x274877980992 *)
cmov x15 eqz x15 x22;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082ac68; PC = 0x274877980996 *)
mov L0x400082ac68 x14;
mov L0x400082ac70 x15;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x400082aa30; Value = 0x000000400082ab88; PC = 0x274877981004 *)
#mov x21 L0x400082aa30;
mov x22 L0x400082aa38;
(* #ret                                            #! PC = 0x274877981016 *)
#ret                                            #! 0x274877981016 = 0x274877981016;
(* mov	x2, x22                                     #! PC = 0x274877972940 *)
mov x2 x22;
(* #bl	0x40000120c0 <cneg_mod_384>                 #! PC = 0x274877972952 *)
#bl	0x40000120c0 <cneg_mod_384>                 #! 0x274877972952 = 0x274877972952;
(* stp	x21, x22, [sp, #32]                         #! EA = L0x400082aa30; PC = 0x274877980880 *)
mov L0x400082aa30 x21;
mov L0x400082aa38 x22;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877980884 *)
mov x10 L0x400082abb8;
mov x11 L0x400082abc0;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877980888 *)
mov x4 L0x40000168e8;
mov x5 L0x40000168f0;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877980892 *)
mov x12 L0x400082abc8;
mov x13 L0x400082abd0;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877980896 *)
mov x6 L0x40000168f8;
mov x7 L0x4000016900;
(* subs	x16, x4, x10                               #! PC = 0x274877980900 *)
subc carry x16 x4 x10;
(* ldp	x14, x15, [x1, #32]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877980904 *)
mov x14 L0x400082abd8;
mov x15 L0x400082abe0;
(* ldp	x8, x9, [x3, #32]                           #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877980908 *)
mov x8 L0x4000016908;
mov x9 L0x4000016910;
(* orr	x3, x10, x11                                #! PC = 0x274877980912 *)
or x3@uint64 x10 x11;
(* sbcs	x17, x5, x11                               #! PC = 0x274877980916 *)
sbcs carry x17 x5 x11 carry;
(* orr	x3, x3, x12                                 #! PC = 0x274877980920 *)
or x3@uint64 x3 x12;
(* sbcs	x19, x6, x12                               #! PC = 0x274877980924 *)
sbcs carry x19 x6 x12 carry;
(* orr	x3, x3, x13                                 #! PC = 0x274877980928 *)
or x3@uint64 x3 x13;
(* sbcs	x20, x7, x13                               #! PC = 0x274877980932 *)
sbcs carry x20 x7 x13 carry;
(* orr	x3, x3, x14                                 #! PC = 0x274877980936 *)
or x3@uint64 x3 x14;
(* sbcs	x21, x8, x14                               #! PC = 0x274877980940 *)
sbcs carry x21 x8 x14 carry;
(* orr	x3, x3, x15                                 #! PC = 0x274877980944 *)
or x3@uint64 x3 x15;
(* sbc	x22, x9, x15                                #! PC = 0x274877980948 *)
sbc x22 x9 x15 carry;
(* cmp	x3, #0x0                                    #! PC = 0x274877980952 *)
subc neqz dontcare x3 1@uint64;
(* csetm	x3, ne  // ne = any                       #! PC = 0x274877980956 *)
cmov x3 neqz 0xffffffffffffffff@uint64 0@uint64;
(* ands	x2, x2, x3                                 #! PC = 0x274877980960 *)
and x2@uint64 x2 x3;
subb eqz dontcare x2 1@uint64;
(* csel	x10, x10, x16, eq  // eq = none            #! PC = 0x274877980964 *)
cmov x10 eqz x10 x16;
(* csel	x11, x11, x17, eq  // eq = none            #! PC = 0x274877980968 *)
cmov x11 eqz x11 x17;
(* csel	x12, x12, x19, eq  // eq = none            #! PC = 0x274877980972 *)
cmov x12 eqz x12 x19;
(* csel	x13, x13, x20, eq  // eq = none            #! PC = 0x274877980976 *)
cmov x13 eqz x13 x20;
(* stp	x10, x11, [x0]                              #! EA = L0x400082ac78; PC = 0x274877980980 *)
mov L0x400082ac78 x10;
mov L0x400082ac80 x11;
(* csel	x14, x14, x21, eq  // eq = none            #! PC = 0x274877980984 *)
cmov x14 eqz x14 x21;
(* stp	x12, x13, [x0, #16]                         #! EA = L0x400082ac88; PC = 0x274877980988 *)
mov L0x400082ac88 x12;
mov L0x400082ac90 x13;
(* csel	x15, x15, x22, eq  // eq = none            #! PC = 0x274877980992 *)
cmov x15 eqz x15 x22;
(* stp	x14, x15, [x0, #32]                         #! EA = L0x400082ac98; PC = 0x274877980996 *)
mov L0x400082ac98 x14;
mov L0x400082aca0 x15;
(* ldp	x21, x22, [x29, #32]                        #! EA = L0x400082aa30; Value = 0x000000400082ab88; PC = 0x274877981004 *)
mov x21 L0x400082aa30;
mov x22 L0x400082aa38;
(* #ret                                            #! PC = 0x274877981016 *)
#ret                                            #! 0x274877981016 = 0x274877981016;
(* ldp	x21, x22, [sp, #32]                         #! EA = L0x400082aa60; Value = 0x00000040000007c0; PC = 0x274877972960 *)
#mov x21 L0x400082aa60;
#mov x22 L0x400082aa68;
(* #ret                                            #! PC = 0x274877972968 *)
#ret                                            #! 0x274877972968 = 0x274877972968;

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
  or [
    and [flag = 0@64,
         eqmod (limbs 64 [e0, e1, e2, e3, e4, e5])
               (limbs 64 [a0, a1, a2, a3, a4, a5])
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod (limbs 64 [f0, f1, f2, f3, f4, f5])
               (limbs 64 [b0, b1, b2, b3, b4, b5])
               (limbs 64 [m0, m1, m2, m3, m4, m5])],
    and [flag > 0@64,
         eqmod ((limbs 64 [e0, e1, e2, e3, e4, e5]) +
                (limbs 64 [a0, a1, a2, a3, a4, a5]))
               0@384
               (limbs 64 [m0, m1, m2, m3, m4, m5]),
         eqmod ((limbs 64 [f0, f1, f2, f3, f4, f5]) +
                (limbs 64 [b0, b1, b2, b3, b4, b5]))
               0@384
               (limbs 64 [m0, m1, m2, m3, m4, m5])]
  ]      
}
