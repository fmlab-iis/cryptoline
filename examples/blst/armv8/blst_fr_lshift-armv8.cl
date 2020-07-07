(* quine:  -v -isafety -jobs 10 -btor blst_fr_lshift-armv8.cl
Parsing Cryptoline file:                [OK]            0.000560 seconds
Checking well-formedness:               [OK]            0.000109 seconds
Transforming to SSA form:               [OK]            0.000046 seconds
Rewriting assignments:                  [OK]            0.000063 seconds
Verifying program safety:               [OK]            0.034140 seconds
Verifying range specification:          [OK]            0.809171 seconds
Rewriting value-preserved casting:      [OK]            0.000004 seconds
Verifying algebraic specification:      [OK]            0.000112 seconds
Verification result:                    [OK]            0.844487 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
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

mov x8 a0;
mov x9 a1;
mov x10 a2;
mov x11 a3;

mov x4 m0;
mov x5 m1;
mov x6 m2;
mov x7 m3;

(* adds	x8, x8, x8                                 #! PC = 0x274877978832 *)
adds carry x8 x8 x8;
(* sub	x2, x2, #0x1                                #! PC = 0x274877978836 *)
#sub	%%x2, %%x2, #0x1                                #! 0x274877978836 = 0x274877978836;
(* adcs	x9, x9, x9                                 #! PC = 0x274877978840 *)
adcs carry x9 x9 x9 carry;
(* adcs	x10, x10, x10                              #! PC = 0x274877978844 *)
adcs carry x10 x10 x10 carry;
(* adcs	x11, x11, x11                              #! PC = 0x274877978848 *)
adcs carry x11 x11 x11 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877978852 *)
adc x3 0@uint64 0@uint64 carry;
(* subs	x12, x8, x4                                #! PC = 0x274877978856 *)
subc carry x12 x8 x4;
(* sbcs	x13, x9, x5                                #! PC = 0x274877978860 *)
sbcs carry x13 x9 x5 carry;
(* sbcs	x14, x10, x6                               #! PC = 0x274877978864 *)
sbcs carry x14 x10 x6 carry;
(* sbcs	x15, x11, x7                               #! PC = 0x274877978868 *)
sbcs carry x15 x11 x7 carry;
(* sbcs	xzr, x3, xzr                               #! PC = 0x274877978872 *)
sbcs carry dontcare x3 0@uint64 carry;
(* csel	x8, x8, x12, cc  // cc = lo, ul, last      #! PC = 0x274877978876 *)
cmov x8 carry x12 x8;
(* csel	x9, x9, x13, cc  // cc = lo, ul, last      #! PC = 0x274877978880 *)
cmov x9 carry x13 x9;
(* csel	x10, x10, x14, cc  // cc = lo, ul, last    #! PC = 0x274877978884 *)
cmov x10 carry x14 x10;
(* csel	x11, x11, x15, cc  // cc = lo, ul, last    #! PC = 0x274877978888 *)
cmov x11 carry x15 x11;
(* #cbnz	x2, 0x40000118d0 <lshift_mod_256+16>      #! PC = 0x27487797889 *)
#cbnz	%%x2, 0x40000118d0 <lshift_mod_256+16>      #! 0x27487797889 = 0x27487797889;

mov r0 x8;
mov r1 x9;
mov r2 x10;
mov r3 x11;

{
  true
&&
  and [
    eqmod (limbs 64 [r0, r1, r2, r3])
          (mul (limbs 64 [a0, a1, a2, a3]) (2@256))
          (limbs 64 [m0, m1, m2, m3]),
    (limbs 64 [r0, r1, r2, r3]) <u (limbs 64 [m0, m1, m2, m3])
  ]
}

