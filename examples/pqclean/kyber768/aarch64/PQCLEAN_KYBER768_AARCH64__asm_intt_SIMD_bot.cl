(* quine: cv.exe -v -slicing -isafety -vo lex -jobs 40 -enable_rewriting:eqmod PQCLEAN_KYBER768_AARCH64__asm_intt_SIMD_bot.cl
Parsing CryptoLine file:                    [OK]            0.1136 seconds
Checking well-formedness:                   [OK]            0.0326 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0312 seconds
Normalizing specification:                  [OK]            0.0246 seconds
Rewriting assignments:                      [OK]            0.0273 seconds
Verifying program safety:                   [OK]            16.8162 seconds
Verifying range assertions:                 [OK]            0.0084 seconds
Verifying range specification:              [OK]            0.7851 seconds
Rewriting value-preserved casting:          [OK]            0.0240 seconds
Verifying algebraic assertions:             [OK]            60.3204 seconds
Verifying algebraic specification:          [OK]            9.1907 seconds
Procedure verification:                     [OK]            87.2430 seconds

Summary
-------
Verification result:                        [OK]            87.3894 seconds
*)

proc main (
int16 L0xffffffffc3a0,int16 L0xffffffffc3a2,int16 L0xffffffffc3a4,int16 L0xffffffffc3a6,
int16 L0xffffffffc3a8,int16 L0xffffffffc3aa,int16 L0xffffffffc3ac,int16 L0xffffffffc3ae,
int16 L0xffffffffc3b0,int16 L0xffffffffc3b2,int16 L0xffffffffc3b4,int16 L0xffffffffc3b6,
int16 L0xffffffffc3b8,int16 L0xffffffffc3ba,int16 L0xffffffffc3bc,int16 L0xffffffffc3be,
int16 L0xffffffffc3c0,int16 L0xffffffffc3c2,int16 L0xffffffffc3c4,int16 L0xffffffffc3c6,
int16 L0xffffffffc3c8,int16 L0xffffffffc3ca,int16 L0xffffffffc3cc,int16 L0xffffffffc3ce,
int16 L0xffffffffc3d0,int16 L0xffffffffc3d2,int16 L0xffffffffc3d4,int16 L0xffffffffc3d6,
int16 L0xffffffffc3d8,int16 L0xffffffffc3da,int16 L0xffffffffc3dc,int16 L0xffffffffc3de,
int16 L0xffffffffc3e0,int16 L0xffffffffc3e2,int16 L0xffffffffc3e4,int16 L0xffffffffc3e6,
int16 L0xffffffffc3e8,int16 L0xffffffffc3ea,int16 L0xffffffffc3ec,int16 L0xffffffffc3ee,
int16 L0xffffffffc3f0,int16 L0xffffffffc3f2,int16 L0xffffffffc3f4,int16 L0xffffffffc3f6,
int16 L0xffffffffc3f8,int16 L0xffffffffc3fa,int16 L0xffffffffc3fc,int16 L0xffffffffc3fe,
int16 L0xffffffffc400,int16 L0xffffffffc402,int16 L0xffffffffc404,int16 L0xffffffffc406,
int16 L0xffffffffc408,int16 L0xffffffffc40a,int16 L0xffffffffc40c,int16 L0xffffffffc40e,
int16 L0xffffffffc410,int16 L0xffffffffc412,int16 L0xffffffffc414,int16 L0xffffffffc416,
int16 L0xffffffffc418,int16 L0xffffffffc41a,int16 L0xffffffffc41c,int16 L0xffffffffc41e,
int16 L0xffffffffc420,int16 L0xffffffffc422,int16 L0xffffffffc424,int16 L0xffffffffc426,
int16 L0xffffffffc428,int16 L0xffffffffc42a,int16 L0xffffffffc42c,int16 L0xffffffffc42e,
int16 L0xffffffffc430,int16 L0xffffffffc432,int16 L0xffffffffc434,int16 L0xffffffffc436,
int16 L0xffffffffc438,int16 L0xffffffffc43a,int16 L0xffffffffc43c,int16 L0xffffffffc43e,
int16 L0xffffffffc440,int16 L0xffffffffc442,int16 L0xffffffffc444,int16 L0xffffffffc446,
int16 L0xffffffffc448,int16 L0xffffffffc44a,int16 L0xffffffffc44c,int16 L0xffffffffc44e,
int16 L0xffffffffc450,int16 L0xffffffffc452,int16 L0xffffffffc454,int16 L0xffffffffc456,
int16 L0xffffffffc458,int16 L0xffffffffc45a,int16 L0xffffffffc45c,int16 L0xffffffffc45e,
int16 L0xffffffffc460,int16 L0xffffffffc462,int16 L0xffffffffc464,int16 L0xffffffffc466,
int16 L0xffffffffc468,int16 L0xffffffffc46a,int16 L0xffffffffc46c,int16 L0xffffffffc46e,
int16 L0xffffffffc470,int16 L0xffffffffc472,int16 L0xffffffffc474,int16 L0xffffffffc476,
int16 L0xffffffffc478,int16 L0xffffffffc47a,int16 L0xffffffffc47c,int16 L0xffffffffc47e,
int16 L0xffffffffc480,int16 L0xffffffffc482,int16 L0xffffffffc484,int16 L0xffffffffc486,
int16 L0xffffffffc488,int16 L0xffffffffc48a,int16 L0xffffffffc48c,int16 L0xffffffffc48e,
int16 L0xffffffffc490,int16 L0xffffffffc492,int16 L0xffffffffc494,int16 L0xffffffffc496,
int16 L0xffffffffc498,int16 L0xffffffffc49a,int16 L0xffffffffc49c,int16 L0xffffffffc49e,
int16 L0xffffffffc4a0,int16 L0xffffffffc4a2,int16 L0xffffffffc4a4,int16 L0xffffffffc4a6,
int16 L0xffffffffc4a8,int16 L0xffffffffc4aa,int16 L0xffffffffc4ac,int16 L0xffffffffc4ae,
int16 L0xffffffffc4b0,int16 L0xffffffffc4b2,int16 L0xffffffffc4b4,int16 L0xffffffffc4b6,
int16 L0xffffffffc4b8,int16 L0xffffffffc4ba,int16 L0xffffffffc4bc,int16 L0xffffffffc4be,
int16 L0xffffffffc4c0,int16 L0xffffffffc4c2,int16 L0xffffffffc4c4,int16 L0xffffffffc4c6,
int16 L0xffffffffc4c8,int16 L0xffffffffc4ca,int16 L0xffffffffc4cc,int16 L0xffffffffc4ce,
int16 L0xffffffffc4d0,int16 L0xffffffffc4d2,int16 L0xffffffffc4d4,int16 L0xffffffffc4d6,
int16 L0xffffffffc4d8,int16 L0xffffffffc4da,int16 L0xffffffffc4dc,int16 L0xffffffffc4de,
int16 L0xffffffffc4e0,int16 L0xffffffffc4e2,int16 L0xffffffffc4e4,int16 L0xffffffffc4e6,
int16 L0xffffffffc4e8,int16 L0xffffffffc4ea,int16 L0xffffffffc4ec,int16 L0xffffffffc4ee,
int16 L0xffffffffc4f0,int16 L0xffffffffc4f2,int16 L0xffffffffc4f4,int16 L0xffffffffc4f6,
int16 L0xffffffffc4f8,int16 L0xffffffffc4fa,int16 L0xffffffffc4fc,int16 L0xffffffffc4fe,
int16 L0xffffffffc500,int16 L0xffffffffc502,int16 L0xffffffffc504,int16 L0xffffffffc506,
int16 L0xffffffffc508,int16 L0xffffffffc50a,int16 L0xffffffffc50c,int16 L0xffffffffc50e,
int16 L0xffffffffc510,int16 L0xffffffffc512,int16 L0xffffffffc514,int16 L0xffffffffc516,
int16 L0xffffffffc518,int16 L0xffffffffc51a,int16 L0xffffffffc51c,int16 L0xffffffffc51e,
int16 L0xffffffffc520,int16 L0xffffffffc522,int16 L0xffffffffc524,int16 L0xffffffffc526,
int16 L0xffffffffc528,int16 L0xffffffffc52a,int16 L0xffffffffc52c,int16 L0xffffffffc52e,
int16 L0xffffffffc530,int16 L0xffffffffc532,int16 L0xffffffffc534,int16 L0xffffffffc536,
int16 L0xffffffffc538,int16 L0xffffffffc53a,int16 L0xffffffffc53c,int16 L0xffffffffc53e,
int16 L0xffffffffc540,int16 L0xffffffffc542,int16 L0xffffffffc544,int16 L0xffffffffc546,
int16 L0xffffffffc548,int16 L0xffffffffc54a,int16 L0xffffffffc54c,int16 L0xffffffffc54e,
int16 L0xffffffffc550,int16 L0xffffffffc552,int16 L0xffffffffc554,int16 L0xffffffffc556,
int16 L0xffffffffc558,int16 L0xffffffffc55a,int16 L0xffffffffc55c,int16 L0xffffffffc55e,
int16 L0xffffffffc560,int16 L0xffffffffc562,int16 L0xffffffffc564,int16 L0xffffffffc566,
int16 L0xffffffffc568,int16 L0xffffffffc56a,int16 L0xffffffffc56c,int16 L0xffffffffc56e,
int16 L0xffffffffc570,int16 L0xffffffffc572,int16 L0xffffffffc574,int16 L0xffffffffc576,
int16 L0xffffffffc578,int16 L0xffffffffc57a,int16 L0xffffffffc57c,int16 L0xffffffffc57e,
int16 L0xffffffffc580,int16 L0xffffffffc582,int16 L0xffffffffc584,int16 L0xffffffffc586,
int16 L0xffffffffc588,int16 L0xffffffffc58a,int16 L0xffffffffc58c,int16 L0xffffffffc58e,
int16 L0xffffffffc590,int16 L0xffffffffc592,int16 L0xffffffffc594,int16 L0xffffffffc596,
int16 L0xffffffffc598,int16 L0xffffffffc59a,int16 L0xffffffffc59c,int16 L0xffffffffc59e,
int16 A00,int16 A01,int16 A02,int16 A03,int16 A04,int16 A05,int16 A06,int16 A07,
int16 A08,int16 A09,int16 A0a,int16 A0b,int16 A0c,int16 A0d,int16 A0e,int16 A0f,
int16 A10,int16 A11,int16 A12,int16 A13,int16 A14,int16 A15,int16 A16,int16 A17,
int16 A18,int16 A19,int16 A1a,int16 A1b,int16 A1c,int16 A1d,int16 A1e,int16 A1f,
int16 A20,int16 A21,int16 A22,int16 A23,int16 A24,int16 A25,int16 A26,int16 A27,
int16 A28,int16 A29,int16 A2a,int16 A2b,int16 A2c,int16 A2d,int16 A2e,int16 A2f,
int16 A30,int16 A31,int16 A32,int16 A33,int16 A34,int16 A35,int16 A36,int16 A37,
int16 A38,int16 A39,int16 A3a,int16 A3b,int16 A3c,int16 A3d,int16 A3e,int16 A3f,
int16 A40,int16 A41,int16 A42,int16 A43,int16 A44,int16 A45,int16 A46,int16 A47,
int16 A48,int16 A49,int16 A4a,int16 A4b,int16 A4c,int16 A4d,int16 A4e,int16 A4f,
int16 A50,int16 A51,int16 A52,int16 A53,int16 A54,int16 A55,int16 A56,int16 A57,
int16 A58,int16 A59,int16 A5a,int16 A5b,int16 A5c,int16 A5d,int16 A5e,int16 A5f,
int16 A60,int16 A61,int16 A62,int16 A63,int16 A64,int16 A65,int16 A66,int16 A67,
int16 A68,int16 A69,int16 A6a,int16 A6b,int16 A6c,int16 A6d,int16 A6e,int16 A6f,
int16 A70,int16 A71,int16 A72,int16 A73,int16 A74,int16 A75,int16 A76,int16 A77,
int16 A78,int16 A79,int16 A7a,int16 A7b,int16 A7c,int16 A7d,int16 A7e,int16 A7f,
int16 A80,int16 A81,int16 A82,int16 A83,int16 A84,int16 A85,int16 A86,int16 A87,
int16 A88,int16 A89,int16 A8a,int16 A8b,int16 A8c,int16 A8d,int16 A8e,int16 A8f,
int16 A90,int16 A91,int16 A92,int16 A93,int16 A94,int16 A95,int16 A96,int16 A97,
int16 A98,int16 A99,int16 A9a,int16 A9b,int16 A9c,int16 A9d,int16 A9e,int16 A9f,
int16 Aa0,int16 Aa1,int16 Aa2,int16 Aa3,int16 Aa4,int16 Aa5,int16 Aa6,int16 Aa7,
int16 Aa8,int16 Aa9,int16 Aaa,int16 Aab,int16 Aac,int16 Aad,int16 Aae,int16 Aaf,
int16 Ab0,int16 Ab1,int16 Ab2,int16 Ab3,int16 Ab4,int16 Ab5,int16 Ab6,int16 Ab7,
int16 Ab8,int16 Ab9,int16 Aba,int16 Abb,int16 Abc,int16 Abd,int16 Abe,int16 Abf,
int16 Ac0,int16 Ac1,int16 Ac2,int16 Ac3,int16 Ac4,int16 Ac5,int16 Ac6,int16 Ac7,
int16 Ac8,int16 Ac9,int16 Aca,int16 Acb,int16 Acc,int16 Acd,int16 Ace,int16 Acf,
int16 Ad0,int16 Ad1,int16 Ad2,int16 Ad3,int16 Ad4,int16 Ad5,int16 Ad6,int16 Ad7,
int16 Ad8,int16 Ad9,int16 Ada,int16 Adb,int16 Adc,int16 Add,int16 Ade,int16 Adf,
int16 Ae0,int16 Ae1,int16 Ae2,int16 Ae3,int16 Ae4,int16 Ae5,int16 Ae6,int16 Ae7,
int16 Ae8,int16 Ae9,int16 Aea,int16 Aeb,int16 Aec,int16 Aed,int16 Aee,int16 Aef,
int16 Af0,int16 Af1,int16 Af2,int16 Af3,int16 Af4,int16 Af5,int16 Af6,int16 Af7,
int16 Af8,int16 Af9,int16 Afa,int16 Afb,int16 Afc,int16 Afd,int16 Afe,int16 Aff,
int16 F00,int16 F08,int16 F10,int16 F18,int16 F20,int16 F28,int16 F30,int16 F38,
int16 F40,int16 F48,int16 F50,int16 F58,int16 F60,int16 F68,int16 F70,int16 F78,
int16 F80,int16 F88,int16 F90,int16 F98,int16 Fa0,int16 Fa8,int16 Fb0,int16 Fb8,
int16 Fc0,int16 Fc8,int16 Fd0,int16 Fd8,int16 Fe0,int16 Fe8,int16 Ff0,int16 Ff8,
int16 Q, int16 Q2, int16 NQ, int16 NQ2, int16 F, int16 X
) =
{
   Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
   eqmod (poly X [L0xffffffffc3a0,L0xffffffffc3a2]) (F**2) [Q,X**2-17**  1] /\
   eqmod (poly X [L0xffffffffc3a4,L0xffffffffc3a6]) (F**2) [Q,X**2-17**129] /\
   eqmod (poly X [L0xffffffffc3a8,L0xffffffffc3aa]) (F**2) [Q,X**2-17** 65] /\
   eqmod (poly X [L0xffffffffc3ac,L0xffffffffc3ae]) (F**2) [Q,X**2-17**193] /\
   eqmod (poly X [L0xffffffffc3b0,L0xffffffffc3b2]) (F**2) [Q,X**2-17** 33] /\
   eqmod (poly X [L0xffffffffc3b4,L0xffffffffc3b6]) (F**2) [Q,X**2-17**161] /\
   eqmod (poly X [L0xffffffffc3b8,L0xffffffffc3ba]) (F**2) [Q,X**2-17** 97] /\
   eqmod (poly X [L0xffffffffc3bc,L0xffffffffc3be]) (F**2) [Q,X**2-17**225] /\
   eqmod (poly X [L0xffffffffc3c0,L0xffffffffc3c2]) (F**2) [Q,X**2-17** 17] /\
   eqmod (poly X [L0xffffffffc3c4,L0xffffffffc3c6]) (F**2) [Q,X**2-17**145] /\
   eqmod (poly X [L0xffffffffc3c8,L0xffffffffc3ca]) (F**2) [Q,X**2-17** 81] /\
   eqmod (poly X [L0xffffffffc3cc,L0xffffffffc3ce]) (F**2) [Q,X**2-17**209] /\
   eqmod (poly X [L0xffffffffc3d0,L0xffffffffc3d2]) (F**2) [Q,X**2-17** 49] /\
   eqmod (poly X [L0xffffffffc3d4,L0xffffffffc3d6]) (F**2) [Q,X**2-17**177] /\
   eqmod (poly X [L0xffffffffc3d8,L0xffffffffc3da]) (F**2) [Q,X**2-17**113] /\
   eqmod (poly X [L0xffffffffc3dc,L0xffffffffc3de]) (F**2) [Q,X**2-17**241] /\
   eqmod (poly X [L0xffffffffc3e0,L0xffffffffc3e2]) (F**2) [Q,X**2-17**  9] /\
   eqmod (poly X [L0xffffffffc3e4,L0xffffffffc3e6]) (F**2) [Q,X**2-17**137] /\
   eqmod (poly X [L0xffffffffc3e8,L0xffffffffc3ea]) (F**2) [Q,X**2-17** 73] /\
   eqmod (poly X [L0xffffffffc3ec,L0xffffffffc3ee]) (F**2) [Q,X**2-17**201] /\
   eqmod (poly X [L0xffffffffc3f0,L0xffffffffc3f2]) (F**2) [Q,X**2-17** 41] /\
   eqmod (poly X [L0xffffffffc3f4,L0xffffffffc3f6]) (F**2) [Q,X**2-17**169] /\
   eqmod (poly X [L0xffffffffc3f8,L0xffffffffc3fa]) (F**2) [Q,X**2-17**105] /\
   eqmod (poly X [L0xffffffffc3fc,L0xffffffffc3fe]) (F**2) [Q,X**2-17**233] /\
   eqmod (poly X [L0xffffffffc400,L0xffffffffc402]) (F**2) [Q,X**2-17** 25] /\
   eqmod (poly X [L0xffffffffc404,L0xffffffffc406]) (F**2) [Q,X**2-17**153] /\
   eqmod (poly X [L0xffffffffc408,L0xffffffffc40a]) (F**2) [Q,X**2-17** 89] /\
   eqmod (poly X [L0xffffffffc40c,L0xffffffffc40e]) (F**2) [Q,X**2-17**217] /\
   eqmod (poly X [L0xffffffffc410,L0xffffffffc412]) (F**2) [Q,X**2-17** 57] /\
   eqmod (poly X [L0xffffffffc414,L0xffffffffc416]) (F**2) [Q,X**2-17**185] /\
   eqmod (poly X [L0xffffffffc418,L0xffffffffc41a]) (F**2) [Q,X**2-17**121] /\
   eqmod (poly X [L0xffffffffc41c,L0xffffffffc41e]) (F**2) [Q,X**2-17**249] /\
   eqmod (poly X [L0xffffffffc420,L0xffffffffc422]) (F**2) [Q,X**2-17**  5] /\
   eqmod (poly X [L0xffffffffc424,L0xffffffffc426]) (F**2) [Q,X**2-17**133] /\
   eqmod (poly X [L0xffffffffc428,L0xffffffffc42a]) (F**2) [Q,X**2-17** 69] /\
   eqmod (poly X [L0xffffffffc42c,L0xffffffffc42e]) (F**2) [Q,X**2-17**197] /\
   eqmod (poly X [L0xffffffffc430,L0xffffffffc432]) (F**2) [Q,X**2-17** 37] /\
   eqmod (poly X [L0xffffffffc434,L0xffffffffc436]) (F**2) [Q,X**2-17**165] /\
   eqmod (poly X [L0xffffffffc438,L0xffffffffc43a]) (F**2) [Q,X**2-17**101] /\
   eqmod (poly X [L0xffffffffc43c,L0xffffffffc43e]) (F**2) [Q,X**2-17**229] /\
   eqmod (poly X [L0xffffffffc440,L0xffffffffc442]) (F**2) [Q,X**2-17** 21] /\
   eqmod (poly X [L0xffffffffc444,L0xffffffffc446]) (F**2) [Q,X**2-17**149] /\
   eqmod (poly X [L0xffffffffc448,L0xffffffffc44a]) (F**2) [Q,X**2-17** 85] /\
   eqmod (poly X [L0xffffffffc44c,L0xffffffffc44e]) (F**2) [Q,X**2-17**213] /\
   eqmod (poly X [L0xffffffffc450,L0xffffffffc452]) (F**2) [Q,X**2-17** 53] /\
   eqmod (poly X [L0xffffffffc454,L0xffffffffc456]) (F**2) [Q,X**2-17**181] /\
   eqmod (poly X [L0xffffffffc458,L0xffffffffc45a]) (F**2) [Q,X**2-17**117] /\
   eqmod (poly X [L0xffffffffc45c,L0xffffffffc45e]) (F**2) [Q,X**2-17**245] /\
   eqmod (poly X [L0xffffffffc460,L0xffffffffc462]) (F**2) [Q,X**2-17** 13] /\
   eqmod (poly X [L0xffffffffc464,L0xffffffffc466]) (F**2) [Q,X**2-17**141] /\
   eqmod (poly X [L0xffffffffc468,L0xffffffffc46a]) (F**2) [Q,X**2-17** 77] /\
   eqmod (poly X [L0xffffffffc46c,L0xffffffffc46e]) (F**2) [Q,X**2-17**205] /\
   eqmod (poly X [L0xffffffffc470,L0xffffffffc472]) (F**2) [Q,X**2-17** 45] /\
   eqmod (poly X [L0xffffffffc474,L0xffffffffc476]) (F**2) [Q,X**2-17**173] /\
   eqmod (poly X [L0xffffffffc478,L0xffffffffc47a]) (F**2) [Q,X**2-17**109] /\
   eqmod (poly X [L0xffffffffc47c,L0xffffffffc47e]) (F**2) [Q,X**2-17**237] /\
   eqmod (poly X [L0xffffffffc480,L0xffffffffc482]) (F**2) [Q,X**2-17** 29] /\
   eqmod (poly X [L0xffffffffc484,L0xffffffffc486]) (F**2) [Q,X**2-17**157] /\
   eqmod (poly X [L0xffffffffc488,L0xffffffffc48a]) (F**2) [Q,X**2-17** 93] /\
   eqmod (poly X [L0xffffffffc48c,L0xffffffffc48e]) (F**2) [Q,X**2-17**221] /\
   eqmod (poly X [L0xffffffffc490,L0xffffffffc492]) (F**2) [Q,X**2-17** 61] /\
   eqmod (poly X [L0xffffffffc494,L0xffffffffc496]) (F**2) [Q,X**2-17**189] /\
   eqmod (poly X [L0xffffffffc498,L0xffffffffc49a]) (F**2) [Q,X**2-17**125] /\
   eqmod (poly X [L0xffffffffc49c,L0xffffffffc49e]) (F**2) [Q,X**2-17**253] /\
   eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2]) (F**2) [Q,X**2-17**  3] /\
   eqmod (poly X [L0xffffffffc4a4,L0xffffffffc4a6]) (F**2) [Q,X**2-17**131] /\
   eqmod (poly X [L0xffffffffc4a8,L0xffffffffc4aa]) (F**2) [Q,X**2-17** 67] /\
   eqmod (poly X [L0xffffffffc4ac,L0xffffffffc4ae]) (F**2) [Q,X**2-17**195] /\
   eqmod (poly X [L0xffffffffc4b0,L0xffffffffc4b2]) (F**2) [Q,X**2-17** 35] /\
   eqmod (poly X [L0xffffffffc4b4,L0xffffffffc4b6]) (F**2) [Q,X**2-17**163] /\
   eqmod (poly X [L0xffffffffc4b8,L0xffffffffc4ba]) (F**2) [Q,X**2-17** 99] /\
   eqmod (poly X [L0xffffffffc4bc,L0xffffffffc4be]) (F**2) [Q,X**2-17**227] /\
   eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2]) (F**2) [Q,X**2-17** 19] /\
   eqmod (poly X [L0xffffffffc4c4,L0xffffffffc4c6]) (F**2) [Q,X**2-17**147] /\
   eqmod (poly X [L0xffffffffc4c8,L0xffffffffc4ca]) (F**2) [Q,X**2-17** 83] /\
   eqmod (poly X [L0xffffffffc4cc,L0xffffffffc4ce]) (F**2) [Q,X**2-17**211] /\
   eqmod (poly X [L0xffffffffc4d0,L0xffffffffc4d2]) (F**2) [Q,X**2-17** 51] /\
   eqmod (poly X [L0xffffffffc4d4,L0xffffffffc4d6]) (F**2) [Q,X**2-17**179] /\
   eqmod (poly X [L0xffffffffc4d8,L0xffffffffc4da]) (F**2) [Q,X**2-17**115] /\
   eqmod (poly X [L0xffffffffc4dc,L0xffffffffc4de]) (F**2) [Q,X**2-17**243] /\
   eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2]) (F**2) [Q,X**2-17** 11] /\
   eqmod (poly X [L0xffffffffc4e4,L0xffffffffc4e6]) (F**2) [Q,X**2-17**139] /\
   eqmod (poly X [L0xffffffffc4e8,L0xffffffffc4ea]) (F**2) [Q,X**2-17** 75] /\
   eqmod (poly X [L0xffffffffc4ec,L0xffffffffc4ee]) (F**2) [Q,X**2-17**203] /\
   eqmod (poly X [L0xffffffffc4f0,L0xffffffffc4f2]) (F**2) [Q,X**2-17** 43] /\
   eqmod (poly X [L0xffffffffc4f4,L0xffffffffc4f6]) (F**2) [Q,X**2-17**171] /\
   eqmod (poly X [L0xffffffffc4f8,L0xffffffffc4fa]) (F**2) [Q,X**2-17**107] /\
   eqmod (poly X [L0xffffffffc4fc,L0xffffffffc4fe]) (F**2) [Q,X**2-17**235] /\
   eqmod (poly X [L0xffffffffc500,L0xffffffffc502]) (F**2) [Q,X**2-17** 27] /\
   eqmod (poly X [L0xffffffffc504,L0xffffffffc506]) (F**2) [Q,X**2-17**155] /\
   eqmod (poly X [L0xffffffffc508,L0xffffffffc50a]) (F**2) [Q,X**2-17** 91] /\
   eqmod (poly X [L0xffffffffc50c,L0xffffffffc50e]) (F**2) [Q,X**2-17**219] /\
   eqmod (poly X [L0xffffffffc510,L0xffffffffc512]) (F**2) [Q,X**2-17** 59] /\
   eqmod (poly X [L0xffffffffc514,L0xffffffffc516]) (F**2) [Q,X**2-17**187] /\
   eqmod (poly X [L0xffffffffc518,L0xffffffffc51a]) (F**2) [Q,X**2-17**123] /\
   eqmod (poly X [L0xffffffffc51c,L0xffffffffc51e]) (F**2) [Q,X**2-17**251] /\
   eqmod (poly X [L0xffffffffc520,L0xffffffffc522]) (F**2) [Q,X**2-17**  7] /\
   eqmod (poly X [L0xffffffffc524,L0xffffffffc526]) (F**2) [Q,X**2-17**135] /\
   eqmod (poly X [L0xffffffffc528,L0xffffffffc52a]) (F**2) [Q,X**2-17** 71] /\
   eqmod (poly X [L0xffffffffc52c,L0xffffffffc52e]) (F**2) [Q,X**2-17**199] /\
   eqmod (poly X [L0xffffffffc530,L0xffffffffc532]) (F**2) [Q,X**2-17** 39] /\
   eqmod (poly X [L0xffffffffc534,L0xffffffffc536]) (F**2) [Q,X**2-17**167] /\
   eqmod (poly X [L0xffffffffc538,L0xffffffffc53a]) (F**2) [Q,X**2-17**103] /\
   eqmod (poly X [L0xffffffffc53c,L0xffffffffc53e]) (F**2) [Q,X**2-17**231] /\
   eqmod (poly X [L0xffffffffc540,L0xffffffffc542]) (F**2) [Q,X**2-17** 23] /\
   eqmod (poly X [L0xffffffffc544,L0xffffffffc546]) (F**2) [Q,X**2-17**151] /\
   eqmod (poly X [L0xffffffffc548,L0xffffffffc54a]) (F**2) [Q,X**2-17** 87] /\
   eqmod (poly X [L0xffffffffc54c,L0xffffffffc54e]) (F**2) [Q,X**2-17**215] /\
   eqmod (poly X [L0xffffffffc550,L0xffffffffc552]) (F**2) [Q,X**2-17** 55] /\
   eqmod (poly X [L0xffffffffc554,L0xffffffffc556]) (F**2) [Q,X**2-17**183] /\
   eqmod (poly X [L0xffffffffc558,L0xffffffffc55a]) (F**2) [Q,X**2-17**119] /\
   eqmod (poly X [L0xffffffffc55c,L0xffffffffc55e]) (F**2) [Q,X**2-17**247] /\
   eqmod (poly X [L0xffffffffc560,L0xffffffffc562]) (F**2) [Q,X**2-17** 15] /\
   eqmod (poly X [L0xffffffffc564,L0xffffffffc566]) (F**2) [Q,X**2-17**143] /\
   eqmod (poly X [L0xffffffffc568,L0xffffffffc56a]) (F**2) [Q,X**2-17** 79] /\
   eqmod (poly X [L0xffffffffc56c,L0xffffffffc56e]) (F**2) [Q,X**2-17**207] /\
   eqmod (poly X [L0xffffffffc570,L0xffffffffc572]) (F**2) [Q,X**2-17** 47] /\
   eqmod (poly X [L0xffffffffc574,L0xffffffffc576]) (F**2) [Q,X**2-17**175] /\
   eqmod (poly X [L0xffffffffc578,L0xffffffffc57a]) (F**2) [Q,X**2-17**111] /\
   eqmod (poly X [L0xffffffffc57c,L0xffffffffc57e]) (F**2) [Q,X**2-17**239] /\
   eqmod (poly X [L0xffffffffc580,L0xffffffffc582]) (F**2) [Q,X**2-17** 31] /\
   eqmod (poly X [L0xffffffffc584,L0xffffffffc586]) (F**2) [Q,X**2-17**159] /\
   eqmod (poly X [L0xffffffffc588,L0xffffffffc58a]) (F**2) [Q,X**2-17** 95] /\
   eqmod (poly X [L0xffffffffc58c,L0xffffffffc58e]) (F**2) [Q,X**2-17**223] /\
   eqmod (poly X [L0xffffffffc590,L0xffffffffc592]) (F**2) [Q,X**2-17** 63] /\
   eqmod (poly X [L0xffffffffc594,L0xffffffffc596]) (F**2) [Q,X**2-17**191] /\
   eqmod (poly X [L0xffffffffc598,L0xffffffffc59a]) (F**2) [Q,X**2-17**127] /\
   eqmod (poly X [L0xffffffffc59c,L0xffffffffc59e]) (F**2) [Q,X**2-17**255] /\
   F00**2=A00*X**  0+A01*X**  1+A02*X**  2+A03*X**  3+
          A04*X**  4+A05*X**  5+A06*X**  6+A07*X**  7 /\
   F08**2=A08*X**  8+A09*X**  9+A0a*X** 10+A0b*X** 11+
          A0c*X** 12+A0d*X** 13+A0e*X** 14+A0f*X** 15 /\
   F10**2=A10*X** 16+A11*X** 17+A12*X** 18+A13*X** 19+
          A14*X** 20+A15*X** 21+A16*X** 22+A17*X** 23 /\
   F18**2=A18*X** 24+A19*X** 25+A1a*X** 26+A1b*X** 27+
          A1c*X** 28+A1d*X** 29+A1e*X** 30+A1f*X** 31 /\
   F20**2=A20*X** 32+A21*X** 33+A22*X** 34+A23*X** 35+
          A24*X** 36+A25*X** 37+A26*X** 38+A27*X** 39 /\
   F28**2=A28*X** 40+A29*X** 41+A2a*X** 42+A2b*X** 43+
          A2c*X** 44+A2d*X** 45+A2e*X** 46+A2f*X** 47 /\
   F30**2=A30*X** 48+A31*X** 49+A32*X** 50+A33*X** 51+
          A34*X** 52+A35*X** 53+A36*X** 54+A37*X** 55 /\
   F38**2=A38*X** 56+A39*X** 57+A3a*X** 58+A3b*X** 59+
          A3c*X** 60+A3d*X** 61+A3e*X** 62+A3f*X** 63 /\
   F40**2=A40*X** 64+A41*X** 65+A42*X** 66+A43*X** 67+
          A44*X** 68+A45*X** 69+A46*X** 70+A47*X** 71 /\
   F48**2=A48*X** 72+A49*X** 73+A4a*X** 74+A4b*X** 75+
          A4c*X** 76+A4d*X** 77+A4e*X** 78+A4f*X** 79 /\
   F50**2=A50*X** 80+A51*X** 81+A52*X** 82+A53*X** 83+
          A54*X** 84+A55*X** 85+A56*X** 86+A57*X** 87 /\
   F58**2=A58*X** 88+A59*X** 89+A5a*X** 90+A5b*X** 91+
          A5c*X** 92+A5d*X** 93+A5e*X** 94+A5f*X** 95 /\
   F60**2=A60*X** 96+A61*X** 97+A62*X** 98+A63*X** 99+
          A64*X**100+A65*X**101+A66*X**102+A67*X**103 /\
   F68**2=A68*X**104+A69*X**105+A6a*X**106+A6b*X**107+
          A6c*X**108+A6d*X**109+A6e*X**110+A6f*X**111 /\
   F70**2=A70*X**112+A71*X**113+A72*X**114+A73*X**115+
          A74*X**116+A75*X**117+A76*X**118+A77*X**119 /\
   F78**2=A78*X**120+A79*X**121+A7a*X**122+A7b*X**123+
          A7c*X**124+A7d*X**125+A7e*X**126+A7f*X**127 /\
   F80**2=A80*X**128+A81*X**129+A82*X**130+A83*X**131+
          A84*X**132+A85*X**133+A86*X**134+A87*X**135 /\
   F88**2=A88*X**136+A89*X**137+A8a*X**138+A8b*X**139+
          A8c*X**140+A8d*X**141+A8e*X**142+A8f*X**143 /\
   F90**2=A90*X**144+A91*X**145+A92*X**146+A93*X**147+
          A94*X**148+A95*X**149+A96*X**150+A97*X**151 /\
   F98**2=A98*X**152+A99*X**153+A9a*X**154+A9b*X**155+
          A9c*X**156+A9d*X**157+A9e*X**158+A9f*X**159 /\
   Fa0**2=Aa0*X**160+Aa1*X**161+Aa2*X**162+Aa3*X**163+
          Aa4*X**164+Aa5*X**165+Aa6*X**166+Aa7*X**167 /\
   Fa8**2=Aa8*X**168+Aa9*X**169+Aaa*X**170+Aab*X**171+
          Aac*X**172+Aad*X**173+Aae*X**174+Aaf*X**175 /\
   Fb0**2=Ab0*X**176+Ab1*X**177+Ab2*X**178+Ab3*X**179+
          Ab4*X**180+Ab5*X**181+Ab6*X**182+Ab7*X**183 /\
   Fb8**2=Ab8*X**184+Ab9*X**185+Aba*X**186+Abb*X**187+
          Abc*X**188+Abd*X**189+Abe*X**190+Abf*X**191 /\
   Fc0**2=Ac0*X**192+Ac1*X**193+Ac2*X**194+Ac3*X**195+
          Ac4*X**196+Ac5*X**197+Ac6*X**198+Ac7*X**199 /\
   Fc8**2=Ac8*X**200+Ac9*X**201+Aca*X**202+Acb*X**203+
          Acc*X**204+Acd*X**205+Ace*X**206+Acf*X**207 /\
   Fd0**2=Ad0*X**208+Ad1*X**209+Ad2*X**210+Ad3*X**211+
          Ad4*X**212+Ad5*X**213+Ad6*X**214+Ad7*X**215 /\
   Fd8**2=Ad8*X**216+Ad9*X**217+Ada*X**218+Adb*X**219+
          Adc*X**220+Add*X**221+Ade*X**222+Adf*X**223 /\
   Fe0**2=Ae0*X**224+Ae1*X**225+Ae2*X**226+Ae3*X**227+
          Ae4*X**228+Ae5*X**229+Ae6*X**230+Ae7*X**231 /\
   Fe8**2=Ae8*X**232+Ae9*X**233+Aea*X**234+Aeb*X**235+
          Aec*X**236+Aed*X**237+Aee*X**238+Aef*X**239 /\
   Ff0**2=Af0*X**240+Af1*X**241+Af2*X**242+Af3*X**243+
          Af4*X**244+Af5*X**245+Af6*X**246+Af7*X**247 /\
   Ff8**2=Af8*X**248+Af9*X**249+Afa*X**250+Afb*X**251+
          Afc*X**252+Afd*X**253+Afe*X**254+Aff*X**255 /\
   F**2=F00**2+F08**2+F10**2+F18**2+F20**2+F28**2+F30**2+F38**2+
        F40**2+F48**2+F50**2+F58**2+F60**2+F68**2+F70**2+F78**2+
        F80**2+F88**2+F90**2+F98**2+Fa0**2+Fa8**2+Fb0**2+Fb8**2+
        Fc0**2+Fc8**2+Fd0**2+Fd8**2+Fe0**2+Fe8**2+Ff0**2+Ff8**2
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
/\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
/\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
/\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
/\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
/\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
/\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
/\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
/\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
/\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
/\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
/\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
/\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<[Q,Q,Q,Q]
&& Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
/\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
/\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
/\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
/\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
/\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
/\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
/\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
/\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
/\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
/\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
/\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
/\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<s[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<s[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<s[Q,Q,Q,Q]
}

nondet  sp@uint64;nondet  x0@uint64;nondet  x1@uint64;
nondet x19@uint64;nondet x20@uint64;nondet x21@uint64;nondet x22@uint64;
nondet x23@uint64;nondet x24@uint64;nondet x25@uint64;nondet x26@uint64;
nondet x27@uint64;nondet x28@uint64;
nondet  %v0@int16[8];nondet  %v8@int16[8];nondet  %v9@int16[8];
nondet %v10@int16[8];nondet %v11@int16[8];nondet %v12@int16[8];
nondet %v13@int16[8];nondet %v14@int16[8];nondet %v15@int16[8];


(**************** constants ****************)

mov L0x414860 0x0d01@int16;mov L0x414868 0x4ebf@int16;
mov L0x414cc0 (     0)@int16; mov L0x414cc2 (     0)@int16;
mov L0x414cc4 ( 15749)@int16; mov L0x414cc6 (  1600)@int16;
mov L0x414cc8 (   394)@int16; mov L0x414cca (    40)@int16;
mov L0x414ccc (  7373)@int16; mov L0x414cce (   749)@int16;
mov L0x414cd0 ( -8347)@int16; mov L0x414cd2 (  -848)@int16;
mov L0x414cd4 ( 14095)@int16; mov L0x414cd6 (  1432)@int16;
mov L0x414cd8 ( -6201)@int16; mov L0x414cda (  -630)@int16;
mov L0x414cdc (  6762)@int16; mov L0x414cde (   687)@int16;
mov L0x414ce0 ( 15582)@int16; mov L0x414ce2 (  1583)@int16;
mov L0x414ce4 ( -5601)@int16; mov L0x414ce6 (  -569)@int16;
mov L0x414ce8 (   679)@int16; mov L0x414cea (    69)@int16;
mov L0x414cec (  5345)@int16; mov L0x414cee (   543)@int16;
mov L0x414cf0 ( -7845)@int16; mov L0x414cf2 (  -797)@int16;
mov L0x414cf4 ( -1900)@int16; mov L0x414cf6 (  -193)@int16;
mov L0x414cf8 ( 13879)@int16; mov L0x414cfa (  1410)@int16;
mov L0x414cfc (-10453)@int16; mov L0x414cfe ( -1062)@int16;
mov L0x414d00 (     0)@int16; mov L0x414d02 (     0)@int16;
mov L0x414d04 (     0)@int16; mov L0x414d06 (     0)@int16;
mov L0x414d08 (     0)@int16; mov L0x414d0a (     0)@int16;
mov L0x414d0c (     0)@int16; mov L0x414d0e (     0)@int16;
mov L0x414d10 (     0)@int16; mov L0x414d12 (     0)@int16;
mov L0x414d14 (     0)@int16; mov L0x414d16 (     0)@int16;
mov L0x414d18 (     0)@int16; mov L0x414d1a (     0)@int16;
mov L0x414d1c (     0)@int16; mov L0x414d1e (     0)@int16;
mov L0x414d20 ( -8081)@int16; mov L0x414d22 ( -8081)@int16;
mov L0x414d24 (-13121)@int16; mov L0x414d26 (-13121)@int16;
mov L0x414d28 ( 13338)@int16; mov L0x414d2a ( 13338)@int16;
mov L0x414d2c ( 10719)@int16; mov L0x414d2e ( 10719)@int16;
mov L0x414d30 (  -821)@int16; mov L0x414d32 (  -821)@int16;
mov L0x414d34 ( -1333)@int16; mov L0x414d36 ( -1333)@int16;
mov L0x414d38 (  1355)@int16; mov L0x414d3a (  1355)@int16;
mov L0x414d3c (  1089)@int16; mov L0x414d3e (  1089)@int16;
mov L0x414d40 ( -8957)@int16; mov L0x414d42 ( -8957)@int16;
mov L0x414d44 ( 13918)@int16; mov L0x414d46 ( 13918)@int16;
mov L0x414d48 (  2156)@int16; mov L0x414d4a (  2156)@int16;
mov L0x414d4c (  -325)@int16; mov L0x414d4e (  -325)@int16;
mov L0x414d50 (  -910)@int16; mov L0x414d52 (  -910)@int16;
mov L0x414d54 (  1414)@int16; mov L0x414d56 (  1414)@int16;
mov L0x414d58 (   219)@int16; mov L0x414d5a (   219)@int16;
mov L0x414d5c (   -33)@int16; mov L0x414d5e (   -33)@int16;
mov L0x414d60 (-12078)@int16; mov L0x414d62 (-12078)@int16;
mov L0x414d64 (-12993)@int16; mov L0x414d66 (-12993)@int16;
mov L0x414d68 (  8416)@int16; mov L0x414d6a (  8416)@int16;
mov L0x414d6c (  4567)@int16; mov L0x414d6e (  4567)@int16;
mov L0x414d70 ( -1227)@int16; mov L0x414d72 ( -1227)@int16;
mov L0x414d74 ( -1320)@int16; mov L0x414d76 ( -1320)@int16;
mov L0x414d78 (   855)@int16; mov L0x414d7a (   855)@int16;
mov L0x414d7c (   464)@int16; mov L0x414d7e (   464)@int16;
mov L0x414d80 ( 11566)@int16; mov L0x414d82 ( 11566)@int16;
mov L0x414d84 ( -6309)@int16; mov L0x414d86 ( -6309)@int16;
mov L0x414d88 (-10129)@int16; mov L0x414d8a (-10129)@int16;
mov L0x414d8c (  9262)@int16; mov L0x414d8e (  9262)@int16;
mov L0x414d90 (  1175)@int16; mov L0x414d92 (  1175)@int16;
mov L0x414d94 (  -641)@int16; mov L0x414d96 (  -641)@int16;
mov L0x414d98 ( -1029)@int16; mov L0x414d9a ( -1029)@int16;
mov L0x414d9c (   941)@int16; mov L0x414d9e (   941)@int16;
mov L0x414da0 ( -8711)@int16; mov L0x414da2 ( -8711)@int16;
mov L0x414da4 ( -2638)@int16; mov L0x414da6 ( -2638)@int16;
mov L0x414da8 ( 14322)@int16; mov L0x414daa ( 14322)@int16;
mov L0x414dac (  8780)@int16; mov L0x414dae (  8780)@int16;
mov L0x414db0 (  -885)@int16; mov L0x414db2 (  -885)@int16;
mov L0x414db4 (  -268)@int16; mov L0x414db6 (  -268)@int16;
mov L0x414db8 (  1455)@int16; mov L0x414dba (  1455)@int16;
mov L0x414dbc (   892)@int16; mov L0x414dbe (   892)@int16;
mov L0x414dc0 (  3878)@int16; mov L0x414dc2 (  3878)@int16;
mov L0x414dc4 (  9764)@int16; mov L0x414dc6 (  9764)@int16;
mov L0x414dc8 (-11930)@int16; mov L0x414dca (-11930)@int16;
mov L0x414dcc ( 10050)@int16; mov L0x414dce ( 10050)@int16;
mov L0x414dd0 (   394)@int16; mov L0x414dd2 (   394)@int16;
mov L0x414dd4 (   992)@int16; mov L0x414dd6 (   992)@int16;
mov L0x414dd8 ( -1212)@int16; mov L0x414dda ( -1212)@int16;
mov L0x414ddc (  1021)@int16; mov L0x414dde (  1021)@int16;
mov L0x414de0 ( 11999)@int16; mov L0x414de2 ( 11999)@int16;
mov L0x414de4 ( -7215)@int16; mov L0x414de6 ( -7215)@int16;
mov L0x414de8 ( 15818)@int16; mov L0x414dea ( 15818)@int16;
mov L0x414dec ( -9243)@int16; mov L0x414dee ( -9243)@int16;
mov L0x414df0 (  1219)@int16; mov L0x414df2 (  1219)@int16;
mov L0x414df4 (  -733)@int16; mov L0x414df6 (  -733)@int16;
mov L0x414df8 (  1607)@int16; mov L0x414dfa (  1607)@int16;
mov L0x414dfc (  -939)@int16; mov L0x414dfe (  -939)@int16;
mov L0x414e00 (     0)@int16; mov L0x414e02 (     0)@int16;
mov L0x414e04 (     0)@int16; mov L0x414e06 (     0)@int16;
mov L0x414e08 (     0)@int16; mov L0x414e0a (     0)@int16;
mov L0x414e0c (     0)@int16; mov L0x414e0e (     0)@int16;
mov L0x414e10 (     0)@int16; mov L0x414e12 (     0)@int16;
mov L0x414e14 (     0)@int16; mov L0x414e16 (     0)@int16;
mov L0x414e18 (     0)@int16; mov L0x414e1a (     0)@int16;
mov L0x414e1c (     0)@int16; mov L0x414e1e (     0)@int16;
mov L0x414e20 (  4429)@int16; mov L0x414e22 (  4429)@int16;
mov L0x414e24 (  -551)@int16; mov L0x414e26 (  -551)@int16;
mov L0x414e28 (  9213)@int16; mov L0x414e2a (  9213)@int16;
mov L0x414e2c (  2786)@int16; mov L0x414e2e (  2786)@int16;
mov L0x414e30 (   450)@int16; mov L0x414e32 (   450)@int16;
mov L0x414e34 (   -56)@int16; mov L0x414e36 (   -56)@int16;
mov L0x414e38 (   936)@int16; mov L0x414e3a (   936)@int16;
mov L0x414e3c (   283)@int16; mov L0x414e3e (   283)@int16;
mov L0x414e40 ( -6378)@int16; mov L0x414e42 ( -6378)@int16;
mov L0x414e44 ( -6221)@int16; mov L0x414e46 ( -6221)@int16;
mov L0x414e48 (  7008)@int16; mov L0x414e4a (  7008)@int16;
mov L0x414e4c ( 13308)@int16; mov L0x414e4e ( 13308)@int16;
mov L0x414e50 (  -648)@int16; mov L0x414e52 (  -648)@int16;
mov L0x414e54 (  -632)@int16; mov L0x414e56 (  -632)@int16;
mov L0x414e58 (   712)@int16; mov L0x414e5a (   712)@int16;
mov L0x414e5c (  1352)@int16; mov L0x414e5e (  1352)@int16;
mov L0x414e60 (-14578)@int16; mov L0x414e62 (-14578)@int16;
mov L0x414e64 (  8032)@int16; mov L0x414e66 (  8032)@int16;
mov L0x414e68 (  6713)@int16; mov L0x414e6a (  6713)@int16;
mov L0x414e6c ( -6398)@int16; mov L0x414e6e ( -6398)@int16;
mov L0x414e70 ( -1481)@int16; mov L0x414e72 ( -1481)@int16;
mov L0x414e74 (   816)@int16; mov L0x414e76 (   816)@int16;
mov L0x414e78 (   682)@int16; mov L0x414e7a (   682)@int16;
mov L0x414e7c (  -650)@int16; mov L0x414e7e (  -650)@int16;
mov L0x414e80 ( -8721)@int16; mov L0x414e82 ( -8721)@int16;
mov L0x414e84 (  6319)@int16; mov L0x414e86 (  6319)@int16;
mov L0x414e88 (-10099)@int16; mov L0x414e8a (-10099)@int16;
mov L0x414e8c ( 15159)@int16; mov L0x414e8e ( 15159)@int16;
mov L0x414e90 (  -886)@int16; mov L0x414e92 (  -886)@int16;
mov L0x414e94 (   642)@int16; mov L0x414e96 (   642)@int16;
mov L0x414e98 ( -1026)@int16; mov L0x414e9a ( -1026)@int16;
mov L0x414e9c (  1540)@int16; mov L0x414e9e (  1540)@int16;
mov L0x414ea0 (  5453)@int16; mov L0x414ea2 (  5453)@int16;
mov L0x414ea4 (-14381)@int16; mov L0x414ea6 (-14381)@int16;
mov L0x414ea8 ( -3967)@int16; mov L0x414eaa ( -3967)@int16;
mov L0x414eac (  5315)@int16; mov L0x414eae (  5315)@int16;
mov L0x414eb0 (   554)@int16; mov L0x414eb2 (   554)@int16;
mov L0x414eb4 ( -1461)@int16; mov L0x414eb6 ( -1461)@int16;
mov L0x414eb8 (  -403)@int16; mov L0x414eba (  -403)@int16;
mov L0x414ebc (   540)@int16; mov L0x414ebe (   540)@int16;
mov L0x414ec0 ( 11605)@int16; mov L0x414ec2 ( 11605)@int16;
mov L0x414ec4 ( -9371)@int16; mov L0x414ec6 ( -9371)@int16;
mov L0x414ec8 (-10749)@int16; mov L0x414eca (-10749)@int16;
mov L0x414ecc (-16251)@int16; mov L0x414ece (-16251)@int16;
mov L0x414ed0 (  1179)@int16; mov L0x414ed2 (  1179)@int16;
mov L0x414ed4 (  -952)@int16; mov L0x414ed6 (  -952)@int16;
mov L0x414ed8 ( -1092)@int16; mov L0x414eda ( -1092)@int16;
mov L0x414edc ( -1651)@int16; mov L0x414ede ( -1651)@int16;
mov L0x414ee0 (-11251)@int16; mov L0x414ee2 (-11251)@int16;
mov L0x414ee4 ( 14588)@int16; mov L0x414ee6 ( 14588)@int16;
mov L0x414ee8 (  5168)@int16; mov L0x414eea (  5168)@int16;
mov L0x414eec ( 16005)@int16; mov L0x414eee ( 16005)@int16;
mov L0x414ef0 ( -1143)@int16; mov L0x414ef2 ( -1143)@int16;
mov L0x414ef4 (  1482)@int16; mov L0x414ef6 (  1482)@int16;
mov L0x414ef8 (   525)@int16; mov L0x414efa (   525)@int16;
mov L0x414efc (  1626)@int16; mov L0x414efe (  1626)@int16;
mov L0x414f00 (     0)@int16; mov L0x414f02 (     0)@int16;
mov L0x414f04 (     0)@int16; mov L0x414f06 (     0)@int16;
mov L0x414f08 (     0)@int16; mov L0x414f0a (     0)@int16;
mov L0x414f0c (     0)@int16; mov L0x414f0e (     0)@int16;
mov L0x414f10 (     0)@int16; mov L0x414f12 (     0)@int16;
mov L0x414f14 (     0)@int16; mov L0x414f16 (     0)@int16;
mov L0x414f18 (     0)@int16; mov L0x414f1a (     0)@int16;
mov L0x414f1c (     0)@int16; mov L0x414f1e (     0)@int16;
mov L0x414f20 (  4400)@int16; mov L0x414f22 (  4400)@int16;
mov L0x414f24 (-14529)@int16; mov L0x414f26 (-14529)@int16;
mov L0x414f28 ( -5266)@int16; mov L0x414f2a ( -5266)@int16;
mov L0x414f2c (-13180)@int16; mov L0x414f2e (-13180)@int16;
mov L0x414f30 (   447)@int16; mov L0x414f32 (   447)@int16;
mov L0x414f34 ( -1476)@int16; mov L0x414f36 ( -1476)@int16;
mov L0x414f38 (  -535)@int16; mov L0x414f3a (  -535)@int16;
mov L0x414f3c ( -1339)@int16; mov L0x414f3e ( -1339)@int16;
mov L0x414f40 (  9125)@int16; mov L0x414f42 (  9125)@int16;
mov L0x414f44 ( 12540)@int16; mov L0x414f46 ( 12540)@int16;
mov L0x414f48 (  4538)@int16; mov L0x414f4a (  4538)@int16;
mov L0x414f4c ( 10089)@int16; mov L0x414f4e ( 10089)@int16;
mov L0x414f50 (   927)@int16; mov L0x414f52 (   927)@int16;
mov L0x414f54 (  1274)@int16; mov L0x414f56 (  1274)@int16;
mov L0x414f58 (   461)@int16; mov L0x414f5a (   461)@int16;
mov L0x414f5c (  1025)@int16; mov L0x414f5e (  1025)@int16;
mov L0x414f60 (-15099)@int16; mov L0x414f62 (-15099)@int16;
mov L0x414f64 ( 10355)@int16; mov L0x414f66 ( 10355)@int16;
mov L0x414f68 (-14155)@int16; mov L0x414f6a (-14155)@int16;
mov L0x414f6c (-11782)@int16; mov L0x414f6e (-11782)@int16;
mov L0x414f70 ( -1534)@int16; mov L0x414f72 ( -1534)@int16;
mov L0x414f74 (  1052)@int16; mov L0x414f76 (  1052)@int16;
mov L0x414f78 ( -1438)@int16; mov L0x414f7a ( -1438)@int16;
mov L0x414f7c ( -1197)@int16; mov L0x414f7e ( -1197)@int16;
mov L0x414f80 (  7235)@int16; mov L0x414f82 (  7235)@int16;
mov L0x414f84 (  2746)@int16; mov L0x414f86 (  2746)@int16;
mov L0x414f88 ( -7451)@int16; mov L0x414f8a ( -7451)@int16;
mov L0x414f8c ( -2293)@int16; mov L0x414f8e ( -2293)@int16;
mov L0x414f90 (   735)@int16; mov L0x414f92 (   735)@int16;
mov L0x414f94 (   279)@int16; mov L0x414f96 (   279)@int16;
mov L0x414f98 (  -757)@int16; mov L0x414f9a (  -757)@int16;
mov L0x414f9c (  -233)@int16; mov L0x414f9e (  -233)@int16;
mov L0x414fa0 (  8495)@int16; mov L0x414fa2 (  8495)@int16;
mov L0x414fa4 (  3091)@int16; mov L0x414fa6 (  3091)@int16;
mov L0x414fa8 (  5473)@int16; mov L0x414faa (  5473)@int16;
mov L0x414fac (   472)@int16; mov L0x414fae (   472)@int16;
mov L0x414fb0 (   863)@int16; mov L0x414fb2 (   863)@int16;
mov L0x414fb4 (   314)@int16; mov L0x414fb6 (   314)@int16;
mov L0x414fb8 (   556)@int16; mov L0x414fba (   556)@int16;
mov L0x414fbc (    48)@int16; mov L0x414fbe (    48)@int16;
mov L0x414fc0 ( -5522)@int16; mov L0x414fc2 ( -5522)@int16;
mov L0x414fc4 ( 11546)@int16; mov L0x414fc6 ( 11546)@int16;
mov L0x414fc8 ( -3140)@int16; mov L0x414fca ( -3140)@int16;
mov L0x414fcc (  6565)@int16; mov L0x414fce (  6565)@int16;
mov L0x414fd0 (  -561)@int16; mov L0x414fd2 (  -561)@int16;
mov L0x414fd4 (  1173)@int16; mov L0x414fd6 (  1173)@int16;
mov L0x414fd8 (  -319)@int16; mov L0x414fda (  -319)@int16;
mov L0x414fdc (   667)@int16; mov L0x414fde (   667)@int16;
mov L0x414fe0 ( 12107)@int16; mov L0x414fe2 ( 12107)@int16;
mov L0x414fe4 ( -7441)@int16; mov L0x414fe6 ( -7441)@int16;
mov L0x414fe8 (-10463)@int16; mov L0x414fea (-10463)@int16;
mov L0x414fec (-13869)@int16; mov L0x414fee (-13869)@int16;
mov L0x414ff0 (  1230)@int16; mov L0x414ff2 (  1230)@int16;
mov L0x414ff4 (  -756)@int16; mov L0x414ff6 (  -756)@int16;
mov L0x414ff8 ( -1063)@int16; mov L0x414ffa ( -1063)@int16;
mov L0x414ffc ( -1409)@int16; mov L0x414ffe ( -1409)@int16;
mov L0x415000 (     0)@int16; mov L0x415002 (     0)@int16;
mov L0x415004 (     0)@int16; mov L0x415006 (     0)@int16;
mov L0x415008 (     0)@int16; mov L0x41500a (     0)@int16;
mov L0x41500c (     0)@int16; mov L0x41500e (     0)@int16;
mov L0x415010 (     0)@int16; mov L0x415012 (     0)@int16;
mov L0x415014 (     0)@int16; mov L0x415016 (     0)@int16;
mov L0x415018 (     0)@int16; mov L0x41501a (     0)@int16;
mov L0x41501c (     0)@int16; mov L0x41501e (     0)@int16;
mov L0x415020 ( 12156)@int16; mov L0x415022 ( 12156)@int16;
mov L0x415024 (  8682)@int16; mov L0x415026 (  8682)@int16;
mov L0x415028 (-14036)@int16; mov L0x41502a (-14036)@int16;
mov L0x41502c ( -2914)@int16; mov L0x41502e ( -2914)@int16;
mov L0x415030 (  1235)@int16; mov L0x415032 (  1235)@int16;
mov L0x415034 (   882)@int16; mov L0x415036 (   882)@int16;
mov L0x415038 ( -1426)@int16; mov L0x41503a ( -1426)@int16;
mov L0x41503c (  -296)@int16; mov L0x41503e (  -296)@int16;
mov L0x415040 ( -4449)@int16; mov L0x415042 ( -4449)@int16;
mov L0x415044 ( 15483)@int16; mov L0x415046 ( 15483)@int16;
mov L0x415048 (-14125)@int16; mov L0x41504a (-14125)@int16;
mov L0x41504c ( -3258)@int16; mov L0x41504e ( -3258)@int16;
mov L0x415050 (  -452)@int16; mov L0x415052 (  -452)@int16;
mov L0x415054 (  1573)@int16; mov L0x415056 (  1573)@int16;
mov L0x415058 ( -1435)@int16; mov L0x41505a ( -1435)@int16;
mov L0x41505c (  -331)@int16; mov L0x41505e (  -331)@int16;
mov L0x415060 ( -7943)@int16; mov L0x415062 ( -7943)@int16;
mov L0x415064 (   748)@int16; mov L0x415066 (   748)@int16;
mov L0x415068 (  9942)@int16; mov L0x41506a (  9942)@int16;
mov L0x41506c ( -2845)@int16; mov L0x41506e ( -2845)@int16;
mov L0x415070 (  -807)@int16; mov L0x415072 (  -807)@int16;
mov L0x415074 (    76)@int16; mov L0x415076 (    76)@int16;
mov L0x415078 (  1010)@int16; mov L0x41507a (  1010)@int16;
mov L0x41507c (  -289)@int16; mov L0x41507e (  -289)@int16;
mov L0x415080 (-16192)@int16; mov L0x415082 (-16192)@int16;
mov L0x415084 (-10828)@int16; mov L0x415086 (-10828)@int16;
mov L0x415088 (  1073)@int16; mov L0x41508a (  1073)@int16;
mov L0x41508c (  6693)@int16; mov L0x41508e (  6693)@int16;
mov L0x415090 ( -1645)@int16; mov L0x415092 ( -1645)@int16;
mov L0x415094 ( -1100)@int16; mov L0x415096 ( -1100)@int16;
mov L0x415098 (   109)@int16; mov L0x41509a (   109)@int16;
mov L0x41509c (   680)@int16; mov L0x41509e (   680)@int16;
mov L0x4150a0 ( 12196)@int16; mov L0x4150a2 ( 12196)@int16;
mov L0x4150a4 ( 10247)@int16; mov L0x4150a6 ( 10247)@int16;
mov L0x4150a8 ( 12717)@int16; mov L0x4150aa ( 12717)@int16;
mov L0x4150ac ( -5739)@int16; mov L0x4150ae ( -5739)@int16;
mov L0x4150b0 (  1239)@int16; mov L0x4150b2 (  1239)@int16;
mov L0x4150b4 (  1041)@int16; mov L0x4150b6 (  1041)@int16;
mov L0x4150b8 (  1292)@int16; mov L0x4150ba (  1292)@int16;
mov L0x4150bc (  -583)@int16; mov L0x4150be (  -583)@int16;
mov L0x4150c0 (  7678)@int16; mov L0x4150c2 (  7678)@int16;
mov L0x4150c4 ( -7117)@int16; mov L0x4150c6 ( -7117)@int16;
mov L0x4150c8 ( 10148)@int16; mov L0x4150ca ( 10148)@int16;
mov L0x4150cc (  5591)@int16; mov L0x4150ce (  5591)@int16;
mov L0x4150d0 (   780)@int16; mov L0x4150d2 (   780)@int16;
mov L0x4150d4 (  -723)@int16; mov L0x4150d6 (  -723)@int16;
mov L0x4150d8 (  1031)@int16; mov L0x4150da (  1031)@int16;
mov L0x4150dc (   568)@int16; mov L0x4150de (   568)@int16;
mov L0x4150e0 ( -3691)@int16; mov L0x4150e2 ( -3691)@int16;
mov L0x4150e4 (-16113)@int16; mov L0x4150e6 (-16113)@int16;
mov L0x4150e8 (-15592)@int16; mov L0x4150ea (-15592)@int16;
mov L0x4150ec (  -167)@int16; mov L0x4150ee (  -167)@int16;
mov L0x4150f0 (  -375)@int16; mov L0x4150f2 (  -375)@int16;
mov L0x4150f4 ( -1637)@int16; mov L0x4150f6 ( -1637)@int16;
mov L0x4150f8 ( -1584)@int16; mov L0x4150fa ( -1584)@int16;
mov L0x4150fc (   -17)@int16; mov L0x4150fe (   -17)@int16;

(* #! -> SP = 0xffffffffa7f0 *)
#! 0xffffffffa7f0 = 0xffffffffa7f0;
(* sub	sp, sp, #0x90                               #! PC = 0x411e38 *)
subc dc sp sp 0x90@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffa760; PC = 0x411e3c *)
mov L0xffffffffa760 x19; mov L0xffffffffa768 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffa770; PC = 0x411e40 *)
mov L0xffffffffa770 x21; mov L0xffffffffa778 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffa780; PC = 0x411e44 *)
mov L0xffffffffa780 x23; mov L0xffffffffa788 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffa790; PC = 0x411e48 *)
mov L0xffffffffa790 x25; mov L0xffffffffa798 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffa7a0; PC = 0x411e4c *)
mov L0xffffffffa7a0 x27; mov L0xffffffffa7a8 x28;
(* stp	d8, d9, [sp, #80]                           #! EA = L0xffffffffa7b0; PC = 0x411e50 *)
mov [L0xffffffffa7b0,L0xffffffffa7b2,L0xffffffffa7b4,L0xffffffffa7b6] %v8[0:4];
mov [L0xffffffffa7b8,L0xffffffffa7ba,L0xffffffffa7bc,L0xffffffffa7be] %v9[0:4];
(* stp	d10, d11, [sp, #96]                         #! EA = L0xffffffffa7c0; PC = 0x411e54 *)
mov [L0xffffffffa7c0,L0xffffffffa7c2,L0xffffffffa7c4,L0xffffffffa7c6] %v10[0:4];
mov [L0xffffffffa7c8,L0xffffffffa7ca,L0xffffffffa7cc,L0xffffffffa7ce] %v11[0:4];
(* stp	d12, d13, [sp, #112]                        #! EA = L0xffffffffa7d0; PC = 0x411e58 *)
mov [L0xffffffffa7d0,L0xffffffffa7d2,L0xffffffffa7d4,L0xffffffffa7d6] %v12[0:4];
mov [L0xffffffffa7d8,L0xffffffffa7da,L0xffffffffa7dc,L0xffffffffa7de] %v13[0:4];
(* stp	d14, d15, [sp, #128]                        #! EA = L0xffffffffa7e0; PC = 0x411e5c *)
mov [L0xffffffffa7e0,L0xffffffffa7e2,L0xffffffffa7e4,L0xffffffffa7e6] %v14[0:4];
mov [L0xffffffffa7e8,L0xffffffffa7ea,L0xffffffffa7ec,L0xffffffffa7ee] %v15[0:4];
(* ldrsh	w20, [x2]                                 #! EA = L0x414860; Value = 0x7ff6fdf60cff0d01; PC = 0x411e60 *)
mov w20 L0x414860;
(* ldrsh	w21, [x2, #8]                             #! EA = L0x414868; Value = 0x0a3a020013b04ebf; PC = 0x411e64 *)
mov w21 L0x414868;
(* add	x28, x1, #0x40                              #! PC = 0x411e68 *)
adds dc x28 x1 0x40@uint64;
(* add	x0, x0, #0x0                                #! PC = 0x411e6c *)
adds dc x0 x0 0x0@uint64;
(* add	x1, x0, #0x100                              #! PC = 0x411e70 *)
adds dc x1 x0 0x100@uint64;
(* mov	v0.h[0], w20                                #! PC = 0x411e74 *)
mov %v0 [w20]++%v0[1:8];
(* mov	v0.h[1], w21                                #! PC = 0x411e78 *)
mov %v0 %v0[0:1]++[w21]++%v0[2:8];
(* ldr	q28, [x0, #16]                              #! EA = L0xffffffffc3b0; Value = 0x00d501ddfd9202c9; PC = 0x411e7c *)
mov %v28 [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be];
(* ldr	q29, [x1, #16]                              #! EA = L0xffffffffc4b0; Value = 0xfc420061ffaa049a; PC = 0x411e80 *)
mov %v29 [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be];
(* ldr	q30, [x0, #48]                              #! EA = L0xffffffffc3d0; Value = 0xfc8004fd061afe3c; PC = 0x411e84 *)
mov %v30 [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de];
(* ldr	q31, [x1, #48]                              #! EA = L0xffffffffc4d0; Value = 0x034afc08fcb30659; PC = 0x411e88 *)
mov %v31 [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de];
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc3a0; Value = 0x0211f92b0112fc40; PC = 0x411e8c *)
mov %v24 [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae];
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x411e90 *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x411e94 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc4a0; Value = 0xfe35005c01bd00e6; PC = 0x411e98 *)
mov %v25 [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x411e9c *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x411ea0 *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc3c0; Value = 0x025a02640380fadc; PC = 0x411ea4 *)
mov %v26 [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x411ea8 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x411eac *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc4c0; Value = 0x05a30263068fff14; PC = 0x411eb0 *)
mov %v27 [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x411eb4 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x411eb8 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q12, [x28, #192]                            #! EA = L0x414dc0; Value = 0x262426240f260f26; PC = 0x411ebc *)
mov %v12 [L0x414dc0,L0x414dc2,L0x414dc4,L0x414dc6,L0x414dc8,L0x414dca,L0x414dcc,L0x414dce];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411ec0 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411ec4 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q13, [x28, #208]                            #! EA = L0x414dd0; Value = 0x03e003e0018a018a; PC = 0x411ec8 *)
mov %v13 [L0x414dd0,L0x414dd2,L0x414dd4,L0x414dd6,L0x414dd8,L0x414dda,L0x414ddc,L0x414dde];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411ecc *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411ed0 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* ldr	q14, [x28, #224]                            #! EA = L0x414de0; Value = 0xe3d1e3d12edf2edf; PC = 0x411ed4 *)
mov %v14 [L0x414de0,L0x414de2,L0x414de4,L0x414de6,L0x414de8,L0x414dea,L0x414dec,L0x414dee];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411ed8 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411edc *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q15, [x28, #240]                            #! EA = L0x414df0; Value = 0xfd23fd2304c304c3; PC = 0x411ee0 *)
mov %v15 [L0x414df0,L0x414df2,L0x414df4,L0x414df6,L0x414df8,L0x414dfa,L0x414dfc,L0x414dfe];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411ee4 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411ee8 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];

ghost %v24o0@int16[8],%v25o0@int16[8],%v26o0@int16[8],%v27o0@int16[8],
      %v28o0@int16[8],%v29o0@int16[8],%v30o0@int16[8],%v31o0@int16[8]:
      %v24o0 = %v24 /\ %v25o0 = %v25 /\ %v26o0 = %v26 /\ %v27o0 = %v27 /\
      %v28o0 = %v28 /\ %v29o0 = %v29 /\ %v30o0 = %v30 /\ %v31o0 = %v31
   && %v24o0 = %v24 /\ %v25o0 = %v25 /\ %v26o0 = %v26 /\ %v27o0 = %v27 /\
      %v28o0 = %v28 /\ %v29o0 = %v29 /\ %v30o0 = %v30 /\ %v31o0 = %v31;
      
(* sub	v18.8h, v28.8h, v29.8h                      #! PC = 0x411eec *)
sub %v18 %v28 %v29;
(* sub	v19.8h, v30.8h, v31.8h                      #! PC = 0x411ef0 *)
sub %v19 %v30 %v31;
(* add	v28.8h, v28.8h, v29.8h                      #! PC = 0x411ef4 *)
add %v28 %v28 %v29;
(* add	v30.8h, v30.8h, v31.8h                      #! PC = 0x411ef8 *)
add %v30 %v30 %v31;
(* ldr	q8, [x28, #128]                             #! EA = L0x414d80; Value = 0xe75be75b2d2e2d2e; PC = 0x411efc *)
mov %v8 [L0x414d80,L0x414d82,L0x414d84,L0x414d86,L0x414d88,L0x414d8a,L0x414d8c,L0x414d8e];
(* mul	v29.8h, v18.8h, v13.8h                      #! PC = 0x411f00 *)
mull %mdc %v29 %v18 %v13; cast %v29@int16[8] %v29;
(* sub	v16.8h, v24.8h, v25.8h                      #! PC = 0x411f04 *)
sub %v16 %v24 %v25;
(* ldr	q9, [x28, #144]                             #! EA = L0x414d90; Value = 0xfd7ffd7f04970497; PC = 0x411f08 *)
mov %v9 [L0x414d90,L0x414d92,L0x414d94,L0x414d96,L0x414d98,L0x414d9a,L0x414d9c,L0x414d9e];
(* mul	v31.8h, v19.8h, v15.8h                      #! PC = 0x411f0c *)
mull %mdc %v31 %v19 %v15; cast %v31@int16[8] %v31;
(* sub	v17.8h, v26.8h, v27.8h                      #! PC = 0x411f10 *)
sub %v17 %v26 %v27;
(* ldr	q10, [x28, #160]                            #! EA = L0x414da0; Value = 0xf5b2f5b2ddf9ddf9; PC = 0x411f14 *)
mov %v10 [L0x414da0,L0x414da2,L0x414da4,L0x414da6,L0x414da8,L0x414daa,L0x414dac,L0x414dae];
(* sqrdmulh	v18.8h, v18.8h, v12.8h                 #! PC = 0x411f18 *)
smulj %LO %v18 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v25.8h                      #! PC = 0x411f1c *)
add %v24 %v24 %v25;
(* ldr	q11, [x28, #176]                            #! EA = L0x414db0; Value = 0xfef4fef4fc8bfc8b; PC = 0x411f20 *)
mov %v11 [L0x414db0,L0x414db2,L0x414db4,L0x414db6,L0x414db8,L0x414dba,L0x414dbc,L0x414dbe];
(* sqrdmulh	v19.8h, v19.8h, v14.8h                 #! PC = 0x411f24 *)
smulj %LO %v19 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v26.8h, v26.8h, v27.8h                      #! PC = 0x411f28 *)
add %v26 %v26 %v27;
(* mls	v29.8h, v18.8h, v0.h[0]                     #! PC = 0x411f2c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411f30 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v29 ((%v28o0 - %v29o0) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o0 - %v31o0) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v29 ((%v28o0 - %v29o0) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o0 - %v31o0) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
       %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 0 0 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v28 = %v28o0 + %v29o0 /\ %v30 = %v30o0 + %v31o0 /\
    %v16 = %v24o0 - %v25o0 /\ %v17 = %v26o0 - %v27o0 /\
    %v24 = %v24o0 + %v25o0 /\ %v26 = %v26o0 + %v27o0 /\
    eqmod %v29 ((%v28o0 - %v29o0) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ((%v30o0 - %v31o0) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
    %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
    %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v16o0@int16[8],%v17o0@int16[8],
      %v28o1@int16[8],%v29o1@int16[8],%v30o1@int16[8],%v31o1@int16[8]:
      %v16o0 = %v16 /\ %v17o0 = %v17 /\
      %v28o1 = %v28 /\ %v29o1 = %v29 /\ %v30o1 = %v30 /\ %v31o1 = %v31
   && %v16o0 = %v16 /\ %v17o0 = %v17 /\
      %v28o1 = %v28 /\ %v29o1 = %v29 /\ %v30o1 = %v30 /\ %v31o1 = %v31;

(* ldr	q4, [x28, #64]                              #! EA = L0x414d40; Value = 0x365e365edd03dd03; PC = 0x411f34 *)
mov %v4 [L0x414d40,L0x414d42,L0x414d44,L0x414d46,L0x414d48,L0x414d4a,L0x414d4c,L0x414d4e];
(* mul	v25.8h, v16.8h, v9.8h                       #! PC = 0x411f38 *)
mull %mdc %v25 %v16 %v9; cast %v25@int16[8] %v25;
(* sub	v18.8h, v28.8h, v30.8h                      #! PC = 0x411f3c *)
sub %v18 %v28 %v30;
(* ldr	q5, [x28, #80]                              #! EA = L0x414d50; Value = 0x05860586fc72fc72; PC = 0x411f40 *)
mov %v5 [L0x414d50,L0x414d52,L0x414d54,L0x414d56,L0x414d58,L0x414d5a,L0x414d5c,L0x414d5e];
(* mul	v27.8h, v17.8h, v11.8h                      #! PC = 0x411f44 *)
mull %mdc %v27 %v17 %v11; cast %v27@int16[8] %v27;
(* sub	v19.8h, v29.8h, v31.8h                      #! PC = 0x411f48 *)
sub %v19 %v29 %v31;
(* ldr	q6, [x28, #96]                              #! EA = L0x414d60; Value = 0xcd3fcd3fd0d2d0d2; PC = 0x411f4c *)
mov %v6 [L0x414d60,L0x414d62,L0x414d64,L0x414d66,L0x414d68,L0x414d6a,L0x414d6c,L0x414d6e];
(* sqrdmulh	v16.8h, v16.8h, v8.8h                  #! PC = 0x411f50 *)
smulj %LO %v16 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v28.8h, v28.8h, v30.8h                      #! PC = 0x411f54 *)
add %v28 %v28 %v30;
(* ldr	q7, [x28, #112]                             #! EA = L0x414d70; Value = 0xfad8fad8fb35fb35; PC = 0x411f58 *)
mov %v7 [L0x414d70,L0x414d72,L0x414d74,L0x414d76,L0x414d78,L0x414d7a,L0x414d7c,L0x414d7e];
(* sqrdmulh	v17.8h, v17.8h, v10.8h                 #! PC = 0x411f5c *)
smulj %LO %v17 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v29.8h, v29.8h, v31.8h                      #! PC = 0x411f60 *)
add %v29 %v29 %v31;
(* mls	v25.8h, v16.8h, v0.h[0]                     #! PC = 0x411f64 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x411f68 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v25 (%v16o0 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o0 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v25 (%v16o0 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o0 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
       %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
       %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
       %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 1 1 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v28o1 - %v30o1 /\ %v19 = %v29o1 - %v31o1 /\
    %v28 = %v28o1 + %v30o1 /\ %v29 = %v29o1 + %v31o1 /\
    eqmod %v25 (%v16o0 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o0 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
    %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
    %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
    %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
    %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];
       
ghost %v18o0@int16[8],%v19o0@int16[8],
      %v24o1@int16[8],%v25o1@int16[8],%v26o1@int16[8],%v27o1@int16[8]:
      %v18o0 = %v18 /\ %v19o0 = %v19 /\
      %v24o1 = %v24 /\ %v25o1 = %v25 /\ %v26o1 = %v26 /\ %v27o1 = %v27
   && %v18o0 = %v18 /\ %v19o0 = %v19 /\
      %v24o1 = %v24 /\ %v25o1 = %v25 /\ %v26o1 = %v26 /\ %v27o1 = %v27;

(* mul	v30.8h, v18.8h, v7.8h                       #! PC = 0x411f6c *)
mull %mdc %v30 %v18 %v7; cast %v30@int16[8] %v30;
(* sub	v16.8h, v24.8h, v26.8h                      #! PC = 0x411f70 *)
sub %v16 %v24 %v26;
(* ldr	q1, [x28, #16]                              #! EA = L0x414d10; Value = 0x0000000000000000; PC = 0x411f74 *)
mov %v1 [L0x414d10,L0x414d12,L0x414d14,L0x414d16,L0x414d18,L0x414d1a,L0x414d1c,L0x414d1e];
(* mul	v31.8h, v19.8h, v7.8h                       #! PC = 0x411f78 *)
mull %mdc %v31 %v19 %v7; cast %v31@int16[8] %v31;
(* sub	v17.8h, v25.8h, v27.8h                      #! PC = 0x411f7c *)
sub %v17 %v25 %v27;
(* ldr	q2, [x28, #32]                              #! EA = L0x414d20; Value = 0xccbfccbfe06fe06f; PC = 0x411f80 *)
mov %v2 [L0x414d20,L0x414d22,L0x414d24,L0x414d26,L0x414d28,L0x414d2a,L0x414d2c,L0x414d2e];
(* sqrdmulh	v18.8h, v18.8h, v6.8h                  #! PC = 0x411f84 *)
smulj %LO %v18 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v26.8h                      #! PC = 0x411f88 *)
add %v24 %v24 %v26;
(* ldr	q3, [x28, #48]                              #! EA = L0x414d30; Value = 0xfacbfacbfccbfccb; PC = 0x411f8c *)
mov %v3 [L0x414d30,L0x414d32,L0x414d34,L0x414d36,L0x414d38,L0x414d3a,L0x414d3c,L0x414d3e];
(* sqrdmulh	v19.8h, v19.8h, v6.8h                  #! PC = 0x411f90 *)
smulj %LO %v19 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v25.8h, v25.8h, v27.8h                      #! PC = 0x411f94 *)
add %v25 %v25 %v27;
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x411f98 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411f9c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v18o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [0]] && true;
assume eqmod %v30 (%v18o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
       %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
       %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 2 2 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v24o1 - %v26o1 /\ %v17 = %v25o1 - %v27o1 /\
    %v24 = %v24o1 + %v26o1 /\ %v25 = %v25o1 + %v27o1 /\
    eqmod %v30 (%v18o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v19o0 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
    %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
    %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
    %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
    %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [0]];

ghost %v16o1@int16[8],%v17o1@int16[8],
      %v24o2@int16[8],%v25o2@int16[8],%v28o2@int16[8],%v29o2@int16[8]:
      %v16o1 = %v16 /\ %v17o1 = %v17 /\
      %v24o2 = %v24 /\ %v25o2 = %v25 /\ %v28o2 = %v28 /\ %v29o2 = %v29
   && %v16o1 = %v16 /\ %v17o1 = %v17 /\
      %v24o2 = %v24 /\ %v25o2 = %v25 /\ %v28o2 = %v28 /\ %v29o2 = %v29;

(* mul	v26.8h, v16.8h, v5.8h                       #! PC = 0x411fa0 *)
mull %mdc %v26 %v16 %v5; cast %v26@int16[8] %v26;
(* sub	v18.8h, v24.8h, v28.8h                      #! PC = 0x411fa4 *)
sub %v18 %v24 %v28;
(* mul	v27.8h, v17.8h, v5.8h                       #! PC = 0x411fa8 *)
mull %mdc %v27 %v17 %v5; cast %v27@int16[8] %v27;
(* sub	v19.8h, v25.8h, v29.8h                      #! PC = 0x411fac *)
sub %v19 %v25 %v29;
(* sqrdmulh	v16.8h, v16.8h, v4.8h                  #! PC = 0x411fb0 *)
smulj %LO %v16 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v24.8h, v24.8h, v28.8h                      #! PC = 0x411fb4 *)
add %v24 %v24 %v28;
(* sqrdmulh	v17.8h, v17.8h, v4.8h                  #! PC = 0x411fb8 *)
smulj %LO %v17 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v25.8h, v25.8h, v29.8h                      #! PC = 0x411fbc *)
add %v25 %v25 %v29;
(* mls	v26.8h, v16.8h, v0.h[0]                     #! PC = 0x411fc0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x411fc4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v26 (%v16o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [1]] && true;
assume eqmod %v26 (%v16o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
       %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
       %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 3 3 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v24o2 - %v28o2 /\ %v19 = %v25o2 - %v29o2 /\
    %v24 = %v24o2 + %v28o2 /\ %v25 = %v25o2 + %v29o2 /\
    eqmod %v26 (%v16o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
    %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
    %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
    %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
    %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
    %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v19 /\
    %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [1]];

ghost %v18o1@int16[8],%v19o1@int16[8],
      %v26o2@int16[8],%v27o2@int16[8],%v30o2@int16[8],%v31o2@int16[8]:
      %v18o1 = %v18 /\ %v19o1 = %v19 /\
      %v26o2 = %v26 /\ %v27o2 = %v27 /\ %v30o2 = %v30 /\ %v31o2 = %v31
   && %v18o1 = %v18 /\ %v19o1 = %v19 /\
      %v26o2 = %v26 /\ %v27o2 = %v27 /\ %v30o2 = %v30 /\ %v31o2 = %v31;

(* mul	v28.8h, v18.8h, v3.8h                       #! PC = 0x411fc8 *)
mull %mdc %v28 %v18 %v3; cast %v28@int16[8] %v28;
(* sub	v16.8h, v26.8h, v30.8h                      #! PC = 0x411fcc *)
sub %v16 %v26 %v30;
(* mul	v29.8h, v19.8h, v3.8h                       #! PC = 0x411fd0 *)
mull %mdc %v29 %v19 %v3; cast %v29@int16[8] %v29;
(* sub	v17.8h, v27.8h, v31.8h                      #! PC = 0x411fd4 *)
sub %v17 %v27 %v31;
(* sqrdmulh	v18.8h, v18.8h, v2.8h                  #! PC = 0x411fd8 *)
smulj %LO %v18 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v26.8h, v26.8h, v30.8h                      #! PC = 0x411fdc *)
add %v26 %v26 %v30;
(* sqrdmulh	v19.8h, v19.8h, v2.8h                  #! PC = 0x411fe0 *)
smulj %LO %v19 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v27.8h, v27.8h, v31.8h                      #! PC = 0x411fe4 *)
add %v27 %v27 %v31;
(* mls	v28.8h, v18.8h, v0.h[0]                     #! PC = 0x411fe8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v19.8h, v0.h[0]                     #! PC = 0x411fec *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;

assert eqmod %v28 (%v18o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [2]] && true;
assume eqmod %v28 (%v18o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 4 4 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v26o2 - %v30o2 /\ %v17 = %v27o2 - %v31o2 /\
    %v26 = %v26o2 + %v30o2 /\ %v27 = %v27o2 + %v31o2 /\
    eqmod %v28 (%v18o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 (%v19o1 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [2]];

ghost %v16o2@int16[8],%v17o2@int16[8]:
      %v16o2 = %v16 /\ %v17o2 = %v17
   && %v16o2 = %v16 /\ %v17o2 = %v17;
   
(* mul	v30.8h, v16.8h, v3.8h                       #! PC = 0x411ff0 *)
mull %mdc %v30 %v16 %v3; cast %v30@int16[8] %v30;
(* mul	v31.8h, v17.8h, v3.8h                       #! PC = 0x411ff4 *)
mull %mdc %v31 %v17 %v3; cast %v31@int16[8] %v31;
(* sqrdmulh	v16.8h, v16.8h, v2.8h                  #! PC = 0x411ff8 *)
smulj %LO %v16 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* sqrdmulh	v17.8h, v17.8h, v2.8h                  #! PC = 0x411ffc *)
smulj %LO %v17 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* mls	v30.8h, v16.8h, v0.h[0]                     #! PC = 0x412000 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v17.8h, v0.h[0]                     #! PC = 0x412004 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v16o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v30 (%v16o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 5 5 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v30 (%v16o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v17o2 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o3@int16[8],%v25o3@int16[8],%v26o3@int16[8],%v27o3@int16[8],
      %v28o3@int16[8],%v29o3@int16[8],%v30o3@int16[8],%v31o3@int16[8]:
      %v24o3 = %v24 /\ %v25o3 = %v25 /\ %v26o3 = %v26 /\ %v27o3 = %v27 /\
      %v28o3 = %v28 /\ %v29o3 = %v29 /\ %v30o3 = %v30 /\ %v31o3 = %v31
   && %v24o3 = %v24 /\ %v25o3 = %v25 /\ %v26o3 = %v26 /\ %v27o3 = %v27 /\
      %v28o3 = %v28 /\ %v29o3 = %v29 /\ %v30o3 = %v30 /\ %v31o3 = %v31;

(* sqdmulh	v16.8h, v24.8h, v0.h[1]                 #! PC = 0x412008 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* sqdmulh	v17.8h, v25.8h, v0.h[1]                 #! PC = 0x41200c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* sqdmulh	v18.8h, v26.8h, v0.h[1]                 #! PC = 0x412010 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* sqdmulh	v19.8h, v27.8h, v0.h[1]                 #! PC = 0x412014 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x412018 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* sqdmulh	v20.8h, v28.8h, v0.h[1]                 #! PC = 0x41201c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x412020 *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* sqdmulh	v21.8h, v29.8h, v0.h[1]                 #! PC = 0x412024 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x412028 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* sqdmulh	v22.8h, v30.8h, v0.h[1]                 #! PC = 0x41202c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x412030 *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* sqdmulh	v23.8h, v31.8h, v0.h[1]                 #! PC = 0x412034 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* mls	v24.8h, v16.8h, v0.h[0]                     #! PC = 0x412038 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x41203c *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* mls	v25.8h, v17.8h, v0.h[0]                     #! PC = 0x412040 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x412044 *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* mls	v26.8h, v18.8h, v0.h[0]                     #! PC = 0x412048 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x41204c *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* mls	v27.8h, v19.8h, v0.h[0]                     #! PC = 0x412050 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x412054 *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v28.8h, v20.8h, v0.h[0]                     #! PC = 0x412058 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v21.8h, v0.h[0]                     #! PC = 0x41205c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v22.8h, v0.h[0]                     #! PC = 0x412060 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v23.8h, v0.h[0]                     #! PC = 0x412064 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
       prove with [algebra solver isl, cuts [3,4]] && true;
assume eqmod %v24 %v24o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
    && [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v24 /\
       %v24<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v25 /\
       %v25<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v26 /\
       %v26<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v27 /\
       %v27<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v28 /\
       %v28<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v29 /\
       %v29<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v30 /\
       %v30<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v31 /\
       %v31<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2];

(* add	x28, x28, #0x100                            #! PC = 0x412068 *)
adds dc x28 x28 0x100@uint64;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x41206c *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x412070 *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x412074 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x412078 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x41207c *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x412080 *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x412084 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x412088 *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc3b0; PC = 0x41208c *)
mov [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be] %v28;
(* trn1	v16.4s, v24.4s, v25.4s                     #! PC = 0x412090 *)
mov %v16@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v17.4s, v24.4s, v25.4s                     #! PC = 0x412094 *)
mov %v17@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc4b0; PC = 0x412098 *)
mov [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] %v29;
(* trn1	v18.4s, v26.4s, v27.4s                     #! PC = 0x41209c *)
mov %v18@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v19.4s, v26.4s, v27.4s                     #! PC = 0x4120a0 *)
mov %v19@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc3d0; PC = 0x4120a4 *)
mov [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de] %v30;
(* trn1	v24.2d, v16.2d, v18.2d                     #! PC = 0x4120a8 *)
mov %v24@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v26.2d, v16.2d, v18.2d                     #! PC = 0x4120ac *)
mov %v26@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc4d0; PC = 0x4120b0 *)
mov [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] %v31;
(* trn1	v25.2d, v17.2d, v19.2d                     #! PC = 0x4120b4 *)
mov %v25@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v27.2d, v17.2d, v19.2d                     #! PC = 0x4120b8 *)
mov %v27@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* mov	x19, #0x3                   	// #3          #! PC = 0x4120bc *)
mov x19 0x3@uint64;
(* str	q24, [x0]                                   #! EA = L0xffffffffc3a0; PC = 0x4120c0 *)
mov [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae] %v24;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc3f0; Value = 0x04a2fbbbfa94f98e; PC = 0x4120c4 *)
mov %v28 [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe];
(* str	q25, [x1]                                   #! EA = L0xffffffffc4a0; PC = 0x4120c8 *)
mov [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae] %v25;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc4f0; Value = 0xfe3203d8fc2003e8; PC = 0x4120cc *)
mov %v29 [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc3c0; PC = 0x4120d0 *)
mov [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce] %v26;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc410; Value = 0xfb48063a0281fa97; PC = 0x4120d4 *)
mov %v30 [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc4c0; PC = 0x4120d8 *)
mov [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce] %v27;

(* CUT 6 6 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X
           [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
            L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae,
            L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,
            L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be])
          (8*F**2) [Q, X**16 - 17**8] /\
    eqmod (poly X
           [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
            L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce,
            L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,
            L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de])
          (8*F**2) [Q, X**16 - 17**136] /\
    eqmod (poly X
           [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
            L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae,
            L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
            L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
          (8*F**2) [Q, X**16 - 17**24] /\
    eqmod (poly X
           [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
            L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce,
            L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
            L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
          (8*F**2) [Q, X**16 - 17**152]
    prove with [precondition, all ghosts, cuts [0,1,2,3,4]]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
 /\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
 /\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
 /\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
 /\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
 /\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
 /\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
 /\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
 /\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
 /\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
 /\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
 /\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
 /\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
 /\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
 /\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
 /\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
 /\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<s
    [Q2,Q2,Q2,Q2]
    prove with [cuts [3]];

(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc510; Value = 0x03edfc2d03a4fd7e; PC = 0x4120dc *)
mov %v31 [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e];
(* add	x0, x0, #0x40                               #! PC = 0x4120e0 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x4120e4 *)
adds dc x1 x1 0x40@uint64;
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc3e0; Value = 0x0073fd94fcf500d4; PC = 0x4120e8 *)
mov %v24 [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee];
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x4120ec *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x4120f0 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc4e0; Value = 0x00faff5503c3fd42; PC = 0x4120f4 *)
mov %v25 [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x4120f8 *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x4120fc *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc400; Value = 0xfac4fe99ff0efdd0; PC = 0x412100 *)
mov %v26 [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x412104 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x412108 *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc500; Value = 0xfd03feda042d01a5; PC = 0x41210c *)
mov %v27 [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x412110 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x412114 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q12, [x28, #192]                            #! EA = L0x414ec0; Value = 0xdb65db652d552d55; PC = 0x412118 *)
mov %v12 [L0x414ec0,L0x414ec2,L0x414ec4,L0x414ec6,L0x414ec8,L0x414eca,L0x414ecc,L0x414ece];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x41211c *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x412120 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q13, [x28, #208]                            #! EA = L0x414ed0; Value = 0xfc48fc48049b049b; PC = 0x412124 *)
mov %v13 [L0x414ed0,L0x414ed2,L0x414ed4,L0x414ed6,L0x414ed8,L0x414eda,L0x414edc,L0x414ede];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x412128 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x41212c *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* ldr	q14, [x28, #224]                            #! EA = L0x414ee0; Value = 0x38fc38fcd40dd40d; PC = 0x412130 *)
mov %v14 [L0x414ee0,L0x414ee2,L0x414ee4,L0x414ee6,L0x414ee8,L0x414eea,L0x414eec,L0x414eee];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x412134 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x412138 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q15, [x28, #240]                            #! EA = L0x414ef0; Value = 0x05ca05cafb89fb89; PC = 0x41213c *)
mov %v15 [L0x414ef0,L0x414ef2,L0x414ef4,L0x414ef6,L0x414ef8,L0x414efa,L0x414efc,L0x414efe];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x412140 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x412144 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];

ghost %v24o4@int16[8],%v25o4@int16[8],%v26o4@int16[8],%v27o4@int16[8],
      %v28o4@int16[8],%v29o4@int16[8],%v30o4@int16[8],%v31o4@int16[8]:
      %v24o4 = %v24 /\ %v25o4 = %v25 /\ %v26o4 = %v26 /\ %v27o4 = %v27 /\
      %v28o4 = %v28 /\ %v29o4 = %v29 /\ %v30o4 = %v30 /\ %v31o4 = %v31
   && %v24o4 = %v24 /\ %v25o4 = %v25 /\ %v26o4 = %v26 /\ %v27o4 = %v27 /\
      %v28o4 = %v28 /\ %v29o4 = %v29 /\ %v30o4 = %v30 /\ %v31o4 = %v31;

(* sub	v18.8h, v28.8h, v29.8h                      #! PC = 0x412148 *)
sub %v18 %v28 %v29;
(* sub	v19.8h, v30.8h, v31.8h                      #! PC = 0x41214c *)
sub %v19 %v30 %v31;
(* add	v28.8h, v28.8h, v29.8h                      #! PC = 0x412150 *)
add %v28 %v28 %v29;
(* add	v30.8h, v30.8h, v31.8h                      #! PC = 0x412154 *)
add %v30 %v30 %v31;
(* ldr	q8, [x28, #128]                             #! EA = L0x414e80; Value = 0x18af18afddefddef; PC = 0x412158 *)
mov %v8 [L0x414e80,L0x414e82,L0x414e84,L0x414e86,L0x414e88,L0x414e8a,L0x414e8c,L0x414e8e];
(* mul	v29.8h, v18.8h, v13.8h                      #! PC = 0x41215c *)
mull %mdc %v29 %v18 %v13; cast %v29@int16[8] %v29;
(* sub	v16.8h, v24.8h, v25.8h                      #! PC = 0x412160 *)
sub %v16 %v24 %v25;
(* ldr	q9, [x28, #144]                             #! EA = L0x414e90; Value = 0x02820282fc8afc8a; PC = 0x412164 *)
mov %v9 [L0x414e90,L0x414e92,L0x414e94,L0x414e96,L0x414e98,L0x414e9a,L0x414e9c,L0x414e9e];
(* mul	v31.8h, v19.8h, v15.8h                      #! PC = 0x412168 *)
mull %mdc %v31 %v19 %v15; cast %v31@int16[8] %v31;
(* sub	v17.8h, v26.8h, v27.8h                      #! PC = 0x41216c *)
sub %v17 %v26 %v27;
(* ldr	q10, [x28, #160]                            #! EA = L0x414ea0; Value = 0xc7d3c7d3154d154d; PC = 0x412170 *)
mov %v10 [L0x414ea0,L0x414ea2,L0x414ea4,L0x414ea6,L0x414ea8,L0x414eaa,L0x414eac,L0x414eae];
(* sqrdmulh	v18.8h, v18.8h, v12.8h                 #! PC = 0x412174 *)
smulj %LO %v18 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v25.8h                      #! PC = 0x412178 *)
add %v24 %v24 %v25;
(* ldr	q11, [x28, #176]                            #! EA = L0x414eb0; Value = 0xfa4bfa4b022a022a; PC = 0x41217c *)
mov %v11 [L0x414eb0,L0x414eb2,L0x414eb4,L0x414eb6,L0x414eb8,L0x414eba,L0x414ebc,L0x414ebe];
(* sqrdmulh	v19.8h, v19.8h, v14.8h                 #! PC = 0x412180 *)
smulj %LO %v19 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v26.8h, v26.8h, v27.8h                      #! PC = 0x412184 *)
add %v26 %v26 %v27;
(* mls	v29.8h, v18.8h, v0.h[0]                     #! PC = 0x412188 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x41218c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v29 ((%v28o4 - %v29o4) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o4 - %v31o4) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v29 ((%v28o4 - %v29o4) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o4 - %v31o4) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
       %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 7 7 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v28 = %v28o4 + %v29o4 /\ %v30 = %v30o4 + %v31o4 /\
    %v16 = %v24o4 - %v25o4 /\ %v17 = %v26o4 - %v27o4 /\
    %v24 = %v24o4 + %v25o4 /\ %v26 = %v26o4 + %v27o4 /\
    eqmod %v29 ((%v28o4 - %v29o4) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ((%v30o4 - %v31o4) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
    %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
    %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

ghost %v16o3@int16[8],%v17o3@int16[8],
      %v28o5@int16[8],%v29o5@int16[8],%v30o5@int16[8],%v31o5@int16[8]:
      %v16o3 = %v16 /\ %v17o3 = %v17 /\
      %v28o5 = %v28 /\ %v29o5 = %v29 /\ %v30o5 = %v30 /\ %v31o5 = %v31
   && %v16o3 = %v16 /\ %v17o3 = %v17 /\
      %v28o5 = %v28 /\ %v29o5 = %v29 /\ %v30o5 = %v30 /\ %v31o5 = %v31;

(* ldr	q4, [x28, #64]                              #! EA = L0x414e40; Value = 0xe7b3e7b3e716e716; PC = 0x412190 *)
mov %v4 [L0x414e40,L0x414e42,L0x414e44,L0x414e46,L0x414e48,L0x414e4a,L0x414e4c,L0x414e4e];
(* mul	v25.8h, v16.8h, v9.8h                       #! PC = 0x412194 *)
mull %mdc %v25 %v16 %v9; cast %v25@int16[8] %v25;
(* sub	v18.8h, v28.8h, v30.8h                      #! PC = 0x412198 *)
sub %v18 %v28 %v30;
(* ldr	q5, [x28, #80]                              #! EA = L0x414e50; Value = 0xfd88fd88fd78fd78; PC = 0x41219c *)
mov %v5 [L0x414e50,L0x414e52,L0x414e54,L0x414e56,L0x414e58,L0x414e5a,L0x414e5c,L0x414e5e];
(* mul	v27.8h, v17.8h, v11.8h                      #! PC = 0x4121a0 *)
mull %mdc %v27 %v17 %v11; cast %v27@int16[8] %v27;
(* sub	v19.8h, v29.8h, v31.8h                      #! PC = 0x4121a4 *)
sub %v19 %v29 %v31;
(* ldr	q6, [x28, #96]                              #! EA = L0x414e60; Value = 0x1f601f60c70ec70e; PC = 0x4121a8 *)
mov %v6 [L0x414e60,L0x414e62,L0x414e64,L0x414e66,L0x414e68,L0x414e6a,L0x414e6c,L0x414e6e];
(* sqrdmulh	v16.8h, v16.8h, v8.8h                  #! PC = 0x4121ac *)
smulj %LO %v16 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v28.8h, v28.8h, v30.8h                      #! PC = 0x4121b0 *)
add %v28 %v28 %v30;
(* ldr	q7, [x28, #112]                             #! EA = L0x414e70; Value = 0x03300330fa37fa37; PC = 0x4121b4 *)
mov %v7 [L0x414e70,L0x414e72,L0x414e74,L0x414e76,L0x414e78,L0x414e7a,L0x414e7c,L0x414e7e];
(* sqrdmulh	v17.8h, v17.8h, v10.8h                 #! PC = 0x4121b8 *)
smulj %LO %v17 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v29.8h, v29.8h, v31.8h                      #! PC = 0x4121bc *)
add %v29 %v29 %v31;
(* mls	v25.8h, v16.8h, v0.h[0]                     #! PC = 0x4121c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x4121c4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v25 (%v16o3 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o3 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v25 (%v16o3 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o3 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
       %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
       %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
       %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 8 8 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v28o5 - %v30o5 /\ %v19 = %v29o5 - %v31o5 /\
    %v28 = %v28o5 + %v30o5 /\ %v29 = %v29o5 + %v31o5 /\
    eqmod %v25 (%v16o3 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o3 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
    %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
    %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
    %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
    %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];
       
ghost %v18o2@int16[8],%v19o2@int16[8],
      %v24o5@int16[8],%v25o5@int16[8],%v26o5@int16[8],%v27o5@int16[8]:
      %v18o2 = %v18 /\ %v19o2 = %v19 /\
      %v24o5 = %v24 /\ %v25o5 = %v25 /\ %v26o5 = %v26 /\ %v27o5 = %v27
   && %v18o2 = %v18 /\ %v19o2 = %v19 /\
      %v24o5 = %v24 /\ %v25o5 = %v25 /\ %v26o5 = %v26 /\ %v27o5 = %v27;

(* mul	v30.8h, v18.8h, v7.8h                       #! PC = 0x4121c8 *)
mull %mdc %v30 %v18 %v7; cast %v30@int16[8] %v30;
(* sub	v16.8h, v24.8h, v26.8h                      #! PC = 0x4121cc *)
sub %v16 %v24 %v26;
(* ldr	q1, [x28, #16]                              #! EA = L0x414e10; Value = 0x0000000000000000; PC = 0x4121d0 *)
mov %v1 [L0x414e10,L0x414e12,L0x414e14,L0x414e16,L0x414e18,L0x414e1a,L0x414e1c,L0x414e1e];
(* mul	v31.8h, v19.8h, v7.8h                       #! PC = 0x4121d4 *)
mull %mdc %v31 %v19 %v7; cast %v31@int16[8] %v31;
(* sub	v17.8h, v25.8h, v27.8h                      #! PC = 0x4121d8 *)
sub %v17 %v25 %v27;
(* ldr	q2, [x28, #32]                              #! EA = L0x414e20; Value = 0xfdd9fdd9114d114d; PC = 0x4121dc *)
mov %v2 [L0x414e20,L0x414e22,L0x414e24,L0x414e26,L0x414e28,L0x414e2a,L0x414e2c,L0x414e2e];
(* sqrdmulh	v18.8h, v18.8h, v6.8h                  #! PC = 0x4121e0 *)
smulj %LO %v18 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v26.8h                      #! PC = 0x4121e4 *)
add %v24 %v24 %v26;
(* ldr	q3, [x28, #48]                              #! EA = L0x414e30; Value = 0xffc8ffc801c201c2; PC = 0x4121e8 *)
mov %v3 [L0x414e30,L0x414e32,L0x414e34,L0x414e36,L0x414e38,L0x414e3a,L0x414e3c,L0x414e3e];
(* sqrdmulh	v19.8h, v19.8h, v6.8h                  #! PC = 0x4121ec *)
smulj %LO %v19 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v25.8h, v25.8h, v27.8h                      #! PC = 0x4121f0 *)
add %v25 %v25 %v27;
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x4121f4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x4121f8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v18o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [7]] && true;
assume eqmod %v30 (%v18o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
       %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
       %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 9 9 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v24o5 - %v26o5 /\ %v17 = %v25o5 - %v27o5 /\
    %v24 = %v24o5 + %v26o5 /\ %v25 = %v25o5 + %v27o5 /\
    eqmod %v30 (%v18o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v19o2 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
    %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
    %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
    %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
    %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [7]];

ghost %v16o4@int16[8],%v17o4@int16[8],
      %v24o6@int16[8],%v25o6@int16[8],%v28o6@int16[8],%v29o6@int16[8]:
      %v16o4 = %v16 /\ %v17o4 = %v17 /\
      %v24o6 = %v24 /\ %v25o6 = %v25 /\ %v28o6 = %v28 /\ %v29o6 = %v29
   && %v16o4 = %v16 /\ %v17o4 = %v17 /\
      %v24o6 = %v24 /\ %v25o6 = %v25 /\ %v28o6 = %v28 /\ %v29o6 = %v29;

(* mul	v26.8h, v16.8h, v5.8h                       #! PC = 0x4121fc *)
mull %mdc %v26 %v16 %v5; cast %v26@int16[8] %v26;
(* sub	v18.8h, v24.8h, v28.8h                      #! PC = 0x412200 *)
sub %v18 %v24 %v28;
(* mul	v27.8h, v17.8h, v5.8h                       #! PC = 0x412204 *)
mull %mdc %v27 %v17 %v5; cast %v27@int16[8] %v27;
(* sub	v19.8h, v25.8h, v29.8h                      #! PC = 0x412208 *)
sub %v19 %v25 %v29;
(* sqrdmulh	v16.8h, v16.8h, v4.8h                  #! PC = 0x41220c *)
smulj %LO %v16 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v24.8h, v24.8h, v28.8h                      #! PC = 0x412210 *)
add %v24 %v24 %v28;
(* sqrdmulh	v17.8h, v17.8h, v4.8h                  #! PC = 0x412214 *)
smulj %LO %v17 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v25.8h, v25.8h, v29.8h                      #! PC = 0x412218 *)
add %v25 %v25 %v29;
(* mls	v26.8h, v16.8h, v0.h[0]                     #! PC = 0x41221c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x412220 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v26 (%v16o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [8]] && true;
assume eqmod %v26 (%v16o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
       %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
       %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 10 10 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v24o6 - %v28o6 /\ %v19 = %v25o6 - %v29o6 /\
    %v24 = %v24o6 + %v28o6 /\ %v25 = %v25o6 + %v29o6 /\
    eqmod %v26 (%v16o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o4 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
    %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
    %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
    %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
    %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
    %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v19 /\
    %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [8]];

ghost %v18o3@int16[8],%v19o3@int16[8],
      %v26o6@int16[8],%v27o6@int16[8],%v30o6@int16[8],%v31o6@int16[8]:
      %v18o3 = %v18 /\ %v19o3 = %v19 /\
      %v26o6 = %v26 /\ %v27o6 = %v27 /\ %v30o6 = %v30 /\ %v31o6 = %v31
   && %v18o3 = %v18 /\ %v19o3 = %v19 /\
      %v26o6 = %v26 /\ %v27o6 = %v27 /\ %v30o6 = %v30 /\ %v31o6 = %v31;

(* mul	v28.8h, v18.8h, v3.8h                       #! PC = 0x412224 *)
mull %mdc %v28 %v18 %v3; cast %v28@int16[8] %v28;
(* sub	v16.8h, v26.8h, v30.8h                      #! PC = 0x412228 *)
sub %v16 %v26 %v30;
(* mul	v29.8h, v19.8h, v3.8h                       #! PC = 0x41222c *)
mull %mdc %v29 %v19 %v3; cast %v29@int16[8] %v29;
(* sub	v17.8h, v27.8h, v31.8h                      #! PC = 0x412230 *)
sub %v17 %v27 %v31;
(* sqrdmulh	v18.8h, v18.8h, v2.8h                  #! PC = 0x412234 *)
smulj %LO %v18 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v26.8h, v26.8h, v30.8h                      #! PC = 0x412238 *)
add %v26 %v26 %v30;
(* sqrdmulh	v19.8h, v19.8h, v2.8h                  #! PC = 0x41223c *)
smulj %LO %v19 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v27.8h, v27.8h, v31.8h                      #! PC = 0x412240 *)
add %v27 %v27 %v31;
(* mls	v28.8h, v18.8h, v0.h[0]                     #! PC = 0x412244 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v19.8h, v0.h[0]                     #! PC = 0x412248 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;

assert eqmod %v28 (%v18o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [9]] && true;
assume eqmod %v28 (%v18o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 11 11 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v26o6 - %v30o6 /\ %v17 = %v27o6 - %v31o6 /\
    %v26 = %v26o6 + %v30o6 /\ %v27 = %v27o6 + %v31o6 /\
    eqmod %v28 (%v18o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 (%v19o3 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [9]];

ghost %v16o5@int16[8],%v17o5@int16[8]:
      %v16o5 = %v16 /\ %v17o5 = %v17
   && %v16o5 = %v16 /\ %v17o5 = %v17;
   
(* mul	v30.8h, v16.8h, v3.8h                       #! PC = 0x41224c *)
mull %mdc %v30 %v16 %v3; cast %v30@int16[8] %v30;
(* mul	v31.8h, v17.8h, v3.8h                       #! PC = 0x412250 *)
mull %mdc %v31 %v17 %v3; cast %v31@int16[8] %v31;
(* sqrdmulh	v16.8h, v16.8h, v2.8h                  #! PC = 0x412254 *)
smulj %LO %v16 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* sqrdmulh	v17.8h, v17.8h, v2.8h                  #! PC = 0x412258 *)
smulj %LO %v17 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* mls	v30.8h, v16.8h, v0.h[0]                     #! PC = 0x41225c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v17.8h, v0.h[0]                     #! PC = 0x412260 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v16o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v30 (%v16o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 12 12 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v30 (%v16o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v17o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o7@int16[8],%v25o7@int16[8],%v26o7@int16[8],%v27o7@int16[8],
      %v28o7@int16[8],%v29o7@int16[8],%v30o7@int16[8],%v31o7@int16[8]:
      %v24o7 = %v24 /\ %v25o7 = %v25 /\ %v26o7 = %v26 /\ %v27o7 = %v27 /\
      %v28o7 = %v28 /\ %v29o7 = %v29 /\ %v30o7 = %v30 /\ %v31o7 = %v31
   && %v24o7 = %v24 /\ %v25o7 = %v25 /\ %v26o7 = %v26 /\ %v27o7 = %v27 /\
      %v28o7 = %v28 /\ %v29o7 = %v29 /\ %v30o7 = %v30 /\ %v31o7 = %v31;

(* sqdmulh	v16.8h, v24.8h, v0.h[1]                 #! PC = 0x412264 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* sqdmulh	v17.8h, v25.8h, v0.h[1]                 #! PC = 0x412268 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* sqdmulh	v18.8h, v26.8h, v0.h[1]                 #! PC = 0x41226c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* sqdmulh	v19.8h, v27.8h, v0.h[1]                 #! PC = 0x412270 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x412274 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* sqdmulh	v20.8h, v28.8h, v0.h[1]                 #! PC = 0x412278 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x41227c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* sqdmulh	v21.8h, v29.8h, v0.h[1]                 #! PC = 0x412280 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x412284 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* sqdmulh	v22.8h, v30.8h, v0.h[1]                 #! PC = 0x412288 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x41228c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* sqdmulh	v23.8h, v31.8h, v0.h[1]                 #! PC = 0x412290 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* mls	v24.8h, v16.8h, v0.h[0]                     #! PC = 0x412294 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x412298 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* mls	v25.8h, v17.8h, v0.h[0]                     #! PC = 0x41229c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x4122a0 *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* mls	v26.8h, v18.8h, v0.h[0]                     #! PC = 0x4122a4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x4122a8 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* mls	v27.8h, v19.8h, v0.h[0]                     #! PC = 0x4122ac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x4122b0 *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v28.8h, v20.8h, v0.h[0]                     #! PC = 0x4122b4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v21.8h, v0.h[0]                     #! PC = 0x4122b8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v22.8h, v0.h[0]                     #! PC = 0x4122bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v23.8h, v0.h[0]                     #! PC = 0x4122c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
       prove with [algebra solver isl, cuts [10, 11]] && true;
assume eqmod %v24 %v24o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
    && [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v24 /\
       %v24<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v25 /\
       %v25<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v26 /\
       %v26<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v27 /\
       %v27<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v28 /\
       %v28<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v29 /\
       %v29<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v30 /\
       %v30<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v31 /\
       %v31<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2];

(* add	x28, x28, #0x100                            #! PC = 0x4122c4 *)
adds dc x28 x28 0x100@uint64;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x4122c8 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x4122cc *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x4122d0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x4122d4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x4122d8 *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x4122dc *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x4122e0 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x4122e4 *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc3f0; PC = 0x4122e8 *)
mov [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe] %v28;
(* trn1	v16.4s, v24.4s, v25.4s                     #! PC = 0x4122ec *)
mov %v16@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v17.4s, v24.4s, v25.4s                     #! PC = 0x4122f0 *)
mov %v17@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc4f0; PC = 0x4122f4 *)
mov [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] %v29;
(* trn1	v18.4s, v26.4s, v27.4s                     #! PC = 0x4122f8 *)
mov %v18@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v19.4s, v26.4s, v27.4s                     #! PC = 0x4122fc *)
mov %v19@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc410; PC = 0x412300 *)
mov [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e] %v30;
(* trn1	v24.2d, v16.2d, v18.2d                     #! PC = 0x412304 *)
mov %v24@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v26.2d, v16.2d, v18.2d                     #! PC = 0x412308 *)
mov %v26@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc510; PC = 0x41230c *)
mov [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] %v31;
(* trn1	v25.2d, v17.2d, v19.2d                     #! PC = 0x412310 *)
mov %v25@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v27.2d, v17.2d, v19.2d                     #! PC = 0x412314 *)
mov %v27@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x19, x19, #0x1                              #! PC = 0x412318 *)
subc dc x19 x19 0x1@uint64;
(* #cbnz	x19, 0x4120c0 <_intt_bot_loop>            #! PC = 0x41231c *)
#cbnz	%%x19, 0x4120c0 <_intt_bot_loop>            #! 0x41231c = 0x41231c;
(* str	q24, [x0]                                   #! EA = L0xffffffffc3e0; PC = 0x4120c0 *)
mov [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee] %v24;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc430; Value = 0xfba80039fb3dfbc8; PC = 0x4120c4 *)
mov %v28 [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e];
(* str	q25, [x1]                                   #! EA = L0xffffffffc4e0; PC = 0x4120c8 *)
mov [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee] %v25;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc530; Value = 0x0348fd16001bfaf8; PC = 0x4120cc *)
mov %v29 [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc400; PC = 0x4120d0 *)
mov [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e] %v26;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc450; Value = 0x010303b4fda9fe2c; PC = 0x4120d4 *)
mov %v30 [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc500; PC = 0x4120d8 *)
mov [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e] %v27;

(* CUT 13 13 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X
           [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
            L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee,
            L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,
            L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe])
          (8*F**2) [Q, X**16 - 17**72] /\
    eqmod (poly X
           [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
            L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e,
            L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
            L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e])
          (8*F**2) [Q, X**16 - 17**200] /\
    eqmod (poly X
           [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
            L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee,
            L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
            L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
          (8*F**2) [Q, X**16 - 17**88] /\
    eqmod (poly X
           [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
            L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e,
            L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
            L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e])
          (8*F**2) [Q, X**16 - 17**216]
    prove with [precondition, all ghosts, cuts [7,8,9,10,11]]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
 /\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
 /\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
 /\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
 /\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
 /\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
 /\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
 /\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
 /\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
 /\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
 /\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
 /\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
 /\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
 /\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
 /\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
 /\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
 /\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<s
    [Q2,Q2,Q2,Q2]
    prove with [cuts [10]];

(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc550; Value = 0x0028fcd20660fbb0; PC = 0x4120dc *)
mov %v31 [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e];
(* add	x0, x0, #0x40                               #! PC = 0x4120e0 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x4120e4 *)
adds dc x1 x1 0x40@uint64;
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc420; Value = 0xfb6804d1fff0fa7b; PC = 0x4120e8 *)
mov %v24 [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e];
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x4120ec *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x4120f0 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc520; Value = 0x04b0fb1d012f04f5; PC = 0x4120f4 *)
mov %v25 [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x4120f8 *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x4120fc *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc440; Value = 0xfa5402ea0001029a; PC = 0x412100 *)
mov %v26 [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x412104 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x412108 *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc540; Value = 0xfc9304c50556fe00; PC = 0x41210c *)
mov %v27 [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x412110 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x412114 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q12, [x28, #192]                            #! EA = L0x414fc0; Value = 0x2d1a2d1aea6eea6e; PC = 0x412118 *)
mov %v12 [L0x414fc0,L0x414fc2,L0x414fc4,L0x414fc6,L0x414fc8,L0x414fca,L0x414fcc,L0x414fce];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x41211c *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x412120 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q13, [x28, #208]                            #! EA = L0x414fd0; Value = 0x04950495fdcffdcf; PC = 0x412124 *)
mov %v13 [L0x414fd0,L0x414fd2,L0x414fd4,L0x414fd6,L0x414fd8,L0x414fda,L0x414fdc,L0x414fde];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x412128 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x41212c *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* ldr	q14, [x28, #224]                            #! EA = L0x414fe0; Value = 0xe2efe2ef2f4b2f4b; PC = 0x412130 *)
mov %v14 [L0x414fe0,L0x414fe2,L0x414fe4,L0x414fe6,L0x414fe8,L0x414fea,L0x414fec,L0x414fee];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x412134 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x412138 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q15, [x28, #240]                            #! EA = L0x414ff0; Value = 0xfd0cfd0c04ce04ce; PC = 0x41213c *)
mov %v15 [L0x414ff0,L0x414ff2,L0x414ff4,L0x414ff6,L0x414ff8,L0x414ffa,L0x414ffc,L0x414ffe];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x412140 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x412144 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];

ghost %v24o8@int16[8],%v25o8@int16[8],%v26o8@int16[8],%v27o8@int16[8],
      %v28o8@int16[8],%v29o8@int16[8],%v30o8@int16[8],%v31o8@int16[8]:
      %v24o8 = %v24 /\ %v25o8 = %v25 /\ %v26o8 = %v26 /\ %v27o8 = %v27 /\
      %v28o8 = %v28 /\ %v29o8 = %v29 /\ %v30o8 = %v30 /\ %v31o8 = %v31
   && %v24o8 = %v24 /\ %v25o8 = %v25 /\ %v26o8 = %v26 /\ %v27o8 = %v27 /\
      %v28o8 = %v28 /\ %v29o8 = %v29 /\ %v30o8 = %v30 /\ %v31o8 = %v31;

(* sub	v18.8h, v28.8h, v29.8h                      #! PC = 0x412148 *)
sub %v18 %v28 %v29;
(* sub	v19.8h, v30.8h, v31.8h                      #! PC = 0x41214c *)
sub %v19 %v30 %v31;
(* add	v28.8h, v28.8h, v29.8h                      #! PC = 0x412150 *)
add %v28 %v28 %v29;
(* add	v30.8h, v30.8h, v31.8h                      #! PC = 0x412154 *)
add %v30 %v30 %v31;
(* ldr	q8, [x28, #128]                             #! EA = L0x414f80; Value = 0x0aba0aba1c431c43; PC = 0x412158 *)
mov %v8 [L0x414f80,L0x414f82,L0x414f84,L0x414f86,L0x414f88,L0x414f8a,L0x414f8c,L0x414f8e];
(* mul	v29.8h, v18.8h, v13.8h                      #! PC = 0x41215c *)
mull %mdc %v29 %v18 %v13; cast %v29@int16[8] %v29;
(* sub	v16.8h, v24.8h, v25.8h                      #! PC = 0x412160 *)
sub %v16 %v24 %v25;
(* ldr	q9, [x28, #144]                             #! EA = L0x414f90; Value = 0x0117011702df02df; PC = 0x412164 *)
mov %v9 [L0x414f90,L0x414f92,L0x414f94,L0x414f96,L0x414f98,L0x414f9a,L0x414f9c,L0x414f9e];
(* mul	v31.8h, v19.8h, v15.8h                      #! PC = 0x412168 *)
mull %mdc %v31 %v19 %v15; cast %v31@int16[8] %v31;
(* sub	v17.8h, v26.8h, v27.8h                      #! PC = 0x41216c *)
sub %v17 %v26 %v27;
(* ldr	q10, [x28, #160]                            #! EA = L0x414fa0; Value = 0x0c130c13212f212f; PC = 0x412170 *)
mov %v10 [L0x414fa0,L0x414fa2,L0x414fa4,L0x414fa6,L0x414fa8,L0x414faa,L0x414fac,L0x414fae];
(* sqrdmulh	v18.8h, v18.8h, v12.8h                 #! PC = 0x412174 *)
smulj %LO %v18 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v25.8h                      #! PC = 0x412178 *)
add %v24 %v24 %v25;
(* ldr	q11, [x28, #176]                            #! EA = L0x414fb0; Value = 0x013a013a035f035f; PC = 0x41217c *)
mov %v11 [L0x414fb0,L0x414fb2,L0x414fb4,L0x414fb6,L0x414fb8,L0x414fba,L0x414fbc,L0x414fbe];
(* sqrdmulh	v19.8h, v19.8h, v14.8h                 #! PC = 0x412180 *)
smulj %LO %v19 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v26.8h, v26.8h, v27.8h                      #! PC = 0x412184 *)
add %v26 %v26 %v27;
(* mls	v29.8h, v18.8h, v0.h[0]                     #! PC = 0x412188 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x41218c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v29 ((%v28o8 - %v29o8) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o8 - %v31o8) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v29 ((%v28o8 - %v29o8) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o8 - %v31o8) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
       %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 14 14 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v28 = %v28o8 + %v29o8 /\ %v30 = %v30o8 + %v31o8 /\
    %v16 = %v24o8 - %v25o8 /\ %v17 = %v26o8 - %v27o8 /\
    %v24 = %v24o8 + %v25o8 /\ %v26 = %v26o8 + %v27o8 /\
    eqmod %v29 ((%v28o8 - %v29o8) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ((%v30o8 - %v31o8) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
    %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
    %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

ghost %v16o6@int16[8],%v17o6@int16[8],
      %v28o9@int16[8],%v29o9@int16[8],%v30o9@int16[8],%v31o9@int16[8]:
      %v16o6 = %v16 /\ %v17o6 = %v17 /\
      %v28o9 = %v28 /\ %v29o9 = %v29 /\ %v30o9 = %v30 /\ %v31o9 = %v31
   && %v16o6 = %v16 /\ %v17o6 = %v17 /\
      %v28o9 = %v28 /\ %v29o9 = %v29 /\ %v30o9 = %v30 /\ %v31o9 = %v31;

(* ldr	q4, [x28, #64]                              #! EA = L0x414f40; Value = 0x30fc30fc23a523a5; PC = 0x412190 *)
mov %v4 [L0x414f40,L0x414f42,L0x414f44,L0x414f46,L0x414f48,L0x414f4a,L0x414f4c,L0x414f4e];
(* mul	v25.8h, v16.8h, v9.8h                       #! PC = 0x412194 *)
mull %mdc %v25 %v16 %v9; cast %v25@int16[8] %v25;
(* sub	v18.8h, v28.8h, v30.8h                      #! PC = 0x412198 *)
sub %v18 %v28 %v30;
(* ldr	q5, [x28, #80]                              #! EA = L0x414f50; Value = 0x04fa04fa039f039f; PC = 0x41219c *)
mov %v5 [L0x414f50,L0x414f52,L0x414f54,L0x414f56,L0x414f58,L0x414f5a,L0x414f5c,L0x414f5e];
(* mul	v27.8h, v17.8h, v11.8h                      #! PC = 0x4121a0 *)
mull %mdc %v27 %v17 %v11; cast %v27@int16[8] %v27;
(* sub	v19.8h, v29.8h, v31.8h                      #! PC = 0x4121a4 *)
sub %v19 %v29 %v31;
(* ldr	q6, [x28, #96]                              #! EA = L0x414f60; Value = 0x28732873c505c505; PC = 0x4121a8 *)
mov %v6 [L0x414f60,L0x414f62,L0x414f64,L0x414f66,L0x414f68,L0x414f6a,L0x414f6c,L0x414f6e];
(* sqrdmulh	v16.8h, v16.8h, v8.8h                  #! PC = 0x4121ac *)
smulj %LO %v16 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v28.8h, v28.8h, v30.8h                      #! PC = 0x4121b0 *)
add %v28 %v28 %v30;
(* ldr	q7, [x28, #112]                             #! EA = L0x414f70; Value = 0x041c041cfa02fa02; PC = 0x4121b4 *)
mov %v7 [L0x414f70,L0x414f72,L0x414f74,L0x414f76,L0x414f78,L0x414f7a,L0x414f7c,L0x414f7e];
(* sqrdmulh	v17.8h, v17.8h, v10.8h                 #! PC = 0x4121b8 *)
smulj %LO %v17 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v29.8h, v29.8h, v31.8h                      #! PC = 0x4121bc *)
add %v29 %v29 %v31;
(* mls	v25.8h, v16.8h, v0.h[0]                     #! PC = 0x4121c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x4121c4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v25 (%v16o6 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o6 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v25 (%v16o6 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o6 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
       %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
       %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
       %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 15 15 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v28o9 - %v30o9 /\ %v19 = %v29o9 - %v31o9 /\
    %v28 = %v28o9 + %v30o9 /\ %v29 = %v29o9 + %v31o9 /\
    eqmod %v25 (%v16o6 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o6 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
    %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
    %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
    %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
    %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];
       
ghost %v18o4@int16[8],%v19o4@int16[8],
      %v24o9@int16[8],%v25o9@int16[8],%v26o9@int16[8],%v27o9@int16[8]:
      %v18o4 = %v18 /\ %v19o4 = %v19 /\
      %v24o9 = %v24 /\ %v25o9 = %v25 /\ %v26o9 = %v26 /\ %v27o9 = %v27
   && %v18o4 = %v18 /\ %v19o4 = %v19 /\
      %v24o9 = %v24 /\ %v25o9 = %v25 /\ %v26o9 = %v26 /\ %v27o9 = %v27;

(* mul	v30.8h, v18.8h, v7.8h                       #! PC = 0x4121c8 *)
mull %mdc %v30 %v18 %v7; cast %v30@int16[8] %v30;
(* sub	v16.8h, v24.8h, v26.8h                      #! PC = 0x4121cc *)
sub %v16 %v24 %v26;
(* ldr	q1, [x28, #16]                              #! EA = L0x414f10; Value = 0x0000000000000000; PC = 0x4121d0 *)
mov %v1 [L0x414f10,L0x414f12,L0x414f14,L0x414f16,L0x414f18,L0x414f1a,L0x414f1c,L0x414f1e];
(* mul	v31.8h, v19.8h, v7.8h                       #! PC = 0x4121d4 *)
mull %mdc %v31 %v19 %v7; cast %v31@int16[8] %v31;
(* sub	v17.8h, v25.8h, v27.8h                      #! PC = 0x4121d8 *)
sub %v17 %v25 %v27;
(* ldr	q2, [x28, #32]                              #! EA = L0x414f20; Value = 0xc73fc73f11301130; PC = 0x4121dc *)
mov %v2 [L0x414f20,L0x414f22,L0x414f24,L0x414f26,L0x414f28,L0x414f2a,L0x414f2c,L0x414f2e];
(* sqrdmulh	v18.8h, v18.8h, v6.8h                  #! PC = 0x4121e0 *)
smulj %LO %v18 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v26.8h                      #! PC = 0x4121e4 *)
add %v24 %v24 %v26;
(* ldr	q3, [x28, #48]                              #! EA = L0x414f30; Value = 0xfa3cfa3c01bf01bf; PC = 0x4121e8 *)
mov %v3 [L0x414f30,L0x414f32,L0x414f34,L0x414f36,L0x414f38,L0x414f3a,L0x414f3c,L0x414f3e];
(* sqrdmulh	v19.8h, v19.8h, v6.8h                  #! PC = 0x4121ec *)
smulj %LO %v19 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v25.8h, v25.8h, v27.8h                      #! PC = 0x4121f0 *)
add %v25 %v25 %v27;
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x4121f4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x4121f8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v18o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [14]] && true;
assume eqmod %v30 (%v18o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
       %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
       %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 16 16 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v24o9 - %v26o9 /\ %v17 = %v25o9 - %v27o9 /\
    %v24 = %v24o9 + %v26o9 /\ %v25 = %v25o9 + %v27o9 /\
    eqmod %v30 (%v18o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v19o4 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
    %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
    %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
    %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
    %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [14]];

ghost %v16o7@int16[8],%v17o7@int16[8],
      %v24o10@int16[8],%v25o10@int16[8],%v28o10@int16[8],%v29o10@int16[8]:
      %v16o7 = %v16 /\ %v17o7 = %v17 /\
      %v24o10 = %v24 /\ %v25o10 = %v25 /\ %v28o10 = %v28 /\ %v29o10 = %v29
   && %v16o7 = %v16 /\ %v17o7 = %v17 /\
      %v24o10 = %v24 /\ %v25o10 = %v25 /\ %v28o10 = %v28 /\ %v29o10 = %v29;

(* mul	v26.8h, v16.8h, v5.8h                       #! PC = 0x4121fc *)
mull %mdc %v26 %v16 %v5; cast %v26@int16[8] %v26;
(* sub	v18.8h, v24.8h, v28.8h                      #! PC = 0x412200 *)
sub %v18 %v24 %v28;
(* mul	v27.8h, v17.8h, v5.8h                       #! PC = 0x412204 *)
mull %mdc %v27 %v17 %v5; cast %v27@int16[8] %v27;
(* sub	v19.8h, v25.8h, v29.8h                      #! PC = 0x412208 *)
sub %v19 %v25 %v29;
(* sqrdmulh	v16.8h, v16.8h, v4.8h                  #! PC = 0x41220c *)
smulj %LO %v16 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v24.8h, v24.8h, v28.8h                      #! PC = 0x412210 *)
add %v24 %v24 %v28;
(* sqrdmulh	v17.8h, v17.8h, v4.8h                  #! PC = 0x412214 *)
smulj %LO %v17 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v25.8h, v25.8h, v29.8h                      #! PC = 0x412218 *)
add %v25 %v25 %v29;
(* mls	v26.8h, v16.8h, v0.h[0]                     #! PC = 0x41221c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x412220 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v26 (%v16o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [15]] && true;
assume eqmod %v26 (%v16o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
       %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
       %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 17 17 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v24o10 - %v28o10 /\ %v19 = %v25o10 - %v29o10 /\
    %v24 = %v24o10 + %v28o10 /\ %v25 = %v25o10 + %v29o10 /\
    eqmod %v26 (%v16o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o7 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
    %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
    %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
    %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
    %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
    %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v19 /\
    %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [15]];

ghost %v18o5@int16[8],%v19o5@int16[8],
      %v26o10@int16[8],%v27o10@int16[8],%v30o10@int16[8],%v31o10@int16[8]:
      %v18o5 = %v18 /\ %v19o5 = %v19 /\
      %v26o10 = %v26 /\ %v27o10 = %v27 /\ %v30o10 = %v30 /\ %v31o10 = %v31
   && %v18o5 = %v18 /\ %v19o5 = %v19 /\
      %v26o10 = %v26 /\ %v27o10 = %v27 /\ %v30o10 = %v30 /\ %v31o10 = %v31;

(* mul	v28.8h, v18.8h, v3.8h                       #! PC = 0x412224 *)
mull %mdc %v28 %v18 %v3; cast %v28@int16[8] %v28;
(* sub	v16.8h, v26.8h, v30.8h                      #! PC = 0x412228 *)
sub %v16 %v26 %v30;
(* mul	v29.8h, v19.8h, v3.8h                       #! PC = 0x41222c *)
mull %mdc %v29 %v19 %v3; cast %v29@int16[8] %v29;
(* sub	v17.8h, v27.8h, v31.8h                      #! PC = 0x412230 *)
sub %v17 %v27 %v31;
(* sqrdmulh	v18.8h, v18.8h, v2.8h                  #! PC = 0x412234 *)
smulj %LO %v18 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v26.8h, v26.8h, v30.8h                      #! PC = 0x412238 *)
add %v26 %v26 %v30;
(* sqrdmulh	v19.8h, v19.8h, v2.8h                  #! PC = 0x41223c *)
smulj %LO %v19 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v27.8h, v27.8h, v31.8h                      #! PC = 0x412240 *)
add %v27 %v27 %v31;
(* mls	v28.8h, v18.8h, v0.h[0]                     #! PC = 0x412244 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v19.8h, v0.h[0]                     #! PC = 0x412248 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;

assert eqmod %v28 (%v18o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [16]] && true;
assume eqmod %v28 (%v18o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 18 18 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v26o10 - %v30o10 /\ %v17 = %v27o10 - %v31o10 /\
    %v26 = %v26o10 + %v30o10 /\ %v27 = %v27o10 + %v31o10 /\
    eqmod %v28 (%v18o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 (%v19o5 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [16]];

ghost %v16o8@int16[8],%v17o8@int16[8]:
      %v16o8 = %v16 /\ %v17o8 = %v17
   && %v16o8 = %v16 /\ %v17o8 = %v17;
   
(* mul	v30.8h, v16.8h, v3.8h                       #! PC = 0x41224c *)
mull %mdc %v30 %v16 %v3; cast %v30@int16[8] %v30;
(* mul	v31.8h, v17.8h, v3.8h                       #! PC = 0x412250 *)
mull %mdc %v31 %v17 %v3; cast %v31@int16[8] %v31;
(* sqrdmulh	v16.8h, v16.8h, v2.8h                  #! PC = 0x412254 *)
smulj %LO %v16 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* sqrdmulh	v17.8h, v17.8h, v2.8h                  #! PC = 0x412258 *)
smulj %LO %v17 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* mls	v30.8h, v16.8h, v0.h[0]                     #! PC = 0x41225c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v17.8h, v0.h[0]                     #! PC = 0x412260 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v16o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v30 (%v16o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 19 19 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v30 (%v16o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v17o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o11@int16[8],%v25o11@int16[8],%v26o11@int16[8],%v27o11@int16[8],
      %v28o11@int16[8],%v29o11@int16[8],%v30o11@int16[8],%v31o11@int16[8]:
      %v24o11 = %v24 /\ %v25o11 = %v25 /\ %v26o11 = %v26 /\ %v27o11 = %v27 /\
      %v28o11 = %v28 /\ %v29o11 = %v29 /\ %v30o11 = %v30 /\ %v31o11 = %v31
   && %v24o11 = %v24 /\ %v25o11 = %v25 /\ %v26o11 = %v26 /\ %v27o11 = %v27 /\
      %v28o11 = %v28 /\ %v29o11 = %v29 /\ %v30o11 = %v30 /\ %v31o11 = %v31;

(* sqdmulh	v16.8h, v24.8h, v0.h[1]                 #! PC = 0x412264 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* sqdmulh	v17.8h, v25.8h, v0.h[1]                 #! PC = 0x412268 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* sqdmulh	v18.8h, v26.8h, v0.h[1]                 #! PC = 0x41226c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* sqdmulh	v19.8h, v27.8h, v0.h[1]                 #! PC = 0x412270 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x412274 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* sqdmulh	v20.8h, v28.8h, v0.h[1]                 #! PC = 0x412278 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x41227c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* sqdmulh	v21.8h, v29.8h, v0.h[1]                 #! PC = 0x412280 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x412284 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* sqdmulh	v22.8h, v30.8h, v0.h[1]                 #! PC = 0x412288 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x41228c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* sqdmulh	v23.8h, v31.8h, v0.h[1]                 #! PC = 0x412290 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* mls	v24.8h, v16.8h, v0.h[0]                     #! PC = 0x412294 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x412298 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* mls	v25.8h, v17.8h, v0.h[0]                     #! PC = 0x41229c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x4122a0 *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* mls	v26.8h, v18.8h, v0.h[0]                     #! PC = 0x4122a4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x4122a8 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* mls	v27.8h, v19.8h, v0.h[0]                     #! PC = 0x4122ac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x4122b0 *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v28.8h, v20.8h, v0.h[0]                     #! PC = 0x4122b4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v21.8h, v0.h[0]                     #! PC = 0x4122b8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v22.8h, v0.h[0]                     #! PC = 0x4122bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v23.8h, v0.h[0]                     #! PC = 0x4122c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
       prove with [algebra solver isl, cuts [17, 18]] && true;
assume eqmod %v24 %v24o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
    && [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v24 /\
       %v24<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v25 /\
       %v25<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v26 /\
       %v26<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v27 /\
       %v27<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v28 /\
       %v28<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v29 /\
       %v29<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v30 /\
       %v30<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v31 /\
       %v31<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2];

(* add	x28, x28, #0x100                            #! PC = 0x4122c4 *)
adds dc x28 x28 0x100@uint64;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x4122c8 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x4122cc *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x4122d0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x4122d4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x4122d8 *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x4122dc *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x4122e0 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x4122e4 *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc430; PC = 0x4122e8 *)
mov [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e] %v28;
(* trn1	v16.4s, v24.4s, v25.4s                     #! PC = 0x4122ec *)
mov %v16@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v17.4s, v24.4s, v25.4s                     #! PC = 0x4122f0 *)
mov %v17@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc530; PC = 0x4122f4 *)
mov [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] %v29;
(* trn1	v18.4s, v26.4s, v27.4s                     #! PC = 0x4122f8 *)
mov %v18@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v19.4s, v26.4s, v27.4s                     #! PC = 0x4122fc *)
mov %v19@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc450; PC = 0x412300 *)
mov [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e] %v30;
(* trn1	v24.2d, v16.2d, v18.2d                     #! PC = 0x412304 *)
mov %v24@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v26.2d, v16.2d, v18.2d                     #! PC = 0x412308 *)
mov %v26@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc550; PC = 0x41230c *)
mov [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] %v31;
(* trn1	v25.2d, v17.2d, v19.2d                     #! PC = 0x412310 *)
mov %v25@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v27.2d, v17.2d, v19.2d                     #! PC = 0x412314 *)
mov %v27@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x19, x19, #0x1                              #! PC = 0x412318 *)
subc dc x19 x19 0x1@uint64;
(* #cbnz	x19, 0x4120c0 <_intt_bot_loop>            #! PC = 0x41231c *)
#cbnz	%%x19, 0x4120c0 <_intt_bot_loop>            #! 0x41231c = 0x41231c;
(* str	q24, [x0]                                   #! EA = L0xffffffffc420; PC = 0x4120c0 *)
mov [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e] %v24;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc470; Value = 0xfa5cf9a4feb4038f; PC = 0x4120c4 *)
mov %v28 [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e];
(* str	q25, [x1]                                   #! EA = L0xffffffffc520; PC = 0x4120c8 *)
mov [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e] %v25;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc570; Value = 0xfcea00c2faadfd19; PC = 0x4120cc *)
mov %v29 [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc440; PC = 0x4120d0 *)
mov [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e] %v26;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc490; Value = 0x0292faf1fc2cfd1d; PC = 0x4120d4 *)
mov %v30 [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc540; PC = 0x4120d8 *)
mov [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e] %v27;

(* CUT 20 20 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X
           [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
            L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e,
            L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
            L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e])
          (8*F**2) [Q, X**16 - 17**40] /\
    eqmod (poly X
           [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
            L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e,
            L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
            L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
          (8*F**2) [Q, X**16 - 17**168] /\
    eqmod (poly X
           [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
            L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e,
            L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
            L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e])
          (8*F**2) [Q, X**16 - 17**56] /\
    eqmod (poly X
           [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
            L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e,
            L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
            L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
          (8*F**2) [Q, X**16 - 17**184]
    prove with [precondition, all ghosts, cuts [14,15,16,17,18]]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
 /\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
 /\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
 /\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
 /\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
 /\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
 /\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
 /\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
 /\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
 /\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
 /\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
 /\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
 /\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
 /\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
 /\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
 /\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
 /\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<s
    [Q2,Q2,Q2,Q2]
    prove with [cuts [17]];

(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc590; Value = 0xfdbe033fffe6055f; PC = 0x4120dc *)
mov %v31 [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e];
(* add	x0, x0, #0x40                               #! PC = 0x4120e0 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x4120e4 *)
adds dc x1 x1 0x40@uint64;
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc460; Value = 0x001301cbffd2ffa0; PC = 0x4120e8 *)
mov %v24 [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e];
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x4120ec *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x4120f0 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc560; Value = 0x00ae060fffebfe3a; PC = 0x4120f4 *)
mov %v25 [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x4120f8 *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x4120fc *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc480; Value = 0x01f4ff27062bfd86; PC = 0x412100 *)
mov %v26 [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x412104 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x412108 *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc580; Value = 0x046b014dfcc4049b; PC = 0x41210c *)
mov %v27 [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x412110 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x412114 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q12, [x28, #192]                            #! EA = L0x4150c0; Value = 0xe433e4331dfe1dfe; PC = 0x412118 *)
mov %v12 [L0x4150c0,L0x4150c2,L0x4150c4,L0x4150c6,L0x4150c8,L0x4150ca,L0x4150cc,L0x4150ce];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x41211c *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x412120 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q13, [x28, #208]                            #! EA = L0x4150d0; Value = 0xfd2dfd2d030c030c; PC = 0x412124 *)
mov %v13 [L0x4150d0,L0x4150d2,L0x4150d4,L0x4150d6,L0x4150d8,L0x4150da,L0x4150dc,L0x4150de];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x412128 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x41212c *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* ldr	q14, [x28, #224]                            #! EA = L0x4150e0; Value = 0xc10fc10ff195f195; PC = 0x412130 *)
mov %v14 [L0x4150e0,L0x4150e2,L0x4150e4,L0x4150e6,L0x4150e8,L0x4150ea,L0x4150ec,L0x4150ee];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x412134 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x412138 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q15, [x28, #240]                            #! EA = L0x4150f0; Value = 0xf99bf99bfe89fe89; PC = 0x41213c *)
mov %v15 [L0x4150f0,L0x4150f2,L0x4150f4,L0x4150f6,L0x4150f8,L0x4150fa,L0x4150fc,L0x4150fe];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x412140 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x412144 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];

ghost %v24o12@int16[8],%v25o12@int16[8],%v26o12@int16[8],%v27o12@int16[8],
      %v28o12@int16[8],%v29o12@int16[8],%v30o12@int16[8],%v31o12@int16[8]:
      %v24o12 = %v24 /\ %v25o12 = %v25 /\ %v26o12 = %v26 /\ %v27o12 = %v27 /\
      %v28o12 = %v28 /\ %v29o12 = %v29 /\ %v30o12 = %v30 /\ %v31o12 = %v31
   && %v24o12 = %v24 /\ %v25o12 = %v25 /\ %v26o12 = %v26 /\ %v27o12 = %v27 /\
      %v28o12 = %v28 /\ %v29o12 = %v29 /\ %v30o12 = %v30 /\ %v31o12 = %v31;

(* sub	v18.8h, v28.8h, v29.8h                      #! PC = 0x412148 *)
sub %v18 %v28 %v29;
(* sub	v19.8h, v30.8h, v31.8h                      #! PC = 0x41214c *)
sub %v19 %v30 %v31;
(* add	v28.8h, v28.8h, v29.8h                      #! PC = 0x412150 *)
add %v28 %v28 %v29;
(* add	v30.8h, v30.8h, v31.8h                      #! PC = 0x412154 *)
add %v30 %v30 %v31;
(* ldr	q8, [x28, #128]                             #! EA = L0x415080; Value = 0xd5b4d5b4c0c0c0c0; PC = 0x412158 *)
mov %v8 [L0x415080,L0x415082,L0x415084,L0x415086,L0x415088,L0x41508a,L0x41508c,L0x41508e];
(* mul	v29.8h, v18.8h, v13.8h                      #! PC = 0x41215c *)
mull %mdc %v29 %v18 %v13; cast %v29@int16[8] %v29;
(* sub	v16.8h, v24.8h, v25.8h                      #! PC = 0x412160 *)
sub %v16 %v24 %v25;
(* ldr	q9, [x28, #144]                             #! EA = L0x415090; Value = 0xfbb4fbb4f993f993; PC = 0x412164 *)
mov %v9 [L0x415090,L0x415092,L0x415094,L0x415096,L0x415098,L0x41509a,L0x41509c,L0x41509e];
(* mul	v31.8h, v19.8h, v15.8h                      #! PC = 0x412168 *)
mull %mdc %v31 %v19 %v15; cast %v31@int16[8] %v31;
(* sub	v17.8h, v26.8h, v27.8h                      #! PC = 0x41216c *)
sub %v17 %v26 %v27;
(* ldr	q10, [x28, #160]                            #! EA = L0x4150a0; Value = 0x280728072fa42fa4; PC = 0x412170 *)
mov %v10 [L0x4150a0,L0x4150a2,L0x4150a4,L0x4150a6,L0x4150a8,L0x4150aa,L0x4150ac,L0x4150ae];
(* sqrdmulh	v18.8h, v18.8h, v12.8h                 #! PC = 0x412174 *)
smulj %LO %v18 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v25.8h                      #! PC = 0x412178 *)
add %v24 %v24 %v25;
(* ldr	q11, [x28, #176]                            #! EA = L0x4150b0; Value = 0x0411041104d704d7; PC = 0x41217c *)
mov %v11 [L0x4150b0,L0x4150b2,L0x4150b4,L0x4150b6,L0x4150b8,L0x4150ba,L0x4150bc,L0x4150be];
(* sqrdmulh	v19.8h, v19.8h, v14.8h                 #! PC = 0x412180 *)
smulj %LO %v19 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v26.8h, v26.8h, v27.8h                      #! PC = 0x412184 *)
add %v26 %v26 %v27;
(* mls	v29.8h, v18.8h, v0.h[0]                     #! PC = 0x412188 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x41218c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v29 ((%v28o12 - %v29o12) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o12 - %v31o12) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v29 ((%v28o12 - %v29o12) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ((%v30o12 - %v31o12) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
       %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
       %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 21 21 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v28 = %v28o12 + %v29o12 /\ %v30 = %v30o12 + %v31o12 /\
    %v16 = %v24o12 - %v25o12 /\ %v17 = %v26o12 - %v27o12 /\
    %v24 = %v24o12 + %v25o12 /\ %v26 = %v26o12 + %v27o12 /\
    eqmod %v29 ((%v28o12 - %v29o12) * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ((%v30o12 - %v31o12) * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v28 /\
    %v28<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v28 /\
    %v28<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

ghost %v16o9@int16[8],%v17o9@int16[8],
      %v28o13@int16[8],%v29o13@int16[8],%v30o13@int16[8],%v31o13@int16[8]:
      %v16o9 = %v16 /\ %v17o9 = %v17 /\
      %v28o13 = %v28 /\ %v29o13 = %v29 /\ %v30o13 = %v30 /\ %v31o13 = %v31
   && %v16o9 = %v16 /\ %v17o9 = %v17 /\
      %v28o13 = %v28 /\ %v29o13 = %v29 /\ %v30o13 = %v30 /\ %v31o13 = %v31;

(* ldr	q4, [x28, #64]                              #! EA = L0x415040; Value = 0x3c7b3c7bee9fee9f; PC = 0x412190 *)
mov %v4 [L0x415040,L0x415042,L0x415044,L0x415046,L0x415048,L0x41504a,L0x41504c,L0x41504e];
(* mul	v25.8h, v16.8h, v9.8h                       #! PC = 0x412194 *)
mull %mdc %v25 %v16 %v9; cast %v25@int16[8] %v25;
(* sub	v18.8h, v28.8h, v30.8h                      #! PC = 0x412198 *)
sub %v18 %v28 %v30;
(* ldr	q5, [x28, #80]                              #! EA = L0x415050; Value = 0x06250625fe3cfe3c; PC = 0x41219c *)
mov %v5 [L0x415050,L0x415052,L0x415054,L0x415056,L0x415058,L0x41505a,L0x41505c,L0x41505e];
(* mul	v27.8h, v17.8h, v11.8h                      #! PC = 0x4121a0 *)
mull %mdc %v27 %v17 %v11; cast %v27@int16[8] %v27;
(* sub	v19.8h, v29.8h, v31.8h                      #! PC = 0x4121a4 *)
sub %v19 %v29 %v31;
(* ldr	q6, [x28, #96]                              #! EA = L0x415060; Value = 0x02ec02ece0f9e0f9; PC = 0x4121a8 *)
mov %v6 [L0x415060,L0x415062,L0x415064,L0x415066,L0x415068,L0x41506a,L0x41506c,L0x41506e];
(* sqrdmulh	v16.8h, v16.8h, v8.8h                  #! PC = 0x4121ac *)
smulj %LO %v16 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v28.8h, v28.8h, v30.8h                      #! PC = 0x4121b0 *)
add %v28 %v28 %v30;
(* ldr	q7, [x28, #112]                             #! EA = L0x415070; Value = 0x004c004cfcd9fcd9; PC = 0x4121b4 *)
mov %v7 [L0x415070,L0x415072,L0x415074,L0x415076,L0x415078,L0x41507a,L0x41507c,L0x41507e];
(* sqrdmulh	v17.8h, v17.8h, v10.8h                 #! PC = 0x4121b8 *)
smulj %LO %v17 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v29.8h, v29.8h, v31.8h                      #! PC = 0x4121bc *)
add %v29 %v29 %v31;
(* mls	v25.8h, v16.8h, v0.h[0]                     #! PC = 0x4121c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x4121c4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v25 (%v16o9 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o9 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v25 (%v16o9 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o9 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
       %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
       %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
       %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
       %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
       %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 22 22 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v28o13 - %v30o13 /\ %v19 = %v29o13 - %v31o13 /\
    %v28 = %v28o13 + %v30o13 /\ %v29 = %v29o13 + %v31o13 /\
    eqmod %v25 (%v16o9 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o9 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v18 /\
    %v18<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v28 /\
    %v28<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v18 /\
    %v18<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v28 /\
    %v28<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];
       
ghost %v18o6@int16[8],%v19o6@int16[8],
      %v24o13@int16[8],%v25o13@int16[8],%v26o13@int16[8],%v27o13@int16[8]:
      %v18o6 = %v18 /\ %v19o6 = %v19 /\
      %v24o13 = %v24 /\ %v25o13 = %v25 /\ %v26o13 = %v26 /\ %v27o13 = %v27
   && %v18o6 = %v18 /\ %v19o6 = %v19 /\
      %v24o13 = %v24 /\ %v25o13 = %v25 /\ %v26o13 = %v26 /\ %v27o13 = %v27;

(* mul	v30.8h, v18.8h, v7.8h                       #! PC = 0x4121c8 *)
mull %mdc %v30 %v18 %v7; cast %v30@int16[8] %v30;
(* sub	v16.8h, v24.8h, v26.8h                      #! PC = 0x4121cc *)
sub %v16 %v24 %v26;
(* ldr	q1, [x28, #16]                              #! EA = L0x415010; Value = 0x0000000000000000; PC = 0x4121d0 *)
mov %v1 [L0x415010,L0x415012,L0x415014,L0x415016,L0x415018,L0x41501a,L0x41501c,L0x41501e];
(* mul	v31.8h, v19.8h, v7.8h                       #! PC = 0x4121d4 *)
mull %mdc %v31 %v19 %v7; cast %v31@int16[8] %v31;
(* sub	v17.8h, v25.8h, v27.8h                      #! PC = 0x4121d8 *)
sub %v17 %v25 %v27;
(* ldr	q2, [x28, #32]                              #! EA = L0x415020; Value = 0x21ea21ea2f7c2f7c; PC = 0x4121dc *)
mov %v2 [L0x415020,L0x415022,L0x415024,L0x415026,L0x415028,L0x41502a,L0x41502c,L0x41502e];
(* sqrdmulh	v18.8h, v18.8h, v6.8h                  #! PC = 0x4121e0 *)
smulj %LO %v18 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v24.8h, v24.8h, v26.8h                      #! PC = 0x4121e4 *)
add %v24 %v24 %v26;
(* ldr	q3, [x28, #48]                              #! EA = L0x415030; Value = 0x0372037204d304d3; PC = 0x4121e8 *)
mov %v3 [L0x415030,L0x415032,L0x415034,L0x415036,L0x415038,L0x41503a,L0x41503c,L0x41503e];
(* sqrdmulh	v19.8h, v19.8h, v6.8h                  #! PC = 0x4121ec *)
smulj %LO %v19 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v25.8h, v25.8h, v27.8h                      #! PC = 0x4121f0 *)
add %v25 %v25 %v27;
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x4121f4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x4121f8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v18o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [21]] && true;
assume eqmod %v30 (%v18o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v19o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
       %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
       %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
       %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
       %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 23 23 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v24o13 - %v26o13 /\ %v17 = %v25o13 - %v27o13 /\
    %v24 = %v24o13 + %v26o13 /\ %v25 = %v25o13 + %v27o13 /\
    eqmod %v30 (%v18o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v19o6 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v24 /\
    %v24<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v26 /\
    %v26<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v24 /\
    %v24<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v26 /\
    %v26<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [21]];

ghost %v16o10@int16[8],%v17o10@int16[8],
      %v24o14@int16[8],%v25o14@int16[8],%v28o14@int16[8],%v29o14@int16[8]:
      %v16o10 = %v16 /\ %v17o10 = %v17 /\
      %v24o14 = %v24 /\ %v25o14 = %v25 /\ %v28o14 = %v28 /\ %v29o14 = %v29
   && %v16o10 = %v16 /\ %v17o10 = %v17 /\
      %v24o14 = %v24 /\ %v25o14 = %v25 /\ %v28o14 = %v28 /\ %v29o14 = %v29;

(* mul	v26.8h, v16.8h, v5.8h                       #! PC = 0x4121fc *)
mull %mdc %v26 %v16 %v5; cast %v26@int16[8] %v26;
(* sub	v18.8h, v24.8h, v28.8h                      #! PC = 0x412200 *)
sub %v18 %v24 %v28;
(* mul	v27.8h, v17.8h, v5.8h                       #! PC = 0x412204 *)
mull %mdc %v27 %v17 %v5; cast %v27@int16[8] %v27;
(* sub	v19.8h, v25.8h, v29.8h                      #! PC = 0x412208 *)
sub %v19 %v25 %v29;
(* sqrdmulh	v16.8h, v16.8h, v4.8h                  #! PC = 0x41220c *)
smulj %LO %v16 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v24.8h, v24.8h, v28.8h                      #! PC = 0x412210 *)
add %v24 %v24 %v28;
(* sqrdmulh	v17.8h, v17.8h, v4.8h                  #! PC = 0x412214 *)
smulj %LO %v17 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v25.8h, v25.8h, v29.8h                      #! PC = 0x412218 *)
add %v25 %v25 %v29;
(* mls	v26.8h, v16.8h, v0.h[0]                     #! PC = 0x41221c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* mls	v27.8h, v17.8h, v0.h[0]                     #! PC = 0x412220 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;

assert eqmod %v26 (%v16o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [22]] && true;
assume eqmod %v26 (%v16o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 (%v17o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
       %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
       %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
       %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
       %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
       %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 24 24 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v18 = %v24o14 - %v28o14 /\ %v19 = %v25o14 - %v29o14 /\
    %v24 = %v24o14 + %v28o14 /\ %v25 = %v25o14 + %v29o14 /\
    eqmod %v26 (%v16o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v27 (%v17o10 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v18 /\
    %v18<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v24 /\
    %v24<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v19 /\
    %v19<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v18 /\
    %v18<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v24 /\
    %v24<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v19 /\
    %v19<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [22]];

ghost %v18o7@int16[8],%v19o7@int16[8],
      %v26o14@int16[8],%v27o14@int16[8],%v30o14@int16[8],%v31o14@int16[8]:
      %v18o7 = %v18 /\ %v19o7 = %v19 /\
      %v26o14 = %v26 /\ %v27o14 = %v27 /\ %v30o14 = %v30 /\ %v31o14 = %v31
   && %v18o7 = %v18 /\ %v19o7 = %v19 /\
      %v26o14 = %v26 /\ %v27o14 = %v27 /\ %v30o14 = %v30 /\ %v31o14 = %v31;

(* mul	v28.8h, v18.8h, v3.8h                       #! PC = 0x412224 *)
mull %mdc %v28 %v18 %v3; cast %v28@int16[8] %v28;
(* sub	v16.8h, v26.8h, v30.8h                      #! PC = 0x412228 *)
sub %v16 %v26 %v30;
(* mul	v29.8h, v19.8h, v3.8h                       #! PC = 0x41222c *)
mull %mdc %v29 %v19 %v3; cast %v29@int16[8] %v29;
(* sub	v17.8h, v27.8h, v31.8h                      #! PC = 0x412230 *)
sub %v17 %v27 %v31;
(* sqrdmulh	v18.8h, v18.8h, v2.8h                  #! PC = 0x412234 *)
smulj %LO %v18 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* add	v26.8h, v26.8h, v30.8h                      #! PC = 0x412238 *)
add %v26 %v26 %v30;
(* sqrdmulh	v19.8h, v19.8h, v2.8h                  #! PC = 0x41223c *)
smulj %LO %v19 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v27.8h, v27.8h, v31.8h                      #! PC = 0x412240 *)
add %v27 %v27 %v31;
(* mls	v28.8h, v18.8h, v0.h[0]                     #! PC = 0x412244 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v19.8h, v0.h[0]                     #! PC = 0x412248 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;

assert eqmod %v28 (%v18o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [23]] && true;
assume eqmod %v28 (%v18o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 (%v19o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
       %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
       %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 25 25 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    %v16 = %v26o14 - %v30o14 /\ %v17 = %v27o14 - %v31o14 /\
    %v26 = %v26o14 + %v30o14 /\ %v27 = %v27o14 + %v31o14 /\
    eqmod %v28 (%v18o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 (%v19o7 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v16 /\
    %v16<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v16 /\
    %v16<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [23]];

ghost %v16o11@int16[8],%v17o11@int16[8]:
      %v16o11 = %v16 /\ %v17o11 = %v17
   && %v16o11 = %v16 /\ %v17o11 = %v17;
   
(* mul	v30.8h, v16.8h, v3.8h                       #! PC = 0x41224c *)
mull %mdc %v30 %v16 %v3; cast %v30@int16[8] %v30;
(* mul	v31.8h, v17.8h, v3.8h                       #! PC = 0x412250 *)
mull %mdc %v31 %v17 %v3; cast %v31@int16[8] %v31;
(* sqrdmulh	v16.8h, v16.8h, v2.8h                  #! PC = 0x412254 *)
smulj %LO %v16 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* sqrdmulh	v17.8h, v17.8h, v2.8h                  #! PC = 0x412258 *)
smulj %LO %v17 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* mls	v30.8h, v16.8h, v0.h[0]                     #! PC = 0x41225c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v17.8h, v0.h[0]                     #! PC = 0x412260 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v30 (%v16o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v30 (%v16o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 (%v17o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 26 26 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v30 (%v16o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 (%v17o11 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o15@int16[8],%v25o15@int16[8],%v26o15@int16[8],%v27o15@int16[8],
      %v28o15@int16[8],%v29o15@int16[8],%v30o15@int16[8],%v31o15@int16[8]:
      %v24o15 = %v24 /\ %v25o15 = %v25 /\ %v26o15 = %v26 /\ %v27o15 = %v27 /\
      %v28o15 = %v28 /\ %v29o15 = %v29 /\ %v30o15 = %v30 /\ %v31o15 = %v31
   && %v24o15 = %v24 /\ %v25o15 = %v25 /\ %v26o15 = %v26 /\ %v27o15 = %v27 /\
      %v28o15 = %v28 /\ %v29o15 = %v29 /\ %v30o15 = %v30 /\ %v31o15 = %v31;

(* sqdmulh	v16.8h, v24.8h, v0.h[1]                 #! PC = 0x412264 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* sqdmulh	v17.8h, v25.8h, v0.h[1]                 #! PC = 0x412268 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* sqdmulh	v18.8h, v26.8h, v0.h[1]                 #! PC = 0x41226c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* sqdmulh	v19.8h, v27.8h, v0.h[1]                 #! PC = 0x412270 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x412274 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* sqdmulh	v20.8h, v28.8h, v0.h[1]                 #! PC = 0x412278 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x41227c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* sqdmulh	v21.8h, v29.8h, v0.h[1]                 #! PC = 0x412280 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x412284 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* sqdmulh	v22.8h, v30.8h, v0.h[1]                 #! PC = 0x412288 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x41228c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* sqdmulh	v23.8h, v31.8h, v0.h[1]                 #! PC = 0x412290 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* mls	v24.8h, v16.8h, v0.h[0]                     #! PC = 0x412294 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x412298 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* mls	v25.8h, v17.8h, v0.h[0]                     #! PC = 0x41229c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x4122a0 *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* mls	v26.8h, v18.8h, v0.h[0]                     #! PC = 0x4122a4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x4122a8 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* mls	v27.8h, v19.8h, v0.h[0]                     #! PC = 0x4122ac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x4122b0 *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v28.8h, v20.8h, v0.h[0]                     #! PC = 0x4122b4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v21.8h, v0.h[0]                     #! PC = 0x4122b8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v22.8h, v0.h[0]                     #! PC = 0x4122bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v23.8h, v0.h[0]                     #! PC = 0x4122c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
       prove with [algebra solver isl, cuts [23, 24]] && true;
assume eqmod %v24 %v24o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v25 %v25o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v27 %v27o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 %v29o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 %v31o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v24 /\
       %v24<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v25 /\
       %v25<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v26 /\
       %v26<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v27 /\
       %v27<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v28 /\
       %v28<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v29 /\
       %v29<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v30 /\
       %v30<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<%v31 /\
       %v31<[Q2, Q2, Q2, Q2, Q2, Q2, Q2, Q2]
    && [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v24 /\
       %v24<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v25 /\
       %v25<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v26 /\
       %v26<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v27 /\
       %v27<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v28 /\
       %v28<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v29 /\
       %v29<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v30 /\
       %v30<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
       [NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2]<s%v31 /\
       %v31<s[Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2];

(* add	x28, x28, #0x100                            #! PC = 0x4122c4 *)
adds dc x28 x28 0x100@uint64;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x4122c8 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x4122cc *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x4122d0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x4122d4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x4122d8 *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x4122dc *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x4122e0 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x4122e4 *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc470; PC = 0x4122e8 *)
mov [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e] %v28;
(* trn1	v16.4s, v24.4s, v25.4s                     #! PC = 0x4122ec *)
mov %v16@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v17.4s, v24.4s, v25.4s                     #! PC = 0x4122f0 *)
mov %v17@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc570; PC = 0x4122f4 *)
mov [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] %v29;
(* trn1	v18.4s, v26.4s, v27.4s                     #! PC = 0x4122f8 *)
mov %v18@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v19.4s, v26.4s, v27.4s                     #! PC = 0x4122fc *)
mov %v19@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc490; PC = 0x412300 *)
mov [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e] %v30;
(* trn1	v24.2d, v16.2d, v18.2d                     #! PC = 0x412304 *)
mov %v24@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v26.2d, v16.2d, v18.2d                     #! PC = 0x412308 *)
mov %v26@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc590; PC = 0x41230c *)
mov [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] %v31;
(* trn1	v25.2d, v17.2d, v19.2d                     #! PC = 0x412310 *)
mov %v25@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v27.2d, v17.2d, v19.2d                     #! PC = 0x412314 *)
mov %v27@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x19, x19, #0x1                              #! PC = 0x412318 *)
subc dc x19 x19 0x1@uint64;
(* #cbnz	x19, 0x4120c0 <_intt_bot_loop>            #! PC = 0x41231c *)
#cbnz	%%x19, 0x4120c0 <_intt_bot_loop>            #! 0x41231c = 0x41231c;
(* str	q24, [x0]                                   #! EA = L0xffffffffc460; PC = 0x412320 *)
mov [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e] %v24;
(* str	q25, [x1]                                   #! EA = L0xffffffffc560; PC = 0x412324 *)
mov [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e] %v25;
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc480; PC = 0x412328 *)
mov [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e] %v26;
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc580; PC = 0x41232c *)
mov [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e] %v27;

(* CUT 27 27 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X
           [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
            L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e,
            L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
            L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
          (8*F**2) [Q, X**16 - 17**104] /\
    eqmod (poly X
           [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
            L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e,
            L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
            L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
          (8*F**2) [Q, X**16 - 17**232] /\
    eqmod (poly X
           [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
            L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e,
            L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
            L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
          (8*F**2) [Q, X**16 - 17**120] /\
    eqmod (poly X
           [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
            L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e,
            L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
            L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
          (8*F**2) [Q, X**16 - 17**248]
    prove with [precondition, all ghosts, cuts [21,22,23,24,25]]
 && Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
 /\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
 /\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
 /\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
 /\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
 /\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
 /\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
 /\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
 /\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
 /\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
 /\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
 /\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
 /\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
 /\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
 /\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
 /\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<s
    [Q2,Q2,Q2,Q2]
 /\ [NQ2,NQ2,NQ2,NQ2]<s
    [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
 /\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<s
    [Q2,Q2,Q2,Q2]
    prove with [cuts [23]];

(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffa760; Value = 0x0000000000414860; PC = 0x412330 *)
mov x19 L0xffffffffa760; mov x20 L0xffffffffa768;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffa770; Value = 0x0000000000414cc0; PC = 0x412334 *)
mov x21 L0xffffffffa770; mov x22 L0xffffffffa778;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffa780; Value = 0x0000ffffffffdcd0; PC = 0x412338 *)
mov x23 L0xffffffffa780; mov x24 L0xffffffffa788;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffa790; Value = 0x0000000000000000; PC = 0x41233c *)
mov x25 L0xffffffffa790; mov x26 L0xffffffffa798;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffa7a0; Value = 0x0000000000428de0; PC = 0x412340 *)
mov x27 L0xffffffffa7a0; mov x28 L0xffffffffa7a8;
(* ldp	d8, d9, [sp, #80]                           #! EA = L0xffffffffa7b0; Value = 0x0000000000000000; PC = 0x412344 *)
mov %v8 [L0xffffffffa7b0,L0xffffffffa7b2,L0xffffffffa7b4,L0xffffffffa7b6]++%v8[4:8];
mov %v9 [L0xffffffffa7b8, L0xffffffffa7ba, L0xffffffffa7bc, L0xffffffffa7be]++%v9[4:8];
(* ldp	d10, d11, [sp, #96]                         #! EA = L0xffffffffa7c0; Value = 0x0000000000000000; PC = 0x412348 *)
mov %v10 [L0xffffffffa7c0,L0xffffffffa7c2,L0xffffffffa7c4,L0xffffffffa7c6]++%v10[4:8];
mov %v11 [L0xffffffffa7c8, L0xffffffffa7ca, L0xffffffffa7cc, L0xffffffffa7ce]++%v11[4:8];
(* ldp	d12, d13, [sp, #112]                        #! EA = L0xffffffffa7d0; Value = 0x0000000000000000; PC = 0x41234c *)
mov %v12 [L0xffffffffa7d0,L0xffffffffa7d2,L0xffffffffa7d4,L0xffffffffa7d6]++%v12[4:8];
mov %v13 [L0xffffffffa7d8, L0xffffffffa7da, L0xffffffffa7dc, L0xffffffffa7de]++%v13[4:8];
(* ldp	d14, d15, [sp, #128]                        #! EA = L0xffffffffa7e0; Value = 0x0000000000000000; PC = 0x412350 *)
mov %v14 [L0xffffffffa7e0,L0xffffffffa7e2,L0xffffffffa7e4,L0xffffffffa7e6]++%v14[4:8];
mov %v15 [L0xffffffffa7e8, L0xffffffffa7ea, L0xffffffffa7ec, L0xffffffffa7ee]++%v15[4:8];
(* add	sp, sp, #0x90                               #! PC = 0x412354 *)
adds dc sp sp 0x90@uint64;
(* #! <- SP = 0xffffffffa7f0 *)
#! 0xffffffffa7f0 = 0xffffffffa7f0;
(* #ret                                            #! PC = 0x412358 *)
#ret                                            #! 0x412358 = 0x412358;

{
   eqmod (poly X
          [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
           L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae,
           L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,
           L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be])
         (8*F**2) [Q, X**16 - 17**8] /\
   eqmod (poly X
          [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
           L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce,
           L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,
           L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de])
         (8*F**2) [Q, X**16 - 17**136] /\
   eqmod (poly X
          [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
           L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae,
           L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
           L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
         (8*F**2) [Q, X**16 - 17**24] /\
   eqmod (poly X
          [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
           L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce,
           L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
           L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
         (8*F**2) [Q, X**16 - 17**152] /\
   eqmod (poly X
          [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
           L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee,
           L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,
           L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe])
         (8*F**2) [Q, X**16 - 17**72] /\
   eqmod (poly X
          [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
           L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e,
           L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
           L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e])
         (8*F**2) [Q, X**16 - 17**200] /\
   eqmod (poly X
          [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
           L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee,
           L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
           L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
         (8*F**2) [Q, X**16 - 17**88] /\
   eqmod (poly X
          [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
           L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e,
           L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
           L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e])
         (8*F**2) [Q, X**16 - 17**216] /\
   eqmod (poly X
          [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
           L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e,
           L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
           L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e])
         (8*F**2) [Q, X**16 - 17**40] /\
   eqmod (poly X
          [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
           L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e,
           L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
           L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
         (8*F**2) [Q, X**16 - 17**168] /\
   eqmod (poly X
          [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
           L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e,
           L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
           L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e])
         (8*F**2) [Q, X**16 - 17**56] /\
   eqmod (poly X
          [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
           L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e,
           L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
           L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
         (8*F**2) [Q, X**16 - 17**184] /\
   eqmod (poly X
          [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
           L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e,
           L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
           L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
         (8*F**2) [Q, X**16 - 17**104] /\
   eqmod (poly X
          [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
           L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e,
           L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
           L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
         (8*F**2) [Q, X**16 - 17**232] /\
   eqmod (poly X
          [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
           L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e,
           L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
           L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
         (8*F**2) [Q, X**16 - 17**120] /\
   eqmod (poly X
          [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
           L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e,
           L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
           L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
         (8*F**2) [Q, X**16 - 17**248] /\
   F00**2=A00*X**  0+A01*X**  1+A02*X**  2+A03*X**  3+
          A04*X**  4+A05*X**  5+A06*X**  6+A07*X**  7 /\
   F08**2=A08*X**  8+A09*X**  9+A0a*X** 10+A0b*X** 11+
          A0c*X** 12+A0d*X** 13+A0e*X** 14+A0f*X** 15 /\
   F10**2=A10*X** 16+A11*X** 17+A12*X** 18+A13*X** 19+
          A14*X** 20+A15*X** 21+A16*X** 22+A17*X** 23 /\
   F18**2=A18*X** 24+A19*X** 25+A1a*X** 26+A1b*X** 27+
          A1c*X** 28+A1d*X** 29+A1e*X** 30+A1f*X** 31 /\
   F20**2=A20*X** 32+A21*X** 33+A22*X** 34+A23*X** 35+
          A24*X** 36+A25*X** 37+A26*X** 38+A27*X** 39 /\
   F28**2=A28*X** 40+A29*X** 41+A2a*X** 42+A2b*X** 43+
          A2c*X** 44+A2d*X** 45+A2e*X** 46+A2f*X** 47 /\
   F30**2=A30*X** 48+A31*X** 49+A32*X** 50+A33*X** 51+
          A34*X** 52+A35*X** 53+A36*X** 54+A37*X** 55 /\
   F38**2=A38*X** 56+A39*X** 57+A3a*X** 58+A3b*X** 59+
          A3c*X** 60+A3d*X** 61+A3e*X** 62+A3f*X** 63 /\
   F40**2=A40*X** 64+A41*X** 65+A42*X** 66+A43*X** 67+
          A44*X** 68+A45*X** 69+A46*X** 70+A47*X** 71 /\
   F48**2=A48*X** 72+A49*X** 73+A4a*X** 74+A4b*X** 75+
          A4c*X** 76+A4d*X** 77+A4e*X** 78+A4f*X** 79 /\
   F50**2=A50*X** 80+A51*X** 81+A52*X** 82+A53*X** 83+
          A54*X** 84+A55*X** 85+A56*X** 86+A57*X** 87 /\
   F58**2=A58*X** 88+A59*X** 89+A5a*X** 90+A5b*X** 91+
          A5c*X** 92+A5d*X** 93+A5e*X** 94+A5f*X** 95 /\
   F60**2=A60*X** 96+A61*X** 97+A62*X** 98+A63*X** 99+
          A64*X**100+A65*X**101+A66*X**102+A67*X**103 /\
   F68**2=A68*X**104+A69*X**105+A6a*X**106+A6b*X**107+
          A6c*X**108+A6d*X**109+A6e*X**110+A6f*X**111 /\
   F70**2=A70*X**112+A71*X**113+A72*X**114+A73*X**115+
          A74*X**116+A75*X**117+A76*X**118+A77*X**119 /\
   F78**2=A78*X**120+A79*X**121+A7a*X**122+A7b*X**123+
          A7c*X**124+A7d*X**125+A7e*X**126+A7f*X**127 /\
   F80**2=A80*X**128+A81*X**129+A82*X**130+A83*X**131+
          A84*X**132+A85*X**133+A86*X**134+A87*X**135 /\
   F88**2=A88*X**136+A89*X**137+A8a*X**138+A8b*X**139+
          A8c*X**140+A8d*X**141+A8e*X**142+A8f*X**143 /\
   F90**2=A90*X**144+A91*X**145+A92*X**146+A93*X**147+
          A94*X**148+A95*X**149+A96*X**150+A97*X**151 /\
   F98**2=A98*X**152+A99*X**153+A9a*X**154+A9b*X**155+
          A9c*X**156+A9d*X**157+A9e*X**158+A9f*X**159 /\
   Fa0**2=Aa0*X**160+Aa1*X**161+Aa2*X**162+Aa3*X**163+
          Aa4*X**164+Aa5*X**165+Aa6*X**166+Aa7*X**167 /\
   Fa8**2=Aa8*X**168+Aa9*X**169+Aaa*X**170+Aab*X**171+
          Aac*X**172+Aad*X**173+Aae*X**174+Aaf*X**175 /\
   Fb0**2=Ab0*X**176+Ab1*X**177+Ab2*X**178+Ab3*X**179+
          Ab4*X**180+Ab5*X**181+Ab6*X**182+Ab7*X**183 /\
   Fb8**2=Ab8*X**184+Ab9*X**185+Aba*X**186+Abb*X**187+
          Abc*X**188+Abd*X**189+Abe*X**190+Abf*X**191 /\
   Fc0**2=Ac0*X**192+Ac1*X**193+Ac2*X**194+Ac3*X**195+
          Ac4*X**196+Ac5*X**197+Ac6*X**198+Ac7*X**199 /\
   Fc8**2=Ac8*X**200+Ac9*X**201+Aca*X**202+Acb*X**203+
          Acc*X**204+Acd*X**205+Ace*X**206+Acf*X**207 /\
   Fd0**2=Ad0*X**208+Ad1*X**209+Ad2*X**210+Ad3*X**211+
          Ad4*X**212+Ad5*X**213+Ad6*X**214+Ad7*X**215 /\
   Fd8**2=Ad8*X**216+Ad9*X**217+Ada*X**218+Adb*X**219+
          Adc*X**220+Add*X**221+Ade*X**222+Adf*X**223 /\
   Fe0**2=Ae0*X**224+Ae1*X**225+Ae2*X**226+Ae3*X**227+
          Ae4*X**228+Ae5*X**229+Ae6*X**230+Ae7*X**231 /\
   Fe8**2=Ae8*X**232+Ae9*X**233+Aea*X**234+Aeb*X**235+
          Aec*X**236+Aed*X**237+Aee*X**238+Aef*X**239 /\
   Ff0**2=Af0*X**240+Af1*X**241+Af2*X**242+Af3*X**243+
          Af4*X**244+Af5*X**245+Af6*X**246+Af7*X**247 /\
   Ff8**2=Af8*X**248+Af9*X**249+Afa*X**250+Afb*X**251+
          Afc*X**252+Afd*X**253+Afe*X**254+Aff*X**255 /\
   F**2=F00**2+F08**2+F10**2+F18**2+F20**2+F28**2+F30**2+F38**2+
        F40**2+F48**2+F50**2+F58**2+F60**2+F68**2+F70**2+F78**2+
        F80**2+F88**2+F90**2+F98**2+Fa0**2+Fa8**2+Fb0**2+Fb8**2+
        Fc0**2+Fc8**2+Fd0**2+Fd8**2+Fe0**2+Fe8**2+Ff0**2+Ff8**2
   prove with [precondition, cuts [6, 13, 20]]
&&
   [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
/\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
/\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
/\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
/\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
/\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
/\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
/\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
/\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
/\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
/\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
/\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
/\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<s
   [Q2,Q2,Q2,Q2]
/\ [NQ2,NQ2,NQ2,NQ2]<s
   [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<s
   [Q2,Q2,Q2,Q2]
   prove with [cuts [6, 13, 20]]
}

