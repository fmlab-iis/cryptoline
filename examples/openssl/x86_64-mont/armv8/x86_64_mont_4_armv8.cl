proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 n,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3)=

{
  and [
    eqmod m0 1 2,
    eqmod (n * limbs 64 [m0, m1, m2, m3] + 1)
          0
          (2**64)
  ]
&&
  and [
    limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3],
    limbs 64 [b0, b1, b2, b3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

mov L0x420020 a0;
mov L0x420028 a1;
mov L0x420030 a2;
mov L0x420038 a3;

mov L0x4200a0 b0;
mov L0x4200a8 b1;
mov L0x4200b0 b2;
mov L0x4200b8 b3;

mov L0x4201a0 n;

mov L0x420120 m0;
mov L0x420128 m1;
mov L0x420130 m2;
mov L0x420138 m3;

(* #tst	x5, #0x7 *)
#tst	%%x5, #0x7;
(* #b.eq	0x400800 <__bn_sqr8x_mont>  // b.none *)
#b.eq	0x400800 <__bn_sqr8x_mont>  // b.none;
(* #tst	x5, #0x3 *)
#tst	%%x5, #0x3;
(* #b.eq	0x4011e0 <__bn_mul4x_mont>  // b.none *)
#b.eq	0x4011e0 <__bn_mul4x_mont>  // b.none;
(* #paciasp *)
#paciasp;
(* #stp	x29, x30, [sp, #-128]!                      #! EA = L0xffffffffe090; Value = 0x0000ffffbf6fa510 *)
#stp	%%x29, %%x30, [sp, #-128]!                      #! L0xffffffffe090 = L0xffffffffe090; 0x0000ffffbf6fa510 = 0x0000ffffbf6fa510;
(* #mov	x29, sp *)
#mov	%%x29, sp;
(* #stp	x19, x20, [sp, #16]                         #! EA = L0xffffffffe0a0; Value = 0x0000000000000003 *)
#stp	%%x19, %%x20, %%L0xffffffffe0a0                         #! L0xffffffffe0a0 = L0xffffffffe0a0; 0x0000000000000003 = 0x0000000000000003;
(* #stp	x21, x22, [sp, #32]                         #! EA = L0xffffffffe0b0; Value = 0x0000000000000000 *)
#stp	%%x21, %%x22, %%L0xffffffffe0b0                         #! L0xffffffffe0b0 = L0xffffffffe0b0; 0x0000000000000000 = 0x0000000000000000;
(* #stp	x23, x24, [sp, #48]                         #! EA = L0xffffffffe0c0; Value = 0x0000ffff00000001 *)
#stp	%%x23, %%x24, %%L0xffffffffe0c0                         #! L0xffffffffe0c0 = L0xffffffffe0c0; 0x0000ffff00000001 = 0x0000ffff00000001;
(* #stp	x25, x26, [sp, #64]                         #! EA = L0xffffffffe0d0; Value = 0x0000ffff00000001 *)
#stp	%%x25, %%x26, %%L0xffffffffe0d0                         #! L0xffffffffe0d0 = L0xffffffffe0d0; 0x0000ffff00000001 = 0x0000ffff00000001;
(* #stp	x27, x28, [sp, #80]                         #! EA = L0xffffffffe0e0; Value = 0x0000ffffffffe1c0 *)
#stp	%%x27, %%x28, %%L0xffffffffe0e0                         #! L0xffffffffe0e0 = L0xffffffffe0e0; 0x0000ffffffffe1c0 = 0x0000ffffffffe1c0;
(* #sub	x26, sp, x5, lsl #3 *)
#sub	%%x26, sp, %%x5, lsl #3;
(* #lsl	x5, x5, #3 *)
#lsl	%%x5, %%x5, #3;
(* ldr	x4, [x4]                                    #! EA = L0x4201a0; Value = 0x5094f3d5989f517f *)
mov x4 L0x4201a0;
(* #sub	sp, x26, #0x20 *)
#sub	sp, %%x26, #0x20;
(* #add	x10, x2, x5 *)
#add	%%x10, %%x2, %%x5;
(* #add	x27, x1, x5 *)
#add	%%x27, %%x1, %%x5;
(* #stp	x0, x10, [x29, #96]                         #! EA = L0xffffffffe0f0; Value = 0x0000ffffbf6faaa0 *)
#stp	%%x0, %%x10, %%L0xffffffffe0f0                         #! L0xffffffffe0f0 = L0xffffffffe0f0; 0x0000ffffbf6faaa0 = 0x0000ffffbf6faaa0;
(* ldr	x24, [x2]                                   #! EA = L0x4200a0; Value = 0x82a9b3e02d82d6b7 *)
mov x24 L0x4200a0;
(* ldp	x6, x7, [x1]                                #! EA = L0x420020; Value = 0x782a9b3e02d82d6b *)
mov x6 L0x420020;
mov x7 L0x420028;
(* ldp	x8, x9, [x1, #16]                           #! EA = L0x420030; Value = 0x9819818fc810a0bc *)
mov x8 L0x420030;
mov x9 L0x420038;
(* #add	x1, x1, #0x20 *)
#add	%%x1, %%x1, #0x20;
(* mov	x19, xzr *)
mov x19 0@uint64;
(* mov	x20, xzr *)
mov x20 0@uint64;
(* mov	x21, xzr *)
mov x21 0@uint64;
(* mov	x22, xzr *)
mov x22 0@uint64;
(* ldp	x14, x15, [x3]                              #! EA = L0x420120; Value = 0xcbc9819818f810a0 *)
mov x14 L0x420120;
mov x15 L0x420128;
(* ldp	x16, x17, [x3, #16]                         #! EA = L0x420130; Value = 0x9b3e02d82d6b782a *)
mov x16 L0x420130;
mov x17 L0x420138;
(* #adds	x3, x3, #0x20 *)
#adds	%%x3, %%x3, #0x20;
(* NOTE: assume carry is 0 *)
mov carry 0@bit;
(* mov	x0, xzr *)
mov x0 0@uint64;
(* #mov	x28, #0x0                   	// #0 *)
#mov	%%x28, #0x0                   	// #0;
(* #mov	x26, sp *)
#mov	%%x26, sp;
(* mul	x10, x6, x24 *)
(* NOTE: merge with umulh x10, x6, x24 *)
umull x10H x10 x6 x24;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(* mul	x11, x7, x24 *)
(* NOTE: merge with umulh x11, x7, x24 *)
umull x11H x11 x7 x24;
(* #add	x28, x28, #0x8 *)
#add	%%x28, %%x28, #0x8;
(* mul	x12, x8, x24 *)
(* NOTE: merge with umulh x12, x8, x24 *)
umull x12H x12 x8 x24;
(* #and	x28, x28, #0x1f *)
#and	%%x28, %%x28, #0x1f;
(* mul	x13, x9, x24 *)
(* NOTE: merge with umulh x13, x9, x24 *)
umull x13H x13 x9 x24;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x6, x24 *)
(* umull x10 dontcare x6 x24; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* mul	x25, x19, x4 *)
(* NOTE: avoid overflow *)
umull dontcare x25 x19 x4;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200a8; Value = 0x82ae02d7829b3d6b *)
mov x24 L0x4200a8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe050; Value = 0x0000ffffbf557520 *)
mov L0xffffffffe050 x25;
(* adcs	x21, x21, x11 *)
uadcs carry x21 x21 x11 carry;
(* mul	x11, x15, x25 *)
(* NOTE: merge with umulh x11, x15, x25 *)
umull x11H x11 x15 x25;
(* adcs	x22, x22, x12 *)
uadcs carry x22 x22 x12 carry;
(* mul	x12, x16, x25 *)
(* NOTE: merge with umulh x12, x16, x25 *)
umull x12H x12 x16 x25;
(* adc	x23, x23, x13 *)
uadc x23 x23 x13 carry;
(* mul	x13, x17, x25 *)
(* NOTE: merge with umulh x13, x17, x25 *)
umull x13H x13 x17 x25;
(* cmp	x19, #0x1 *)
usubc carry dontcare x19 1@uint64;
(* umulh	x10, x14, x25 *)
umull x10 dontcare x14 x25;
(* assert eqmod (dontcare + x19) 0 (2**64) && true; *)
(* assume dontcare + x19 = 0 && true; *)

uadds mycarry mycare x19 dontcare;
assert eqmod mycare 0 (2**64) && true;
assume mycare = 0 && true;
assert mycarry = carry && true;

(* adcs	x19, x20, x11 *)
uadcs carry x19 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x20, x21, x12 *)
uadcs carry x20 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x21, x22, x13 *)
uadcs carry x21 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x22, x23, x0 *)
uadcs carry x22 x23 x0 carry;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* #sub	x10, x27, x1 *)
#sub	%%x10, %%x27, %%x1;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401254 <__bn_mul4x_mont+116> *)
#cbnz	%%x28, 0x401254 <__bn_mul4x_mont+116>;
(* mul	x10, x6, x24 *)
(* NOTE: merge with umulh x10, x6, x24 *)
umull x10H x10 x6 x24;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;

assert eqmod (limbs 64 [0, x19, x20, x21, x22, x0])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0]))
             (limbs 64 [m0, m1, m2, m3])
    && true;

(* mul	x11, x7, x24 *)
(* NOTE: merge with umulh x11, x7, x24 *)
umull x11H x11 x7 x24;
(* #add	x28, x28, #0x8 *)
#add	%%x28, %%x28, #0x8;
(* mul	x12, x8, x24 *)
(* NOTE: merge with umulh x12, x8, x24 *)
umull x12H x12 x8 x24;
(* #and	x28, x28, #0x1f *)
#and	%%x28, %%x28, #0x1f;
(* mul	x13, x9, x24 *)
(* NOTE: merge with umulh x13, x9, x24 *)
umull x13H x13 x9 x24;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x6, x24 *)
(* umull x10 dontcare x6 x24; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* mul	x25, x19, x4 *)
(* NOTE: avoid overflow *)
umull dontcare x25 x19 x4;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200b0; Value = 0xcbc9819818f810a0 *)
mov x24 L0x4200b0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe058; Value = 0x0000000003d8f538 *)
mov L0xffffffffe058 x25;
(* adcs	x21, x21, x11 *)
uadcs carry x21 x21 x11 carry;
(* mul	x11, x15, x25 *)
(* NOTE: merge with umulh x11, x15, x25 *)
umull x11H x11 x15 x25;
(* adcs	x22, x22, x12 *)
uadcs carry x22 x22 x12 carry;
(* mul	x12, x16, x25 *)
(* NOTE: merge with umulh x12, x16, x25 *)
umull x12H x12 x16 x25;
(* adc	x23, x23, x13 *)
uadc x23 x23 x13 carry;
(* mul	x13, x17, x25 *)
(* NOTE: merge with umulh x13, x17, x25 *)
umull x13H x13 x17 x25;
(* cmp	x19, #0x1 *)
usubc carry dontcare x19 1@uint64;
(* umulh	x10, x14, x25 *)
umull x10 dontcare x14 x25;
assert eqmod (dontcare + x19) 0 (2**64) && true;
assume dontcare + x19 = 0 && true;
(* adcs	x19, x20, x11 *)
uadcs carry x19 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x20, x21, x12 *)
uadcs carry x20 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x21, x22, x13 *)
uadcs carry x21 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x22, x23, x0 *)
uadcs carry x22 x23 x0 carry;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* #sub	x10, x27, x1 *)
#sub	%%x10, %%x27, %%x1;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401254 <__bn_mul4x_mont+116> *)
#cbnz	%%x28, 0x401254 <__bn_mul4x_mont+116>;
(* mul	x10, x6, x24 *)
(* NOTE: merge with umulh x10, x6, x24 *)
umull x10H x10 x6 x24;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(*
assert eqmod (limbs 64 [0, 0, x19, x20, x21, x22, x0])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1]))
             (limbs 64 [m0, m1, m2, m3])
    && true;
*)
(* mul	x11, x7, x24 *)
(* NOTE: merge with umulh x11, x7, x24 *)
umull x11H x11 x7 x24;
(* #add	x28, x28, #0x8 *)
#add	%%x28, %%x28, #0x8;
(* mul	x12, x8, x24 *)
(* NOTE: merge with umulh x12, x8, x24 *)
umull x12H x12 x8 x24;
(* #and	x28, x28, #0x1f *)
#and	%%x28, %%x28, #0x1f;
(* mul	x13, x9, x24 *)
(* NOTE: merge with umulh x13, x9, x24 *)
umull x13H x13 x9 x24;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x6, x24 *)
(* umull x10 dontcare x6 x24; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* mul	x25, x19, x4 *)
(* NOTE: avoid overflow *)
umull dontcare x25 x19 x4;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200b8; Value = 0x02888abcdef19181 *)
mov x24 L0x4200b8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe060; Value = 0x0000000000400329 *)
mov L0xffffffffe060 x25;
(* adcs	x21, x21, x11 *)
uadcs carry x21 x21 x11 carry;
(* mul	x11, x15, x25 *)
(* NOTE: merge with umulh x11, x15, x25 *)
umull x11H x11 x15 x25;
(* adcs	x22, x22, x12 *)
uadcs carry x22 x22 x12 carry;
(* mul	x12, x16, x25 *)
(* NOTE: merge with umulh x12, x16, x25 *)
umull x12H x12 x16 x25;
(* adc	x23, x23, x13 *)
uadc x23 x23 x13 carry;
(* mul	x13, x17, x25 *)
(* NOTE: merge with umulh x13, x17, x25 *)
umull x13H x13 x17 x25;
(* cmp	x19, #0x1 *)
usubc carry dontcare x19 1@uint64;
(* umulh	x10, x14, x25 *)
umull x10 dontcare x14 x25;
assert eqmod (dontcare + x19) 0 (2**64) && true;
assume dontcare + x19 = 0 && true;
(* adcs	x19, x20, x11 *)
uadcs carry x19 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x20, x21, x12 *)
uadcs carry x20 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x21, x22, x13 *)
uadcs carry x21 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x22, x23, x0 *)
uadcs carry x22 x23 x0 carry;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* #sub	x10, x27, x1 *)
#sub	%%x10, %%x27, %%x1;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401254 <__bn_mul4x_mont+116> *)
#cbnz	%%x28, 0x401254 <__bn_mul4x_mont+116>;
(* mul	x10, x6, x24 *)
(* NOTE: merge with umulh x10, x6, x24 *)
umull x10H x10 x6 x24;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(*
assert eqmod (limbs 64 [0, 0, 0, x19, x20, x21, x22, x0])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2]))
             (limbs 64 [m0, m1, m2, m3])
    && true;
*)
(* mul	x11, x7, x24 *)
(* NOTE: merge with umulh x11, x7, x24 *)
umull x11H x11 x7 x24;
(* #add	x28, x28, #0x8 *)
#add	%%x28, %%x28, #0x8;
(* mul	x12, x8, x24 *)
(* NOTE: merge with umulh x12, x8, x24 *)
umull x12H x12 x8 x24;
(* #and	x28, x28, #0x1f *)
#and	%%x28, %%x28, #0x1f;
(* mul	x13, x9, x24 *)
(* NOTE: merge with umulh x13, x9, x24 *)
umull x13H x13 x9 x24;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x6, x24 *)
(* umull x10 dontcare x6 x24; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* mul	x25, x19, x4 *)
(* NOTE: avoid overflow *)
umull dontcare x25 x19 x4;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200a0; Value = 0x82a9b3e02d82d6b7 *)
mov x24 L0x4200a0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe068; Value = 0x0000ffffffffe0b4 *)
mov L0xffffffffe068 x25;
(* adcs	x21, x21, x11 *)
uadcs carry x21 x21 x11 carry;
(* mul	x11, x15, x25 *)
(* NOTE: merge with umulh x11, x15, x25 *)
umull x11H x11 x15 x25;
(* adcs	x22, x22, x12 *)
uadcs carry x22 x22 x12 carry;
(* mul	x12, x16, x25 *)
(* NOTE: merge with umulh x12, x16, x25 *)
umull x12H x12 x16 x25;
(* adc	x23, x23, x13 *)
uadc x23 x23 x13 carry;
(* mul	x13, x17, x25 *)
(* NOTE: mergew with umulh x13, x17, x25 *)
umull x13H x13 x17 x25;
(* cmp	x19, #0x1 *)
usubc carry dontcare x19 1@uint64;
(* umulh	x10, x14, x25 *)
umull x10 dontcare x14 x25;
assert eqmod (dontcare + x19) 0 (2**64) && true;
assume dontcare + x19 = 0 && true;
(* adcs	x19, x20, x11 *)
uadcs carry x19 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x20, x21, x12 *)
uadcs carry x20 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x21, x22, x13 *)
uadcs carry x21 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x22, x23, x0 *)
uadcs carry x22 x23 x0 carry;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* #sub	x10, x27, x1 *)
#sub	%%x10, %%x27, %%x1;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401254 <__bn_mul4x_mont+116> *)
#cbnz	%%x28, 0x401254 <__bn_mul4x_mont+116>;
(* #cbz	x10, 0x401770 <__bn_mul4x_mont+1424> *)
#cbz	%%x10, 0x401770 <__bn_mul4x_mont+1424>;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(*
assert eqmod (limbs 64 [0, 0, 0, 0, x19, x20, x21, x22, x0])
             ((limbs 64 [a0, a1, a2, a3]) * (limbs 64 [b0, b1, b2, b3]))
             (limbs 64 [m0, m1, m2, m3])
    && true;
*)
(* #ldr	x1, [x29, #96]                              #! EA = L0xffffffffe0f0; Value = 0x0000ffffffffe120 *)
#ldr	%%x1, %%L0xffffffffe0f0                              #! L0xffffffffe0f0 = L0xffffffffe0f0; 0x0000ffffffffe120 = 0x0000ffffffffe120;
(* subs	x6, x19, x14 *)
usubc carry x6 x19 x14;
(* #ldr	x30, [x29, #8]                              #! EA = L0xffffffffe098; Value = 0x000000000040059c *)
#ldr	%%x30, %%L0xffffffffe098                              #! L0xffffffffe098 = L0xffffffffe098; 0x000000000040059c = 0x000000000040059c;
(* sbcs	x7, x20, x15 *)
usbcs carry x7 x20 x15 carry;
(* stp	xzr, xzr, [sp]                              #! EA = L0xffffffffe050; Value = 0x21bdab2738a26203 *)
mov L0xffffffffe050 0@uint64;
mov L0xffffffffe058 0@uint64;
(* sbcs	x8, x21, x16 *)
usbcs carry x8 x21 x16 carry;
(* stp	xzr, xzr, [sp, #16]                         #! EA = L0xffffffffe060; Value = 0x7ce8bd4e0c6f2b58 *)
mov L0xffffffffe060 0@uint64;
mov L0xffffffffe068 0@uint64;
(* sbcs	x9, x22, x17 *)
usbcs carry x9 x22 x17 carry;
(* stp	xzr, xzr, [sp, #32]                         #! EA = L0xffffffffe070; Value = 0x0000ffffffffe188 *)
mov L0xffffffffe070 0@uint64;
mov L0xffffffffe078 0@uint64;
(* sbcs	xzr, x0, xzr *)
usbcs carry dontcare x0 0@uint64 carry;
(* stp	xzr, xzr, [sp, #48]                         #! EA = L0xffffffffe080; Value = 0x0000ffffffffe178 *)
mov L0xffffffffe080 0@uint64;
mov L0xffffffffe088 0@uint64;
(* csel	x6, x19, x6, cc  // cc = lo, ul, last *)
cmov x6 carry x6 x19;
(* csel	x7, x20, x7, cc  // cc = lo, ul, last *)
cmov x7 carry x7 x20;
(* csel	x8, x21, x8, cc  // cc = lo, ul, last *)
cmov x8 carry x8 x21;
(* csel	x9, x22, x9, cc  // cc = lo, ul, last *)
cmov x9 carry x9 x22;
(* stp	x6, x7, [x1]                                #! EA = L0xffffffffe120; Value = 0x0000000000000000 *)
mov L0xffffffffe120 x6;
mov L0xffffffffe128 x7;
(* stp	x8, x9, [x1, #16]                           #! EA = L0xffffffffe130; Value = 0x0000000000000000 *)
mov L0xffffffffe130 x8;
mov L0xffffffffe138 x9;
(* #ldp	x19, x20, [x29, #16]                        #! EA = L0xffffffffe0a0; Value = 0x0000000000401830 *)
#ldp	%%x19, %%x20, %%L0xffffffffe0a0                        #! L0xffffffffe0a0 = L0xffffffffe0a0; 0x0000000000401830 = 0x0000000000401830;
(* #mov	sp, x29 *)
#mov	sp, %%x29;
(* #ldp	x21, x22, [x29, #32]                        #! EA = L0xffffffffe0b0; Value = 0x0000000000400460 *)
#ldp	%%x21, %%x22, %%L0xffffffffe0b0                        #! L0xffffffffe0b0 = L0xffffffffe0b0; 0x0000000000400460 = 0x0000000000400460;
(* #mov	x0, #0x1                   	// #1 *)
#mov	%%x0, #0x1                   	// #1;
(* #ldp	x23, x24, [x29, #48]                        #! EA = L0xffffffffe0c0; Value = 0x0000000000000000 *)
#ldp	%%x23, %%x24, %%L0xffffffffe0c0                        #! L0xffffffffe0c0 = L0xffffffffe0c0; 0x0000000000000000 = 0x0000000000000000;
(* #ldp	x25, x26, [x29, #64]                        #! EA = L0xffffffffe0d0; Value = 0x0000000000000000 *)
#ldp	%%x25, %%x26, %%L0xffffffffe0d0                        #! L0xffffffffe0d0 = L0xffffffffe0d0; 0x0000000000000000 = 0x0000000000000000;
(* #ldp	x27, x28, [x29, #80]                        #! EA = L0xffffffffe0e0; Value = 0x0000000000000000 *)
#ldp	%%x27, %%x28, %%L0xffffffffe0e0                        #! L0xffffffffe0e0 = L0xffffffffe0e0; 0x0000000000000000 = 0x0000000000000000;
(* #ldr	x29, [sp], #128                             #! EA = L0xffffffffe090; Value = 0x0000ffffffffe110 *)
#ldr	%%x29, %%L0xffffffffe090, #128                             #! L0xffffffffe090 = L0xffffffffe090; 0x0000ffffffffe110 = 0x0000ffffffffe110;
(* #autiasp *)
#autiasp;
(* #ret *)
#ret;

mov c0 L0xffffffffe120;
mov c1 L0xffffffffe128;
mov c2 L0xffffffffe130;
mov c3 L0xffffffffe138;

{
  true
&&
  true
}

