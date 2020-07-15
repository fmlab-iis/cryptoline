(* quine: -v -isafety -jobs 10 -btor -no_carry_constraint blst_fp2_mul-armv8.cl
Parsing Cryptoline file:                [OK]            0.017242 seconds
Checking well-formedness:               [OK]            0.003572 seconds
Transforming to SSA form:               [OK]            0.001806 seconds
Rewriting assignments:                  [OK]            0.043969 seconds
Verifying program safety:               [OK]            10.911898 seconds
Verifying range assertions:             [OK]            56.394494 seconds
Verifying range specification:          [OK]            12.535624 seconds
Rewriting value-preserved casting:      [OK]            0.000100 seconds
Verifying algebraic assertions:         [OK]            1.618101 seconds
Verifying algebraic specification:      [OK]            2.994951 seconds
Verification result:                    [OK]            84.523280 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5,
           uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5,
           uint64 d0, uint64 d1, uint64 d2, uint64 d3, uint64 d4, uint64 d5,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5,
           uint64 n,
           uint64 I) =
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
    limbs 64 [b0, b1, b2, b3, b4, b5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
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

mov L0x400082abe8 c0;
mov L0x400082abf0 c1;
mov L0x400082abf8 c2;
mov L0x400082ac00 c3;
mov L0x400082ac08 c4;
mov L0x400082ac10 c5;
mov L0x400082ac18 d0;
mov L0x400082ac20 d1;
mov L0x400082ac28 d2;
mov L0x400082ac30 d3;
mov L0x400082ac38 d4;
mov L0x400082ac40 d5;

mov L0x40000168e8 m0;
mov L0x40000168f0 m1;
mov L0x40000168f8 m2;
mov L0x4000016900 m3;
mov L0x4000016908 m4;
mov L0x4000016910 m5;

mov x4 n;

(* #mov	x4, #0xfffd                	// #65533       #! PC = 0x274877972812 *)
#mov	%%x4, #0xfffd                	// #65533       #! 0x274877972812 = 0x274877972812;
(* #movk	x4, #0xfffc, lsl #16                       #! PC = 0x274877972816 *)
#movk	%%x4, #0xfffc, lsl #16                       #! 0x274877972816 = 0x274877972816;
(* #movk	x4, #0xfffc, lsl #32                       #! PC = 0x274877972820 *)
#movk	%%x4, #0xfffc, lsl #32                       #! 0x274877972820 = 0x274877972820;
(* #movk	x4, #0x89f3, lsl #48                       #! PC = 0x274877972824 *)
#movk	%%x4, #0x89f3, lsl #48                       #! 0x274877972824 = 0x274877972824;
(* #bl	0x4000013120 <mul_mont_384x>                #! PC = 0x274877972836 *)
#bl	0x4000013120 <mul_mont_384x>                #! 0x274877972836 = 0x274877972836;
(* #paciasp                                         #! PC = 0x274877985056 *)
#paciasp                                         #! 0x274877985056 = 0x274877985056;
(* #stp	x29, x30, [sp, #-128]!                      #! EA = L0x400082a9e0; PC = 0x274877985060 *)
#stp	%%x29, %%x30, [sp, #-128]!                      #! L0x400082a9e0 = L0x400082a9e0; 0x274877985060 = 0x274877985060;
(* #mov	x29, sp                                     #! PC = 0x274877985064 *)
#mov	%%x29, sp                                     #! 0x274877985064 = 0x274877985064;
(* #stp	x19, x20, [sp, #16]                         #! EA = L0x400082a9f0; PC = 0x274877985068 *)
#stp	%%x19, %%x20, %%L0x400082a9f0                         #! L0x400082a9f0 = L0x400082a9f0; 0x274877985068 = 0x274877985068;
(* #stp	x21, x22, [sp, #32]                         #! EA = L0x400082aa00; PC = 0x274877985072 *)
#stp	%%x21, %%x22, %%L0x400082aa00                         #! L0x400082aa00 = L0x400082aa00; 0x274877985072 = 0x274877985072;
(* #stp	x23, x24, [sp, #48]                         #! EA = L0x400082aa10; PC = 0x274877985076 *)
#stp	%%x23, %%x24, %%L0x400082aa10                         #! L0x400082aa10 = L0x400082aa10; 0x274877985076 = 0x274877985076;
(* #stp	x25, x26, [sp, #64]                         #! EA = L0x400082aa20; PC = 0x274877985080 *)
#stp	%%x25, %%x26, %%L0x400082aa20                         #! L0x400082aa20 = L0x400082aa20; 0x274877985080 = 0x274877985080;
(* #stp	x27, x28, [sp, #80]                         #! EA = L0x400082aa30; PC = 0x274877985084 *)
#stp	%%x27, %%x28, %%L0x400082aa30                         #! L0x400082aa30 = L0x400082aa30; 0x274877985084 = 0x274877985084;
(* #sub	sp, sp, #0x120                              #! PC = 0x274877985088 *)
#sub	sp, sp, #0x120                              #! 0x274877985088 = 0x274877985088;
(* mov	x26, x0                                     #! PC = 0x274877985092 *)
#mov x26 x0;
(* mov	x27, x1                                     #! PC = 0x274877985096 *)
#mov x27 x1;
(* mov	x28, x2                                     #! PC = 0x274877985100 *)
#mov x28 x2;
(* #sub	x0, sp, #0x0                                #! PC = 0x274877985104 *)
#sub	%%x0, sp, #0x0                                #! 0x274877985104 = 0x274877985104;
(* #bl	0x40000140e0 <__mul_384>                    #! PC = 0x274877985108 *)
#bl	0x40000140e0 <__mul_384>                    #! 0x274877985108 = 0x274877985108;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877989088 *)
mov x11 L0x400082ab88;
mov x12 L0x400082ab90;
(* ldr	x17, [x2]                                   #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877989092 *)
mov x17 L0x400082abe8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877989096 *)
mov x13 L0x400082ab98;
mov x14 L0x400082aba0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877989100 *)
mov x15 L0x400082aba8;
mov x16 L0x400082abb0;
(* mul	x19, x11, x17                               #! PC = 0x274877989104 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989108 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989112 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989116 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989120 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989124 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989128 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989132 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989136 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989140 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989144 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989148 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082abf0; Value = 0x0000000000000000; PC = 0x274877989152 *)
mov x17 L0x400082abf0;
(* str	x19, [x0]                                   #! EA = L0x400082a8c0; PC = 0x274877989156 *)
mov L0x400082a8c0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989160 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989164 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989168 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989172 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989176 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989180 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989184 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989188 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989192 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989196 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989200 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989204 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989208 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989212 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989216 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989220 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989224 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989228 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989232 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989236 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989240 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989244 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989248 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989252 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877989256 *)
mov x17 L0x400082abf8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989260 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x400082a8c8; PC = 0x274877989264 *)
mov L0x400082a8c8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989268 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989272 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989276 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989280 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989284 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989288 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989292 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989296 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989300 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989304 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989308 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989312 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989316 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989320 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989324 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989328 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989332 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989336 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989340 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989344 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989348 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989352 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989356 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989360 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082ac00; Value = 0x0000000000000000; PC = 0x274877989364 *)
mov x17 L0x400082ac00;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989368 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x400082a8d0; PC = 0x274877989372 *)
mov L0x400082a8d0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989376 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989380 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989384 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989388 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989392 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989396 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989400 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989404 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989408 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989412 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989416 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989420 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989424 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989428 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989432 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989436 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989440 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989444 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989448 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989452 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989456 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989460 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989464 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989468 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082ac08; Value = 0x0000000000000000; PC = 0x274877989472 *)
mov x17 L0x400082ac08;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989476 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x400082a8d8; PC = 0x274877989480 *)
mov L0x400082a8d8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989484 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989488 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989492 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989496 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989500 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989504 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989508 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989512 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989516 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989520 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989524 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989528 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989532 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989536 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989540 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989544 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989548 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989552 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989556 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989560 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989564 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989568 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989572 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989576 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082ac10; Value = 0x0000000000000000; PC = 0x274877989580 *)
mov x17 L0x400082ac10;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989584 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x400082a8e0; PC = 0x274877989588 *)
mov L0x400082a8e0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989592 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989596 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989600 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989604 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989608 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989612 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989616 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989620 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989624 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989628 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989632 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989636 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989640 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989644 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989648 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989652 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989656 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989660 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989664 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989668 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989672 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989676 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989680 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989684 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989688 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x400082a8e8; PC = 0x274877989692 *)
mov L0x400082a8e8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989696 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989700 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989704 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989708 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989712 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989716 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x400082a8f0; PC = 0x274877989720 *)
mov L0x400082a8f0 x19;
mov L0x400082a8f8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x400082a900; PC = 0x274877989724 *)
mov L0x400082a900 x21;
mov L0x400082a908 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x400082a910; PC = 0x274877989728 *)
mov L0x400082a910 x23;
mov L0x400082a918 x24;
(* #ret                                            #! PC = 0x274877989732 *)
#ret                                            #! 0x274877989732 = 0x274877989732;

(* mul_384(t0, a->re, b->re) *)
assert ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
        (limbs 64 [c0, c1, c2, c3, c4, c5])) =
       (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0, L0x400082a8d8,
                  L0x400082a8e0, L0x400082a8e8, L0x400082a8f0, L0x400082a8f8,
                  L0x400082a900, L0x400082a908, L0x400082a910, L0x400082a918])
    && true;

(* #add	x1, x1, #0x30                               #! PC = 0x274877985112 *)
#add	%%x1, %%x1, #0x30                               #! 0x274877985112 = 0x274877985112;
(* #add	x2, x2, #0x30                               #! PC = 0x274877985116 *)
#add	%%x2, %%x2, #0x30                               #! 0x274877985116 = 0x274877985116;
(* #add	x0, sp, #0x60                               #! PC = 0x274877985120 *)
#add	%%x0, sp, #0x60                               #! 0x274877985120 = 0x274877985120;
(* #bl	0x40000140e0 <__mul_384>                    #! PC = 0x274877985124 *)
#bl	0x40000140e0 <__mul_384>                    #! 0x274877985124 = 0x274877985124;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877989088 *)
mov x11 L0x400082abb8;
mov x12 L0x400082abc0;
(* ldr	x17, [x2]                                   #! EA = L0x400082ac18; Value = 0x0000000000000000; PC = 0x274877989092 *)
mov x17 L0x400082ac18;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877989096 *)
mov x13 L0x400082abc8;
mov x14 L0x400082abd0;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877989100 *)
mov x15 L0x400082abd8;
mov x16 L0x400082abe0;
(* mul	x19, x11, x17                               #! PC = 0x274877989104 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989108 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989112 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989116 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989120 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989124 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989128 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989132 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989136 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989140 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989144 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989148 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082ac20; Value = 0x000000400085de58; PC = 0x274877989152 *)
mov x17 L0x400082ac20;
(* str	x19, [x0]                                   #! EA = L0x400082a920; PC = 0x274877989156 *)
mov L0x400082a920 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989160 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989164 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989168 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989172 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989176 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989180 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989184 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989188 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989192 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989196 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989200 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989204 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989208 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989212 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989216 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989220 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989224 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989228 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989232 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989236 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989240 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989244 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989248 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989252 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877989256 *)
mov x17 L0x400082ac28;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989260 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x400082a928; PC = 0x274877989264 *)
mov L0x400082a928 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989268 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989272 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989276 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989280 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989284 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989288 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989292 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989296 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989300 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989304 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989308 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989312 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989316 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989320 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989324 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989328 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989332 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989336 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989340 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989344 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989348 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989352 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989356 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989360 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082ac30; Value = 0x0000000000000000; PC = 0x274877989364 *)
mov x17 L0x400082ac30;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989368 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x400082a930; PC = 0x274877989372 *)
mov L0x400082a930 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989376 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989380 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989384 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989388 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989392 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989396 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989400 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989404 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989408 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989412 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989416 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989420 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989424 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989428 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989432 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989436 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989440 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989444 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989448 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989452 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989456 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989460 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989464 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989468 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877989472 *)
mov x17 L0x400082ac38;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989476 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x400082a938; PC = 0x274877989480 *)
mov L0x400082a938 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989484 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989488 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989492 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989496 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989500 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989504 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989508 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989512 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989516 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989520 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989524 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989528 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989532 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989536 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989540 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989544 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989548 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989552 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989556 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989560 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989564 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989568 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989572 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989576 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082ac40; Value = 0x0000000000000000; PC = 0x274877989580 *)
mov x17 L0x400082ac40;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989584 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x400082a940; PC = 0x274877989588 *)
mov L0x400082a940 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989592 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989596 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989600 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989604 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989608 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989612 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989616 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989620 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989624 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989628 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989632 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989636 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989640 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989644 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989648 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989652 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989656 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989660 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989664 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989668 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989672 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989676 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989680 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989684 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989688 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x400082a948; PC = 0x274877989692 *)
mov L0x400082a948 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989696 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989700 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989704 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989708 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989712 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989716 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x400082a950; PC = 0x274877989720 *)
mov L0x400082a950 x19;
mov L0x400082a958 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x400082a960; PC = 0x274877989724 *)
mov L0x400082a960 x21;
mov L0x400082a968 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x400082a970; PC = 0x274877989728 *)
mov L0x400082a970 x23;
mov L0x400082a978 x24;
(* #ret                                            #! PC = 0x274877989732 *)
#ret                                            #! 0x274877989732 = 0x274877989732;

(* mul_384(t1, a->im, b->im) *)
assert ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
        (limbs 64 [d0, d1, d2, d3, d4, d5])) =
       (limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930, L0x400082a938,
                  L0x400082a940, L0x400082a948, L0x400082a950, L0x400082a958,
                  L0x400082a960, L0x400082a968, L0x400082a970, L0x400082a978])
    && true;

(* ldp	x5, x6, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877985128 *)
mov x5 L0x40000168e8;
mov x6 L0x40000168f0;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877985132 *)
mov x7 L0x40000168f8;
mov x8 L0x4000016900;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877985136 *)
mov x9 L0x4000016908;
mov x10 L0x4000016910;
(* #sub	x2, x1, #0x30                               #! PC = 0x274877985140 *)
#sub	%%x2, %%x1, #0x30                               #! 0x274877985140 = 0x274877985140;
(* #add	x0, sp, #0xf0                               #! PC = 0x274877985144 *)
#add	%%x0, sp, #0xf0                               #! 0x274877985144 = 0x274877985144;
(* #bl	0x4000013020 <__add_mod_384>                #! PC = 0x274877985148 *)
#bl	0x4000013020 <__add_mod_384>                #! 0x274877985148 = 0x274877985148;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082abb8; Value = 0x0000000000000000; PC = 0x274877984800 *)
mov x11 L0x400082abb8;
mov x12 L0x400082abc0;
(* ldp	x19, x20, [x2]                              #! EA = L0x400082ab88; Value = 0x0000000000000000; PC = 0x274877984804 *)
mov x19 L0x400082ab88;
mov x20 L0x400082ab90;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082abc8; Value = 0x0000000000000000; PC = 0x274877984808 *)
mov x13 L0x400082abc8;
mov x14 L0x400082abd0;
(* adds	x11, x11, x19                              #! PC = 0x274877984812 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x400082ab98; Value = 0x0000000000000000; PC = 0x274877984816 *)
mov x21 L0x400082ab98;
mov x22 L0x400082aba0;
(* adcs	x12, x12, x20                              #! PC = 0x274877984820 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082abd8; Value = 0x0000000000000000; PC = 0x274877984824 *)
mov x15 L0x400082abd8;
mov x16 L0x400082abe0;
(* adcs	x13, x13, x21                              #! PC = 0x274877984828 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x400082aba8; Value = 0x0000000000000000; PC = 0x274877984832 *)
mov x23 L0x400082aba8;
mov x24 L0x400082abb0;
(* adcs	x14, x14, x22                              #! PC = 0x274877984836 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984840 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984844 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984848 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984852 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984856 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984860 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984864 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984868 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984872 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984876 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984880 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984884 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984888 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984892 *)
cmov x14 carry x22 x14;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984896 *)
cmov x15 carry x23 x15;
(* stp	x11, x12, [x0]                              #! EA = L0x400082a9b0; PC = 0x274877984900 *)
mov L0x400082a9b0 x11;
mov L0x400082a9b8 x12;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984904 *)
cmov x16 carry x24 x16;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082a9c0; PC = 0x274877984908 *)
mov L0x400082a9c0 x13;
mov L0x400082a9c8 x14;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082a9d0; PC = 0x274877984912 *)
mov L0x400082a9d0 x15;
mov L0x400082a9d8 x16;
(* #ret                                            #! PC = 0x274877984916 *)
#ret                                            #! 0x274877984916 = 0x274877984916;

(* __add_mod_384(_, a->im, a->re) *)
assert true
    && eqmod (limbs 64 [L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                        L0x400082a9c8, L0x400082a9d0, L0x400082a9d8])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
              (limbs 64 [b0, b1, b2, b3, b4, b5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                        L0x400082a9c8, L0x400082a9d0, L0x400082a9d8])
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) +
              (limbs 64 [b0, b1, b2, b3, b4, b5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;


(* #add	x1, x28, #0x0                               #! PC = 0x274877985152 *)
#add	%%x1, %%x28, #0x0                               #! 0x274877985152 = 0x274877985152;
(* #add	x2, x28, #0x30                              #! PC = 0x274877985156 *)
#add	%%x2, %%x28, #0x30                              #! 0x274877985156 = 0x274877985156;
(* #add	x0, sp, #0xc0                               #! PC = 0x274877985160 *)
#add	%%x0, sp, #0xc0                               #! 0x274877985160 = 0x274877985160;
(* #bl	0x4000013020 <__add_mod_384>                #! PC = 0x274877985164 *)
#bl	0x4000013020 <__add_mod_384>                #! 0x274877985164 = 0x274877985164;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082abe8; Value = 0x0000000000000000; PC = 0x274877984800 *)
mov x11 L0x400082abe8;
mov x12 L0x400082abf0;
(* ldp	x19, x20, [x2]                              #! EA = L0x400082ac18; Value = 0x0000000000000000; PC = 0x274877984804 *)
mov x19 L0x400082ac18;
mov x20 L0x400082ac20;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082abf8; Value = 0x0000000000000000; PC = 0x274877984808 *)
mov x13 L0x400082abf8;
mov x14 L0x400082ac00;
(* adds	x11, x11, x19                              #! PC = 0x274877984812 *)
adds carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x400082ac28; Value = 0x0000000000000000; PC = 0x274877984816 *)
mov x21 L0x400082ac28;
mov x22 L0x400082ac30;
(* adcs	x12, x12, x20                              #! PC = 0x274877984820 *)
adcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082ac08; Value = 0x0000000000000000; PC = 0x274877984824 *)
mov x15 L0x400082ac08;
mov x16 L0x400082ac10;
(* adcs	x13, x13, x21                              #! PC = 0x274877984828 *)
adcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x400082ac38; Value = 0x0000000000000000; PC = 0x274877984832 *)
mov x23 L0x400082ac38;
mov x24 L0x400082ac40;
(* adcs	x14, x14, x22                              #! PC = 0x274877984836 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877984840 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877984844 *)
adcs carry x16 x16 x24 carry;
(* adc	x17, xzr, xzr                               #! PC = 0x274877984848 *)
adc x17 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877984852 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877984856 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877984860 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877984864 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877984868 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877984872 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x17, xzr                              #! PC = 0x274877984876 *)
sbcs carry dontcare x17 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877984880 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877984884 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877984888 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877984892 *)
cmov x14 carry x22 x14;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877984896 *)
cmov x15 carry x23 x15;
(* stp	x11, x12, [x0]                              #! EA = L0x400082a980; PC = 0x274877984900 *)
mov L0x400082a980 x11;
mov L0x400082a988 x12;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877984904 *)
cmov x16 carry x24 x16;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082a990; PC = 0x274877984908 *)
mov L0x400082a990 x13;
mov L0x400082a998 x14;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082a9a0; PC = 0x274877984912 *)
mov L0x400082a9a0 x15;
mov L0x400082a9a8 x16;
(* #ret                                            #! PC = 0x274877984916 *)
#ret                                            #! 0x274877984916 = 0x274877984916;

(* __add_mod_384(t2, b->im, b->re) *)
assert true
    && eqmod (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8])
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
              (limbs 64 [d0, d1, d2, d3, d4, d5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8])
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
              (limbs 64 [d0, d1, d2, d3, d4, d5]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

ghost L0x400082a9b0o@uint64, L0x400082a9b8o@uint64,
      L0x400082a9c0o@uint64, L0x400082a9c8o@uint64,
      L0x400082a9d0o@uint64, L0x400082a9d8o@uint64,
      L0x400082a980o@uint64, L0x400082a988o@uint64,
      L0x400082a990o@uint64, L0x400082a998o@uint64,
      L0x400082a9a0o@uint64, L0x400082a9a8o@uint64 :
      and [
        L0x400082a9b0o = L0x400082a9b0, L0x400082a9b8o = L0x400082a9b8,
        L0x400082a9c0o = L0x400082a9c0, L0x400082a9c8o = L0x400082a9c8,
        L0x400082a9d0o = L0x400082a9d0, L0x400082a9d8o = L0x400082a9d8,
        L0x400082a980o = L0x400082a980, L0x400082a988o = L0x400082a988,
        L0x400082a990o = L0x400082a990, L0x400082a998o = L0x400082a998,
        L0x400082a9a0o = L0x400082a9a0, L0x400082a9a8o = L0x400082a9a8
      ]
   && and [
        L0x400082a9b0o = L0x400082a9b0, L0x400082a9b8o = L0x400082a9b8,
        L0x400082a9c0o = L0x400082a9c0, L0x400082a9c8o = L0x400082a9c8,
        L0x400082a9d0o = L0x400082a9d0, L0x400082a9d8o = L0x400082a9d8,
        L0x400082a980o = L0x400082a980, L0x400082a988o = L0x400082a988,
        L0x400082a990o = L0x400082a990, L0x400082a998o = L0x400082a998,
        L0x400082a9a0o = L0x400082a9a0, L0x400082a9a8o = L0x400082a9a8
      ];

(* #add	x1, x0, #0x0                                #! PC = 0x274877985168 *)
#add	%%x1, %%x0, #0x0                                #! 0x274877985168 = 0x274877985168;
(* #add	x2, x0, #0x30                               #! PC = 0x274877985172 *)
#add	%%x2, %%x0, #0x30                               #! 0x274877985172 = 0x274877985172;
(* #bl	0x40000140e0 <__mul_384>                    #! PC = 0x274877985176 *)
#bl	0x40000140e0 <__mul_384>                    #! 0x274877985176 = 0x274877985176;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a980; Value = 0x0000000000000000; PC = 0x274877989088 *)
mov x11 L0x400082a980;
mov x12 L0x400082a988;
(* ldr	x17, [x2]                                   #! EA = L0x400082a9b0; Value = 0x0000000000000000; PC = 0x274877989092 *)
mov x17 L0x400082a9b0;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a990; Value = 0x0000000000000000; PC = 0x274877989096 *)
mov x13 L0x400082a990;
mov x14 L0x400082a998;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a9a0; Value = 0x0000000000000000; PC = 0x274877989100 *)
mov x15 L0x400082a9a0;
mov x16 L0x400082a9a8;
(* mul	x19, x11, x17                               #! PC = 0x274877989104 *)
mull mulHx11x17 x19 x11 x17;
(* mul	x20, x12, x17                               #! PC = 0x274877989108 *)
mull mulHx12x17 x20 x12 x17;
(* mul	x21, x13, x17                               #! PC = 0x274877989112 *)
mull mulHx13x17 x21 x13 x17;
(* mul	x22, x14, x17                               #! PC = 0x274877989116 *)
mull mulHx14x17 x22 x14 x17;
(* mul	x23, x15, x17                               #! PC = 0x274877989120 *)
mull mulHx15x17 x23 x15 x17;
(* mul	x24, x16, x17                               #! PC = 0x274877989124 *)
mull mulHx16x17 x24 x16 x17;
(* umulh	x5, x11, x17                              #! PC = 0x274877989128 *)
mov x5 mulHx11x17;
(* umulh	x6, x12, x17                              #! PC = 0x274877989132 *)
mov x6 mulHx12x17;
(* umulh	x7, x13, x17                              #! PC = 0x274877989136 *)
mov x7 mulHx13x17;
(* umulh	x8, x14, x17                              #! PC = 0x274877989140 *)
mov x8 mulHx14x17;
(* umulh	x9, x15, x17                              #! PC = 0x274877989144 *)
mov x9 mulHx15x17;
(* umulh	x10, x16, x17                             #! PC = 0x274877989148 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #8]                               #! EA = L0x400082a9b8; Value = 0x0000000000000000; PC = 0x274877989152 *)
mov x17 L0x400082a9b8;
(* str	x19, [x0]                                   #! EA = L0x400082a980; PC = 0x274877989156 *)
mov L0x400082a980 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989160 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989164 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989168 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989172 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989176 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989180 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989184 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989188 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989192 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989196 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, xzr, x10                               #! PC = 0x274877989200 *)
adc x24 0@uint64 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989204 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989208 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989212 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989216 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989220 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989224 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989228 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989232 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989236 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989240 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989244 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989248 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989252 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #16]                              #! EA = L0x400082a9c0; Value = 0x0000000000000000; PC = 0x274877989256 *)
mov x17 L0x400082a9c0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989260 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #8]                               #! EA = L0x400082a988; PC = 0x274877989264 *)
mov L0x400082a988 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989268 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989272 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989276 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989280 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989284 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989288 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989292 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989296 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989300 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989304 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989308 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989312 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989316 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989320 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989324 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989328 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989332 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989336 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989340 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989344 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989348 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989352 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989356 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989360 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #24]                              #! EA = L0x400082a9c8; Value = 0x0000000000000000; PC = 0x274877989364 *)
mov x17 L0x400082a9c8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989368 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #16]                              #! EA = L0x400082a990; PC = 0x274877989372 *)
mov L0x400082a990 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989376 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989380 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989384 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989388 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989392 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989396 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989400 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989404 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989408 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989412 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989416 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989420 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989424 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989428 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989432 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989436 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989440 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989444 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989448 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989452 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989456 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989460 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989464 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989468 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #32]                              #! EA = L0x400082a9d0; Value = 0x0000000000000000; PC = 0x274877989472 *)
mov x17 L0x400082a9d0;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989476 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #24]                              #! EA = L0x400082a998; PC = 0x274877989480 *)
mov L0x400082a998 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989484 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989488 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989492 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989496 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989500 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989504 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989508 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989512 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989516 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989520 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989524 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989528 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989532 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989536 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989540 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989544 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989548 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989552 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989556 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989560 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989564 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989568 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989572 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989576 *)
mov x10 mulHx16x17;
(* ldr	x17, [x2, #40]                              #! EA = L0x400082a9d8; Value = 0x0000000000000000; PC = 0x274877989580 *)
mov x17 L0x400082a9d8;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989584 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #32]                              #! EA = L0x400082a9a0; PC = 0x274877989588 *)
mov L0x400082a9a0 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989592 *)
adds carry x19 x20 x5;
(* mul	x5, x11, x17                                #! PC = 0x274877989596 *)
mull mulHx11x17 x5 x11 x17;
(* adcs	x20, x21, x6                               #! PC = 0x274877989600 *)
adcs carry x20 x21 x6 carry;
(* mul	x6, x12, x17                                #! PC = 0x274877989604 *)
mull mulHx12x17 x6 x12 x17;
(* adcs	x21, x22, x7                               #! PC = 0x274877989608 *)
adcs carry x21 x22 x7 carry;
(* mul	x7, x13, x17                                #! PC = 0x274877989612 *)
mull mulHx13x17 x7 x13 x17;
(* adcs	x22, x23, x8                               #! PC = 0x274877989616 *)
adcs carry x22 x23 x8 carry;
(* mul	x8, x14, x17                                #! PC = 0x274877989620 *)
mull mulHx14x17 x8 x14 x17;
(* adcs	x23, x24, x9                               #! PC = 0x274877989624 *)
adcs carry x23 x24 x9 carry;
(* mul	x9, x15, x17                                #! PC = 0x274877989628 *)
mull mulHx15x17 x9 x15 x17;
(* adc	x24, x25, x10                               #! PC = 0x274877989632 *)
adc x24 x25 x10 carry;
(* mul	x10, x16, x17                               #! PC = 0x274877989636 *)
mull mulHx16x17 x10 x16 x17;
(* adds	x19, x19, x5                               #! PC = 0x274877989640 *)
adds carry x19 x19 x5;
(* umulh	x5, x11, x17                              #! PC = 0x274877989644 *)
mov x5 mulHx11x17;
(* adcs	x20, x20, x6                               #! PC = 0x274877989648 *)
adcs carry x20 x20 x6 carry;
(* umulh	x6, x12, x17                              #! PC = 0x274877989652 *)
mov x6 mulHx12x17;
(* adcs	x21, x21, x7                               #! PC = 0x274877989656 *)
adcs carry x21 x21 x7 carry;
(* umulh	x7, x13, x17                              #! PC = 0x274877989660 *)
mov x7 mulHx13x17;
(* adcs	x22, x22, x8                               #! PC = 0x274877989664 *)
adcs carry x22 x22 x8 carry;
(* umulh	x8, x14, x17                              #! PC = 0x274877989668 *)
mov x8 mulHx14x17;
(* adcs	x23, x23, x9                               #! PC = 0x274877989672 *)
adcs carry x23 x23 x9 carry;
(* umulh	x9, x15, x17                              #! PC = 0x274877989676 *)
mov x9 mulHx15x17;
(* adcs	x24, x24, x10                              #! PC = 0x274877989680 *)
adcs carry x24 x24 x10 carry;
(* umulh	x10, x16, x17                             #! PC = 0x274877989684 *)
mov x10 mulHx16x17;
(* adc	x25, xzr, xzr                               #! PC = 0x274877989688 *)
adc x25 0@uint64 0@uint64 carry;
(* str	x19, [x0, #40]                              #! EA = L0x400082a9a8; PC = 0x274877989692 *)
mov L0x400082a9a8 x19;
(* adds	x19, x20, x5                               #! PC = 0x274877989696 *)
adds carry x19 x20 x5;
(* adcs	x20, x21, x6                               #! PC = 0x274877989700 *)
adcs carry x20 x21 x6 carry;
(* adcs	x21, x22, x7                               #! PC = 0x274877989704 *)
adcs carry x21 x22 x7 carry;
(* adcs	x22, x23, x8                               #! PC = 0x274877989708 *)
adcs carry x22 x23 x8 carry;
(* adcs	x23, x24, x9                               #! PC = 0x274877989712 *)
adcs carry x23 x24 x9 carry;
(* adc	x24, x25, x10                               #! PC = 0x274877989716 *)
adc x24 x25 x10 carry;
(* stp	x19, x20, [x0, #48]                         #! EA = L0x400082a9b0; PC = 0x274877989720 *)
mov L0x400082a9b0 x19;
mov L0x400082a9b8 x20;
(* stp	x21, x22, [x0, #64]                         #! EA = L0x400082a9c0; PC = 0x274877989724 *)
mov L0x400082a9c0 x21;
mov L0x400082a9c8 x22;
(* stp	x23, x24, [x0, #80]                         #! EA = L0x400082a9d0; PC = 0x274877989728 *)
mov L0x400082a9d0 x23;
mov L0x400082a9d8 x24;
(* #ret                                            #! PC = 0x274877989732 *)
#ret                                            #! 0x274877989732 = 0x274877989732;

(* mul_384(t2, a->re+a->im, b->re+b->im) *)

rcut and [
       m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
       m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
       m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
         
       L0x40000168e8=m0, L0x40000168f0=m1, L0x40000168f8=m2,
       L0x4000016900=m3, L0x4000016908=m4, L0x4000016910=m5,

       limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0, L0x400082a8d8,
                 L0x400082a8e0, L0x400082a8e8, L0x400082a8f0, L0x400082a8f8,
                 L0x400082a900, L0x400082a908, L0x400082a910, L0x400082a918] <u
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5],
       limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930, L0x400082a938,
                 L0x400082a940, L0x400082a948, L0x400082a950, L0x400082a958,
                 L0x400082a960, L0x400082a968, L0x400082a970, L0x400082a978] <u
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5],
       limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990, L0x400082a998,
                 L0x400082a9a0, L0x400082a9a8, L0x400082a9b0, L0x400082a9b8,
                 L0x400082a9c0, L0x400082a9c8, L0x400082a9d0, L0x400082a9d8] <u
       limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                   m0,   m1,   m2,   m3,   m4,   m5]
     ];

(* ldp	x5, x6, [x3]                                #! EA = L0x40000168e8; Value = 0xb9feffffffffaaab; PC = 0x274877985180 *)
mov x5 L0x40000168e8;
mov x6 L0x40000168f0;
(* ldp	x7, x8, [x3, #16]                           #! EA = L0x40000168f8; Value = 0x6730d2a0f6b0f624; PC = 0x274877985184 *)
mov x7 L0x40000168f8;
mov x8 L0x4000016900;
(* ldp	x9, x10, [x3, #32]                          #! EA = L0x4000016908; Value = 0x4b1ba7b6434bacd7; PC = 0x274877985188 *)
mov x9 L0x4000016908;
mov x10 L0x4000016910;
(* #mov	x1, x0                                      #! PC = 0x274877985192 *)
#mov	%%x1, %%x0                                      #! 0x274877985192 = 0x274877985192;
(* #mov	x2, sp                                      #! PC = 0x274877985196 *)
#mov	%%x2, sp                                      #! 0x274877985196 = 0x274877985196;

ghost L0x400082a980p@uint64, L0x400082a988p@uint64, L0x400082a990p@uint64,
      L0x400082a998p@uint64, L0x400082a9a0p@uint64, L0x400082a9a8p@uint64,
      L0x400082a9b0p@uint64, L0x400082a9b8p@uint64, L0x400082a9c0p@uint64,
      L0x400082a9c8p@uint64, L0x400082a9d0p@uint64, L0x400082a9d8p@uint64 :
      and [L0x400082a980p = L0x400082a980, L0x400082a988p = L0x400082a988,
           L0x400082a990p = L0x400082a990, L0x400082a998p = L0x400082a998,
           L0x400082a9a0p = L0x400082a9a0, L0x400082a9a8p = L0x400082a9a8,
           L0x400082a9b0p = L0x400082a9b0, L0x400082a9b8p = L0x400082a9b8,
           L0x400082a9c0p = L0x400082a9c0, L0x400082a9c8p = L0x400082a9c8,
           L0x400082a9d0p = L0x400082a9d0, L0x400082a9d8p = L0x400082a9d8]
   && and [L0x400082a980p = L0x400082a980, L0x400082a988p = L0x400082a988,
           L0x400082a990p = L0x400082a990, L0x400082a998p = L0x400082a998,
           L0x400082a9a0p = L0x400082a9a0, L0x400082a9a8p = L0x400082a9a8,
           L0x400082a9b0p = L0x400082a9b0, L0x400082a9b8p = L0x400082a9b8,
           L0x400082a9c0p = L0x400082a9c0, L0x400082a9c8p = L0x400082a9c8,
           L0x400082a9d0p = L0x400082a9d0, L0x400082a9d8p = L0x400082a9d8];

(* #bl	0x4000012f60 <__sub_mod_384x384>            #! PC = 0x274877985200 *)
#bl	0x4000012f60 <__sub_mod_384x384>            #! 0x274877985200 = 0x274877985200;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a980; Value = 0x0000000000000000; PC = 0x274877984608 *)
mov x11 L0x400082a980;
mov x12 L0x400082a988;
(* ldp	x19, x20, [x2]                              #! EA = L0x400082a8c0; Value = 0x0000000000000000; PC = 0x274877984612 *)
mov x19 L0x400082a8c0;
mov x20 L0x400082a8c8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a990; Value = 0x0000000000000000; PC = 0x274877984616 *)
mov x13 L0x400082a990;
mov x14 L0x400082a998;
(* subs	x11, x11, x19                              #! PC = 0x274877984620 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x400082a8d0; Value = 0x0000000000000000; PC = 0x274877984624 *)
mov x21 L0x400082a8d0;
mov x22 L0x400082a8d8;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984628 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a9a0; Value = 0x0000000000000000; PC = 0x274877984632 *)
mov x15 L0x400082a9a0;
mov x16 L0x400082a9a8;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984636 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x400082a8e0; Value = 0x0000000000000000; PC = 0x274877984640 *)
mov x23 L0x400082a8e0;
mov x24 L0x400082a8e8;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984644 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x400082a980; PC = 0x274877984648 *)
mov L0x400082a980 x11;
mov L0x400082a988 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984652 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x400082a9b0; Value = 0x0000000000000000; PC = 0x274877984656 *)
mov x11 L0x400082a9b0;
mov x12 L0x400082a9b8;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984660 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a8f0; Value = 0x0000000000000000; PC = 0x274877984664 *)
mov x19 L0x400082a8f0;
mov x20 L0x400082a8f8;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082a990; PC = 0x274877984668 *)
mov L0x400082a990 x13;
mov L0x400082a998 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x400082a9c0; Value = 0x0000000000000000; PC = 0x274877984672 *)
mov x13 L0x400082a9c0;
mov x14 L0x400082a9c8;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a900; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x21 L0x400082a900;
mov x22 L0x400082a908;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984680 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082a9a0; PC = 0x274877984684 *)
mov L0x400082a9a0 x15;
mov L0x400082a9a8 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984688 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x400082a9d0; Value = 0x0000000000000000; PC = 0x274877984692 *)
mov x15 L0x400082a9d0;
mov x16 L0x400082a9d8;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984696 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a910; Value = 0x0000000000000000; PC = 0x274877984700 *)
mov x23 L0x400082a910;
mov x24 L0x400082a918;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984704 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984708 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984712 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984716 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984720 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984724 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984728 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984732 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984736 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984740 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984744 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984748 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984752 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984756 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984760 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x400082a9b0; PC = 0x274877984764 *)
mov L0x400082a9b0 x11;
mov L0x400082a9b8 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984768 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x400082a9c0; PC = 0x274877984772 *)
mov L0x400082a9c0 x13;
mov L0x400082a9c8 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x400082a9d0; PC = 0x274877984776 *)
mov L0x400082a9d0 x15;
mov L0x400082a9d8 x16;
(* #ret                                            #! PC = 0x274877984780 *)
#ret                                            #! 0x274877984780 = 0x274877984780;

assert true
    && eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]))
             (limbs 64 [L0x400082a980p, L0x400082a988p, L0x400082a990p,
                        L0x400082a998p, L0x400082a9a0p, L0x400082a9a8p,
                        L0x400082a9b0p, L0x400082a9b8p, L0x400082a9c0p,
                        L0x400082a9c8p, L0x400082a9d0p, L0x400082a9d8p])
	     (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
	                  m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]))
             (limbs 64 [L0x400082a980p, L0x400082a988p, L0x400082a990p,
                        L0x400082a998p, L0x400082a9a0p, L0x400082a9a8p,
                        L0x400082a9b0p, L0x400082a9b8p, L0x400082a9c0p,
                        L0x400082a9c8p, L0x400082a9d0p, L0x400082a9d8p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

assert eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
               (limbs 64 [c0, c1, c2, c3, c4, c5])))
             (limbs 64 [L0x400082a980p, L0x400082a988p, L0x400082a990p,
                        L0x400082a998p, L0x400082a9a0p, L0x400082a9a8p,
                        L0x400082a9b0p, L0x400082a9b8p, L0x400082a9c0p,
                        L0x400082a9c8p, L0x400082a9d0p, L0x400082a9d8p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

ghost L0x400082a980q@uint64, L0x400082a988q@uint64, L0x400082a990q@uint64,
      L0x400082a998q@uint64, L0x400082a9a0q@uint64, L0x400082a9a8q@uint64,
      L0x400082a9b0q@uint64, L0x400082a9b8q@uint64, L0x400082a9c0q@uint64,
      L0x400082a9c8q@uint64, L0x400082a9d0q@uint64, L0x400082a9d8q@uint64 :
      and [L0x400082a980q = L0x400082a980, L0x400082a988q = L0x400082a988,
           L0x400082a990q = L0x400082a990, L0x400082a998q = L0x400082a998,
           L0x400082a9a0q = L0x400082a9a0, L0x400082a9a8q = L0x400082a9a8,
           L0x400082a9b0q = L0x400082a9b0, L0x400082a9b8q = L0x400082a9b8,
           L0x400082a9c0q = L0x400082a9c0, L0x400082a9c8q = L0x400082a9c8,
           L0x400082a9d0q = L0x400082a9d0, L0x400082a9d8q = L0x400082a9d8]
   && and [L0x400082a980q = L0x400082a980, L0x400082a988q = L0x400082a988,
           L0x400082a990q = L0x400082a990, L0x400082a998q = L0x400082a998,
           L0x400082a9a0q = L0x400082a9a0, L0x400082a9a8q = L0x400082a9a8,
           L0x400082a9b0q = L0x400082a9b0, L0x400082a9b8q = L0x400082a9b8,
           L0x400082a9c0q = L0x400082a9c0, L0x400082a9c8q = L0x400082a9c8,
           L0x400082a9d0q = L0x400082a9d0, L0x400082a9d8q = L0x400082a9d8];

(* #add	x2, sp, #0x60                               #! PC = 0x274877985204 *)
#add	%%x2, sp, #0x60                               #! 0x274877985204 = 0x274877985204;
(* #bl	0x4000012f60 <__sub_mod_384x384>            #! PC = 0x274877985208 *)
#bl	0x4000012f60 <__sub_mod_384x384>            #! 0x274877985208 = 0x274877985208;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a980; Value = 0x0000000000000000; PC = 0x274877984608 *)
mov x11 L0x400082a980;
mov x12 L0x400082a988;
(* ldp	x19, x20, [x2]                              #! EA = L0x400082a920; Value = 0x0000000000000000; PC = 0x274877984612 *)
mov x19 L0x400082a920;
mov x20 L0x400082a928;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a990; Value = 0x0000000000000000; PC = 0x274877984616 *)
mov x13 L0x400082a990;
mov x14 L0x400082a998;
(* subs	x11, x11, x19                              #! PC = 0x274877984620 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x400082a930; Value = 0x0000000000000000; PC = 0x274877984624 *)
mov x21 L0x400082a930;
mov x22 L0x400082a938;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984628 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a9a0; Value = 0x0000000000000000; PC = 0x274877984632 *)
mov x15 L0x400082a9a0;
mov x16 L0x400082a9a8;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984636 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x400082a940; Value = 0x0000000000000000; PC = 0x274877984640 *)
mov x23 L0x400082a940;
mov x24 L0x400082a948;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984644 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x400082a980; PC = 0x274877984648 *)
mov L0x400082a980 x11;
mov L0x400082a988 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984652 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x400082a9b0; Value = 0x0000000000000000; PC = 0x274877984656 *)
mov x11 L0x400082a9b0;
mov x12 L0x400082a9b8;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984660 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a950; Value = 0x0000000000000000; PC = 0x274877984664 *)
mov x19 L0x400082a950;
mov x20 L0x400082a958;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082a990; PC = 0x274877984668 *)
mov L0x400082a990 x13;
mov L0x400082a998 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x400082a9c0; Value = 0x0000000000000000; PC = 0x274877984672 *)
mov x13 L0x400082a9c0;
mov x14 L0x400082a9c8;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a960; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x21 L0x400082a960;
mov x22 L0x400082a968;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984680 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082a9a0; PC = 0x274877984684 *)
mov L0x400082a9a0 x15;
mov L0x400082a9a8 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984688 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x400082a9d0; Value = 0x0000000000000000; PC = 0x274877984692 *)
mov x15 L0x400082a9d0;
mov x16 L0x400082a9d8;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984696 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a970; Value = 0x0000000000000000; PC = 0x274877984700 *)
mov x23 L0x400082a970;
mov x24 L0x400082a978;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984704 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984708 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984712 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984716 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984720 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984724 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984728 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984732 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984736 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984740 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984744 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984748 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984752 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984756 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984760 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x400082a9b0; PC = 0x274877984764 *)
mov L0x400082a9b0 x11;
mov L0x400082a9b8 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984768 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x400082a9c0; PC = 0x274877984772 *)
mov L0x400082a9c0 x13;
mov L0x400082a9c8 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x400082a9d0; PC = 0x274877984776 *)
mov L0x400082a9d0 x15;
mov L0x400082a9d8 x16;
(* #ret                                            #! PC = 0x274877984780 *)
#ret                                            #! 0x274877984780 = 0x274877984780;

assert true
    && eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              (limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930,
                         L0x400082a938, L0x400082a940, L0x400082a948,
                         L0x400082a950, L0x400082a958, L0x400082a960,
                         L0x400082a968, L0x400082a970, L0x400082a978]))
             (limbs 64 [L0x400082a980q, L0x400082a988q, L0x400082a990q,
                        L0x400082a998q, L0x400082a9a0q, L0x400082a9a8q,
                        L0x400082a9b0q, L0x400082a9b8q, L0x400082a9c0q,
                        L0x400082a9c8q, L0x400082a9d0q, L0x400082a9d8q])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              (limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930,
                         L0x400082a938, L0x400082a940, L0x400082a948,
                         L0x400082a950, L0x400082a958, L0x400082a960,
                         L0x400082a968, L0x400082a970, L0x400082a978]))
             (limbs 64 [L0x400082a980q, L0x400082a988q, L0x400082a990q,
                        L0x400082a998q, L0x400082a9a0q, L0x400082a9a8q,
                        L0x400082a9b0q, L0x400082a9b8q, L0x400082a9c0q,
                        L0x400082a9c8q, L0x400082a9d0q, L0x400082a9d8q])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

assert eqmod ((limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) +
              ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
               (limbs 64 [d0, d1, d2, d3, d4, d5])) +
              ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
               (limbs 64 [c0, c1, c2, c3, c4, c5])))
             (limbs 64 [L0x400082a980p, L0x400082a988p, L0x400082a990p,
                        L0x400082a998p, L0x400082a9a0p, L0x400082a9a8p,
                        L0x400082a9b0p, L0x400082a9b8p, L0x400082a9c0p,
                        L0x400082a9c8p, L0x400082a9d0p, L0x400082a9d8p])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5])
    && true;

ghost L0x400082a8c0o@uint64, L0x400082a8c8o@uint64, L0x400082a8d0o@uint64,
      L0x400082a8d8o@uint64, L0x400082a8e0o@uint64, L0x400082a8e8o@uint64,
      L0x400082a8f0o@uint64, L0x400082a8f8o@uint64, L0x400082a900o@uint64,
      L0x400082a908o@uint64, L0x400082a910o@uint64, L0x400082a918o@uint64 :
      and [L0x400082a8c0o = L0x400082a8c0, L0x400082a8c8o = L0x400082a8c8,
           L0x400082a8d0o = L0x400082a8d0, L0x400082a8d8o = L0x400082a8d8,
           L0x400082a8e0o = L0x400082a8e0, L0x400082a8e8o = L0x400082a8e8,
           L0x400082a8f0o = L0x400082a8f0, L0x400082a8f8o = L0x400082a8f8,
           L0x400082a900o = L0x400082a900, L0x400082a908o = L0x400082a908,
           L0x400082a910o = L0x400082a910, L0x400082a918o = L0x400082a918]
   && and [L0x400082a8c0o = L0x400082a8c0, L0x400082a8c8o = L0x400082a8c8,
           L0x400082a8d0o = L0x400082a8d0, L0x400082a8d8o = L0x400082a8d8,
           L0x400082a8e0o = L0x400082a8e0, L0x400082a8e8o = L0x400082a8e8,
           L0x400082a8f0o = L0x400082a8f0, L0x400082a8f8o = L0x400082a8f8,
           L0x400082a900o = L0x400082a900, L0x400082a908o = L0x400082a908,
           L0x400082a910o = L0x400082a910, L0x400082a918o = L0x400082a918];

(* #mov	x1, sp                                      #! PC = 0x274877985212 *)
#mov	%%x1, sp                                      #! 0x274877985212 = 0x274877985212;
(* #add	x2, sp, #0x60                               #! PC = 0x274877985216 *)
#add	%%x2, sp, #0x60                               #! 0x274877985216 = 0x274877985216;
(* #mov	x0, sp                                      #! PC = 0x274877985220 *)
#mov	%%x0, sp                                      #! 0x274877985220 = 0x274877985220;
(* #bl	0x4000012f60 <__sub_mod_384x384>            #! PC = 0x274877985224 *)
#bl	0x4000012f60 <__sub_mod_384x384>            #! 0x274877985224 = 0x274877985224;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a8c0; Value = 0x0000000000000000; PC = 0x274877984608 *)
mov x11 L0x400082a8c0;
mov x12 L0x400082a8c8;
(* ldp	x19, x20, [x2]                              #! EA = L0x400082a920; Value = 0x0000000000000000; PC = 0x274877984612 *)
mov x19 L0x400082a920;
mov x20 L0x400082a928;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a8d0; Value = 0x0000000000000000; PC = 0x274877984616 *)
mov x13 L0x400082a8d0;
mov x14 L0x400082a8d8;
(* subs	x11, x11, x19                              #! PC = 0x274877984620 *)
subc carry x11 x11 x19;
(* ldp	x21, x22, [x2, #16]                         #! EA = L0x400082a930; Value = 0x0000000000000000; PC = 0x274877984624 *)
mov x21 L0x400082a930;
mov x22 L0x400082a938;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984628 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a8e0; Value = 0x0000000000000000; PC = 0x274877984632 *)
mov x15 L0x400082a8e0;
mov x16 L0x400082a8e8;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984636 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #32]                         #! EA = L0x400082a940; Value = 0x0000000000000000; PC = 0x274877984640 *)
mov x23 L0x400082a940;
mov x24 L0x400082a948;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984644 *)
sbcs carry x14 x14 x22 carry;
(* stp	x11, x12, [x0]                              #! EA = L0x400082a8c0; PC = 0x274877984648 *)
mov L0x400082a8c0 x11;
mov L0x400082a8c8 x12;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984652 *)
sbcs carry x15 x15 x23 carry;
(* ldp	x11, x12, [x1, #48]                         #! EA = L0x400082a8f0; Value = 0x0000000000000000; PC = 0x274877984656 *)
mov x11 L0x400082a8f0;
mov x12 L0x400082a8f8;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984660 *)
sbcs carry x16 x16 x24 carry;
(* ldp	x19, x20, [x2, #48]                         #! EA = L0x400082a950; Value = 0x0000000000000000; PC = 0x274877984664 *)
mov x19 L0x400082a950;
mov x20 L0x400082a958;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082a8d0; PC = 0x274877984668 *)
mov L0x400082a8d0 x13;
mov L0x400082a8d8 x14;
(* ldp	x13, x14, [x1, #64]                         #! EA = L0x400082a900; Value = 0x0000000000000000; PC = 0x274877984672 *)
mov x13 L0x400082a900;
mov x14 L0x400082a908;
(* ldp	x21, x22, [x2, #64]                         #! EA = L0x400082a960; Value = 0x0000000000000000; PC = 0x274877984676 *)
mov x21 L0x400082a960;
mov x22 L0x400082a968;
(* sbcs	x11, x11, x19                              #! PC = 0x274877984680 *)
sbcs carry x11 x11 x19 carry;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082a8e0; PC = 0x274877984684 *)
mov L0x400082a8e0 x15;
mov L0x400082a8e8 x16;
(* sbcs	x12, x12, x20                              #! PC = 0x274877984688 *)
sbcs carry x12 x12 x20 carry;
(* ldp	x15, x16, [x1, #80]                         #! EA = L0x400082a910; Value = 0x0000000000000000; PC = 0x274877984692 *)
mov x15 L0x400082a910;
mov x16 L0x400082a918;
(* sbcs	x13, x13, x21                              #! PC = 0x274877984696 *)
sbcs carry x13 x13 x21 carry;
(* ldp	x23, x24, [x2, #80]                         #! EA = L0x400082a970; Value = 0x0000000000000000; PC = 0x274877984700 *)
mov x23 L0x400082a970;
mov x24 L0x400082a978;
(* sbcs	x14, x14, x22                              #! PC = 0x274877984704 *)
sbcs carry x14 x14 x22 carry;
(* sbcs	x15, x15, x23                              #! PC = 0x274877984708 *)
sbcs carry x15 x15 x23 carry;
(* sbcs	x16, x16, x24                              #! PC = 0x274877984712 *)
sbcs carry x16 x16 x24 carry;
(* ngc	x17, xzr                                    #! PC = 0x274877984716 *)
cmov x17 carry 0@uint64 0xffffffffffffffff@uint64;
(* and	x19, x5, x17                                #! PC = 0x274877984720 *)
and x19@uint64 x5 x17;
(* and	x20, x6, x17                                #! PC = 0x274877984724 *)
and x20@uint64 x6 x17;
(* adds	x11, x11, x19                              #! PC = 0x274877984728 *)
adds carry x11 x11 x19;
(* and	x21, x7, x17                                #! PC = 0x274877984732 *)
and x21@uint64 x7 x17;
(* adcs	x12, x12, x20                              #! PC = 0x274877984736 *)
adcs carry x12 x12 x20 carry;
(* and	x22, x8, x17                                #! PC = 0x274877984740 *)
and x22@uint64 x8 x17;
(* adcs	x13, x13, x21                              #! PC = 0x274877984744 *)
adcs carry x13 x13 x21 carry;
(* and	x23, x9, x17                                #! PC = 0x274877984748 *)
and x23@uint64 x9 x17;
(* adcs	x14, x14, x22                              #! PC = 0x274877984752 *)
adcs carry x14 x14 x22 carry;
(* and	x24, x10, x17                               #! PC = 0x274877984756 *)
and x24@uint64 x10 x17;
(* adcs	x15, x15, x23                              #! PC = 0x274877984760 *)
adcs carry x15 x15 x23 carry;
(* stp	x11, x12, [x0, #48]                         #! EA = L0x400082a8f0; PC = 0x274877984764 *)
mov L0x400082a8f0 x11;
mov L0x400082a8f8 x12;
(* adc	x16, x16, x24                               #! PC = 0x274877984768 *)
adcs dontcare x16 x16 x24 carry;
(* stp	x13, x14, [x0, #64]                         #! EA = L0x400082a900; PC = 0x274877984772 *)
mov L0x400082a900 x13;
mov L0x400082a908 x14;
(* stp	x15, x16, [x0, #80]                         #! EA = L0x400082a910; PC = 0x274877984776 *)
mov L0x400082a910 x15;
mov L0x400082a918 x16;
(* #ret                                            #! PC = 0x274877984780 *)
#ret                                            #! 0x274877984780 = 0x274877984780;

assert true
    && eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]) +
              (limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930,
                         L0x400082a938, L0x400082a940, L0x400082a948,
                         L0x400082a950, L0x400082a958, L0x400082a960,
                         L0x400082a968, L0x400082a970, L0x400082a978]))
             (limbs 64 [L0x400082a8c0o, L0x400082a8c8o, L0x400082a8d0o,
                        L0x400082a8d8o, L0x400082a8e0o, L0x400082a8e8o,
                        L0x400082a8f0o, L0x400082a8f8o, L0x400082a900o,
                        L0x400082a908o, L0x400082a910o, L0x400082a918o])
             (limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                          m0,   m1,   m2,   m3,   m4,   m5]);

assume eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]) +
              (limbs 64 [L0x400082a920, L0x400082a928, L0x400082a930,
                         L0x400082a938, L0x400082a940, L0x400082a948,
                         L0x400082a950, L0x400082a958, L0x400082a960,
                         L0x400082a968, L0x400082a970, L0x400082a978]))
             (limbs 64 [L0x400082a8c0o, L0x400082a8c8o, L0x400082a8d0o,
                        L0x400082a8d8o, L0x400082a8e0o, L0x400082a8e8o,
                        L0x400082a8f0o, L0x400082a8f8o, L0x400082a900o,
                        L0x400082a908o, L0x400082a910o, L0x400082a918o])
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;

assert eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]) +
              ((limbs 64 [b0, b1, b2, b3, b4, b5]) *
               (limbs 64 [d0, d1, d2, d3, d4, d5])))
             ((limbs 64 [a0, a1, a2, a3, a4, a5]) *
              (limbs 64 [c0, c1, c2, c3, c4, c5]))
	     (limbs 64 [0, 0, 0, 0, 0, 0, m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: results before Montgomery reduction *)

assert eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]) +
              (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) * I)
             (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
               (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
              ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
               (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
             [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1]
    && true;

cut and [
      eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                        L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                        L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                        L0x400082a908, L0x400082a910, L0x400082a918]) +
             (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                        L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                        L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) * I)
            (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
              (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
             ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
              (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
            [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1],
            
      eqmod m0 1 2,
      eqmod (1 + m0 * n) 0 (2**64),

      x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
      x4 = n
    ]
 && and [
      m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
      m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
      m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    
      x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
      
      limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0, L0x400082a8d8,
                L0x400082a8e0, L0x400082a8e8, L0x400082a8f0, L0x400082a8f8,
                L0x400082a900, L0x400082a908, L0x400082a910, L0x400082a918] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],
      limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990, L0x400082a998,
                L0x400082a9a0, L0x400082a9a8, L0x400082a9b0, L0x400082a9b8,
                L0x400082a9c0, L0x400082a9c8, L0x400082a9d0, L0x400082a9d8] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5]
    ];

(* NOTE: simplify assumptions just for reduction *)

ecut and [
       eqmod (1 + m0 * n) 0 (2**64),

       x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
       x4 = n
     ];

(* #mov	x1, sp                                      #! PC = 0x274877985228 *)
#mov	%%x1, sp                                      #! 0x274877985228 = 0x274877985228;
(* #add	x0, x26, #0x0                               #! PC = 0x274877985232 *)
#add	%%x0, %%x26, #0x0                               #! 0x274877985232 = 0x274877985232;
(* #bl	0x4000013d80 <__mul_by_1_mont_384>          #! PC = 0x274877985236 *)
#bl	0x4000013d80 <__mul_by_1_mont_384>          #! 0x274877985236 = 0x274877985236;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a8c0; Value = 0x0000000000000000; PC = 0x274877988224 *)
mov x11 L0x400082a8c0;
mov x12 L0x400082a8c8;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a8d0; Value = 0x0000000000000000; PC = 0x274877988228 *)
mov x13 L0x400082a8d0;
mov x14 L0x400082a8d8;
(* mul	x26, x4, x11                                #! PC = 0x274877988232 *)
mull mulHx4x11 x26 x4 x11;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a8e0; Value = 0x0000000000000000; PC = 0x274877988236 *)
mov x15 L0x400082a8e0;
mov x16 L0x400082a8e8;
(* mul	x20, x6, x26                                #! PC = 0x274877988240 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988244 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988248 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988252 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988256 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988260 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988264 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988268 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988272 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988276 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988280 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988284 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988288 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988292 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988296 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988300 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988304 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988308 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988312 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988316 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988320 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988324 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988328 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988332 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988336 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988340 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988344 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988348 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988352 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988356 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988360 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988364 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988368 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988372 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988376 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988380 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988384 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988388 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988392 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988396 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988400 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988404 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988408 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988412 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988416 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988420 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988424 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988428 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988432 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988436 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988440 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988444 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988448 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988452 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988456 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988460 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988464 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988468 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988472 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988476 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988480 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988484 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988488 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988492 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988496 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988500 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988504 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988508 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988512 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988516 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988520 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988524 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988528 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988532 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988536 *)
adc x16 x16 x25 carry;

(* NOTE: middle of reduction *)
(*
ecut and [
       mulHx4x11 * (2**64) + x26 = x4 * x11,
       eqmod (limbs 64 [0, 0, 0, x11, x12, x13, x14, x15, x16])
             (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                        L0x400082a8d8, L0x400082a8e0, L0x400082a8e8])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
       eqmod (1 + m0 * n) 0 (2**64),

       x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
       x4 = n
     ];
*)

(* mul	x20, x6, x26                                #! PC = 0x274877988540 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988544 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988548 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988552 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988556 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988560 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988564 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988568 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988572 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988576 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988580 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988584 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988588 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988592 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988596 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988600 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988604 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988608 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988612 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988616 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988620 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988624 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988628 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988632 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988636 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988640 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988644 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988648 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988652 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988656 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988660 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988664 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988668 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988672 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988676 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988680 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988684 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988688 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988692 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988696 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988700 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988704 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988708 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988712 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988716 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988720 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988724 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988728 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988732 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988736 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988740 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988744 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988748 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988752 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988756 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988760 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988764 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988768 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988772 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988776 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988780 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988784 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988788 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988792 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988796 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988800 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988804 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988808 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988812 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988816 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988820 *)
adcs carry x13 x13 x22 carry;
(* adcs	x14, x14, x23                              #! PC = 0x274877988824 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988828 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988832 *)
adc x16 x16 x25 carry;
(* #ret                                            #! PC = 0x274877988836 *)
#ret                                            #! 0x274877988836 = 0x274877988836;

(* end of redc *)

(* NOTE: simplify for later reduction *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0, x11, x12, x13, x14, x15, x16])
             (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                        L0x400082a8d8, L0x400082a8e0, L0x400082a8e8])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
             
       eqmod (1 + m0 * n) 0 (2**64),
             
       x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
       x4 = n
     ];
rcut and [
      m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
      m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
      m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    
      x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
      
      limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0, L0x400082a8d8,
                L0x400082a8e0, L0x400082a8e8, L0x400082a8f0, L0x400082a8f8,
                L0x400082a900, L0x400082a908, L0x400082a910, L0x400082a918] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],
      limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990, L0x400082a998,
                L0x400082a9a0, L0x400082a9a8, L0x400082a9b0, L0x400082a9b8,
                L0x400082a9c0, L0x400082a9c8, L0x400082a9d0, L0x400082a9d8] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],

      limbs 64 [x11, x12, x13, x14, x15, x16] <u
      2@384 * (limbs 64 [m0, m1, m2, m3, m4, m5])
    ];

ghost x11o@uint64, x12o@uint64, x13o@uint64,
      x14o@uint64, x15o@uint64, x16o@uint64 :
      and [x11o = x11, x12o = x12, x13o = x13,
           x14o = x14, x15o = x15, x16o = x16]
   && and [x11o = x11, x12o = x12, x13o = x13,
           x14o = x14, x15o = x15, x16o = x16];

(* #bl	0x4000014000 <__redc_tail_mont_384>         #! PC = 0x274877985240 *)
#bl	0x4000014000 <__redc_tail_mont_384>         #! 0x274877985240 = 0x274877985240;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082a8f0; Value = 0x0000000000000000; PC = 0x274877988864 *)
mov x19 L0x400082a8f0;
mov x20 L0x400082a8f8;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082a900; Value = 0x0000000000000000; PC = 0x274877988868 *)
mov x21 L0x400082a900;
mov x22 L0x400082a908;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082a910; Value = 0x0000000000000000; PC = 0x274877988872 *)
mov x23 L0x400082a910;
mov x24 L0x400082a918;
(* adds	x11, x11, x19                              #! PC = 0x274877988876 *)
adds carry x11 x11 x19;
(* adcs	x12, x12, x20                              #! PC = 0x274877988880 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0x274877988884 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0x274877988888 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877988892 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877988896 *)
adcs carry x16 x16 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988900 *)
adc x25 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877988904 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877988908 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877988912 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877988916 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877988920 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877988924 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x25, xzr                              #! PC = 0x274877988928 *)
sbcs carry dontcare x25 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877988932 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877988936 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877988940 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877988944 *)
cmov x14 carry x22 x14;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877988948 *)
cmov x15 carry x23 x15;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877988952 *)
cmov x16 carry x24 x16;
(* stp	x11, x12, [x0]                              #! EA = L0x400082ac48; PC = 0x274877988956 *)
mov L0x400082ac48 x11;
mov L0x400082ac50 x12;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082ac58; PC = 0x274877988960 *)
mov L0x400082ac58 x13;
mov L0x400082ac60 x14;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082ac68; PC = 0x274877988964 *)
mov L0x400082ac68 x15;
mov L0x400082ac70 x16;
(* #ret                                            #! PC = 0x274877988968 *)
#ret                                            #! 0x274877988968 = 0x274877988968;

assert true
    && eqmod (limbs 64 [L0x400082ac48, L0x400082ac50, L0x400082ac58,
                        L0x400082ac60, L0x400082ac68, L0x400082ac70])
             ((limbs 64 [x11o, x12o, x13o, x14o, x15o, x16o]) +
              (limbs 64 [L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x400082ac48, L0x400082ac50, L0x400082ac58,
                        L0x400082ac60, L0x400082ac68, L0x400082ac70])
             ((limbs 64 [x11o, x12o, x13o, x14o, x15o, x16o]) +
              (limbs 64 [L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: simplify assumptions just for reduction *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x400082ac48, L0x400082ac50, L0x400082ac58,
                        L0x400082ac60, L0x400082ac68, L0x400082ac70])
             (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                        L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                        L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                        L0x400082a908, L0x400082a910, L0x400082a918])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
             
       eqmod (1 + m0 * n) 0 (2**64),
             
       x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
       x4 = n
     ];

(* #add	x1, sp, #0xc0                               #! PC = 0x274877985244 *)
#add	%%x1, sp, #0xc0                               #! 0x274877985244 = 0x274877985244;
(* #add	x0, x0, #0x30                               #! PC = 0x274877985248 *)
#add	%%x0, %%x0, #0x30                               #! 0x274877985248 = 0x274877985248;
(* #bl	0x4000013d80 <__mul_by_1_mont_384>          #! PC = 0x274877985252 *)
#bl	0x4000013d80 <__mul_by_1_mont_384>          #! 0x274877985252 = 0x274877985252;
(* ldp	x11, x12, [x1]                              #! EA = L0x400082a980; Value = 0x0000000000000000; PC = 0x274877988224 *)
mov x11 L0x400082a980;
mov x12 L0x400082a988;
(* ldp	x13, x14, [x1, #16]                         #! EA = L0x400082a990; Value = 0x0000000000000000; PC = 0x274877988228 *)
mov x13 L0x400082a990;
mov x14 L0x400082a998;
(* mul	x26, x4, x11                                #! PC = 0x274877988232 *)
mull mulHx4x11 x26 x4 x11;
(* ldp	x15, x16, [x1, #32]                         #! EA = L0x400082a9a0; Value = 0x0000000000000000; PC = 0x274877988236 *)
mov x15 L0x400082a9a0;
mov x16 L0x400082a9a8;
(* mul	x20, x6, x26                                #! PC = 0x274877988240 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988244 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988248 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988252 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988256 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988260 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988264 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988268 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988272 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988276 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988280 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988284 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988288 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988292 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988296 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988300 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988304 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988308 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988312 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988316 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988320 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988324 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988328 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988332 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988336 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988340 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988344 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988348 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988352 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988356 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988360 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988364 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988368 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988372 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988376 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988380 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988384 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988388 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988392 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988396 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988400 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988404 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988408 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988412 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988416 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988420 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988424 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988428 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988432 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988436 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988440 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988444 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988448 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988452 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988456 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988460 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988464 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988468 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988472 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988476 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988480 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988484 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988488 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988492 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988496 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988500 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988504 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988508 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988512 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988516 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988520 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988524 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988528 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988532 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988536 *)
adc x16 x16 x25 carry;

(* NOTE: middle of reduction *)
(*
ecut and [
       mulHx4x11 * (2**64) + x26 = x4 * x11,
       eqmod (limbs 64 [0, 0, 0, x11, x12, x13, x14, x15, x16])
             (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),
       eqmod (1 + m0 * n) 0 (2**64),

       x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
       x4 = n
     ];
*)

(* mul	x20, x6, x26                                #! PC = 0x274877988540 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988544 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988548 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988552 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988556 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988560 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988564 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988568 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988572 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988576 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988580 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988584 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988588 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988592 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988596 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988600 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988604 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988608 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988612 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988616 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988620 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988624 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988628 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988632 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988636 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988640 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988644 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988648 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988652 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988656 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988660 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988664 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988668 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988672 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988676 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988680 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988684 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988688 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988692 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988696 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988700 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988704 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988708 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988712 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988716 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988720 *)
adcs carry x13 x13 x22 carry;
(* mul	x26, x4, x11                                #! PC = 0x274877988724 *)
mull mulHx4x11 x26 x4 x11;
(* adcs	x14, x14, x23                              #! PC = 0x274877988728 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988732 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988736 *)
adc x16 x16 x25 carry;
(* mul	x20, x6, x26                                #! PC = 0x274877988740 *)
mull mulHx6x26 x20 x6 x26;
(* mul	x21, x7, x26                                #! PC = 0x274877988744 *)
mull mulHx7x26 x21 x7 x26;
(* mul	x22, x8, x26                                #! PC = 0x274877988748 *)
mull mulHx8x26 x22 x8 x26;
(* mul	x23, x9, x26                                #! PC = 0x274877988752 *)
mull mulHx9x26 x23 x9 x26;
(* mul	x24, x10, x26                               #! PC = 0x274877988756 *)
mull mulHx10x26 x24 x10 x26;
(* cmp	x11, #0x1                                   #! PC = 0x274877988760 *)
subc carry dontcare x11 1@uint64;
(* umulh	x11, x5, x26                              #! PC = 0x274877988764 *)
(* mov x11 mulHx5x26; *)
(* NOTE: Montgomery reduction *)
mull x11new mulLx5x26 x5 x26;
adds mycarry zeros mulLx5x26 x11;
assert eqmod zeros 0 (2**64) && true;
assume zeros=0 && zeros=0@64;
assert true && mycarry=carry;
assume mycarry=carry && true;
mov x11 x11new;
(* adcs	x20, x20, x12                              #! PC = 0x274877988768 *)
adcs carry x20 x20 x12 carry;
(* umulh	x12, x6, x26                              #! PC = 0x274877988772 *)
mov x12 mulHx6x26;
(* adcs	x21, x21, x13                              #! PC = 0x274877988776 *)
adcs carry x21 x21 x13 carry;
(* umulh	x13, x7, x26                              #! PC = 0x274877988780 *)
mov x13 mulHx7x26;
(* adcs	x22, x22, x14                              #! PC = 0x274877988784 *)
adcs carry x22 x22 x14 carry;
(* umulh	x14, x8, x26                              #! PC = 0x274877988788 *)
mov x14 mulHx8x26;
(* adcs	x23, x23, x15                              #! PC = 0x274877988792 *)
adcs carry x23 x23 x15 carry;
(* umulh	x15, x9, x26                              #! PC = 0x274877988796 *)
mov x15 mulHx9x26;
(* adcs	x24, x24, x16                              #! PC = 0x274877988800 *)
adcs carry x24 x24 x16 carry;
(* umulh	x16, x10, x26                             #! PC = 0x274877988804 *)
mov x16 mulHx10x26;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988808 *)
adc x25 0@uint64 0@uint64 carry;
(* adds	x11, x11, x20                              #! PC = 0x274877988812 *)
adds carry x11 x11 x20;
(* adcs	x12, x12, x21                              #! PC = 0x274877988816 *)
adcs carry x12 x12 x21 carry;
(* adcs	x13, x13, x22                              #! PC = 0x274877988820 *)
adcs carry x13 x13 x22 carry;
(* adcs	x14, x14, x23                              #! PC = 0x274877988824 *)
adcs carry x14 x14 x23 carry;
(* adcs	x15, x15, x24                              #! PC = 0x274877988828 *)
adcs carry x15 x15 x24 carry;
(* adc	x16, x16, x25                               #! PC = 0x274877988832 *)
adc x16 x16 x25 carry;
(* #ret                                            #! PC = 0x274877988836 *)
#ret                                            #! 0x274877988836 = 0x274877988836;

(* end of redc *)

rcut and [
      m0 = 0xb9feffffffffaaab@64, m1 = 0x1eabfffeb153ffff@64,
      m2 = 0x6730d2a0f6b0f624@64, m3 = 0x64774b84f38512bf@64,
      m4 = 0x4b1ba7b6434bacd7@64, m5 = 0x1a0111ea397fe69a@64,
    
      x5 = m0, x6 = m1, x7 = m2, x8 = m3, x9 = m4, x10 = m5,
      
      limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0, L0x400082a8d8,
                L0x400082a8e0, L0x400082a8e8, L0x400082a8f0, L0x400082a8f8,
                L0x400082a900, L0x400082a908, L0x400082a910, L0x400082a918] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],
      limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990, L0x400082a998,
                L0x400082a9a0, L0x400082a9a8, L0x400082a9b0, L0x400082a9b8,
                L0x400082a9c0, L0x400082a9c8, L0x400082a9d0, L0x400082a9d8] <u
      limbs 64 [0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                  m0,   m1,   m2,   m3,   m4,   m5],

      limbs 64 [x11, x12, x13, x14, x15, x16] <u
      2@384 * (limbs 64 [m0, m1, m2, m3, m4, m5])
    ];

ghost x11p@uint64, x12p@uint64, x13p@uint64,
      x14p@uint64, x15p@uint64, x16p@uint64 :
      and [x11p = x11, x12p = x12, x13p = x13,
           x14p = x14, x15p = x15, x16p = x16]
   && and [x11p = x11, x12p = x12, x13p = x13,
           x14p = x14, x15p = x15, x16p = x16];

(* #bl	0x4000014000 <__redc_tail_mont_384>         #! PC = 0x274877985256 *)
#bl	0x4000014000 <__redc_tail_mont_384>         #! 0x274877985256 = 0x274877985256;
(* ldp	x19, x20, [x1, #48]                         #! EA = L0x400082a9b0; Value = 0x0000000000000000; PC = 0x274877988864 *)
mov x19 L0x400082a9b0;
mov x20 L0x400082a9b8;
(* ldp	x21, x22, [x1, #64]                         #! EA = L0x400082a9c0; Value = 0x0000000000000000; PC = 0x274877988868 *)
mov x21 L0x400082a9c0;
mov x22 L0x400082a9c8;
(* ldp	x23, x24, [x1, #80]                         #! EA = L0x400082a9d0; Value = 0x0000000000000000; PC = 0x274877988872 *)
mov x23 L0x400082a9d0;
mov x24 L0x400082a9d8;
(* adds	x11, x11, x19                              #! PC = 0x274877988876 *)
adds carry x11 x11 x19;
(* adcs	x12, x12, x20                              #! PC = 0x274877988880 *)
adcs carry x12 x12 x20 carry;
(* adcs	x13, x13, x21                              #! PC = 0x274877988884 *)
adcs carry x13 x13 x21 carry;
(* adcs	x14, x14, x22                              #! PC = 0x274877988888 *)
adcs carry x14 x14 x22 carry;
(* adcs	x15, x15, x23                              #! PC = 0x274877988892 *)
adcs carry x15 x15 x23 carry;
(* adcs	x16, x16, x24                              #! PC = 0x274877988896 *)
adcs carry x16 x16 x24 carry;
(* adc	x25, xzr, xzr                               #! PC = 0x274877988900 *)
adc x25 0@uint64 0@uint64 carry;
(* subs	x19, x11, x5                               #! PC = 0x274877988904 *)
subc carry x19 x11 x5;
(* sbcs	x20, x12, x6                               #! PC = 0x274877988908 *)
sbcs carry x20 x12 x6 carry;
(* sbcs	x21, x13, x7                               #! PC = 0x274877988912 *)
sbcs carry x21 x13 x7 carry;
(* sbcs	x22, x14, x8                               #! PC = 0x274877988916 *)
sbcs carry x22 x14 x8 carry;
(* sbcs	x23, x15, x9                               #! PC = 0x274877988920 *)
sbcs carry x23 x15 x9 carry;
(* sbcs	x24, x16, x10                              #! PC = 0x274877988924 *)
sbcs carry x24 x16 x10 carry;
(* sbcs	xzr, x25, xzr                              #! PC = 0x274877988928 *)
sbcs carry dontcare x25 0@uint64 carry;
(* csel	x11, x11, x19, cc  // cc = lo, ul, last    #! PC = 0x274877988932 *)
cmov x11 carry x19 x11;
(* csel	x12, x12, x20, cc  // cc = lo, ul, last    #! PC = 0x274877988936 *)
cmov x12 carry x20 x12;
(* csel	x13, x13, x21, cc  // cc = lo, ul, last    #! PC = 0x274877988940 *)
cmov x13 carry x21 x13;
(* csel	x14, x14, x22, cc  // cc = lo, ul, last    #! PC = 0x274877988944 *)
cmov x14 carry x22 x14;
(* csel	x15, x15, x23, cc  // cc = lo, ul, last    #! PC = 0x274877988948 *)
cmov x15 carry x23 x15;
(* csel	x16, x16, x24, cc  // cc = lo, ul, last    #! PC = 0x274877988952 *)
cmov x16 carry x24 x16;
(* stp	x11, x12, [x0]                              #! EA = L0x400082ac78; PC = 0x274877988956 *)
mov L0x400082ac78 x11;
mov L0x400082ac80 x12;
(* stp	x13, x14, [x0, #16]                         #! EA = L0x400082ac88; PC = 0x274877988960 *)
mov L0x400082ac88 x13;
mov L0x400082ac90 x14;
(* stp	x15, x16, [x0, #32]                         #! EA = L0x400082ac98; PC = 0x274877988964 *)
mov L0x400082ac98 x15;
mov L0x400082aca0 x16;
(* #ret                                            #! PC = 0x274877988968 *)
#ret                                            #! 0x274877988968 = 0x274877988968;

assert true
    && eqmod (limbs 64 [L0x400082ac78, L0x400082ac80, L0x400082ac88,
                        L0x400082ac90, L0x400082ac98, L0x400082aca0])
             ((limbs 64 [x11p, x12p, x13p, x14p, x15p, x16p]) +
              (limbs 64 [L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]);

assume eqmod (limbs 64 [L0x400082ac78, L0x400082ac80, L0x400082ac88,
                        L0x400082ac90, L0x400082ac98, L0x400082aca0])
             ((limbs 64 [x11p, x12p, x13p, x14p, x15p, x16p]) +
              (limbs 64 [L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]))
             (limbs 64 [m0, m1, m2, m3, m4, m5]) && true;

(* NOTE: simplify for final cut *)

ecut and [
       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x400082ac78, L0x400082ac80, L0x400082ac88,
                        L0x400082ac90, L0x400082ac98, L0x400082aca0])
             (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                        L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                        L0x400082a9c8, L0x400082a9d0, L0x400082a9d8])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
     ];

(* NOTE: summary for computation *)

ecut and [

       eqmod ((limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                         L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                         L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                         L0x400082a908, L0x400082a910, L0x400082a918]) +
              (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                         L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                         L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                         L0x400082a9c8, L0x400082a9d0, L0x400082a9d8]) * I)
             (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
               (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
              ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
               (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
             [limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1],

       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x400082ac48, L0x400082ac50, L0x400082ac58,
                        L0x400082ac60, L0x400082ac68, L0x400082ac70])
             (limbs 64 [L0x400082a8c0, L0x400082a8c8, L0x400082a8d0,
                        L0x400082a8d8, L0x400082a8e0, L0x400082a8e8,
                        L0x400082a8f0, L0x400082a8f8, L0x400082a900,
                        L0x400082a908, L0x400082a910, L0x400082a918])
             (limbs 64 [m0, m1, m2, m3, m4, m5]),

       eqmod (limbs 64 [0, 0, 0, 0, 0, 0,
                        L0x400082ac78, L0x400082ac80, L0x400082ac88,
                        L0x400082ac90, L0x400082ac98, L0x400082aca0])
             (limbs 64 [L0x400082a980, L0x400082a988, L0x400082a990,
                        L0x400082a998, L0x400082a9a0, L0x400082a9a8,
                        L0x400082a9b0, L0x400082a9b8, L0x400082a9c0,
                        L0x400082a9c8, L0x400082a9d0, L0x400082a9d8])
             (limbs 64 [m0, m1, m2, m3, m4, m5])
     ] prove with all cuts;

(* #ldr	x30, [x29, #8]                              #! EA = L0x400082a9e8; Value = 0x0044004000010168; PC = 0x274877985260 *)
#ldr	%%x30, %%L0x400082a9e8                              #! L0x400082a9e8 = L0x400082a9e8; 0x0044004000010168 = 0x0044004000010168; 0x274877985260 = 0x274877985260;
(* #add	sp, sp, #0x120                              #! PC = 0x274877985264 *)
#add	sp, sp, #0x120                              #! 0x274877985264 = 0x274877985264;
(* #ldp	x19, x20, [x29, #16]                        #! EA = L0x400082a9f0; Value = 0x0000004000014eb8; PC = 0x274877985268 *)
#ldp	%%x19, %%x20, %%L0x400082a9f0                        #! L0x400082a9f0 = L0x400082a9f0; 0x0000004000014eb8 = 0x0000004000014eb8; 0x274877985268 = 0x274877985268;
(* #ldp	x21, x22, [x29, #32]                        #! EA = L0x400082aa00; Value = 0x00000040000007c0; PC = 0x274877985272 *)
#ldp	%%x21, %%x22, %%L0x400082aa00                        #! L0x400082aa00 = L0x400082aa00; 0x00000040000007c0 = 0x00000040000007c0; 0x274877985272 = 0x274877985272;
(* #ldp	x23, x24, [x29, #48]                        #! EA = L0x400082aa10; Value = 0x0000000000000000; PC = 0x274877985276 *)
#ldp	%%x23, %%x24, %%L0x400082aa10                        #! L0x400082aa10 = L0x400082aa10; 0x0000000000000000 = 0x0000000000000000; 0x274877985276 = 0x274877985276;
(* #ldp	x25, x26, [x29, #64]                        #! EA = L0x400082aa20; Value = 0x0000000000000000; PC = 0x274877985280 *)
#ldp	%%x25, %%x26, %%L0x400082aa20                        #! L0x400082aa20 = L0x400082aa20; 0x0000000000000000 = 0x0000000000000000; 0x274877985280 = 0x274877985280;
(* #ldp	x27, x28, [x29, #80]                        #! EA = L0x400082aa30; Value = 0x0000000000000000; PC = 0x274877985284 *)
#ldp	%%x27, %%x28, %%L0x400082aa30                        #! L0x400082aa30 = L0x400082aa30; 0x0000000000000000 = 0x0000000000000000; 0x274877985284 = 0x274877985284;
(* #ldr	x29, [sp], #128                             #! EA = L0x400082a9e0; Value = 0x000000400082aa60; PC = 0x274877985288 *)
#ldr	%%x29, [sp], #128                             #! L0x400082a9e0 = L0x400082a9e0; 0x000000400082aa60 = 0x000000400082aa60; 0x274877985288 = 0x274877985288;
(* #autiasp                                         #! PC = 0x274877985292 *)
#autiasp                                         #! 0x274877985292 = 0x274877985292;
(* #ret                                            #! PC = 0x274877985296 *)
#ret                                            #! 0x274877985296 = 0x274877985296;
(* #ldp	x29, x30, [sp], #16                         #! EA = L0x400082aa60; Value = 0x000000400082aa70; PC = 0x274877972840 *)
#ldp	%%x29, %%x30, [sp], #16                         #! L0x400082aa60 = L0x400082aa60; 0x000000400082aa70 = 0x000000400082aa70; 0x274877972840 = 0x274877972840;
(* #ret                                            #! PC = 0x274877972844 *)
#ret                                            #! 0x274877972844 = 0x274877972844;

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
  eqmod ((limbs 64 [0, 0, 0, 0, 0, 0, e0, e1, e2, e3, e4, e5]) +
         (limbs 64 [0, 0, 0, 0, 0, 0, f0, f1, f2, f3, f4, f5]) * I)
        (((limbs 64 [a0, a1, a2, a3, a4, a5]) +
          (limbs 64 [b0, b1, b2, b3, b4, b5]) * I) *
         ((limbs 64 [c0, c1, c2, c3, c4, c5]) +
          (limbs 64 [d0, d1, d2, d3, d4, d5]) * I))
        [ limbs 64 [m0, m1, m2, m3, m4, m5], I * I + 1 ]
&&
  true
}
