proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}

mov L0x10480 A0; mov L0x10484 A1;
mov L0x10488 A2; mov L0x1048c A3;
mov L0x21028 A4; mov L0x2102c A5;
mov L0x21030 A6; mov L0x21034 A7;
mov L0x21038 A8; mov L0x2103c A9;
mov L0x21040 Aa; mov L0x21044 Ab;
mov L0x21048 Ac; mov L0x2104c Ad;
mov L0x21050 Ae; mov L0x21054 Af;

nondet sp@uint32;
nondet L0x407fffdc@uint32; nondet L0x407fffe0@uint32;
nondet L0x407fffe4@uint32; nondet L0x40800068@uint32;
nondet L0x4080006c@uint32; nondet L0x40800070@uint32;

(* ldm	r12!, {r4, r5, r6, r7}                       #! EA = L0x21048; Value = 0x00000000; PC = 0x104d8 *)
mov r4 L0x21048; mov r5 L0x2104c; mov r6 L0x21050; mov r7 L0x21054;
(* sub	sp, sp, #64	; 0x40                          #! PC = 0x104dc *)
(* sub sp, sp, 64 *)
nop;
(* sub	lr, lr, #64	; 0x40                          #! PC = 0x104e0 *)
(* sub lr, lr, 64 *)
nop;
(* push	{r4, r5, r6, r7}                           #! PC = 0x104e4 *)
(* push {r4, r5, r6, r7} *)
nop;
(* NOTE: added manually *)
mov L0x40800018 r4; mov L0x4080001c r5; mov L0x40800020 r6; mov L0x40800024 r7;
(* ldm	r3!, {r4, r5, r6, r7, r8, r9, r10, r11}      #! EA = L0x21028; Value = 0x00000000; PC = 0x104e8 *)
mov r4 L0x21028; mov r5 L0x2102c; mov r6 L0x21030; mov r7 L0x21034;
mov r8 L0x21038; mov r9 L0x2103c; mov r10 L0x21040; mov r11 L0x21044;
(* ldm	lr!, {r0, r1, r2, r3}                        #! EA = L0x10480; Value = 0x61707865; PC = 0x104ec *)
mov r0 L0x10480; mov r1 L0x10484; mov r2 L0x10488; mov r3 L0x1048c;
(* push	{r4, r5, r6, r7, r8, r9, r10, r11}         #! PC = 0x104f0 *)
(* push {r4, r5, r6, r7, r8, r9, r10, r11} *)
nop;
(* NOTE: added manually *)
mov L0x407ffff8 r4; mov L0x407ffffc r5; mov L0x40800000 r6; mov L0x40800004 r7;
mov L0x40800008 r8; mov L0x4080000c r9; mov L0x40800010 r10; mov L0x40800014 r11;
(* push	{r0, r1, r2, r3}                           #! PC = 0x104f4 *)
(* push {r0, r1, r2, r3} *)
nop;
(* NOTE: added manually *)
mov L0x407fffe8 r0; mov L0x407fffec r1; mov L0x407ffff0 r2; mov L0x407ffff4 r3;
(* str	r10, [sp, #104]	; 0x68                      #! EA = L0x40800050; PC = 0x104f8 *)
mov L0x40800050 r10;
(* str	r11, [sp, #108]	; 0x6c                      #! EA = L0x40800054; PC = 0x104fc *)
mov L0x40800054 r11;
(* #b	0x10520 <ChaCha20_ctr32+96>                  #! PC = 0x10500 *)
#b	0x10520 <ChaCha20_ctr32+96>                  #! 0x10500 = 0x10500;
(* ldr	r11, [sp, #60]	; 0x3c                       #! EA = L0x40800024; Value = 0x00000030; PC = 0x10520 *)
mov r11 L0x40800024;
(* ldr	r12, [sp, #48]	; 0x30                       #! EA = L0x40800018; Value = 0x00000000; PC = 0x10524 *)
mov r12 L0x40800018;
(* ldr	r10, [sp, #52]	; 0x34                       #! EA = L0x4080001c; Value = 0x00000010; PC = 0x10528 *)
mov r10 L0x4080001c;
(* ldr	lr, [sp, #56]	; 0x38                        #! EA = L0x40800020; Value = 0x00000020; PC = 0x1052c *)
mov lr L0x40800020;
(* str	r11, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x10530 *)
mov L0x40800064 r11;
(* mov	r11, #10                                    #! PC = 0x10534 *)
mov r11 10@uint32;
(* #b	0x10540 <ChaCha20_ctr32+128>                 #! PC = 0x10538 *)
#b	0x10540 <ChaCha20_ctr32+128>                 #! 0x10538 = 0x10538;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x00000030; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0x00000006; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0x00000007; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x2d999642; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x5b43fd43; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x9218c967; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0xeb4d1354; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0xc0aacdb8; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0xf0f5a472; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0xa9e01995; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x3c354ea0; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0xb0f53c13; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x56e3c8ec; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0xdbb74313; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0xfd10a952; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0xd6606b93; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x62cfc7df; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x22971a73; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x596b1b47; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0x8f14afe1; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0x46d8b20b; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x26d758b5; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x0d3c422b; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0xfa35cda6; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x15968e44; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0xa282f06a; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0xee3003ae; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x857202f5; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x0f6b4e7a; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x26430a21; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x53da4a85; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0xf998825e; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0xc67d2779; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x9b874973; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x7ff91037; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0xfc35b4e0; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x1ed09daa; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0x7a05b9a9; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0xf818c5f9; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x85018035; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x0134714c; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0xe86b90a5; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x6a462592; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0xb5817eea; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0x2b138f13; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x2a9df77b; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x0bb148bb; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x6a211f62; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0xd3f66ff8; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0x961aa4c0; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0x9afe754e; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x99d37f1a; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0xea82a2d9; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x2beb2a8a; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* subs	r11, r11, #1                               #! PC = 0x10540 *)
(* subs r11, r11, 1 *)
nop;
(* add	r0, r0, r4                                  #! PC = 0x10544 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #16                               #! PC = 0x10548 *)
ror r12@uint32 r12 16;
(* add	r1, r1, r5                                  #! PC = 0x1054c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #16                               #! PC = 0x10550 *)
ror r10@uint32 r10 16;
(* eor	r12, r12, r0, ror #16                       #! PC = 0x10554 *)
ror r0r@uint32 r0 16; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #16                       #! PC = 0x10558 *)
ror r1r@uint32 r1 16; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1055c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #20                                 #! PC = 0x10560 *)
ror r4@uint32 r4 20;
(* add	r9, r9, r10                                 #! PC = 0x10564 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10568 *)
ror r5@uint32 r5 20;
(* eor	r4, r4, r8, ror #20                         #! PC = 0x1056c *)
ror r8r@uint32 r8 20; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #20                         #! PC = 0x10570 *)
ror r9r@uint32 r9 20; xor r5@uint32 r5 r9r;
(* add	r0, r0, r4                                  #! PC = 0x10574 *)
adds dc r0 r0 r4;
(* ror	r12, r12, #24                               #! PC = 0x10578 *)
ror r12@uint32 r12 24;
(* add	r1, r1, r5                                  #! PC = 0x1057c *)
adds dc r1 r1 r5;
(* ror	r10, r10, #24                               #! PC = 0x10580 *)
ror r10@uint32 r10 24;
(* eor	r12, r12, r0, ror #24                       #! PC = 0x10584 *)
ror r0r@uint32 r0 24; xor r12@uint32 r12 r0r;
(* eor	r10, r10, r1, ror #24                       #! PC = 0x10588 *)
ror r1r@uint32 r1 24; xor r10@uint32 r10 r1r;
(* add	r8, r8, r12                                 #! PC = 0x1058c *)
adds dc r8 r8 r12;
(* ror	r4, r4, #25                                 #! PC = 0x10590 *)
ror r4@uint32 r4 25;
(* add	r9, r9, r10                                 #! PC = 0x10594 *)
adds dc r9 r9 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10598 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x1059c *)
mov L0x4080005c r10;
(* ldr	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; Value = 0x46c3067d; PC = 0x105a0 *)
mov r10 L0x40800064;
(* eor	r4, r4, r8, ror #25                         #! PC = 0x105a4 *)
ror r8r@uint32 r8 25; xor r4@uint32 r4 r8r;
(* eor	r5, r5, r9, ror #25                         #! PC = 0x105a8 *)
ror r9r@uint32 r9 25; xor r5@uint32 r5 r9r;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x105ac *)
mov L0x40800048 r8;
(* ldr	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; Value = 0x1aeef6df; PC = 0x105b0 *)
mov r8 L0x40800050;
(* add	r2, r2, r6                                  #! PC = 0x105b4 *)
adds dc r2 r2 r6;
(* ror	lr, lr, #16                                 #! PC = 0x105b8 *)
ror lr@uint32 lr 16;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x105bc *)
mov L0x4080004c r9;
(* ldr	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; Value = 0x52fa5c10; PC = 0x105c0 *)
mov r9 L0x40800054;
(* add	r3, r3, r7                                  #! PC = 0x105c4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #16                               #! PC = 0x105c8 *)
ror r10@uint32 r10 16;
(* eor	lr, lr, r2, ror #16                         #! PC = 0x105cc *)
ror r2r@uint32 r2 16; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #16                       #! PC = 0x105d0 *)
ror r3r@uint32 r3 16; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x105d4 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #20                                 #! PC = 0x105d8 *)
ror r6@uint32 r6 20;
(* add	r9, r9, r10                                 #! PC = 0x105dc *)
adds dc r9 r9 r10;
(* ror	r7, r7, #20                                 #! PC = 0x105e0 *)
ror r7@uint32 r7 20;
(* eor	r6, r6, r8, ror #20                         #! PC = 0x105e4 *)
ror r8r@uint32 r8 20; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #20                         #! PC = 0x105e8 *)
ror r9r@uint32 r9 20; xor r7@uint32 r7 r9r;
(* add	r2, r2, r6                                  #! PC = 0x105ec *)
adds dc r2 r2 r6;
(* ror	lr, lr, #24                                 #! PC = 0x105f0 *)
ror lr@uint32 lr 24;
(* add	r3, r3, r7                                  #! PC = 0x105f4 *)
adds dc r3 r3 r7;
(* ror	r10, r10, #24                               #! PC = 0x105f8 *)
ror r10@uint32 r10 24;
(* eor	lr, lr, r2, ror #24                         #! PC = 0x105fc *)
ror r2r@uint32 r2 24; xor lr@uint32 lr r2r;
(* eor	r10, r10, r3, ror #24                       #! PC = 0x10600 *)
ror r3r@uint32 r3 24; xor r10@uint32 r10 r3r;
(* add	r8, r8, lr                                  #! PC = 0x10604 *)
adds dc r8 r8 lr;
(* ror	r6, r6, #25                                 #! PC = 0x10608 *)
ror r6@uint32 r6 25;
(* add	r9, r9, r10                                 #! PC = 0x1060c *)
adds dc r9 r9 r10;
(* ror	r7, r7, #25                                 #! PC = 0x10610 *)
ror r7@uint32 r7 25;
(* eor	r6, r6, r8, ror #25                         #! PC = 0x10614 *)
ror r8r@uint32 r8 25; xor r6@uint32 r6 r8r;
(* eor	r7, r7, r9, ror #25                         #! PC = 0x10618 *)
ror r9r@uint32 r9 25; xor r7@uint32 r7 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1061c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #16                               #! PC = 0x10620 *)
ror r10@uint32 r10 16;
(* add	r1, r1, r6                                  #! PC = 0x10624 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #16                               #! PC = 0x10628 *)
ror r12@uint32 r12 16;
(* eor	r10, r10, r0, ror #16                       #! PC = 0x1062c *)
ror r0r@uint32 r0 16; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #16                       #! PC = 0x10630 *)
ror r1r@uint32 r1 16; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10634 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #20                                 #! PC = 0x10638 *)
ror r5@uint32 r5 20;
(* add	r9, r9, r12                                 #! PC = 0x1063c *)
adds dc r9 r9 r12;
(* ror	r6, r6, #20                                 #! PC = 0x10640 *)
ror r6@uint32 r6 20;
(* eor	r5, r5, r8, ror #20                         #! PC = 0x10644 *)
ror r8r@uint32 r8 20; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #20                         #! PC = 0x10648 *)
ror r9r@uint32 r9 20; xor r6@uint32 r6 r9r;
(* add	r0, r0, r5                                  #! PC = 0x1064c *)
adds dc r0 r0 r5;
(* ror	r10, r10, #24                               #! PC = 0x10650 *)
ror r10@uint32 r10 24;
(* add	r1, r1, r6                                  #! PC = 0x10654 *)
adds dc r1 r1 r6;
(* ror	r12, r12, #24                               #! PC = 0x10658 *)
ror r12@uint32 r12 24;
(* eor	r10, r10, r0, ror #24                       #! PC = 0x1065c *)
ror r0r@uint32 r0 24; xor r10@uint32 r10 r0r;
(* eor	r12, r12, r1, ror #24                       #! PC = 0x10660 *)
ror r1r@uint32 r1 24; xor r12@uint32 r12 r1r;
(* add	r8, r8, r10                                 #! PC = 0x10664 *)
adds dc r8 r8 r10;
(* ror	r5, r5, #25                                 #! PC = 0x10668 *)
ror r5@uint32 r5 25;
(* str	r10, [sp, #124]	; 0x7c                      #! EA = L0x40800064; PC = 0x1066c *)
mov L0x40800064 r10;
(* ldr	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; Value = 0x77364bb2; PC = 0x10670 *)
mov r10 L0x4080005c;
(* add	r9, r9, r12                                 #! PC = 0x10674 *)
adds dc r9 r9 r12;
(* ror	r6, r6, #25                                 #! PC = 0x10678 *)
ror r6@uint32 r6 25;
(* eor	r5, r5, r8, ror #25                         #! PC = 0x1067c *)
ror r8r@uint32 r8 25; xor r5@uint32 r5 r8r;
(* eor	r6, r6, r9, ror #25                         #! PC = 0x10680 *)
ror r9r@uint32 r9 25; xor r6@uint32 r6 r9r;
(* str	r8, [sp, #104]	; 0x68                       #! EA = L0x40800050; PC = 0x10684 *)
mov L0x40800050 r8;
(* ldr	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; Value = 0x2188d35c; PC = 0x10688 *)
mov r8 L0x40800048;
(* add	r2, r2, r7                                  #! PC = 0x1068c *)
adds dc r2 r2 r7;
(* ror	r10, r10, #16                               #! PC = 0x10690 *)
ror r10@uint32 r10 16;
(* str	r9, [sp, #108]	; 0x6c                       #! EA = L0x40800054; PC = 0x10694 *)
mov L0x40800054 r9;
(* ldr	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; Value = 0x6f5e8b7c; PC = 0x10698 *)
mov r9 L0x4080004c;
(* add	r3, r3, r4                                  #! PC = 0x1069c *)
adds dc r3 r3 r4;
(* ror	lr, lr, #16                                 #! PC = 0x106a0 *)
ror lr@uint32 lr 16;
(* eor	r10, r10, r2, ror #16                       #! PC = 0x106a4 *)
ror r2r@uint32 r2 16; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #16                         #! PC = 0x106a8 *)
ror r3r@uint32 r3 16; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106ac *)
adds dc r8 r8 r10;
(* ror	r7, r7, #20                                 #! PC = 0x106b0 *)
ror r7@uint32 r7 20;
(* add	r9, r9, lr                                  #! PC = 0x106b4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #20                                 #! PC = 0x106b8 *)
ror r4@uint32 r4 20;
(* eor	r7, r7, r8, ror #20                         #! PC = 0x106bc *)
ror r8r@uint32 r8 20; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #20                         #! PC = 0x106c0 *)
ror r9r@uint32 r9 20; xor r4@uint32 r4 r9r;
(* add	r2, r2, r7                                  #! PC = 0x106c4 *)
adds dc r2 r2 r7;
(* ror	r10, r10, #24                               #! PC = 0x106c8 *)
ror r10@uint32 r10 24;
(* add	r3, r3, r4                                  #! PC = 0x106cc *)
adds dc r3 r3 r4;
(* ror	lr, lr, #24                                 #! PC = 0x106d0 *)
ror lr@uint32 lr 24;
(* eor	r10, r10, r2, ror #24                       #! PC = 0x106d4 *)
ror r2r@uint32 r2 24; xor r10@uint32 r10 r2r;
(* eor	lr, lr, r3, ror #24                         #! PC = 0x106d8 *)
ror r3r@uint32 r3 24; xor lr@uint32 lr r3r;
(* add	r8, r8, r10                                 #! PC = 0x106dc *)
adds dc r8 r8 r10;
(* ror	r7, r7, #25                                 #! PC = 0x106e0 *)
ror r7@uint32 r7 25;
(* add	r9, r9, lr                                  #! PC = 0x106e4 *)
adds dc r9 r9 lr;
(* ror	r4, r4, #25                                 #! PC = 0x106e8 *)
ror r4@uint32 r4 25;
(* eor	r7, r7, r8, ror #25                         #! PC = 0x106ec *)
ror r8r@uint32 r8 25; xor r7@uint32 r7 r8r;
(* eor	r4, r4, r9, ror #25                         #! PC = 0x106f0 *)
ror r9r@uint32 r9 25; xor r4@uint32 r4 r9r;
(* #bne	0x10540 <ChaCha20_ctr32+128>               #! PC = 0x106f4 *)
#bne	0x10540 <ChaCha20_ctr32+128>               #! 0x106f4 = 0x106f4;
(* ldr	r11, [sp, #136]	; 0x88                      #! EA = L0x40800070; Value = 0x00000014; PC = 0x106f8 *)
mov r11 L0x40800070;
(* str	r8, [sp, #96]	; 0x60                        #! EA = L0x40800048; PC = 0x106fc *)
mov L0x40800048 r8;
(* str	r9, [sp, #100]	; 0x64                       #! EA = L0x4080004c; PC = 0x10700 *)
mov L0x4080004c r9;
(* str	r12, [sp, #112]	; 0x70                      #! EA = L0x40800058; PC = 0x10704 *)
mov L0x40800058 r12;
(* str	r10, [sp, #116]	; 0x74                      #! EA = L0x4080005c; PC = 0x10708 *)
mov L0x4080005c r10;
(* str	lr, [sp, #120]	; 0x78                       #! EA = L0x40800060; PC = 0x1070c *)
mov L0x40800060 lr;
(* cmp	r11, #64	; 0x40                             #! PC = 0x10710 *)
subc carry dc r11 64@uint32;
(* addcc	r12, sp, #0                               #! PC = 0x10714 *)
adds dc tmp sp 0@uint32; cmov r12 carry r12 tmp;
(* ldrcs	r12, [sp, #132]	; 0x84                    #! EA = L0x4080006c; Value = 0x000210dc; PC = 0x10718 *)
cmov r12 carry L0x4080006c r12;
(* addcc	lr, sp, #0                                #! PC = 0x1071c *)
adds dc tmp sp 0@uint32; cmov lr carry lr tmp;
(* ldrcs	lr, [sp, #128]	; 0x80                     #! EA = L0x40800068; Value = 0x0002105c; PC = 0x10720 *)
cmov lr carry L0x40800068 lr;
(* ldr	r8, [sp]                                    #! EA = L0x407fffe8; Value = 0x61707865; PC = 0x10724 *)
mov r8 L0x407fffe8;
(* ldr	r9, [sp, #4]                                #! EA = L0x407fffec; Value = 0x3320646e; PC = 0x10728 *)
mov r9 L0x407fffec;
(* orr	r10, r12, lr                                #! PC = 0x1072c *)
or r10@uint32 r12 lr;
(* tst	r10, #3                                     #! PC = 0x10730 *)
(* tst r10, 3 *)
nop;
(* ldr	r10, [sp, #8]                               #! EA = L0x407ffff0; Value = 0x79622d32; PC = 0x10734 *)
mov r10 L0x407ffff0;
(* #bne	0x10890 <ChaCha20_ctr32+976>               #! PC = 0x10738 *)
#bne	0x10890 <ChaCha20_ctr32+976>               #! 0x10738 = 0x10738;
(* cmp	r11, #64	; 0x40                             #! PC = 0x1073c *)
subc carry dc r11 64@uint32;
(* ldr	r11, [sp, #12]                              #! EA = L0x407ffff4; Value = 0x6b206574; PC = 0x10740 *)
mov r11 L0x407ffff4;
(* add	r0, r0, r8                                  #! PC = 0x10744 *)
adds dc r0 r0 r8;
(* add	r1, r1, r9                                  #! PC = 0x10748 *)
adds dc r1 r1 r9;
(* ldrcs	r8, [r12], #16                            #! EA = L0x407fffe8; Value = 0x61707865; PC = 0x1074c *)
cmov r8 carry L0x407fffe8 r8;
(* ldrcs	r9, [r12, #-12]                           #! EA = L0x407fffdc; Value = 0x00000000; PC = 0x10750 *)
cmov r9 carry L0x407fffdc r9;
(* add	r2, r2, r10                                 #! PC = 0x10754 *)
adds dc r2 r2 r10;
(* add	r3, r3, r11                                 #! PC = 0x10758 *)
adds dc r3 r3 r11;
(* ldrcs	r10, [r12, #-8]                           #! EA = L0x407fffe0; Value = 0x00000000; PC = 0x1075c *)
cmov r10 carry L0x407fffe0 r10;
(* ldrcs	r11, [r12, #-4]                           #! EA = L0x407fffe4; Value = 0x00000000; PC = 0x10760 *)
cmov r11 carry L0x407fffe4 r11;
(* eorcs	r0, r0, r8                                #! PC = 0x10764 *)
(* eorcs r0, r0, r8 *)
nop;
(* eorcs	r1, r1, r9                                #! PC = 0x10768 *)
(* eorcs r1, r1, r9 *)
nop;
(* add	r8, sp, #16                                 #! PC = 0x1076c *)
adds dc r8 sp 16@uint32;
(* str	r0, [lr], #16                               #! EA = L0x407fffe8; PC = 0x10770 *)
mov L0x407fffe8 r0;
(* eorcs	r2, r2, r10                               #! PC = 0x10774 *)
(* eorcs r2, r2, r10 *)
nop;
(* eorcs	r3, r3, r11                               #! PC = 0x10778 *)
(* eorcs r3, r3, r11 *)
nop;
(* ldm	r8!, {r8, r9, r10, r11}                      #! EA = L0x407ffff8; Value = 0x00000000; PC = 0x1077c *)
mov r8 L0x407ffff8; mov r9 L0x407ffffc; mov r10 L0x40800000; mov r11 L0x40800004;
(* str	r1, [lr, #-12]                              #! EA = L0x407fffec; PC = 0x10780 *)
mov L0x407fffec r1;
(* str	r2, [lr, #-8]                               #! EA = L0x407ffff0; PC = 0x10784 *)
mov L0x407ffff0 r2;
(* str	r3, [lr, #-4]                               #! EA = L0x407ffff4; PC = 0x10788 *)
mov L0x407ffff4 r3;
(* add	r4, r4, r8                                  #! PC = 0x1078c *)
adds dc r4 r4 r8;
(* add	r5, r5, r9                                  #! PC = 0x10790 *)
adds dc r5 r5 r9;
(* ldrcs	r8, [r12], #16                            #! EA = L0x407fffe8; Value = 0x5aff1a09; PC = 0x10794 *)
cmov r8 carry L0x407fffe8 r8;
(* ldrcs	r9, [r12, #-12]                           #! EA = L0x407fffdc; Value = 0x00000000; PC = 0x10798 *)
cmov r9 carry L0x407fffdc r9;
(* add	r6, r6, r10                                 #! PC = 0x1079c *)
adds dc r6 r6 r10;
(* add	r7, r7, r11                                 #! PC = 0x107a0 *)
adds dc r7 r7 r11;
(* ldrcs	r10, [r12, #-8]                           #! EA = L0x407fffe0; Value = 0x00000000; PC = 0x107a4 *)
cmov r10 carry L0x407fffe0 r10;
(* ldrcs	r11, [r12, #-4]                           #! EA = L0x407fffe4; Value = 0x00000000; PC = 0x107a8 *)
cmov r11 carry L0x407fffe4 r11;
(* eorcs	r4, r4, r8                                #! PC = 0x107ac *)
(* eorcs r4, r4, r8 *)
nop;
(* eorcs	r5, r5, r9                                #! PC = 0x107b0 *)
(* eorcs r5, r5, r9 *)
nop;
(* add	r8, sp, #32                                 #! PC = 0x107b4 *)
adds dc r8 sp 32@uint32;
(* str	r4, [lr], #16                               #! EA = L0x407ffff8; PC = 0x107b8 *)
mov L0x407ffff8 r4;
(* eorcs	r6, r6, r10                               #! PC = 0x107bc *)
(* eorcs r6, r6, r10 *)
nop;
(* eorcs	r7, r7, r11                               #! PC = 0x107c0 *)
(* eorcs r7, r7, r11 *)
nop;
(* str	r5, [lr, #-12]                              #! EA = L0x407ffffc; PC = 0x107c4 *)
mov L0x407ffffc r5;
(* ldm	r8!, {r8, r9, r10, r11}                      #! EA = L0x40800008; Value = 0x00000004; PC = 0x107c8 *)
mov r8 L0x40800008; mov r9 L0x4080000c; mov r10 L0x40800010; mov r11 L0x40800014;
(* str	r6, [lr, #-8]                               #! EA = L0x40800000; PC = 0x107cc *)
mov L0x40800000 r6;
(* add	r0, sp, #96	; 0x60                          #! PC = 0x107d0 *)
adds dc r0 sp 96@uint32;
(* str	r7, [lr, #-4]                               #! EA = L0x40800004; PC = 0x107d4 *)
mov L0x40800004 r7;
(* ldm	r0!, {r0, r1, r2, r3, r4, r5, r6, r7}        #! EA = L0x40800048; Value = 0xb1352a2c; PC = 0x107d8 *)
mov r0 L0x40800048; mov r1 L0x4080004c; mov r2 L0x40800050; mov r3 L0x40800054;
mov r4 L0x40800058; mov r5 L0x4080005c; mov r6 L0x40800060; mov r7 L0x40800064;
(* add	r0, r0, r8                                  #! PC = 0x107dc *)
adds dc r0 r0 r8;
(* add	r1, r1, r9                                  #! PC = 0x107e0 *)
adds dc r1 r1 r9;
(* ldrcs	r8, [r12], #16                            #! EA = L0x407fffe8; Value = 0x5aff1a09; PC = 0x107e4 *)
cmov r8 carry L0x407fffe8 r8;
(* ldrcs	r9, [r12, #-12]                           #! EA = L0x407fffdc; Value = 0x00000000; PC = 0x107e8 *)
cmov r9 carry L0x407fffdc r9;
(* strhi	r10, [sp, #104]	; 0x68                    #! EA = L0x40800050; PC = 0x107ec *)
cmov L0x40800050 carry r10 L0x40800050;
(* strhi	r11, [sp, #108]	; 0x6c                    #! EA = L0x40800054; PC = 0x107f0 *)
cmov L0x40800054 carry r11 L0x40800054;
(* add	r2, r2, r10                                 #! PC = 0x107f4 *)
adds dc r2 r2 r10;
(* add	r3, r3, r11                                 #! PC = 0x107f8 *)
adds dc r3 r3 r11;
(* ldrcs	r10, [r12, #-8]                           #! EA = L0x407fffe0; Value = 0x00000000; PC = 0x107fc *)
cmov r10 carry L0x407fffe0 r10;
(* ldrcs	r11, [r12, #-4]                           #! EA = L0x407fffe4; Value = 0x00000000; PC = 0x10800 *)
cmov r11 carry L0x407fffe4 r11;
(* eorcs	r0, r0, r8                                #! PC = 0x10804 *)
(* eorcs r0, r0, r8 *)
nop;
(* eorcs	r1, r1, r9                                #! PC = 0x10808 *)
(* eorcs r1, r1, r9 *)
nop;
(* add	r8, sp, #48	; 0x30                          #! PC = 0x1080c *)
adds dc r8 sp 48@uint32;
(* str	r0, [lr], #16                               #! EA = L0x40800008; PC = 0x10810 *)
mov L0x40800008 r0;
(* eorcs	r2, r2, r10                               #! PC = 0x10814 *)
(* eorcs r2, r2, r10 *)
nop;
(* eorcs	r3, r3, r11                               #! PC = 0x10818 *)
(* eorcs r3, r3, r11 *)
nop;
(* str	r1, [lr, #-12]                              #! EA = L0x4080000c; PC = 0x1081c *)
mov L0x4080000c r1;
(* ldm	r8!, {r8, r9, r10, r11}                      #! EA = L0x40800018; Value = 0x00000000; PC = 0x10820 *)
mov r8 L0x40800018; mov r9 L0x4080001c; mov r10 L0x40800020; mov r11 L0x40800024;
(* str	r2, [lr, #-8]                               #! EA = L0x40800010; PC = 0x10824 *)
mov L0x40800010 r2;
(* str	r3, [lr, #-4]                               #! EA = L0x40800014; PC = 0x10828 *)
mov L0x40800014 r3;
(* add	r4, r4, r8                                  #! PC = 0x1082c *)
adds dc r4 r4 r8;
(* add	r5, r5, r9                                  #! PC = 0x10830 *)
adds dc r5 r5 r9;
(* addhi	r8, r8, #1                                #! PC = 0x10834 *)
(* addhi r8, r8, 1 *)
nop;
(* strhi	r8, [sp, #48]	; 0x30                      #! EA = L0x40800018; PC = 0x10838 *)
cmov L0x40800018 carry r8 L0x40800018;
(* ldrcs	r8, [r12], #16                            #! EA = L0x407fffe8; Value = 0x5aff1a09; PC = 0x1083c *)
cmov r8 carry L0x407fffe8 r8;
(* ldrcs	r9, [r12, #-12]                           #! EA = L0x407fffdc; Value = 0x00000000; PC = 0x10840 *)
cmov r9 carry L0x407fffdc r9;
(* add	r6, r6, r10                                 #! PC = 0x10844 *)
adds dc r6 r6 r10;
(* add	r7, r7, r11                                 #! PC = 0x10848 *)
adds dc r7 r7 r11;
(* ldrcs	r10, [r12, #-8]                           #! EA = L0x407fffe0; Value = 0x00000000; PC = 0x1084c *)
cmov r10 carry L0x407fffe0 r10;
(* ldrcs	r11, [r12, #-4]                           #! EA = L0x407fffe4; Value = 0x00000000; PC = 0x10850 *)
cmov r11 carry L0x407fffe4 r11;
(* eorcs	r4, r4, r8                                #! PC = 0x10854 *)
(* eorcs r4, r4, r8 *)
nop;
(* eorcs	r5, r5, r9                                #! PC = 0x10858 *)
(* eorcs r5, r5, r9 *)
nop;
(* ldrne	r8, [sp, #136]	; 0x88                     #! EA = L0x40800070; Value = 0x00000014; PC = 0x1085c *)
(* ldrne r8, L0x40800070 *)
nop;
(* eorcs	r6, r6, r10                               #! PC = 0x10860 *)
(* eorcs r6, r6, r10 *)
nop;
(* eorcs	r7, r7, r11                               #! PC = 0x10864 *)
(* eorcs r7, r7, r11 *)
nop;
(* str	r4, [lr], #16                               #! EA = L0x40800018; PC = 0x10868 *)
mov L0x40800018 r4;
(* str	r5, [lr, #-12]                              #! EA = L0x4080001c; PC = 0x1086c *)
mov L0x4080001c r5;
(* subcs	r11, r8, #64	; 0x40                       #! PC = 0x10870 *)
(* subcs r11, r8, 64 *)
nop;
(* str	r6, [lr, #-8]                               #! EA = L0x40800020; PC = 0x10874 *)
mov L0x40800020 r6;
(* str	r7, [lr, #-4]                               #! EA = L0x40800024; PC = 0x10878 *)
mov L0x40800024 r7;
(* #bhi	0x10510 <ChaCha20_ctr32+80>                #! PC = 0x1087c *)
#bhi	0x10510 <ChaCha20_ctr32+80>                #! 0x1087c = 0x1087c;
(* #beq	0x10c7c <ChaCha20_ctr32+1980>              #! PC = 0x10880 *)
#beq	0x10c7c <ChaCha20_ctr32+1980>              #! 0x10880 = 0x10880;
(* #b	0x10c58 <ChaCha20_ctr32+1944>                #! PC = 0x10884 *)
#b	0x10c58 <ChaCha20_ctr32+1944>                #! 0x10884 = 0x10884;

mov a0 L0x407fffe8; mov a1 L0x407fffec;
mov a2 L0x407ffff0; mov a3 L0x407ffff4;
mov a4 L0x407ffff8; mov a5 L0x407ffffc;
mov a6 L0x40800000; mov a7 L0x40800004;
mov a8 L0x40800008; mov a9 L0x4080000c;
mov aa L0x40800010; mov ab L0x40800014;
mov ac L0x40800018; mov ad L0x4080001c;
mov ae L0x40800020; mov af L0x40800024;

{
  true
  &&
  true
}

