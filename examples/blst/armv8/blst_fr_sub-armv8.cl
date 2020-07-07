(* Pi 4: cv.exe -v -btor -isafety blst_fr_sub-armv8.cl
Parsing Cryptoline file:                [OK]            0.003041 seconds
Checking well-formedness:               [OK]            0.000670 seconds
Transforming to SSA form:               [OK]            0.000326 seconds
Rewriting assignments:                  [OK]            0.000856 seconds
Verifying program safety:               [OK]            0.003221 seconds
Verifying range specification:          [OK]            69.984084 seconds
Rewriting value-preserved casting:      [OK]            0.000030 seconds
Verifying algebraic specification:      [OK]            0.000484 seconds
Verification result:                    [OK]            69.994080 seconds
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

(* #bl	0x40000119e0 <sub_mod_256>                  #! PC = 0x274877970908 *)
#bl	0x40000119e0 <sub_mod_256>                  #! 0x274877970908 = 0x274877970908;
(* ldp	x8, x9, [x1]                                #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877979104 *)
mov x8 L0x400082abc8;
mov x9 L0x400082abd0;
(* ldp	x12, x13, [x2]                              #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877979108 *)
mov x12 L0x400082abe8;
mov x13 L0x400082abf0;
(* ldp	x10, x11, [x1, #16]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877979112 *)
mov x10 L0x400082abd8;
mov x11 L0x400082abe0;
(* subs	x8, x8, x12                                #! PC = 0x274877979116 *)
(*
assert true && carry=0@1;
assume carry=0 && true;
*)
subc carry x8 x8 x12;
(* ldp	x14, x15, [x2, #16]                         #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877979120 *)
mov x14 L0x400082abf8;
mov x15 L0x400082ac00;
(* sbcs	x9, x9, x13                                #! PC = 0x274877979124 *)
sbcs carry x9 x9 x13 carry;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877979128 *)
mov x4 L0x40000167b0;
mov x5 L0x40000167b8;
(* sbcs	x10, x10, x14                              #! PC = 0x274877979132 *)
sbcs carry x10 x10 x14 carry;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877979136 *)
mov x6 L0x40000167c0;
mov x7 L0x40000167c8;
(* sbcs	x11, x11, x15                              #! PC = 0x274877979140 *)
sbcs carry x11 x11 x15 carry;
(* ngc	x3, xzr                                     #! PC = 0x274877979144 *)
cmov x3 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x4, x4, x3                                  #! PC = 0x274877979148 *)
and x4@uint64 x4 x3;
(* and	x5, x5, x3                                  #! PC = 0x274877979152 *)
and x5@uint64 x5 x3;
(* adds	x8, x8, x4                                 #! PC = 0x274877979156 *)
(*
assert true && carry=0@1;
assume carry=0 && true;
*)
adds carry x8 x8 x4;
(* and	x6, x6, x3                                  #! PC = 0x274877979160 *)
and x6@uint64 x6 x3;
(* adcs	x9, x9, x5                                 #! PC = 0x274877979164 *)
adcs carry x9 x9 x5 carry;
(* and	x7, x7, x3                                  #! PC = 0x274877979168 *)
and x7@uint64 x7 x3;
(* adcs	x10, x10, x6                               #! PC = 0x274877979172 *)
adcs carry x10 x10 x6 carry;
(* stp	x8, x9, [x0]                                #! EA = L0x400082ac08; PC = 0x274877979176 *)
mov L0x400082ac08 x8;
mov L0x400082ac10 x9;
(* adc	x11, x11, x7                                #! PC = 0x274877979180 *)
adcs dontcare x11 x11 x7 carry;
(* stp	x10, x11, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877979184 *)
mov L0x400082ac18 x10;
mov L0x400082ac20 x11;
(* #ret                                            #! PC = 0x274877979188 *)
#ret                                            #! 0x274877979188 = 0x274877979188;
(* #ret                                            #! PC = 0x274877970916 *)
#ret                                            #! 0x274877970916 = 0x274877970916;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;
{
  true
&&
  and [
    eqmod (limbs 64 [c0, c1, c2, c3])
          (sub (limbs 64 [a0, a1, a2, a3]) (limbs 64 [b0, b1, b2, b3]))
          (limbs 64 [m0, m1, m2, m3]),
    limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

