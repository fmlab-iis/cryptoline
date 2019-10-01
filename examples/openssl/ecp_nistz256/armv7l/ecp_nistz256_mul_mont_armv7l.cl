(* frege: -v -btor -qfbv_args '-SE minisat' -isafety -w 32
Parsing Cryptoline file:                [OK]            0.008678 seconds
Checking well-formedness:               [OK]            0.001849 seconds
Transforming to SSA form:               [OK]            0.000392 seconds
Rewriting assignments:                  [OK]            0.004373 seconds
Verifying program safety:               [OK]            7.258437 seconds
Verifying range assertions:             [OK]            97.350528 seconds
Verifying range specification:          [OK]            4.186190 seconds
Rewriting value-preserved casting:      [OK]            0.000030 seconds
Verifying algebraic assertions:         [OK]            1.272187 seconds
Verifying algebraic specification:      [OK]            2.886267 seconds
Verification result:                    [OK]            112.969530 seconds
*)

proc main (uint32 a0, uint32 a1, uint32 a2, uint32 a3,
           uint32 a4, uint32 a5, uint32 a6, uint32 a7,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3,
           uint32 b4, uint32 b5, uint32 b6, uint32 b7) =
{
  true
  &&
  and [
    (limbs 32 [a0, a1, a2, a3, a4, a5, a6, a7]) <
    (limbs 32 [(2**32 - 1)@32, (2**32 - 1)@32,
               (2**32 - 1)@32,           0@32,
                         0@32,           0@32,
                         1@32, (2**32 - 1)@32]),
    (limbs 32 [b0, b1, b2, b3, b4, b5, b6, b7]) <
    (limbs 32 [(2**32 - 1)@32, (2**32 - 1)@32,
               (2**32 - 1)@32,           0@32,
                         0@32,           0@32,
                         1@32, (2**32 - 1)@32])
  ]
}

mov p0 (2**32 - 1)@uint32;
mov p1 (2**32 - 1)@uint32;
mov p2 (2**32 - 1)@uint32;
mov p3 0@uint32;
mov p4 0@uint32;
mov p5 0@uint32;
mov p6 1@uint32;
mov p7 (2**32 - 1)@uint32;

mov L0x960b0 b0;
mov L0x960b4 b1;
mov L0x960b8 b2;
mov L0x960bc b3;
mov L0x960c0 b4;
mov L0x960c4 b5;
mov L0x960c8 b6;
mov L0x960cc b7;

(* Breakpoint 1, 0x000107f4 in ecp_nistz256_mul_mont () *)
#Breakpoint 1, 0x000107f4 in ecp_nistz256_mul_mont ();
(* #bl	0x10800 <__ecp_nistz256_mul_mont> *)
#bl	0x10800 <__ecp_nistz256_mul_mont>;
(* stmdb	sp!, {r0, r1, r2, lr} *)
#stmdb	sp!, {%%r0, %%r1, %%r2, %%lr};
(* ldr	r2, [r2, #0]                                #! EA = L0x960b0, Value = 0x0020813a *)
mov r2 L0x960b0;
(* ldmia.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11} *)
#ldmia.w	%%r1, {%%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11};
mov r4  a0;
mov r5  a1;
mov r6  a2;
mov r7  a3;
mov r8  a4;
mov r9  a5;
mov r10 a6;
mov r11 a7;
(* umull	r3, lr, r4, r2 *)
mull lr r3 r4 r2;
(* stmdb	sp!, {r4, r5, r6, r7, r8, r9, r10, r11} *)
#stmdb	sp!, {%%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11};
mov L0xbeffebe0 r4;
mov L0xbeffebe4 r5;
mov L0xbeffebe8 r6;
mov L0xbeffebec r7;
mov L0xbeffebf0 r8;
mov L0xbeffebf4 r9;
mov L0xbeffebf8 r10;
mov L0xbeffebfc r11;
(* umull	r4, r0, r5, r2 *)
mull r0 r4 r5 r2;
(* umull	r5, r1, r6, r2 *)
mull r1 r5 r6 r2;
(* adds.w	r4, r4, lr *)
uadds carry r4 r4 lr;
(* umull	r6, r12, r7, r2 *)
mull r12 r6 r7 r2;
(* adcs	r5, r0 *)
uadcs carry r5 r5 r0 carry;
(* umull	r7, lr, r8, r2 *)
mull lr r7 r8 r2;
(* adcs	r6, r1 *)
uadcs carry r6 r6 r1 carry;
(* umull	r8, r0, r9, r2 *)
mull r0 r8 r9 r2;
(* adcs.w	r7, r7, r12 *)
uadcs carry r7 r7 r12 carry;
(* umull	r9, r1, r10, r2 *)
mull r1 r9 r10 r2;
(* adcs.w	r8, r8, lr *)
uadcs carry r8 r8 lr carry;
(* umull	r10, r12, r11, r2 *)
mull r12 r10 r11 r2;
(* adcs.w	r9, r9, r0 *)
uadcs carry r9 r9 r0 carry;
(* adcs.w	r10, r10, r1 *)
uadcs carry r10 r10 r1 carry;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adc.w	r11, r12, #0 *)
uadc r11 r12 0@uint32 carry;
(* adds	r6, r6, r3 *)
uadds carry r6 r6 r3;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r7, r7, #0 *)
uadcs carry r7 r7 0@uint32 carry;
(* adcs.w	r8, r8, #0 *)
uadcs carry r8 r8 0@uint32 carry;
(* adcs.w	r9, r9, r3 *)
uadcs carry r9 r9 r3 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r10, r10, #0 *)
uadcs carry r10 r10 0@uint32 carry;
(* ldr	r2, [r2, #4]                                #! EA = L0x960b4, Value = 0x7f7fbfca *)
mov r2 L0x960b4;
(* adcs.w	r11, r11, r3 *)
uadcs carry r11 r11 r3 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs.w	r10, r10, r3 *)
usubc carry r10 r10 r3;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r11, r11, #0 *)
usbcs carry r11 r11 0@uint32 carry;
(* umlal	r4, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r4 r4 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r3, lr, #0 *)
usbcs c r3 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r5, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r5 r5 tL;
adc r1 r1 tH tc;
(* str	r3, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00096090 *)
mov L0xbeffec04 r3;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr	r3, [sp, #12]                               #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r3 L0xbeffebec;
(* umlal	r6, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r6 r6 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds	r5, r5, r0 *)
uadds carry r5 r5 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r7, lr, r3, r2 *)
mull tH tL r3 r2;
adds tc r7 r7 tL;
adc lr lr tH tc;
(* eor.w	r3, r3, r3 *)
mov r3 0@uint32;
(* adcs	r6, r1 *)
uadcs carry r6 r6 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r8, r3, r0, r2 *)
mull tH tL r0 r2;
adds tc r8 r8 tL;
adc r3 r3 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r7, r7, r12 *)
uadcs carry r7 r7 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r9, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r9 r9 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r8, r8, lr *)
uadcs carry r8 r8 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r10, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r10 r10 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs.w	r9, r9, r3 *)
uadcs carry r9 r9 r3 carry;
(* ldr	r3, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r3 L0xbeffec04;
(* umlal	r11, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r11 r11 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs.w	r10, r10, r0 *)
uadcs carry r10 r10 r0 carry;
(* adcs.w	r11, r11, r1 *)
uadcs carry r11 r11 r1 carry;
(* adcs.w	r3, r3, r12 *)
uadcs carry r3 r3 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds	r7, r7, r4 *)
uadds carry r7 r7 r4;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r8, r8, #0 *)
uadcs carry r8 r8 0@uint32 carry;
(* adcs.w	r9, r9, #0 *)
uadcs carry r9 r9 0@uint32 carry;
(* adcs.w	r10, r10, r4 *)
uadcs carry r10 r10 r4 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r11, r11, #0 *)
uadcs carry r11 r11 0@uint32 carry;
(* ldr	r2, [r2, #8]                                #! EA = L0x960b8, Value = 0x28bdee5c *)
mov r2 L0x960b8;
(* adcs	r3, r4 *)
uadcs carry r3 r3 r4 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs.w	r11, r11, r4 *)
usubc carry r11 r11 r4;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r3, r3, #0 *)
usbcs carry r3 r3 0@uint32 carry;
(* umlal	r5, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r5 r5 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r4, lr, #0 *)
usbcs c r4 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r6, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r6 r6 tL;
adc r1 r1 tH tc;
(* str	r4, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov L0xbeffec04 r4;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr	r4, [sp, #12]                               #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r4 L0xbeffebec;
(* umlal	r7, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r7 r7 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds	r6, r6, r0 *)
uadds carry r6 r6 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r8, lr, r4, r2 *)
mull tH tL r4 r2;
adds tc r8 r8 tL;
adc lr lr tH tc;
(* eor.w	r4, r4, r4 *)
mov r4 0@uint32;
(* adcs	r7, r1 *)
uadcs carry r7 r7 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r9, r4, r0, r2 *)
mull tH tL r0 r2;
adds tc r9 r9 tL;
adc r4 r4 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r8, r8, r12 *)
uadcs carry r8 r8 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r10, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r10 r10 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r9, r9, lr *)
uadcs carry r9 r9 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r11, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r11 r11 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs.w	r10, r10, r4 *)
uadcs carry r10 r10 r4 carry;
(* ldr	r4, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r4 L0xbeffec04;
(* umlal	r3, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r3 r3 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs.w	r11, r11, r0 *)
uadcs carry r11 r11 r0 carry;
(* adcs	r3, r1 *)
uadcs carry r3 r3 r1 carry;
(* adcs.w	r4, r4, r12 *)
uadcs carry r4 r4 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r8, r8, r5 *)
uadds carry r8 r8 r5;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r9, r9, #0 *)
uadcs carry r9 r9 0@uint32 carry;
(* adcs.w	r10, r10, #0 *)
uadcs carry r10 r10 0@uint32 carry;
(* adcs.w	r11, r11, r5 *)
uadcs carry r11 r11 r5 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r3, r3, #0 *)
uadcs carry r3 r3 0@uint32 carry;
(* ldr	r2, [r2, #12]                               #! EA = L0x960bc, Value = 0xcd203987 *)
mov r2 L0x960bc;
(* adcs	r4, r5 *)
uadcs carry r4 r4 r5 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs	r3, r3, r5 *)
usubc carry r3 r3 r5;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r4, r4, #0 *)
usbcs carry r4 r4 0@uint32 carry;
(* umlal	r6, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r6 r6 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r5, lr, #0 *)
usbcs c r5 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r7, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r7 r7 tL;
adc r1 r1 tH tc;
(* str	r5, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov L0xbeffec04 r5;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr	r5, [sp, #12]                               #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r5 L0xbeffebec;
(* umlal	r8, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r8 r8 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds	r7, r7, r0 *)
uadds carry r7 r7 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r9, lr, r5, r2 *)
mull tH tL r5 r2;
adds tc r9 r9 tL;
adc lr lr tH tc;
(* eor.w	r5, r5, r5 *)
mov r5 0@uint32;
(* adcs.w	r8, r8, r1 *)
uadcs carry r8 r8 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r10, r5, r0, r2 *)
mull tH tL r0 r2;
adds tc r10 r10 tL;
adc r5 r5 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r9, r9, r12 *)
uadcs carry r9 r9 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r11, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r11 r11 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r10, r10, lr *)
uadcs carry r10 r10 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r3, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r3 r3 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs.w	r11, r11, r5 *)
uadcs carry r11 r11 r5 carry;
(* ldr	r5, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r5 L0xbeffec04;
(* umlal	r4, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r4 r4 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs	r3, r0 *)
uadcs carry r3 r3 r0 carry;
(* adcs	r4, r1 *)
uadcs carry r4 r4 r1 carry;
(* adcs.w	r5, r5, r12 *)
uadcs carry r5 r5 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r9, r9, r6 *)
uadds carry r9 r9 r6;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r10, r10, #0 *)
uadcs carry r10 r10 0@uint32 carry;
(* adcs.w	r11, r11, #0 *)
uadcs carry r11 r11 0@uint32 carry;
(* adcs	r3, r6 *)
uadcs carry r3 r3 r6 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r4, r4, #0 *)
uadcs carry r4 r4 0@uint32 carry;
(* ldr	r2, [r2, #16]                               #! EA = L0x960c0, Value = 0x09201c18 *)
mov r2 L0x960c0;
(* adcs	r5, r6 *)
uadcs carry r5 r5 r6 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs	r4, r4, r6 *)
usubc carry r4 r4 r6;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r5, r5, #0 *)
usbcs carry r5 r5 0@uint32 carry;
(* umlal	r7, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r7 r7 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r6, lr, #0 *)
usbcs c r6 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r8, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r8 r8 tL;
adc r1 r1 tH tc;
(* str	r6, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov L0xbeffec04 r6;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr	r6, [sp, #12]                               #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r6 L0xbeffebec;
(* umlal	r9, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r9 r9 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds.w	r8, r8, r0 *)
uadds carry r8 r8 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r10, lr, r6, r2 *)
mull tH tL r6 r2;
adds tc r10 r10 tL;
adc lr lr tH tc;
(* eor.w	r6, r6, r6 *)
mov r6 0@uint32;
(* adcs.w	r9, r9, r1 *)
uadcs carry r9 r9 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r11, r6, r0, r2 *)
mull tH tL r0 r2;
adds tc r11 r11 tL;
adc r6 r6 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r10, r10, r12 *)
uadcs carry r10 r10 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r3, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r3 r3 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r11, r11, lr *)
uadcs carry r11 r11 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r4, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r4 r4 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs	r3, r6 *)
uadcs carry r3 r3 r6 carry;
(* ldr	r6, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r6 L0xbeffec04;
(* umlal	r5, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r5 r5 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs	r4, r0 *)
uadcs carry r4 r4 r0 carry;
(* adcs	r5, r1 *)
uadcs carry r5 r5 r1 carry;
(* adcs.w	r6, r6, r12 *)
uadcs carry r6 r6 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r10, r10, r7 *)
uadds carry r10 r10 r7;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r11, r11, #0 *)
uadcs carry r11 r11 0@uint32 carry;
(* adcs.w	r3, r3, #0 *)
uadcs carry r3 r3 0@uint32 carry;
(* adcs	r4, r7 *)
uadcs carry r4 r4 r7 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r5, r5, #0 *)
uadcs carry r5 r5 0@uint32 carry;
(* ldr	r2, [r2, #20]                               #! EA = L0x960c4, Value = 0xfaafade7 *)
mov r2 L0x960c4;
(* adcs	r6, r7 *)
uadcs carry r6 r6 r7 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs	r5, r5, r7 *)
usubc carry r5 r5 r7;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r6, r6, #0 *)
usbcs carry r6 r6 0@uint32 carry;
(* umlal	r8, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r8 r8 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r7, lr, #0 *)
usbcs c r7 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r9, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r9 r9 tL;
adc r1 r1 tH tc;
(* str	r7, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov L0xbeffec04 r7;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr	r7, [sp, #12]                               #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r7 L0xbeffebec;
(* umlal	r10, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r10 r10 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds.w	r9, r9, r0 *)
uadds carry r9 r9 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r11, lr, r7, r2 *)
mull tH tL r7 r2;
adds tc r11 r11 tL;
adc lr lr tH tc;
(* eor.w	r7, r7, r7 *)
mov r7 0@uint32;
(* adcs.w	r10, r10, r1 *)
uadcs carry r10 r10 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r3, r7, r0, r2 *)
mull tH tL r0 r2;
adds tc r3 r3 tL;
adc r7 r7 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r11, r11, r12 *)
uadcs carry r11 r11 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r4, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r4 r4 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r3, r3, lr *)
uadcs carry r3 r3 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r5, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r5 r5 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs	r4, r7 *)
uadcs carry r4 r4 r7 carry;
(* ldr	r7, [sp, #36]	; 0x24                        #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r7 L0xbeffec04;
(* umlal	r6, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r6 r6 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs	r5, r0 *)
uadcs carry r5 r5 r0 carry;
(* adcs	r6, r1 *)
uadcs carry r6 r6 r1 carry;
(* adcs.w	r7, r7, r12 *)
uadcs carry r7 r7 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r11, r11, r8 *)
uadds carry r11 r11 r8;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r3, r3, #0 *)
uadcs carry r3 r3 0@uint32 carry;
(* adcs.w	r4, r4, #0 *)
uadcs carry r4 r4 0@uint32 carry;
(* adcs.w	r5, r5, r8 *)
uadcs carry r5 r5 r8 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r6, r6, #0 *)
uadcs carry r6 r6 0@uint32 carry;
(* ldr	r2, [r2, #24]                               #! EA = L0x960c8, Value = 0x33712938 *)
mov r2 L0x960c8;
(* adcs.w	r7, r7, r8 *)
uadcs carry r7 r7 r8 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs.w	r6, r6, r8 *)
usubc carry r6 r6 r8;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r7, r7, #0 *)
usbcs carry r7 r7 0@uint32 carry;
(* umlal	r9, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r9 r9 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r8, lr, #0 *)
usbcs c r8 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r10, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r10 r10 tL;
adc r1 r1 tH tc;
(* str.w	r8, [sp, #36]	; 0x24                      #! EA = L0xbeffec04, Value = 0x00000000 *)
mov L0xbeffec04 r8;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr.w	r8, [sp, #12]                             #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r8 L0xbeffebec;
(* umlal	r11, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r11 r11 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds.w	r10, r10, r0 *)
uadds carry r10 r10 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r3, lr, r8, r2 *)
mull tH tL r8 r2;
adds tc r3 r3 tL;
adc lr lr tH tc;
(* eor.w	r8, r8, r8 *)
mov r8 0@uint32;
(* adcs.w	r11, r11, r1 *)
uadcs carry r11 r11 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r4, r8, r0, r2 *)
mull tH tL r0 r2;
adds tc r4 r4 tL;
adc r8 r8 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r3, r3, r12 *)
uadcs carry r3 r3 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r5, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r5 r5 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r4, r4, lr *)
uadcs carry r4 r4 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r6, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r6 r6 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs.w	r5, r5, r8 *)
uadcs carry r5 r5 r8 carry;
(* ldr.w	r8, [sp, #36]	; 0x24                      #! EA = L0xbeffec04, Value = 0x00000001 *)
mov r8 L0xbeffec04;
(* umlal	r7, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r7 r7 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs	r6, r0 *)
uadcs carry r6 r6 r0 carry;
(* adcs	r7, r1 *)
uadcs carry r7 r7 r1 carry;
(* adcs.w	r8, r8, r12 *)
uadcs carry r8 r8 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r3, r3, r9 *)
uadds carry r3 r3 r9;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0xbeffec08, Value = 0x000960b0 *)
(* NOTE: restore pointer to b *)
(* mov r2 L0xbeffec08; *)
(* adcs.w	r4, r4, #0 *)
uadcs carry r4 r4 0@uint32 carry;
(* adcs.w	r5, r5, #0 *)
uadcs carry r5 r5 0@uint32 carry;
(* adcs.w	r6, r6, r9 *)
uadcs carry r6 r6 r9 carry;
(* ldr	r1, [sp, #0]                                #! EA = L0xbeffebe0, Value = 0x0020813a *)
mov r1 L0xbeffebe0;
(* adcs.w	r7, r7, #0 *)
uadcs carry r7 r7 0@uint32 carry;
(* ldr	r2, [r2, #28]                               #! EA = L0x960cc, Value = 0x15b59742 *)
mov r2 L0x960cc;
(* adcs.w	r8, r8, r9 *)
uadcs carry r8 r8 r9 carry;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs.w	r7, r7, r9 *)
usubc carry r7 r7 r9;
(* ldr.w	r12, [sp, #4]                             #! EA = L0xbeffebe4, Value = 0x7f7fbfca *)
mov r12 L0xbeffebe4;
(* sbcs.w	r8, r8, #0 *)
usbcs carry r8 r8 0@uint32 carry;
(* umlal	r10, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r10 r10 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* sbc.w	r9, lr, #0 *)
usbcs c r9 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;
(* ldr.w	lr, [sp, #8]                              #! EA = L0xbeffebe8, Value = 0x09201c18 *)
mov lr L0xbeffebe8;
(* umlal	r11, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r11 r11 tL;
adc r1 r1 tH tc;
(* str.w	r9, [sp, #36]	; 0x24                      #! EA = L0xbeffec04, Value = 0x00000001 *)
mov L0xbeffec04 r9;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* ldr.w	r9, [sp, #12]                             #! EA = L0xbeffebec, Value = 0xfaafade7 *)
mov r9 L0xbeffebec;
(* umlal	r3, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r3 r3 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adds.w	r11, r11, r0 *)
uadds carry r11 r11 r0;
(* ldr	r0, [sp, #16]                               #! EA = L0xbeffebf0, Value = 0x28bdee5c *)
mov r0 L0xbeffebf0;
(* umlal	r4, lr, r9, r2 *)
mull tH tL r9 r2;
adds tc r4 r4 tL;
adc lr lr tH tc;
(* eor.w	r9, r9, r9 *)
mov r9 0@uint32;
(* adcs	r3, r1 *)
uadcs carry r3 r3 r1 carry;
(* ldr	r1, [sp, #20]                               #! EA = L0xbeffebf4, Value = 0xcd203987 *)
mov r1 L0xbeffebf4;
(* umlal	r5, r9, r0, r2 *)
mull tH tL r0 r2;
adds tc r5 r5 tL;
adc r9 r9 tH tc;
(* eor.w	r0, r0, r0 *)
mov r0 0@uint32;
(* adcs.w	r4, r4, r12 *)
uadcs carry r4 r4 r12 carry;
(* ldr.w	r12, [sp, #24]                            #! EA = L0xbeffebf8, Value = 0x33712938 *)
mov r12 L0xbeffebf8;
(* umlal	r6, r0, r1, r2 *)
mull tH tL r1 r2;
adds tc r6 r6 tL;
adc r0 r0 tH tc;
(* eor.w	r1, r1, r1 *)
mov r1 0@uint32;
(* adcs.w	r5, r5, lr *)
uadcs carry r5 r5 lr carry;
(* ldr.w	lr, [sp, #28]                             #! EA = L0xbeffebfc, Value = 0x15b59742 *)
mov lr L0xbeffebfc;
(* umlal	r7, r1, r12, r2 *)
mull tH tL r12 r2;
adds tc r7 r7 tL;
adc r1 r1 tH tc;
(* eor.w	r12, r12, r12 *)
mov r12 0@uint32;
(* adcs.w	r6, r6, r9 *)
uadcs carry r6 r6 r9 carry;
(* ldr.w	r9, [sp, #36]	; 0x24                      #! EA = L0xbeffec04, Value = 0x00000000 *)
mov r9 L0xbeffec04;
(* umlal	r8, r12, lr, r2 *)
mull tH tL lr r2;
adds tc r8 r8 tL;
adc r12 r12 tH tc;
(* eor.w	lr, lr, lr *)
mov lr 0@uint32;
(* adcs	r7, r0 *)
uadcs carry r7 r7 r0 carry;
(* adcs.w	r8, r8, r1 *)
uadcs carry r8 r8 r1 carry;
(* adcs.w	r9, r9, r12 *)
uadcs carry r9 r9 r12 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* adds.w	r4, r4, r10 *)
uadds carry r4 r4 r10;
(* ldr	r0, [sp, #32]                               #! EA = L0xbeffec00, Value = 0xbeffec50 *)
(* NOTE: restore pointer to output *)
(* mov r0 L0xbeffec00; *)
(* adcs.w	r5, r5, #0 *)
uadcs carry r5 r5 0@uint32 carry;
(* adcs.w	r6, r6, #0 *)
uadcs carry r6 r6 0@uint32 carry;
(* adcs.w	r7, r7, r10 *)
uadcs carry r7 r7 r10 carry;
(* adcs.w	r8, r8, #0 *)
uadcs carry r8 r8 0@uint32 carry;
(* adcs.w	r9, r9, r10 *)
uadcs carry r9 r9 r10 carry;
(* adc.w	lr, lr, #0 *)
uadc lr lr 0@uint32 carry;
(* subs.w	r8, r8, r10 *)
usubc carry r8 r8 r10;
(* sbcs.w	r9, r9, #0 *)
usbcs carry r9 r9 0@uint32 carry;
(* sbc.w	r10, lr, #0 *)
usbcs c r10 lr 0@uint32 carry;
assert true && c = 1@1;
assume c = 1 && true;

assert
  eqmod (limbs 32 [  0,  0,  0,  0,  0,  0,  0,  0,
                   r11, r3, r4, r5, r6, r7, r8, r9, r10])
        ((limbs 32 [a0, a1, a2, a3, a4, a5, a6, a7]) *
         (limbs 32 [b0, b1, b2, b3, b4, b5, b6, b7]))
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7])
  &&
  true;

ghost r11o@uint32, r3o@uint32, r4o@uint32, r5o@uint32,
       r6o@uint32, r7o@uint32, r8o@uint32, r9o@uint32,
      r10o@uint32 :
      and [
        r11o = r11, r3o = r3, r4o = r4, r5o = r5,
         r6o = r6,  r7o = r7, r8o = r8, r9o = r9,
        r10o = r10
      ] &&
      and [
        r11o = r11, r3o = r3, r4o = r4, r5o = r5,
         r6o = r6,  r7o = r7, r8o = r8, r9o = r9,
        r10o = r10
      ];

(* adds.w	r11, r11, #1 *)
uadds carry r11 r11 1@uint32;
(* adcs.w	r3, r3, #0 *)
uadcs carry r3 r3 0@uint32 carry;
(* adcs.w	r4, r4, #0 *)
uadcs carry r4 r4 0@uint32 carry;
(* sbcs.w	r5, r5, #0 *)
usbcs carry r5 r5 0@uint32 carry;
(* sbcs.w	r6, r6, #0 *)
usbcs carry r6 r6 0@uint32 carry;
(* sbcs.w	r7, r7, #0 *)
usbcs carry r7 r7 0@uint32 carry;
(* sbcs.w	r8, r8, #1 *)
usbcs carry r8 r8 1@uint32 carry;
(* adcs.w	r9, r9, #0 *)
uadcs carry r9 r9 0@uint32 carry;
(* ldr.w	lr, [sp, #44]	; 0x2c                      #! EA = L0xbeffec0c, Value = 0x000107f9 *)
(* NOTE: restore lr *)
(* mov lr L0xbeffec0c; *)
(* sbc.w	r10, r10, #0 *)
usbcs carry r10 r10 0@uint32 carry;

(*
assert true
    && or (carry = 0@1)
          (and (carry = 1@1)
               (limbs 32 [r11, r3, r4, r5, r6, r7, r8, r9, 0@32]) =
               (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
               (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7, 0@32]));
assume (carry - 0) * (carry - 1) = 0 && true;
assume (carry - 0) *
       ((limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7]) -
        (limbs 32 [r11, r3, r4, r5, r6, r7, r8, r9])) = 0
    && true;
*)

assert true && or (r10 = 0@32) (r10 = 0xFFFFFFFF@32);
assume (r10 - 0) * (r10 - 0xFFFFFFFF) = 0 && true;

(* add	sp, #48	; 0x30 *)
(* add	sp, #48	; 0x30; *)
(* adds.w	r11, r11, r10 *)
uadds carry r11 r11 r10;
(* adcs.w	r3, r3, r10 *)
uadcs carry r3 r3 r10 carry;
(* str.w	r11, [r0]                                 #! EA = L0xbeffec50, Value = 0xffffffff *)
mov L0xbeffec50 r11;
(* adcs.w	r4, r4, r10 *)
uadcs carry r4 r4 r10 carry;
(* str	r3, [r0, #4]                                #! EA = L0xbeffec54, Value = 0xffffffff *)
mov L0xbeffec54 r3;
(* adcs.w	r5, r5, #0 *)
uadcs carry r5 r5 0@uint32 carry;
(* str	r4, [r0, #8]                                #! EA = L0xbeffec58, Value = 0xe0622dbb *)
mov L0xbeffec58 r4;
(* adcs.w	r6, r6, #0 *)
uadcs carry r6 r6 0@uint32 carry;
(* str	r5, [r0, #12]                               #! EA = L0xbeffec5c, Value = 0x2d8f7460 *)
mov L0xbeffec5c r5;
(* adcs.w	r7, r7, #0 *)
uadcs carry r7 r7 0@uint32 carry;
(* str	r6, [r0, #16]                               #! EA = L0xbeffec60, Value = 0x1f9dd244 *)
mov L0xbeffec60 r6;
(* adcs.w	r8, r8, r10, lsr #31 *)
(* uadcs carry r8 r8 r10 carry, lsr; *)
(* NOTE: use split *)
usplit r10b dontcare r10 31;
uadcs carry r8 r8 r10b carry;
(* str	r7, [r0, #20]                               #! EA = L0xbeffec64, Value = 0xd2708ba0 *)
mov L0xbeffec64 r7;
(* adc.w	r9, r9, r10 *)
uadcs carry r9 r9 r10 carry;
(* str.w	r8, [r0, #24]                             #! EA = L0xbeffec68, Value = 0x00000000 *)
mov L0xbeffec68 r8;
(* str.w	r9, [r0, #28]                             #! EA = L0xbeffec6c, Value = 0xffffffff *)
mov L0xbeffec6c r9;
(* mov	pc, lr *)
#mov	pc, %%lr;

mov c0 L0xbeffec50;
mov c1 L0xbeffec54;
mov c2 L0xbeffec58;
mov c3 L0xbeffec5c;
mov c4 L0xbeffec60;
mov c5 L0xbeffec64;
mov c6 L0xbeffec68;
mov c7 L0xbeffec6c;

(*
assert true &&
       or (and (r10 = 0@32)
               ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32]) =
                (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
                (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7, 0@32])))
          (and (r10 = 0xFFFFFFFF@32)
               ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32]) =
                (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o])));
*)
(* NOTE: the follow four assertions translate the above in polynomial form *)
cast r10_uint288@uint288 r10;
assert true &&
       (r10 - 0@32) * (r10 - 0xFFFFFFFF@32) = 0@32;
assert true &&
       (r10_uint288 - 0@288) *
       ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32]) -
        (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o])) = 0@288;
assert true &&
       ((limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7, 0@32]) - 
        (limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32])) *
       (r10_uint288 - 0xFFFFFFFF@288) = 0@288;
assert true &&
       ((limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7, 0@32]) - 
        (limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32])) *
       ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, 0@32]) -
        (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o])) = 0@288;

assume (r10 - 0) * (r10 - 0xFFFFFFFF) = 0 && true;
assume (r10 - 0) *
       ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7]) -
        (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o])) = 0
    && true;
assume ((limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7]) - 
        (limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7])) *
       (r10 - 0xFFFFFFFF) = 0
    && true;
assume ((limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o]) -
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7]) - 
        (limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7])) *
       ((limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7]) -
        (limbs 32 [r11o, r3o, r4o, r5o, r6o, r7o, r8o, r9o, r10o])) = 0
    && true;


{
  eqmod (limbs 32 [0, 0, 0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5, c6, c7])
        ((limbs 32 [a0, a1, a2, a3, a4, a5, a6, a7]) *
         (limbs 32 [b0, b1, b2, b3, b4, b5, b6, b7]))
        (limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7])
&&
  limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7] <u
  limbs 32 [p0, p1, p2, p3, p4, p5, p6, p7]
}

