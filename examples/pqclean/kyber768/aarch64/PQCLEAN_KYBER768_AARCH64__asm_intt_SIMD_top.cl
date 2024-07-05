(* quine: cv.exe -v -slicing -isafety -vo appearing -jobs 40 -enable_rewriting:eqmod PQCLEAN_KYBER768_AARCH64__asm_intt_SIMD_bot.cl
Parsing CryptoLine file:                    [OK]            0.1142 seconds
Checking well-formedness:                   [OK]            0.0329 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0318 seconds
Normalizing specification:                  [OK]            0.0250 seconds
Rewriting assignments:                      [OK]            0.0278 seconds
Verifying program safety:Overall                             [OK]            16.9187 seconds
Verifying range assertions:                 [OK]            0.0041 seconds
Verifying range specification:              [OK]            0.7687 seconds
Rewriting value-preserved casting:          [OK]            0.0239 seconds
Verifying algebraic assertions:             [OK]            61.9630 seconds
Verifying algebraic specification:          [OK]            7.2919 seconds
Procedure verification:                     [OK]            87.0701 seconds

Summary
-------
Verification result:                        [OK]            87.2174 seconds
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
int16 Q, int16 NQ, int16 B, int16 NB, int16 F, int16 X
) =
{
   Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
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
/\ [NB,NB,NB,NB]<[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
/\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
/\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
/\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
/\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
/\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
/\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
/\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
/\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
/\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
/\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
/\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
/\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<[B,B,B,B]
/\ [NB,NB,NB,NB]<[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<[B,B,B,B]
&& Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
   [NB,NB,NB,NB]<s[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]
/\ [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
/\ [L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]
/\ [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]
/\ [L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]
/\ [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
/\ [L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]
/\ [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]
/\ [L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]
/\ [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
/\ [L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]
/\ [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]
/\ [L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<s[B,B,B,B]
/\ [NB,NB,NB,NB]<s[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<s[B,B,B,B]
}

ghost %check00@int16[8],%check01@int16[8],%check02@int16[8],%check03@int16[8],
      %check04@int16[8],%check05@int16[8],%check06@int16[8],%check07@int16[8],
      %check08@int16[8],%check09@int16[8],%check0a@int16[8],%check0b@int16[8],
      %check0c@int16[8],%check0d@int16[8],%check0e@int16[8],%check0f@int16[8],
      %check10@int16[8],%check11@int16[8],%check12@int16[8],%check13@int16[8],
      %check14@int16[8],%check15@int16[8],%check16@int16[8],%check17@int16[8],
      %check18@int16[8],%check19@int16[8],%check1a@int16[8],%check1b@int16[8],
      %check1c@int16[8],%check1d@int16[8],%check1e@int16[8],%check1f@int16[8]:
      true && true;

nondet  sp@uint64;nondet  x0@uint64;nondet  x1@uint64;
nondet x19@uint64;nondet x20@uint64;nondet x21@uint64;nondet x22@uint64;
nondet x23@uint64;nondet x24@uint64;nondet x25@uint64;nondet x26@uint64;
nondet x27@uint64;nondet x28@uint64;
nondet  %v4@int16[8];nondet  %v8@int16[8];nondet  %v9@int16[8];
nondet %v10@int16[8];nondet %v11@int16[8];nondet %v12@int16[8];
nondet %v13@int16[8];nondet %v14@int16[8];nondet %v15@int16[8];

(**************** constants ****************)

mov L0x414860 0x0d01@int16;mov L0x414868 0x4ebf@int16;
mov L0x41486a 0x13b0@int16;mov L0x41486c 0x0200@int16;
mov L0x41486e 0x0a3a@int16;mov L0x414870 0x010a@int16;
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

(* #! -> SP = 0xffffffffa820 *)
#! 0xffffffffa820 = 0xffffffffa820;
(* sub	sp, sp, #0x90                               #! PC = 0x41235c *)
subc dc sp sp 0x90@uint64;
(* stp	x19, x20, [sp]                              #! EA = L0xffffffffa790; PC = 0x412360 *)
mov L0xffffffffa790 x19; mov L0xffffffffa798 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0xffffffffa7a0; PC = 0x412364 *)
mov L0xffffffffa7a0 x21; mov L0xffffffffa7a8 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0xffffffffa7b0; PC = 0x412368 *)
mov L0xffffffffa7b0 x23; mov L0xffffffffa7b8 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0xffffffffa7c0; PC = 0x41236c *)
mov L0xffffffffa7c0 x25; mov L0xffffffffa7c8 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0xffffffffa7d0; PC = 0x412370 *)
mov L0xffffffffa7d0 x27; mov L0xffffffffa7d8 x28;
(* stp	d8, d9, [sp, #80]                           #! EA = L0xffffffffa7e0; PC = 0x412374 *)
mov [L0xffffffffa7e0,L0xffffffffa7e2,L0xffffffffa7e4,L0xffffffffa7e6] %v8[0:4];
mov [L0xffffffffa7e8,L0xffffffffa7ea,L0xffffffffa7ec,L0xffffffffa7ee] %v9[0:4];
(* stp	d10, d11, [sp, #96]                         #! EA = L0xffffffffa7f0; PC = 0x412378 *)
mov [L0xffffffffa7f0,L0xffffffffa7f2,L0xffffffffa7f4,L0xffffffffa7f6] %v10[0:4];
mov [L0xffffffffa7f8,L0xffffffffa7fa,L0xffffffffa7fc,L0xffffffffa7fe] %v11[0:4];
(* stp	d12, d13, [sp, #112]                        #! EA = L0xffffffffa800; PC = 0x41237c *)
mov [L0xffffffffa800,L0xffffffffa802,L0xffffffffa804,L0xffffffffa806] %v12[0:4];
mov [L0xffffffffa808,L0xffffffffa80a,L0xffffffffa80c,L0xffffffffa80e] %v13[0:4];
(* stp	d14, d15, [sp, #128]                        #! EA = L0xffffffffa810; PC = 0x412380 *)
mov [L0xffffffffa810,L0xffffffffa812,L0xffffffffa814,L0xffffffffa816] %v14[0:4];
mov [L0xffffffffa818,L0xffffffffa81a,L0xffffffffa81c,L0xffffffffa81e] %v15[0:4];
(* ldrsh	w20, [x2]                                 #! EA = L0x414860; Value = 0x7ff6fdf60cff0d01; PC = 0x412384 *)
mov w20 L0x414860;
(* ldrsh	w21, [x2, #8]                             #! EA = L0x414868; Value = 0x0a3a020013b04ebf; PC = 0x412388 *)
mov w21 L0x414868;
(* ldur	w22, [x2, #10]                             #! EA = L0x41486a; Value = 0x010a0a3a020013b0; PC = 0x41238c *)
mov %w22@int16[2] [L0x41486a, L0x41486c];
(* ldur	w23, [x2, #14]                             #! EA = L0x41486e; Value = 0x00000000010a0a3a; PC = 0x412390 *)
mov %w23@int16[2] [L0x41486e, L0x414870];
(* mov	v4.s[0], w22                                #! PC = 0x412394 *)
mov %v4 %w22[0:2]++%v4[2:8];
(* mov	v4.s[1], w23                                #! PC = 0x412398 *)
mov %v4 %v4[0:2]++%w23[0:2]++%v4[4:8];
(* ldr	q0, [x1]                                    #! EA = L0x414cc0; Value = 0x06403d8500000000; PC = 0x41239c *)
mov %v0 [L0x414cc0,L0x414cc2,L0x414cc4,L0x414cc6,L0x414cc8,L0x414cca,L0x414ccc,L0x414cce];
(* mov	v0.h[0], w20                                #! PC = 0x4123a0 *)
mov %v0 [w20]++%v0[1:8];
(* ldr	q1, [x1, #16]                               #! EA = L0x414cd0; Value = 0x0598370ffcb0df65; PC = 0x4123a4 *)
mov %v1 [L0x414cd0,L0x414cd2,L0x414cd4,L0x414cd6,L0x414cd8,L0x414cda,L0x414cdc,L0x414cde];
(* ldr	q2, [x1, #32]                               #! EA = L0x414ce0; Value = 0xfdc7ea1f062f3cde; PC = 0x4123a8 *)
mov %v2 [L0x414ce0,L0x414ce2,L0x414ce4,L0x414ce6,L0x414ce8,L0x414cea,L0x414cec,L0x414cee];
(* ldr	q3, [x1, #48]                               #! EA = L0x414cf0; Value = 0xff3ff894fce3e15b; PC = 0x4123ac *)
mov %v3 [L0x414cf0,L0x414cf2,L0x414cf4,L0x414cf6,L0x414cf8,L0x414cfa,L0x414cfc,L0x414cfe];
(* ldr	q16, [x0, #256]                             #! EA = L0xffffffffc4a0; Value = 0x0189ff06fd1403ed; PC = 0x4123b0 *)
mov %v16 [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae];
(* ldr	q17, [x0, #288]                             #! EA = L0xffffffffc4c0; Value = 0x0184fac1ff07fb4d; PC = 0x4123b4 *)
mov %v17 [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce];
(* ldr	q18, [x0, #320]                             #! EA = L0xffffffffc4e0; Value = 0x05d7f9ec05c2fcfd; PC = 0x4123b8 *)
mov %v18 [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee];
(* ldr	q19, [x0, #352]                             #! EA = L0xffffffffc500; Value = 0x0011ffa3010dfceb; PC = 0x4123bc *)
mov %v19 [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e];
(* ldr	q20, [x0, #384]                             #! EA = L0xffffffffc520; Value = 0x050ffceb03f900d3; PC = 0x4123c0 *)
mov %v20 [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e];
(* ldr	q21, [x0, #416]                             #! EA = L0xffffffffc540; Value = 0xffe2fb4e044a021e; PC = 0x4123c4 *)
mov %v21 [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e];
(* ldr	q22, [x0, #448]                             #! EA = L0xffffffffc560; Value = 0xff1efa85fc55027d; PC = 0x4123c8 *)
mov %v22 [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e];
(* ldr	q23, [x0, #480]                             #! EA = L0xffffffffc580; Value = 0xfee0faadfd83fc7c; PC = 0x4123cc *)
mov %v23 [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e];

ghost %v16o0@int16[8],%v17o0@int16[8],%v18o0@int16[8],%v19o0@int16[8],
      %v20o0@int16[8],%v21o0@int16[8],%v22o0@int16[8],%v23o0@int16[8]:
      %v16o0 = %v16 /\ %v17o0 = %v17 /\ %v18o0 = %v18 /\ %v19o0 = %v19 /\
      %v20o0 = %v20 /\ %v21o0 = %v21 /\ %v22o0 = %v22 /\ %v23o0 = %v23
   && %v16o0 = %v16 /\ %v17o0 = %v17 /\ %v18o0 = %v18 /\ %v19o0 = %v19 /\
      %v20o0 = %v20 /\ %v21o0 = %v21 /\ %v22o0 = %v22 /\ %v23o0 = %v23;
      
(* sub	v28.8h, v16.8h, v17.8h                      #! PC = 0x4123d0 *)
sub %v28 %v16 %v17;
(* ldr	q8, [x0]                                    #! EA = L0xffffffffc3a0; Value = 0x0051fc66fc41059c; PC = 0x4123d4 *)
mov %v8 [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae];
(* sub	v29.8h, v18.8h, v19.8h                      #! PC = 0x4123d8 *)
sub %v29 %v18 %v19;
(* ldr	q9, [x0, #32]                               #! EA = L0xffffffffc3c0; Value = 0xfaa000240081056a; PC = 0x4123dc *)
mov %v9 [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce];
(* sub	v30.8h, v20.8h, v21.8h                      #! PC = 0x4123e0 *)
sub %v30 %v20 %v21;
(* ldr	q10, [x0, #64]                              #! EA = L0xffffffffc3e0; Value = 0x0488062f00b5ff0e; PC = 0x4123e4 *)
mov %v10 [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee];
(* sub	v31.8h, v22.8h, v23.8h                      #! PC = 0x4123e8 *)
sub %v31 %v22 %v23;
(* ldr	q11, [x0, #96]                              #! EA = L0xffffffffc400; Value = 0x0394fd41ffb30044; PC = 0x4123ec *)
mov %v11 [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e];
(* add	v16.8h, v16.8h, v17.8h                      #! PC = 0x4123f0 *)
add %v16 %v16 %v17;
(* ldr	q12, [x0, #128]                             #! EA = L0xffffffffc420; Value = 0x0096fa45fb470033; PC = 0x4123f4 *)
mov %v12 [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e];
(* add	v18.8h, v18.8h, v19.8h                      #! PC = 0x4123f8 *)
add %v18 %v18 %v19;
(* ldr	q13, [x0, #160]                             #! EA = L0xffffffffc440; Value = 0xfa07fd74ff4b0622; PC = 0x4123fc *)
mov %v13 [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e];
(* add	v20.8h, v20.8h, v21.8h                      #! PC = 0x412400 *)
add %v20 %v20 %v21;
(* ldr	q14, [x0, #192]                             #! EA = L0xffffffffc460; Value = 0x051903a1fed4f9cb; PC = 0x412404 *)
mov %v14 [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e];
(* add	v22.8h, v22.8h, v23.8h                      #! PC = 0x412408 *)
add %v22 %v22 %v23;
(* ldr	q15, [x0, #224]                             #! EA = L0xffffffffc480; Value = 0xf9f8fac204ce008d; PC = 0x41240c *)
mov %v15 [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e];

ghost  %v8o0@int16[8], %v9o0@int16[8],%v10o0@int16[8],%v11o0@int16[8],
      %v12o0@int16[8],%v13o0@int16[8],%v14o0@int16[8],%v15o0@int16[8]:
       %v8o0 =  %v8 /\  %v9o0 =  %v9 /\ %v10o0 = %v10 /\ %v11o0 = %v11 /\
      %v12o0 = %v12 /\ %v13o0 = %v13 /\ %v14o0 = %v14 /\ %v15o0 = %v15
   &&  %v8o0 =  %v8 /\  %v9o0 =  %v9 /\ %v10o0 = %v10 /\ %v11o0 = %v11 /\
      %v12o0 = %v12 /\ %v13o0 = %v13 /\ %v14o0 = %v14 /\ %v15o0 = %v15;
      
(* mul	v17.8h, v28.8h, v3.h[1]                     #! PC = 0x412410 *)
broadcast %mul 8 [%v3[1]]; mull %mdc %v17 %v28 %mul; cast %v17@int16[8] %v17;
(* sub	v24.8h, v8.8h, v9.8h                        #! PC = 0x412414 *)
sub %v24 %v8 %v9;
(* mul	v19.8h, v29.8h, v3.h[3]                     #! PC = 0x412418 *)
broadcast %mul 8 [%v3[3]]; mull %mdc %v19 %v29 %mul; cast %v19@int16[8] %v19;
(* sub	v25.8h, v10.8h, v11.8h                      #! PC = 0x41241c *)
sub %v25 %v10 %v11;
(* mul	v21.8h, v30.8h, v3.h[5]                     #! PC = 0x412420 *)
broadcast %mul 8 [%v3[5]]; mull %mdc %v21 %v30 %mul; cast %v21@int16[8] %v21;
(* sub	v26.8h, v12.8h, v13.8h                      #! PC = 0x412424 *)
sub %v26 %v12 %v13;
(* mul	v23.8h, v31.8h, v3.h[7]                     #! PC = 0x412428 *)
broadcast %mul 8 [%v3[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v14.8h, v15.8h                      #! PC = 0x41242c *)
sub %v27 %v14 %v15;
(* sqrdmulh	v28.8h, v28.8h, v3.h[0]                #! PC = 0x412430 *)
broadcast %sqrdmulh 8 [%v3[0]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v9.8h                         #! PC = 0x412434 *)
add %v8 %v8 %v9;
(* sqrdmulh	v29.8h, v29.8h, v3.h[2]                #! PC = 0x412438 *)
broadcast %sqrdmulh 8 [%v3[2]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v10.8h, v10.8h, v11.8h                      #! PC = 0x41243c *)
add %v10 %v10 %v11;
(* sqrdmulh	v30.8h, v30.8h, v3.h[4]                #! PC = 0x412440 *)
broadcast %sqrdmulh 8 [%v3[4]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v12.8h, v12.8h, v13.8h                      #! PC = 0x412444 *)
add %v12 %v12 %v13;
(* sqrdmulh	v31.8h, v31.8h, v3.h[6]                #! PC = 0x412448 *)
broadcast %sqrdmulh 8 [%v3[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v14.8h, v14.8h, v15.8h                      #! PC = 0x41244c *)
add %v14 %v14 %v15;
(* mls	v17.8h, v28.8h, v0.h[0]                     #! PC = 0x412450 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;
(* mls	v19.8h, v29.8h, v0.h[0]                     #! PC = 0x412454 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;
(* mls	v21.8h, v30.8h, v0.h[0]                     #! PC = 0x412458 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x41245c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v17 ((%v16o0 - %v17o0) *
                   [%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 ((%v18o0 - %v19o0) *
                   [%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ((%v20o0 - %v21o0) *
                   [%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ((%v22o0 - %v23o0) *
                   [%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q]  /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v17 ((%v16o0 - %v17o0) *
                   [%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 ((%v18o0 - %v19o0) *
                   [%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ((%v20o0 - %v21o0) *
                   [%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ((%v22o0 - %v23o0) *
                   [%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
       %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
       %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
       %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
       %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
       %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
       %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
       %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
       %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
       %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
       %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
       %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
       %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
       prove with [algebra solver isl, precondition]
   && true;
assume [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
       %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
       %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
       %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
       %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
       %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
       %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
       %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
       %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
       %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
       %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
       %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
       %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
    && [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v16 /\
       %v16<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v18 /\
       %v18<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v20 /\
       %v20<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v22 /\
       %v22<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v8 /\
       %v8<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v10 /\
       %v10<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v12 /\
       %v12<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v14 /\
       %v14<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v24 /\
       %v24<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v25 /\
       %v25<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v26 /\
       %v26<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v27 /\
       %v27<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B];

(* CUT 0 0 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = %v16o0 + %v17o0 /\ %v18 = %v18o0 + %v19o0 /\
    %v20 = %v20o0 + %v21o0 /\ %v22 = %v22o0 + %v23o0 /\
     %v8 =  %v8o0 +  %v9o0 /\ %v10 = %v10o0 + %v11o0 /\
    %v12 = %v12o0 + %v13o0 /\ %v14 = %v14o0 + %v15o0 /\
    %v24 =  %v8o0 -  %v9o0 /\ %v25 = %v10o0 - %v11o0 /\
    %v26 = %v12o0 - %v13o0 /\ %v27 = %v14o0 - %v15o0 /\
    eqmod %v17 ((%v16o0 - %v17o0) *
                [%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 ((%v18o0 - %v19o0) *
                [%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ((%v20o0 - %v21o0) *
                [%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ((%v22o0 - %v23o0) *
                [%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
    %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
    %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
    %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
    %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
    %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
    %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
    %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
    %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
    %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
    %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
    %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
    %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v16 /\
    %v16<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v18 /\
    %v18<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v20 /\
    %v20<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v22 /\
    %v22<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v8 /\
    %v8<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v10 /\
    %v10<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v12 /\
    %v12<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v14 /\
    %v14<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v24 /\
    %v24<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v25 /\
    %v25<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v26 /\
    %v26<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v27 /\
    %v27<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B];

ghost %v24o0@int16[8],%v25o0@int16[8],%v26o0@int16[8],%v27o0@int16[8],
      %v16o1@int16[8],%v17o1@int16[8],%v18o1@int16[8],%v19o1@int16[8],
      %v20o1@int16[8],%v21o1@int16[8],%v22o1@int16[8],%v23o1@int16[8]:
      %v24o0 = %v24 /\ %v25o0 = %v25 /\ %v26o0 = %v26 /\ %v27o0 = %v27 /\
      %v16o1 = %v16 /\ %v17o1 = %v17 /\ %v18o1 = %v18 /\ %v19o1 = %v19 /\
      %v20o1 = %v20 /\ %v21o1 = %v21 /\ %v22o1 = %v22 /\ %v23o1 = %v23
   && %v24o0 = %v24 /\ %v25o0 = %v25 /\ %v26o0 = %v26 /\ %v27o0 = %v27 /\
      %v16o1 = %v16 /\ %v17o1 = %v17 /\ %v18o1 = %v18 /\ %v19o1 = %v19 /\
      %v20o1 = %v20 /\ %v21o1 = %v21 /\ %v22o1 = %v22 /\ %v23o1 = %v23;
      
(* mul	v9.8h, v24.8h, v2.h[1]                      #! PC = 0x412460 *)
broadcast %mul 8 [%v2[1]]; mull %mdc %v9 %v24 %mul; cast %v9@int16[8] %v9;
(* sub	v28.8h, v16.8h, v18.8h                      #! PC = 0x412464 *)
sub %v28 %v16 %v18;
(* mul	v11.8h, v25.8h, v2.h[3]                     #! PC = 0x412468 *)
broadcast %mul 8 [%v2[3]]; mull %mdc %v11 %v25 %mul; cast %v11@int16[8] %v11;
(* sub	v29.8h, v17.8h, v19.8h                      #! PC = 0x41246c *)
sub %v29 %v17 %v19;
(* mul	v13.8h, v26.8h, v2.h[5]                     #! PC = 0x412470 *)
broadcast %mul 8 [%v2[5]]; mull %mdc %v13 %v26 %mul; cast %v13@int16[8] %v13;
(* sub	v30.8h, v20.8h, v22.8h                      #! PC = 0x412474 *)
sub %v30 %v20 %v22;
(* mul	v15.8h, v27.8h, v2.h[7]                     #! PC = 0x412478 *)
broadcast %mul 8 [%v2[7]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v21.8h, v23.8h                      #! PC = 0x41247c *)
sub %v31 %v21 %v23;
(* sqrdmulh	v24.8h, v24.8h, v2.h[0]                #! PC = 0x412480 *)
broadcast %sqrdmulh 8 [%v2[0]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v16.8h, v16.8h, v18.8h                      #! PC = 0x412484 *)
add %v16 %v16 %v18;
(* sqrdmulh	v25.8h, v25.8h, v2.h[2]                #! PC = 0x412488 *)
broadcast %sqrdmulh 8 [%v2[2]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v17.8h, v17.8h, v19.8h                      #! PC = 0x41248c *)
add %v17 %v17 %v19;
(* sqrdmulh	v26.8h, v26.8h, v2.h[4]                #! PC = 0x412490 *)
broadcast %sqrdmulh 8 [%v2[4]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v20.8h, v20.8h, v22.8h                      #! PC = 0x412494 *)
add %v20 %v20 %v22;
(* sqrdmulh	v27.8h, v27.8h, v2.h[6]                #! PC = 0x412498 *)
broadcast %sqrdmulh 8 [%v2[6]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v21.8h, v21.8h, v23.8h                      #! PC = 0x41249c *)
add %v21 %v21 %v23;
(* mls	v9.8h, v24.8h, v0.h[0]                      #! PC = 0x4124a0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v9 %v9 %mls;
(* mls	v11.8h, v25.8h, v0.h[0]                     #! PC = 0x4124a4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;
(* mls	v13.8h, v26.8h, v0.h[0]                     #! PC = 0x4124a8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x4124ac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;

assert eqmod %v9 (%v24o0 *
                  [%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o0 *
                   [%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v26o0 *
                   [%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o0 *
                   [%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v9 (%v24o0 *
                  [%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o0 *
                   [%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v26o0 *
                   [%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o0 *
                   [%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9 /\ %v9<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
       %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
       %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
       %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
       %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
       %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, precondition]
   && true;
assume [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
       %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
       %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
       %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
       %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
       %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v16 /\
       %v16<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
       %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v20 /\
       %v20<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v21 /\
       %v21<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v28 /\
       %v28<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
       %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v30 /\
       %v30<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
       %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 1 1 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = %v16o1 + %v18o1 /\ %v17 = %v17o1 + %v19o1 /\
    %v20 = %v20o1 + %v22o1 /\ %v21 = %v21o1 + %v23o1 /\
    %v28 = %v16o1 - %v18o1 /\ %v29 = %v17o1 - %v19o1 /\
    %v30 = %v20o1 - %v22o1 /\ %v31 = %v21o1 - %v23o1 /\
    eqmod %v9 (%v24o0 *
               [%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v11 (%v25o0 *
                [%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v13 (%v26o0 *
                [%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o0 *
                [%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
    %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
    %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
    %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
    %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
    %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
    %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9 /\ %v9<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v16 /\
    %v16<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v20 /\
    %v20<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v21 /\
    %v21<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v28 /\
    %v28<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v30 /\
    %v30<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
    %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

ghost %v28o0@int16[8],%v29o0@int16[8],%v30o0@int16[8],%v31o0@int16[8],
       %v8o1@int16[8], %v9o1@int16[8],%v10o1@int16[8],%v11o1@int16[8],
      %v12o1@int16[8],%v13o1@int16[8],%v14o1@int16[8],%v15o1@int16[8]:
      %v28o0 = %v28 /\ %v29o0 = %v29 /\ %v30o0 = %v30 /\ %v31o0 = %v31 /\
       %v8o1 =  %v8 /\  %v9o1 =  %v9 /\ %v10o1 = %v10 /\ %v11o1 = %v11 /\
      %v12o1 = %v12 /\ %v13o1 = %v13 /\ %v14o1 = %v14 /\ %v15o1 = %v15
   && %v28o0 = %v28 /\ %v29o0 = %v29 /\ %v30o0 = %v30 /\ %v31o0 = %v31 /\
       %v8o1 =  %v8 /\  %v9o1 =  %v9 /\ %v10o1 = %v10 /\ %v11o1 = %v11 /\
      %v12o1 = %v12 /\ %v13o1 = %v13 /\ %v14o1 = %v14 /\ %v15o1 = %v15;

(* mul	v18.8h, v28.8h, v1.h[5]                     #! PC = 0x4124b0 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v18 %v28 %mul; cast %v18@int16[8] %v18;
(* sub	v24.8h, v8.8h, v10.8h                       #! PC = 0x4124b4 *)
sub %v24 %v8 %v10;
(* mul	v19.8h, v29.8h, v1.h[5]                     #! PC = 0x4124b8 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v19 %v29 %mul; cast %v19@int16[8] %v19;
(* sub	v25.8h, v9.8h, v11.8h                       #! PC = 0x4124bc *)
sub %v25 %v9 %v11;
(* mul	v22.8h, v30.8h, v1.h[7]                     #! PC = 0x4124c0 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v22 %v30 %mul; cast %v22@int16[8] %v22;
(* sub	v26.8h, v12.8h, v14.8h                      #! PC = 0x4124c4 *)
sub %v26 %v12 %v14;
(* mul	v23.8h, v31.8h, v1.h[7]                     #! PC = 0x4124c8 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v13.8h, v15.8h                      #! PC = 0x4124cc *)
sub %v27 %v13 %v15;
(* sqrdmulh	v28.8h, v28.8h, v1.h[4]                #! PC = 0x4124d0 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v10.8h                        #! PC = 0x4124d4 *)
add %v8 %v8 %v10;
(* sqrdmulh	v29.8h, v29.8h, v1.h[4]                #! PC = 0x4124d8 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v9.8h, v9.8h, v11.8h                        #! PC = 0x4124dc *)
add %v9 %v9 %v11;
(* sqrdmulh	v30.8h, v30.8h, v1.h[6]                #! PC = 0x4124e0 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v12.8h, v12.8h, v14.8h                      #! PC = 0x4124e4 *)
add %v12 %v12 %v14;
(* sqrdmulh	v31.8h, v31.8h, v1.h[6]                #! PC = 0x4124e8 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v13.8h, v13.8h, v15.8h                      #! PC = 0x4124ec *)
add %v13 %v13 %v15;
(* mls	v18.8h, v28.8h, v0.h[0]                     #! PC = 0x4124f0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v29.8h, v0.h[0]                     #! PC = 0x4124f4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;
(* mls	v22.8h, v30.8h, v0.h[0]                     #! PC = 0x4124f8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x4124fc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v18 (%v28o0 *
                   [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o0 *
                   [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o0 *
                   [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o0 *
                   [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v18 (%v28o0 *
                   [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o0 *
                   [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o0 *
                   [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o0 *
                   [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
       %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
       %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
       %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
       %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
       %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [0]]
   && true;
assume [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
       %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
       %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
       %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
       %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
       %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v8 /\
       %v8<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v9 /\
       %v9<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v12 /\
       %v12<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
       %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v24 /\
       %v24<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v26 /\
       %v26<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 2 2 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v8 = %v8o1 + %v10o1 /\ %v9 = %v9o1 + %v11o1 /\
    %v12 = %v12o1 + %v14o1 /\ %v13 = %v13o1 + %v15o1 /\
    %v24 = %v8o1 - %v10o1 /\ %v25 = %v9o1 - %v11o1 /\
    %v26 = %v12o1 - %v14o1 /\ %v27 = %v13o1 - %v15o1 /\
    eqmod %v18 (%v28o0 *
                [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v29o0 *
                [%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 (%v30o0 *
                [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 (%v31o0 *
                [%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
    %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
    %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
    %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
    %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
    %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
    %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v8 /\
    %v8<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v9 /\
    %v9<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v12 /\
    %v12<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
    %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v24 /\
    %v24<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v26 /\
    %v26<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [0]];


ghost %v24o1@int16[8],%v25o1@int16[8],%v26o1@int16[8],%v27o1@int16[8],
      %v16o2@int16[8],%v17o2@int16[8],%v18o2@int16[8],%v19o2@int16[8],
      %v20o2@int16[8],%v21o2@int16[8],%v22o2@int16[8],%v23o2@int16[8]:
      %v24o1 = %v24 /\ %v25o1 = %v25 /\ %v26o1 = %v26 /\ %v27o1 = %v27 /\
      %v16o2 = %v16 /\ %v17o2 = %v17 /\ %v18o2 = %v18 /\ %v19o2 = %v19 /\
      %v20o2 = %v20 /\ %v21o2 = %v21 /\ %v22o2 = %v22 /\ %v23o2 = %v23
   && %v24o1 = %v24 /\ %v25o1 = %v25 /\ %v26o1 = %v26 /\ %v27o1 = %v27 /\
      %v16o2 = %v16 /\ %v17o2 = %v17 /\ %v18o2 = %v18 /\ %v19o2 = %v19 /\
      %v20o2 = %v20 /\ %v21o2 = %v21 /\ %v22o2 = %v22 /\ %v23o2 = %v23;


(* mul	v10.8h, v24.8h, v1.h[1]                     #! PC = 0x412500 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v10 %v24 %mul; cast %v10@int16[8] %v10;
(* sub	v28.8h, v16.8h, v20.8h                      #! PC = 0x412504 *)
sub %v28 %v16 %v20;
(* mul	v11.8h, v25.8h, v1.h[1]                     #! PC = 0x412508 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v11 %v25 %mul; cast %v11@int16[8] %v11;
(* sub	v29.8h, v17.8h, v21.8h                      #! PC = 0x41250c *)
sub %v29 %v17 %v21;
(* mul	v14.8h, v26.8h, v1.h[3]                     #! PC = 0x412510 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v14 %v26 %mul; cast %v14@int16[8] %v14;
(* sub	v30.8h, v18.8h, v22.8h                      #! PC = 0x412514 *)
sub %v30 %v18 %v22;
(* mul	v15.8h, v27.8h, v1.h[3]                     #! PC = 0x412518 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v19.8h, v23.8h                      #! PC = 0x41251c *)
sub %v31 %v19 %v23;
(* sqrdmulh	v24.8h, v24.8h, v1.h[0]                #! PC = 0x412520 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v16.8h, v16.8h, v20.8h                      #! PC = 0x412524 *)
add %v16 %v16 %v20;
(* sqrdmulh	v25.8h, v25.8h, v1.h[0]                #! PC = 0x412528 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v17.8h, v17.8h, v21.8h                      #! PC = 0x41252c *)
add %v17 %v17 %v21;
(* sqrdmulh	v26.8h, v26.8h, v1.h[2]                #! PC = 0x412530 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v18.8h, v18.8h, v22.8h                      #! PC = 0x412534 *)
add %v18 %v18 %v22;
(* sqrdmulh	v27.8h, v27.8h, v1.h[2]                #! PC = 0x412538 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v19.8h, v19.8h, v23.8h                      #! PC = 0x41253c *)
add %v19 %v19 %v23;
(* mls	v10.8h, v24.8h, v0.h[0]                     #! PC = 0x412540 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v10 %v10 %mls;
(* mls	v11.8h, v25.8h, v0.h[0]                     #! PC = 0x412544 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x412548 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x41254c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;


assert eqmod %v10 (%v24o1 *
                   [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o1 *
                   [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o1 *
                   [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o1 *
                   [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [1]] && true;
assume eqmod %v10 (%v24o1 *
                   [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o1 *
                   [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o1 *
                   [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o1 *
                   [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
       %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
       %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
       %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
       %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
       %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [1]]
   && true;
assume [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
       %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
       %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
       %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
       %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
       %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v16 /\
       %v16<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v17 /\
       %v17<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v18 /\
       %v18<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v28 /\
       %v28<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v29<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
       %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 3 3 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = %v16o2 + %v20o2 /\ %v17 = %v17o2 + %v21o2 /\
    %v18 = %v18o2 + %v22o2 /\ %v19 = %v19o2 + %v23o2 /\
    %v28 = %v16o2 - %v20o2 /\ %v29 = %v17o2 - %v21o2 /\
    %v30 = %v18o2 - %v22o2 /\ %v31 = %v19o2 - %v23o2 /\
    eqmod %v10 (%v24o1 *
                [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v11 (%v25o1 *
                [%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v14 (%v26o1 *
                [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o1 *
                [%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
    %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
    %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
    %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
    %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
    %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
    %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v16 /\
    %v16<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v17 /\
    %v17<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v18 /\
    %v18<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v28 /\
    %v28<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
    %v29<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
    %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [1]];

ghost %v28o1@int16[8],%v29o1@int16[8],%v30o1@int16[8],%v31o1@int16[8],
       %v8o2@int16[8], %v9o2@int16[8],%v10o2@int16[8],%v11o2@int16[8],
      %v12o2@int16[8],%v13o2@int16[8],%v14o2@int16[8],%v15o2@int16[8]:
      %v28o1 = %v28 /\ %v29o1 = %v29 /\ %v30o1 = %v30 /\ %v31o1 = %v31 /\
       %v8o2 =  %v8 /\  %v9o2 =  %v9 /\ %v10o2 = %v10 /\ %v11o2 = %v11 /\
      %v12o2 = %v12 /\ %v13o2 = %v13 /\ %v14o2 = %v14 /\ %v15o2 = %v15
   && %v28o1 = %v28 /\ %v29o1 = %v29 /\ %v30o1 = %v30 /\ %v31o1 = %v31 /\
       %v8o2 =  %v8 /\  %v9o2 =  %v9 /\ %v10o2 = %v10 /\ %v11o2 = %v11 /\
      %v12o2 = %v12 /\ %v13o2 = %v13 /\ %v14o2 = %v14 /\ %v15o2 = %v15;


(* mul	v20.8h, v28.8h, v0.h[7]                     #! PC = 0x412550 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v20 %v28 %mul; cast %v20@int16[8] %v20;
(* sub	v24.8h, v8.8h, v12.8h                       #! PC = 0x412554 *)
sub %v24 %v8 %v12;
(* mul	v21.8h, v29.8h, v0.h[7]                     #! PC = 0x412558 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v21 %v29 %mul; cast %v21@int16[8] %v21;
(* sub	v25.8h, v9.8h, v13.8h                       #! PC = 0x41255c *)
sub %v25 %v9 %v13;
(* mul	v22.8h, v30.8h, v0.h[7]                     #! PC = 0x412560 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v22 %v30 %mul; cast %v22@int16[8] %v22;
(* sub	v26.8h, v10.8h, v14.8h                      #! PC = 0x412564 *)
sub %v26 %v10 %v14;
(* mul	v23.8h, v31.8h, v0.h[7]                     #! PC = 0x412568 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v11.8h, v15.8h                      #! PC = 0x41256c *)
sub %v27 %v11 %v15;
(* sqrdmulh	v28.8h, v28.8h, v0.h[6]                #! PC = 0x412570 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v12.8h                        #! PC = 0x412574 *)
add %v8 %v8 %v12;
(* sqrdmulh	v29.8h, v29.8h, v0.h[6]                #! PC = 0x412578 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v9.8h, v9.8h, v13.8h                        #! PC = 0x41257c *)
add %v9 %v9 %v13;
(* sqrdmulh	v30.8h, v30.8h, v0.h[6]                #! PC = 0x412580 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v10.8h, v10.8h, v14.8h                      #! PC = 0x412584 *)
add %v10 %v10 %v14;
(* sqrdmulh	v31.8h, v31.8h, v0.h[6]                #! PC = 0x412588 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v11.8h, v11.8h, v15.8h                      #! PC = 0x41258c *)
add %v11 %v11 %v15;
(* mls	v20.8h, v28.8h, v0.h[0]                     #! PC = 0x412590 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v29.8h, v0.h[0]                     #! PC = 0x412594 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v30.8h, v0.h[0]                     #! PC = 0x412598 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x41259c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;


assert eqmod %v20 (%v28o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v29o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v20 (%v28o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v29o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o1 *
                   [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
       %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
       %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
       %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
       %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
       %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [2]]
   && true;
assume [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
       %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
       %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
       %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
       %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
       %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v8 /\
       %v8<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v9 /\
       %v9<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v10 /\
       %v10<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v11 /\
       %v11<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v24 /\
       %v24<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 4 4 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o2 + %v12o2 /\  %v9 =  %v9o2 + %v13o2 /\
    %v10 = %v10o2 + %v14o2 /\ %v11 = %v11o2 + %v15o2 /\
    %v24 =  %v8o2 - %v12o2 /\ %v25 =  %v9o2 - %v13o2 /\
    %v26 = %v10o2 - %v14o2 /\ %v27 = %v11o2 - %v15o2 /\
    eqmod %v20 (%v28o1 *
                [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 (%v29o1 *
                [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 (%v30o1 *
                [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 (%v31o1 *
                [%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
    %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
    %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
    %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
    %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
    %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v8 /\
    %v8<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v9 /\
    %v9<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v10 /\
    %v10<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v11 /\
    %v11<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v24 /\
    %v24<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [2]];


ghost %v24o2@int16[8],%v25o2@int16[8],%v26o2@int16[8],%v27o2@int16[8],
       %v8o3@int16[8], %v9o3@int16[8],%v10o3@int16[8],%v11o3@int16[8],
      %v16o3@int16[8],%v17o3@int16[8],%v18o3@int16[8],%v19o3@int16[8]:
      %v24o2 = %v24 /\ %v25o2 = %v25 /\ %v26o2 = %v26 /\ %v27o2 = %v27 /\
       %v8o3 =  %v8 /\  %v9o3 =  %v9 /\ %v10o3 = %v10 /\ %v11o3 = %v11 /\
      %v16o3 = %v16 /\ %v17o3 = %v17 /\ %v18o3 = %v18 /\ %v19o3 = %v19
   && %v24o2 = %v24 /\ %v25o2 = %v25 /\ %v26o2 = %v26 /\ %v27o2 = %v27 /\
       %v8o3 =  %v8 /\  %v9o3 =  %v9 /\ %v10o3 = %v10 /\ %v11o3 = %v11 /\
      %v16o3 = %v16 /\ %v17o3 = %v17 /\ %v18o3 = %v18 /\ %v19o3 = %v19;


(* mul	v12.8h, v24.8h, v0.h[5]                     #! PC = 0x4125a0 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v12 %v24 %mul; cast %v12@int16[8] %v12;
(* sub	v28.8h, v8.8h, v16.8h                       #! PC = 0x4125a4 *)
sub %v28 %v8 %v16;
(* mul	v13.8h, v25.8h, v0.h[5]                     #! PC = 0x4125a8 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v13 %v25 %mul; cast %v13@int16[8] %v13;
(* sub	v29.8h, v9.8h, v17.8h                       #! PC = 0x4125ac *)
sub %v29 %v9 %v17;
(* mul	v14.8h, v26.8h, v0.h[5]                     #! PC = 0x4125b0 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v14 %v26 %mul; cast %v14@int16[8] %v14;
(* sub	v30.8h, v10.8h, v18.8h                      #! PC = 0x4125b4 *)
sub %v30 %v10 %v18;
(* mul	v15.8h, v27.8h, v0.h[5]                     #! PC = 0x4125b8 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v11.8h, v19.8h                      #! PC = 0x4125bc *)
sub %v31 %v11 %v19;
(* sqrdmulh	v24.8h, v24.8h, v0.h[4]                #! PC = 0x4125c0 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v8.8h, v8.8h, v16.8h                        #! PC = 0x4125c4 *)
add %v8 %v8 %v16;
(* sqrdmulh	v25.8h, v25.8h, v0.h[4]                #! PC = 0x4125c8 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v9.8h, v9.8h, v17.8h                        #! PC = 0x4125cc *)
add %v9 %v9 %v17;
(* sqrdmulh	v26.8h, v26.8h, v0.h[4]                #! PC = 0x4125d0 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v10.8h, v10.8h, v18.8h                      #! PC = 0x4125d4 *)
add %v10 %v10 %v18;
(* sqrdmulh	v27.8h, v27.8h, v0.h[4]                #! PC = 0x4125d8 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v11.8h, v11.8h, v19.8h                      #! PC = 0x4125dc *)
add %v11 %v11 %v19;
(* mls	v12.8h, v24.8h, v0.h[0]                     #! PC = 0x4125e0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v12 %v12 %mls;
(* mls	v13.8h, v25.8h, v0.h[0]                     #! PC = 0x4125e4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x4125e8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x4125ec *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;


assert eqmod %v12 (%v24o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v25o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [3]] && true;
assume eqmod %v12 (%v24o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v25o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o2 *
                   [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
       %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
       %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
       %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
       %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
       %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
       %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
       %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
       %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
       prove with [algebra solver isl, cuts [3]]
    && true;
assume [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
       %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
       %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
       %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
       %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
       %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
       %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
       %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
       %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
    && [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v8 /\
       %v8<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v9 /\
       %v9<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v10 /\
       %v10<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v11 /\
       %v11<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v28 /\
       %v28<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v29 /\
       %v29<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v30 /\
       %v30<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v31 /\
       %v31<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q];

(* CUT 5 5 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o3 + %v16o3 /\  %v9 =  %v9o3 + %v17o3 /\
    %v10 = %v10o3 + %v18o3 /\ %v11 = %v11o3 + %v19o3 /\
    %v28 =  %v8o3 - %v16o3 /\ %v29 =  %v9o3 - %v17o3 /\
    %v30 = %v10o3 - %v18o3 /\ %v31 = %v11o3 - %v19o3 /\
    eqmod %v12 (%v24o2 *
                [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v13 (%v25o2 *
                [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v14 (%v26o2 *
                [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o2 *
                [%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
    %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
    %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
    %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
    %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
    %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
    %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
    %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
    %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v8 /\
    %v8<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v9 /\
    %v9<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v10 /\
    %v10<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v11 /\
    %v11<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v28 /\
    %v28<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v29 /\
    %v29<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v30 /\
    %v30<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v31 /\
    %v31<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q]
    prove with [cuts [3]];

ghost %v28o2@int16[8],%v29o2@int16[8],%v30o2@int16[8],%v31o2@int16[8],
      %v12o3@int16[8],%v13o3@int16[8],%v14o3@int16[8],%v15o3@int16[8],
      %v20o3@int16[8],%v21o3@int16[8],%v22o3@int16[8],%v23o3@int16[8]:
      %v28o2 = %v28 /\ %v29o2 = %v29 /\ %v30o2 = %v30 /\ %v31o2 = %v31 /\
      %v12o3 = %v12 /\ %v13o3 = %v13 /\ %v14o3 = %v14 /\ %v15o3 = %v15 /\
      %v20o3 = %v20 /\ %v21o3 = %v21 /\ %v22o3 = %v22 /\ %v23o3 = %v23
   && %v28o2 = %v28 /\ %v29o2 = %v29 /\ %v30o2 = %v30 /\ %v31o2 = %v31 /\
      %v12o3 = %v12 /\ %v13o3 = %v13 /\ %v14o3 = %v14 /\ %v15o3 = %v15 /\
      %v20o3 = %v20 /\ %v21o3 = %v21 /\ %v22o3 = %v22 /\ %v23o3 = %v23;

(* mul	v16.8h, v28.8h, v4.h[3]                     #! PC = 0x4125f0 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v16 %v28 %mul; cast %v16@int16[8] %v16;
(* sub	v24.8h, v12.8h, v20.8h                      #! PC = 0x4125f4 *)
sub %v24 %v12 %v20;
(* mul	v17.8h, v29.8h, v4.h[3]                     #! PC = 0x4125f8 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v17 %v29 %mul; cast %v17@int16[8] %v17;
(* sub	v25.8h, v13.8h, v21.8h                      #! PC = 0x4125fc *)
sub %v25 %v13 %v21;
(* mul	v18.8h, v30.8h, v4.h[3]                     #! PC = 0x412600 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v18 %v30 %mul; cast %v18@int16[8] %v18;
(* sub	v26.8h, v14.8h, v22.8h                      #! PC = 0x412604 *)
sub %v26 %v14 %v22;
(* mul	v19.8h, v31.8h, v4.h[3]                     #! PC = 0x412608 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v19 %v31 %mul; cast %v19@int16[8] %v19;
(* sub	v27.8h, v15.8h, v23.8h                      #! PC = 0x41260c *)
sub %v27 %v15 %v23;
(* sqrdmulh	v28.8h, v28.8h, v4.h[2]                #! PC = 0x412610 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v12.8h, v12.8h, v20.8h                      #! PC = 0x412614 *)
add %v12 %v12 %v20;
(* sqrdmulh	v29.8h, v29.8h, v4.h[2]                #! PC = 0x412618 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v13.8h, v13.8h, v21.8h                      #! PC = 0x41261c *)
add %v13 %v13 %v21;
(* sqrdmulh	v30.8h, v30.8h, v4.h[2]                #! PC = 0x412620 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v14.8h, v14.8h, v22.8h                      #! PC = 0x412624 *)
add %v14 %v14 %v22;
(* sqrdmulh	v31.8h, v31.8h, v4.h[2]                #! PC = 0x412628 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v15.8h, v15.8h, v23.8h                      #! PC = 0x41262c *)
add %v15 %v15 %v23;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x412630 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v29.8h, v0.h[0]                     #! PC = 0x412634 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;
(* mls	v18.8h, v30.8h, v0.h[0]                     #! PC = 0x412638 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x41263c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v16 (%v28o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v29o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v18 (%v30o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
       %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
       %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
       %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [4]] && true;
assume eqmod %v16 (%v28o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v29o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v18 (%v30o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
       %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
       %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
       %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v12 /\
       %v12<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
       %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v14 /\
       %v14<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v15 /\
       %v15<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 6 6 *)
cut Q = 3329 /\ B = 1665 /\ NQ = -3329 /\ NB = -1665 /\
    %v12 = %v12o3 + %v20 /\ %v24 = %v12o3 - %v20 /\
    %v13 = %v13o3 + %v21 /\ %v25 = %v13o3 - %v21 /\
    %v14 = %v14o3 + %v22 /\ %v26 = %v14o3 - %v22 /\
    %v15 = %v15o3 + %v23 /\ %v27 = %v15o3 - %v23 /\
    eqmod %v16 (%v28o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v29o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v18 (%v30o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o2*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
    %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
    %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
    %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
    %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
 && Q = 3329@16 /\ B = 1665@16 /\ NQ = (-3329)@16 /\ NB = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v12 /\
    %v12<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
    %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v14 /\
    %v14<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v15 /\
    %v15<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [4]];

ghost %v24o3@int16[8],%v25o3@int16[8],%v26o3@int16[8],%v27o3@int16[8]:
      %v24o3 = %v24 /\ %v25o3 = %v25 /\ %v26o3 = %v26 /\ %v27o3 = %v27
   && %v24o3 = %v24 /\ %v25o3 = %v25 /\ %v26o3 = %v26 /\ %v27o3 = %v27;

(* mul	v20.8h, v24.8h, v4.h[3]                     #! PC = 0x412640 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v20 %v24 %mul; cast %v20@int16[8] %v20;
(* mul	v21.8h, v25.8h, v4.h[3]                     #! PC = 0x412644 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v21 %v25 %mul; cast %v21@int16[8] %v21;
(* mul	v22.8h, v26.8h, v4.h[3]                     #! PC = 0x412648 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v22 %v26 %mul; cast %v22@int16[8] %v22;
(* mul	v23.8h, v27.8h, v4.h[3]                     #! PC = 0x41264c *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v23 %v27 %mul; cast %v23@int16[8] %v23;
(* str	q16, [x0, #256]                             #! EA = L0xffffffffc4a0; PC = 0x412650 *)
mov [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae] %v16;
(* ldr	q16, [x0, #272]                             #! EA = L0xffffffffc4b0; Value = 0x04e3013901a1fd7a; PC = 0x412654 *)
mov %v16 [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be];
(* sqrdmulh	v24.8h, v24.8h, v4.h[2]                #! PC = 0x412658 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* str	q17, [x0, #288]                             #! EA = L0xffffffffc4c0; PC = 0x41265c *)
mov [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce] %v17;
(* ldr	q17, [x0, #304]                             #! EA = L0xffffffffc4d0; Value = 0xff5502c5fd8d00e0; PC = 0x412660 *)
mov %v17 [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de];
(* sqrdmulh	v25.8h, v25.8h, v4.h[2]                #! PC = 0x412664 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* str	q18, [x0, #320]                             #! EA = L0xffffffffc4e0; PC = 0x412668 *)
mov [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee] %v18;
(* ldr	q18, [x0, #336]                             #! EA = L0xffffffffc4f0; Value = 0x0242ff67fea3fc74; PC = 0x41266c *)
mov %v18 [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe];
(* sqrdmulh	v26.8h, v26.8h, v4.h[2]                #! PC = 0x412670 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* str	q19, [x0, #352]                             #! EA = L0xffffffffc500; PC = 0x412674 *)
mov [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e] %v19;
(* ldr	q19, [x0, #368]                             #! EA = L0xffffffffc510; Value = 0x0024002efc2201e3; PC = 0x412678 *)
mov %v19 [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e];
(* sqrdmulh	v27.8h, v27.8h, v4.h[2]                #! PC = 0x41267c *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v20.8h, v24.8h, v0.h[0]                     #! PC = 0x412680 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v25.8h, v0.h[0]                     #! PC = 0x412684 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v26.8h, v0.h[0]                     #! PC = 0x412688 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v27.8h, v0.h[0]                     #! PC = 0x41268c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v20 (%v24o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v25o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v26o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v27o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [5]] && true;
assume eqmod %v20 (%v24o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v25o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v26o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v27o3*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost  %v8o4@int16[8], %v9o4@int16[8],%v10o4@int16[8],%v11o4@int16[8],
      %v12o4@int16[8],%v13o4@int16[8],%v14o4@int16[8],%v15o4@int16[8]:
       %v8o4 =  %v8 /\  %v9o4 =  %v9 /\ %v10o4 = %v10 /\ %v11o4 = %v11 /\
      %v12o4 = %v12 /\ %v13o4 = %v13 /\ %v14o4 = %v14 /\ %v15o4 = %v15
   &&  %v8o4 =  %v8 /\  %v9o4 =  %v9 /\ %v10o4 = %v10 /\ %v11o4 = %v11 /\
      %v12o4 = %v12 /\ %v13o4 = %v13 /\ %v14o4 = %v14 /\ %v15o4 = %v15;

(* str	q20, [x0, #384]                             #! EA = L0xffffffffc520; PC = 0x412690 *)
mov [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e] %v20;
(* ldr	q20, [x0, #400]                             #! EA = L0xffffffffc530; Value = 0x0111fc57fbbd0635; PC = 0x412694 *)
mov %v20 [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e];
(* sqrdmulh	v28.8h, v8.8h, v4.h[0]                 #! PC = 0x412698 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v8 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* str	q21, [x0, #416]                             #! EA = L0xffffffffc540; PC = 0x41269c *)
mov [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e] %v21;
(* ldr	q21, [x0, #432]                             #! EA = L0xffffffffc550; Value = 0xff8ffadf0035fb9c; PC = 0x4126a0 *)
mov %v21 [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e];
(* sqrdmulh	v29.8h, v9.8h, v4.h[0]                 #! PC = 0x4126a4 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* str	q22, [x0, #448]                             #! EA = L0xffffffffc560; PC = 0x4126a8 *)
mov [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e] %v22;
(* ldr	q22, [x0, #464]                             #! EA = L0xffffffffc570; Value = 0x0470fea905c102c2; PC = 0x4126ac *)
mov %v22 [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e];
(* sqrdmulh	v30.8h, v10.8h, v4.h[0]                #! PC = 0x4126b0 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* str	q23, [x0, #480]                             #! EA = L0xffffffffc580; PC = 0x4126b4 *)
mov [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e] %v23;
(* ldr	q23, [x0, #496]                             #! EA = L0xffffffffc590; Value = 0xfaf80403ffacfb7a; PC = 0x4126b8 *)
mov %v23 [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e];
(* sqrdmulh	v31.8h, v11.8h, v4.h[0]                #! PC = 0x4126bc *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mul	v8.8h, v8.8h, v4.h[1]                       #! PC = 0x4126c0 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v8 %v8 %mul; cast %v8@int16[8] %v8;
(* mul	v9.8h, v9.8h, v4.h[1]                       #! PC = 0x4126c4 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v9 %v9 %mul; cast %v9@int16[8] %v9;
(* mul	v10.8h, v10.8h, v4.h[1]                     #! PC = 0x4126c8 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v10 %v10 %mul; cast %v10@int16[8] %v10;
(* mul	v11.8h, v11.8h, v4.h[1]                     #! PC = 0x4126cc *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v11 %v11 %mul; cast %v11@int16[8] %v11;
(* mls	v8.8h, v28.8h, v0.h[0]                      #! PC = 0x4126d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v8 %v8 %mls;
(* mls	v9.8h, v29.8h, v0.h[0]                      #! PC = 0x4126d4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v9 %v9 %mls;
(* mls	v10.8h, v30.8h, v0.h[0]                     #! PC = 0x4126d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v10 %v10 %mls;
(* mls	v11.8h, v31.8h, v0.h[0]                     #! PC = 0x4126dc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;

assert eqmod  %v8 ([512,512,512,512,512,512,512,512]* %v8o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod  %v9 ([512,512,512,512,512,512,512,512]* %v9o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v10 ([512,512,512,512,512,512,512,512]*%v10o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 ([512,512,512,512,512,512,512,512]*%v11o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v8  /\ %v8 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9  /\ %v9 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [5]] && true;
assume eqmod  %v8 ([512,512,512,512,512,512,512,512]* %v8o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod  %v9 ([512,512,512,512,512,512,512,512]* %v9o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v10 ([512,512,512,512,512,512,512,512]*%v10o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 ([512,512,512,512,512,512,512,512]*%v11o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v8  /\ %v8 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9  /\ %v9 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v8  /\ %v8 <s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9  /\ %v9 <s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* sqrdmulh	v24.8h, v12.8h, v4.h[0]                #! PC = 0x4126e0 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v12 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* sub	v28.8h, v16.8h, v17.8h                      #! PC = 0x4126e4 *)
sub %v28 %v16 %v17;
(* str	q8, [x0]                                    #! EA = L0xffffffffc3a0; PC = 0x4126e8 *)
mov [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae] %v8;
(* sqrdmulh	v25.8h, v13.8h, v4.h[0]                #! PC = 0x4126ec *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* sub	v29.8h, v18.8h, v19.8h                      #! PC = 0x4126f0 *)
sub %v29 %v18 %v19;
(* str	q9, [x0, #32]                               #! EA = L0xffffffffc3c0; PC = 0x4126f4 *)
mov [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce] %v9;
(* sqrdmulh	v26.8h, v14.8h, v4.h[0]                #! PC = 0x4126f8 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* sub	v30.8h, v20.8h, v21.8h                      #! PC = 0x4126fc *)
sub %v30 %v20 %v21;
(* str	q10, [x0, #64]                              #! EA = L0xffffffffc3e0; PC = 0x412700 *)
mov [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee] %v10;
(* sqrdmulh	v27.8h, v15.8h, v4.h[0]                #! PC = 0x412704 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* sub	v31.8h, v22.8h, v23.8h                      #! PC = 0x412708 *)
sub %v31 %v22 %v23;
(* str	q11, [x0, #96]                              #! EA = L0xffffffffc400; PC = 0x41270c *)
mov [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e] %v11;
(* mul	v12.8h, v12.8h, v4.h[1]                     #! PC = 0x412710 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v12 %v12 %mul; cast %v12@int16[8] %v12;
(* add	v16.8h, v16.8h, v17.8h                      #! PC = 0x412714 *)
add %v16 %v16 %v17;
(* ldr	q8, [x0, #16]                               #! EA = L0xffffffffc3b0; Value = 0xfae3fd56fc97fbda; PC = 0x412718 *)
mov %v8 [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be];
(* mul	v13.8h, v13.8h, v4.h[1]                     #! PC = 0x41271c *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v13 %v13 %mul; cast %v13@int16[8] %v13;
(* add	v18.8h, v18.8h, v19.8h                      #! PC = 0x412720 *)
add %v18 %v18 %v19;
(* ldr	q9, [x0, #48]                               #! EA = L0xffffffffc3d0; Value = 0x01fa0607faf4ffd9; PC = 0x412724 *)
mov %v9 [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de];
(* mul	v14.8h, v14.8h, v4.h[1]                     #! PC = 0x412728 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v14 %v14 %mul; cast %v14@int16[8] %v14;
(* add	v20.8h, v20.8h, v21.8h                      #! PC = 0x41272c *)
add %v20 %v20 %v21;
(* ldr	q10, [x0, #80]                              #! EA = L0xffffffffc3f0; Value = 0xfef9fec80673faac; PC = 0x412730 *)
mov %v10 [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe];
(* mul	v15.8h, v15.8h, v4.h[1]                     #! PC = 0x412734 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v15 %v15 %mul; cast %v15@int16[8] %v15;
(* add	v22.8h, v22.8h, v23.8h                      #! PC = 0x412738 *)
add %v22 %v22 %v23;
(* ldr	q11, [x0, #112]                             #! EA = L0xffffffffc410; Value = 0x007103f80273fc7a; PC = 0x41273c *)
mov %v11 [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e];
(* mls	v12.8h, v24.8h, v0.h[0]                     #! PC = 0x412740 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v12 %v12 %mls;
(* mls	v13.8h, v25.8h, v0.h[0]                     #! PC = 0x412744 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x412748 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x41274c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;

assert eqmod %v12 ([512,512,512,512,512,512,512,512]*%v12o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 ([512,512,512,512,512,512,512,512]*%v13o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 ([512,512,512,512,512,512,512,512]*%v14o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 ([512,512,512,512,512,512,512,512]*%v15o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [5]] && true;
assume eqmod %v12 ([512,512,512,512,512,512,512,512]*%v12o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 ([512,512,512,512,512,512,512,512]*%v13o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 ([512,512,512,512,512,512,512,512]*%v14o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 ([512,512,512,512,512,512,512,512]*%v15o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* str	q12, [x0, #128]                             #! EA = L0xffffffffc420; PC = 0x412750 *)
mov [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e] %v12;
(* ldr	q12, [x0, #144]                             #! EA = L0xffffffffc430; Value = 0xfd53fc8afe8e033f; PC = 0x412754 *)
mov %v12 [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e];
(* str	q13, [x0, #160]                             #! EA = L0xffffffffc440; PC = 0x412758 *)
mov [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e] %v13;
(* ldr	q13, [x0, #176]                             #! EA = L0xffffffffc450; Value = 0x02dd043a02f50634; PC = 0x41275c *)
mov %v13 [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e];
(* str	q14, [x0, #192]                             #! EA = L0xffffffffc460; PC = 0x412760 *)
mov [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e] %v14;
(* ldr	q14, [x0, #208]                             #! EA = L0xffffffffc470; Value = 0xfdb7ff1204a8029e; PC = 0x412764 *)
mov %v14 [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e];
(* str	q15, [x0, #224]                             #! EA = L0xffffffffc480; PC = 0x412768 *)
mov [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e] %v15;
(* ldr	q15, [x0, #240]                             #! EA = L0xffffffffc490; Value = 0x011b053901aeff68; PC = 0x41276c *)
mov %v15 [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e];

assert [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
       %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
       %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
       %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
       %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
       prove with [algebra solver isl, precondition]
   && true;
assume [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
       %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
       %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
       %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
       %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
    && [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v16 /\
       %v16<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v18 /\
       %v18<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v20 /\
       %v20<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v22 /\
       %v22<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B];

(* CUT 7 7 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
            L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] +
           [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
            L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] /\
    %v18 = [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
            L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] +
           [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
            L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] /\
    %v20 = [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
            L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] +
           [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
            L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] /\
    %v22 = [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
            L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] +
           [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
            L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] /\
    %v28 = [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
            L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] -
           [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
            L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] /\
    %v29 = [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
            L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] -
           [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
            L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] /\
    %v30 = [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
            L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] -
           [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
            L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] /\
    %v31 = [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
            L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] -
           [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
            L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] /\
    eqmod [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
           L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae]
          (( %v8o3+%v16o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
           L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce]
          (( %v9o3+%v17o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
           L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee]
          ((%v10o3+%v18o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
           L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
          ((%v11o3+%v19o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
           L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
          ((%v12o3+%v20o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
           L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
          ((%v13o3+%v21o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
           L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
          ((%v14o3+%v22o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
           L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
          ((%v15o3+%v23o3)*[512,512,512,512,512,512,512,512]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
           L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
          (( %v8o3-%v16o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
           L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
          (( %v9o3-%v17o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
           L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
          ((%v10o3-%v18o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
           L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
          ((%v11o3-%v19o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
           L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
          ((%v12o3-%v20o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
           L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
          ((%v13o3-%v21o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
           L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
          ((%v14o3-%v22o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
           L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
          ((%v15o3-%v23o3)*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v16 /\
    %v16<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v18 /\
    %v18<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v20 /\
    %v20<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v22 /\
    %v22<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
    prove with [all ghosts, cuts [5]]
 &&
Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
[2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v16 /\
%v16<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
[2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v18 /\
%v18<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
[2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v20 /\
%v20<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
[2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v22 /\
%v22<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]/\
[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]/\
[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]/\
[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]/\
[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]/\
[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]/\
[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]/\
[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]/\
[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]/\
[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]/\
[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]/\
[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]/\
[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]/\
[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]/\
[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]/\
[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]/\
[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s[Q,Q,Q,Q]
    prove with [precondition];

ghost %v28o3@int16[8],%v29o3@int16[8],%v30o3@int16[8],%v31o3@int16[8],
       %v8o5@int16[8], %v9o5@int16[8],%v10o5@int16[8],%v11o5@int16[8],
      %v12o5@int16[8],%v13o5@int16[8],%v14o5@int16[8],%v15o5@int16[8]:
      %v28o3 = %v28 /\ %v29o3 = %v29 /\ %v30o3 = %v30 /\ %v31o3 = %v31 /\
       %v8o5 =  %v8 /\  %v9o5 =  %v9 /\ %v10o5 = %v10 /\ %v11o5 = %v11 /\
      %v12o5 = %v12 /\ %v13o5 = %v13 /\ %v14o5 = %v14 /\ %v15o5 = %v15
   && %v28o3 = %v28 /\ %v29o3 = %v29 /\ %v30o3 = %v30 /\ %v31o3 = %v31 /\
       %v8o5 =  %v8 /\  %v9o5 =  %v9 /\ %v10o5 = %v10 /\ %v11o5 = %v11 /\
      %v12o5 = %v12 /\ %v13o5 = %v13 /\ %v14o5 = %v14 /\ %v15o5 = %v15;

(* mul	v17.8h, v28.8h, v3.h[1]                     #! PC = 0x412770 *)
broadcast %mul 8 [%v3[1]]; mull %mdc %v17 %v28 %mul; cast %v17@int16[8] %v17;
(* sub	v24.8h, v8.8h, v9.8h                        #! PC = 0x412774 *)
sub %v24 %v8 %v9;
(* mul	v19.8h, v29.8h, v3.h[3]                     #! PC = 0x412778 *)
broadcast %mul 8 [%v3[3]]; mull %mdc %v19 %v29 %mul; cast %v19@int16[8] %v19;
(* sub	v25.8h, v10.8h, v11.8h                      #! PC = 0x41277c *)
sub %v25 %v10 %v11;
(* mul	v21.8h, v30.8h, v3.h[5]                     #! PC = 0x412780 *)
broadcast %mul 8 [%v3[5]]; mull %mdc %v21 %v30 %mul; cast %v21@int16[8] %v21;
(* sub	v26.8h, v12.8h, v13.8h                      #! PC = 0x412784 *)
sub %v26 %v12 %v13;
(* mul	v23.8h, v31.8h, v3.h[7]                     #! PC = 0x412788 *)
broadcast %mul 8 [%v3[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v14.8h, v15.8h                      #! PC = 0x41278c *)
sub %v27 %v14 %v15;
(* sqrdmulh	v28.8h, v28.8h, v3.h[0]                #! PC = 0x412790 *)
broadcast %sqrdmulh 8 [%v3[0]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v9.8h                         #! PC = 0x412794 *)
add %v8 %v8 %v9;
(* sqrdmulh	v29.8h, v29.8h, v3.h[2]                #! PC = 0x412798 *)
broadcast %sqrdmulh 8 [%v3[2]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v10.8h, v10.8h, v11.8h                      #! PC = 0x41279c *)
add %v10 %v10 %v11;
(* sqrdmulh	v30.8h, v30.8h, v3.h[4]                #! PC = 0x4127a0 *)
broadcast %sqrdmulh 8 [%v3[4]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v12.8h, v12.8h, v13.8h                      #! PC = 0x4127a4 *)
add %v12 %v12 %v13;
(* sqrdmulh	v31.8h, v31.8h, v3.h[6]                #! PC = 0x4127a8 *)
broadcast %sqrdmulh 8 [%v3[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v14.8h, v14.8h, v15.8h                      #! PC = 0x4127ac *)
add %v14 %v14 %v15;
(* mls	v17.8h, v28.8h, v0.h[0]                     #! PC = 0x4127b0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;
(* mls	v19.8h, v29.8h, v0.h[0]                     #! PC = 0x4127b4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;
(* mls	v21.8h, v30.8h, v0.h[0]                     #! PC = 0x4127b8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x4127bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v17 (%v28o3*[%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o3*[%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v30o3*[%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o3*[%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v17 (%v28o3*[%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o3*[%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v30o3*[%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o3*[%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
       %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
       %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
       %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
       %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
       %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
       %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
       %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
       %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
       prove with [algebra solver isl, precondition] && true;
assume [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
       %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
       %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
       %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
       %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
       %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
       %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
       %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
       [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
       %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
&&     [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v8 /\
       %v8<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v10 /\
       %v10<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v12 /\
       %v12<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v14 /\
       %v14<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v24 /\
       %v24<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v25 /\
       %v25<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v26 /\
       %v26<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
       [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v27 /\
       %v27<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B];


(* CUT 8 8 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o5 +  %v9o5 /\ %v10 = %v10o5 + %v11o5 /\
    %v12 = %v12o5 + %v13o5 /\ %v14 = %v14o5 + %v15o5 /\
    %v24 =  %v8o5 -  %v9o5 /\ %v25 = %v10o5 - %v11o5 /\
    %v26 = %v12o5 - %v13o5 /\ %v27 = %v14o5 - %v15o5 /\
    eqmod %v17 (%v28o3*[%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1],%v3[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v29o3*[%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3],%v3[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 (%v30o3*[%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5],%v3[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 (%v31o3*[%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7],%v3[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v8 /\
    %v8<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v10 /\
    %v10<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v12 /\
    %v12<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v14 /\
    %v14<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v24 /\
    %v24<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v25 /\
    %v25<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v26 /\
    %v26<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B] /\
    [2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB,2*NB]<%v27 /\
    %v27<[2*B,2*B,2*B,2*B,2*B,2*B,2*B,2*B]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v8 /\
    %v8<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v10 /\
    %v10<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v12 /\
    %v12<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v14 /\
    %v14<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v24 /\
    %v24<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v25 /\
    %v25<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v26 /\
    %v26<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B] /\
    [2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB,2@16*NB]<s%v27 /\
    %v27<s[2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B,2@16*B]
    prove with [precondition];

ghost %v24o4@int16[8],%v25o4@int16[8],%v26o4@int16[8],%v27o4@int16[8],
      %v16o4@int16[8],%v17o4@int16[8],%v18o4@int16[8],%v19o4@int16[8],
      %v20o4@int16[8],%v21o4@int16[8],%v22o4@int16[8],%v23o4@int16[8]:
      %v24o4 = %v24 /\ %v25o4 = %v25 /\ %v26o4 = %v26 /\ %v27o4 = %v27 /\
      %v16o4 = %v16 /\ %v17o4 = %v17 /\ %v18o4 = %v18 /\ %v19o4 = %v19 /\
      %v20o4 = %v20 /\ %v21o4 = %v21 /\ %v22o4 = %v22 /\ %v23o4 = %v23
   && %v24o4 = %v24 /\ %v25o4 = %v25 /\ %v26o4 = %v26 /\ %v27o4 = %v27 /\
      %v16o4 = %v16 /\ %v17o4 = %v17 /\ %v18o4 = %v18 /\ %v19o4 = %v19 /\
      %v20o4 = %v20 /\ %v21o4 = %v21 /\ %v22o4 = %v22 /\ %v23o4 = %v23;
      
(* mul	v9.8h, v24.8h, v2.h[1]                      #! PC = 0x4127c0 *)
broadcast %mul 8 [%v2[1]]; mull %mdc %v9 %v24 %mul; cast %v9@int16[8] %v9;
(* sub	v28.8h, v16.8h, v18.8h                      #! PC = 0x4127c4 *)
sub %v28 %v16 %v18;
(* mul	v11.8h, v25.8h, v2.h[3]                     #! PC = 0x4127c8 *)
broadcast %mul 8 [%v2[3]]; mull %mdc %v11 %v25 %mul; cast %v11@int16[8] %v11;
(* sub	v29.8h, v17.8h, v19.8h                      #! PC = 0x4127cc *)
sub %v29 %v17 %v19;
(* mul	v13.8h, v26.8h, v2.h[5]                     #! PC = 0x4127d0 *)
broadcast %mul 8 [%v2[5]]; mull %mdc %v13 %v26 %mul; cast %v13@int16[8] %v13;
(* sub	v30.8h, v20.8h, v22.8h                      #! PC = 0x4127d4 *)
sub %v30 %v20 %v22;
(* mul	v15.8h, v27.8h, v2.h[7]                     #! PC = 0x4127d8 *)
broadcast %mul 8 [%v2[7]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v21.8h, v23.8h                      #! PC = 0x4127dc *)
sub %v31 %v21 %v23;
(* sqrdmulh	v24.8h, v24.8h, v2.h[0]                #! PC = 0x4127e0 *)
broadcast %sqrdmulh 8 [%v2[0]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v16.8h, v16.8h, v18.8h                      #! PC = 0x4127e4 *)
add %v16 %v16 %v18;
(* sqrdmulh	v25.8h, v25.8h, v2.h[2]                #! PC = 0x4127e8 *)
broadcast %sqrdmulh 8 [%v2[2]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v17.8h, v17.8h, v19.8h                      #! PC = 0x4127ec *)
add %v17 %v17 %v19;
(* sqrdmulh	v26.8h, v26.8h, v2.h[4]                #! PC = 0x4127f0 *)
broadcast %sqrdmulh 8 [%v2[4]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v20.8h, v20.8h, v22.8h                      #! PC = 0x4127f4 *)
add %v20 %v20 %v22;
(* sqrdmulh	v27.8h, v27.8h, v2.h[6]                #! PC = 0x4127f8 *)
broadcast %sqrdmulh 8 [%v2[6]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v21.8h, v21.8h, v23.8h                      #! PC = 0x4127fc *)
add %v21 %v21 %v23;
(* mls	v9.8h, v24.8h, v0.h[0]                      #! PC = 0x412800 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v9 %v9 %mls;
(* mls	v11.8h, v25.8h, v0.h[0]                     #! PC = 0x412804 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;
(* mls	v13.8h, v26.8h, v0.h[0]                     #! PC = 0x412808 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x41280c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;

assert eqmod %v9 (%v24o4*[%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o4*[%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v26o4*[%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o4*[%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v9 (%v24o4*[%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o4*[%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v26o4*[%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o4*[%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9 /\ %v9<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
       %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
       %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
       %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
       %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
       %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [7]]
   && true;
assume [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
       %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
       %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
       %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
       %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
       %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
       %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
       %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<%v16 /\
       %v16<[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<%v17 /\
       %v17<[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<%v20 /\
       %v20<[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<%v21 /\
       %v21<[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<%v28 /\
       %v28<[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<%v29 /\
       %v29<[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<%v30 /\
       %v30<[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<%v31 /\
       %v31<[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 9 9 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = %v16o4 + %v18o4 /\ %v17 = %v17o4 + %v19o4 /\
    %v20 = %v20o4 + %v22o4 /\ %v21 = %v21o4 + %v23o4 /\
    %v28 = %v16o4 - %v18o4 /\ %v29 = %v17o4 - %v19o4 /\
    %v30 = %v20o4 - %v22o4 /\ %v31 = %v21o4 - %v23o4 /\
    eqmod  %v9 (%v24o4*[%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1],%v2[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v11 (%v25o4*[%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3],%v2[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v13 (%v26o4*[%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5],%v2[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o4*[%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7],%v2[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9 /\ %v9<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v16 /\
    %v16<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v17 /\
    %v17<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v20 /\
    %v20<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v21 /\
    %v21<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v28 /\
    %v28<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v29 /\
    %v29<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v30 /\
    %v30<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
    %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9 /\ %v9<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v16 /\
    %v16<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v17 /\
    %v17<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v20 /\
    %v20<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v21 /\
    %v21<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v28 /\
    %v28<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v29 /\
    %v29<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v30 /\
    %v30<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
    %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

ghost %v28o4@int16[8],%v29o4@int16[8],%v30o4@int16[8],%v31o4@int16[8],
       %v8o6@int16[8], %v9o6@int16[8],%v10o6@int16[8],%v11o6@int16[8],
      %v12o6@int16[8],%v13o6@int16[8],%v14o6@int16[8],%v15o6@int16[8]:
      %v28o4 = %v28 /\ %v29o4 = %v29 /\ %v30o4 = %v30 /\ %v31o4 = %v31 /\
       %v8o6 =  %v8 /\  %v9o6 =  %v9 /\ %v10o6 = %v10 /\ %v11o6 = %v11 /\
      %v12o6 = %v12 /\ %v13o6 = %v13 /\ %v14o6 = %v14 /\ %v15o6 = %v15
   && %v28o4 = %v28 /\ %v29o4 = %v29 /\ %v30o4 = %v30 /\ %v31o4 = %v31 /\
       %v8o6 =  %v8 /\  %v9o6 =  %v9 /\ %v10o6 = %v10 /\ %v11o6 = %v11 /\
      %v12o6 = %v12 /\ %v13o6 = %v13 /\ %v14o6 = %v14 /\ %v15o6 = %v15;

(* mul	v18.8h, v28.8h, v1.h[5]                     #! PC = 0x412810 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v18 %v28 %mul; cast %v18@int16[8] %v18;
(* sub	v24.8h, v8.8h, v10.8h                       #! PC = 0x412814 *)
sub %v24 %v8 %v10;
(* mul	v19.8h, v29.8h, v1.h[5]                     #! PC = 0x412818 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v19 %v29 %mul; cast %v19@int16[8] %v19;
(* sub	v25.8h, v9.8h, v11.8h                       #! PC = 0x41281c *)
sub %v25 %v9 %v11;
(* mul	v22.8h, v30.8h, v1.h[7]                     #! PC = 0x412820 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v22 %v30 %mul; cast %v22@int16[8] %v22;
(* sub	v26.8h, v12.8h, v14.8h                      #! PC = 0x412824 *)
sub %v26 %v12 %v14;
(* mul	v23.8h, v31.8h, v1.h[7]                     #! PC = 0x412828 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v13.8h, v15.8h                      #! PC = 0x41282c *)
sub %v27 %v13 %v15;
(* sqrdmulh	v28.8h, v28.8h, v1.h[4]                #! PC = 0x412830 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v10.8h                        #! PC = 0x412834 *)
add %v8 %v8 %v10;
(* sqrdmulh	v29.8h, v29.8h, v1.h[4]                #! PC = 0x412838 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v9.8h, v9.8h, v11.8h                        #! PC = 0x41283c *)
add %v9 %v9 %v11;
(* sqrdmulh	v30.8h, v30.8h, v1.h[6]                #! PC = 0x412840 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v12.8h, v12.8h, v14.8h                      #! PC = 0x412844 *)
add %v12 %v12 %v14;
(* sqrdmulh	v31.8h, v31.8h, v1.h[6]                #! PC = 0x412848 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v13.8h, v13.8h, v15.8h                      #! PC = 0x41284c *)
add %v13 %v13 %v15;
(* mls	v18.8h, v28.8h, v0.h[0]                     #! PC = 0x412850 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v29.8h, v0.h[0]                     #! PC = 0x412854 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;
(* mls	v22.8h, v30.8h, v0.h[0]                     #! PC = 0x412858 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x41285c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v18 (%v28o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v18 (%v28o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v29o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
       %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
       %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
       %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
       %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
       %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [8]]
   && true;
assume [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
       %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
       %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
       %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
       %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
       %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v8 /\
       %v8<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v9 /\
       %v9<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v12 /\
       %v12<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
       %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v24 /\
       %v24<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v26 /\
       %v26<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 10 10 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o6 + %v10o6 /\  %v9 =  %v9o6 + %v11o6 /\
    %v12 = %v12o6 + %v14o6 /\ %v13 = %v13o6 + %v15o6 /\
    %v24 =  %v8o6 - %v10o6 /\ %v25 =  %v9o6 - %v11o6 /\
    %v26 = %v12o6 - %v14o6 /\ %v27 = %v13o6 - %v15o6 /\
    eqmod %v18 (%v28o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v29o4*[%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5],%v1[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 (%v30o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 (%v31o4*[%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7],%v1[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v8 /\
    %v8<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v9 /\
    %v9<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v12 /\
    %v12<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
    %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v24 /\
    %v24<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB,4*NB]<%v26 /\
    %v26<[4*B,4*B,4*B,4*B,4*B,4*B,4*B,4*B] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v8 /\
    %v8<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v9 /\
    %v9<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v12 /\
    %v12<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
    %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v24 /\
    %v24<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB,4@16*NB]<s%v26 /\
    %v26<s[4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B,4@16*B] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [8]];


ghost %v24o5@int16[8],%v25o5@int16[8],%v26o5@int16[8],%v27o5@int16[8],
      %v16o5@int16[8],%v17o5@int16[8],%v18o5@int16[8],%v19o5@int16[8],
      %v20o5@int16[8],%v21o5@int16[8],%v22o5@int16[8],%v23o5@int16[8]:
      %v24o5 = %v24 /\ %v25o5 = %v25 /\ %v26o5 = %v26 /\ %v27o5 = %v27 /\
      %v16o5 = %v16 /\ %v17o5 = %v17 /\ %v18o5 = %v18 /\ %v19o5 = %v19 /\
      %v20o5 = %v20 /\ %v21o5 = %v21 /\ %v22o5 = %v22 /\ %v23o5 = %v23
   && %v24o5 = %v24 /\ %v25o5 = %v25 /\ %v26o5 = %v26 /\ %v27o5 = %v27 /\
      %v16o5 = %v16 /\ %v17o5 = %v17 /\ %v18o5 = %v18 /\ %v19o5 = %v19 /\
      %v20o5 = %v20 /\ %v21o5 = %v21 /\ %v22o5 = %v22 /\ %v23o5 = %v23;


(* mul	v10.8h, v24.8h, v1.h[1]                     #! PC = 0x412860 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v10 %v24 %mul; cast %v10@int16[8] %v10;
(* sub	v28.8h, v16.8h, v20.8h                      #! PC = 0x412864 *)
sub %v28 %v16 %v20;
(* mul	v11.8h, v25.8h, v1.h[1]                     #! PC = 0x412868 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v11 %v25 %mul; cast %v11@int16[8] %v11;
(* sub	v29.8h, v17.8h, v21.8h                      #! PC = 0x41286c *)
sub %v29 %v17 %v21;
(* mul	v14.8h, v26.8h, v1.h[3]                     #! PC = 0x412870 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v14 %v26 %mul; cast %v14@int16[8] %v14;
(* sub	v30.8h, v18.8h, v22.8h                      #! PC = 0x412874 *)
sub %v30 %v18 %v22;
(* mul	v15.8h, v27.8h, v1.h[3]                     #! PC = 0x412878 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v19.8h, v23.8h                      #! PC = 0x41287c *)
sub %v31 %v19 %v23;
(* sqrdmulh	v24.8h, v24.8h, v1.h[0]                #! PC = 0x412880 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v16.8h, v16.8h, v20.8h                      #! PC = 0x412884 *)
add %v16 %v16 %v20;
(* sqrdmulh	v25.8h, v25.8h, v1.h[0]                #! PC = 0x412888 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v17.8h, v17.8h, v21.8h                      #! PC = 0x41288c *)
add %v17 %v17 %v21;
(* sqrdmulh	v26.8h, v26.8h, v1.h[2]                #! PC = 0x412890 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v18.8h, v18.8h, v22.8h                      #! PC = 0x412894 *)
add %v18 %v18 %v22;
(* sqrdmulh	v27.8h, v27.8h, v1.h[2]                #! PC = 0x412898 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v19.8h, v19.8h, v23.8h                      #! PC = 0x41289c *)
add %v19 %v19 %v23;
(* mls	v10.8h, v24.8h, v0.h[0]                     #! PC = 0x4128a0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v10 %v10 %mls;
(* mls	v11.8h, v25.8h, v0.h[0]                     #! PC = 0x4128a4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x4128a8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x4128ac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;


assert eqmod %v10 (%v24o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [9]] && true;
assume eqmod %v10 (%v24o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 (%v25o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
       %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
       %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
       %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
       %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
       %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [9]]
   && true;
assume [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
       %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
       %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
       %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
       %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
       %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
       %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
       %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
       %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v16 /\
       %v16<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v17 /\
       %v17<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v18 /\
       %v18<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
       %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v28 /\
       %v28<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
       %v29<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
       %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
       %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 11 11 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
    %v16 = %v16o5 + %v20o5 /\ %v17 = %v17o5 + %v21o5 /\
    %v18 = %v18o5 + %v22o5 /\ %v19 = %v19o5 + %v23o5 /\
    %v28 = %v16o5 - %v20o5 /\ %v29 = %v17o5 - %v21o5 /\
    %v30 = %v18o5 - %v22o5 /\ %v31 = %v19o5 - %v23o5 /\
    eqmod %v10 (%v24o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v11 (%v25o5*[%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1],%v1[1]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v14 (%v26o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o5*[%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3],%v1[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v16 /\
    %v16<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v17 /\
    %v17<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v18 /\
    %v18<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v19 /\
    %v19<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v28 /\
    %v28<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v29 /\
    %v29<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v30 /\
    %v30<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v31 /\
    %v31<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v16 /\
    %v16<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v17 /\
    %v17<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v18 /\
    %v18<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v19 /\
    %v19<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v28 /\
    %v28<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v29 /\
    %v29<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v30 /\
    %v30<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v31 /\
    %v31<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [9]];

ghost %v28o5@int16[8],%v29o5@int16[8],%v30o5@int16[8],%v31o5@int16[8],
       %v8o7@int16[8], %v9o7@int16[8],%v10o7@int16[8],%v11o7@int16[8],
      %v12o7@int16[8],%v13o7@int16[8],%v14o7@int16[8],%v15o7@int16[8]:
      %v28o5 = %v28 /\ %v29o5 = %v29 /\ %v30o5 = %v30 /\ %v31o5 = %v31 /\
       %v8o7 =  %v8 /\  %v9o7 =  %v9 /\ %v10o7 = %v10 /\ %v11o7 = %v11 /\
      %v12o7 = %v12 /\ %v13o7 = %v13 /\ %v14o7 = %v14 /\ %v15o7 = %v15
   && %v28o5 = %v28 /\ %v29o5 = %v29 /\ %v30o5 = %v30 /\ %v31o5 = %v31 /\
       %v8o7 =  %v8 /\  %v9o7 =  %v9 /\ %v10o7 = %v10 /\ %v11o7 = %v11 /\
      %v12o7 = %v12 /\ %v13o7 = %v13 /\ %v14o7 = %v14 /\ %v15o7 = %v15;


(* mul	v20.8h, v28.8h, v0.h[7]                     #! PC = 0x4128b0 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v20 %v28 %mul; cast %v20@int16[8] %v20;
(* sub	v24.8h, v8.8h, v12.8h                       #! PC = 0x4128b4 *)
sub %v24 %v8 %v12;
(* mul	v21.8h, v29.8h, v0.h[7]                     #! PC = 0x4128b8 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v21 %v29 %mul; cast %v21@int16[8] %v21;
(* sub	v25.8h, v9.8h, v13.8h                       #! PC = 0x4128bc *)
sub %v25 %v9 %v13;
(* mul	v22.8h, v30.8h, v0.h[7]                     #! PC = 0x4128c0 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v22 %v30 %mul; cast %v22@int16[8] %v22;
(* sub	v26.8h, v10.8h, v14.8h                      #! PC = 0x4128c4 *)
sub %v26 %v10 %v14;
(* mul	v23.8h, v31.8h, v0.h[7]                     #! PC = 0x4128c8 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v23 %v31 %mul; cast %v23@int16[8] %v23;
(* sub	v27.8h, v11.8h, v15.8h                      #! PC = 0x4128cc *)
sub %v27 %v11 %v15;
(* sqrdmulh	v28.8h, v28.8h, v0.h[6]                #! PC = 0x4128d0 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v8.8h, v8.8h, v12.8h                        #! PC = 0x4128d4 *)
add %v8 %v8 %v12;
(* sqrdmulh	v29.8h, v29.8h, v0.h[6]                #! PC = 0x4128d8 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v9.8h, v9.8h, v13.8h                        #! PC = 0x4128dc *)
add %v9 %v9 %v13;
(* sqrdmulh	v30.8h, v30.8h, v0.h[6]                #! PC = 0x4128e0 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v10.8h, v10.8h, v14.8h                      #! PC = 0x4128e4 *)
add %v10 %v10 %v14;
(* sqrdmulh	v31.8h, v31.8h, v0.h[6]                #! PC = 0x4128e8 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v11.8h, v11.8h, v15.8h                      #! PC = 0x4128ec *)
add %v11 %v11 %v15;
(* mls	v20.8h, v28.8h, v0.h[0]                     #! PC = 0x4128f0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v29.8h, v0.h[0]                     #! PC = 0x4128f4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v30.8h, v0.h[0]                     #! PC = 0x4128f8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v31.8h, v0.h[0]                     #! PC = 0x4128fc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;


assert eqmod %v20 (%v28o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v29o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume eqmod %v20 (%v28o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v29o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v30o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v31o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
       %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
       %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
       %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
       %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
       %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
       prove with [algebra solver isl, cuts [10]]
   && true;
assume [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
       %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
       %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
       %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
       %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
       %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
       %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
    && [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v8 /\
       %v8<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v9 /\
       %v9<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v10 /\
       %v10<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v11 /\
       %v11<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v24 /\
       %v24<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
       %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q];

(* CUT 12 12 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o7 + %v12o7 /\  %v9 =  %v9o7 + %v13o7 /\
    %v10 = %v10o7 + %v14o7 /\ %v11 = %v11o7 + %v15o7 /\
    %v24 =  %v8o7 - %v12o7 /\ %v25 =  %v9o7 - %v13o7 /\
    %v26 = %v10o7 - %v14o7 /\ %v27 = %v11o7 - %v15o7 /\
    eqmod %v20 (%v28o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 (%v29o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 (%v30o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 (%v31o5*[%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7],%v0[7]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v8 /\
    %v8<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v9 /\
    %v9<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v10 /\
    %v10<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v11 /\
    %v11<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB,8*NB]<%v24 /\
    %v24<[8*B,8*B,8*B,8*B,8*B,8*B,8*B,8*B] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v25 /\
    %v25<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v8 /\
    %v8<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v9 /\
    %v9<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v10 /\
    %v10<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v11 /\
    %v11<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB,8@16*NB]<s%v24 /\
    %v24<s[8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B,8@16*B] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v25 /\
    %v25<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q]
    prove with [cuts [10]];


ghost %v24o6@int16[8],%v25o6@int16[8],%v26o6@int16[8],%v27o6@int16[8],
       %v8o8@int16[8], %v9o8@int16[8],%v10o8@int16[8],%v11o8@int16[8],
      %v16o8@int16[8],%v17o8@int16[8],%v18o8@int16[8],%v19o8@int16[8]:
      %v24o6 = %v24 /\ %v25o6 = %v25 /\ %v26o6 = %v26 /\ %v27o6 = %v27 /\
       %v8o8 =  %v8 /\  %v9o8 =  %v9 /\ %v10o8 = %v10 /\ %v11o8 = %v11 /\
      %v16o8 = %v16 /\ %v17o8 = %v17 /\ %v18o8 = %v18 /\ %v19o8 = %v19
   && %v24o6 = %v24 /\ %v25o6 = %v25 /\ %v26o6 = %v26 /\ %v27o6 = %v27 /\
       %v8o8 =  %v8 /\  %v9o8 =  %v9 /\ %v10o8 = %v10 /\ %v11o8 = %v11 /\
      %v16o8 = %v16 /\ %v17o8 = %v17 /\ %v18o8 = %v18 /\ %v19o8 = %v19;


(* mul	v12.8h, v24.8h, v0.h[5]                     #! PC = 0x412900 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v12 %v24 %mul; cast %v12@int16[8] %v12;
(* sub	v28.8h, v8.8h, v16.8h                       #! PC = 0x412904 *)
sub %v28 %v8 %v16;
(* mul	v13.8h, v25.8h, v0.h[5]                     #! PC = 0x412908 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v13 %v25 %mul; cast %v13@int16[8] %v13;
(* sub	v29.8h, v9.8h, v17.8h                       #! PC = 0x41290c *)
sub %v29 %v9 %v17;
(* mul	v14.8h, v26.8h, v0.h[5]                     #! PC = 0x412910 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v14 %v26 %mul; cast %v14@int16[8] %v14;
(* sub	v30.8h, v10.8h, v18.8h                      #! PC = 0x412914 *)
sub %v30 %v10 %v18;
(* mul	v15.8h, v27.8h, v0.h[5]                     #! PC = 0x412918 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v15 %v27 %mul; cast %v15@int16[8] %v15;
(* sub	v31.8h, v11.8h, v19.8h                      #! PC = 0x41291c *)
sub %v31 %v11 %v19;
(* sqrdmulh	v24.8h, v24.8h, v0.h[4]                #! PC = 0x412920 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* add	v8.8h, v8.8h, v16.8h                        #! PC = 0x412924 *)
add %v8 %v8 %v16;
(* sqrdmulh	v25.8h, v25.8h, v0.h[4]                #! PC = 0x412928 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v9.8h, v9.8h, v17.8h                        #! PC = 0x41292c *)
add %v9 %v9 %v17;
(* sqrdmulh	v26.8h, v26.8h, v0.h[4]                #! PC = 0x412930 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* add	v10.8h, v10.8h, v18.8h                      #! PC = 0x412934 *)
add %v10 %v10 %v18;
(* sqrdmulh	v27.8h, v27.8h, v0.h[4]                #! PC = 0x412938 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* add	v11.8h, v11.8h, v19.8h                      #! PC = 0x41293c *)
add %v11 %v11 %v19;
(* mls	v12.8h, v24.8h, v0.h[0]                     #! PC = 0x412940 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v12 %v12 %mls;
(* mls	v13.8h, v25.8h, v0.h[0]                     #! PC = 0x412944 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x412948 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x41294c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;


assert eqmod %v12 (%v24o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v25o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [10]] && true;
assume eqmod %v12 (%v24o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 (%v25o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 (%v26o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 (%v27o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];
assert [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
       %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
       %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
       %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
       %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
       %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
       %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
       %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
       %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
       prove with [algebra solver isl, cuts [11]]
    && true;
assume [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
       %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
       %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
       %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
       %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
       %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
       [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
       %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
       %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
       [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
       %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
    && [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v8 /\
       %v8<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v9 /\
       %v9<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v10 /\
       %v10<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v11 /\
       %v11<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v28 /\
       %v28<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
       [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v29 /\
       %v29<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v30 /\
       %v30<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
       [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v31 /\
       %v31<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q];

(* CUT 13 13 *)
cut Q = 3329 /\ NQ = -3329 /\ B = 1665 /\ NB = -1665 /\
     %v8 =  %v8o8 + %v16o8 /\  %v9 =  %v9o8 + %v17o8 /\
    %v10 = %v10o8 + %v18o8 /\ %v11 = %v11o8 + %v19o8 /\
    %v28 =  %v8o8 - %v16o8 /\ %v29 =  %v9o8 - %v17o8 /\
    %v30 = %v10o8 - %v18o8 /\ %v31 = %v11o8 - %v19o8 /\
    eqmod %v12 (%v24o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v13 (%v25o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v14 (%v26o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v15 (%v27o6*[%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5],%v0[5]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v8 /\
    %v8<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v9 /\
    %v9<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v10 /\
    %v10<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v11 /\
    %v11<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB,16*NB]<%v28 /\
    %v28<[16*B,16*B,16*B,16*B,16*B,16*B,16*B,16*B] /\
    [8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ,8*NQ]<%v29 /\
    %v29<[8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q,8*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v30 /\
    %v30<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q] /\
    [4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ,4*NQ]<%v31 /\
    %v31<[4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q,4*Q]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ B = 1665@16 /\ NB = (-1665)@16 /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v8 /\
    %v8<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v9 /\
    %v9<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v10 /\
    %v10<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v11 /\
    %v11<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB,16@16*NB]<s%v28 /\
    %v28<s[16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B,16@16*B] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s%v29 /\
    %v29<s[8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v30 /\
    %v30<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s%v31 /\
    %v31<s[4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q]
    prove with [cuts [11]];

ghost %v28o6@int16[8],%v29o6@int16[8],%v30o6@int16[8],%v31o6@int16[8],
      %v12o8@int16[8],%v13o8@int16[8],%v14o8@int16[8],%v15o8@int16[8],
      %v20o8@int16[8],%v21o8@int16[8],%v22o8@int16[8],%v23o8@int16[8]:
      %v28o6 = %v28 /\ %v29o6 = %v29 /\ %v30o6 = %v30 /\ %v31o6 = %v31 /\
      %v12o8 = %v12 /\ %v13o8 = %v13 /\ %v14o8 = %v14 /\ %v15o8 = %v15 /\
      %v20o8 = %v20 /\ %v21o8 = %v21 /\ %v22o8 = %v22 /\ %v23o8 = %v23
   && %v28o6 = %v28 /\ %v29o6 = %v29 /\ %v30o6 = %v30 /\ %v31o6 = %v31 /\
      %v12o8 = %v12 /\ %v13o8 = %v13 /\ %v14o8 = %v14 /\ %v15o8 = %v15 /\
      %v20o8 = %v20 /\ %v21o8 = %v21 /\ %v22o8 = %v22 /\ %v23o8 = %v23;

(* mul	v16.8h, v28.8h, v4.h[3]                     #! PC = 0x412950 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v16 %v28 %mul; cast %v16@int16[8] %v16;
(* sub	v24.8h, v12.8h, v20.8h                      #! PC = 0x412954 *)
sub %v24 %v12 %v20;
(* mul	v17.8h, v29.8h, v4.h[3]                     #! PC = 0x412958 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v17 %v29 %mul; cast %v17@int16[8] %v17;
(* sub	v25.8h, v13.8h, v21.8h                      #! PC = 0x41295c *)
sub %v25 %v13 %v21;
(* mul	v18.8h, v30.8h, v4.h[3]                     #! PC = 0x412960 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v18 %v30 %mul; cast %v18@int16[8] %v18;
(* sub	v26.8h, v14.8h, v22.8h                      #! PC = 0x412964 *)
sub %v26 %v14 %v22;
(* mul	v19.8h, v31.8h, v4.h[3]                     #! PC = 0x412968 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v19 %v31 %mul; cast %v19@int16[8] %v19;
(* sub	v27.8h, v15.8h, v23.8h                      #! PC = 0x41296c *)
sub %v27 %v15 %v23;
(* sqrdmulh	v28.8h, v28.8h, v4.h[2]                #! PC = 0x412970 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v28 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* add	v12.8h, v12.8h, v20.8h                      #! PC = 0x412974 *)
add %v12 %v12 %v20;
(* sqrdmulh	v29.8h, v29.8h, v4.h[2]                #! PC = 0x412978 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v29 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v13.8h, v13.8h, v21.8h                      #! PC = 0x41297c *)
add %v13 %v13 %v21;
(* sqrdmulh	v30.8h, v30.8h, v4.h[2]                #! PC = 0x412980 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v30 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* add	v14.8h, v14.8h, v22.8h                      #! PC = 0x412984 *)
add %v14 %v14 %v22;
(* sqrdmulh	v31.8h, v31.8h, v4.h[2]                #! PC = 0x412988 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v31 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* add	v15.8h, v15.8h, v23.8h                      #! PC = 0x41298c *)
add %v15 %v15 %v23;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x412990 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v29.8h, v0.h[0]                     #! PC = 0x412994 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;
(* mls	v18.8h, v30.8h, v0.h[0]                     #! PC = 0x412998 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x41299c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v16 (%v28o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v29o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v18 (%v30o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
       %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
       %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
       %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [12]] && true;
assume eqmod %v16 (%v28o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v29o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v18 (%v30o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
       %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
       %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
       %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
       %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
       %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
       %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
       %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
       %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v12 /\
       %v12<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
       %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v14 /\
       %v14<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v15 /\
       %v15<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
       %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
       %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
       %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
       %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 14 14 *)
cut Q = 3329 /\ B = 1665 /\ NQ = -3329 /\ NB = -1665 /\
    %v12 = %v12o8 + %v20 /\ %v24 = %v12o8 - %v20 /\
    %v13 = %v13o8 + %v21 /\ %v25 = %v13o8 - %v21 /\
    %v14 = %v14o8 + %v22 /\ %v26 = %v14o8 - %v22 /\
    %v15 = %v15o8 + %v23 /\ %v27 = %v15o8 - %v23 /\
    eqmod %v16 (%v28o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v29o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v18 (%v30o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o6*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
          [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v12 /\
    %v12<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v13 /\
    %v13<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v14 /\
    %v14<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v15 /\
    %v15<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v24 /\
    %v24<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v25 /\
    %v25<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v26 /\
    %v26<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ,2*NQ]<%v27 /\
    %v27<[2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q,2*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
 && [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v12 /\
    %v12<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v13 /\
    %v13<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v14 /\
    %v14<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v15 /\
    %v15<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v24 /\
    %v24<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v25 /\
    %v25<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v26 /\
    %v26<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s%v27 /\
    %v27<s[2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [12]];

ghost %v24o7@int16[8],%v25o7@int16[8],%v26o7@int16[8],%v27o7@int16[8]:
      %v24o7 = %v24 /\ %v25o7 = %v25 /\ %v26o7 = %v26 /\ %v27o7 = %v27
   && %v24o7 = %v24 /\ %v25o7 = %v25 /\ %v26o7 = %v26 /\ %v27o7 = %v27;

(* mul	v20.8h, v24.8h, v4.h[3]                     #! PC = 0x4129a0 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v20 %v24 %mul; cast %v20@int16[8] %v20;
(* mul	v21.8h, v25.8h, v4.h[3]                     #! PC = 0x4129a4 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v21 %v25 %mul; cast %v21@int16[8] %v21;
(* mul	v22.8h, v26.8h, v4.h[3]                     #! PC = 0x4129a8 *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v22 %v26 %mul; cast %v22@int16[8] %v22;
(* mul	v23.8h, v27.8h, v4.h[3]                     #! PC = 0x4129ac *)
broadcast %mul 8 [%v4[3]]; mull %mdc %v23 %v27 %mul; cast %v23@int16[8] %v23;
(* str	q16, [x0, #272]                             #! EA = L0xffffffffc4b0; PC = 0x4129b0 *)
mov [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] %v16;
(* sqrdmulh	v24.8h, v24.8h, v4.h[2]                #! PC = 0x4129b4 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v24 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* str	q17, [x0, #304]                             #! EA = L0xffffffffc4d0; PC = 0x4129b8 *)
mov [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] %v17;
(* sqrdmulh	v25.8h, v25.8h, v4.h[2]                #! PC = 0x4129bc *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v25 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* str	q18, [x0, #336]                             #! EA = L0xffffffffc4f0; PC = 0x4129c0 *)
mov [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] %v18;
(* sqrdmulh	v26.8h, v26.8h, v4.h[2]                #! PC = 0x4129c4 *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v26 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* str	q19, [x0, #368]                             #! EA = L0xffffffffc510; PC = 0x4129c8 *)
mov [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] %v19;
(* sqrdmulh	v27.8h, v27.8h, v4.h[2]                #! PC = 0x4129cc *)
broadcast %sqrdmulh 8 [%v4[2]]; smulj %LO %v27 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v20.8h, v24.8h, v0.h[0]                     #! PC = 0x4129d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v25.8h, v0.h[0]                     #! PC = 0x4129d4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v26.8h, v0.h[0]                     #! PC = 0x4129d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v27.8h, v0.h[0]                     #! PC = 0x4129dc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert eqmod %v20 (%v24o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v25o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v26o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v27o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [13]] && true;
assume eqmod %v20 (%v24o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 (%v25o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 (%v26o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 (%v27o7*[%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3],%v4[3]])
             [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost  %v8o9@int16[8], %v9o9@int16[8],%v10o9@int16[8],%v11o9@int16[8],
      %v12o9@int16[8],%v13o9@int16[8],%v14o9@int16[8],%v15o9@int16[8]:
       %v8o9 =  %v8 /\  %v9o9 =  %v9 /\ %v10o9 = %v10 /\ %v11o9 = %v11 /\
      %v12o9 = %v12 /\ %v13o9 = %v13 /\ %v14o9 = %v14 /\ %v15o9 = %v15
   &&  %v8o9 =  %v8 /\  %v9o9 =  %v9 /\ %v10o9 = %v10 /\ %v11o9 = %v11 /\
      %v12o9 = %v12 /\ %v13o9 = %v13 /\ %v14o9 = %v14 /\ %v15o9 = %v15;

(* str	q20, [x0, #400]                             #! EA = L0xffffffffc530; PC = 0x4129e0 *)
mov [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] %v20;
(* sqrdmulh	v28.8h, v8.8h, v4.h[0]                 #! PC = 0x4129e4 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v8 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* str	q21, [x0, #432]                             #! EA = L0xffffffffc550; PC = 0x4129e8 *)
mov [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] %v21;
(* sqrdmulh	v29.8h, v9.8h, v4.h[0]                 #! PC = 0x4129ec *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* str	q22, [x0, #464]                             #! EA = L0xffffffffc570; PC = 0x4129f0 *)
mov [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] %v22;
(* sqrdmulh	v30.8h, v10.8h, v4.h[0]                #! PC = 0x4129f4 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* str	q23, [x0, #496]                             #! EA = L0xffffffffc590; PC = 0x4129f8 *)
mov [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] %v23;
(* sqrdmulh	v31.8h, v11.8h, v4.h[0]                #! PC = 0x4129fc *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mul	v8.8h, v8.8h, v4.h[1]                       #! PC = 0x412a00 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v8 %v8 %mul; cast %v8@int16[8] %v8;
(* mul	v9.8h, v9.8h, v4.h[1]                       #! PC = 0x412a04 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v9 %v9 %mul; cast %v9@int16[8] %v9;
(* mul	v10.8h, v10.8h, v4.h[1]                     #! PC = 0x412a08 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v10 %v10 %mul; cast %v10@int16[8] %v10;
(* mul	v11.8h, v11.8h, v4.h[1]                     #! PC = 0x412a0c *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v11 %v11 %mul; cast %v11@int16[8] %v11;
(* mls	v8.8h, v28.8h, v0.h[0]                      #! PC = 0x412a10 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v8 %v8 %mls;
(* mls	v9.8h, v29.8h, v0.h[0]                      #! PC = 0x412a14 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v9 %v9 %mls;
(* mls	v10.8h, v30.8h, v0.h[0]                     #! PC = 0x412a18 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v10 %v10 %mls;
(* mls	v11.8h, v31.8h, v0.h[0]                     #! PC = 0x412a1c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v11 %v11 %mls;

assert eqmod  %v8 ([512,512,512,512,512,512,512,512]* %v8o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod  %v9 ([512,512,512,512,512,512,512,512]* %v9o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v10 ([512,512,512,512,512,512,512,512]*%v10o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 ([512,512,512,512,512,512,512,512]*%v11o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v8  /\ %v8 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9  /\ %v9 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [13]] && true;
assume eqmod  %v8 ([512,512,512,512,512,512,512,512]* %v8o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod  %v9 ([512,512,512,512,512,512,512,512]* %v9o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v10 ([512,512,512,512,512,512,512,512]*%v10o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v11 ([512,512,512,512,512,512,512,512]*%v11o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v8  /\ %v8 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v9  /\ %v9 <[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v10 /\ %v10<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v11 /\ %v11<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v8  /\ %v8 <s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v9  /\ %v9 <s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v10 /\ %v10<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v11 /\ %v11<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* str	q8, [x0, #16]                               #! EA = L0xffffffffc3b0; PC = 0x412a20 *)
mov [L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be] %v8;
(* sqrdmulh	v24.8h, v12.8h, v4.h[0]                #! PC = 0x412a24 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v12 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v24 %LO11 %LO01;
(* str	q9, [x0, #48]                               #! EA = L0xffffffffc3d0; PC = 0x412a28 *)
mov [L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de] %v9;
(* sqrdmulh	v25.8h, v13.8h, v4.h[0]                #! PC = 0x412a2c *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* str	q10, [x0, #80]                              #! EA = L0xffffffffc3f0; PC = 0x412a30 *)
mov [L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe] %v10;
(* sqrdmulh	v26.8h, v14.8h, v4.h[0]                #! PC = 0x412a34 *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* str	q11, [x0, #112]                             #! EA = L0xffffffffc410; PC = 0x412a38 *)
mov [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e] %v11;
(* sqrdmulh	v27.8h, v15.8h, v4.h[0]                #! PC = 0x412a3c *)
broadcast %sqrdmulh 8 [%v4[0]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mul	v12.8h, v12.8h, v4.h[1]                     #! PC = 0x412a40 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v12 %v12 %mul; cast %v12@int16[8] %v12;
(* mul	v13.8h, v13.8h, v4.h[1]                     #! PC = 0x412a44 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v13 %v13 %mul; cast %v13@int16[8] %v13;
(* mul	v14.8h, v14.8h, v4.h[1]                     #! PC = 0x412a48 *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v14 %v14 %mul; cast %v14@int16[8] %v14;
(* mul	v15.8h, v15.8h, v4.h[1]                     #! PC = 0x412a4c *)
broadcast %mul 8 [%v4[1]]; mull %mdc %v15 %v15 %mul; cast %v15@int16[8] %v15;
(* mls	v12.8h, v24.8h, v0.h[0]                     #! PC = 0x412a50 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v24 %mls;
cast %mls@int16[8] %mls; subc %mdc %v12 %v12 %mls;
(* mls	v13.8h, v25.8h, v0.h[0]                     #! PC = 0x412a54 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v13 %v13 %mls;
(* mls	v14.8h, v26.8h, v0.h[0]                     #! PC = 0x412a58 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v14 %v14 %mls;
(* mls	v15.8h, v27.8h, v0.h[0]                     #! PC = 0x412a5c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v15 %v15 %mls;

assert eqmod %v12 ([512,512,512,512,512,512,512,512]*%v12o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 ([512,512,512,512,512,512,512,512]*%v13o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 ([512,512,512,512,512,512,512,512]*%v14o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 ([512,512,512,512,512,512,512,512]*%v15o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [13]] && true;
assume eqmod %v12 ([512,512,512,512,512,512,512,512]*%v12o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v13 ([512,512,512,512,512,512,512,512]*%v13o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v14 ([512,512,512,512,512,512,512,512]*%v14o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v15 ([512,512,512,512,512,512,512,512]*%v15o9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v12 /\ %v12<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v13 /\ %v13<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v14 /\ %v14<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v15 /\ %v15<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v12 /\ %v12<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v13 /\ %v13<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v14 /\ %v14<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v15 /\ %v15<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* str	q12, [x0, #144]                             #! EA = L0xffffffffc430; PC = 0x412a60 *)
mov [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e] %v12;
(* str	q13, [x0, #176]                             #! EA = L0xffffffffc450; PC = 0x412a64 *)
mov [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e] %v13;
(* str	q14, [x0, #208]                             #! EA = L0xffffffffc470; PC = 0x412a68 *)
mov [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e] %v14;
(* str	q15, [x0, #240]                             #! EA = L0xffffffffc490; PC = 0x412a6c *)
mov [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e] %v15;

assert
eqmod (poly X [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
               L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae,
               L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,
               L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be,
               L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
               L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce,
               L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,
               L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de,
               L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
               L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee,
               L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,
               L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe,
               L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
               L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e,
               L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
               L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e,
               L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
               L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e,
               L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
               L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e,
               L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
               L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e,
               L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
               L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e,
               L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
               L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e,
               L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
               L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e,
               L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
               L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e,
               L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
               L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e,
               L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
               L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae,
               L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
               L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be,
               L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
               L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce,
               L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
               L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de,
               L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
               L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee,
               L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
               L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe,
               L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
               L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e,
               L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
               L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e,
               L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
               L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e,
               L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
               L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e,
               L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
               L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e,
               L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
               L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e,
               L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
               L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e,
               L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
               L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e,
               L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
               L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e,
               L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
               L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
      (2**16*F**2) [Q, X**256 - 17**128]
      prove with [precondition, all ghosts, all cuts] && true;
assume
eqmod (poly X [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
               L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae,
               L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,
               L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be,
               L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
               L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce,
               L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,
               L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de,
               L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
               L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee,
               L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,
               L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe,
               L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
               L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e,
               L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
               L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e,
               L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
               L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e,
               L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
               L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e,
               L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
               L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e,
               L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
               L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e,
               L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
               L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e,
               L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
               L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e,
               L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
               L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e,
               L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
               L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e,
               L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
               L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae,
               L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
               L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be,
               L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
               L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce,
               L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
               L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de,
               L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
               L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee,
               L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
               L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe,
               L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
               L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e,
               L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
               L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e,
               L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
               L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e,
               L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
               L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e,
               L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
               L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e,
               L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
               L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e,
               L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
               L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e,
               L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
               L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e,
               L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
               L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e,
               L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
               L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
      (2**16*F**2) [Q, X**256 - 17**128] && true;
      

(* ldp	x19, x20, [sp]                              #! EA = L0xffffffffa790; Value = 0x0000ffffffffc3a0; PC = 0x412a70 *)
mov x19 L0xffffffffa790; mov x20 L0xffffffffa798;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0xffffffffa7a0; Value = 0x0000ffffffffc9a0; PC = 0x412a74 *)
mov x21 L0xffffffffa7a0; mov x22 L0xffffffffa7a8;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0xffffffffa7b0; Value = 0x0000ffffffffdcd0; PC = 0x412a78 *)
mov x23 L0xffffffffa7b0; mov x24 L0xffffffffa7b8;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0xffffffffa7c0; Value = 0x0000000000000000; PC = 0x412a7c *)
mov x25 L0xffffffffa7c0; mov x26 L0xffffffffa7c8;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0xffffffffa7d0; Value = 0x0000000000428de0; PC = 0x412a80 *)
mov x27 L0xffffffffa7d0; mov x28 L0xffffffffa7d8;
(* ldp	d8, d9, [sp, #80]                           #! EA = L0xffffffffa7e0; Value = 0x0000000000000000; PC = 0x412a84 *)
mov %v8 [L0xffffffffa7e0,L0xffffffffa7e2,L0xffffffffa7e4,L0xffffffffa7e6]++%v8[4:8];
mov %v9 [L0xffffffffa7e8, L0xffffffffa7ea, L0xffffffffa7ec, L0xffffffffa7ee]++%v9[4:8];
(* ldp	d10, d11, [sp, #96]                         #! EA = L0xffffffffa7f0; Value = 0x0000000000000000; PC = 0x412a88 *)
mov %v10 [L0xffffffffa7f0,L0xffffffffa7f2,L0xffffffffa7f4,L0xffffffffa7f6]++%v10[4:8];
mov %v11 [L0xffffffffa7f8, L0xffffffffa7fa, L0xffffffffa7fc, L0xffffffffa7fe]++%v11[4:8];
(* ldp	d12, d13, [sp, #112]                        #! EA = L0xffffffffa800; Value = 0x0000000000000000; PC = 0x412a8c *)
mov %v12 [L0xffffffffa800,L0xffffffffa802,L0xffffffffa804,L0xffffffffa806]++%v12[4:8];
mov %v13 [L0xffffffffa808, L0xffffffffa80a, L0xffffffffa80c, L0xffffffffa80e]++%v13[4:8];
(* ldp	d14, d15, [sp, #128]                        #! EA = L0xffffffffa810; Value = 0x0000000000000000; PC = 0x412a90 *)
mov %v14 [L0xffffffffa810,L0xffffffffa812,L0xffffffffa814,L0xffffffffa816]++%v14[4:8];
mov %v15 [L0xffffffffa818, L0xffffffffa81a, L0xffffffffa81c, L0xffffffffa81e]++%v15[4:8];
(* add	sp, sp, #0x90                               #! PC = 0x412a94 *)
adds dc sp sp 0x90@uint64;
(* #! <- SP = 0xffffffffa820 *)
#! 0xffffffffa820 = 0xffffffffa820;
(* #ret                                            #! PC = 0x412a98 *)
#ret                                            #! 0x412a98 = 0x412a98;

{
eqmod (poly X [L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6,
               L0xffffffffc3a8,L0xffffffffc3aa,L0xffffffffc3ac,L0xffffffffc3ae,
               L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6,
               L0xffffffffc3b8,L0xffffffffc3ba,L0xffffffffc3bc,L0xffffffffc3be,
               L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6,
               L0xffffffffc3c8,L0xffffffffc3ca,L0xffffffffc3cc,L0xffffffffc3ce,
               L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6,
               L0xffffffffc3d8,L0xffffffffc3da,L0xffffffffc3dc,L0xffffffffc3de,
               L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6,
               L0xffffffffc3e8,L0xffffffffc3ea,L0xffffffffc3ec,L0xffffffffc3ee,
               L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6,
               L0xffffffffc3f8,L0xffffffffc3fa,L0xffffffffc3fc,L0xffffffffc3fe,
               L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
               L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e,
               L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
               L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e,
               L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
               L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e,
               L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
               L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e,
               L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
               L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e,
               L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
               L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e,
               L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
               L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e,
               L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
               L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e,
               L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
               L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e,
               L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
               L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e,
               L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
               L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae,
               L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
               L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be,
               L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
               L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce,
               L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
               L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de,
               L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
               L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee,
               L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
               L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe,
               L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
               L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e,
               L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
               L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e,
               L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
               L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e,
               L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
               L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e,
               L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
               L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e,
               L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
               L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e,
               L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
               L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e,
               L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
               L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e,
               L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
               L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e,
               L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
               L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
      (2**16*F**2) [Q, X**256 - 17**128]
 &&
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]/\
[L0xffffffffc3a0,L0xffffffffc3a2,L0xffffffffc3a4,L0xffffffffc3a6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]/\
[L0xffffffffc3c0,L0xffffffffc3c2,L0xffffffffc3c4,L0xffffffffc3c6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]/\
[L0xffffffffc3e0,L0xffffffffc3e2,L0xffffffffc3e4,L0xffffffffc3e6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]/\
[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]/\
[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]/\
[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]/\
[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]/\
[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]/\
[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]/\
[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]/\
[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]/\
[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]/\
[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]/\
[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]/\
[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]/\
[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]/\
[L0xffffffffc3b0,L0xffffffffc3b2,L0xffffffffc3b4,L0xffffffffc3b6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]/\
[L0xffffffffc3d0,L0xffffffffc3d2,L0xffffffffc3d4,L0xffffffffc3d6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]/\
[L0xffffffffc3f0,L0xffffffffc3f2,L0xffffffffc3f4,L0xffffffffc3f6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]/\
[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]/\
[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]/\
[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]/\
[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]/\
[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]/\
[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]/\
[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]/\
[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]/\
[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]/\
[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]/\
[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]/\
[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<s[Q,Q,Q,Q]/\
[NQ,NQ,NQ,NQ]<s[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]/\
[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<s[Q,Q,Q,Q]
    prove with [precondition, cuts [7, 13]]
}

