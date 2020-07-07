(* quine: -v -isafety -jobs 10 -btor -qfbv_args '-SE cms' blst_fp_mul-armv8.cl
Parsing Cryptoline file:                [OK]            0.006370 seconds
Checking well-formedness:               [OK]            0.001410 seconds
Transforming to SSA form:               [OK]            0.000410 seconds
Rewriting assignments:                  [OK]            0.002468 seconds
Verifying program safety:               [OK]            7.217119 seconds
Verifying range assertions:             [OK]            6.190447 seconds
Verifying range specification:          [OK]            0.054682 seconds
Rewriting value-preserved casting:      [OK]            0.000033 seconds
Verifying algebraic assertions:         [OK]            7.867026 seconds
Verifying algebraic specification:      [OK]            11.968299 seconds
Verification result:                    [OK]            33.308976 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5,
           uint64 n) =
{
  and [
    m0 = 0xb9feffffffffaaab, m1 = 0x1eabfffeb153ffff,
    m2 = 0x6730d2a0f6b0f624, m3 = 0x64774b84f38512bf,
    m4 = 0x4b1ba7b6434bacd7, m5 = 0x1a0111ea397fe69a,
    eqmod m0 1 2,
    eqmod (1 + m0 * n) 0 (2**64)
  ]
&&
  and [
    m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
    m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
    m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    add 1@64 (mul m0 n) = 0@64,
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
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

mov L0x400082ab70 n;

(* mov	x4, #0xfffd                	// #65533       #! PC = 0x274877971316 *)
(* movk	x4, #0xfffc, lsl #16                       #! PC = 0x274877971320 *)
(* movk	x4, #0xfffc, lsl #32                       #! PC = 0x274877971324 *)
(* movk	x4, #0x89f3, lsl #48                       #! PC = 0x274877971328 *)
(* NOTE: x4 is n *)
mov x4 n;

(* #bl	0x40000132c0 <mul_mont_384>                 #! PC = 0x274877971340 *)
#bl	0x40000132c0 <mul_mont_384>                 #! 0x274877971340 = 0x274877971340;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877985508 *)
mov x11 L0x400082ac28;
mov x12 L0x400082ac30;
(* ldr	x17, [x2]                                   #! EA = L0x400082ac58; Value = 0x0000000000000000; PC = 0x274877985512 *)
mov x17 L0x400082ac58;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877985516 *)
mov x13 L0x400082ac38;
mov x14 L0x400082ac40;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877985520 *)
mov x15 L0x400082ac48;
mov x16 L0x400082ac50;
(* ldp	x5, x6, [x3]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877985524 *)
mov x5 L0x4000016868;
mov x6 L0x4000016870;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877985528 *)
mov x7 L0x4000016878;
mov x8 L0x4000016880;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877985532 *)
mov x9 L0x4000016888;
mov x10 L0x4000016890;
(* #bl	0x4000013340 <__mul_mont_384>               #! PC = 0x274877985536 *)
#bl	0x4000013340 <__mul_mont_384>               #! 0x274877985536 = 0x274877985536;
(* mul	x19, x11, x17                               #! PC = 0x274877985600 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877985604 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877985608 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877985612 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877985616 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877985620 *)
mull mulHx16x17 x24 x16 x17;
(* mul	x4, x4, x19                                 #! PC = 0x274877985624 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x26, x11, x17                             #! PC = 0x274877985628 *)
mov x26 mulHx11x17;
(* umulh	x27, x12, x17                             #! PC = 0x274877985632 *)
mov x27 mulHx12x17;
(* umulh	x28, x13, x17                             #! PC = 0x274877985636 *)
mov x28 mulHx13x17;
(* umulh	x0, x14, x17                              #! PC = 0x274877985640 *)
mov x0 mulHx14x17;
(* umulh	x1, x15, x17                              #! PC = 0x274877985644 *)
mov x1 mulHx15x17;
(* umulh	x3, x16, x17                              #! PC = 0x274877985648 *)
mov x3 mulHx16x17;
(* adds	x20, x20, x26                              #! PC = 0x274877985652 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877985656 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877985660 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877985664 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877985668 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877985672 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877985676 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877985680 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877985684 *)
mull mulHx9x4 x1 x9 x4;
(* adc	x25, xzr, x3                                #! PC = 0x274877985688 *)
adc x25 0@uint64 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877985692 *)
mull mulHx10x4 x3 x10 x4;
(* NOTE: mov $bi, xzr *)
(* mov	x17, xzr                                    #! PC = 0x274877985696 *)
mov x17 0@uint64;
(* cmp	x19, #0x1                                   #! PC = 0x274877985700 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877985704 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877985708 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877985712 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877985716 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877985720 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877985724 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877985728 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877985732 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877985736 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877985740 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877985744 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877985748 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x4, x17, xzr                                #! PC = 0x274877985752 *)
adc x4 x17 0@uint64 carry;
(* NOTE: ldr $bi, [$b_ptr, 8*$i] *)
(* ldr	x17, [x2, #8]                               #! EA = L0x400082ac60; Value = 0x000000400082ac80; PC = 0x274877985756 *)
mov x17 L0x400082ac60;
(* adds	x19, x20, x26                              #! PC = 0x274877985760 *)
adds carry x19 x20 x26;
(* mul	x26, x11, x17                               #! PC = 0x274877985764 *)
mull mulHx11x17 x26 x11 x17;
(* adcs	x20, x21, x27                              #! PC = 0x274877985768 *)
adcs carry x20 x21 x27 carry;
(* mul	x27, x12, x17                               #! PC = 0x274877985772 *)
mull mulHx12x17 x27 x12 x17;
(* adcs	x21, x22, x28                              #! PC = 0x274877985776 *)
adcs carry x21 x22 x28 carry;
(* mul	x28, x13, x17                               #! PC = 0x274877985780 *)
mull mulHx13x17 x28 x13 x17;
(* adcs	x22, x23, x0                               #! PC = 0x274877985784 *)
adcs carry x22 x23 x0 carry;
(* mul	x0, x14, x17                                #! PC = 0x274877985788 *)
mull mulHx14x17 x0 x14 x17;
(* adcs	x23, x24, x1                               #! PC = 0x274877985792 *)
adcs carry x23 x24 x1 carry;
(* mul	x1, x15, x17                                #! PC = 0x274877985796 *)
mull mulHx15x17 x1 x15 x17;
(* adcs	x24, x25, x3                               #! PC = 0x274877985800 *)
adcs carry x24 x25 x3 carry;
(* mul	x3, x16, x17                                #! PC = 0x274877985804 *)
mull mulHx16x17 x3 x16 x17;
(* adc	x25, x4, xzr                                #! PC = 0x274877985808 *)
adc x25 x4 0@uint64 carry;

assert eqmod (limbs 64 [0, x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: ldr $n0, [x29, #96] *)
(* ldr	x4, [x29, #96]                              #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877985812 *)
mov x4 L0x400082ab70;
(* adds	x19, x19, x26                              #! PC = 0x274877985816 *)
adds carry x19 x19 x26;
(* umulh	x26, x11, x17                             #! PC = 0x274877985820 *)
mov x26 mulHx11x17;
(* adcs	x20, x20, x27                              #! PC = 0x274877985824 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x12, x17                             #! PC = 0x274877985828 *)
mov x27 mulHx12x17;
(* adcs	x21, x21, x28                              #! PC = 0x274877985832 *)
adcs carry x21 x21 x28 carry;
(* mul	x4, x4, x19                                 #! PC = 0x274877985836 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x28, x13, x17                             #! PC = 0x274877985840 *)
mov x28 mulHx13x17;
(* adcs	x22, x22, x0                               #! PC = 0x274877985844 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x14, x17                              #! PC = 0x274877985848 *)
mov x0 mulHx14x17;
(* adcs	x23, x23, x1                               #! PC = 0x274877985852 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x15, x17                              #! PC = 0x274877985856 *)
mov x1 mulHx15x17;
(* adcs	x24, x24, x3                               #! PC = 0x274877985860 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x16, x17                              #! PC = 0x274877985864 *)
mov x3 mulHx16x17;
(* adcs	x25, x25, xzr                              #! PC = 0x274877985868 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877985872 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x20, x20, x26                              #! PC = 0x274877985876 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877985880 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877985884 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877985888 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877985892 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877985896 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877985900 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877985904 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877985908 *)
mull mulHx9x4 x1 x9 x4;
(* adcs	x25, x25, x3                               #! PC = 0x274877985912 *)
adcs carry x25 x25 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877985916 *)
mull mulHx10x4 x3 x10 x4;
(* adc	x17, x17, xzr                               #! PC = 0x274877985920 *)
adc x17 x17 0@uint64 carry;
(* cmp	x19, #0x1                                   #! PC = 0x274877985924 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877985928 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877985932 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877985936 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877985940 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877985944 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877985948 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877985952 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877985956 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877985960 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877985964 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877985968 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877985972 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x4, x17, xzr                                #! PC = 0x274877985976 *)
adc x4 x17 0@uint64 carry;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082ac68; Value = 0x00000040008a772c; PC = 0x274877985980 *)
mov x17 L0x400082ac68;
(* adds	x19, x20, x26                              #! PC = 0x274877985984 *)
adds carry x19 x20 x26;
(* mul	x26, x11, x17                               #! PC = 0x274877985988 *)
mull mulHx11x17 x26 x11 x17;
(* adcs	x20, x21, x27                              #! PC = 0x274877985992 *)
adcs carry x20 x21 x27 carry;
(* mul	x27, x12, x17                               #! PC = 0x274877985996 *)
mull mulHx12x17 x27 x12 x17;
(* adcs	x21, x22, x28                              #! PC = 0x274877986000 *)
adcs carry x21 x22 x28 carry;
(* mul	x28, x13, x17                               #! PC = 0x274877986004 *)
mull mulHx13x17 x28 x13 x17;
(* adcs	x22, x23, x0                               #! PC = 0x274877986008 *)
adcs carry x22 x23 x0 carry;
(* mul	x0, x14, x17                                #! PC = 0x274877986012 *)
mull mulHx14x17 x0 x14 x17;
(* adcs	x23, x24, x1                               #! PC = 0x274877986016 *)
adcs carry x23 x24 x1 carry;
(* mul	x1, x15, x17                                #! PC = 0x274877986020 *)
mull mulHx15x17 x1 x15 x17;
(* adcs	x24, x25, x3                               #! PC = 0x274877986024 *)
adcs carry x24 x25 x3 carry;
(* mul	x3, x16, x17                                #! PC = 0x274877986028 *)
mull mulHx16x17 x3 x16 x17;
(* adc	x25, x4, xzr                                #! PC = 0x274877986032 *)
adc x25 x4 0@uint64 carry;

assert eqmod (limbs 64 [0, 0, x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0, b1]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* ldr	x4, [x29, #96]                              #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877986036 *)
mov x4 L0x400082ab70;
(* adds	x19, x19, x26                              #! PC = 0x274877986040 *)
adds carry x19 x19 x26;
(* umulh	x26, x11, x17                             #! PC = 0x274877986044 *)
mov x26 mulHx11x17;
(* adcs	x20, x20, x27                              #! PC = 0x274877986048 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x12, x17                             #! PC = 0x274877986052 *)
mov x27 mulHx12x17;
(* adcs	x21, x21, x28                              #! PC = 0x274877986056 *)
adcs carry x21 x21 x28 carry;
(* mul	x4, x4, x19                                 #! PC = 0x274877986060 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x28, x13, x17                             #! PC = 0x274877986064 *)
mov x28 mulHx13x17;
(* adcs	x22, x22, x0                               #! PC = 0x274877986068 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x14, x17                              #! PC = 0x274877986072 *)
mov x0 mulHx14x17;
(* adcs	x23, x23, x1                               #! PC = 0x274877986076 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x15, x17                              #! PC = 0x274877986080 *)
mov x1 mulHx15x17;
(* adcs	x24, x24, x3                               #! PC = 0x274877986084 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x16, x17                              #! PC = 0x274877986088 *)
mov x3 mulHx16x17;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986092 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877986096 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x20, x20, x26                              #! PC = 0x274877986100 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877986104 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877986108 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877986112 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877986116 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877986120 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877986124 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877986128 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877986132 *)
mull mulHx9x4 x1 x9 x4;
(* adcs	x25, x25, x3                               #! PC = 0x274877986136 *)
adcs carry x25 x25 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877986140 *)
mull mulHx10x4 x3 x10 x4;
(* adc	x17, x17, xzr                               #! PC = 0x274877986144 *)
adc x17 x17 0@uint64 carry;
(* cmp	x19, #0x1                                   #! PC = 0x274877986148 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877986152 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877986156 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877986160 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877986164 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877986168 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877986172 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877986176 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877986180 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877986184 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877986188 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877986192 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986196 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x4, x17, xzr                                #! PC = 0x274877986200 *)
adc x4 x17 0@uint64 carry;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082ac70; Value = 0x000000400082ac80; PC = 0x274877986204 *)
mov x17 L0x400082ac70;
(* adds	x19, x20, x26                              #! PC = 0x274877986208 *)
adds carry x19 x20 x26;
(* mul	x26, x11, x17                               #! PC = 0x274877986212 *)
mull mulHx11x17 x26 x11 x17;
(* adcs	x20, x21, x27                              #! PC = 0x274877986216 *)
adcs carry x20 x21 x27 carry;
(* mul	x27, x12, x17                               #! PC = 0x274877986220 *)
mull mulHx12x17 x27 x12 x17;
(* adcs	x21, x22, x28                              #! PC = 0x274877986224 *)
adcs carry x21 x22 x28 carry;
(* mul	x28, x13, x17                               #! PC = 0x274877986228 *)
mull mulHx13x17 x28 x13 x17;
(* adcs	x22, x23, x0                               #! PC = 0x274877986232 *)
adcs carry x22 x23 x0 carry;
(* mul	x0, x14, x17                                #! PC = 0x274877986236 *)
mull mulHx14x17 x0 x14 x17;
(* adcs	x23, x24, x1                               #! PC = 0x274877986240 *)
adcs carry x23 x24 x1 carry;
(* mul	x1, x15, x17                                #! PC = 0x274877986244 *)
mull mulHx15x17 x1 x15 x17;
(* adcs	x24, x25, x3                               #! PC = 0x274877986248 *)
adcs carry x24 x25 x3 carry;
(* mul	x3, x16, x17                                #! PC = 0x274877986252 *)
mull mulHx16x17 x3 x16 x17;
(* adc	x25, x4, xzr                                #! PC = 0x274877986256 *)
adc x25 x4 0@uint64 carry;

assert eqmod (limbs 64 [0, 0, 0, x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0, b1, b2]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* ldr	x4, [x29, #96]                              #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877986260 *)
mov x4 L0x400082ab70;
(* adds	x19, x19, x26                              #! PC = 0x274877986264 *)
adds carry x19 x19 x26;
(* umulh	x26, x11, x17                             #! PC = 0x274877986268 *)
mov x26 mulHx11x17;
(* adcs	x20, x20, x27                              #! PC = 0x274877986272 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x12, x17                             #! PC = 0x274877986276 *)
mov x27 mulHx12x17;
(* adcs	x21, x21, x28                              #! PC = 0x274877986280 *)
adcs carry x21 x21 x28 carry;
(* mul	x4, x4, x19                                 #! PC = 0x274877986284 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x28, x13, x17                             #! PC = 0x274877986288 *)
mov x28 mulHx13x17;
(* adcs	x22, x22, x0                               #! PC = 0x274877986292 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x14, x17                              #! PC = 0x274877986296 *)
mov x0 mulHx14x17;
(* adcs	x23, x23, x1                               #! PC = 0x274877986300 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x15, x17                              #! PC = 0x274877986304 *)
mov x1 mulHx15x17;
(* adcs	x24, x24, x3                               #! PC = 0x274877986308 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x16, x17                              #! PC = 0x274877986312 *)
mov x3 mulHx16x17;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986316 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877986320 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x20, x20, x26                              #! PC = 0x274877986324 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877986328 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877986332 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877986336 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877986340 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877986344 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877986348 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877986352 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877986356 *)
mull mulHx9x4 x1 x9 x4;
(* adcs	x25, x25, x3                               #! PC = 0x274877986360 *)
adcs carry x25 x25 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877986364 *)
mull mulHx10x4 x3 x10 x4;
(* adc	x17, x17, xzr                               #! PC = 0x274877986368 *)
adc x17 x17 0@uint64 carry;
(* cmp	x19, #0x1                                   #! PC = 0x274877986372 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877986376 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877986380 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877986384 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877986388 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877986392 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877986396 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877986400 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877986404 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877986408 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877986412 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877986416 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986420 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x4, x17, xzr                                #! PC = 0x274877986424 *)
adc x4 x17 0@uint64 carry;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082ac78; Value = 0x0000004000014e70; PC = 0x274877986428 *)
mov x17 L0x400082ac78;
(* adds	x19, x20, x26                              #! PC = 0x274877986432 *)
adds carry x19 x20 x26;
(* mul	x26, x11, x17                               #! PC = 0x274877986436 *)
mull mulHx11x17 x26 x11 x17;
(* adcs	x20, x21, x27                              #! PC = 0x274877986440 *)
adcs carry x20 x21 x27 carry;
(* mul	x27, x12, x17                               #! PC = 0x274877986444 *)
mull mulHx12x17 x27 x12 x17;
(* adcs	x21, x22, x28                              #! PC = 0x274877986448 *)
adcs carry x21 x22 x28 carry;
(* mul	x28, x13, x17                               #! PC = 0x274877986452 *)
mull mulHx13x17 x28 x13 x17;
(* adcs	x22, x23, x0                               #! PC = 0x274877986456 *)
adcs carry x22 x23 x0 carry;
(* mul	x0, x14, x17                                #! PC = 0x274877986460 *)
mull mulHx14x17 x0 x14 x17;
(* adcs	x23, x24, x1                               #! PC = 0x274877986464 *)
adcs carry x23 x24 x1 carry;
(* mul	x1, x15, x17                                #! PC = 0x274877986468 *)
mull mulHx15x17 x1 x15 x17;
(* adcs	x24, x25, x3                               #! PC = 0x274877986472 *)
adcs carry x24 x25 x3 carry;
(* mul	x3, x16, x17                                #! PC = 0x274877986476 *)
mull mulHx16x17 x3 x16 x17;
(* adc	x25, x4, xzr                                #! PC = 0x274877986480 *)
adc x25 x4 0@uint64 carry;

assert eqmod (limbs 64 [0, 0, 0, 0, x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* ldr	x4, [x29, #96]                              #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877986484 *)
mov x4 L0x400082ab70;
(* adds	x19, x19, x26                              #! PC = 0x274877986488 *)
adds carry x19 x19 x26;
(* umulh	x26, x11, x17                             #! PC = 0x274877986492 *)
mov x26 mulHx11x17;
(* adcs	x20, x20, x27                              #! PC = 0x274877986496 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x12, x17                             #! PC = 0x274877986500 *)
mov x27 mulHx12x17;
(* adcs	x21, x21, x28                              #! PC = 0x274877986504 *)
adcs carry x21 x21 x28 carry;
(* mul	x4, x4, x19                                 #! PC = 0x274877986508 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x28, x13, x17                             #! PC = 0x274877986512 *)
mov x28 mulHx13x17;
(* adcs	x22, x22, x0                               #! PC = 0x274877986516 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x14, x17                              #! PC = 0x274877986520 *)
mov x0 mulHx14x17;
(* adcs	x23, x23, x1                               #! PC = 0x274877986524 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x15, x17                              #! PC = 0x274877986528 *)
mov x1 mulHx15x17;
(* adcs	x24, x24, x3                               #! PC = 0x274877986532 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x16, x17                              #! PC = 0x274877986536 *)
mov x3 mulHx16x17;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986540 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877986544 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x20, x20, x26                              #! PC = 0x274877986548 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877986552 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877986556 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877986560 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877986564 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877986568 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877986572 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877986576 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877986580 *)
mull mulHx9x4 x1 x9 x4;
(* adcs	x25, x25, x3                               #! PC = 0x274877986584 *)
adcs carry x25 x25 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877986588 *)
mull mulHx10x4 x3 x10 x4;
(* adc	x17, x17, xzr                               #! PC = 0x274877986592 *)
adc x17 x17 0@uint64 carry;
(* cmp	x19, #0x1                                   #! PC = 0x274877986596 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877986600 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877986604 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877986608 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877986612 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877986616 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877986620 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877986624 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877986628 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877986632 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877986636 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877986640 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986644 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x4, x17, xzr                                #! PC = 0x274877986648 *)
adc x4 x17 0@uint64 carry;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082ac80; Value = 0x000000400082acc0; PC = 0x274877986652 *)
mov x17 L0x400082ac80;
(* adds	x19, x20, x26                              #! PC = 0x274877986656 *)
adds carry x19 x20 x26;
(* mul	x26, x11, x17                               #! PC = 0x274877986660 *)
mull mulHx11x17 x26 x11 x17;
(* adcs	x20, x21, x27                              #! PC = 0x274877986664 *)
adcs carry x20 x21 x27 carry;
(* mul	x27, x12, x17                               #! PC = 0x274877986668 *)
mull mulHx12x17 x27 x12 x17;
(* adcs	x21, x22, x28                              #! PC = 0x274877986672 *)
adcs carry x21 x22 x28 carry;
(* mul	x28, x13, x17                               #! PC = 0x274877986676 *)
mull mulHx13x17 x28 x13 x17;
(* adcs	x22, x23, x0                               #! PC = 0x274877986680 *)
adcs carry x22 x23 x0 carry;
(* mul	x0, x14, x17                                #! PC = 0x274877986684 *)
mull mulHx14x17 x0 x14 x17;
(* adcs	x23, x24, x1                               #! PC = 0x274877986688 *)
adcs carry x23 x24 x1 carry;
(* mul	x1, x15, x17                                #! PC = 0x274877986692 *)
mull mulHx15x17 x1 x15 x17;
(* adcs	x24, x25, x3                               #! PC = 0x274877986696 *)
adcs carry x24 x25 x3 carry;
(* mul	x3, x16, x17                                #! PC = 0x274877986700 *)
mull mulHx16x17 x3 x16 x17;
(* adc	x25, x4, xzr                                #! PC = 0x274877986704 *)
adc x25 x4 0@uint64 carry;

assert eqmod (limbs 64 [0, 0, 0, 0, 0, x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0, b1, b2, b3, b4]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* ldr	x4, [x29, #96]                              #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877986708 *)
mov x4 L0x400082ab70;
(* adds	x19, x19, x26                              #! PC = 0x274877986712 *)
adds carry x19 x19 x26;
(* umulh	x26, x11, x17                             #! PC = 0x274877986716 *)
mov x26 mulHx11x17;
(* adcs	x20, x20, x27                              #! PC = 0x274877986720 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x12, x17                             #! PC = 0x274877986724 *)
mov x27 mulHx12x17;
(* adcs	x21, x21, x28                              #! PC = 0x274877986728 *)
adcs carry x21 x21 x28 carry;
(* mul	x4, x4, x19                                 #! PC = 0x274877986732 *)
mull mulHx4x19 x4 x4 x19;
(* umulh	x28, x13, x17                             #! PC = 0x274877986736 *)
mov x28 mulHx13x17;
(* adcs	x22, x22, x0                               #! PC = 0x274877986740 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x14, x17                              #! PC = 0x274877986744 *)
mov x0 mulHx14x17;
(* adcs	x23, x23, x1                               #! PC = 0x274877986748 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x15, x17                              #! PC = 0x274877986752 *)
mov x1 mulHx15x17;
(* adcs	x24, x24, x3                               #! PC = 0x274877986756 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x16, x17                              #! PC = 0x274877986760 *)
mov x3 mulHx16x17;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986764 *)
adcs carry x25 x25 0@uint64 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877986768 *)
adc x17 0@uint64 0@uint64 carry;
(* adds	x20, x20, x26                              #! PC = 0x274877986772 *)
adds carry x20 x20 x26;
(* adcs	x21, x21, x27                              #! PC = 0x274877986776 *)
adcs carry x21 x21 x27 carry;
(* mul	x27, x6, x4                                 #! PC = 0x274877986780 *)
mull mulHx6x4 x27 x6 x4;
(* adcs	x22, x22, x28                              #! PC = 0x274877986784 *)
adcs carry x22 x22 x28 carry;
(* mul	x28, x7, x4                                 #! PC = 0x274877986788 *)
mull mulHx7x4 x28 x7 x4;
(* adcs	x23, x23, x0                               #! PC = 0x274877986792 *)
adcs carry x23 x23 x0 carry;
(* mul	x0, x8, x4                                  #! PC = 0x274877986796 *)
mull mulHx8x4 x0 x8 x4;
(* adcs	x24, x24, x1                               #! PC = 0x274877986800 *)
adcs carry x24 x24 x1 carry;
(* mul	x1, x9, x4                                  #! PC = 0x274877986804 *)
mull mulHx9x4 x1 x9 x4;
(* adcs	x25, x25, x3                               #! PC = 0x274877986808 *)
adcs carry x25 x25 x3 carry;
(* mul	x3, x10, x4                                 #! PC = 0x274877986812 *)
mull mulHx10x4 x3 x10 x4;
(* adc	x17, x17, xzr                               #! PC = 0x274877986816 *)
adc x17 x17 0@uint64 carry;
(* cmp	x19, #0x1                                   #! PC = 0x274877986820 *)
subc carry dontcare x19 1@uint64;
(* umulh	x26, x5, x4                               #! PC = 0x274877986824 *)
(*
mov x26 mulHx5x4;
*)
(* NOTE: Montgomery reduction *)
mull x26 mulLx5x4 x5 x4;
adds mycarry zeros mulLx5x4 x19;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
(* adcs	x20, x20, x27                              #! PC = 0x274877986828 *)
adcs carry x20 x20 x27 carry;
(* umulh	x27, x6, x4                               #! PC = 0x274877986832 *)
mov x27 mulHx6x4;
(* adcs	x21, x21, x28                              #! PC = 0x274877986836 *)
adcs carry x21 x21 x28 carry;
(* umulh	x28, x7, x4                               #! PC = 0x274877986840 *)
mov x28 mulHx7x4;
(* adcs	x22, x22, x0                               #! PC = 0x274877986844 *)
adcs carry x22 x22 x0 carry;
(* umulh	x0, x8, x4                                #! PC = 0x274877986848 *)
mov x0 mulHx8x4;
(* adcs	x23, x23, x1                               #! PC = 0x274877986852 *)
adcs carry x23 x23 x1 carry;
(* umulh	x1, x9, x4                                #! PC = 0x274877986856 *)
mov x1 mulHx9x4;
(* adcs	x24, x24, x3                               #! PC = 0x274877986860 *)
adcs carry x24 x24 x3 carry;
(* umulh	x3, x10, x4                               #! PC = 0x274877986864 *)
mov x3 mulHx10x4;
(* adcs	x25, x25, xzr                              #! PC = 0x274877986868 *)
adcs carry x25 x25 0@uint64 carry;
(* pull r_ptr *)
(* ldp	x4, x2, [x29, #96]                          #! EA = L0x400082ab70; Value = 0x89f3fffcfffcfffd; PC = 0x274877986872 *)
(*
mov x4 L0x400082ab70;
mov x2 L0x400082ab78;
*)
(* adc	x17, x17, xzr                               #! PC = 0x274877986876 *)
adc x17 x17 0@uint64 carry;
(* adds	x19, x20, x26                              #! PC = 0x274877986880 *)
adds carry x19 x20 x26;
(* adcs	x20, x21, x27                              #! PC = 0x274877986884 *)
adcs carry x20 x21 x27 carry;
(* adcs	x21, x22, x28                              #! PC = 0x274877986888 *)
adcs carry x21 x22 x28 carry;
(* adcs	x22, x23, x0                               #! PC = 0x274877986892 *)
adcs carry x22 x23 x0 carry;
(* adcs	x23, x24, x1                               #! PC = 0x274877986896 *)
adcs carry x23 x24 x1 carry;
(* adcs	x24, x25, x3                               #! PC = 0x274877986900 *)
adcs carry x24 x25 x3 carry;
(* adc	x25, x17, xzr                               #! PC = 0x274877986904 *)
adc x25 x17 0@uint64 carry;

(* end of multiplication *)
assert eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        x19, x20, x21, x22, x23, x24, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [b0, b1, b2, b3, b4, b5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

mov r0 x19;
mov r1 x20;
mov r2 x21;
mov r3 x22;
mov r4 x23;
mov r5 x24;
mov r6 x25;

(* subs	x26, x19, x5                               #! PC = 0x274877986908 *)
subc carry x26 x19 x5;
(* sbcs	x27, x20, x6                               #! PC = 0x274877986912 *)
sbcs carry x27 x20 x6 carry;
(* sbcs	x28, x21, x7                               #! PC = 0x274877986916 *)
sbcs carry x28 x21 x7 carry;
(* sbcs	x0, x22, x8                                #! PC = 0x274877986920 *)
sbcs carry x0 x22 x8 carry;
(* sbcs	x1, x23, x9                                #! PC = 0x274877986924 *)
sbcs carry x1 x23 x9 carry;
(* sbcs	x3, x24, x10                               #! PC = 0x274877986928 *)
sbcs carry x3 x24 x10 carry;
(* sbcs	xzr, x25, xzr                              #! PC = 0x274877986932 *)
sbcs carry dontcare x25 0@uint64 carry;
(* csel	x11, x19, x26, cc  // cc = lo, ul, last    #! PC = 0x274877986936 *)
cmov x11 carry x26 x19;
(* csel	x12, x20, x27, cc  // cc = lo, ul, last    #! PC = 0x274877986940 *)
cmov x12 carry x27 x20;
(* csel	x13, x21, x28, cc  // cc = lo, ul, last    #! PC = 0x274877986944 *)
cmov x13 carry x28 x21;
(* csel	x14, x22, x0, cc  // cc = lo, ul, last     #! PC = 0x274877986948 *)
cmov x14 carry x0 x22;
(* csel	x15, x23, x1, cc  // cc = lo, ul, last     #! PC = 0x274877986952 *)
cmov x15 carry x1 x23;
(* csel	x16, x24, x3, cc  // cc = lo, ul, last     #! PC = 0x274877986956 *)
cmov x16 carry x3 x24;

assert true &&
       eqmod (limbs 64 [ r0,  r1,  r2,  r3,  r4,  r5,   r6])
             (limbs 64 [x11, x12, x13, x14, x15, x16, 0@64])
             (limbs 64 [ m0,  m1,  m2,  m3,  m4,  m5, 0@64]);
assume eqmod (limbs 64 [ r0,  r1,  r2,  r3,  r4,  r5,   r6])
             (limbs 64 [x11, x12, x13, x14, x15, x16, 0])
             (limbs 64 [ m0,  m1,  m2,  m3,  m4,  m5, 0]) && true;

(* #ret                                            #! PC = 0x274877986960 *)
#ret                                            #! 0x274877986960 = 0x274877986960;
(* stp	x11, x12, [x2]                              #! EA = L0x400082ac88; PC = 0x274877985544 *)
mov L0x400082ac88 x11;
mov L0x400082ac90 x12;
(* stp	x13, x14, [x2, #16]                         #! EA = L0x400082ac98; PC = 0x274877985548 *)
mov L0x400082ac98 x13;
mov L0x400082aca0 x14;
(* stp	x15, x16, [x2, #32]                         #! EA = L0x400082aca8; PC = 0x274877985552 *)
mov L0x400082aca8 x15;
mov L0x400082acb0 x16;
(* #ret                                            #! PC = 0x274877985584 *)
#ret                                            #! 0x274877985584 = 0x274877985584;
(* #ret                                            #! PC = 0x274877971348 *)
#ret                                            #! 0x274877971348 = 0x274877971348;

mov c0 L0x400082ac88;
mov c1 L0x400082ac90;
mov c2 L0x400082ac98;
mov c3 L0x400082aca0;
mov c4 L0x400082aca8;
mov c5 L0x400082acb0;

{
  eqmod (limbs 64 [0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5])
        ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
         (limbs 64 [b0, b1, b2, b3, b4, b5]))
        (limbs 64 [m0, m1, m2, m3, m4, m5])
&&
  true
}
