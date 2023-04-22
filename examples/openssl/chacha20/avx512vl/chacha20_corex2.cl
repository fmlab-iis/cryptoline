(* popper: cv_cec.exe -v -jobs 16 -ov a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac,ad,ae,af#b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,ba,bb,bc,bd,be,bf chacha20_corex2.cl ../chacha_salsa20_wordtobyte_entryx2.cl
Parsing CryptoLine file:                [OK]            0.007210 seconds
Checking well-formedness:               [OK]            0.001988 seconds
Parsing CryptoLine file:                [OK]            0.017255 seconds
Checking well-formedness:               [OK]            0.007649 seconds
Equivalence of output group #0:         [OK]            0.230109 seconds
Equivalence of output group #1:         [OK]            0.115767 seconds
Final result:                           [OK]            0.562208 seconds
*)
proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af,
           uint32 B0, uint32 B1, uint32 B2, uint32 B3,
           uint32 B4, uint32 B5, uint32 B6, uint32 B7,
           uint32 B8, uint32 B9, uint32 Ba, uint32 Bb,
           uint32 Bc, uint32 Bd, uint32 Be, uint32 Bf) =
{
  true
  &&
  true
}

mov ymm0_0 A0; mov ymm0_1 A1; mov ymm0_2 A2; mov ymm0_3 A3;
mov ymm0_4 B0; mov ymm0_5 B1; mov ymm0_6 B2; mov ymm0_7 B3;
mov ymm1_0 A4; mov ymm1_1 A5; mov ymm1_2 A6; mov ymm1_3 A7;
mov ymm1_4 B4; mov ymm1_5 B5; mov ymm1_6 B6; mov ymm1_7 B7;
mov ymm2_0 A8; mov ymm2_1 A9; mov ymm2_2 Aa; mov ymm2_3 Ab;
mov ymm2_4 B8; mov ymm2_5 B9; mov ymm2_6 Ba; mov ymm2_7 Bb;
mov ymm3_0 Ac; mov ymm3_1 Ad; mov ymm3_2 Ae; mov ymm3_3 Af;
mov ymm3_4 Bc; mov ymm3_5 Bd; mov ymm3_6 Be; mov ymm3_7 Bf;


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
(* vmovdqa32 %ymm3,%ymm19                          #! PC = 0x555555557d98 *)
mov ymm19_0 ymm3_0; mov ymm19_1 ymm3_1; mov ymm19_2 ymm3_2;
mov ymm19_3 ymm3_3; mov ymm19_4 ymm3_4; mov ymm19_5 ymm3_5;
mov ymm19_6 ymm3_6; mov ymm19_7 ymm3_7;
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

mov a0 ymm0_0; mov a1 ymm0_1; mov a2 ymm0_2; mov a3 ymm0_3;
mov b0 ymm0_4; mov b1 ymm0_5; mov b2 ymm0_6; mov b3 ymm0_7;
mov a4 ymm1_0; mov a5 ymm1_1; mov a6 ymm1_2; mov a7 ymm1_3;
mov b4 ymm1_4; mov b5 ymm1_5; mov b6 ymm1_6; mov b7 ymm1_7;
mov a8 ymm2_0; mov a9 ymm2_1; mov aa ymm2_2; mov ab ymm2_3;
mov b8 ymm2_4; mov b9 ymm2_5; mov ba ymm2_6; mov bb ymm2_7;
mov ac ymm3_0; mov ad ymm3_1; mov ae ymm3_2; mov af ymm3_3;
mov bc ymm3_4; mov bd ymm3_5; mov be ymm3_6; mov bf ymm3_7;

{
  true
  &&
  true
}

