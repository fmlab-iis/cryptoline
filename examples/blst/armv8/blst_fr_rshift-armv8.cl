(* quine: -v -isafety -jobs 10 -btor blst_fr_rshift-armv8.cl
Parsing Cryptoline file:                [OK]            0.000940 seconds
Checking well-formedness:               [OK]            0.000265 seconds
Transforming to SSA form:               [OK]            0.000120 seconds
Rewriting assignments:                  [OK]            0.000141 seconds
Verifying program safety:               [OK]            0.253133 seconds
Verifying range specification:          [OK]            0.501793 seconds
Rewriting value-preserved casting:      [OK]            0.000007 seconds
Verifying algebraic specification:      [OK]            0.000157 seconds
Verification result:                    [OK]            0.756980 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
&&
  and [
    m0 = 0xffffffff00000001@64, m1 = 0x53bda402fffe5bfe@64,
    m2 = 0x3339d80809a1d805@64, m3 = 0x73eda753299d7d48@64,
    (limbs 64 [a0, a1, a2, a3]) <u (limbs 64 [m0, m1, m2, m3])
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

(* adds	x12, x8, x4                                #! PC = 0x274877978928 *)
adds carry x12 x8 x4;
(* #sub	x2, x2, #0x1                                #! PC = 0x274877978932 *)
#sub	%%x2, %%x2, #0x1                                #! 0x274877978932 = 0x274877978932;
(* adcs	x13, x9, x5                                #! PC = 0x274877978936 *)
adcs carry x13 x9 x5 carry;
(* adcs	x14, x10, x6                               #! PC = 0x274877978940 *)
adcs carry x14 x10 x6 carry;
(* adcs	x15, x11, x7                               #! PC = 0x274877978944 *)
adcs carry x15 x11 x7 carry;
(* adc	x3, xzr, xzr                                #! PC = 0x274877978948 *)
adc x3 0@uint64 0@uint64 carry;
(* tst	x8, #0x1                                    #! PC = 0x274877978952 *)
and odd@uint64 x8 1@uint64;
cast odd@uint1 odd;
(* csel	x12, x12, x8, ne  // ne = any              #! PC = 0x274877978956 *)
cmov x12 odd x12 x8;
(* csel	x13, x13, x9, ne  // ne = any              #! PC = 0x274877978960 *)
cmov x13 odd x13 x9;
(* csel	x14, x14, x10, ne  // ne = any             #! PC = 0x274877978964 *)
cmov x14 odd x14 x10;
(* csel	x15, x15, x11, ne  // ne = any             #! PC = 0x274877978968 *)
cmov x15 odd x15 x11;
(* csel	x3, x3, xzr, ne  // ne = any               #! PC = 0x274877978972 *)
cmov x3 odd x3 0@uint64;
(* extr	x8, x13, x12, #1                           #! PC = 0x274877978976 *)
split x12h dontcare x12 1;
split dontcare x13l x13 1;
shl x13l x13l 63;
add x8 x13l x12h;
(* extr	x9, x14, x13, #1                           #! PC = 0x274877978980 *)
split x13h dontcare x13 1;
split dontcare x14l x14 1;
shl x14l x14l 63;
add x9 x14l x13h;
(* extr	x10, x15, x14, #1                          #! PC = 0x274877978984 *)
split x14h dontcare x14 1;
split dontcare x15l x15 1;
shl x15l x15l 63;
add x10 x15l x14h;
(* extr	x11, x3, x15, #1                           #! PC = 0x274877978988 *)
split x15h dontcare x15 1;
split dontcare x3l x3 1;
shl x3l x3l 63;
add x11 x3l x15h;

(* #cbnz	x2, 0x4000011930 <rshift_mod_256+16>      #! PC = 0x27487797899 *)
#cbnz	%%x2, 0x4000011930 <rshift_mod_256+16>      #! 0x27487797899 = 0x27487797899;

mov r0 x8;
mov r1 x9;
mov r2 x10;
mov r3 x11;

{
  true
&&
  and [
    eqmod ((limbs 64 [r0, r1, r2, r3]) * 2@256)
          (limbs 64 [a0, a1, a2, a3])
          (limbs 64 [m0, m1, m2, m3]),
    (limbs 64 [r0, r1, r2, r3]) <u (limbs 64 [m0, m1, m2, m3])
  ]
}

