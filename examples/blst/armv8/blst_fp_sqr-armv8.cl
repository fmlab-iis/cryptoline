(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint -slicing blst_fp_sqr-armv8.cl
Parsing Cryptoline file:                [OK]            0.006459 seconds
Checking well-formedness:               [OK]            0.000935 seconds
Transforming to SSA form:               [OK]            0.000361 seconds
Rewriting assignments:                  [OK]            0.001948 seconds
Verifying program safety:               [OK]            5.313637 seconds
Verifying range assertions:             [OK]            89.886846 seconds
Verifying range specification:          [OK]            0.036643 seconds
Rewriting value-preserved casting:      [OK]            0.000030 seconds
Verifying algebraic assertions:         [OK]            1.553609 seconds
Verifying algebraic specification:      [OK]            1.655304 seconds
Verification result:                    [OK]            98.456457 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
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
    limbs 64 [a0, a1, a2, a3, a4, a5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
  ]
}

(* inputs *)

mov L0x400082ac28 a0;
mov L0x400082ac30 a1;
mov L0x400082ac38 a2;
mov L0x400082ac40 a3;
mov L0x400082ac48 a4;
mov L0x400082ac50 a5;

mov L0x4000016868 m0;
mov L0x4000016870 m1;
mov L0x4000016878 m2;
mov L0x4000016880 m3;
mov L0x4000016888 m4;
mov L0x4000016890 m5;

mov L0x400082ab70 n;

(* NOTE: x4 is n *)
mov x4 n;

(* #bl	0x40000138a0 <sqr_mont_384>                 #! PC = 0x274877971384 *)
#bl	0x40000138a0 <sqr_mont_384>                 #! 0x274877971384 = 0x274877971384;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877987024 *)
mov x11 L0x400082ac28;
mov x12 L0x400082ac30;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877987028 *)
mov x13 L0x400082ac38;
mov x14 L0x400082ac40;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082ac48; Value = 0x0000000000000000; PC = 0x274877987032 *)
mov x15 L0x400082ac48;
mov x16 L0x400082ac50;
(* #bl	0x4000013a00 <__sqr_384>                    #! PC = 0x274877987036 *)
#bl	0x4000013a00 <__sqr_384>                    #! 0x274877987036 = 0x274877987036;
(* mul	x19, x12, x11                               #! PC = 0x274877987328 *)
mull mulHx12x11 x19 x12 x11;
(* mul	x20, x13, x11                               #! PC = 0x274877987332 *)
mull mulHx13x11 x20 x13 x11;
(* mul	x21, x14, x11                               #! PC = 0x274877987336 *)
mull mulHx14x11 x21 x14 x11;
(* mul	x22, x15, x11                               #! PC = 0x274877987340 *)
mull mulHx15x11 x22 x15 x11;
(* mul	x23, x16, x11                               #! PC = 0x274877987344 *)
mull mulHx16x11 x23 x16 x11;
(* umulh	x6, x12, x11                              #! PC = 0x274877987348 *)
mov x6 mulHx12x11;
(* umulh	x7, x13, x11                              #! PC = 0x274877987352 *)
mov x7 mulHx13x11;
(* umulh	x8, x14, x11                              #! PC = 0x274877987356 *)
mov x8 mulHx14x11;
(* umulh	x9, x15, x11                              #! PC = 0x274877987360 *)
mov x9 mulHx15x11;
(* adds	x20, x20, x6                               #! PC = 0x274877987364 *)
adds carry x20 x20 x6;
(* umulh	x10, x16, x11                             #! PC = 0x274877987368 *)
mov x10 mulHx16x11;
(* adcs	x21, x21, x7                               #! PC = 0x274877987372 *)
adcs carry x21 x21 x7 carry;
(* mul	x7, x13, x12                                #! PC = 0x274877987376 *)
mull mulHx13x12 x7 x13 x12;
(* adcs	x22, x22, x8                               #! PC = 0x274877987380 *)
adcs carry x22 x22 x8 carry;
(* mul	x8, x14, x12                                #! PC = 0x274877987384 *)
mull mulHx14x12 x8 x14 x12;
(* adcs	x23, x23, x9                               #! PC = 0x274877987388 *)
adcs carry x23 x23 x9 carry;
(* mul	x9, x15, x12                                #! PC = 0x274877987392 *)
mull mulHx15x12 x9 x15 x12;
(* adc	x24, xzr, x10                               #! PC = 0x274877987396 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x12                               #! PC = 0x274877987400 *)
mull mulHx16x12 x10 x16 x12;
(* adds	x21, x21, x7                               #! PC = 0x274877987404 *)
adds carry x21 x21 x7;
(* umulh	x7, x13, x12                              #! PC = 0x274877987408 *)
mov x7 mulHx13x12;
(* adcs	x22, x22, x8                               #! PC = 0x274877987412 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x12                              #! PC = 0x274877987416 *)
mov x8 mulHx14x12;
(* adcs	x23, x23, x9                               #! PC = 0x274877987420 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x12                              #! PC = 0x274877987424 *)
mov x9 mulHx15x12;
(* adcs	x24, x24, x10                              #! PC = 0x274877987428 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x12                             #! PC = 0x274877987432 *)
mov x10 mulHx16x12;
(* adc	x25, xzr, xzr                               #! PC = 0x274877987436 *)
adc x25 0@uint64 0@uint64 carry;
(* mul	x5, x11, x11                                #! PC = 0x274877987440 *)
mull mulHx11x11 x5 x11 x11;
(* adds	x22, x22, x7                               #! PC = 0x274877987444 *)
adds carry x22 x22 x7;
(* umulh	x11, x11, x11                             #! PC = 0x274877987448 *)
mov x11 mulHx11x11;
(* adcs	x23, x23, x8                               #! PC = 0x274877987452 *)
adcs carry x23 x23 x8 carry;
(* mul	x8, x14, x13                                #! PC = 0x274877987456 *)
mull mulHx14x13 x8 x14 x13;
(* adcs	x24, x24, x9                               #! PC = 0x274877987460 *)
adcs carry x24 x24 x9 carry;
(* mul	x9, x15, x13                                #! PC = 0x274877987464 *)
mull mulHx15x13 x9 x15 x13;
(* adc	x25, x25, x10                               #! PC = 0x274877987468 *)
adc x25 x25 x10 carry;
(* mul	x10, x16, x13                               #! PC = 0x274877987472 *)
mull mulHx16x13 x10 x16 x13;
(* adds	x23, x23, x8                               #! PC = 0x274877987476 *)
adds carry x23 x23 x8;
(* umulh	x8, x14, x13                              #! PC = 0x274877987480 *)
mov x8 mulHx14x13;
(* adcs	x24, x24, x9                               #! PC = 0x274877987484 *)
adcs carry x24 x24 x9 carry;
(* umulh	x9, x15, x13                              #! PC = 0x274877987488 *)
mov x9 mulHx15x13;
(* adcs	x25, x25, x10                              #! PC = 0x274877987492 *)
adcs carry x25 x25 x10 carry;
(* umulh	x10, x16, x13                             #! PC = 0x274877987496 *)
mov x10 mulHx16x13;
(* adc	x26, xzr, xzr                               #! PC = 0x274877987500 *)
adc x26 0@uint64 0@uint64 carry;
(* mul	x6, x12, x12                                #! PC = 0x274877987504 *)
mull mulHx12x12 x6 x12 x12;
(* adds	x24, x24, x8                               #! PC = 0x274877987508 *)
adds carry x24 x24 x8;
(* umulh	x12, x12, x12                             #! PC = 0x274877987512 *)
mov x12 mulHx12x12;
(* adcs	x25, x25, x9                               #! PC = 0x274877987516 *)
adcs carry x25 x25 x9 carry;
(* mul	x9, x15, x14                                #! PC = 0x274877987520 *)
mull mulHx15x14 x9 x15 x14;
(* adc	x26, x26, x10                               #! PC = 0x274877987524 *)
adc x26 x26 x10 carry;
(* mul	x10, x16, x14                               #! PC = 0x274877987528 *)
mull mulHx16x14 x10 x16 x14;
(* adds	x25, x25, x9                               #! PC = 0x274877987532 *)
adds carry x25 x25 x9;
(* umulh	x9, x15, x14                              #! PC = 0x274877987536 *)
mov x9 mulHx15x14;
(* adcs	x26, x26, x10                              #! PC = 0x274877987540 *)
adcs carry x26 x26 x10 carry;
(* umulh	x10, x16, x14                             #! PC = 0x274877987544 *)
mov x10 mulHx16x14;
(* adc	x27, xzr, xzr                               #! PC = 0x274877987548 *)
adc x27 0@uint64 0@uint64 carry;
(* mul	x7, x13, x13                                #! PC = 0x274877987552 *)
mull mulHx13x13 x7 x13 x13;
(* adds	x26, x26, x9                               #! PC = 0x274877987556 *)
adds carry x26 x26 x9;
(* umulh	x13, x13, x13                             #! PC = 0x274877987560 *)
mov x13 mulHx13x13;
(* adc	x27, x27, x10                               #! PC = 0x274877987564 *)
adc x27 x27 x10 carry;
(* mul	x8, x14, x14                                #! PC = 0x274877987568 *)
mull mulHx14x14 x8 x14 x14;
(* mul	x10, x16, x15                               #! PC = 0x274877987572 *)
mull mulHx16x15 x10 x16 x15;
(* umulh	x14, x14, x14                             #! PC = 0x274877987576 *)
mov x14 mulHx14x14;
(* adds	x27, x27, x10                              #! PC = 0x274877987580 *)
adds carry x27 x27 x10;
(* umulh	x10, x16, x15                             #! PC = 0x274877987584 *)
mov x10 mulHx16x15;
(* mul	x9, x15, x15                                #! PC = 0x274877987588 *)
mull mulHx15x15 x9 x15 x15;
(* adc	x28, x10, xzr                               #! PC = 0x274877987592 *)
adc x28 x10 0@uint64 carry;
(* adds	x19, x19, x19                              #! PC = 0x274877987596 *)
adds carry x19 x19 x19;
(* adcs	x20, x20, x20                              #! PC = 0x274877987600 *)
adcs carry x20 x20 x20 carry;
(* adcs	x21, x21, x21                              #! PC = 0x274877987604 *)
adcs carry x21 x21 x21 carry;
(* adcs	x22, x22, x22                              #! PC = 0x274877987608 *)
adcs carry x22 x22 x22 carry;
(* adcs	x23, x23, x23                              #! PC = 0x274877987612 *)
adcs carry x23 x23 x23 carry;
(* adcs	x24, x24, x24                              #! PC = 0x274877987616 *)
adcs carry x24 x24 x24 carry;
(* adcs	x25, x25, x25                              #! PC = 0x274877987620 *)
adcs carry x25 x25 x25 carry;
(* adcs	x26, x26, x26                              #! PC = 0x274877987624 *)
adcs carry x26 x26 x26 carry;
(* umulh	x15, x15, x15                             #! PC = 0x274877987628 *)
mov x15 mulHx15x15;
(* adcs	x27, x27, x27                              #! PC = 0x274877987632 *)
adcs carry x27 x27 x27 carry;
(* mul	x10, x16, x16                               #! PC = 0x274877987636 *)
mull mulHx16x16 x10 x16 x16;
(* adcs	x28, x28, x28                              #! PC = 0x274877987640 *)
adcs carry x28 x28 x28 carry;
(* umulh	x16, x16, x16                             #! PC = 0x274877987644 *)
mov x16 mulHx16x16;
(* adc	x1, xzr, xzr                                #! PC = 0x274877987648 *)
adc x1 0@uint64 0@uint64 carry;
(* adds	x19, x19, x11                              #! PC = 0x274877987652 *)
adds carry x19 x19 x11;
(* adcs	x20, x20, x6                               #! PC = 0x274877987656 *)
adcs carry x20 x20 x6 carry;
(* adcs	x21, x21, x12                              #! PC = 0x274877987660 *)
adcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x7                               #! PC = 0x274877987664 *)
adcs carry x22 x22 x7 carry;
(* adcs	x23, x23, x13                              #! PC = 0x274877987668 *)
adcs carry x23 x23 x13 carry;
(* adcs	x24, x24, x8                               #! PC = 0x274877987672 *)
adcs carry x24 x24 x8 carry;
(* adcs	x25, x25, x14                              #! PC = 0x274877987676 *)
adcs carry x25 x25 x14 carry;
(* stp	x5, x19, [x0]                               #! EA = L0x400082aab0; PC = 0x274877987680 *)
mov L0x400082aab0 x5;
mov L0x400082aab8 x19;
(* adcs	x26, x26, x9                               #! PC = 0x274877987684 *)
adcs carry x26 x26 x9 carry;
(* stp	x20, x21, [x0, #16]                         #! EA = L0x400082aac0; PC = 0x274877987688 *)
mov L0x400082aac0 x20;
mov L0x400082aac8 x21;
(* adcs	x27, x27, x15                              #! PC = 0x274877987692 *)
adcs carry x27 x27 x15 carry;
(* stp	x22, x23, [x0, #32]                         #! EA = L0x400082aad0; PC = 0x274877987696 *)
mov L0x400082aad0 x22;
mov L0x400082aad8 x23;
(* adcs	x28, x28, x10                              #! PC = 0x274877987700 *)
adcs carry x28 x28 x10 carry;
(* stp	x24, x25, [x0, #48]                         #! EA = L0x400082aae0; PC = 0x274877987704 *)
mov L0x400082aae0 x24;
mov L0x400082aae8 x25;
(* adc	x16, x16, x1                                #! PC = 0x274877987708 *)
adc x16 x16 x1 carry;
(* stp	x26, x27, [x0, #64]                         #! EA = L0x400082aaf0; PC = 0x274877987712 *)
mov L0x400082aaf0 x26;
mov L0x400082aaf8 x27;
(* stp	x28, x16, [x0, #80]                         #! EA = L0x400082ab00; PC = 0x274877987716 *)
mov L0x400082ab00 x28;
mov L0x400082ab08 x16;
(* #ret                                            #! PC = 0x274877987720 *)
#ret                                            #! 0x274877987720 = 0x274877987720;
(* ldp	x5, x6, [x2]                                #! EA = L0x4000016868; Value = 0xb9feffffffffaaab; PC = 0x274877987040 *)
mov x5 L0x4000016868;
mov x6 L0x4000016870;
(* ldp	x7, x8, [x2, #16]                           #! EA = L0x4000016878; Value = 0x6730d2a0f6b0f624; PC = 0x274877987044 *)
mov x7 L0x4000016878;
mov x8 L0x4000016880;
(* ldp	x9, x10, [x2, #32]                          #! EA = L0x4000016888; Value = 0x4b1ba7b6434bacd7; PC = 0x274877987048 *)
mov x9 L0x4000016888;
mov x10 L0x4000016890;
(* mov	x1, sp                                      #! PC = 0x274877987052 *)
#mov	%%x1, sp                                      #! 0x274877987052 = 0x274877987052;
(* mov	x0, x3                                      #! PC = 0x274877987056 *)
#mov	%%x0, %%x3                                      #! 0x274877987056 = 0x274877987056;
(* #bl	0x4000013d00 <__mul_by_1_mont_384>          #! PC = 0x274877987060 *)
#bl	0x4000013d00 <__mul_by_1_mont_384>          #! 0x274877987060 = 0x274877987060;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082aab0; Value = 0x0000000000000000; PC = 0x274877988096 *)
mov x11 L0x400082aab0;
mov x12 L0x400082aab8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082aac0; Value = 0x42ef7200c88cbe40; PC = 0x274877988100 *)
mov x13 L0x400082aac0;
mov x14 L0x400082aac8;
(* mul	x26, x4, x11                                #! PC = 0x274877988104 *)
mull mulHx4x11 x26 x4 x11;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082aad0; Value = 0x0000000000000000; PC = 0x274877988108 *)
mov x15 L0x400082aad0;
mov x16 L0x400082aad8;
(* mul	x20, x6, x26                                #! PC = 0x274877988112 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988116 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988120 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988124 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988128 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988132 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988136 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988140 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988144 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988148 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988152 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988156 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988160 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988164 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988168 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988172 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988176 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988180 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988184 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988188 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988192 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988196 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988200 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988204 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988208 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988212 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988216 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988220 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988224 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988228 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988232 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988236 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988240 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988244 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988248 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988252 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988256 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988260 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988264 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988268 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988272 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988276 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988280 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988284 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988288 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988292 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988296 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988300 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988304 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988308 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988312 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988316 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988320 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988324 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988328 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988332 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988336 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988340 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988344 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988348 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988352 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988356 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988360 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988364 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988368 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988372 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988376 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988380 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988384 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988388 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988392 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988396 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988400 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988404 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988408 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988412 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988416 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988420 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988424 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988428 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988432 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988436 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988440 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988444 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988448 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988452 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988456 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988460 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988464 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988468 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988472 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988476 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988480 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988484 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988488 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988492 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988496 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988500 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988504 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988508 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988512 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988516 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988520 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988524 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988528 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988532 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988536 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988540 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988544 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988548 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988552 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988556 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988560 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988564 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988568 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988572 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988576 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988580 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988584 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988588 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988592 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988596 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988600 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988604 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988608 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988612 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988616 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988620 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988624 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988628 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988632 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988636 *)
(*
mov x11 mulHx5x26;
*)
(* NOTE: Montgomery reduction *)
mull newx11 mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 newx11;
(* adcs	x20, x20, x12                              #! PC = 0x274877988640 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988644 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988648 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988652 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988656 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988660 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988664 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988668 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988672 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988676 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988680 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988684 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988688 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988692 *)
adcs carry x13 x13 x22 carry;
(* adcs	x14, x14, x23                              #! PC = 0x274877988696 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988700 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988704 *)
adc x16 x16 x25 carry;
(* #ret                                            #! PC = 0x274877988708 *)
#ret                                            #! 0x274877988708 = 0x274877988708;
(* #bl	0x4000013f80 <__redc_tail_mont_384>         #! PC = 0x274877987064 *)
#bl	0x4000013f80 <__redc_tail_mont_384>         #! 0x274877987064 = 0x274877987064;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082aae0; Value = 0x0000000000000000; PC = 0x274877988736 *)
mov x19 L0x400082aae0;
mov x20 L0x400082aae8;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082aaf0; Value = 0x0000000000000000; PC = 0x274877988740 *)
mov x21 L0x400082aaf0;
mov x22 L0x400082aaf8;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082ab00; Value = 0x0000000000000000; PC = 0x274877988744 *)
mov x23 L0x400082ab00;
mov x24 L0x400082ab08;
(* adds	x11, x11, x19                              #! PC = 0x274877988748 *)
adds carry x11 x11 x19;
(* adcs	x12, x12, x20                              #! PC = 0x274877988752 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0x274877988756 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0x274877988760 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877988764 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877988768 *)
adcs carry x16 x16 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988772 *)
adc x25 0@uint64 0@uint64 carry;

assert eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        x11, x12, x13, x14, x15, x16, x25])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [a0, a1, a2, a3, a4, a5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

mov r0 x11;
mov r1 x12;
mov r2 x13;
mov r3 x14;
mov r4 x15;
mov r5 x16;
mov r6 x25;

(* subs	x19, x11, x5                               #! PC = 0x274877988776 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877988780 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877988784 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877988788 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877988792 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877988796 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x25, xzr                              #! PC = 0x274877988800 *)
sbcs carry dontcare x25 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877988804 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877988808 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877988812 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877988816 *)
cmov x14 carry x22 x14;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877988820 *)
cmov x15 carry x23 x15;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877988824 *)
cmov x16 carry x24 x16;

assert true &&
       eqmod (limbs 64 [ r0,  r1,  r2,  r3,  r4,  r5,   r6])
             (limbs 64 [x11, x12, x13, x14, x15, x16, 0@64])
             (limbs 64 [ m0,  m1,  m2,  m3,  m4,  m5, 0@64]);
assume eqmod (limbs 64 [ r0,  r1,  r2,  r3,  r4,  r5, r6])
             (limbs 64 [x11, x12, x13, x14, x15, x16,  0])
             (limbs 64 [ m0,  m1,  m2,  m3,  m4,  m5,  0]) && true;

(* stp	x11, x12, [x0]                              #! EA = L0x400082ac88; PC = 0x274877988828 *)
mov L0x400082ac88 x11;
mov L0x400082ac90 x12;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082ac98; PC = 0x274877988832 *)
mov L0x400082ac98 x13;
mov L0x400082aca0 x14;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082aca8; PC = 0x274877988836 *)
mov L0x400082aca8 x15;
mov L0x400082acb0 x16;
(* #ret                                            #! PC = 0x274877988840 *)
#ret                                            #! 0x274877988840 = 0x274877988840;
(* #ret                                            #! PC = 0x274877987104 *)
#ret                                            #! 0x274877987104 = 0x274877987104;
(* #ret                                            #! PC = 0x274877971392 *)
#ret                                            #! 0x274877971392 = 0x274877971392;

mov c0 L0x400082ac88;
mov c1 L0x400082ac90;
mov c2 L0x400082ac98;
mov c3 L0x400082aca0;
mov c4 L0x400082aca8;
mov c5 L0x400082acb0;

{
  eqmod (limbs 64 [0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5])
        ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
         (limbs 64 [a0, a1, a2, a3, a4, a5]))
        (limbs 64 [m0, m1, m2, m3, m4, m5])
&&
  true
}
