(* quine: -v -isafety -btor -jobs 10 blst_fr_mul-armv8.cl
Parsing Cryptoline file:                [OK]            0.003824 seconds
Checking well-formedness:               [OK]            0.002178 seconds
Transforming to SSA form:               [OK]            0.000315 seconds
Rewriting assignments:                  [OK]            0.001362 seconds
Verifying program safety:               [OK]            2.430428 seconds
Verifying range assertions:             [OK]            155.844892 seconds
Verifying range specification:          [OK]            0.044671 seconds
Rewriting value-preserved casting:      [OK]            0.000021 seconds
Verifying algebraic assertions:         [OK]            0.327979 seconds
Verifying algebraic specification:      [OK]            0.253875 seconds
Verification result:                    [OK]            158.910202 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 x4) =
{
  and [
    m0=0xffffffff00000001, m1=0x53bda402fffe5bfe,
    m2=0x3339d80809a1d805, m3=0x73eda753299d7d48,
    eqmod m0 1 2,
    eqmod (1 + m0 * x4) 0 (2**64)
  ]
&&
  and [
    m0=0xffffffff00000001@64, m1=0x53bda402fffe5bfe@64,
    m2=0x3339d80809a1d805@64, m3=0x73eda753299d7d48@64,
    eqmod m0 (1@64) (2@64),
    add 1@64 (mul m0 x4) = 0@64,
    limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3],
    limbs 64 [b0, b1, b2, b3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

(* modulo *)
(*
mov m0 0xffffffff00000001@uint64;
mov m1 0x53bda402fffe5bfe@uint64;
mov m2 0x3339d80809a1d805@uint64;
mov m3 0x73eda753299d7d48@uint64;
*)

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

(* #bl	0x4000012780 <mul_mont_sparse_256>          #! PC = 0x274877971024 *)
#bl	0x4000012780 <mul_mont_sparse_256>          #! 0x274877971024 = 0x274877971024;
(* ldp	x10, x11, [x1]                              #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877982612 *)
mov x10 L0x400082abc8;
mov x11 L0x400082abd0;
(* ldr	x9, [x2]                                    #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877982616 *)
mov x9 L0x400082abe8;
(* ldp	x12, x13, [x1, #16]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877982620 *)
mov x12 L0x400082abd8;
mov x13 L0x400082abe0;
(* mul	x19, x10, x9                                #! PC = 0x274877982624 *)
mull mulHx10x9 x19 x10 x9;
(* ldp	x5, x6, [x3]                                #! EA = L0x40000167b0; Value = 0xffffffff00000001; PC = 0x274877982628 *)
mov x5 L0x40000167b0;
mov x6 L0x40000167b8;
(* mul	x20, x11, x9                                #! PC = 0x274877982632 *)
mull mulHx11x9 x20 x11 x9;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x40000167c0; Value = 0x3339d80809a1d805; PC = 0x274877982636 *)
mov x7 L0x40000167c0;
mov x8 L0x40000167c8;
(* mul	x21, x12, x9                                #! PC = 0x274877982640 *)
mull mulHx12x9 x21 x12 x9;
(* mul	x22, x13, x9                                #! PC = 0x274877982644 *)
mull mulHx13x9 x22 x13 x9;
(* umulh	x14, x10, x9                              #! PC = 0x274877982648 *)
mov x14 mulHx10x9;
(* umulh	x15, x11, x9                              #! PC = 0x274877982652 *)
mov x15 mulHx11x9;
(* mul	x3, x4, x19                                 #! PC = 0x274877982656 *)
mull mulHx4x19 x3 x4 x19;
(* umulh	x16, x12, x9                              #! PC = 0x274877982660 *)
mov x16 mulHx12x9;
(* umulh	x17, x13, x9                              #! PC = 0x274877982664 *)
mov x17 mulHx13x9;
(* adds	x20, x20, x14                              #! PC = 0x274877982668 *)
adds carry x20 x20 x14;
(* adcs	x21, x21, x15                              #! PC = 0x274877982672 *)
adcs carry x21 x21 x15 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877982676 *)
mull mulHx6x3 x15 x6 x3;
(* adcs	x22, x22, x16                              #! PC = 0x274877982680 *)
adcs carry x22 x22 x16 carry;
(* mul	x16, x7, x3                                 #! PC = 0x274877982684 *)
mull mulHx7x3 x16 x7 x3;
(* adc	x23, xzr, x17                               #! PC = 0x274877982688 *)
adc x23 0@uint64 x17 carry;
(* mul	x17, x8, x3                                 #! PC = 0x274877982692 *)
mull mulHx8x3 x17 x8 x3;
(* ldr	x9, [x2, #8]                                #! EA = L0x400082abf0; Value = 0x0000000000000000; PC = 0x274877982696 *)
mov x9 L0x400082abf0;
(* cmp	x19, #0x1                                   #! PC = 0x274877982700 *)
subc carry dontcare x19 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877982704 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x15                              #! PC = 0x274877982708 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877982712 *)
mov x15 mulHx6x3;
(* adcs	x21, x21, x16                              #! PC = 0x274877982716 *)
adcs carry x21 x21 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877982720 *)
mov x16 mulHx7x3;
(* adcs	x22, x22, x17                              #! PC = 0x274877982724 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877982728 *)
mov x17 mulHx8x3;
(* adc	x23, x23, xzr                               #! PC = 0x274877982732 *)
adc x23 x23 0@uint64 carry;
(* adds	x19, x20, x14                              #! PC = 0x274877982736 *)
adds carry x19 x20 x14;
(* mul	x14, x10, x9                                #! PC = 0x274877982740 *)
mull mulHx10x9 x14 x10 x9;
(* adcs	x20, x21, x15                              #! PC = 0x274877982744 *)
adcs carry x20 x21 x15 carry;
(* mul	x15, x11, x9                                #! PC = 0x274877982748 *)
mull mulHx11x9 x15 x11 x9;
(* adcs	x21, x22, x16                              #! PC = 0x274877982752 *)
adcs carry x21 x22 x16 carry;
(* mul	x16, x12, x9                                #! PC = 0x274877982756 *)
mull mulHx12x9 x16 x12 x9;
(* adcs	x22, x23, x17                              #! PC = 0x274877982760 *)
adcs carry x22 x23 x17 carry;
(* mul	x17, x13, x9                                #! PC = 0x274877982764 *)
mull mulHx13x9 x17 x13 x9;
(* adc	x23, xzr, xzr                               #! PC = 0x274877982768 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x19, x19, x14                              #! PC = 0x274877982772 *)
adds carry x19 x19 x14;
(* umulh	x14, x10, x9                              #! PC = 0x274877982776 *)
mov x14 mulHx10x9;
(* adcs	x20, x20, x15                              #! PC = 0x274877982780 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x11, x9                              #! PC = 0x274877982784 *)
mov x15 mulHx11x9;
(* adcs	x21, x21, x16                              #! PC = 0x274877982788 *)
adcs carry x21 x21 x16 carry;
(* mul	x3, x4, x19                                 #! PC = 0x274877982792 *)
mull mulHx4x19 x3 x4 x19;
(* umulh	x16, x12, x9                              #! PC = 0x274877982796 *)
mov x16 mulHx12x9;
(* adcs	x22, x22, x17                              #! PC = 0x274877982800 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x13, x9                              #! PC = 0x274877982804 *)
mov x17 mulHx13x9;
(* adc	x23, x23, xzr                               #! PC = 0x274877982808 *)
adc x23 x23 0@uint64 carry;
(* adds	x20, x20, x14                              #! PC = 0x274877982812 *)
adds carry x20 x20 x14;
(* adcs	x21, x21, x15                              #! PC = 0x274877982816 *)
adcs carry x21 x21 x15 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877982820 *)
mull mulHx6x3 x15 x6 x3;
(* adcs	x22, x22, x16                              #! PC = 0x274877982824 *)
adcs carry x22 x22 x16 carry;
(* mul	x16, x7, x3                                 #! PC = 0x274877982828 *)
mull mulHx7x3 x16 x7 x3;
(* adc	x23, x23, x17                               #! PC = 0x274877982832 *)
adc x23 x23 x17 carry;
(* mul	x17, x8, x3                                 #! PC = 0x274877982836 *)
mull mulHx8x3 x17 x8 x3;
(* ldr	x9, [x2, #16]                               #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877982840 *)
mov x9 L0x400082abf8;
(* cmp	x19, #0x1                                   #! PC = 0x274877982844 *)
subc carry dontcare x19 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877982848 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x15                              #! PC = 0x274877982852 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877982856 *)
mov x15 mulHx6x3;
(* adcs	x21, x21, x16                              #! PC = 0x274877982860 *)
adcs carry x21 x21 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877982864 *)
mov x16 mulHx7x3;
(* adcs	x22, x22, x17                              #! PC = 0x274877982868 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877982872 *)
mov x17 mulHx8x3;
(* adc	x23, x23, xzr                               #! PC = 0x274877982876 *)
adc x23 x23 0@uint64 carry;
(* adds	x19, x20, x14                              #! PC = 0x274877982880 *)
adds carry x19 x20 x14;
(* mul	x14, x10, x9                                #! PC = 0x274877982884 *)
mull mulHx10x9 x14 x10 x9;
(* adcs	x20, x21, x15                              #! PC = 0x274877982888 *)
adcs carry x20 x21 x15 carry;
(* mul	x15, x11, x9                                #! PC = 0x274877982892 *)
mull mulHx11x9 x15 x11 x9;
(* adcs	x21, x22, x16                              #! PC = 0x274877982896 *)
adcs carry x21 x22 x16 carry;
(* mul	x16, x12, x9                                #! PC = 0x274877982900 *)
mull mulHx12x9 x16 x12 x9;
(* adcs	x22, x23, x17                              #! PC = 0x274877982904 *)
adcs carry x22 x23 x17 carry;
(* mul	x17, x13, x9                                #! PC = 0x274877982908 *)
mull mulHx13x9 x17 x13 x9;
(* adc	x23, xzr, xzr                               #! PC = 0x274877982912 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x19, x19, x14                              #! PC = 0x274877982916 *)
adds carry x19 x19 x14;
(* umulh	x14, x10, x9                              #! PC = 0x274877982920 *)
mov x14 mulHx10x9;
(* adcs	x20, x20, x15                              #! PC = 0x274877982924 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x11, x9                              #! PC = 0x274877982928 *)
mov x15 mulHx11x9;
(* adcs	x21, x21, x16                              #! PC = 0x274877982932 *)
adcs carry x21 x21 x16 carry;
(* mul	x3, x4, x19                                 #! PC = 0x274877982936 *)
mull mulHx4x19 x3 x4 x19;
(* umulh	x16, x12, x9                              #! PC = 0x274877982940 *)
mov x16 mulHx12x9;
(* adcs	x22, x22, x17                              #! PC = 0x274877982944 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x13, x9                              #! PC = 0x274877982948 *)
mov x17 mulHx13x9;
(* adc	x23, x23, xzr                               #! PC = 0x274877982952 *)
adc x23 x23 0@uint64 carry;
(* adds	x20, x20, x14                              #! PC = 0x274877982956 *)
adds carry x20 x20 x14;
(* adcs	x21, x21, x15                              #! PC = 0x274877982960 *)
adcs carry x21 x21 x15 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877982964 *)
mull mulHx6x3 x15 x6 x3;
(* adcs	x22, x22, x16                              #! PC = 0x274877982968 *)
adcs carry x22 x22 x16 carry;
(* mul	x16, x7, x3                                 #! PC = 0x274877982972 *)
mull mulHx7x3 x16 x7 x3;
(* adc	x23, x23, x17                               #! PC = 0x274877982976 *)
adc x23 x23 x17 carry;
(* mul	x17, x8, x3                                 #! PC = 0x274877982980 *)
mull mulHx8x3 x17 x8 x3;
(* ldr	x9, [x2, #24]                               #! EA = L0x400082ac00; Value = 0x0000000000000000; PC = 0x274877982984 *)
mov x9 L0x400082ac00;
(* cmp	x19, #0x1                                   #! PC = 0x274877982988 *)
subc carry dontcare x19 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877982992 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x15                              #! PC = 0x274877982996 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877983000 *)
mov x15 mulHx6x3;
(* adcs	x21, x21, x16                              #! PC = 0x274877983004 *)
adcs carry x21 x21 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877983008 *)
mov x16 mulHx7x3;
(* adcs	x22, x22, x17                              #! PC = 0x274877983012 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877983016 *)
mov x17 mulHx8x3;
(* adc	x23, x23, xzr                               #! PC = 0x274877983020 *)
adc x23 x23 0@uint64 carry;
(* adds	x19, x20, x14                              #! PC = 0x274877983024 *)
adds carry x19 x20 x14;
(* mul	x14, x10, x9                                #! PC = 0x274877983028 *)
mull mulHx10x9 x14 x10 x9;
(* adcs	x20, x21, x15                              #! PC = 0x274877983032 *)
adcs carry x20 x21 x15 carry;
(* mul	x15, x11, x9                                #! PC = 0x274877983036 *)
mull mulHx11x9 x15 x11 x9;
(* adcs	x21, x22, x16                              #! PC = 0x274877983040 *)
adcs carry x21 x22 x16 carry;
(* mul	x16, x12, x9                                #! PC = 0x274877983044 *)
mull mulHx12x9 x16 x12 x9;
(* adcs	x22, x23, x17                              #! PC = 0x274877983048 *)
adcs carry x22 x23 x17 carry;
(* mul	x17, x13, x9                                #! PC = 0x274877983052 *)
mull mulHx13x9 x17 x13 x9;
(* adc	x23, xzr, xzr                               #! PC = 0x274877983056 *)
adc x23 0@uint64 0@uint64 carry;
(* adds	x19, x19, x14                              #! PC = 0x274877983060 *)
adds carry x19 x19 x14;
(* umulh	x14, x10, x9                              #! PC = 0x274877983064 *)
mov x14 mulHx10x9;
(* adcs	x20, x20, x15                              #! PC = 0x274877983068 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x11, x9                              #! PC = 0x274877983072 *)
mov x15 mulHx11x9;
(* adcs	x21, x21, x16                              #! PC = 0x274877983076 *)
adcs carry x21 x21 x16 carry;
(* mul	x3, x4, x19                                 #! PC = 0x274877983080 *)
mull mulHx4x19 x3 x4 x19;
(* umulh	x16, x12, x9                              #! PC = 0x274877983084 *)
mov x16 mulHx12x9;
(* adcs	x22, x22, x17                              #! PC = 0x274877983088 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x13, x9                              #! PC = 0x274877983092 *)
mov x17 mulHx13x9;
(* adc	x23, x23, xzr                               #! PC = 0x274877983096 *)
adc x23 x23 0@uint64 carry;
(* adds	x20, x20, x14                              #! PC = 0x274877983100 *)
adds carry x20 x20 x14;
(* adcs	x21, x21, x15                              #! PC = 0x274877983104 *)
adcs carry x21 x21 x15 carry;
(* mul	x15, x6, x3                                 #! PC = 0x274877983108 *)
mull mulHx6x3 x15 x6 x3;
(* adcs	x22, x22, x16                              #! PC = 0x274877983112 *)
adcs carry x22 x22 x16 carry;
(* mul	x16, x7, x3                                 #! PC = 0x274877983116 *)
mull mulHx7x3 x16 x7 x3;
(* adc	x23, x23, x17                               #! PC = 0x274877983120 *)
adc x23 x23 x17 carry;
(* mul	x17, x8, x3                                 #! PC = 0x274877983124 *)
mull mulHx8x3 x17 x8 x3;
(* cmp	x19, #0x1                                   #! PC = 0x274877983128 *)
subc carry dontcare x19 1@uint64;
(* umulh	x14, x5, x3                               #! PC = 0x274877983132 *)
(*
mov x14 mulHx5x3;
*)
(* NOTE: Montgomery reduction *)
mull x14 mulLx5x3 x5 x3;
adds mycarry zeros mulLx5x3 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && true;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x15                              #! PC = 0x274877983136 *)
adcs carry x20 x20 x15 carry;
(* umulh	x15, x6, x3                               #! PC = 0x274877983140 *)
mov x15 mulHx6x3;
(* adcs	x21, x21, x16                              #! PC = 0x274877983144 *)
adcs carry x21 x21 x16 carry;
(* umulh	x16, x7, x3                               #! PC = 0x274877983148 *)
mov x16 mulHx7x3;
(* adcs	x22, x22, x17                              #! PC = 0x274877983152 *)
adcs carry x22 x22 x17 carry;
(* umulh	x17, x8, x3                               #! PC = 0x274877983156 *)
mov x17 mulHx8x3;
(* adc	x23, x23, xzr                               #! PC = 0x274877983160 *)
adc x23 x23 0@uint64 carry;
(* adds	x19, x20, x14                              #! PC = 0x274877983164 *)
adds carry x19 x20 x14;
(* adcs	x20, x21, x15                              #! PC = 0x274877983168 *)
adcs carry x20 x21 x15 carry;
(* adcs	x21, x22, x16                              #! PC = 0x274877983172 *)
adcs carry x21 x22 x16 carry;
(* adcs	x22, x23, x17                              #! PC = 0x274877983176 *)
adcs carry x22 x23 x17 carry;
(* adc	x23, xzr, xzr                               #! PC = 0x274877983180 *)
adc x23 0@uint64 0@uint64 carry;

(* NOTE: end of multiplication *)

assert eqmod (limbs 64 [0, 0, 0, 0, x19, x20, x21, x22, x23])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [m0, m1, m2, m3]) && true;
(*
assume true &&
       eqmod (limbs 64 [0@64, 0@64, 0@64, 0@64, x19, x20, x21, x22, x23])
             (mul (limbs 64 [a0, a1, a2, a3, 0@64, 0@64, 0@64, 0@64, 0@64])
                  (limbs 64 [b0, b1, b2, b3, 0@64, 0@64, 0@64, 0@64, 0@64]))
             (limbs 64 [m0, m1, m2, m3, 0@64, 0@64, 0@64, 0@64, 0@64]);
*)
mov r0 x19;
mov r1 x20;
mov r2 x21;
mov r3 x22;
mov r4 x23;

(* subs	x14, x19, x5                               #! PC = 0x274877983184 *)
subc carry x14 x19 x5;
(* sbcs	x15, x20, x6                               #! PC = 0x274877983188 *)
sbcs carry x15 x20 x6 carry;
(* sbcs	x16, x21, x7                               #! PC = 0x274877983192 *)
sbcs carry x16 x21 x7 carry;
(* sbcs	x17, x22, x8                               #! PC = 0x274877983196 *)
sbcs carry x17 x22 x8 carry;
(* sbcs	xzr, x23, xzr                              #! PC = 0x274877983200 *)
sbcs carry dontcare x23 0@uint64 carry;
(* csel	x19, x19, x14, cc  // cc = lo, ul, last    #! PC = 0x274877983204 *)
cmov x19 carry x14 x19;
(* csel	x20, x20, x15, cc  // cc = lo, ul, last    #! PC = 0x274877983208 *)
cmov x20 carry x15 x20;
(* csel	x21, x21, x16, cc  // cc = lo, ul, last    #! PC = 0x274877983212 *)
cmov x21 carry x16 x21;
(* csel	x22, x22, x17, cc  // cc = lo, ul, last    #! PC = 0x274877983216 *)
cmov x22 carry x17 x22;
(* stp	x19, x20, [x0]                              #! EA = L0x400082ac08; PC = 0x274877983220 *)

assert true &&
       eqmod (limbs 64 [r0, r1, r2, r3, r4])
             (limbs 64 [x19, x20, x21, x22, 0@64])
             (limbs 64 [m0, m1, m2, m3, 0@64]);
assume eqmod (limbs 64 [r0, r1, r2, r3, r4])
             (limbs 64 [x19, x20, x21, x22, 0])
             (limbs 64 [m0, m1, m2, m3, 0]) && true;

mov L0x400082ac08 x19;
mov L0x400082ac10 x20;
(* stp	x21, x22, [x0, #16]                         #! EA = L0x400082ac18; PC = 0x274877983224 *)
mov L0x400082ac18 x21;
mov L0x400082ac20 x22;
(* #ret                                            #! PC = 0x274877983244 *)
#ret                                            #! 0x274877983244 = 0x274877983244;
(* #ret                                            #! PC = 0x274877971032 *)
#ret                                            #! 0x274877971032 = 0x274877971032;

mov c0 L0x400082ac08;
mov c1 L0x400082ac10;
mov c2 L0x400082ac18;
mov c3 L0x400082ac20;

{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2, b3]))
        (limbs 64 [m0, m1, m2, m3])
&&
  true
}

