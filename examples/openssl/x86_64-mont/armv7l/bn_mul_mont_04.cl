proc main (uint32 a0, uint32 a1, uint32 a2, uint32 a3,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3,
           uint32 n,
           uint32 m0, uint32 m1, uint32 m2, uint32 m3) =
{
  and [
    eqmod (n * (limbs 64 [m0, m1, m2, m3]) + 1)
          0
          (limbs 64 [0, 1]),
    eqmod m0 1 2
  ]
&&
  and [
    limbs 32 [a0, a1, a2, a3] <u limbs 32 [m0, m1, m2, m3],
    limbs 32 [b0, b1, b2, b3] <u limbs 32 [m0, m1, m2, m3]
  ]
}

mov L0x6f098 a0;
mov L0x6f09c a1;
mov L0x6f0a0 a2;
mov L0x6f0a4 a3;

mov L0x6f118 b0;
mov L0x6f11c b1;
mov L0x6f120 b2;
mov L0x6f124 b3;

mov L0x6f198 m0;
mov L0x6f19c m1;
mov L0x6f1a0 m2;
mov L0x6f1a4 m3;

mov L0x6f218 n;

(* #tst.w	r12, #7 *)
#tst.w	%%r12, #7;
(* #bne.n	0x10510 <bn_mul_mont+48> *)
#bne.n	0x10510 <bn_mul_mont+48>;
(* #cmp.w	r12, #2 *)
#cmp.w	%%r12, #2;
(* #mov	r0, r12 *)
#mov	%%r0, %%r12;
(* #ittt	lt *)
#ittt	lt;
(* #stmdb	sp!, {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr} *)
#stmdb	sp!, {%%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11, %%r12, %%lr};
(* #movlt.w	r0, r0, lsl #2 *)
#movlt.w	%%r0, %%r0, lsl #2;
(* #sublt.w	sp, sp, r0 *)
#sublt.w	sp, sp, %%r0;
(* #sublt	sp, #4 *)
#sublt	sp, #4;
(* #sub.w	r0, r0, #4 *)
#sub.w	%%r0, %%r0, #4;
(* #add.w	r4, r2, r0 *)
#add.w	%%r4, %%r2, %%r0;
(* #add	r0, sp *)
#add	%%r0, sp;
(* ldr.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0x0006f218 *)
(* mov r8 L0xbeffeb78; *)
(* ldr	r2, [r2, #0]                                #! EA = L0x6f118; Value = 0x82a9b3e0 *)
mov r2 L0x6f118;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f098; Value = 0x782a9b3e *)
mov r5 L0x6f098;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f198; Value = 0xcbc98198 *)
mov r6 L0x6f198;
(* ldr.w	r8, [r8]                                  #! EA = L0x6f218; Value = 0xcbc98198 *)
mov r8 L0x6f218;
(* #str	r4, [r0, #60]	; 0x3c                        #! EA = L0xbeffeb7c; Value = 0x00000004 *)
#str	%%r4, %%L0xbeffeb7c	; 0x3c                        #! L0xbeffeb7c = L0xbeffeb7c; 0x00000004 = 0x00000004;
(* umull	r10, r11, r5, r2 *)
mull r11 r10 r5 r2;
(* str.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0x0006f218 *)
mov L0xbeffeb78 r8;
(* mul.w	r8, r10, r8 *)
mull dontcare r8 r10 r8;
(* mov.w	r12, #0 *)
mov r12 0@uint32;
(* umlal	r10, r12, r6, r8 *)
mull tH tL r6 r8;
adds tc r10 r10 tL;
adc r12 r12 tH tc;
(* NOTE: lower bits are 0 *)
assert eqmod r10 0 (2**32) && true;
assume r10 = 0 && true;
(* #mov	r4, sp *)
#mov	%%r4, sp;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f09c; Value = 0x02d82d6b *)
mov r5 L0x6f09c;
(* mov	r10, r11 *)
mov r10 r11;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f19c; Value = 0x18f810a0 *)
mov r6 L0x6f19c;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb34; Value = 0x0006f690 *)
mov L0xbeffeb34 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x10560 <bn_mul_mont+128> *)
#bne.n	0x10560 <bn_mul_mont+128>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a0; Value = 0xa9b3e02d *)
mov r5 L0x6f0a0;
(* mov	r10, r11 *)
mov r10 r11;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a0; Value = 0x02888abc *)
mov r6 L0x6f1a0;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb38; Value = 0x00000000 *)
mov L0xbeffeb38 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x10560 <bn_mul_mont+128> *)
#bne.n	0x10560 <bn_mul_mont+128>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a4; Value = 0x78282d6b *)
mov r5 L0x6f0a4;
(* mov	r10, r11 *)
mov r10 r11;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a4; Value = 0xdef19181 *)
mov r6 L0x6f1a4;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb3c; Value = 0x000000ac *)
mov L0xbeffeb3c r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x10560 <bn_mul_mont+128> *)
#bne.n	0x10560 <bn_mul_mont+128>;
(* adds.w	r12, r12, r11 *)
uadds carry r12 r12 r11;
(* #ldr	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f118 *)
#ldr	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f118 = 0x0006f118;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* ldr.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0xcbc98198 *)
mov r8 L0xbeffeb78;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* str.w	r12, [r0]                                 #! EA = L0xbeffeb40; Value = 0x000714c0 *)
mov L0xbeffeb40 r12;
(* #mov	r7, sp *)
#mov	%%r7, sp;
(* str.w	lr, [r0, #4]                              #! EA = L0xbeffeb44; Value = 0xbeffeb78 *)
mov L0xbeffeb44 lr;
(* #sub.w	r7, r0, r7 *)
#sub.w	%%r7, %%r0, %%r7;
(* #sub.w	r1, r1, r7 *)
#sub.w	%%r1, %%r1, %%r7;
(* ldr.w	r2, [r4, #4]!                             #! EA = L0x6f11c; Value = 0x2d82d6b7 *)
mov r2 L0x6f11c;
(* #sub.w	r3, r3, r7 *)
#sub.w	%%r3, %%r3, %%r7;
(* ldr.w	r5, [r1, #-4]                             #! EA = L0x6f098; Value = 0x782a9b3e *)
mov r5 L0x6f098;
(* ldr.w	r10, [sp]                                 #! EA = L0xbeffeb34; Value = 0xcf508ceb *)
mov r10 L0xbeffeb34;
(* ldr.w	r6, [r3, #-4]                             #! EA = L0x6f198; Value = 0xcbc98198 *)
mov r6 L0x6f198;
(* ldr	r7, [sp, #4]                                #! EA = L0xbeffeb38; Value = 0xe8d50541 *)
mov r7 L0xbeffeb38;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* #str	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f118 *)
#str	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f118 = 0x0006f118;
(* mul.w	r8, r10, r8 *)
mull dontcare r8 r10 r8;
(* mov.w	r12, #0 *)
mov r12 0@uint32;
(* umlal	r10, r12, r6, r8 *)
mull tH tL r6 r8;
adds tc r10 r10 tL;
adc r12 r12 tH tc;
(* NOTE: lower bits are 0 *)
assert eqmod r10 0 (2**32) && true;
assume r10 = 0 && true;
(* #mov	r4, sp *)
#mov	%%r4, sp;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f09c; Value = 0x02d82d6b *)
mov r5 L0x6f09c;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f19c; Value = 0x18f810a0 *)
mov r6 L0x6f19c;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb3c; Value = 0x8dfcbf87 *)
mov r7 L0xbeffeb3c;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb34; Value = 0xcf508ceb *)
mov L0xbeffeb34 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a0; Value = 0xa9b3e02d *)
mov r5 L0x6f0a0;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a0; Value = 0x02888abc *)
mov r6 L0x6f1a0;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb40; Value = 0x521c21fc *)
mov r7 L0xbeffeb40;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb38; Value = 0xe8d50541 *)
mov L0xbeffeb38 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a4; Value = 0x78282d6b *)
mov r5 L0x6f0a4;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a4; Value = 0xdef19181 *)
mov r6 L0x6f1a4;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov r7 L0xbeffeb44;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb3c; Value = 0x8dfcbf87 *)
mov L0xbeffeb3c r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* adds.w	r12, r12, r11 *)
uadds carry r12 r12 r11;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* #ldr	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f11c *)
#ldr	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f11c = 0x0006f11c;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* ldr.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0xcbc98198 *)
mov r8 L0xbeffeb78;
(* adds.w	r12, r12, r7 *)
uadds carry r12 r12 r7;
(* ldr	r7, [r0, #60]	; 0x3c                        #! EA = L0xbeffeb7c; Value = 0x0006f124 *)
(* mov r7 L0xbeffeb7c; *)
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* str.w	r12, [r0]                                 #! EA = L0xbeffeb40; Value = 0x521c21fc *)
mov L0xbeffeb40 r12;
(* str.w	lr, [r0, #4]                              #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov L0xbeffeb44 lr;

cut and [
      eqmod (limbs 32 [0, 0,
                       L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                       L0xbeffeb44])
            ((limbs 32 [a0, a1, a2, a3]) * (limbs 32 [b0, b1]))
            (limbs 32 [m0, m1, m2, m3]),
      eqmod (n * (limbs 64 [m0, m1, m2, m3]) + 1)
            0
            (limbs 64 [0, 1]),
      eqmod m0 1 2,
      L0x6f098 = a0, L0x6f09c = a1, L0x6f0a0 = a2, L0x6f0a4 = a3, 
      L0x6f118 = b0, L0x6f11c = b1, L0x6f120 = b2, L0x6f124 = b3,
      L0x6f198 = m0, L0x6f19c = m1, L0x6f1a0 = m2, L0x6f1a4 = m3,
      L0x6f218 = n
    ]
 && and [
      limbs 32 [L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                L0xbeffeb44] <u
      2@160 * (limbs 32 [m0, m1, m2, m3, 0@32])
    ];

assume true
    && eqmod (limbs 32 [0@32, 0@32,
                        L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                        L0xbeffeb44])
             ((limbs 32 [a0, a1,   a2,   a3, 0@32, 0@32, 0@32]) *
              (limbs 32 [b0, b1, 0@32, 0@32, 0@32, 0@32, 0@32]))
             (limbs 32 [m0, m1, m2, m3, 0@32, 0@32, 0@32]);

(* #cmp	r4, r7 *)
#cmp	%%r4, %%r7;
(* #itt	ne *)
#itt	ne;
(* #movne	r7, sp *)
#movne	%%r7, sp;
(* #bne.n	0x105a6 <bn_mul_mont+198> *)
#bne.n	0x105a6 <bn_mul_mont+198>;
(* #sub.w	r7, r0, r7 *)
#sub.w	%%r7, %%r0, %%r7;
(* #sub.w	r1, r1, r7 *)
#sub.w	%%r1, %%r1, %%r7;
(* ldr.w	r2, [r4, #4]!                             #! EA = L0x6f120; Value = 0x82ae02d7 *)
mov r2 L0x6f120;
(* #sub.w	r3, r3, r7 *)
#sub.w	%%r3, %%r3, %%r7;
(* ldr.w	r5, [r1, #-4]                             #! EA = L0x6f098; Value = 0x782a9b3e *)
mov r5 L0x6f098;
(* ldr.w	r10, [sp]                                 #! EA = L0xbeffeb34; Value = 0x01c10527 *)
mov r10 L0xbeffeb34;
(* ldr.w	r6, [r3, #-4]                             #! EA = L0x6f198; Value = 0xcbc98198 *)
mov r6 L0x6f198;
(* ldr	r7, [sp, #4]                                #! EA = L0xbeffeb38; Value = 0x85a77231 *)
mov r7 L0xbeffeb38;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* #str	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f11c *)
#str	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f11c = 0x0006f11c;
(* mul.w	r8, r10, r8 *)
mull dontcare r8 r10 r8;
(* mov.w	r12, #0 *)
mov r12 0@uint32;
(* umlal	r10, r12, r6, r8 *)
mull tH tL r6 r8;
adds tc r10 r10 tL;
adc r12 r12 tH tc;
(* NOTE: lower bits are 0 *)
assert eqmod r10 0 (2**32) && true;
assume r10 = 0 && true;
(* #mov	r4, sp *)
#mov	%%r4, sp;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f09c; Value = 0x02d82d6b *)
mov r5 L0x6f09c;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f19c; Value = 0x18f810a0 *)
mov r6 L0x6f19c;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb3c; Value = 0xa291a2eb *)
mov r7 L0xbeffeb3c;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb34; Value = 0x01c10527 *)
mov L0xbeffeb34 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a0; Value = 0xa9b3e02d *)
mov r5 L0x6f0a0;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a0; Value = 0x02888abc *)
mov r6 L0x6f1a0;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb40; Value = 0xd2fa5eb1 *)
mov r7 L0xbeffeb40;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb38; Value = 0x85a77231 *)
mov L0xbeffeb38 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a4; Value = 0x78282d6b *)
mov r5 L0x6f0a4;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a4; Value = 0xdef19181 *)
mov r6 L0x6f1a4;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov r7 L0xbeffeb44;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb3c; Value = 0xa291a2eb *)
mov L0xbeffeb3c r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* adds.w	r12, r12, r11 *)
uadds carry r12 r12 r11;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* #ldr	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f120 *)
#ldr	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f120 = 0x0006f120;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* ldr.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0xcbc98198 *)
mov r8 L0xbeffeb78;
(* adds.w	r12, r12, r7 *)
uadds carry r12 r12 r7;
(* ldr	r7, [r0, #60]	; 0x3c                        #! EA = L0xbeffeb7c; Value = 0x0006f124 *)
(* mov r7 L0xbeffeb7c; *)
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* str.w	r12, [r0]                                 #! EA = L0xbeffeb40; Value = 0xd2fa5eb1 *)
mov L0xbeffeb40 r12;
(* str.w	lr, [r0, #4]                              #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov L0xbeffeb44 lr;

cut and [
      eqmod (limbs 32 [0, 0, 0,
                       L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                       L0xbeffeb44])
            ((limbs 32 [a0, a1, a2, a3]) * (limbs 32 [b0, b1, b2]))
            (limbs 32 [m0, m1, m2, m3]),
      eqmod (n * (limbs 64 [m0, m1, m2, m3]) + 1)
            0
            (limbs 64 [0, 1]),
      eqmod m0 1 2,
      L0x6f098 = a0, L0x6f09c = a1, L0x6f0a0 = a2, L0x6f0a4 = a3, 
      L0x6f118 = b0, L0x6f11c = b1, L0x6f120 = b2, L0x6f124 = b3,
      L0x6f198 = m0, L0x6f19c = m1, L0x6f1a0 = m2, L0x6f1a4 = m3,
      L0x6f218 = n
    ]
 && and [
      limbs 32 [L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                L0xbeffeb44] <u
      2@160 * (limbs 32 [m0, m1, m2, m3, 0@32])
    ];

assume true
    && eqmod (limbs 32 [0@32, 0@32, 0@32,
                        L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                        L0xbeffeb44])
             ((limbs 32 [a0, a1, a2,   a3, 0@32, 0@32, 0@32, 0@32]) *
              (limbs 32 [b0, b1, b2, 0@32, 0@32, 0@32, 0@32, 0@32]))
             (limbs 32 [m0, m1, m2, m3, 0@32, 0@32, 0@32, 0@32]);

(* #cmp	r4, r7 *)
#cmp	%%r4, %%r7;
(* #itt	ne *)
#itt	ne;
(* #movne	r7, sp *)
#movne	%%r7, sp;
(* #bne.n	0x105a6 <bn_mul_mont+198> *)
#bne.n	0x105a6 <bn_mul_mont+198>;
(* #sub.w	r7, r0, r7 *)
#sub.w	%%r7, %%r0, %%r7;
(* #sub.w	r1, r1, r7 *)
#sub.w	%%r1, %%r1, %%r7;
(* ldr.w	r2, [r4, #4]!                             #! EA = L0x6f124; Value = 0x829b3d6b *)
mov r2 L0x6f124;
(* #sub.w	r3, r3, r7 *)
#sub.w	%%r3, %%r3, %%r7;
(* ldr.w	r5, [r1, #-4]                             #! EA = L0x6f098; Value = 0x782a9b3e *)
mov r5 L0x6f098;
(* ldr.w	r10, [sp]                                 #! EA = L0xbeffeb34; Value = 0xc135306a *)
mov r10 L0xbeffeb34;
(* ldr.w	r6, [r3, #-4]                             #! EA = L0x6f198; Value = 0xcbc98198 *)
mov r6 L0x6f198;
(* ldr	r7, [sp, #4]                                #! EA = L0xbeffeb38; Value = 0xea81d418 *)
mov r7 L0xbeffeb38;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* #str	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f120 *)
#str	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f120 = 0x0006f120;
(* mul.w	r8, r10, r8 *)
mull dontcare r8 r10 r8;
(* mov.w	r12, #0 *)
mov r12 0@uint32;
(* umlal	r10, r12, r6, r8 *)
mull tH tL r6 r8;
adds tc r10 r10 tL;
adc r12 r12 tH tc;
(* NOTE: lower bits are 0 *)
assert eqmod r10 0 (2**32) && true;
assume r10 = 0 && true;
(* #mov	r4, sp *)
#mov	%%r4, sp;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f09c; Value = 0x02d82d6b *)
mov r5 L0x6f09c;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f19c; Value = 0x18f810a0 *)
mov r6 L0x6f19c;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb3c; Value = 0x77ec20e5 *)
mov r7 L0xbeffeb3c;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb34; Value = 0xc135306a *)
mov L0xbeffeb34 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a0; Value = 0xa9b3e02d *)
mov r5 L0x6f0a0;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a0; Value = 0x02888abc *)
mov r6 L0x6f1a0;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb40; Value = 0x8f3f01ca *)
mov r7 L0xbeffeb40;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb38; Value = 0xea81d418 *)
mov L0xbeffeb38 r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* ldr.w	r5, [r1], #4                              #! EA = L0x6f0a4; Value = 0x78282d6b *)
mov r5 L0x6f0a4;
(* adds.w	r10, r11, r7 *)
uadds carry r10 r11 r7;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a4; Value = 0xdef19181 *)
mov r6 L0x6f1a4;
(* mov.w	r11, #0 *)
mov r11 0@uint32;
(* umlal	r10, r11, r5, r2 *)
mull tH tL r5 r2;
adds tc r10 r10 tL;
adc r11 r11 tH tc;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* umlal	r12, lr, r6, r8 *)
mull tH tL r6 r8;
adds tc r12 r12 tL;
adc lr lr tH tc;
(* adc.w	r11, r11, #0 *)
uadc r11 r11 0@uint32 carry;
(* ldr	r7, [r4, #8]                                #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov r7 L0xbeffeb44;
(* adds.w	r12, r12, r10 *)
uadds carry r12 r12 r10;
(* str.w	r12, [r4], #4                             #! EA = L0xbeffeb3c; Value = 0x77ec20e5 *)
mov L0xbeffeb3c r12;
(* adc.w	r12, lr, #0 *)
uadc r12 lr 0@uint32 carry;
(* #cmp	r4, r0 *)
#cmp	%%r4, %%r0;
(* #bne.n	0x105dc <bn_mul_mont+252> *)
#bne.n	0x105dc <bn_mul_mont+252>;
(* adds.w	r12, r12, r11 *)
uadds carry r12 r12 r11;
(* mov.w	lr, #0 *)
mov lr 0@uint32;
(* #ldr	r4, [r0, #52]	; 0x34                        #! EA = L0xbeffeb74; Value = 0x0006f124 *)
#ldr	%%r4, %%L0xbeffeb74	; 0x34                        #! L0xbeffeb74 = L0xbeffeb74; 0x0006f124 = 0x0006f124;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* ldr.w	r8, [r0, #56]	; 0x38                      #! EA = L0xbeffeb78; Value = 0xcbc98198 *)
mov r8 L0xbeffeb78;
(* adds.w	r12, r12, r7 *)
uadds carry r12 r12 r7;
(* ldr	r7, [r0, #60]	; 0x3c                        #! EA = L0xbeffeb7c; Value = 0x0006f124 *)
(* mov r7 L0xbeffeb7c; *)
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* str.w	r12, [r0]                                 #! EA = L0xbeffeb40; Value = 0x8f3f01ca *)
mov L0xbeffeb40 r12;
(* str.w	lr, [r0, #4]                              #! EA = L0xbeffeb44; Value = 0x00000000 *)
mov L0xbeffeb44 lr;

cut and [
      eqmod (limbs 32 [0, 0, 0, 0,
                       L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                       L0xbeffeb44])
            ((limbs 32 [a0, a1, a2, a3]) * (limbs 32 [b0, b1, b2, b3]))
            (limbs 32 [m0, m1, m2, m3]),
      eqmod (n * (limbs 64 [m0, m1, m2, m3]) + 1)
            0
            (limbs 64 [0, 1]),
      eqmod m0 1 2,
      L0x6f098 = a0, L0x6f09c = a1, L0x6f0a0 = a2, L0x6f0a4 = a3, 
      L0x6f118 = b0, L0x6f11c = b1, L0x6f120 = b2, L0x6f124 = b3,
      L0x6f198 = m0, L0x6f19c = m1, L0x6f1a0 = m2, L0x6f1a4 = m3,
      L0x6f218 = n
    ]
 && and [
      L0x6f198 = m0, L0x6f19c = m1, L0x6f1a0 = m2, L0x6f1a4 = m3,
      L0xbeffeb44 = lr,
      limbs 32 [L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                L0xbeffeb44] <u
      2@160 * (limbs 32 [m0, m1, m2, m3, 0@32])
    ];

(* #cmp	r4, r7 *)
#cmp	%%r4, %%r7;
(* #itt	ne *)
#itt	ne;
(* #ldr	r2, [r0, #48]	; 0x30                        #! EA = L0xbeffeb70; Value = 0xbeffeb84 *)
#ldr	%%r2, %%L0xbeffeb70	; 0x30                        #! L0xbeffeb70 = L0xbeffeb70; 0xbeffeb84 = 0xbeffeb84;
(* #movne	r5, sp *)
#movne	%%r5, sp;
(* #addne.w	r0, r0, #4 *)
#addne.w	%%r0, %%r0, #4;
(* #sub.w	r5, r0, r5 *)
#sub.w	%%r5, %%r0, %%r5;
(* #mov	r4, sp *)
#mov	%%r4, sp;
(* #mov	r1, r4 *)
#mov	%%r1, %%r4;
(* #sub.w	r3, r3, r5 *)
#sub.w	%%r3, %%r3, %%r5;
(* subs	r7, r7, r7 *)
mov carry 1@bit;
(* ldr.w	r7, [r4], #4                              #! EA = L0xbeffeb34; Value = 0xbf997bd1 *)
mov r7 L0xbeffeb34;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f198; Value = 0xcbc98198 *)
mov r6 L0x6f198;
(* sbcs	r7, r6 *)
usbcs carry r7 r7 r6 carry;
(* str.w	r7, [r2], #4                              #! EA = L0xbeffeb84; Value = 0x00000000 *)
mov L0xbeffeb84 r7;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x10650 <bn_mul_mont+368> *)
#bne.n	0x10650 <bn_mul_mont+368>;
(* ldr.w	r7, [r4], #4                              #! EA = L0xbeffeb38; Value = 0xf1b8fe12 *)
mov r7 L0xbeffeb38;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f19c; Value = 0x18f810a0 *)
mov r6 L0x6f19c;
(* sbcs	r7, r6 *)
usbcs carry r7 r7 r6 carry;
(* str.w	r7, [r2], #4                              #! EA = L0xbeffeb88; Value = 0x00000000 *)
mov L0xbeffeb88 r7;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x10650 <bn_mul_mont+368> *)
#bne.n	0x10650 <bn_mul_mont+368>;
(* ldr.w	r7, [r4], #4                              #! EA = L0xbeffeb3c; Value = 0xc8a4dc2d *)
mov r7 L0xbeffeb3c;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a0; Value = 0x02888abc *)
mov r6 L0x6f1a0;
(* sbcs	r7, r6 *)
usbcs carry r7 r7 r6 carry;
(* str.w	r7, [r2], #4                              #! EA = L0xbeffeb8c; Value = 0x00000000 *)
mov L0xbeffeb8c r7;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x10650 <bn_mul_mont+368> *)
#bne.n	0x10650 <bn_mul_mont+368>;
(* ldr.w	r7, [r4], #4                              #! EA = L0xbeffeb40; Value = 0xd1c97961 *)
mov r7 L0xbeffeb40;
(* ldr.w	r6, [r3], #4                              #! EA = L0x6f1a4; Value = 0xdef19181 *)
mov r6 L0x6f1a4;
(* sbcs	r7, r6 *)
usbcs carry r7 r7 r6 carry;
(* str.w	r7, [r2], #4                              #! EA = L0xbeffeb90; Value = 0x00000000 *)
mov L0xbeffeb90 r7;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x10650 <bn_mul_mont+368> *)
#bne.n	0x10650 <bn_mul_mont+368>;
(* sbcs.w	lr, lr, #0 *)
usbcs carry lr lr 0@uint32 carry;

assert true
    && or (carry = 0@1)
          (and (carry = 1@1)
               ((limbs 32 [L0xbeffeb84, L0xbeffeb88, L0xbeffeb8c, L0xbeffeb90,
                           0@32])
                =
                (limbs 32 [L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                           L0xbeffeb44]) -
                (limbs 32 [m0, m1, m2, m3, 0@32])));

assume (carry - 0) * (carry - 1) = 0 && true;
assume (carry - 0) *
       ((limbs 32 [L0xbeffeb34, L0xbeffeb38, L0xbeffeb3c, L0xbeffeb40,
                   L0xbeffeb44]) -
        (limbs 32 [m0, m1, m2, m3]) -
        (limbs 32 [L0xbeffeb84, L0xbeffeb88, L0xbeffeb8c, L0xbeffeb90])) = 0
    && true;

(* #mov	r4, sp *)
#mov	%%r4, sp;
(* #sub.w	r2, r2, r5 *)
#sub.w	%%r2, %%r2, %%r5;
(* ldr	r7, [r4, #0]                                #! EA = L0xbeffeb34; Value = 0xbf997bd1 *)
mov r7 L0xbeffeb34;
(* ldr	r5, [r2, #0]                                #! EA = L0xbeffeb84; Value = 0xf3cffa39 *)
mov r5 L0xbeffeb84;
(* #str.w	sp, [r4], #4                              #! EA = L0xbeffeb34; Value = 0xbf997bd1 *)
#str.w	sp, %%L0xbeffeb34                              #! L0xbeffeb34 = L0xbeffeb34; 0xbf997bd1 = 0xbf997bd1;
(* #it	cc *)
#it	cc;
(* movcc	r5, r7 *)
cmov r5 carry r5 r7;
(* str.w	r5, [r2], #4                              #! EA = L0xbeffeb84; Value = 0xf3cffa39 *)
mov L0xbeffeb84 r5;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x1066e <bn_mul_mont+398> *)
#bne.n	0x1066e <bn_mul_mont+398>;
(* ldr	r7, [r4, #0]                                #! EA = L0xbeffeb38; Value = 0xf1b8fe12 *)
mov r7 L0xbeffeb38;
(* ldr	r5, [r2, #0]                                #! EA = L0xbeffeb88; Value = 0xd8c0ed71 *)
mov r5 L0xbeffeb88;
(* #str.w	sp, [r4], #4                              #! EA = L0xbeffeb38; Value = 0xf1b8fe12 *)
#str.w	sp, %%L0xbeffeb38                              #! L0xbeffeb38 = L0xbeffeb38; 0xf1b8fe12 = 0xf1b8fe12;
(* it	cc *)
#it	cc
(* movcc	r5, r7 *)
cmov r5 carry r5 r7;
(* str.w	r5, [r2], #4                              #! EA = L0xbeffeb88; Value = 0xd8c0ed71 *)
mov L0xbeffeb88 r5;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x1066e <bn_mul_mont+398> *)
#bne.n	0x1066e <bn_mul_mont+398>;
(* ldr	r7, [r4, #0]                                #! EA = L0xbeffeb3c; Value = 0xc8a4dc2d *)
mov r7 L0xbeffeb3c;
(* ldr	r5, [r2, #0]                                #! EA = L0xbeffeb8c; Value = 0xc61c5171 *)
mov r5 L0xbeffeb8c;
(* #str.w	sp, [r4], #4                              #! EA = L0xbeffeb3c; Value = 0xc8a4dc2d *)
#str.w	sp, %%L0xbeffeb3c                              #! L0xbeffeb3c = L0xbeffeb3c; 0xc8a4dc2d = 0xc8a4dc2d;
(* it	cc *)
#it	cc;
(* movcc	r5, r7 *)
cmov r5 carry r5 r7;
(* str.w	r5, [r2], #4                              #! EA = L0xbeffeb8c; Value = 0xc61c5171 *)
mov L0xbeffeb8c r5;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x1066e <bn_mul_mont+398> *)
#bne.n	0x1066e <bn_mul_mont+398>;
(* ldr	r7, [r4, #0]                                #! EA = L0xbeffeb40; Value = 0xd1c97961 *)
mov r7 L0xbeffeb40;
(* ldr	r5, [r2, #0]                                #! EA = L0xbeffeb90; Value = 0xf2d7e7e0 *)
mov r5 L0xbeffeb90;
(* #str.w	sp, [r4], #4                              #! EA = L0xbeffeb40; Value = 0xd1c97961 *)
#str.w	sp, %%L0xbeffeb40                              #! L0xbeffeb40 = L0xbeffeb40; 0xd1c97961 = 0xd1c97961;
(* it	cc *)
#it	cc;
(* movcc	r5, r7 *)
cmov r5 carry r5 r7;
(* str.w	r5, [r2], #4                              #! EA = L0xbeffeb90; Value = 0xf2d7e7e0 *)
mov L0xbeffeb90 r5;
(* #teq	r4, r0 *)
#teq	%%r4, %%r0;
(* #bne.n	0x1066e <bn_mul_mont+398> *)
#bne.n	0x1066e <bn_mul_mont+398>;
(* #mov	sp, r0 *)
#mov	sp, %%r0;
(* #add	sp, #4 *)
#add	sp, #4;
(* #ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr} *)
#ldmia.w	sp!, {%%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11, %%r12, %%lr};
(* #add	sp, #8 *)
#add	sp, #8;
(* #mov.w	r0, #1 *)
#mov.w	%%r0, #1;
(* #bx	lr *)
#bx	%%lr;

mov c0 L0xbeffeb84;
mov c1 L0xbeffeb88;
mov c2 L0xbeffeb8c;
mov c3 L0xbeffeb90;

{
  eqmod (limbs 32 [0, 0, 0, 0, c0, c1, c2, c3])
        ((limbs 32 [a0, a1, a2, a3]) * (limbs 32 [b0, b1, b2, b3]))
        (limbs 32 [m0, m1, m2, m3])
&&
  true # (limbs 32 [c0, c1, c2, c3]) <u (limbs 32 [m0, m1, m2, m3])
}

