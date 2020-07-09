(* quine:-v -isafety -slicing -btor blst_fr_cneg-armv8.cl
Parsing Cryptoline file:                [OK]            0.001200 seconds
Checking well-formedness:               [OK]            0.000144 seconds
Transforming to SSA form:               [OK]            0.000075 seconds
Rewriting assignments:                  [OK]            0.000200 seconds
Verifying program safety:               [OK]            0.000702 seconds
Verifying range specification:          [OK]            4.058781 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000096 seconds
Verification result:                    [OK]            4.061543 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 flag,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
&&
  and [
    m0 = 0xffffffff00000001@64, m1 = 0x53bda402fffe5bfe@64,
    m2 = 0x3339d80809a1d805@64, m3 = 0x73eda753299d7d48@64,
    limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

(* inputs *)

mov L0x400082abc8 a0;
mov L0x400082abd0 a1;
mov L0x400082abd8 a2;
mov L0x400082abe0 a3;

mov x2 flag;

mov L0x40000167b0 m0;
mov L0x40000167b8 m1;
mov L0x40000167c0 m2;
mov L0x40000167c8 m3;

(* #bl	0x4000011980 <cneg_mod_256>                 #! PC = 0x274877971084 *)
#bl	0x4000011980 <cneg_mod_256>                 #! 0x274877971084 = 0x274877971084;
(* ldp	x8, x9, [x1]                                #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877979008 *)
mov x8 L0x400082abc8;
mov x9 L0x400082abd0;
(* ldp	x4, x5, [x3]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877979012 *)
mov x4 L0x40000167b0;
mov x5 L0x40000167b8;
(* ldp	x10, x11, [x1, #16]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877979016 *)
mov x10 L0x400082abd8;
mov x11 L0x400082abe0;
(* subs	x12, x4, x8                                #! PC = 0x274877979020 *)
subc carry x12 x4 x8;
(* ldp	x6, x7, [x3, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877979024 *)
mov x6 L0x40000167c0;
mov x7 L0x40000167c8;
(* orr	x4, x8, x9                                  #! PC = 0x274877979028 *)
or x4@uint64 x8 x9;
(* sbcs	x13, x5, x9                                #! PC = 0x274877979032 *)
sbcs carry x13 x5 x9 carry;
(* orr	x5, x10, x11                                #! PC = 0x274877979036 *)
or x5@uint64 x10 x11;
(* sbcs	x14, x6, x10                               #! PC = 0x274877979040 *)
sbcs carry x14 x6 x10 carry;
(* orr	x3, x4, x5                                  #! PC = 0x274877979044 *)
or x3@uint64 x4 x5;
(* sbc	x15, x7, x11                                #! PC = 0x274877979048 *)
sbcs dontcare x15 x7 x11 carry;
(* cmp	x3, #0x0                                    #! PC = 0x274877979052 *)
subc neqz dontcare x3 1@uint64;
(* csetm	x3, ne  // ne = any                       #! PC = 0x274877979056 *)
cmov x3 neqz 0xffffffffffffffff@uint64 0@uint64;
(* ands	x2, x2, x3                                 #! PC = 0x274877979060 *)
and x2@uint64 x2 x3;
subb eqz dontcare x2 1@uint64;
(* csel	x8, x8, x12, eq  // eq = none              #! PC = 0x274877979064 *)
cmov x8 eqz x8 x12;
(* csel	x9, x9, x13, eq  // eq = none              #! PC = 0x274877979068 *)
cmov x9 eqz x9 x13;
(* csel	x10, x10, x14, eq  // eq = none            #! PC = 0x274877979072 *)
cmov x10 eqz x10 x14;
(* stp	x8, x9, [x0]                                #! EA = L0x400082ac08; PC = 0x274877979076 *)
mov L0x400082ac08 x8;
mov L0x400082ac10 x9;
(* csel	x11, x11, x15, eq  // eq = none            #! PC = 0x274877979080 *)
cmov x11 eqz x11 x15;
(* stp	x10, x11, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877979084 *)
mov L0x400082ac18 x10;
mov L0x400082ac20 x11;
(* #ret                                            #! PC = 0x274877979088 *)
#ret                                            #! 0x274877979088 = 0x274877979088;
(* #ret                                            #! PC = 0x274877971092 *)
#ret                                            #! 0x274877971092 = 0x274877971092;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;

{
  true
&&
  or [
    and [flag = 0@64,
         eqmod (limbs 64 [c0, c1, c2, c3])
               (limbs 64 [a0, a1, a2, a3])
               (limbs 64 [m0, m1, m2, m3])],
    and [flag > 0@64,
         eqmod ((limbs 64 [c0, c1, c2, c3]) + (limbs 64 [a0, a1, a2, a3]))
               0@256
               (limbs 64 [m0, m1, m2, m3])]
  ]      
}

