(* Pi 4: -v -btor -isafety blst_fr_add-armv8.cl
Parsing Cryptoline file:                [OK]            0.001486 seconds
Checking well-formedness:               [OK]            0.000353 seconds
Transforming to SSA form:               [OK]            0.000154 seconds
Rewriting assignments:                  [OK]            0.000459 seconds
Verifying program safety:               [OK]            0.142794 seconds
Verifying range assertions:             [OK]            0.267689 seconds
Verifying range specification:          [OK]            12.788751 seconds
Rewriting value-preserved casting:      [OK]            0.000045 seconds
Verifying algebraic assertions:         [OK]            0.008945 seconds
Verifying algebraic specification:      [OK]            0.000336 seconds
Verification result:                    [OK]            13.212095 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3] <u
    limbs 64 [0xffffffff00000001@64, 0x53bda402fffe5bfe@64,
              0x3339d80809a1d805@64, 0x73eda753299d7d48@64],
    limbs 64 [b0, b1, b2, b3] <u
    limbs 64 [0xffffffff00000001@64, 0x53bda402fffe5bfe@64,
              0x3339d80809a1d805@64, 0x73eda753299d7d48@64]
  ]
}

(* modulo *)

mov m0 0xffffffff00000001@uint64;
mov m1 0x53bda402fffe5bfe@uint64;
mov m2 0x3339d80809a1d805@uint64;
mov m3 0x73eda753299d7d48@uint64;

(* inputs *)

mov L0x400082abc8 a0;
mov L0x400082abd0 a1;
mov L0x400082abd8 a2;
mov L0x400082abe0 a3;

mov L0x400082abe8 b0;
mov L0x400082abf0 b1;
mov L0x400082abf8 b2;
mov L0x400082ac00 b3;

mov L0x40000167b0 m0;
mov L0x40000167b8 m1;
mov L0x40000167c0 m2;
mov L0x40000167c8 m3;

(* #bl	0x40000117c0 <add_mod_256>                  #! PC = 0x274877970880 *)
#bl	0x40000117c0 <add_mod_256>                  #! 0x274877970880 = 0x274877970880;
(* ldp	x8, x9, [x1]                                #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877978560 *)
mov x8 L0x400082abc8;
mov x9 L0x400082abd0;
(* ldp	x12, x13, [x2]                              #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877978564 *)
mov x12 L0x400082abe8;
mov x13 L0x400082abf0;
(* ldp	x10, x11, [x1, #16]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877978568 *)
mov x10 L0x400082abd8;
mov x11 L0x400082abe0;
(* adds	x8, x8, x12                                #! PC = 0x274877978572 *)
(*
assert true && carry = 0@1;
assume carry=0 && true;adds carry x8 x8 x12;
 *)
adds carry x8 x8 x12;
 (* ldp	x14, x15, [x2, #16]                         #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877978576 *)
mov x14 L0x400082abf8;
mov x15 L0x400082ac00;
(* adcs	x9, x9, x13                                #! PC = 0x274877978580 *)
adcs carry x9 x9 x13 carry;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877978584 *)
mov x4 L0x40000167b0;
mov x5 L0x40000167b8;
(* adcs	x10, x10, x14                              #! PC = 0x274877978588 *)
adcs carry x10 x10 x14 carry;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877978592 *)
mov x6 L0x40000167c0;
mov x7 L0x40000167c8;
(* adcs	x11, x11, x15                              #! PC = 0x274877978596 *)
adcs carry x11 x11 x15 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877978600 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x16, x8, x4                                #! PC = 0x274877978604 *)
assert true && carry = 0@1;
assume carry=0 && true;
subc carry x16 x8 x4;
(* sbcs	x17, x9, x5                                #! PC = 0x274877978608 *)
sbcs carry x17 x9 x5 carry;
(* sbcs	x1, x10, x6                                #! PC = 0x274877978612 *)
sbcs carry x1 x10 x6 carry;
(* sbcs	x2, x11, x7                                #! PC = 0x274877978616 *)
sbcs carry x2 x11 x7 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877978620 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x8, x8, x16, cc  // cc = lo, ul, last      #! PC = 0x274877978624 *)
cmov x8 carry x16 x8;
(* csel	x9, x9, x17, cc  // cc = lo, ul, last      #! PC = 0x274877978628 *)
cmov x9 carry x17 x9;
(* csel	x10, x10, x1, cc  // cc = lo, ul, last     #! PC = 0x274877978632 *)
cmov x10 carry x1 x10;
(* stp	x8, x9, [x0]                                #! EA = L0x400082ac08; PC = 0x274877978636 *)
mov L0x400082ac08 x8;
mov L0x400082ac10 x9;
(* csel	x11, x11, x2, cc  // cc = lo, ul, last     #! PC = 0x274877978640 *)
cmov x11 carry x2 x11;
(* stp	x10, x11, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877978644 *)
mov L0x400082ac18 x10;
mov L0x400082ac20 x11;
(* #ret                                            #! PC = 0x274877978648 *)
#ret                                            #! 0x274877978648 = 0x274877978648;
(* #ret                                            #! PC = 0x274877970888 *)
#ret                                            #! 0x274877970888 = 0x274877970888;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;
{
  true
&&
  and [
    eqmod (limbs 64 [c0, c1, c2, c3])
          (add (limbs 64 [a0, a1, a2, a3]) (limbs 64 [b0, b1, b2, b3]))
          (limbs 64 [m0, m1, m2, m3]),
    limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

