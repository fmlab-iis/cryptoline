proc main (uint32 a0, uint32 a1, uint32 a2, uint32 a3,
           uint32 a4, uint32 a5, uint32 a6, uint32 a7,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3,
           uint32 b4, uint32 b5, uint32 b6, uint32 b7) =
{
  true
  &&
  true
}

mov L0x49028 a0;
mov L0x4902c a1;
mov L0x49030 a2;
mov L0x49034 a3;
mov L0x49038 a4;
mov L0x4903c a5;
mov L0x49040 a6;
mov L0x49044 a7;

mov L0x49048 b0;
mov L0x4904c b1;
mov L0x49050 b2;
mov L0x49054 b3;
mov L0x49058 b4;
mov L0x4905c b5;
mov L0x49060 b6;
mov L0x49064 b7;

(* #bl	0x373a0 <__ecp_nistz256_sub> *)
#bl	0x373a0 <__ecp_nistz256_sub>;
(* ldr	r4, [r1]                                    #! EA = L0x49028 *)
mov r4 L0x49028;
(* ldr	r5, [r1, #4]                                #! EA = L0x4902c *)
mov r5 L0x4902c;
(* ldr	r6, [r1, #8]                                #! EA = L0x49030 *)
mov r6 L0x49030;
(* ldr	r7, [r1, #12]                               #! EA = L0x49034 *)
mov r7 L0x49034;
(* ldr	r8, [r1, #16]                               #! EA = L0x49038 *)
mov r8 L0x49038;
(* ldr	r3, [r2]                                    #! EA = L0x49048 *)
mov r3 L0x49048;
(* ldr	r9, [r1, #20]                               #! EA = L0x4903c *)
mov r9 L0x4903c;
(* ldr	r12, [r2, #4]                               #! EA = L0x4904c *)
mov r12 L0x4904c;
(* ldr	r10, [r1, #24]                              #! EA = L0x49040 *)
mov r10 L0x49040;
(* ldr	lr, [r2, #8]                                #! EA = L0x49050 *)
mov lr L0x49050;
(* ldr	r11, [r1, #28]                              #! EA = L0x49044 *)
mov r11 L0x49044;
(* ldr	r1, [r2, #12]                               #! EA = L0x49054 *)
mov r1 L0x49054;
(* subs	r4, r4, r3 *)
usubc carry r4 r4 r3;
(* ldr	r3, [r2, #16]                               #! EA = L0x49058 *)
mov r3 L0x49058;
(* sbcs	r5, r5, r12 *)
usbcs carry r5 r5 r12 carry;
(* ldr	r12, [r2, #20]                              #! EA = L0x4905c *)
mov r12 L0x4905c;
(* sbcs	r6, r6, lr *)
usbcs carry r6 r6 lr carry;
(* ldr	lr, [r2, #24]                               #! EA = L0x49060 *)
mov lr L0x49060;
(* sbcs	r7, r7, r1 *)
sbcs carry r7 r7 r1 carry;
(* ldr	r1, [r2, #28]                               #! EA = L0x49064 *)
mov r1 L0x49064;
(* sbcs	r8, r8, r3 *)
usbcs carry r8 r8 r3 carry;
(* sbcs	r9, r9, r12 *)
usbcs carry r9 r9 r12 carry;
(* sbcs	r10, r10, lr *)
usbcs carry r10 r10 lr carry;
(* sbcs	r11, r11, r1 *)
usbcs carry r11 r11 r1 carry;
(* sbc	r3, r3, r3 *)
usbcs carry r3 r3 r3 carry;

mov c0 r4;
mov c1 r5;
mov c2 r6;
mov c3 r7;
mov c4 r8;
mov c5 r9;
mov c6 r10;
mov c7 r11;
mov c8 r3;

{
  true
  &&
  eqmod (limbs 32 [c0, c1, c2, c3, c4, c5, c6, c7, c8])
        ((limbs 32 [a0, a1, a2, a3, a4, a5, a6, a7, const 32 0]) -
         (limbs 32 [b0, b1, b2, b3, b4, b5, b6, b7, const 32 0]))
        (limbs 32 [const 32 0, const 32 0, const 32 0, const 32 0,
                   const 32 0, const 32 0, const 32 0, const 32 0,
                   const 32 1])
}

