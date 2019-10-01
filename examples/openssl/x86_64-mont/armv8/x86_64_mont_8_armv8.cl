proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 a4, uint64 a5, uint64 a6, uint64 a7,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 b4, uint64 b5, uint64 b6, uint64 b7,
           uint64 n,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3,
           uint64 m4, uint64 m5, uint64 m6, uint64 m7)=

{
  and [
    eqmod m0 1 2,
    eqmod (n * limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7] + 1)
          0
          (2**64)
  ]
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5, a6, a7] <u
    limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7],
    limbs 64 [b0, b1, b2, b3, b4, b5, b6, b7] <u
    limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7]
  ]
}

mov L0x420020 a0;
mov L0x420028 a1;
mov L0x420030 a2;
mov L0x420038 a3;
mov L0x420040 a4;
mov L0x420048 a5;
mov L0x420050 a6;
mov L0x420058 a7;

mov L0x4200a0 b0;
mov L0x4200a8 b1;
mov L0x4200b0 b2;
mov L0x4200b8 b3;
mov L0x4200c0 b4;
mov L0x4200c8 b5;
mov L0x4200d0 b6;
mov L0x4200d8 b7;

mov L0x4201a0 n;

mov L0x420120 m0;
mov L0x420128 m1;
mov L0x420130 m2;
mov L0x420138 m3;
mov L0x420140 m4;
mov L0x420148 m5;
mov L0x420150 m6;
mov L0x420158 m7;

(* #tst	x5, #0x7 *)
#tst	%%x5, #0x7;
(* #b.eq	0x400800 <__bn_sqr8x_mont>  // b.none *)
#b.eq	0x400800 <__bn_sqr8x_mont>  // b.none;
(* #cmp	x1, x2 *)
#cmp	%%x1, %%x2;
(* #b.ne	0x4011e0 <__bn_mul4x_mont>  // b.any *)
#b.ne	0x4011e0 <__bn_mul4x_mont>  // b.any;
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
(* str	x25, [x26], #8                              #! EA = L0xffffffffe030; Value = 0x0000000000000000 *)
mov L0xffffffffe030 x25;
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
assume dontcare + 19 = 0 && true;
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
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
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
(* str	x25, [x26], #8                              #! EA = L0xffffffffe038; Value = 0x000000000360ed96 *)
mov L0xffffffffe038 x25;
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
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
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
(* str	x25, [x26], #8                              #! EA = L0xffffffffe040; Value = 0x0000ffffbf6fa560 *)
mov L0xffffffffe040 x25;
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
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
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
(* str	x25, [x26], #8                              #! EA = L0xffffffffe048; Value = 0x0000ffffffffe0b8 *)
mov L0xffffffffe048 x25;
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
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
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
(* ldp	x6, x7, [x1]                                #! EA = L0x420040; Value = 0x9b3e02d82d6b782a *)
mov x6 L0x420040;
mov x7 L0x420048;
(* ldp	x8, x9, [x1, #16]                           #! EA = L0x420050; Value = 0xc810a0bc9819818f *)
mov x8 L0x420050;
mov x9 L0x420058;
(* #add	x1, x1, #0x20 *)
#add	%%x1, %%x1, #0x20;
(* ldr	x25, [sp]                                   #! EA = L0xffffffffe030; Value = 0x21bdab2738a26203 *)
mov x25 L0xffffffffe030;
(* ldp	x14, x15, [x3]                              #! EA = L0x420140; Value = 0x82a9b3e02d82d6b7 *)
mov x14 L0x420140;
mov x15 L0x420148;
(* ldp	x16, x17, [x3, #16]                         #! EA = L0x420150; Value = 0xcbc9819818f810a0 *)
mov x16 L0x420150;
mov x17 L0x420158;
(* #add	x3, x3, #0x20 *)
#add	%%x3, %%x3, #0x20;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200a8; Value = 0x82ae02d7829b3d6b *)
mov x24 L0x4200a8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe038; Value = 0x6466d4585ab5d405 *)
mov x25 L0xffffffffe038;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe050; Value = 0x0000ffffbf557520 *)
mov L0xffffffffe050 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x40131c <__bn_mul4x_mont+316> *)
#cbnz	%%x28, 0x40131c <__bn_mul4x_mont+316>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200b0; Value = 0xcbc9819818f810a0 *)
mov x24 L0x4200b0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe040; Value = 0x7ce8bd4e0c6f2b58 *)
mov x25 L0xffffffffe040;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe058; Value = 0x0000000003d8f538 *)
mov L0xffffffffe058 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x40131c <__bn_mul4x_mont+316> *)
#cbnz	%%x28, 0x40131c <__bn_mul4x_mont+316>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200b8; Value = 0x02888abcdef19181 *)
mov x24 L0x4200b8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe048; Value = 0x8232f7edbb2844c2 *)
mov x25 L0xffffffffe048;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe060; Value = 0x0000000000400329 *)
mov L0xffffffffe060 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x40131c <__bn_mul4x_mont+316> *)
#cbnz	%%x28, 0x40131c <__bn_mul4x_mont+316>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200a0; Value = 0x82a9b3e02d82d6b7 *)
mov x24 L0x4200a0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe030; Value = 0x21bdab2738a26203 *)
mov x25 L0xffffffffe030;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe068; Value = 0x0000ffffffffe0b4 *)
mov L0xffffffffe068 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x40131c <__bn_mul4x_mont+316> *)
#cbnz	%%x28, 0x40131c <__bn_mul4x_mont+316>;
(* sub	x11, x27, x5 *)
(* usub x11 x27 x5; *)
(* #cbz	x10, 0x401400 <__bn_mul4x_mont+544> *)
#cbz	%%x10, 0x401400 <__bn_mul4x_mont+544>;
(* ldr	x24, [x2, #32]!                             #! EA = L0x4200c0; Value = 0x9b3e02d82d6b782a *)
mov x24 L0x4200c0;
(* adc	x30, x0, xzr *)
uadc x30 x0 0@uint64 carry;
(* ldp	x6, x7, [x11]                               #! EA = L0x420020; Value = 0x782a9b3e02d82d6b *)
mov x6 L0x420020;
mov x7 L0x420028;
(* #sub	x3, x3, x5 *)
#sub	%%x3, %%x3, %%x5;
(* ldp	x8, x9, [x11, #16]                          #! EA = L0x420030; Value = 0x9819818fc810a0bc *)
mov x8 L0x420030;
mov x9 L0x420038;
(* #add	x1, x11, #0x20 *)
#add	%%x1, %%x11, #0x20;
(* stp	x19, x20, [x26]                             #! EA = L0xffffffffe070; Value = 0x0000ffffffffe188 *)
mov L0xffffffffe070 x19;
mov L0xffffffffe078 x20;
(* ldp	x19, x20, [sp, #32]                         #! EA = L0xffffffffe050; Value = 0xc2bb5d784ff8a84b *)
mov x19 L0xffffffffe050;
mov x20 L0xffffffffe058;
(* stp	x21, x22, [x26, #16]                        #! EA = L0xffffffffe080; Value = 0x0000ffffffffe178 *)
mov L0xffffffffe080 x21;
mov L0xffffffffe088 x22;
(* ldp	x21, x22, [sp, #48]                         #! EA = L0xffffffffe060; Value = 0x689a3ca953e05897 *)
mov x21 L0xffffffffe060;
mov x22 L0xffffffffe068;
(* ldp	x14, x15, [x3]                              #! EA = L0x420120; Value = 0xcbc9819818f810a0 *)
mov x14 L0x420120;
mov x15 L0x420128;
(* #mov	x26, sp *)
#mov	%%x26, sp;
(* ldp	x16, x17, [x3, #16]                         #! EA = L0x420130; Value = 0x9b3e02d82d6b782a *)
mov x16 L0x420130;
mov x17 L0x420138;
(* #adds	x3, x3, #0x20 *)
#adds	%%x3, %%x3, #0x20;
(* mov	x0, xzr *)
mov x0 0@uint64;
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
umul x25 x19 x4;
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
(* ldr	x24, [x2, x28]                              #! EA = L0x4200c8; Value = 0xae02d7829b382d6b *)
mov x24 L0x4200c8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe030; Value = 0x21bdab2738a26203 *)
mov L0xffffffffe030 x25;
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
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401440 <__bn_mul4x_mont+608> *)
#cbnz	%%x28, 0x401440 <__bn_mul4x_mont+608>;
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
(* ldr	x24, [x2, x28]                              #! EA = L0x4200d0; Value = 0x9b3e02d82d6b782a *)
mov x24 L0x4200d0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe038; Value = 0x6466d4585ab5d405 *)
mov L0xffffffffe038 x25;
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
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401440 <__bn_mul4x_mont+608> *)
#cbnz	%%x28, 0x401440 <__bn_mul4x_mont+608>;
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
(* ldr	x24, [x2, x28]                              #! EA = L0x4200d8; Value = 0xae02d7829b382d6b *)
mov x24 L0x4200d8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe040; Value = 0x7ce8bd4e0c6f2b58 *)
mov L0xffffffffe040 x25;
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
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401440 <__bn_mul4x_mont+608> *)
#cbnz	%%x28, 0x401440 <__bn_mul4x_mont+608>;
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
(* ldr	x24, [x2, x28]                              #! EA = L0x4200c0; Value = 0x9b3e02d82d6b782a *)
mov x24 L0x4200c0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* str	x25, [x26], #8                              #! EA = L0xffffffffe048; Value = 0x8232f7edbb2844c2 *)
mov L0xffffffffe048 x25;
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
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* #cbnz	x28, 0x401440 <__bn_mul4x_mont+608> *)
#cbnz	%%x28, 0x401440 <__bn_mul4x_mont+608>;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(* ldp	x10, x11, [x26, #32]                        #! EA = L0xffffffffe070; Value = 0x261bc788c9af3084 *)
mov x10 L0xffffffffe070;
mov x11 L0xffffffffe078;
(* ldp	x12, x13, [x26, #48]                        #! EA = L0xffffffffe080; Value = 0xb3fd22b524cf4447 *)
mov x12 L0xffffffffe080;
mov x13 L0xffffffffe088;
(* ldp	x6, x7, [x1]                                #! EA = L0x420040; Value = 0x9b3e02d82d6b782a *)
mov x6 L0x420040;
mov x7 L0x420048;
(* ldp	x8, x9, [x1, #16]                           #! EA = L0x420050; Value = 0xc810a0bc9819818f *)
mov x8 L0x420050;
mov x9 L0x420058;
(* #add	x1, x1, #0x20 *)
#add	%%x1, %%x1, #0x20;
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* ldr	x25, [sp]                                   #! EA = L0xffffffffe030; Value = 0xe5d18d83466d51a7 *)
mov x25 L0xffffffffe030;
(* ldp	x14, x15, [x3]                              #! EA = L0x420140; Value = 0x82a9b3e02d82d6b7 *)
mov x14 L0x420140;
mov x15 L0x420148;
(* ldp	x16, x17, [x3, #16]                         #! EA = L0x420150; Value = 0xcbc9819818f810a0 *)
mov x16 L0x420150;
mov x17 L0x420158;
(* #add	x3, x3, #0x20 *)
#add	%%x3, %%x3, #0x20;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200c8; Value = 0xae02d7829b382d6b *)
mov x24 L0x4200c8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe038; Value = 0x03545ce2e8b23dd0 *)
mov x25 L0xffffffffe038;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe050; Value = 0xc2bb5d784ff8a84b *)
mov L0xffffffffe050 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x401520 <__bn_mul4x_mont+832> *)
#cbnz	%%x28, 0x401520 <__bn_mul4x_mont+832>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200d0; Value = 0x9b3e02d82d6b782a *)
mov x24 L0x4200d0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe040; Value = 0x9daf0e6bbc9aa16d *)
mov x25 L0xffffffffe040;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe058; Value = 0x5d7d0a2f952c6cd8 *)
mov L0xffffffffe058 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x401520 <__bn_mul4x_mont+832> *)
#cbnz	%%x28, 0x401520 <__bn_mul4x_mont+832>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200d8; Value = 0xae02d7829b382d6b *)
mov x24 L0x4200d8;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe048; Value = 0xdadee7d7c97da148 *)
mov x25 L0xffffffffe048;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe060; Value = 0x689a3ca953e05897 *)
mov L0xffffffffe060 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x401520 <__bn_mul4x_mont+832> *)
#cbnz	%%x28, 0x401520 <__bn_mul4x_mont+832>;
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
(* umulh	x11, x7, x24 *)
(* umull x11 dontcare x7 x24; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x8, x24 *)
(* umull x12 dontcare x8 x24; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x9, x24 *)
(* umull x13 dontcare x9 x24; *)
mov x13 x13H;
(* adc	x23, xzr, xzr *)
uadc x23 0@uint64 0@uint64 carry;
(* ldr	x24, [x2, x28]                              #! EA = L0x4200c0; Value = 0x9b3e02d82d6b782a *)
mov x24 L0x4200c0;
(* adds	x20, x20, x10 *)
uadds carry x20 x20 x10;
(* mul	x10, x14, x25 *)
(* NOTE: merge with umulh x10, x14, x25 *)
umull x10H x10 x14 x25;
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
(* adds	x19, x19, x10 *)
uadds carry x19 x19 x10;
(* umulh	x10, x14, x25 *)
(* umull x10 dontcare x14 x25; *)
mov x10 x10H;
(* adcs	x20, x20, x11 *)
uadcs carry x20 x20 x11 carry;
(* umulh	x11, x15, x25 *)
(* umull x11 dontcare x15 x25; *)
mov x11 x11H;
(* adcs	x21, x21, x12 *)
uadcs carry x21 x21 x12 carry;
(* umulh	x12, x16, x25 *)
(* umull x12 dontcare x16 x25; *)
mov x12 x12H;
(* adcs	x22, x22, x13 *)
uadcs carry x22 x22 x13 carry;
(* umulh	x13, x17, x25 *)
(* umull x13 dontcare x17 x25; *)
mov x13 x13H;
(* adcs	x23, x23, x0 *)
uadcs carry x23 x23 x0 carry;
(* ldr	x25, [sp, x28]                              #! EA = L0xffffffffe030; Value = 0xe5d18d83466d51a7 *)
mov x25 L0xffffffffe030;
(* adc	x0, xzr, xzr *)
uadc x0 0@uint64 0@uint64 carry;
(* str	x19, [x26], #8                              #! EA = L0xffffffffe068; Value = 0x93f6ab97e9506b4b *)
mov L0xffffffffe068 x19;
(* adds	x19, x20, x10 *)
uadds carry x19 x20 x10;
(* sub	x10, x27, x1 *)
(* usub x10 x27 x1; *)
(* adcs	x20, x21, x11 *)
uadcs carry x20 x21 x11 carry;
(* adcs	x21, x22, x12 *)
uadcs carry x21 x22 x12 carry;
(* adcs	x22, x23, x13 *)
uadcs carry x22 x23 x13 carry;
(* #cbnz	x28, 0x401520 <__bn_mul4x_mont+832> *)
#cbnz	%%x28, 0x401520 <__bn_mul4x_mont+832>;
(* #sub	x11, x3, x5 *)
#sub	%%x11, %%x3, %%x5;
(* adc	x0, x0, xzr *)
uadc x0 x0 0@uint64 carry;
(* #cbz	x10, 0x401610 <__bn_mul4x_mont+1072> *)
#cbz	%%x10, 0x401610 <__bn_mul4x_mont+1072>;
(* ldp	x12, x13, [x29, #96]                        #! EA = L0xffffffffe0f0; Value = 0x0000ffffffffe120 *)
mov x12 L0xffffffffe0f0;
mov x13 L0xffffffffe0f8;
(* adds	x19, x19, x30 *)
uadds carry x19 x19 x30;
(* #add	x2, x2, #0x20 *)
#add	%%x2, %%x2, #0x20;
(* adcs	x20, x20, xzr *)
uadcs carry x20 x20 0@uint64 carry;
(* sub	x1, x1, x5 *)
(* usub x1 x1 x5; *)
(* adcs	x21, x21, xzr *)
uadcs carry x21 x21 0@uint64 carry;
(* stp	x19, x20, [x26]                             #! EA = L0xffffffffe070; Value = 0x261bc788c9af3084 *)
mov L0xffffffffe070 x19;
mov L0xffffffffe078 x20;
(* adcs	x22, x22, xzr *)
uadcs carry x22 x22 0@uint64 carry;
(* ldp	x19, x20, [sp, #32]                         #! EA = L0xffffffffe050; Value = 0x9bd1f919afee5300 *)
mov x19 L0xffffffffe050;
mov x20 L0xffffffffe058;
(* adc	x30, x0, xzr *)
uadc x30 x0 0@uint64 carry;
(* stp	x21, x22, [x26, #16]                        #! EA = L0xffffffffe080; Value = 0xb3fd22b524cf4447 *)
mov L0xffffffffe080 x21;
mov L0xffffffffe088 x22;
(* #cmp	x2, x13 *)
#cmp	%%x2, %%x13;
(* ldp	x21, x22, [sp, #48]                         #! EA = L0xffffffffe060; Value = 0xc8a59c7b7647e05a *)
mov x21 L0xffffffffe060;
mov x22 L0xffffffffe068;
(* ldp	x14, x15, [x11]                             #! EA = L0x420120; Value = 0xcbc9819818f810a0 *)
mov x14 L0x420120;
mov x15 L0x420128;
(* ldp	x16, x17, [x11, #16]                        #! EA = L0x420130; Value = 0x9b3e02d82d6b782a *)
mov x16 L0x420130;
mov x17 L0x420138;
(* #add	x3, x11, #0x20 *)
#add	%%x3, %%x11, #0x20;
(* #b.eq	0x401670 <__bn_mul4x_mont+1168>  // b.none *)
#b.eq	0x401670 <__bn_mul4x_mont+1168>  // b.none;
(* #mov	x0, x12 *)
#mov	%%x0, %%x12;
(* #mov	x27, x12 *)
#mov	%%x27, %%x12;
(* subs	x10, x19, x14 *)
usubc carry x10 x19 x14;
(* #add	x26, sp, #0x40 *)
#add	%%x26, sp, #0x40;
(* sbcs	x11, x20, x15 *)
usbcs carry x11 x20 x15 carry;
(* #sub	x28, x5, #0x20 *)
#sub	%%x28, %%x5, #0x20;
(* sbcs	x12, x21, x16 *)
usbcs carry x12 x21 x16 carry;
(* ldp	x14, x15, [x3]                              #! EA = L0x420140; Value = 0x82a9b3e02d82d6b7 *)
mov x14 L0x420140;
mov x15 L0x420148;
(* #sub	x28, x28, #0x20 *)
#sub	%%x28, %%x28, #0x20;
(* ldp	x19, x20, [x26]                             #! EA = L0xffffffffe070; Value = 0x9bc3b76a295818f1 *)
mov x19 L0xffffffffe070;
mov x20 L0xffffffffe078;
(* sbcs	x13, x22, x17 *)
usbcs carry x13 x22 x17 carry;
(* ldp	x16, x17, [x3, #16]                         #! EA = L0x420150; Value = 0xcbc9819818f810a0 *)
mov x16 L0x420150;
mov x17 L0x420158;
(* #add	x3, x3, #0x20 *)
#add	%%x3, %%x3, #0x20;
(* ldp	x21, x22, [x26, #16]                        #! EA = L0xffffffffe080; Value = 0xe5facbf98cc1b025 *)
mov x21 L0xffffffffe080;
mov x22 L0xffffffffe088;
(* #add	x26, x26, #0x20 *)
#add	%%x26, %%x26, #0x20;
(* stp	x10, x11, [x0]                              #! EA = L0xffffffffe120; Value = 0x0000000000000000 *)
mov L0xffffffffe120 x10;
mov L0xffffffffe128 x11;
(* sbcs	x10, x19, x14 *)
usbcs carry x10 x19 x14 carry;
(* stp	x12, x13, [x0, #16]                         #! EA = L0xffffffffe130; Value = 0x0000000000000000 *)
mov L0xffffffffe130 x12;
mov L0xffffffffe138 x13;
(* #add	x0, x0, #0x20 *)
#add	%%x0, %%x0, #0x20;
(* sbcs	x11, x20, x15 *)
usbcs carry x11 x20 x15 carry;
(* #cbnz	x28, 0x401688 <__bn_mul4x_mont+1192> *)
#cbnz	%%x28, 0x401688 <__bn_mul4x_mont+1192>;
(* sbcs	x12, x21, x16 *)
usbcs carry x12 x21 x16 carry;
(* #mov	x26, sp *)
#mov	%%x26, sp;
(* #add	x1, sp, #0x20 *)
#add	%%x1, sp, #0x20;
(* ldp	x6, x7, [x27]                               #! EA = L0xffffffffe120; Value = 0xd008778196f64260 *)
mov x6 L0xffffffffe120;
mov x7 L0xffffffffe128;
(* sbcs	x13, x22, x17 *)
usbcs carry x13 x22 x17 carry;
(* stp	x10, x11, [x0]                              #! EA = L0xffffffffe140; Value = 0x0000ffffffffe160 *)
mov L0xffffffffe140 x10;
mov L0xffffffffe148 x11;
(* ldp	x8, x9, [x27, #16]                          #! EA = L0xffffffffe130; Value = 0x2d6799a348dc6830 *)
mov x8 L0xffffffffe130;
mov x9 L0xffffffffe138;
(* stp	x12, x13, [x0, #16]                         #! EA = L0xffffffffe150; Value = 0x0000ffffffffe160 *)
mov L0xffffffffe150 x12;
mov L0xffffffffe158 x13;
(* ldp	x19, x20, [x1]                              #! EA = L0xffffffffe050; Value = 0x9bd1f919afee5300 *)
mov x19 L0xffffffffe050;
mov x20 L0xffffffffe058;
(* ldp	x21, x22, [x1, #16]                         #! EA = L0xffffffffe060; Value = 0xc8a59c7b7647e05a *)
mov x21 L0xffffffffe060;
mov x22 L0xffffffffe068;
(* sbcs	xzr, x30, xzr *)
usbcs carry dontcare x30 0@uint64 carry;
(* ldr	x30, [x29, #8]                              #! EA = L0xffffffffe098; Value = 0x000000000040059c *)
mov x30 L0xffffffffe098;
(* #sub	x28, x5, #0x20 *)
#sub	%%x28, %%x5, #0x20;
(* #sub	x28, x28, #0x20 *)
#sub	%%x28, %%x28, #0x20;
(* csel	x10, x19, x6, cc  // cc = lo, ul, last *)
cmov x10 carry x6 x19;
(* stp	xzr, xzr, [x26]                             #! EA = L0xffffffffe030; Value = 0xe5d18d83466d51a7 *)
mov L0xffffffffe030 0@uint64;
mov L0xffffffffe038 0@uint64;
(* csel	x11, x20, x7, cc  // cc = lo, ul, last *)
cmov x11 carry x7 x20;
(* ldp	x6, x7, [x27, #32]                          #! EA = L0xffffffffe140; Value = 0x191a0389fbd54239 *)
mov x6 L0xffffffffe140;
mov x7 L0xffffffffe148;
(* ldp	x19, x20, [x1, #32]                         #! EA = L0xffffffffe070; Value = 0x9bc3b76a295818f1 *)
mov x19 L0xffffffffe070;
mov x20 L0xffffffffe078;
(* csel	x12, x21, x8, cc  // cc = lo, ul, last *)
cmov x12 carry x8 x21;
(* stp	xzr, xzr, [x26, #16]                        #! EA = L0xffffffffe040; Value = 0x9daf0e6bbc9aa16d *)
mov L0xffffffffe040 0@uint64;
mov L0xffffffffe048 0@uint64;
(* #add	x26, x26, #0x20 *)
#add	%%x26, %%x26, #0x20;
(* csel	x13, x22, x9, cc  // cc = lo, ul, last *)
cmov x13 carry x9 x22;
(* ldp	x8, x9, [x27, #48]                          #! EA = L0xffffffffe150; Value = 0x1a314a6173c99f84 *)
mov x8 L0xffffffffe150;
mov x9 L0xffffffffe158;
(* ldp	x21, x22, [x1, #48]                         #! EA = L0xffffffffe080; Value = 0xe5facbf98cc1b025 *)
mov x21 L0xffffffffe080;
mov x22 L0xffffffffe088;
(* #add	x1, x1, #0x20 *)
#add	%%x1, %%x1, #0x20;
(* stp	x10, x11, [x27]                             #! EA = L0xffffffffe120; Value = 0xd008778196f64260 *)
mov L0xffffffffe120 x10;
mov L0xffffffffe128 x11;
(* stp	x12, x13, [x27, #16]                        #! EA = L0xffffffffe130; Value = 0x2d6799a348dc6830 *)
mov L0xffffffffe130 x12;
mov L0xffffffffe138 x13;
(* #add	x27, x27, #0x20 *)
#add	%%x27, %%x27, #0x20;
(* #cbnz	x28, 0x4016f8 <__bn_mul4x_mont+1304> *)
#cbnz	%%x28, 0x4016f8 <__bn_mul4x_mont+1304>;
(* csel	x10, x19, x6, cc  // cc = lo, ul, last *)
cmov x10 carry x6 x19;
(* stp	xzr, xzr, [x26]                             #! EA = L0xffffffffe050; Value = 0x9bd1f919afee5300 *)
mov L0xffffffffe050 0@uint64;
mov L0xffffffffe058 0@uint64;
(* csel	x11, x20, x7, cc  // cc = lo, ul, last *)
cmov x11 carry x7 x20;
(* stp	xzr, xzr, [x26, #16]                        #! EA = L0xffffffffe060; Value = 0xc8a59c7b7647e05a *)
mov L0xffffffffe060 0@uint64;
mov L0xffffffffe068 0@uint64;
(* csel	x12, x21, x8, cc  // cc = lo, ul, last *)
cmov x12 carry x8 x21;
(* stp	xzr, xzr, [x26, #24]                        #! EA = L0xffffffffe068; Value = 0x0000000000000000 *)
mov L0xffffffffe068 0@uint64;
mov L0xffffffffe070 0@uint64;
(* csel	x13, x22, x9, cc  // cc = lo, ul, last *)
cmov x13 carry x9 x22;
(* stp	xzr, xzr, [x26, #32]                        #! EA = L0xffffffffe070; Value = 0x0000000000000000 *)
mov L0xffffffffe070 0@uint64;
mov L0xffffffffe078 0@uint64;
(* stp	x10, x11, [x27]                             #! EA = L0xffffffffe140; Value = 0x191a0389fbd54239 *)
mov L0xffffffffe140 x10;
mov L0xffffffffe148 x11;
(* stp	x12, x13, [x27, #16]                        #! EA = L0xffffffffe150; Value = 0x1a314a6173c99f84 *)
mov L0xffffffffe150 x12;
mov L0xffffffffe158 x13;
(* #b	0x4017b8 <__bn_mul4x_mont+1496> *)
#b	0x4017b8 <__bn_mul4x_mont+1496>;
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
mov c4 L0xffffffffe140;
mov c5 L0xffffffffe148;
mov c6 L0xffffffffe150;
mov c7 L0xffffffffe158;

{
  true
  &&
  true
}

