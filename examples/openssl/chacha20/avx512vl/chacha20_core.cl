proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}

mov L0x5555555553c0 A0; mov L0x5555555553c4 A1;
mov L0x5555555553c8 A2; mov L0x5555555553cc A3;
mov L0x55555555c020 A4; mov L0x55555555c024 A5;
mov L0x55555555c028 A6; mov L0x55555555c02c A7;
mov L0x55555555c030 A8; mov L0x55555555c034 A9;
mov L0x55555555c038 Aa; mov L0x55555555c03c Ab;
mov L0x55555555c040 Ac; mov L0x55555555c044 Ad;
mov L0x55555555c048 Ae; mov L0x55555555c04c Af;

mov L0x5555555552a0 2@uint32; mov L0x5555555552a4 0@uint32;
mov L0x5555555552a8 0@uint32; mov L0x5555555552ac 0@uint32;
mov L0x5555555552b0 0@uint32; mov L0x5555555552b4 0@uint32;
mov L0x5555555552b8 0@uint32; mov L0x5555555552bc 0@uint32;

mov L0x5555555552c0 0@uint32; mov L0x5555555552c4 0@uint32;
mov L0x5555555552c8 0@uint32; mov L0x5555555552cc 0@uint32;
mov L0x5555555552d0 0@uint32; mov L0x5555555552d4 0@uint32;
mov L0x5555555552d8 0@uint32; mov L0x5555555552dc 0@uint32;

(* vbroadcasti128 -0x299d(%rip),%ymm0        # 0x5555555553c0#! EA = L0x5555555553c0; Value = 0x3320646e61707865; PC = 0x555555557d54 *)
mov ymm0_0 L0x5555555553c0; mov ymm0_4 L0x5555555553c0;
mov ymm0_1 L0x5555555553c4; mov ymm0_5 L0x5555555553c4;
mov ymm0_2 L0x5555555553c8; mov ymm0_6 L0x5555555553c8;
mov ymm0_3 L0x5555555553cc; mov ymm0_7 L0x5555555553cc;
(* vbroadcasti128 (%rcx),%ymm1                     #! EA = L0x55555555c020; Value = 0x0000000100000000; PC = 0x555555557d5d *)
mov ymm1_0 L0x55555555c020; mov ymm1_4 L0x55555555c020;
mov ymm1_1 L0x55555555c024; mov ymm1_5 L0x55555555c024;
mov ymm1_2 L0x55555555c028; mov ymm1_6 L0x55555555c028;
mov ymm1_3 L0x55555555c02c; mov ymm1_7 L0x55555555c02c;
(* vbroadcasti128 0x10(%rcx),%ymm2                 #! EA = L0x55555555c030; Value = 0x0000000500000004; PC = 0x555555557d62 *)
mov ymm2_0 L0x55555555c030; mov ymm2_4 L0x55555555c030;
mov ymm2_1 L0x55555555c034; mov ymm2_5 L0x55555555c034;
mov ymm2_2 L0x55555555c038; mov ymm2_6 L0x55555555c038;
mov ymm2_3 L0x55555555c03c; mov ymm2_7 L0x55555555c03c;
(* vbroadcasti128 (%r8),%ymm3                      #! EA = L0x55555555c040; Value = 0x0000001000000000; PC = 0x555555557d68 *)
mov ymm3_0 L0x55555555c040; mov ymm3_4 L0x55555555c040;
mov ymm3_1 L0x55555555c044; mov ymm3_5 L0x55555555c044;
mov ymm3_2 L0x55555555c048; mov ymm3_6 L0x55555555c048;
mov ymm3_3 L0x55555555c04c; mov ymm3_7 L0x55555555c04c;
(* vmovdqa32 %ymm0,%ymm16                          #! PC = 0x555555557d6d *)
mov ymm16_0 ymm0_0; mov ymm16_1 ymm0_1; mov ymm16_2 ymm0_2;
mov ymm16_3 ymm0_3; mov ymm16_4 ymm0_4; mov ymm16_5 ymm0_5;
mov ymm16_6 ymm0_6; mov ymm16_7 ymm0_7;
(* vmovdqa32 %ymm1,%ymm17                          #! PC = 0x555555557d73 *)
mov ymm17_0 ymm1_0; mov ymm17_1 ymm1_1; mov ymm17_2 ymm1_2;
mov ymm17_3 ymm1_3; mov ymm17_4 ymm1_4; mov ymm17_5 ymm1_5;
mov ymm17_6 ymm1_6; mov ymm17_7 ymm1_7;
(* vmovdqa32 %ymm2,%ymm18                          #! PC = 0x555555557d79 *)
mov ymm18_0 ymm2_0; mov ymm18_1 ymm2_1; mov ymm18_2 ymm2_2;
mov ymm18_3 ymm2_3; mov ymm18_4 ymm2_4; mov ymm18_5 ymm2_5;
mov ymm18_6 ymm2_6; mov ymm18_7 ymm2_7;
(* vpaddd -0x2ac7(%rip),%ymm3,%ymm3        # 0x5555555552c0#! EA = L0x5555555552c0; Value = 0x0000000000000000; PC = 0x555555557d7f *)
adds dc ymm3_0 ymm3_0 L0x5555555552c0; adds dc ymm3_1 ymm3_1 L0x5555555552c4;
adds dc ymm3_2 ymm3_2 L0x5555555552c8; adds dc ymm3_3 ymm3_3 L0x5555555552cc;
adds dc ymm3_4 ymm3_4 L0x5555555552d0; adds dc ymm3_5 ymm3_5 L0x5555555552d4;
adds dc ymm3_6 ymm3_6 L0x5555555552d8; adds dc ymm3_7 ymm3_7 L0x5555555552dc;
(* vmovdqa32 -0x2af1(%rip),%ymm20        # 0x5555555552a0#! EA = L0x5555555552a0; Value = 0x0000000000000002; PC = 0x555555557d87 *)
mov ymm20_0 L0x5555555552a0; mov ymm20_1 L0x5555555552a4;
mov ymm20_2 L0x5555555552a8; mov ymm20_3 L0x5555555552ac;
mov ymm20_4 L0x5555555552b0; mov ymm20_5 L0x5555555552b4;
mov ymm20_6 L0x5555555552b8; mov ymm20_7 L0x5555555552bc;
(* mov    $0xa,%r8                                 #! PC = 0x555555557d91 *)
(* mov 0xa, %r8 *)
nop;
(* vmovdqa32 %ymm3,%ymm19                          #! PC = 0x555555557d98 *)
mov ymm19_0 ymm3_0; mov ymm19_1 ymm3_1; mov ymm19_2 ymm3_2;
mov ymm19_3 ymm3_3; mov ymm19_4 ymm3_4; mov ymm19_5 ymm3_5;
mov ymm19_6 ymm3_6; mov ymm19_7 ymm3_7;
(* #jmp    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557d9e *)
#jmp    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557d9e = 0x555555557d9e;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dc0 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557dc4 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557dc8 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557dcf *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557dd3 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557dd7 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557dde *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557de2 *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557de6 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557ded *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557df1 *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557df5 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557dfc *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x39,%ymm1,%ymm1                       #! PC = 0x555555557e01 *)
mov sh0 ymm1_1; mov sh1 ymm1_2; mov sh2 ymm1_3; mov sh3 ymm1_0;
mov sh4 ymm1_5; mov sh5 ymm1_6; mov sh6 ymm1_7; mov sh7 ymm1_4;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x93,%ymm3,%ymm3                       #! PC = 0x555555557e06 *)
mov sh0 ymm3_3; mov sh1 ymm3_0; mov sh2 ymm3_1; mov sh3 ymm3_2;
mov sh4 ymm3_7; mov sh5 ymm3_4; mov sh6 ymm3_5; mov sh7 ymm3_6;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e0b *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e0f *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x10,%ymm3,%ymm3                        #! PC = 0x555555557e13 *)
rol ymm3_0@uint32 ymm3_0 0x10; rol ymm3_1@uint32 ymm3_1 0x10;
rol ymm3_2@uint32 ymm3_2 0x10; rol ymm3_3@uint32 ymm3_3 0x10;
rol ymm3_4@uint32 ymm3_4 0x10; rol ymm3_5@uint32 ymm3_5 0x10;
rol ymm3_6@uint32 ymm3_6 0x10; rol ymm3_7@uint32 ymm3_7 0x10;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e1a *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e1e *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0xc,%ymm1,%ymm1                         #! PC = 0x555555557e22 *)
rol ymm1_0@uint32 ymm1_0 0xc; rol ymm1_1@uint32 ymm1_1 0xc;
rol ymm1_2@uint32 ymm1_2 0xc; rol ymm1_3@uint32 ymm1_3 0xc;
rol ymm1_4@uint32 ymm1_4 0xc; rol ymm1_5@uint32 ymm1_5 0xc;
rol ymm1_6@uint32 ymm1_6 0xc; rol ymm1_7@uint32 ymm1_7 0xc;
(* vpaddd %ymm1,%ymm0,%ymm0                        #! PC = 0x555555557e29 *)
adds dc ymm0_0 ymm0_0 ymm1_0; adds dc ymm0_1 ymm0_1 ymm1_1;
adds dc ymm0_2 ymm0_2 ymm1_2; adds dc ymm0_3 ymm0_3 ymm1_3;
adds dc ymm0_4 ymm0_4 ymm1_4; adds dc ymm0_5 ymm0_5 ymm1_5;
adds dc ymm0_6 ymm0_6 ymm1_6; adds dc ymm0_7 ymm0_7 ymm1_7;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x555555557e2d *)
xor ymm3_0@uint32 ymm3_0 ymm0_0; xor ymm3_1@uint32 ymm3_1 ymm0_1;
xor ymm3_2@uint32 ymm3_2 ymm0_2; xor ymm3_3@uint32 ymm3_3 ymm0_3;
xor ymm3_4@uint32 ymm3_4 ymm0_4; xor ymm3_5@uint32 ymm3_5 ymm0_5;
xor ymm3_6@uint32 ymm3_6 ymm0_6; xor ymm3_7@uint32 ymm3_7 ymm0_7;
(* vprold $0x8,%ymm3,%ymm3                         #! PC = 0x555555557e31 *)
rol ymm3_0@uint32 ymm3_0 0x8; rol ymm3_1@uint32 ymm3_1 0x8;
rol ymm3_2@uint32 ymm3_2 0x8; rol ymm3_3@uint32 ymm3_3 0x8;
rol ymm3_4@uint32 ymm3_4 0x8; rol ymm3_5@uint32 ymm3_5 0x8;
rol ymm3_6@uint32 ymm3_6 0x8; rol ymm3_7@uint32 ymm3_7 0x8;
(* vpaddd %ymm3,%ymm2,%ymm2                        #! PC = 0x555555557e38 *)
adds dc ymm2_0 ymm2_0 ymm3_0; adds dc ymm2_1 ymm2_1 ymm3_1;
adds dc ymm2_2 ymm2_2 ymm3_2; adds dc ymm2_3 ymm2_3 ymm3_3;
adds dc ymm2_4 ymm2_4 ymm3_4; adds dc ymm2_5 ymm2_5 ymm3_5;
adds dc ymm2_6 ymm2_6 ymm3_6; adds dc ymm2_7 ymm2_7 ymm3_7;
(* vpxor  %ymm2,%ymm1,%ymm1                        #! PC = 0x555555557e3c *)
xor ymm1_0@uint32 ymm1_0 ymm2_0; xor ymm1_1@uint32 ymm1_1 ymm2_1;
xor ymm1_2@uint32 ymm1_2 ymm2_2; xor ymm1_3@uint32 ymm1_3 ymm2_3;
xor ymm1_4@uint32 ymm1_4 ymm2_4; xor ymm1_5@uint32 ymm1_5 ymm2_5;
xor ymm1_6@uint32 ymm1_6 ymm2_6; xor ymm1_7@uint32 ymm1_7 ymm2_7;
(* vprold $0x7,%ymm1,%ymm1                         #! PC = 0x555555557e40 *)
rol ymm1_0@uint32 ymm1_0 0x7; rol ymm1_1@uint32 ymm1_1 0x7;
rol ymm1_2@uint32 ymm1_2 0x7; rol ymm1_3@uint32 ymm1_3 0x7;
rol ymm1_4@uint32 ymm1_4 0x7; rol ymm1_5@uint32 ymm1_5 0x7;
rol ymm1_6@uint32 ymm1_6 0x7; rol ymm1_7@uint32 ymm1_7 0x7;
(* vpshufd $0x4e,%ymm2,%ymm2                       #! PC = 0x555555557e47 *)
mov sh0 ymm2_2; mov sh1 ymm2_3; mov sh2 ymm2_0; mov sh3 ymm2_1;
mov sh4 ymm2_6; mov sh5 ymm2_7; mov sh6 ymm2_4; mov sh7 ymm2_5;
mov ymm2_0 sh0; mov ymm2_1 sh1; mov ymm2_2 sh2; mov ymm2_3 sh3;
mov ymm2_4 sh4; mov ymm2_5 sh5; mov ymm2_6 sh6; mov ymm2_7 sh7;
(* vpshufd $0x93,%ymm1,%ymm1                       #! PC = 0x555555557e4c *)
mov sh0 ymm1_3; mov sh1 ymm1_0; mov sh2 ymm1_1; mov sh3 ymm1_2;
mov sh4 ymm1_7; mov sh5 ymm1_4; mov sh6 ymm1_5; mov sh7 ymm1_6;
mov ymm1_0 sh0; mov ymm1_1 sh1; mov ymm1_2 sh2; mov ymm1_3 sh3;
mov ymm1_4 sh4; mov ymm1_5 sh5; mov ymm1_6 sh6; mov ymm1_7 sh7;
(* vpshufd $0x39,%ymm3,%ymm3                       #! PC = 0x555555557e51 *)
mov sh0 ymm3_1; mov sh1 ymm3_2; mov sh2 ymm3_3; mov sh3 ymm3_0;
mov sh4 ymm3_5; mov sh5 ymm3_6; mov sh6 ymm3_7; mov sh7 ymm3_4;
mov ymm3_0 sh0; mov ymm3_1 sh1; mov ymm3_2 sh2; mov ymm3_3 sh3;
mov ymm3_4 sh4; mov ymm3_5 sh5; mov ymm3_6 sh6; mov ymm3_7 sh7;
(* dec    %r8                                      #! PC = 0x555555557e56 *)
(* dec %r8 *)
nop;
(* #jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! PC = 0x555555557e59 *)
#jne    0x555555557dc0 <ChaCha20_avx512vl+128>  #! 0x555555557e59 = 0x555555557e59;
(* vpaddd %ymm16,%ymm0,%ymm0                       #! PC = 0x555555557e5f *)
adds dc ymm0_0 ymm0_0 ymm16_0; adds dc ymm0_1 ymm0_1 ymm16_1;
adds dc ymm0_2 ymm0_2 ymm16_2; adds dc ymm0_3 ymm0_3 ymm16_3;
adds dc ymm0_4 ymm0_4 ymm16_4; adds dc ymm0_5 ymm0_5 ymm16_5;
adds dc ymm0_6 ymm0_6 ymm16_6; adds dc ymm0_7 ymm0_7 ymm16_7;
(* vpaddd %ymm17,%ymm1,%ymm1                       #! PC = 0x555555557e65 *)
adds dc ymm1_0 ymm1_0 ymm17_0; adds dc ymm1_1 ymm1_1 ymm17_1;
adds dc ymm1_2 ymm1_2 ymm17_2; adds dc ymm1_3 ymm1_3 ymm17_3;
adds dc ymm1_4 ymm1_4 ymm17_4; adds dc ymm1_5 ymm1_5 ymm17_5;
adds dc ymm1_6 ymm1_6 ymm17_6; adds dc ymm1_7 ymm1_7 ymm17_7;
(* vpaddd %ymm18,%ymm2,%ymm2                       #! PC = 0x555555557e6b *)
adds dc ymm2_0 ymm2_0 ymm18_0; adds dc ymm2_1 ymm2_1 ymm18_1;
adds dc ymm2_2 ymm2_2 ymm18_2; adds dc ymm2_3 ymm2_3 ymm18_3;
adds dc ymm2_4 ymm2_4 ymm18_4; adds dc ymm2_5 ymm2_5 ymm18_5;
adds dc ymm2_6 ymm2_6 ymm18_6; adds dc ymm2_7 ymm2_7 ymm18_7;
(* vpaddd %ymm19,%ymm3,%ymm3                       #! PC = 0x555555557e71 *)
adds dc ymm3_0 ymm3_0 ymm19_0; adds dc ymm3_1 ymm3_1 ymm19_1;
adds dc ymm3_2 ymm3_2 ymm19_2; adds dc ymm3_3 ymm3_3 ymm19_3;
adds dc ymm3_4 ymm3_4 ymm19_4; adds dc ymm3_5 ymm3_5 ymm19_5;
adds dc ymm3_6 ymm3_6 ymm19_6; adds dc ymm3_7 ymm3_7 ymm19_7;
(* sub    $0x40,%rdx                               #! PC = 0x555555557e77 *)
(* sub 0x40, %rdx *)
nop;
(* #jb     0x555555557f20 <ChaCha20_avx512vl+480>  #! PC = 0x555555557e7b *)
#jb     0x555555557f20 <ChaCha20_avx512vl+480>  #! 0x555555557e7b = 0x555555557e7b;
(* vmovdqa %xmm0,(%rsp)                            #! EA = L0x7fffffffdae0; PC = 0x555555557f20 *)
mov L0x7fffffffdae0 ymm0_0; mov L0x7fffffffdae4 ymm0_1;
mov L0x7fffffffdae8 ymm0_2; mov L0x7fffffffdaec ymm0_3;
(* vmovdqa %xmm1,0x10(%rsp)                        #! EA = L0x7fffffffdaf0; PC = 0x555555557f25 *)
mov L0x7fffffffdaf0 ymm1_0; mov L0x7fffffffdaf4 ymm1_1;
mov L0x7fffffffdaf8 ymm1_2; mov L0x7fffffffdafc ymm1_3;
(* vmovdqa %xmm2,0x20(%rsp)                        #! EA = L0x7fffffffdb00; PC = 0x555555557f2b *)
mov L0x7fffffffdb00 ymm2_0; mov L0x7fffffffdb04 ymm2_1;
mov L0x7fffffffdb08 ymm2_2; mov L0x7fffffffdb0c ymm2_3;
(* vmovdqa %xmm3,0x30(%rsp)                        #! EA = L0x7fffffffdb10; PC = 0x555555557f31 *)
mov L0x7fffffffdb10 ymm3_0; mov L0x7fffffffdb14 ymm3_1;
mov L0x7fffffffdb18 ymm3_2; mov L0x7fffffffdb1c ymm3_3;

mov a0 L0x7fffffffdae0; mov a1 L0x7fffffffdae4;
mov a2 L0x7fffffffdae8; mov a3 L0x7fffffffdaec;
mov a4 L0x7fffffffdaf0; mov a5 L0x7fffffffdaf4;
mov a6 L0x7fffffffdaf8; mov a7 L0x7fffffffdafc;
mov a8 L0x7fffffffdb00; mov a9 L0x7fffffffdb04;
mov aa L0x7fffffffdb08; mov ab L0x7fffffffdb0c;
mov ac L0x7fffffffdb10; mov ad L0x7fffffffdb14;
mov ae L0x7fffffffdb18; mov af L0x7fffffffdb1c;

{
  true
  &&
  true
}

