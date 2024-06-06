(* quine: cv.exe -v -isafety -slicing -no_carry_constraint -jobs 40 -vo lex PQCLEAN_KYBER768_AARCH64__asm_ntt_SIMD_top.cl
Parsing CryptoLine file:                     [OK]            0.1365 seconds
Checking well-formedness:                    [OK]            0.0355 seconds

Procedure main
--------------
Transforming to SSA form:                    [OK]            0.0340 seconds
Normalizing specification:                   [OK]            0.0268 seconds
Rewriting assignments:                       [OK]            0.0258 seconds
Verifying program safety:                    [OK]            50.7765 seconds
Verifying range assertions:                  [OK]            105.5893 seconds
Verifying range specification:               [OK]            0.4439 seconds
Rewriting value-preserved casting:           [OK]            0.0148 seconds
Verifying algebraic assertions:              [OK]            733.7381 seconds
Verifying algebraic specification:           [OK]            145.1020 seconds
Procedure verification:                      [OK]            1035.7816 seconds

Summary
-------
Verification result:                         [OK]            1035.9724 seconds
*)

(* quine: cv.exe -v -isafety -slicing -jobs 40 -vo lex PQCLEAN_KYBER768_AARCH64__asm_ntt_SIMD_top.cl
Parsing CryptoLine file:                     [OK]            0.1323 seconds
Checking well-formedness:                    [OK]            0.0358 seconds

Procedure main
--------------
Transforming to SSA form:                    [OK]            0.0346 seconds
Normalizing specification:                   [OK]            0.0267 seconds
Rewriting assignments:                       [OK]            0.0254 seconds
Verifying program safety:                    [OK]            46.8781 seconds
Verifying range assertions:                  [OK]            96.4204 seconds
Verifying range specification:               [OK]            9.4083 seconds
Rewriting value-preserved casting:           [OK]            0.0254 seconds
Verifying algebraic assertions:              [OK]            3252.1331 seconds
Verifying algebraic specification:           [OK]            146.8818 seconds
Procedure verification:                      [OK]            3551.8484 seconds

Summary
-------
Verification result:                         [OK]            3552.0164 seconds
*)

(* quine: cv.exe -v -slicing -jobs 32 -isafety -vo lex PQCLEAN_KYBER768_AARCH64__asm_ntt_SIMD_top.cl
Parsing CryptoLine file:                        [OK]            0.1306 seconds
Checking well-formedness:                       [OK]            0.0366 seconds

Procedure main
--------------
Transforming to SSA form:                       [OK]            0.0343 seconds
Normalizing specification:                      [OK]            0.0265 seconds
Rewriting assignments:                          [OK]            0.0255 seconds
Verifying program safety:                       [OK]            47.6637 seconds
Verifying range assertions:                     [OK]            103.5348 seconds
Verifying range specification:                  [OK]            9.6573 seconds
Rewriting value-preserved casting:              [OK]            0.0296 seconds
Verifying algebraic assertions:                 [OK]            720.1350 seconds
Verifying algebraic specification:              [OK]            148.6070 seconds
Procedure verification:                         [OK]            1029.7292 seconds

Summary
-------
Verification result:                            [OK]            1029.8992 seconds
*)

proc main (
int16 A00, int16 A01, int16 A02, int16 A03, int16 A04, int16 A05,
int16 A06, int16 A07, int16 A08, int16 A09, int16 A0a, int16 A0b,
int16 A0c, int16 A0d, int16 A0e, int16 A0f, int16 A10, int16 A11,
int16 A12, int16 A13, int16 A14, int16 A15, int16 A16, int16 A17,
int16 A18, int16 A19, int16 A1a, int16 A1b, int16 A1c, int16 A1d,
int16 A1e, int16 A1f, int16 A20, int16 A21, int16 A22, int16 A23,
int16 A24, int16 A25, int16 A26, int16 A27, int16 A28, int16 A29,
int16 A2a, int16 A2b, int16 A2c, int16 A2d, int16 A2e, int16 A2f,
int16 A30, int16 A31, int16 A32, int16 A33, int16 A34, int16 A35,
int16 A36, int16 A37, int16 A38, int16 A39, int16 A3a, int16 A3b,
int16 A3c, int16 A3d, int16 A3e, int16 A3f, int16 A40, int16 A41,
int16 A42, int16 A43, int16 A44, int16 A45, int16 A46, int16 A47,
int16 A48, int16 A49, int16 A4a, int16 A4b, int16 A4c, int16 A4d,
int16 A4e, int16 A4f, int16 A50, int16 A51, int16 A52, int16 A53,
int16 A54, int16 A55, int16 A56, int16 A57, int16 A58, int16 A59,
int16 A5a, int16 A5b, int16 A5c, int16 A5d, int16 A5e, int16 A5f,
int16 A60, int16 A61, int16 A62, int16 A63, int16 A64, int16 A65,
int16 A66, int16 A67, int16 A68, int16 A69, int16 A6a, int16 A6b,
int16 A6c, int16 A6d, int16 A6e, int16 A6f, int16 A70, int16 A71,
int16 A72, int16 A73, int16 A74, int16 A75, int16 A76, int16 A77,
int16 A78, int16 A79, int16 A7a, int16 A7b, int16 A7c, int16 A7d,
int16 A7e, int16 A7f, int16 A80, int16 A81, int16 A82, int16 A83,
int16 A84, int16 A85, int16 A86, int16 A87, int16 A88, int16 A89,
int16 A8a, int16 A8b, int16 A8c, int16 A8d, int16 A8e, int16 A8f,
int16 A90, int16 A91, int16 A92, int16 A93, int16 A94, int16 A95,
int16 A96, int16 A97, int16 A98, int16 A99, int16 A9a, int16 A9b,
int16 A9c, int16 A9d, int16 A9e, int16 A9f, int16 Aa0, int16 Aa1,
int16 Aa2, int16 Aa3, int16 Aa4, int16 Aa5, int16 Aa6, int16 Aa7,
int16 Aa8, int16 Aa9, int16 Aaa, int16 Aab, int16 Aac, int16 Aad,
int16 Aae, int16 Aaf, int16 Ab0, int16 Ab1, int16 Ab2, int16 Ab3,
int16 Ab4, int16 Ab5, int16 Ab6, int16 Ab7, int16 Ab8, int16 Ab9,
int16 Aba, int16 Abb, int16 Abc, int16 Abd, int16 Abe, int16 Abf,
int16 Ac0, int16 Ac1, int16 Ac2, int16 Ac3, int16 Ac4, int16 Ac5,
int16 Ac6, int16 Ac7, int16 Ac8, int16 Ac9, int16 Aca, int16 Acb,
int16 Acc, int16 Acd, int16 Ace, int16 Acf, int16 Ad0, int16 Ad1,
int16 Ad2, int16 Ad3, int16 Ad4, int16 Ad5, int16 Ad6, int16 Ad7,
int16 Ad8, int16 Ad9, int16 Ada, int16 Adb, int16 Adc, int16 Add,
int16 Ade, int16 Adf, int16 Ae0, int16 Ae1, int16 Ae2, int16 Ae3,
int16 Ae4, int16 Ae5, int16 Ae6, int16 Ae7, int16 Ae8, int16 Ae9,
int16 Aea, int16 Aeb, int16 Aec, int16 Aed, int16 Aee, int16 Aef,
int16 Af0, int16 Af1, int16 Af2, int16 Af3, int16 Af4, int16 Af5,
int16 Af6, int16 Af7, int16 Af8, int16 Af9, int16 Afa, int16 Afb,
int16 Afc, int16 Afd, int16 Afe, int16 Aff, int16   Q, int16  Q2,
int16  NQ, int16 NQ2
) =
{
Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A00,A01,A02,A03,A04,A05,A06,A07] /\
[A00,A01,A02,A03,A04,A05,A06,A07] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] /\
[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A10,A11,A12,A13,A14,A15,A16,A17] /\
[A10,A11,A12,A13,A14,A15,A16,A17] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] /\
[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A20,A21,A22,A23,A24,A25,A26,A27] /\
[A20,A21,A22,A23,A24,A25,A26,A27] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] /\
[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A30,A31,A32,A33,A34,A35,A36,A37] /\
[A30,A31,A32,A33,A34,A35,A36,A37] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] /\
[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A40,A41,A42,A43,A44,A45,A46,A47] /\
[A40,A41,A42,A43,A44,A45,A46,A47] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] /\
[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A50,A51,A52,A53,A54,A55,A56,A57] /\
[A50,A51,A52,A53,A54,A55,A56,A57] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] /\
[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A60,A61,A62,A63,A64,A65,A66,A67] /\
[A60,A61,A62,A63,A64,A65,A66,A67] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] /\
[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A70,A71,A72,A73,A74,A75,A76,A77] /\
[A70,A71,A72,A73,A74,A75,A76,A77] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] /\
[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A80,A81,A82,A83,A84,A85,A86,A87] /\
[A80,A81,A82,A83,A84,A85,A86,A87] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] /\
[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A90,A91,A92,A93,A94,A95,A96,A97] /\
[A90,A91,A92,A93,A94,A95,A96,A97] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] /\
[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] /\
[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] /\
[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] /\
[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] /\
[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] /\
[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] /\
[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] /\
[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] /\
[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] /\
[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] /\
[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] /\
[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] < [Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] /\
[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] < [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2]
&&
Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A00,A01,A02,A03,A04,A05,A06,A07] /\
[A00,A01,A02,A03,A04,A05,A06,A07] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] /\
[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A10,A11,A12,A13,A14,A15,A16,A17] /\
[A10,A11,A12,A13,A14,A15,A16,A17] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] /\
[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A20,A21,A22,A23,A24,A25,A26,A27] /\
[A20,A21,A22,A23,A24,A25,A26,A27] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] /\
[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A30,A31,A32,A33,A34,A35,A36,A37] /\
[A30,A31,A32,A33,A34,A35,A36,A37] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] /\
[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A40,A41,A42,A43,A44,A45,A46,A47] /\
[A40,A41,A42,A43,A44,A45,A46,A47] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] /\
[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A50,A51,A52,A53,A54,A55,A56,A57] /\
[A50,A51,A52,A53,A54,A55,A56,A57] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] /\
[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A60,A61,A62,A63,A64,A65,A66,A67] /\
[A60,A61,A62,A63,A64,A65,A66,A67] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] /\
[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A70,A71,A72,A73,A74,A75,A76,A77] /\
[A70,A71,A72,A73,A74,A75,A76,A77] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] /\
[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A80,A81,A82,A83,A84,A85,A86,A87] /\
[A80,A81,A82,A83,A84,A85,A86,A87] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] /\
[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A90,A91,A92,A93,A94,A95,A96,A97] /\
[A90,A91,A92,A93,A94,A95,A96,A97] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] /\
[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] /\
[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] /\
[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] /\
[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] /\
[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] /\
[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] /\
[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] /\
[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] /\
[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] /\
[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] /\
[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] /\
[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2] /\
[NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2,NQ2] <s [Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] /\
[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] <s [Q2,Q2,Q2,Q2,Q2,Q2,Q2,Q2]
}

nondet sp@uint32;
nondet  %v8@sint16[8]; nondet  %v9@sint16[8]; nondet %v10@sint16[8];
nondet %v11@sint16[8]; nondet %v12@sint16[8]; nondet %v13@sint16[8];
nondet %v14@sint16[8]; nondet %v15@sint16[8];

(******** inputs ********)

mov L0xffffffffc400 A00; mov L0xffffffffc402 A01; mov L0xffffffffc404 A02;
mov L0xffffffffc406 A03; mov L0xffffffffc408 A04; mov L0xffffffffc40a A05;
mov L0xffffffffc40c A06; mov L0xffffffffc40e A07; mov L0xffffffffc410 A08;
mov L0xffffffffc412 A09; mov L0xffffffffc414 A0a; mov L0xffffffffc416 A0b;
mov L0xffffffffc418 A0c; mov L0xffffffffc41a A0d; mov L0xffffffffc41c A0e;
mov L0xffffffffc41e A0f; mov L0xffffffffc420 A10; mov L0xffffffffc422 A11;
mov L0xffffffffc424 A12; mov L0xffffffffc426 A13; mov L0xffffffffc428 A14;
mov L0xffffffffc42a A15; mov L0xffffffffc42c A16; mov L0xffffffffc42e A17;
mov L0xffffffffc430 A18; mov L0xffffffffc432 A19; mov L0xffffffffc434 A1a;
mov L0xffffffffc436 A1b; mov L0xffffffffc438 A1c; mov L0xffffffffc43a A1d;
mov L0xffffffffc43c A1e; mov L0xffffffffc43e A1f; mov L0xffffffffc440 A20;
mov L0xffffffffc442 A21; mov L0xffffffffc444 A22; mov L0xffffffffc446 A23;
mov L0xffffffffc448 A24; mov L0xffffffffc44a A25; mov L0xffffffffc44c A26;
mov L0xffffffffc44e A27; mov L0xffffffffc450 A28; mov L0xffffffffc452 A29;
mov L0xffffffffc454 A2a; mov L0xffffffffc456 A2b; mov L0xffffffffc458 A2c;
mov L0xffffffffc45a A2d; mov L0xffffffffc45c A2e; mov L0xffffffffc45e A2f;
mov L0xffffffffc460 A30; mov L0xffffffffc462 A31; mov L0xffffffffc464 A32;
mov L0xffffffffc466 A33; mov L0xffffffffc468 A34; mov L0xffffffffc46a A35;
mov L0xffffffffc46c A36; mov L0xffffffffc46e A37; mov L0xffffffffc470 A38;
mov L0xffffffffc472 A39; mov L0xffffffffc474 A3a; mov L0xffffffffc476 A3b;
mov L0xffffffffc478 A3c; mov L0xffffffffc47a A3d; mov L0xffffffffc47c A3e;
mov L0xffffffffc47e A3f; mov L0xffffffffc480 A40; mov L0xffffffffc482 A41;
mov L0xffffffffc484 A42; mov L0xffffffffc486 A43; mov L0xffffffffc488 A44;
mov L0xffffffffc48a A45; mov L0xffffffffc48c A46; mov L0xffffffffc48e A47;
mov L0xffffffffc490 A48; mov L0xffffffffc492 A49; mov L0xffffffffc494 A4a;
mov L0xffffffffc496 A4b; mov L0xffffffffc498 A4c; mov L0xffffffffc49a A4d;
mov L0xffffffffc49c A4e; mov L0xffffffffc49e A4f; mov L0xffffffffc4a0 A50;
mov L0xffffffffc4a2 A51; mov L0xffffffffc4a4 A52; mov L0xffffffffc4a6 A53;
mov L0xffffffffc4a8 A54; mov L0xffffffffc4aa A55; mov L0xffffffffc4ac A56;
mov L0xffffffffc4ae A57; mov L0xffffffffc4b0 A58; mov L0xffffffffc4b2 A59;
mov L0xffffffffc4b4 A5a; mov L0xffffffffc4b6 A5b; mov L0xffffffffc4b8 A5c;
mov L0xffffffffc4ba A5d; mov L0xffffffffc4bc A5e; mov L0xffffffffc4be A5f;
mov L0xffffffffc4c0 A60; mov L0xffffffffc4c2 A61; mov L0xffffffffc4c4 A62;
mov L0xffffffffc4c6 A63; mov L0xffffffffc4c8 A64; mov L0xffffffffc4ca A65;
mov L0xffffffffc4cc A66; mov L0xffffffffc4ce A67; mov L0xffffffffc4d0 A68;
mov L0xffffffffc4d2 A69; mov L0xffffffffc4d4 A6a; mov L0xffffffffc4d6 A6b;
mov L0xffffffffc4d8 A6c; mov L0xffffffffc4da A6d; mov L0xffffffffc4dc A6e;
mov L0xffffffffc4de A6f; mov L0xffffffffc4e0 A70; mov L0xffffffffc4e2 A71;
mov L0xffffffffc4e4 A72; mov L0xffffffffc4e6 A73; mov L0xffffffffc4e8 A74;
mov L0xffffffffc4ea A75; mov L0xffffffffc4ec A76; mov L0xffffffffc4ee A77;
mov L0xffffffffc4f0 A78; mov L0xffffffffc4f2 A79; mov L0xffffffffc4f4 A7a;
mov L0xffffffffc4f6 A7b; mov L0xffffffffc4f8 A7c; mov L0xffffffffc4fa A7d;
mov L0xffffffffc4fc A7e; mov L0xffffffffc4fe A7f; mov L0xffffffffc500 A80;
mov L0xffffffffc502 A81; mov L0xffffffffc504 A82; mov L0xffffffffc506 A83;
mov L0xffffffffc508 A84; mov L0xffffffffc50a A85; mov L0xffffffffc50c A86;
mov L0xffffffffc50e A87; mov L0xffffffffc510 A88; mov L0xffffffffc512 A89;
mov L0xffffffffc514 A8a; mov L0xffffffffc516 A8b; mov L0xffffffffc518 A8c;
mov L0xffffffffc51a A8d; mov L0xffffffffc51c A8e; mov L0xffffffffc51e A8f;
mov L0xffffffffc520 A90; mov L0xffffffffc522 A91; mov L0xffffffffc524 A92;
mov L0xffffffffc526 A93; mov L0xffffffffc528 A94; mov L0xffffffffc52a A95;
mov L0xffffffffc52c A96; mov L0xffffffffc52e A97; mov L0xffffffffc530 A98;
mov L0xffffffffc532 A99; mov L0xffffffffc534 A9a; mov L0xffffffffc536 A9b;
mov L0xffffffffc538 A9c; mov L0xffffffffc53a A9d; mov L0xffffffffc53c A9e;
mov L0xffffffffc53e A9f; mov L0xffffffffc540 Aa0; mov L0xffffffffc542 Aa1;
mov L0xffffffffc544 Aa2; mov L0xffffffffc546 Aa3; mov L0xffffffffc548 Aa4;
mov L0xffffffffc54a Aa5; mov L0xffffffffc54c Aa6; mov L0xffffffffc54e Aa7;
mov L0xffffffffc550 Aa8; mov L0xffffffffc552 Aa9; mov L0xffffffffc554 Aaa;
mov L0xffffffffc556 Aab; mov L0xffffffffc558 Aac; mov L0xffffffffc55a Aad;
mov L0xffffffffc55c Aae; mov L0xffffffffc55e Aaf; mov L0xffffffffc560 Ab0;
mov L0xffffffffc562 Ab1; mov L0xffffffffc564 Ab2; mov L0xffffffffc566 Ab3;
mov L0xffffffffc568 Ab4; mov L0xffffffffc56a Ab5; mov L0xffffffffc56c Ab6;
mov L0xffffffffc56e Ab7; mov L0xffffffffc570 Ab8; mov L0xffffffffc572 Ab9;
mov L0xffffffffc574 Aba; mov L0xffffffffc576 Abb; mov L0xffffffffc578 Abc;
mov L0xffffffffc57a Abd; mov L0xffffffffc57c Abe; mov L0xffffffffc57e Abf;
mov L0xffffffffc580 Ac0; mov L0xffffffffc582 Ac1; mov L0xffffffffc584 Ac2;
mov L0xffffffffc586 Ac3; mov L0xffffffffc588 Ac4; mov L0xffffffffc58a Ac5;
mov L0xffffffffc58c Ac6; mov L0xffffffffc58e Ac7; mov L0xffffffffc590 Ac8;
mov L0xffffffffc592 Ac9; mov L0xffffffffc594 Aca; mov L0xffffffffc596 Acb;
mov L0xffffffffc598 Acc; mov L0xffffffffc59a Acd; mov L0xffffffffc59c Ace;
mov L0xffffffffc59e Acf; mov L0xffffffffc5a0 Ad0; mov L0xffffffffc5a2 Ad1;
mov L0xffffffffc5a4 Ad2; mov L0xffffffffc5a6 Ad3; mov L0xffffffffc5a8 Ad4;
mov L0xffffffffc5aa Ad5; mov L0xffffffffc5ac Ad6; mov L0xffffffffc5ae Ad7;
mov L0xffffffffc5b0 Ad8; mov L0xffffffffc5b2 Ad9; mov L0xffffffffc5b4 Ada;
mov L0xffffffffc5b6 Adb; mov L0xffffffffc5b8 Adc; mov L0xffffffffc5ba Add;
mov L0xffffffffc5bc Ade; mov L0xffffffffc5be Adf; mov L0xffffffffc5c0 Ae0;
mov L0xffffffffc5c2 Ae1; mov L0xffffffffc5c4 Ae2; mov L0xffffffffc5c6 Ae3;
mov L0xffffffffc5c8 Ae4; mov L0xffffffffc5ca Ae5; mov L0xffffffffc5cc Ae6;
mov L0xffffffffc5ce Ae7; mov L0xffffffffc5d0 Ae8; mov L0xffffffffc5d2 Ae9;
mov L0xffffffffc5d4 Aea; mov L0xffffffffc5d6 Aeb; mov L0xffffffffc5d8 Aec;
mov L0xffffffffc5da Aed; mov L0xffffffffc5dc Aee; mov L0xffffffffc5de Aef;
mov L0xffffffffc5e0 Af0; mov L0xffffffffc5e2 Af1; mov L0xffffffffc5e4 Af2;
mov L0xffffffffc5e6 Af3; mov L0xffffffffc5e8 Af4; mov L0xffffffffc5ea Af5;
mov L0xffffffffc5ec Af6; mov L0xffffffffc5ee Af7; mov L0xffffffffc5f0 Af8;
mov L0xffffffffc5f2 Af9; mov L0xffffffffc5f4 Afa; mov L0xffffffffc5f6 Afb;
mov L0xffffffffc5f8 Afc; mov L0xffffffffc5fa Afd; mov L0xffffffffc5fc Afe;
mov L0xffffffffc5fe Aff; 



(******** constants ********)

mov L0x414860 3329@int16;
mov L0x414880 (     0)@int16; mov L0x414882 (     0)@int16;
mov L0x414884 (-15749)@int16; mov L0x414886 ( -1600)@int16;
mov L0x414888 ( -7373)@int16; mov L0x41488a (  -749)@int16;
mov L0x41488c (  -394)@int16; mov L0x41488e (   -40)@int16;
mov L0x414890 ( -6762)@int16; mov L0x414892 (  -687)@int16;
mov L0x414894 (  6201)@int16; mov L0x414896 (   630)@int16;
mov L0x414898 (-14095)@int16; mov L0x41489a ( -1432)@int16;
mov L0x41489c (  8347)@int16; mov L0x41489e (   848)@int16;
mov L0x4148a0 ( 10453)@int16; mov L0x4148a2 (  1062)@int16;
mov L0x4148a4 (-13879)@int16; mov L0x4148a6 ( -1410)@int16;
mov L0x4148a8 (  1900)@int16; mov L0x4148aa (   193)@int16;
mov L0x4148ac (  7845)@int16; mov L0x4148ae (   797)@int16;
mov L0x4148b0 ( -5345)@int16; mov L0x4148b2 (  -543)@int16;
mov L0x4148b4 (  -679)@int16; mov L0x4148b6 (   -69)@int16;
mov L0x4148b8 (  5601)@int16; mov L0x4148ba (   569)@int16;
mov L0x4148bc (-15582)@int16; mov L0x4148be ( -1583)@int16;
mov L0x4148c0 (     0)@int16; mov L0x4148c2 (     0)@int16;
mov L0x4148c4 (     0)@int16; mov L0x4148c6 (     0)@int16;
mov L0x4148c8 (     0)@int16; mov L0x4148ca (     0)@int16;
mov L0x4148cc (     0)@int16; mov L0x4148ce (     0)@int16;
mov L0x4148d0 (     0)@int16; mov L0x4148d2 (     0)@int16;
mov L0x4148d4 (     0)@int16; mov L0x4148d6 (     0)@int16;
mov L0x4148d8 (     0)@int16; mov L0x4148da (     0)@int16;
mov L0x4148dc (     0)@int16; mov L0x4148de (     0)@int16;
mov L0x4148e0 (  2914)@int16; mov L0x4148e2 (  2914)@int16;
mov L0x4148e4 ( 14036)@int16; mov L0x4148e6 ( 14036)@int16;
mov L0x4148e8 ( -8682)@int16; mov L0x4148ea ( -8682)@int16;
mov L0x4148ec (-12156)@int16; mov L0x4148ee (-12156)@int16;
mov L0x4148f0 (   296)@int16; mov L0x4148f2 (   296)@int16;
mov L0x4148f4 (  1426)@int16; mov L0x4148f6 (  1426)@int16;
mov L0x4148f8 (  -882)@int16; mov L0x4148fa (  -882)@int16;
mov L0x4148fc ( -1235)@int16; mov L0x4148fe ( -1235)@int16;
mov L0x414900 (  2845)@int16; mov L0x414902 (  2845)@int16;
mov L0x414904 ( -9942)@int16; mov L0x414906 ( -9942)@int16;
mov L0x414908 (  -748)@int16; mov L0x41490a (  -748)@int16;
mov L0x41490c (  7943)@int16; mov L0x41490e (  7943)@int16;
mov L0x414910 (   289)@int16; mov L0x414912 (   289)@int16;
mov L0x414914 ( -1010)@int16; mov L0x414916 ( -1010)@int16;
mov L0x414918 (   -76)@int16; mov L0x41491a (   -76)@int16;
mov L0x41491c (   807)@int16; mov L0x41491e (   807)@int16;
mov L0x414920 (  3258)@int16; mov L0x414922 (  3258)@int16;
mov L0x414924 ( 14125)@int16; mov L0x414926 ( 14125)@int16;
mov L0x414928 (-15483)@int16; mov L0x41492a (-15483)@int16;
mov L0x41492c (  4449)@int16; mov L0x41492e (  4449)@int16;
mov L0x414930 (   331)@int16; mov L0x414932 (   331)@int16;
mov L0x414934 (  1435)@int16; mov L0x414936 (  1435)@int16;
mov L0x414938 ( -1573)@int16; mov L0x41493a ( -1573)@int16;
mov L0x41493c (   452)@int16; mov L0x41493e (   452)@int16;
mov L0x414940 (   167)@int16; mov L0x414942 (   167)@int16;
mov L0x414944 ( 15592)@int16; mov L0x414946 ( 15592)@int16;
mov L0x414948 ( 16113)@int16; mov L0x41494a ( 16113)@int16;
mov L0x41494c (  3691)@int16; mov L0x41494e (  3691)@int16;
mov L0x414950 (    17)@int16; mov L0x414952 (    17)@int16;
mov L0x414954 (  1584)@int16; mov L0x414956 (  1584)@int16;
mov L0x414958 (  1637)@int16; mov L0x41495a (  1637)@int16;
mov L0x41495c (   375)@int16; mov L0x41495e (   375)@int16;
mov L0x414960 ( -5591)@int16; mov L0x414962 ( -5591)@int16;
mov L0x414964 (-10148)@int16; mov L0x414966 (-10148)@int16;
mov L0x414968 (  7117)@int16; mov L0x41496a (  7117)@int16;
mov L0x41496c ( -7678)@int16; mov L0x41496e ( -7678)@int16;
mov L0x414970 (  -568)@int16; mov L0x414972 (  -568)@int16;
mov L0x414974 ( -1031)@int16; mov L0x414976 ( -1031)@int16;
mov L0x414978 (   723)@int16; mov L0x41497a (   723)@int16;
mov L0x41497c (  -780)@int16; mov L0x41497e (  -780)@int16;
mov L0x414980 (  5739)@int16; mov L0x414982 (  5739)@int16;
mov L0x414984 (-12717)@int16; mov L0x414986 (-12717)@int16;
mov L0x414988 (-10247)@int16; mov L0x41498a (-10247)@int16;
mov L0x41498c (-12196)@int16; mov L0x41498e (-12196)@int16;
mov L0x414990 (   583)@int16; mov L0x414992 (   583)@int16;
mov L0x414994 ( -1292)@int16; mov L0x414996 ( -1292)@int16;
mov L0x414998 ( -1041)@int16; mov L0x41499a ( -1041)@int16;
mov L0x41499c ( -1239)@int16; mov L0x41499e ( -1239)@int16;
mov L0x4149a0 ( -6693)@int16; mov L0x4149a2 ( -6693)@int16;
mov L0x4149a4 ( -1073)@int16; mov L0x4149a6 ( -1073)@int16;
mov L0x4149a8 ( 10828)@int16; mov L0x4149aa ( 10828)@int16;
mov L0x4149ac ( 16192)@int16; mov L0x4149ae ( 16192)@int16;
mov L0x4149b0 (  -680)@int16; mov L0x4149b2 (  -680)@int16;
mov L0x4149b4 (  -109)@int16; mov L0x4149b6 (  -109)@int16;
mov L0x4149b8 (  1100)@int16; mov L0x4149ba (  1100)@int16;
mov L0x4149bc (  1645)@int16; mov L0x4149be (  1645)@int16;
mov L0x4149c0 (     0)@int16; mov L0x4149c2 (     0)@int16;
mov L0x4149c4 (     0)@int16; mov L0x4149c6 (     0)@int16;
mov L0x4149c8 (     0)@int16; mov L0x4149ca (     0)@int16;
mov L0x4149cc (     0)@int16; mov L0x4149ce (     0)@int16;
mov L0x4149d0 (     0)@int16; mov L0x4149d2 (     0)@int16;
mov L0x4149d4 (     0)@int16; mov L0x4149d6 (     0)@int16;
mov L0x4149d8 (     0)@int16; mov L0x4149da (     0)@int16;
mov L0x4149dc (     0)@int16; mov L0x4149de (     0)@int16;
mov L0x4149e0 ( 13180)@int16; mov L0x4149e2 ( 13180)@int16;
mov L0x4149e4 (  5266)@int16; mov L0x4149e6 (  5266)@int16;
mov L0x4149e8 ( 14529)@int16; mov L0x4149ea ( 14529)@int16;
mov L0x4149ec ( -4400)@int16; mov L0x4149ee ( -4400)@int16;
mov L0x4149f0 (  1339)@int16; mov L0x4149f2 (  1339)@int16;
mov L0x4149f4 (   535)@int16; mov L0x4149f6 (   535)@int16;
mov L0x4149f8 (  1476)@int16; mov L0x4149fa (  1476)@int16;
mov L0x4149fc (  -447)@int16; mov L0x4149fe (  -447)@int16;
mov L0x414a00 ( 11782)@int16; mov L0x414a02 ( 11782)@int16;
mov L0x414a04 ( 14155)@int16; mov L0x414a06 ( 14155)@int16;
mov L0x414a08 (-10355)@int16; mov L0x414a0a (-10355)@int16;
mov L0x414a0c ( 15099)@int16; mov L0x414a0e ( 15099)@int16;
mov L0x414a10 (  1197)@int16; mov L0x414a12 (  1197)@int16;
mov L0x414a14 (  1438)@int16; mov L0x414a16 (  1438)@int16;
mov L0x414a18 ( -1052)@int16; mov L0x414a1a ( -1052)@int16;
mov L0x414a1c (  1534)@int16; mov L0x414a1e (  1534)@int16;
mov L0x414a20 (-10089)@int16; mov L0x414a22 (-10089)@int16;
mov L0x414a24 ( -4538)@int16; mov L0x414a26 ( -4538)@int16;
mov L0x414a28 (-12540)@int16; mov L0x414a2a (-12540)@int16;
mov L0x414a2c ( -9125)@int16; mov L0x414a2e ( -9125)@int16;
mov L0x414a30 ( -1025)@int16; mov L0x414a32 ( -1025)@int16;
mov L0x414a34 (  -461)@int16; mov L0x414a36 (  -461)@int16;
mov L0x414a38 ( -1274)@int16; mov L0x414a3a ( -1274)@int16;
mov L0x414a3c (  -927)@int16; mov L0x414a3e (  -927)@int16;
mov L0x414a40 ( 13869)@int16; mov L0x414a42 ( 13869)@int16;
mov L0x414a44 ( 10463)@int16; mov L0x414a46 ( 10463)@int16;
mov L0x414a48 (  7441)@int16; mov L0x414a4a (  7441)@int16;
mov L0x414a4c (-12107)@int16; mov L0x414a4e (-12107)@int16;
mov L0x414a50 (  1409)@int16; mov L0x414a52 (  1409)@int16;
mov L0x414a54 (  1063)@int16; mov L0x414a56 (  1063)@int16;
mov L0x414a58 (   756)@int16; mov L0x414a5a (   756)@int16;
mov L0x414a5c ( -1230)@int16; mov L0x414a5e ( -1230)@int16;
mov L0x414a60 ( -6565)@int16; mov L0x414a62 ( -6565)@int16;
mov L0x414a64 (  3140)@int16; mov L0x414a66 (  3140)@int16;
mov L0x414a68 (-11546)@int16; mov L0x414a6a (-11546)@int16;
mov L0x414a6c (  5522)@int16; mov L0x414a6e (  5522)@int16;
mov L0x414a70 (  -667)@int16; mov L0x414a72 (  -667)@int16;
mov L0x414a74 (   319)@int16; mov L0x414a76 (   319)@int16;
mov L0x414a78 ( -1173)@int16; mov L0x414a7a ( -1173)@int16;
mov L0x414a7c (   561)@int16; mov L0x414a7e (   561)@int16;
mov L0x414a80 (  -472)@int16; mov L0x414a82 (  -472)@int16;
mov L0x414a84 ( -5473)@int16; mov L0x414a86 ( -5473)@int16;
mov L0x414a88 ( -3091)@int16; mov L0x414a8a ( -3091)@int16;
mov L0x414a8c ( -8495)@int16; mov L0x414a8e ( -8495)@int16;
mov L0x414a90 (   -48)@int16; mov L0x414a92 (   -48)@int16;
mov L0x414a94 (  -556)@int16; mov L0x414a96 (  -556)@int16;
mov L0x414a98 (  -314)@int16; mov L0x414a9a (  -314)@int16;
mov L0x414a9c (  -863)@int16; mov L0x414a9e (  -863)@int16;
mov L0x414aa0 (  2293)@int16; mov L0x414aa2 (  2293)@int16;
mov L0x414aa4 (  7451)@int16; mov L0x414aa6 (  7451)@int16;
mov L0x414aa8 ( -2746)@int16; mov L0x414aaa ( -2746)@int16;
mov L0x414aac ( -7235)@int16; mov L0x414aae ( -7235)@int16;
mov L0x414ab0 (   233)@int16; mov L0x414ab2 (   233)@int16;
mov L0x414ab4 (   757)@int16; mov L0x414ab6 (   757)@int16;
mov L0x414ab8 (  -279)@int16; mov L0x414aba (  -279)@int16;
mov L0x414abc (  -735)@int16; mov L0x414abe (  -735)@int16;
mov L0x414ac0 (     0)@int16; mov L0x414ac2 (     0)@int16;
mov L0x414ac4 (     0)@int16; mov L0x414ac6 (     0)@int16;
mov L0x414ac8 (     0)@int16; mov L0x414aca (     0)@int16;
mov L0x414acc (     0)@int16; mov L0x414ace (     0)@int16;
mov L0x414ad0 (     0)@int16; mov L0x414ad2 (     0)@int16;
mov L0x414ad4 (     0)@int16; mov L0x414ad6 (     0)@int16;
mov L0x414ad8 (     0)@int16; mov L0x414ada (     0)@int16;
mov L0x414adc (     0)@int16; mov L0x414ade (     0)@int16;
mov L0x414ae0 ( -2786)@int16; mov L0x414ae2 ( -2786)@int16;
mov L0x414ae4 ( -9213)@int16; mov L0x414ae6 ( -9213)@int16;
mov L0x414ae8 (   551)@int16; mov L0x414aea (   551)@int16;
mov L0x414aec ( -4429)@int16; mov L0x414aee ( -4429)@int16;
mov L0x414af0 (  -283)@int16; mov L0x414af2 (  -283)@int16;
mov L0x414af4 (  -936)@int16; mov L0x414af6 (  -936)@int16;
mov L0x414af8 (    56)@int16; mov L0x414afa (    56)@int16;
mov L0x414afc (  -450)@int16; mov L0x414afe (  -450)@int16;
mov L0x414b00 (  6398)@int16; mov L0x414b02 (  6398)@int16;
mov L0x414b04 ( -6713)@int16; mov L0x414b06 ( -6713)@int16;
mov L0x414b08 ( -8032)@int16; mov L0x414b0a ( -8032)@int16;
mov L0x414b0c ( 14578)@int16; mov L0x414b0e ( 14578)@int16;
mov L0x414b10 (   650)@int16; mov L0x414b12 (   650)@int16;
mov L0x414b14 (  -682)@int16; mov L0x414b16 (  -682)@int16;
mov L0x414b18 (  -816)@int16; mov L0x414b1a (  -816)@int16;
mov L0x414b1c (  1481)@int16; mov L0x414b1e (  1481)@int16;
mov L0x414b20 (-13308)@int16; mov L0x414b22 (-13308)@int16;
mov L0x414b24 ( -7008)@int16; mov L0x414b26 ( -7008)@int16;
mov L0x414b28 (  6221)@int16; mov L0x414b2a (  6221)@int16;
mov L0x414b2c (  6378)@int16; mov L0x414b2e (  6378)@int16;
mov L0x414b30 ( -1352)@int16; mov L0x414b32 ( -1352)@int16;
mov L0x414b34 (  -712)@int16; mov L0x414b36 (  -712)@int16;
mov L0x414b38 (   632)@int16; mov L0x414b3a (   632)@int16;
mov L0x414b3c (   648)@int16; mov L0x414b3e (   648)@int16;
mov L0x414b40 (-16005)@int16; mov L0x414b42 (-16005)@int16;
mov L0x414b44 ( -5168)@int16; mov L0x414b46 ( -5168)@int16;
mov L0x414b48 (-14588)@int16; mov L0x414b4a (-14588)@int16;
mov L0x414b4c ( 11251)@int16; mov L0x414b4e ( 11251)@int16;
mov L0x414b50 ( -1626)@int16; mov L0x414b52 ( -1626)@int16;
mov L0x414b54 (  -525)@int16; mov L0x414b56 (  -525)@int16;
mov L0x414b58 ( -1482)@int16; mov L0x414b5a ( -1482)@int16;
mov L0x414b5c (  1143)@int16; mov L0x414b5e (  1143)@int16;
mov L0x414b60 ( 16251)@int16; mov L0x414b62 ( 16251)@int16;
mov L0x414b64 ( 10749)@int16; mov L0x414b66 ( 10749)@int16;
mov L0x414b68 (  9371)@int16; mov L0x414b6a (  9371)@int16;
mov L0x414b6c (-11605)@int16; mov L0x414b6e (-11605)@int16;
mov L0x414b70 (  1651)@int16; mov L0x414b72 (  1651)@int16;
mov L0x414b74 (  1092)@int16; mov L0x414b76 (  1092)@int16;
mov L0x414b78 (   952)@int16; mov L0x414b7a (   952)@int16;
mov L0x414b7c ( -1179)@int16; mov L0x414b7e ( -1179)@int16;
mov L0x414b80 ( -5315)@int16; mov L0x414b82 ( -5315)@int16;
mov L0x414b84 (  3967)@int16; mov L0x414b86 (  3967)@int16;
mov L0x414b88 ( 14381)@int16; mov L0x414b8a ( 14381)@int16;
mov L0x414b8c ( -5453)@int16; mov L0x414b8e ( -5453)@int16;
mov L0x414b90 (  -540)@int16; mov L0x414b92 (  -540)@int16;
mov L0x414b94 (   403)@int16; mov L0x414b96 (   403)@int16;
mov L0x414b98 (  1461)@int16; mov L0x414b9a (  1461)@int16;
mov L0x414b9c (  -554)@int16; mov L0x414b9e (  -554)@int16;
mov L0x414ba0 (-15159)@int16; mov L0x414ba2 (-15159)@int16;
mov L0x414ba4 ( 10099)@int16; mov L0x414ba6 ( 10099)@int16;
mov L0x414ba8 ( -6319)@int16; mov L0x414baa ( -6319)@int16;
mov L0x414bac (  8721)@int16; mov L0x414bae (  8721)@int16;
mov L0x414bb0 ( -1540)@int16; mov L0x414bb2 ( -1540)@int16;
mov L0x414bb4 (  1026)@int16; mov L0x414bb6 (  1026)@int16;
mov L0x414bb8 (  -642)@int16; mov L0x414bba (  -642)@int16;
mov L0x414bbc (   886)@int16; mov L0x414bbe (   886)@int16;
mov L0x414bc0 (     0)@int16; mov L0x414bc2 (     0)@int16;
mov L0x414bc4 (     0)@int16; mov L0x414bc6 (     0)@int16;
mov L0x414bc8 (     0)@int16; mov L0x414bca (     0)@int16;
mov L0x414bcc (     0)@int16; mov L0x414bce (     0)@int16;
mov L0x414bd0 (     0)@int16; mov L0x414bd2 (     0)@int16;
mov L0x414bd4 (     0)@int16; mov L0x414bd6 (     0)@int16;
mov L0x414bd8 (     0)@int16; mov L0x414bda (     0)@int16;
mov L0x414bdc (     0)@int16; mov L0x414bde (     0)@int16;
mov L0x414be0 (-10719)@int16; mov L0x414be2 (-10719)@int16;
mov L0x414be4 (-13338)@int16; mov L0x414be6 (-13338)@int16;
mov L0x414be8 ( 13121)@int16; mov L0x414bea ( 13121)@int16;
mov L0x414bec (  8081)@int16; mov L0x414bee (  8081)@int16;
mov L0x414bf0 ( -1089)@int16; mov L0x414bf2 ( -1089)@int16;
mov L0x414bf4 ( -1355)@int16; mov L0x414bf6 ( -1355)@int16;
mov L0x414bf8 (  1333)@int16; mov L0x414bfa (  1333)@int16;
mov L0x414bfc (   821)@int16; mov L0x414bfe (   821)@int16;
mov L0x414c00 ( -4567)@int16; mov L0x414c02 ( -4567)@int16;
mov L0x414c04 ( -8416)@int16; mov L0x414c06 ( -8416)@int16;
mov L0x414c08 ( 12993)@int16; mov L0x414c0a ( 12993)@int16;
mov L0x414c0c ( 12078)@int16; mov L0x414c0e ( 12078)@int16;
mov L0x414c10 (  -464)@int16; mov L0x414c12 (  -464)@int16;
mov L0x414c14 (  -855)@int16; mov L0x414c16 (  -855)@int16;
mov L0x414c18 (  1320)@int16; mov L0x414c1a (  1320)@int16;
mov L0x414c1c (  1227)@int16; mov L0x414c1e (  1227)@int16;
mov L0x414c20 (   325)@int16; mov L0x414c22 (   325)@int16;
mov L0x414c24 ( -2156)@int16; mov L0x414c26 ( -2156)@int16;
mov L0x414c28 (-13918)@int16; mov L0x414c2a (-13918)@int16;
mov L0x414c2c (  8957)@int16; mov L0x414c2e (  8957)@int16;
mov L0x414c30 (    33)@int16; mov L0x414c32 (    33)@int16;
mov L0x414c34 (  -219)@int16; mov L0x414c36 (  -219)@int16;
mov L0x414c38 ( -1414)@int16; mov L0x414c3a ( -1414)@int16;
mov L0x414c3c (   910)@int16; mov L0x414c3e (   910)@int16;
mov L0x414c40 (  9243)@int16; mov L0x414c42 (  9243)@int16;
mov L0x414c44 (-15818)@int16; mov L0x414c46 (-15818)@int16;
mov L0x414c48 (  7215)@int16; mov L0x414c4a (  7215)@int16;
mov L0x414c4c (-11999)@int16; mov L0x414c4e (-11999)@int16;
mov L0x414c50 (   939)@int16; mov L0x414c52 (   939)@int16;
mov L0x414c54 ( -1607)@int16; mov L0x414c56 ( -1607)@int16;
mov L0x414c58 (   733)@int16; mov L0x414c5a (   733)@int16;
mov L0x414c5c ( -1219)@int16; mov L0x414c5e ( -1219)@int16;
mov L0x414c60 (-10050)@int16; mov L0x414c62 (-10050)@int16;
mov L0x414c64 ( 11930)@int16; mov L0x414c66 ( 11930)@int16;
mov L0x414c68 ( -9764)@int16; mov L0x414c6a ( -9764)@int16;
mov L0x414c6c ( -3878)@int16; mov L0x414c6e ( -3878)@int16;
mov L0x414c70 ( -1021)@int16; mov L0x414c72 ( -1021)@int16;
mov L0x414c74 (  1212)@int16; mov L0x414c76 (  1212)@int16;
mov L0x414c78 (  -992)@int16; mov L0x414c7a (  -992)@int16;
mov L0x414c7c (  -394)@int16; mov L0x414c7e (  -394)@int16;
mov L0x414c80 ( -8780)@int16; mov L0x414c82 ( -8780)@int16;
mov L0x414c84 (-14322)@int16; mov L0x414c86 (-14322)@int16;
mov L0x414c88 (  2638)@int16; mov L0x414c8a (  2638)@int16;
mov L0x414c8c (  8711)@int16; mov L0x414c8e (  8711)@int16;
mov L0x414c90 (  -892)@int16; mov L0x414c92 (  -892)@int16;
mov L0x414c94 ( -1455)@int16; mov L0x414c96 ( -1455)@int16;
mov L0x414c98 (   268)@int16; mov L0x414c9a (   268)@int16;
mov L0x414c9c (   885)@int16; mov L0x414c9e (   885)@int16;
mov L0x414ca0 ( -9262)@int16; mov L0x414ca2 ( -9262)@int16;
mov L0x414ca4 ( 10129)@int16; mov L0x414ca6 ( 10129)@int16;
mov L0x414ca8 (  6309)@int16; mov L0x414caa (  6309)@int16;
mov L0x414cac (-11566)@int16; mov L0x414cae (-11566)@int16;
mov L0x414cb0 (  -941)@int16; mov L0x414cb2 (  -941)@int16;
mov L0x414cb4 (  1029)@int16; mov L0x414cb6 (  1029)@int16;
mov L0x414cb8 (   641)@int16; mov L0x414cba (   641)@int16;
mov L0x414cbc ( -1175)@int16; mov L0x414cbe ( -1175)@int16;

(******** polynomials ********)

ghost X@int16: true && true;

(* #! -> SP = 0xffffffffb420 *)
#! 0xffffffffb420 = 0xffffffffb420;
(* sub	sp, sp, #0x40                               #! PC = 0x4112f0 *)
subc dc sp sp 0x40@uint32;
(* stp	d8, d9, [sp]                                #! EA = L0xffffffffb3e0; PC = 0x4112f4 *)
mov [L0xffffffffb3e0,L0xffffffffb3e2,L0xffffffffb3e4,L0xffffffffb3e6] %v8[0:4];
mov [L0xffffffffb3e8,L0xffffffffb3ea,L0xffffffffb3ec,L0xffffffffb3ee] %v9[0:4];
(* stp	d10, d11, [sp, #16]                         #! EA = L0xffffffffb3f0; PC = 0x4112f8 *)
mov [L0xffffffffb3f0,L0xffffffffb3f2,L0xffffffffb3f4,L0xffffffffb3f6] %v10[0:4];
mov [L0xffffffffb3f8,L0xffffffffb3fa,L0xffffffffb3fc,L0xffffffffb3fe] %v11[0:4];
(* stp	d12, d13, [sp, #32]                         #! EA = L0xffffffffb400; PC = 0x4112fc *)
mov [L0xffffffffb400,L0xffffffffb402,L0xffffffffb404,L0xffffffffb406] %v12[0:4];
mov [L0xffffffffb408,L0xffffffffb40a,L0xffffffffb40c,L0xffffffffb40e] %v13[0:4];
(* stp	d14, d15, [sp, #48]                         #! EA = L0xffffffffb410; PC = 0x411300 *)
mov [L0xffffffffb410,L0xffffffffb412,L0xffffffffb414,L0xffffffffb416] %v14[0:4];
mov [L0xffffffffb418,L0xffffffffb41a,L0xffffffffb41c,L0xffffffffb41e] %v15[0:4];
(* ldrsh	w8, [x2]                                  #! EA = L0x414860; Value = 0x7ff6fdf60cff0d01; PC = 0x411304 *)
mov %v8 [L0x414860]++%v8[1:8];
(* ldr	q0, [x1]                                    #! EA = L0x414880; Value = 0xf9c0c27b00000000; PC = 0x411308 *)
mov %v0 [L0x414880,L0x414882,L0x414884,L0x414886,L0x414888,L0x41488a,L0x41488c,L0x41488e];
(* ldr	q1, [x1, #16]                               #! EA = L0x414890; Value = 0x02761839fd51e596; PC = 0x41130c *)
mov %v1 [L0x414890,L0x414892,L0x414894,L0x414896,L0x414898,L0x41489a,L0x41489c,L0x41489e];
(* ldr	q2, [x1, #32]                               #! EA = L0x4148a0; Value = 0xfa7ec9c9042628d5; PC = 0x411310 *)
mov %v2 [L0x4148a0,L0x4148a2,L0x4148a4,L0x4148a6,L0x4148a8,L0x4148aa,L0x4148ac,L0x4148ae];
(* ldr	q3, [x1, #48]                               #! EA = L0x4148b0; Value = 0xffbbfd59fde1eb1f; PC = 0x411314 *)
mov %v3 [L0x4148b0,L0x4148b2,L0x4148b4,L0x4148b6,L0x4148b8,L0x4148ba,L0x4148bc,L0x4148be];
(* mov	v0.h[0], w8                                 #! PC = 0x411318 *)
mov %v0 [%v8[0]]++%v0[1:8];
(* ldr	q13, [x0, #288]                             #! EA = L0xffffffffc520; Value = 0x00010001ffffffff; PC = 0x41131c *)
mov %v13 [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e];
(* ldr	q15, [x0, #352]                             #! EA = L0xffffffffc560; Value = 0x0000fffe00000000; PC = 0x411320 *)
mov %v15 [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e];
(* ldr	q17, [x0, #416]                             #! EA = L0xffffffffc5a0; Value = 0x0001ffffffffffff; PC = 0x411324 *)
mov %v17 [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae];
(* ldr	q19, [x0, #480]                             #! EA = L0xffffffffc5e0; Value = 0x0000ffff00010001; PC = 0x411328 *)
mov %v19 [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee];
(* mul	v28.8h, v13.8h, v0.h[3]                     #! PC = 0x41132c *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v28 %v13 %mul; cast %v28@int16[8] %v28;
(* mul	v29.8h, v15.8h, v0.h[3]                     #! PC = 0x411330 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v29 %v15 %mul; cast %v29@int16[8] %v29;
(* mul	v30.8h, v17.8h, v0.h[3]                     #! PC = 0x411334 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v30 %v17 %mul; cast %v30@int16[8] %v30;
(* mul	v31.8h, v19.8h, v0.h[3]                     #! PC = 0x411338 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* ldr	q5, [x0, #32]                               #! EA = L0xffffffffc420; Value = 0x00010001ffffffff; PC = 0x41133c *)
mov %v5 [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e];
(* sqrdmulh	v13.8h, v13.8h, v0.h[2]                #! PC = 0x411340 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v13 %LO11 %LO01;
(* ldr	q7, [x0, #96]                               #! EA = L0xffffffffc460; Value = 0x000100010001ffff; PC = 0x411344 *)
mov %v7 [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e];
(* sqrdmulh	v15.8h, v15.8h, v0.h[2]                #! PC = 0x411348 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* ldr	q9, [x0, #160]                              #! EA = L0xffffffffc4a0; Value = 0xfffe000000010000; PC = 0x41134c *)
mov %v9 [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae];
(* sqrdmulh	v17.8h, v17.8h, v0.h[2]                #! PC = 0x411350 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* ldr	q11, [x0, #224]                             #! EA = L0xffffffffc4e0; Value = 0xfffeffff00000000; PC = 0x411354 *)
mov %v11 [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee];
(* sqrdmulh	v19.8h, v19.8h, v0.h[2]                #! PC = 0x411358 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v13.8h, v0.h[0]                     #! PC = 0x41135c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v13 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v15.8h, v0.h[0]                     #! PC = 0x411360 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v17.8h, v0.h[0]                     #! PC = 0x411364 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411368 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert true
    && eqsmod (sext %v28 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [A90,A91,A92,A93,A94,A95,A96,A97] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                               sext [Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                               sext [Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16);

assume eqmod %v28 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [A90,A91,A92,A93,A94,A95,A96,A97]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7]) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl] && true;

assume [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 0 0 *)

cut eqmod %v28 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [A90,A91,A92,A93,A94,A95,A96,A97]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* ldr	q12, [x0, #256]                             #! EA = L0xffffffffc500; Value = 0xffff0000ffff0001; PC = 0x41136c *)
mov %v12 [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e];
(* sub	v13.8h, v5.8h, v28.8h                       #! PC = 0x411370 *)
sub %v13 %v5 %v28;
(* mul	v20.8h, v12.8h, v0.h[3]                     #! PC = 0x411374 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v20 %v12 %mul; cast %v20@int16[8] %v20;
(* ldr	q14, [x0, #320]                             #! EA = L0xffffffffc540; Value = 0x0000000000010000; PC = 0x411378 *)
mov %v14 [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e];
(* sub	v15.8h, v7.8h, v29.8h                       #! PC = 0x41137c *)
sub %v15 %v7 %v29;
(* mul	v21.8h, v14.8h, v0.h[3]                     #! PC = 0x411380 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v21 %v14 %mul; cast %v21@int16[8] %v21;
(* ldr	q16, [x0, #384]                             #! EA = L0xffffffffc580; Value = 0x00000000ffffffff; PC = 0x411384 *)
mov %v16 [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e];
(* sub	v17.8h, v9.8h, v30.8h                       #! PC = 0x411388 *)
sub %v17 %v9 %v30;
(* mul	v22.8h, v16.8h, v0.h[3]                     #! PC = 0x41138c *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v22 %v16 %mul; cast %v22@int16[8] %v22;
(* ldr	q18, [x0, #448]                             #! EA = L0xffffffffc5c0; Value = 0x00010001ffff0000; PC = 0x411390 *)
mov %v18 [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce];
(* sub	v19.8h, v11.8h, v31.8h                      #! PC = 0x411394 *)
sub %v19 %v11 %v31;
(* mul	v23.8h, v18.8h, v0.h[3]                     #! PC = 0x411398 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* ldr	q4, [x0]                                    #! EA = L0xffffffffc400; Value = 0x0000ffff00000000; PC = 0x41139c *)
mov %v4 [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e];
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x4113a0 *)
add %v5 %v5 %v28;
(* sqrdmulh	v12.8h, v12.8h, v0.h[2]                #! PC = 0x4113a4 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v12 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v12 %LO11 %LO01;
(* ldr	q6, [x0, #64]                               #! EA = L0xffffffffc440; Value = 0x00010000ffff0000; PC = 0x4113a8 *)
mov %v6 [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e];
(* add	v7.8h, v7.8h, v29.8h                        #! PC = 0x4113ac *)
add %v7 %v7 %v29;
(* sqrdmulh	v14.8h, v14.8h, v0.h[2]                #! PC = 0x4113b0 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v14 %LO11 %LO01;
(* ldr	q8, [x0, #128]                              #! EA = L0xffffffffc480; Value = 0xfffe0000ffff0000; PC = 0x4113b4 *)
mov %v8 [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e];
(* add	v9.8h, v9.8h, v30.8h                        #! PC = 0x4113b8 *)
add %v9 %v9 %v30;
(* sqrdmulh	v16.8h, v16.8h, v0.h[2]                #! PC = 0x4113bc *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v16 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* ldr	q10, [x0, #192]                             #! EA = L0xffffffffc4c0; Value = 0x0001ffff0000ffff; PC = 0x4113c0 *)
mov %v10 [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce];
(* add	v11.8h, v11.8h, v31.8h                      #! PC = 0x4113c4 *)
add %v11 %v11 %v31;
(* sqrdmulh	v18.8h, v18.8h, v0.h[2]                #! PC = 0x4113c8 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v12.8h, v0.h[0]                     #! PC = 0x4113cc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v12 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v14.8h, v0.h[0]                     #! PC = 0x4113d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v14 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v16.8h, v0.h[0]                     #! PC = 0x4113d4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x4113d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert true
    && eqsmod (sext %v20 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [A80,A81,A82,A83,A84,A85,A86,A87] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [A80,A81,A82,A83,A84,A85,A86,A87]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7]) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
       %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
       %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
       %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
       %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
       %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
       %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
       %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
       %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl, precondition] && true;
assume [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
       %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
       %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
       %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
       %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
       %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
       %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
       %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
       %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v5 /\
       %v5<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v7 /\
       %v7<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v9 /\
       %v9<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v11 /\
       %v11<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v13 /\
       %v13<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v15 /\
       %v15<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v17 /\
       %v17<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v19 /\
       %v19<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost F10@int16, F30@int16, F50@int16, F70@int16,
      F90@int16, Fb0@int16, Fd0@int16, Ff0@int16:
F10**2 = A10*X** 16 + A11*X** 17 + A12*X** 18 + A13*X** 19 + A14*X** 20 +
         A15*X** 21 + A16*X** 22 + A17*X** 23 /\
F30**2 = A30*X** 48 + A31*X** 49 + A32*X** 50 + A33*X** 51 + A34*X** 52 +
         A35*X** 53 + A36*X** 54 + A37*X** 55 /\
F50**2 = A50*X** 80 + A51*X** 81 + A52*X** 82 + A53*X** 83 + A54*X** 84 +
         A55*X** 85 + A56*X** 86 + A57*X** 87 /\
F70**2 = A70*X**112 + A71*X**113 + A72*X**114 + A73*X**115 + A74*X**116 +
         A75*X**117 + A76*X**118 + A77*X**119 /\
F90**2 = A90*X**144 + A91*X**145 + A92*X**146 + A93*X**147 + A94*X**148 +
         A95*X**149 + A96*X**150 + A97*X**151 /\
Fb0**2 = Ab0*X**176 + Ab1*X**177 + Ab2*X**178 + Ab3*X**179 + Ab4*X**180 +
         Ab5*X**181 + Ab6*X**182 + Ab7*X**183 /\
Fd0**2 = Ad0*X**208 + Ad1*X**209 + Ad2*X**210 + Ad3*X**211 + Ad4*X**212 +
         Ad5*X**213 + Ad6*X**214 + Ad7*X**215 /\
Ff0**2 = Af0*X**240 + Af1*X**241 + Af2*X**242 + Af3*X**243 + Af4*X**244 +
         Af5*X**245 + Af6*X**246 + Af7*X**247 && true;

    
(* CUT 1 1 *)
cut eqmod (X**16 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],
                           %v5[4],%v5[5],%v5[6],%v5[7]])
          (F10**2 + F90**2) [Q, X**128 - (-1600)] /\
    eqmod (X**16 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],
                           %v13[4],%v13[5],%v13[6],%v13[7]])
          (F10**2 + F90**2) [Q, X**128 + (-1600)] /\
    eqmod (X**48 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],
                           %v7[4],%v7[5],%v7[6],%v7[7]])
          (F30**2 + Fb0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**48 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],
                           %v15[4],%v15[5],%v15[6],%v15[7]])
          (F30**2 + Fb0**2) [Q, X**128 + (-1600)] /\
    eqmod (X**80 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],
                           %v9[4],%v9[5],%v9[6],%v9[7]])
          (F50**2 + Fd0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**80 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],
                           %v17[4],%v17[5],%v17[6],%v17[7]])
          (F50**2 + Fd0**2) [Q, X**128 + (-1600)] /\
    eqmod (X**112* poly X [%v11[0],%v11[1],%v11[2],%v11[3],
                           %v11[4],%v11[5],%v11[6],%v11[7]])
          (F70**2 + Ff0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**112* poly X [%v19[0],%v19[1],%v19[2],%v19[3],
                           %v19[4],%v19[5],%v19[6],%v19[7]])
          (F70**2 + Ff0**2) [Q, X**128 + (-1600)] /\
    eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [A80,A81,A82,A83,A84,A85,A86,A87]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
    %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
    %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
    %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
    %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
    %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
    %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
    %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
    %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v5 /\
    %v5<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v7 /\
    %v7<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v9 /\
    %v9<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v11 /\
    %v11<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v13 /\
    %v13<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v15 /\
    %v15<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v17 /\
    %v17<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v19 /\
    %v19<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\ 
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

(* CUT 2 1 *)
ecut eqmod (X**16 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],
                            %v5[4],%v5[5],%v5[6],%v5[7]])
           (F10**2 + F90**2) [Q, X**128 - (-1600)] /\
     eqmod (X**80 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],
                            %v9[4],%v9[5],%v9[6],%v9[7]])
           (F50**2 + Fd0**2) [Q, X**128 - (-1600)]
     prove with [cuts [1]];
(* CUT 3 1 *)
ecut eqmod (X**16 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],
                            %v13[4],%v13[5],%v13[6],%v13[7]])
           (F10**2 + F90**2) [Q, X**128 + (-1600)] /\
     eqmod (X**80 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],
                            %v17[4],%v17[5],%v17[6],%v17[7]])
           (F50**2 + Fd0**2) [Q, X**128 + (-1600)]
     prove with [cuts [1]];
(* CUT 4 1 *)
ecut eqmod (X**48 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],
                            %v7[4],%v7[5],%v7[6],%v7[7]])
           (F30**2 + Fb0**2) [Q, X**128 - (-1600)] /\
     eqmod (X**112* poly X [%v11[0],%v11[1],%v11[2],%v11[3],
                            %v11[4],%v11[5],%v11[6],%v11[7]])
           (F70**2 + Ff0**2) [Q, X**128 - (-1600)]
     prove with [cuts [1]];
(* CUT 5 1 *)
ecut eqmod (X**48 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],
                            %v15[4],%v15[5],%v15[6],%v15[7]])
           (F30**2 + Fb0**2) [Q, X**128 + (-1600)] /\
     eqmod (X**112* poly X [%v19[0],%v19[1],%v19[2],%v19[3],
                            %v19[4],%v19[5],%v19[6],%v19[7]])
           (F70**2 + Ff0**2) [Q, X**128 + (-1600)]
     prove with [cuts [1]];
(* CUT 6 1 *)
ecut eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [A80,A81,A82,A83,A84,A85,A86,A87]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [1]];
 
ghost %v9o0@sint16[8], %v11o0@sint16[8],%v17o0@sint16[8],%v19o0@sint16[8] :
      %v9o0 = %v9 /\ %v11o0 = %v11 /\ %v17o0 = %v17 /\ %v19o0 = %v19
   && %v9o0 = %v9 /\ %v11o0 = %v11 /\ %v17o0 = %v17 /\ %v19o0 = %v19;

(* sub	v12.8h, v4.8h, v20.8h                       #! PC = 0x4113dc *)
sub %v12 %v4 %v20;
(* mul	v28.8h, v9.8h, v0.h[5]                      #! PC = 0x4113e0 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v28 %v9 %mul; cast %v28@int16[8] %v28;
(* sub	v14.8h, v6.8h, v21.8h                       #! PC = 0x4113e4 *)
sub %v14 %v6 %v21;
(* mul	v29.8h, v11.8h, v0.h[5]                     #! PC = 0x4113e8 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v29 %v11 %mul; cast %v29@int16[8] %v29;
(* sub	v16.8h, v8.8h, v22.8h                       #! PC = 0x4113ec *)
sub %v16 %v8 %v22;
(* mul	v30.8h, v17.8h, v0.h[7]                     #! PC = 0x4113f0 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v30 %v17 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v10.8h, v23.8h                      #! PC = 0x4113f4 *)
sub %v18 %v10 %v23;
(* mul	v31.8h, v19.8h, v0.h[7]                     #! PC = 0x4113f8 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x4113fc *)
add %v4 %v4 %v20;
(* sqrdmulh	v9.8h, v9.8h, v0.h[4]                  #! PC = 0x411400 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v9 %LO11 %LO01;
(* add	v6.8h, v6.8h, v21.8h                        #! PC = 0x411404 *)
add %v6 %v6 %v21;
(* sqrdmulh	v11.8h, v11.8h, v0.h[4]                #! PC = 0x411408 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* add	v8.8h, v8.8h, v22.8h                        #! PC = 0x41140c *)
add %v8 %v8 %v22;
(* sqrdmulh	v17.8h, v17.8h, v0.h[6]                #! PC = 0x411410 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v10.8h, v10.8h, v23.8h                      #! PC = 0x411414 *)
add %v10 %v10 %v23;
(* sqrdmulh	v19.8h, v19.8h, v0.h[6]                #! PC = 0x411418 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v9.8h, v0.h[0]                      #! PC = 0x41141c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v9 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v11.8h, v0.h[0]                     #! PC = 0x411420 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v17.8h, v0.h[0]                     #! PC = 0x411424 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411428 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;


assert true
    && eqsmod (sext %v28 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v9o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v11o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v17o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v19o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v9o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v11o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v17o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v19o0) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

ghost F00@int16,F20@int16,F40@int16,F60@int16,
      F80@int16,Fa0@int16,Fc0@int16,Fe0@int16:
F00**2 = A00*X**  0 + A01*X**  1 + A02*X**  2 + A03*X**  3 + A04*X**  4 +
         A05*X**  5 + A06*X**  6 + A07*X**  7 /\
F20**2 = A20*X** 32 + A21*X** 33 + A22*X** 34 + A23*X** 35 + A24*X** 36 +
         A25*X** 37 + A26*X** 38 + A27*X** 39 /\
F40**2 = A40*X** 64 + A41*X** 65 + A42*X** 66 + A43*X** 67 + A44*X** 68 +
         A45*X** 69 + A46*X** 70 + A47*X** 71 /\
F60**2 = A60*X** 96 + A61*X** 97 + A62*X** 98 + A63*X** 99 + A64*X**100 +
         A65*X**101 + A66*X**102 + A67*X**103 /\
F80**2 = A80*X**128 + A81*X**129 + A82*X**130 + A83*X**131 + A84*X**132 +
         A85*X**133 + A86*X**134 + A87*X**135 /\
Fa0**2 = Aa0*X**160 + Aa1*X**161 + Aa2*X**162 + Aa3*X**163 + Aa4*X**164 +
         Aa5*X**165 + Aa6*X**166 + Aa7*X**167 /\
Fc0**2 = Ac0*X**192 + Ac1*X**193 + Ac2*X**194 + Ac3*X**195 + Ac4*X**196 +
         Ac5*X**197 + Ac6*X**198 + Ac7*X**199 /\
Fe0**2 = Ae0*X**224 + Ae1*X**225 + Ae2*X**226 + Ae3*X**227 + Ae4*X**228 +
         Ae5*X**229 + Ae6*X**230 + Ae7*X**231 && true;

assert [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
       %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
       %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
       %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
       %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
       %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
       %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
       %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
       %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31 < [Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl, precondition] && true;
assume [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
       %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
       %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
       %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
       %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
       %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
       %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
       %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
       %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31 < [Q,Q,Q,Q,Q,Q,Q,Q]
    &&
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v4 /\
       %v4<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v6 /\
       %v6<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v8 /\
       %v8<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v10 /\
       %v10<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v12 /\
       %v12<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v14 /\
       %v14<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v16 /\
       %v16<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v18 /\
       %v18<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 7 2 *)
cut eqmod (X** 0 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],
                           %v4[4],%v4[5],%v4[6],%v4[7]])
          (F00**2 + F80**2) [Q, X**128 - (-1600)] /\
    eqmod (X** 0 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],
                           %v12[4],%v12[5],%v12[6],%v12[7]])
          (F00**2 + F80**2) [Q, X**128 + (-1600)] /\
    eqmod (X**32 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],
                           %v6[4],%v6[5],%v6[6],%v6[7]])
          (F20**2 + Fa0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**32 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],
                           %v14[4],%v14[5],%v14[6],%v14[7]])
          (F20**2 + Fa0**2) [Q, X**128 + (-1600)] /\
    eqmod (X**64 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],
                           %v8[4],%v8[5],%v8[6],%v8[7]])
          (F40**2 + Fc0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**64 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],
                           %v16[4],%v16[5],%v16[6],%v16[7]])
          (F40**2 + Fc0**2) [Q, X**128 + (-1600)] /\
    eqmod (X**96 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],
                           %v10[4],%v10[5],%v10[6],%v10[7]])
          (F60**2 + Fe0**2) [Q, X**128 - (-1600)] /\
    eqmod (X**96 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],
                           %v18[4],%v18[5],%v18[6],%v18[7]])
          (F60**2 + Fe0**2) [Q, X**128 + (-1600)] /\
    eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v9o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v11o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v17o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v19o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
    %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
    %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
    %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
    %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
    %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
    %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
    %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
    %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v4 /\
    %v4<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v6 /\
    %v6<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v8 /\
    %v8<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v10 /\
    %v10<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v12 /\
    %v12<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v14 /\
    %v14<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v16 /\
    %v16<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v18 /\
    %v18<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

(* CUT 8 2 *)
ecut eqmod (X** 0 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],
                            %v4[4],%v4[5],%v4[6],%v4[7]])
           (F00**2 + F80**2) [Q, X**128 - (-1600)] /\
     eqmod (X**64 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],
                            %v8[4],%v8[5],%v8[6],%v8[7]])
           (F40**2 + Fc0**2) [Q, X**128 - (-1600)]
     prove with [cuts [7]];
(* CUT 9 2 *)
ecut eqmod (X** 0 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],
                            %v12[4],%v12[5],%v12[6],%v12[7]])
           (F00**2 + F80**2) [Q, X**128 + (-1600)] /\
     eqmod (X**64 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],
                            %v16[4],%v16[5],%v16[6],%v16[7]])
           (F40**2 + Fc0**2) [Q, X**128 + (-1600)]
     prove with [cuts [7]];
(* CUT 10 2 *)
ecut eqmod (X**32 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],
                            %v6[4],%v6[5],%v6[6],%v6[7]])
           (F20**2 + Fa0**2) [Q, X**128 - (-1600)] /\
     eqmod (X**96 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],
                            %v10[4],%v10[5],%v10[6],%v10[7]])
           (F60**2 + Fe0**2) [Q, X**128 - (-1600)]
     prove with [cuts [7]];
(* CUT 11 2 *)
ecut eqmod (X**32 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],
                            %v14[4],%v14[5],%v14[6],%v14[7]])
           (F20**2 + Fa0**2) [Q, X**128 + (-1600)] /\
     eqmod (X**96 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],
                            %v18[4],%v18[5],%v18[6],%v18[7]])
           (F60**2 + Fe0**2) [Q, X**128 + (-1600)]
     prove with [cuts [7]];
(* CUT 12 2 *)
ecut eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v9o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v11o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v17o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v19o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [7]];
    
          
ghost %v8o0@sint16[8], %v10o0@sint16[8],%v16o0@sint16[8],%v18o0@sint16[8] :
      %v8o0 = %v8 /\ %v10o0 = %v10 /\ %v16o0 = %v16 /\ %v18o0 = %v18
   && %v8o0 = %v8 /\ %v10o0 = %v10 /\ %v16o0 = %v16 /\ %v18o0 = %v18;

(* sub	v9.8h, v5.8h, v28.8h                        #! PC = 0x41142c *)
sub %v9 %v5 %v28;
(* mul	v20.8h, v8.8h, v0.h[5]                      #! PC = 0x411430 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v20 %v8 %mul; cast %v20@int16[8] %v20;
(* sub	v11.8h, v7.8h, v29.8h                       #! PC = 0x411434 *)
sub %v11 %v7 %v29;
(* mul	v21.8h, v10.8h, v0.h[5]                     #! PC = 0x411438 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v21 %v10 %mul; cast %v21@int16[8] %v21;
(* sub	v17.8h, v13.8h, v30.8h                      #! PC = 0x41143c *)
sub %v17 %v13 %v30;
(* mul	v22.8h, v16.8h, v0.h[7]                     #! PC = 0x411440 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v22 %v16 %mul; cast %v22@int16[8] %v22;
(* sub	v19.8h, v15.8h, v31.8h                      #! PC = 0x411444 *)
sub %v19 %v15 %v31;
(* mul	v23.8h, v18.8h, v0.h[7]                     #! PC = 0x411448 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x41144c *)
add %v5 %v5 %v28;
(* sqrdmulh	v8.8h, v8.8h, v0.h[4]                  #! PC = 0x411450 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v8 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v8 %LO11 %LO01;
(* add	v7.8h, v7.8h, v29.8h                        #! PC = 0x411454 *)
add %v7 %v7 %v29;
(* sqrdmulh	v10.8h, v10.8h, v0.h[4]                #! PC = 0x411458 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v10 %LO11 %LO01;
(* add	v13.8h, v13.8h, v30.8h                      #! PC = 0x41145c *)
add %v13 %v13 %v30;
(* sqrdmulh	v16.8h, v16.8h, v0.h[6]                #! PC = 0x411460 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v16 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v15.8h, v15.8h, v31.8h                      #! PC = 0x411464 *)
add %v15 %v15 %v31;
(* sqrdmulh	v18.8h, v18.8h, v0.h[6]                #! PC = 0x411468 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v8.8h, v0.h[0]                      #! PC = 0x41146c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v8 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v10.8h, v0.h[0]                     #! PC = 0x411470 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v10 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v16.8h, v0.h[0]                     #! PC = 0x411474 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x411478 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;


assert true
    && eqsmod (sext %v20 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v8o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v10o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v16o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v18o0 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v8o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v10o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v16o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v18o0) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [1]] && true;
assume
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v5
/\ %v5<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v7
/\ %v7<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v9
/\ %v9<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v11
/\ %v11<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v13
/\ %v13<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v15
/\ %v15<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v17
/\ %v17<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v19
/\ %v19<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* CUT 13 3 *)
cut eqmod (X**16 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
          (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [2], all ghosts],
    eqmod (X**16 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
          (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [2], all ghosts],
    eqmod (X**48 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
          (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [4], all ghosts],
    eqmod (X**48 * poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
          (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [4], all ghosts],
    eqmod (X**16 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
          (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [3], all ghosts],
    eqmod (X**16 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
          (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [3], all ghosts],
    eqmod (X**48 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
          (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [5], all ghosts],
    eqmod (X**48 * poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
          (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [5], all ghosts],
    eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v8o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v10o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v16o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v18o0) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v5
/\ %v5<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v7
/\ %v7<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v9
/\ %v9<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v11
/\ %v11<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v13
/\ %v13<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v15
/\ %v15<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v17
/\ %v17<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v19
/\ %v19<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [1]];

(* CUT 14 3 *)
ecut eqmod (X**16 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
           (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**32] /\
     eqmod (X**48 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
           (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**32]
     prove with [cuts [13]];
(* CUT 15 3 *)
ecut eqmod (X**16 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
           (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**160] /\
     eqmod (X**48 * poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
           (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**160]
     prove with [cuts [13]];
(* CUT 16 3 *)
ecut eqmod (X**16 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
           (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**96] /\
     eqmod (X**48 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
           (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**96]
     prove with [cuts [13]];
(* CUT 17 3 *)
ecut eqmod (X**16 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
           (F10**2 + F50**2 + F90**2 + Fd0**2) [Q, X**64 - 17**224] /\
     eqmod (X**48 * poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
           (F30**2 + F70**2 + Fb0**2 + Ff0**2) [Q, X**64 - 17**224]
     prove with [cuts [13]];
(* CUT 18 3 *)
ecut eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v8o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v10o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v16o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v18o0) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [13]];

ghost %v7o1@sint16[8], %v11o1@sint16[8],%v15o1@sint16[8],%v19o1@sint16[8] :
      %v7o1 = %v7 /\ %v11o1 = %v11 /\ %v15o1 = %v15 /\ %v19o1 = %v19
   && %v7o1 = %v7 /\ %v11o1 = %v11 /\ %v15o1 = %v15 /\ %v19o1 = %v19;

(* sub	v8.8h, v4.8h, v20.8h                        #! PC = 0x41147c *)
sub %v8 %v4 %v20;
(* mul	v28.8h, v7.8h, v1.h[1]                      #! PC = 0x411480 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v28 %v7 %mul; cast %v28@int16[8] %v28;
(* sub	v10.8h, v6.8h, v21.8h                       #! PC = 0x411484 *)
sub %v10 %v6 %v21;
(* mul	v29.8h, v11.8h, v1.h[3]                     #! PC = 0x411488 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v29 %v11 %mul; cast %v29@int16[8] %v29;
(* sub	v16.8h, v12.8h, v22.8h                      #! PC = 0x41148c *)
sub %v16 %v12 %v22;
(* mul	v30.8h, v15.8h, v1.h[5]                     #! PC = 0x411490 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v30 %v15 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v14.8h, v23.8h                      #! PC = 0x411494 *)
sub %v18 %v14 %v23;
(* mul	v31.8h, v19.8h, v1.h[7]                     #! PC = 0x411498 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x41149c *)
add %v4 %v4 %v20;
(* sqrdmulh	v7.8h, v7.8h, v1.h[0]                  #! PC = 0x4114a0 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v7 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v7 %LO11 %LO01;
(* add	v6.8h, v6.8h, v21.8h                        #! PC = 0x4114a4 *)
add %v6 %v6 %v21;
(* sqrdmulh	v11.8h, v11.8h, v1.h[2]                #! PC = 0x4114a8 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* add	v12.8h, v12.8h, v22.8h                      #! PC = 0x4114ac *)
add %v12 %v12 %v22;
(* sqrdmulh	v15.8h, v15.8h, v1.h[4]                #! PC = 0x4114b0 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* add	v14.8h, v14.8h, v23.8h                      #! PC = 0x4114b4 *)
add %v14 %v14 %v23;
(* sqrdmulh	v19.8h, v19.8h, v1.h[6]                #! PC = 0x4114b8 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v7.8h, v0.h[0]                      #! PC = 0x4114bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v7 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v11.8h, v0.h[0]                     #! PC = 0x4114c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v15.8h, v0.h[0]                     #! PC = 0x4114c4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x4114c8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert true
    && eqsmod (sext %v28 16) ([(-687)@32,(-687)@32,(-687)@32,(-687)@32,
                               (-687)@32,(-687)@32,(-687)@32,(-687)@32] *
                              sext %v7o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(630)@32,(630)@32,(630)@32,(630)@32,
                               (630)@32,(630)@32,(630)@32,(630)@32] *
                              sext %v11o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32,
                               (-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32] *
                              sext %v15o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(848)@32,(848)@32,(848)@32,(848)@32,
                               (848)@32,(848)@32,(848)@32,(848)@32] *
                              sext %v19o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                   %v7o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([630,630,630,630,630,630,630,630] *
                   %v11o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                   %v15o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([848,848,848,848,848,848,848,848] *
                   %v19o1) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [7]] && true;
assume
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v4
/\ %v4<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v6
/\ %v6<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v8
/\ %v8<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v10
/\ %v10<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v12
/\ %v12<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v14
/\ %v14<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v16
/\ %v16<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v18
/\ %v18<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 19 4 *)
cut eqmod (X**0 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
          (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [8], all ghosts],
    eqmod (X**0 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
          (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [8], all ghosts],
    eqmod (X**32 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
          (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [10], all ghosts],
    eqmod (X**32 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
          (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [10], all ghosts],
    eqmod (X**0 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
          (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [9], all ghosts],
    eqmod (X**0 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
          (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [9], all ghosts],
    eqmod (X**32 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
          (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [11], all ghosts],
    eqmod (X**32 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
          (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [11], all ghosts],
    eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                %v7o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([630,630,630,630,630,630,630,630] *
                %v11o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                %v15o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([848,848,848,848,848,848,848,848] *
                %v19o1) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v4
/\ %v4<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v6
/\ %v6<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v8
/\ %v8<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v10
/\ %v10<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v12
/\ %v12<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v14
/\ %v14<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v16
/\ %v16<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v18
/\ %v18<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [2]];

(* CUT 20 4 *)
ecut eqmod (X**0 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
           (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**32] /\
     eqmod (X**32 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
           (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**32]
     prove with [cuts [19]];
(* CUT 21 4 *)
ecut eqmod (X**0 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
           (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**160] /\
     eqmod (X**32 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
           (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**160]
     prove with [cuts [19]];
(* CUT 22 4 *)
ecut eqmod (X**0 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
           (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**96] /\
     eqmod (X**32 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
           (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**96]
     prove with [cuts [19]];
(* CUT 23 4 *)
ecut eqmod (X**0 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
           (F00**2 + F40**2 + F80**2 + Fc0**2) [Q, X**64 - 17**224] /\
     eqmod (X**32 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
           (F20**2 + F60**2 + Fa0**2 + Fe0**2) [Q, X**64 - 17**224]
     prove with [cuts [19]];
(* CUT 24 4 *)
ecut eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                 %v7o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v29 ([630,630,630,630,630,630,630,630] *
                 %v11o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                 %v15o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v31 ([848,848,848,848,848,848,848,848] *
                 %v19o1) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [19]];

ghost %v6o1@sint16[8], %v10o1@sint16[8],%v14o1@sint16[8],%v18o1@sint16[8] :
      %v6o1 = %v6 /\ %v10o1 = %v10 /\ %v14o1 = %v14 /\ %v18o1 = %v18
   && %v6o1 = %v6 /\ %v10o1 = %v10 /\ %v14o1 = %v14 /\ %v18o1 = %v18;

(* sub	v7.8h, v5.8h, v28.8h                        #! PC = 0x4114cc *)
sub %v7 %v5 %v28;
(* mul	v20.8h, v6.8h, v1.h[1]                      #! PC = 0x4114d0 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v20 %v6 %mul; cast %v20@int16[8] %v20;
(* sub	v11.8h, v9.8h, v29.8h                       #! PC = 0x4114d4 *)
sub %v11 %v9 %v29;
(* mul	v21.8h, v10.8h, v1.h[3]                     #! PC = 0x4114d8 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v21 %v10 %mul; cast %v21@int16[8] %v21;
(* sub	v15.8h, v13.8h, v30.8h                      #! PC = 0x4114dc *)
sub %v15 %v13 %v30;
(* mul	v22.8h, v14.8h, v1.h[5]                     #! PC = 0x4114e0 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v22 %v14 %mul; cast %v22@int16[8] %v22;
(* sub	v19.8h, v17.8h, v31.8h                      #! PC = 0x4114e4 *)
sub %v19 %v17 %v31;
(* mul	v23.8h, v18.8h, v1.h[7]                     #! PC = 0x4114e8 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x4114ec *)
add %v5 %v5 %v28;
(* sqrdmulh	v6.8h, v6.8h, v1.h[0]                  #! PC = 0x4114f0 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v6 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v6 %LO11 %LO01;
(* add	v9.8h, v9.8h, v29.8h                        #! PC = 0x4114f4 *)
add %v9 %v9 %v29;
(* sqrdmulh	v10.8h, v10.8h, v1.h[2]                #! PC = 0x4114f8 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v10 %LO11 %LO01;
(* add	v13.8h, v13.8h, v30.8h                      #! PC = 0x4114fc *)
add %v13 %v13 %v30;
(* sqrdmulh	v14.8h, v14.8h, v1.h[4]                #! PC = 0x411500 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v14 %LO11 %LO01;
(* add	v17.8h, v17.8h, v31.8h                      #! PC = 0x411504 *)
add %v17 %v17 %v31;
(* sqrdmulh	v18.8h, v18.8h, v1.h[6]                #! PC = 0x411508 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v6.8h, v0.h[0]                      #! PC = 0x41150c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v6 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v10.8h, v0.h[0]                     #! PC = 0x411510 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v10 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v14.8h, v0.h[0]                     #! PC = 0x411514 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v14 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x411518 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert true
    && eqsmod (sext %v20 16) ([(-687)@32,(-687)@32,(-687)@32,(-687)@32,
                               (-687)@32,(-687)@32,(-687)@32,(-687)@32] *
                              sext %v6o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(630)@32,(630)@32,(630)@32,(630)@32,
                               (630)@32,(630)@32,(630)@32,(630)@32] *
                              sext %v10o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32,
                               (-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32] *
                              sext %v14o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(848)@32,(848)@32,(848)@32,(848)@32,
                               (848)@32,(848)@32,(848)@32,(848)@32] *
                              sext %v18o1 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                   %v6o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([630,630,630,630,630,630,630,630] *
                   %v10o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                   %v14o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([848,848,848,848,848,848,848,848] *
                   %v18o1) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [13]] && true;
assume
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v5
/\ %v5<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v7
/\ %v7<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v9
/\ %v9<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v11
/\ %v11<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v13
/\ %v13<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v15
/\ %v15<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v17
/\ %v17<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v19
/\ %v19<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* CUT 25 5 *)
cut eqmod (X**16 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**16] prove with [precondition, cuts [14], all ghosts],
    eqmod (X**16 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**144] prove with [precondition, cuts [14], all ghosts],
    eqmod (X**16 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**80] prove with [precondition, cuts [15], all ghosts],
    eqmod (X**16 * poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**208] prove with [precondition, cuts [15], all ghosts],
    eqmod (X**16 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**48] prove with [precondition, cuts [16], all ghosts],
    eqmod (X**16 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**176] prove with [precondition, cuts [16], all ghosts],
    eqmod (X**16 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**112] prove with [precondition, cuts [17], all ghosts],
    eqmod (X**16 * poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
          (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
          [Q, X**32 - 17**240] prove with [precondition, cuts [17], all ghosts],
    eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                %v6o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([630,630,630,630,630,630,630,630] *
                %v10o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                %v14o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([848,848,848,848,848,848,848,848] *
                %v18o1) [Q,Q,Q,Q,Q,Q,Q,Q]       
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v5
/\ %v5<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v7
/\ %v7<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v9
/\ %v9<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v11
/\ %v11<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v13
/\ %v13<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v15
/\ %v15<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v17
/\ %v17<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v19
/\ %v19<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [3]];

(* CUT 26 5 *)
ecut eqmod (X**16*poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**16]
     prove with [cuts [25]];
(* CUT 27 5 *)
ecut eqmod (X**16*poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**144] 
     prove with [cuts [25]];
(* CUT 28 5 *)
ecut eqmod (X**16*poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**80]
     prove with [cuts [25]];
(* CUT 29 5 *)
ecut eqmod (X**16*poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**208] 
     prove with [cuts [25]];
(* CUT 30 5 *)
ecut eqmod (X**16*poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**48]
     prove with [cuts [25]];
(* CUT 31 5 *)
ecut eqmod (X**16*poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**176]
     prove with [cuts [25]];
(* CUT 32 5 *)
ecut eqmod (X**16*poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**112]          
     prove with [cuts [25]];
(* CUT 33 5 *)
ecut eqmod (X**16*poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
           (F10**2+F30**2+F50**2+F70**2+F90**2+Fb0**2+Fd0**2+Ff0**2)
           [Q, X**32 - 17**240]
     prove with [cuts [25]];
(* CUT 34 5 *)
ecut eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                 %v6o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([630,630,630,630,630,630,630,630] *
                 %v10o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                 %v14o1) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([848,848,848,848,848,848,848,848] *
                 %v18o1) [Q,Q,Q,Q,Q,Q,Q,Q]       
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [25]];

ghost %v5o2@sint16[8], %v7o2@sint16[8],%v9o2@sint16[8],%v11o2@sint16[8] :
      %v5o2 = %v5 /\ %v7o2 = %v7 /\ %v9o2 = %v9 /\ %v11o2 = %v11
   && %v5o2 = %v5 /\ %v7o2 = %v7 /\ %v9o2 = %v9 /\ %v11o2 = %v11;

(* sub	v6.8h, v4.8h, v20.8h                        #! PC = 0x41151c *)
sub %v6 %v4 %v20;
(* mul	v28.8h, v5.8h, v2.h[1]                      #! PC = 0x411520 *)
broadcast %mul 8 [%v2[1]]; mull %mdc %v28 %v5 %mul; cast %v28@int16[8] %v28;
(* sub	v10.8h, v8.8h, v21.8h                       #! PC = 0x411524 *)
sub %v10 %v8 %v21;
(* mul	v29.8h, v7.8h, v2.h[3]                      #! PC = 0x411528 *)
broadcast %mul 8 [%v2[3]]; mull %mdc %v29 %v7 %mul; cast %v29@int16[8] %v29;
(* sub	v14.8h, v12.8h, v22.8h                      #! PC = 0x41152c *)
sub %v14 %v12 %v22;
(* mul	v30.8h, v9.8h, v2.h[5]                      #! PC = 0x411530 *)
broadcast %mul 8 [%v2[5]]; mull %mdc %v30 %v9 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v16.8h, v23.8h                      #! PC = 0x411534 *)
sub %v18 %v16 %v23;
(* mul	v31.8h, v11.8h, v2.h[7]                     #! PC = 0x411538 *)
broadcast %mul 8 [%v2[7]]; mull %mdc %v31 %v11 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x41153c *)
add %v4 %v4 %v20;
(* sqrdmulh	v5.8h, v5.8h, v2.h[0]                  #! PC = 0x411540 *)
broadcast %sqrdmulh 8 [%v2[0]]; smulj %LO %v5 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v5 %LO11 %LO01;
(* add	v8.8h, v8.8h, v21.8h                        #! PC = 0x411544 *)
add %v8 %v8 %v21;
(* sqrdmulh	v7.8h, v7.8h, v2.h[2]                  #! PC = 0x411548 *)
broadcast %sqrdmulh 8 [%v2[2]]; smulj %LO %v7 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v7 %LO11 %LO01;
(* add	v12.8h, v12.8h, v22.8h                      #! PC = 0x41154c *)
add %v12 %v12 %v22;
(* sqrdmulh	v9.8h, v9.8h, v2.h[4]                  #! PC = 0x411550 *)
broadcast %sqrdmulh 8 [%v2[4]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v9 %LO11 %LO01;
(* add	v16.8h, v16.8h, v23.8h                      #! PC = 0x411554 *)
add %v16 %v16 %v23;
(* sqrdmulh	v11.8h, v11.8h, v2.h[6]                #! PC = 0x411558 *)
broadcast %sqrdmulh 8 [%v2[6]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* mls	v28.8h, v5.8h, v0.h[0]                      #! PC = 0x41155c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v5 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v7.8h, v0.h[0]                      #! PC = 0x411560 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v7 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v9.8h, v0.h[0]                      #! PC = 0x411564 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v9 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v11.8h, v0.h[0]                     #! PC = 0x411568 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert true
    && eqsmod (sext %v28 16) ([(1062)@32,(1062)@32,(1062)@32,(1062)@32,
                               (1062)@32,(1062)@32,(1062)@32,(1062)@32] *
                              sext %v5o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-1410)@32,(-1410)@32,(-1410)@32,(-1410)@32,
                               (-1410)@32,(-1410)@32,(-1410)@32,(-1410)@32] *
                              sext %v7o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(193)@32,(193)@32,(193)@32,(193)@32,
                               (193)@32,(193)@32,(193)@32,(193)@32] *
                              sext %v9o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(797)@32,(797)@32,(797)@32,(797)@32,
                               (797)@32,(797)@32,(797)@32,(797)@32] *
                              sext %v11o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062] *
                   %v5o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410] *
                   %v7o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([193,193,193,193,193,193,193,193] *
                   %v9o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([797,797,797,797,797,797,797,797] *
                   %v11o2) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [19]] && true;
assume
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v4
/\ %v4<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v6
/\ %v6<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v8
/\ %v8<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v10
/\ %v10<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v12
/\ %v12<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v14
/\ %v14<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v16
/\ %v16<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v18
/\ %v18<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 35 6 *)
cut eqmod (X**0*poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**16] prove with [precondition, cuts [20], all ghosts],
    eqmod (X**0*poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**144] prove with [precondition, cuts [20], all ghosts],
    eqmod (X**0*poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**80] prove with [precondition, cuts [21], all ghosts],
    eqmod (X**0*poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**208] prove with [precondition, cuts [21], all ghosts],
    eqmod (X**0*poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**48] prove with [precondition, cuts [22], all ghosts],
    eqmod (X**0*poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**176] prove with [precondition, cuts [22], all ghosts],
    eqmod (X**0*poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**112] prove with [precondition, cuts [23], all ghosts],
    eqmod (X**0*poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
          (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
          [Q, X**32 - 17**240] prove with [precondition, cuts [23], all ghosts],
    eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062]*%v5o2) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410]*%v7o2) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v30 ([193,193,193,193,193,193,193,193]*%v9o2) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v31 ([797,797,797,797,797,797,797,797]*%v11o2) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v4
/\ %v4<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v6
/\ %v6<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v8
/\ %v8<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v10
/\ %v10<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v12
/\ %v12<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v14
/\ %v14<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v16
/\ %v16<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v18
/\ %v18<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [4]];

(* CUT 36 6 *)
ecut eqmod (X**0*poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**16]
     prove with [cuts [35]];
(* CUT 37 6 *)
ecut eqmod (X**0*poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**144]     
     prove with [cuts [35]];
(* CUT 38 6 *)
ecut eqmod (X**0*poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**80]
     prove with [cuts [35]];
(* CUT 39 6 *)
ecut eqmod (X**0*poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**208]
     prove with [cuts [35]];
(* CUT 40 6 *)
ecut eqmod (X**0*poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**48]
     prove with [cuts [35]];
(* CUT 41 6 *)
ecut eqmod (X**0*poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**176]
     prove with [cuts [35]];
(* CUT 42 6 *)
ecut eqmod (X**0*poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**112]
     prove with [cuts [35]];
(* CUT 43 6 *)
ecut eqmod (X**0*poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
           (F00**2+F20**2+F40**2+F60**2+F80**2+Fa0**2+Fc0**2+Fe0**2)
           [Q, X**32 - 17**240]
     prove with [cuts [35]];
(* CUT 44 6 *)
ecut eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062]*%v5o2) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410]*%v7o2) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v30 ([193,193,193,193,193,193,193,193]*%v9o2) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v31 ([797,797,797,797,797,797,797,797]*%v11o2) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [35]];

ghost %v13o2@sint16[8], %v15o2@sint16[8],%v17o2@sint16[8],%v19o2@sint16[8] :
      %v13o2 = %v13 /\ %v15o2 = %v15 /\ %v17o2 = %v17 /\ %v19o2 = %v19
   && %v13o2 = %v13 /\ %v15o2 = %v15 /\ %v17o2 = %v17 /\ %v19o2 = %v19;

(* sub	v5.8h, v4.8h, v28.8h                        #! PC = 0x41156c *)
sub %v5 %v4 %v28;
(* str	q5, [x0, #32]                               #! EA = L0xffffffffc420; PC = 0x411570 *)
mov [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e] %v5;
(* mul	v20.8h, v13.8h, v3.h[1]                     #! PC = 0x411574 *)
broadcast %mul 8 [%v3[1]]; mull %mdc %v20 %v13 %mul; cast %v20@int16[8] %v20;
(* sub	v7.8h, v6.8h, v29.8h                        #! PC = 0x411578 *)
sub %v7 %v6 %v29;
(* str	q7, [x0, #96]                               #! EA = L0xffffffffc460; PC = 0x41157c *)
mov [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e] %v7;
(* mul	v21.8h, v15.8h, v3.h[3]                     #! PC = 0x411580 *)
broadcast %mul 8 [%v3[3]]; mull %mdc %v21 %v15 %mul; cast %v21@int16[8] %v21;
(* sub	v9.8h, v8.8h, v30.8h                        #! PC = 0x411584 *)
sub %v9 %v8 %v30;
(* str	q9, [x0, #160]                              #! EA = L0xffffffffc4a0; PC = 0x411588 *)
mov [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae] %v9;
(* mul	v22.8h, v17.8h, v3.h[5]                     #! PC = 0x41158c *)
broadcast %mul 8 [%v3[5]]; mull %mdc %v22 %v17 %mul; cast %v22@int16[8] %v22;
(* sub	v11.8h, v10.8h, v31.8h                      #! PC = 0x411590 *)
sub %v11 %v10 %v31;
(* str	q11, [x0, #224]                             #! EA = L0xffffffffc4e0; PC = 0x411594 *)
mov [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee] %v11;
(* mul	v23.8h, v19.8h, v3.h[7]                     #! PC = 0x411598 *)
broadcast %mul 8 [%v3[7]]; mull %mdc %v23 %v19 %mul; cast %v23@int16[8] %v23;
(* ldr	q5, [x0, #48]                               #! EA = L0xffffffffc430; Value = 0x0000ffff0000ffff; PC = 0x41159c *)
mov %v5 [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e];
(* add	v4.8h, v4.8h, v28.8h                        #! PC = 0x4115a0 *)
add %v4 %v4 %v28;
(* sqrdmulh	v13.8h, v13.8h, v3.h[0]                #! PC = 0x4115a4 *)
broadcast %sqrdmulh 8 [%v3[0]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v13 %LO11 %LO01;
(* ldr	q7, [x0, #112]                              #! EA = L0xffffffffc470; Value = 0x0000000200010000; PC = 0x4115a8 *)
mov %v7 [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e];
(* add	v6.8h, v6.8h, v29.8h                        #! PC = 0x4115ac *)
add %v6 %v6 %v29;
(* sqrdmulh	v15.8h, v15.8h, v3.h[2]                #! PC = 0x4115b0 *)
broadcast %sqrdmulh 8 [%v3[2]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* ldr	q9, [x0, #176]                              #! EA = L0xffffffffc4b0; Value = 0x0000ffff0000ffff; PC = 0x4115b4 *)
mov %v9 [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be];
(* add	v8.8h, v8.8h, v30.8h                        #! PC = 0x4115b8 *)
add %v8 %v8 %v30;
(* sqrdmulh	v17.8h, v17.8h, v3.h[4]                #! PC = 0x4115bc *)
broadcast %sqrdmulh 8 [%v3[4]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* ldr	q11, [x0, #240]                             #! EA = L0xffffffffc4f0; Value = 0x0001000100010001; PC = 0x4115c0 *)
mov %v11 [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe];
(* add	v10.8h, v10.8h, v31.8h                      #! PC = 0x4115c4 *)
add %v10 %v10 %v31;
(* sqrdmulh	v19.8h, v19.8h, v3.h[6]                #! PC = 0x4115c8 *)
broadcast %sqrdmulh 8 [%v3[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* str	q4, [x0]                                    #! EA = L0xffffffffc400; PC = 0x4115cc *)
mov [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e] %v4;
(* mls	v20.8h, v13.8h, v0.h[0]                     #! PC = 0x4115d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v13 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* str	q6, [x0, #64]                               #! EA = L0xffffffffc440; PC = 0x4115d4 *)
mov [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e] %v6;
(* mls	v21.8h, v15.8h, v0.h[0]                     #! PC = 0x4115d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* str	q8, [x0, #128]                              #! EA = L0xffffffffc480; PC = 0x4115dc *)
mov [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e] %v8;
(* mls	v22.8h, v17.8h, v0.h[0]                     #! PC = 0x4115e0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* str	q10, [x0, #192]                             #! EA = L0xffffffffc4c0; PC = 0x4115e4 *)
mov [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce] %v10;
(* mls	v23.8h, v19.8h, v0.h[0]                     #! PC = 0x4115e8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert true
    && eqsmod (sext %v20 16) ([(-543)@32,(-543)@32,(-543)@32,(-543)@32,
                               (-543)@32,(-543)@32,(-543)@32,(-543)@32] *
                              sext %v13o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-69)@32,(-69)@32,(-69)@32,(-69)@32,
                               (-69)@32,(-69)@32,(-69)@32,(-69)@32] *
                              sext %v15o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(569)@32,(569)@32,(569)@32,(569)@32,
                               (569)@32,(569)@32,(569)@32,(569)@32] *
                              sext %v17o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-1583)@32,(-1583)@32,(-1583)@32,(-1583)@32,
                               (-1583)@32,(-1583)@32,(-1583)@32,(-1583)@32] *
                              sext %v19o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-543,-543,-543,-543,-543,-543,-543,-543] *
                   %v13o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-69,-69,-69,-69,-69,-69,-69,-69] *
                   %v15o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([569,569,569,569,569,569,569,569] *
                   %v17o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-1583,-1583,-1583,-1583,-1583,-1583,-1583,-1583] *
                   %v19o2) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

(* sub	v13.8h, v12.8h, v20.8h                      #! PC = 0x4115ec *)
sub %v13 %v12 %v20;
(* str	q13, [x0, #288]                             #! EA = L0xffffffffc520; PC = 0x4115f0 *)
mov [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e] %v13;
(* ldr	q13, [x0, #304]                             #! EA = L0xffffffffc530; Value = 0x0000ffffffff0000; PC = 0x4115f4 *)
mov %v13 [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e];
(* sub	v15.8h, v14.8h, v21.8h                      #! PC = 0x4115f8 *)
sub %v15 %v14 %v21;
(* str	q15, [x0, #352]                             #! EA = L0xffffffffc560; PC = 0x4115fc *)
mov [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e] %v15;
(* ldr	q15, [x0, #368]                             #! EA = L0xffffffffc570; Value = 0xffff000100010000; PC = 0x411600 *)
mov %v15 [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e];
(* sub	v17.8h, v16.8h, v22.8h                      #! PC = 0x411604 *)
sub %v17 %v16 %v22;
(* str	q17, [x0, #416]                             #! EA = L0xffffffffc5a0; PC = 0x411608 *)
mov [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae] %v17;
(* ldr	q17, [x0, #432]                             #! EA = L0xffffffffc5b0; Value = 0xffff000100000001; PC = 0x41160c *)
mov %v17 [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be];
(* sub	v19.8h, v18.8h, v23.8h                      #! PC = 0x411610 *)
sub %v19 %v18 %v23;
(* str	q19, [x0, #480]                             #! EA = L0xffffffffc5e0; PC = 0x411614 *)
mov [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee] %v19;
(* ldr	q19, [x0, #496]                             #! EA = L0xffffffffc5f0; Value = 0xffff000100010001; PC = 0x411618 *)
mov %v19 [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe];
(* add	v12.8h, v12.8h, v20.8h                      #! PC = 0x41161c *)
add %v12 %v12 %v20;
(* str	q12, [x0, #256]                             #! EA = L0xffffffffc500; PC = 0x411620 *)
mov [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e] %v12;
(* add	v14.8h, v14.8h, v21.8h                      #! PC = 0x411624 *)
add %v14 %v14 %v21;
(* str	q14, [x0, #320]                             #! EA = L0xffffffffc540; PC = 0x411628 *)
mov [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e] %v14;
(* add	v16.8h, v16.8h, v22.8h                      #! PC = 0x41162c *)
add %v16 %v16 %v22;
(* str	q16, [x0, #384]                             #! EA = L0xffffffffc580; PC = 0x411630 *)
mov [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e] %v16;
(* add	v18.8h, v18.8h, v23.8h                      #! PC = 0x411634 *)
add %v18 %v18 %v23;
(* str	q18, [x0, #448]                             #! EA = L0xffffffffc5c0; PC = 0x411638 *)
mov [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce] %v18;

assert [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc400, L0xffffffffc402] /\
       [L0xffffffffc400, L0xffffffffc402] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc404, L0xffffffffc406] /\
       [L0xffffffffc404, L0xffffffffc406] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc408, L0xffffffffc40a] /\
       [L0xffffffffc408, L0xffffffffc40a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc40c, L0xffffffffc40e] /\
       [L0xffffffffc40c, L0xffffffffc40e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc420, L0xffffffffc422] /\
       [L0xffffffffc420, L0xffffffffc422] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc424, L0xffffffffc426] /\
       [L0xffffffffc424, L0xffffffffc426] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc428, L0xffffffffc42a] /\
       [L0xffffffffc428, L0xffffffffc42a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc42c, L0xffffffffc42e] /\
       [L0xffffffffc42c, L0xffffffffc42e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
       [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
       [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
       [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
       [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
       [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
       [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
       [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
       [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
       [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
       [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
       [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
       [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
       [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
       [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
       [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
       [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
       [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
       [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
       [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
       [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
       [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
       [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
       [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
       [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc500, L0xffffffffc502] /\
       [L0xffffffffc500, L0xffffffffc502] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc504, L0xffffffffc506] /\
       [L0xffffffffc504, L0xffffffffc506] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc508, L0xffffffffc50a] /\
       [L0xffffffffc508, L0xffffffffc50a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc50c, L0xffffffffc50e] /\
       [L0xffffffffc50c, L0xffffffffc50e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc520, L0xffffffffc522] /\
       [L0xffffffffc520, L0xffffffffc522] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc524, L0xffffffffc526] /\
       [L0xffffffffc524, L0xffffffffc526] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc528, L0xffffffffc52a] /\
       [L0xffffffffc528, L0xffffffffc52a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc52c, L0xffffffffc52e] /\
       [L0xffffffffc52c, L0xffffffffc52e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
       [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
       [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
       [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
       [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
       [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
       [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
       [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
       [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
       [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
       [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
       [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
       [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
       [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
       [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
       [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
       [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
       [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
       [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
       [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
       [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
       [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
       [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
       [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
       [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2]
       prove with [algebra solver ppl, precondition, cuts [35]] && true;
assume [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc400, L0xffffffffc402] /\
       [L0xffffffffc400, L0xffffffffc402] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc404, L0xffffffffc406] /\
       [L0xffffffffc404, L0xffffffffc406] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc408, L0xffffffffc40a] /\
       [L0xffffffffc408, L0xffffffffc40a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc40c, L0xffffffffc40e] /\
       [L0xffffffffc40c, L0xffffffffc40e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc420, L0xffffffffc422] /\
       [L0xffffffffc420, L0xffffffffc422] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc424, L0xffffffffc426] /\
       [L0xffffffffc424, L0xffffffffc426] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc428, L0xffffffffc42a] /\
       [L0xffffffffc428, L0xffffffffc42a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc42c, L0xffffffffc42e] /\
       [L0xffffffffc42c, L0xffffffffc42e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
       [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
       [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
       [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
       [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
       [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
       [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
       [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
       [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
       [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
       [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
       [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
       [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
       [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
       [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
       [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
       [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
       [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
       [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
       [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
       [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
       [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
       [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
       [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
       [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc500, L0xffffffffc502] /\
       [L0xffffffffc500, L0xffffffffc502] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc504, L0xffffffffc506] /\
       [L0xffffffffc504, L0xffffffffc506] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc508, L0xffffffffc50a] /\
       [L0xffffffffc508, L0xffffffffc50a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc50c, L0xffffffffc50e] /\
       [L0xffffffffc50c, L0xffffffffc50e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc520, L0xffffffffc522] /\
       [L0xffffffffc520, L0xffffffffc522] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc524, L0xffffffffc526] /\
       [L0xffffffffc524, L0xffffffffc526] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc528, L0xffffffffc52a] /\
       [L0xffffffffc528, L0xffffffffc52a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc52c, L0xffffffffc52e] /\
       [L0xffffffffc52c, L0xffffffffc52e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
       [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
       [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
       [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
       [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
       [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
       [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
       [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
       [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
       [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
       [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
       [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
       [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
       [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
       [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
       [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
       [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
       [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
       [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
       [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
       [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
       [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
       [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
       [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
       [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2]
    && [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc400, L0xffffffffc402] /\
       [L0xffffffffc400, L0xffffffffc402] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc404, L0xffffffffc406] /\
       [L0xffffffffc404, L0xffffffffc406] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc408, L0xffffffffc40a] /\
       [L0xffffffffc408, L0xffffffffc40a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc40c, L0xffffffffc40e] /\
       [L0xffffffffc40c, L0xffffffffc40e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc420, L0xffffffffc422] /\
       [L0xffffffffc420, L0xffffffffc422] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc424, L0xffffffffc426] /\
       [L0xffffffffc424, L0xffffffffc426] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc428, L0xffffffffc42a] /\
       [L0xffffffffc428, L0xffffffffc42a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc42c, L0xffffffffc42e] /\
       [L0xffffffffc42c, L0xffffffffc42e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc440, L0xffffffffc442] /\
       [L0xffffffffc440, L0xffffffffc442] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc444, L0xffffffffc446] /\
       [L0xffffffffc444, L0xffffffffc446] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc448, L0xffffffffc44a] /\
       [L0xffffffffc448, L0xffffffffc44a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc44c, L0xffffffffc44e] /\
       [L0xffffffffc44c, L0xffffffffc44e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc460, L0xffffffffc462] /\
       [L0xffffffffc460, L0xffffffffc462] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc464, L0xffffffffc466] /\
       [L0xffffffffc464, L0xffffffffc466] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc468, L0xffffffffc46a] /\
       [L0xffffffffc468, L0xffffffffc46a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc46c, L0xffffffffc46e] /\
       [L0xffffffffc46c, L0xffffffffc46e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc480, L0xffffffffc482] /\
       [L0xffffffffc480, L0xffffffffc482] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc484, L0xffffffffc486] /\
       [L0xffffffffc484, L0xffffffffc486] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc488, L0xffffffffc48a] /\
       [L0xffffffffc488, L0xffffffffc48a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc48c, L0xffffffffc48e] /\
       [L0xffffffffc48c, L0xffffffffc48e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a0, L0xffffffffc4a2] /\
       [L0xffffffffc4a0, L0xffffffffc4a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a4, L0xffffffffc4a6] /\
       [L0xffffffffc4a4, L0xffffffffc4a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a8, L0xffffffffc4aa] /\
       [L0xffffffffc4a8, L0xffffffffc4aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ac, L0xffffffffc4ae] /\
       [L0xffffffffc4ac, L0xffffffffc4ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c0, L0xffffffffc4c2] /\
       [L0xffffffffc4c0, L0xffffffffc4c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c4, L0xffffffffc4c6] /\
       [L0xffffffffc4c4, L0xffffffffc4c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c8, L0xffffffffc4ca] /\
       [L0xffffffffc4c8, L0xffffffffc4ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4cc, L0xffffffffc4ce] /\
       [L0xffffffffc4cc, L0xffffffffc4ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e0, L0xffffffffc4e2] /\
       [L0xffffffffc4e0, L0xffffffffc4e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e4, L0xffffffffc4e6] /\
       [L0xffffffffc4e4, L0xffffffffc4e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e8, L0xffffffffc4ea] /\
       [L0xffffffffc4e8, L0xffffffffc4ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ec, L0xffffffffc4ee] /\
       [L0xffffffffc4ec, L0xffffffffc4ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc500, L0xffffffffc502] /\
       [L0xffffffffc500, L0xffffffffc502] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc504, L0xffffffffc506] /\
       [L0xffffffffc504, L0xffffffffc506] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc508, L0xffffffffc50a] /\
       [L0xffffffffc508, L0xffffffffc50a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc50c, L0xffffffffc50e] /\
       [L0xffffffffc50c, L0xffffffffc50e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc520, L0xffffffffc522] /\
       [L0xffffffffc520, L0xffffffffc522] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc524, L0xffffffffc526] /\
       [L0xffffffffc524, L0xffffffffc526] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc528, L0xffffffffc52a] /\
       [L0xffffffffc528, L0xffffffffc52a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc52c, L0xffffffffc52e] /\
       [L0xffffffffc52c, L0xffffffffc52e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc540, L0xffffffffc542] /\
       [L0xffffffffc540, L0xffffffffc542] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc544, L0xffffffffc546] /\
       [L0xffffffffc544, L0xffffffffc546] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc548, L0xffffffffc54a] /\
       [L0xffffffffc548, L0xffffffffc54a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc54c, L0xffffffffc54e] /\
       [L0xffffffffc54c, L0xffffffffc54e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc560, L0xffffffffc562] /\
       [L0xffffffffc560, L0xffffffffc562] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc564, L0xffffffffc566] /\
       [L0xffffffffc564, L0xffffffffc566] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc568, L0xffffffffc56a] /\
       [L0xffffffffc568, L0xffffffffc56a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc56c, L0xffffffffc56e] /\
       [L0xffffffffc56c, L0xffffffffc56e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc580, L0xffffffffc582] /\
       [L0xffffffffc580, L0xffffffffc582] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc584, L0xffffffffc586] /\
       [L0xffffffffc584, L0xffffffffc586] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc588, L0xffffffffc58a] /\
       [L0xffffffffc588, L0xffffffffc58a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc58c, L0xffffffffc58e] /\
       [L0xffffffffc58c, L0xffffffffc58e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a0, L0xffffffffc5a2] /\
       [L0xffffffffc5a0, L0xffffffffc5a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a4, L0xffffffffc5a6] /\
       [L0xffffffffc5a4, L0xffffffffc5a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a8, L0xffffffffc5aa] /\
       [L0xffffffffc5a8, L0xffffffffc5aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ac, L0xffffffffc5ae] /\
       [L0xffffffffc5ac, L0xffffffffc5ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c0, L0xffffffffc5c2] /\
       [L0xffffffffc5c0, L0xffffffffc5c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c4, L0xffffffffc5c6] /\
       [L0xffffffffc5c4, L0xffffffffc5c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c8, L0xffffffffc5ca] /\
       [L0xffffffffc5c8, L0xffffffffc5ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5cc, L0xffffffffc5ce] /\
       [L0xffffffffc5cc, L0xffffffffc5ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e0, L0xffffffffc5e2] /\
       [L0xffffffffc5e0, L0xffffffffc5e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e4, L0xffffffffc5e6] /\
       [L0xffffffffc5e4, L0xffffffffc5e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e8, L0xffffffffc5ea] /\
       [L0xffffffffc5e8, L0xffffffffc5ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ec, L0xffffffffc5ee] /\
       [L0xffffffffc5ec, L0xffffffffc5ee] <s [4@16*Q+Q2, 4@16*Q+Q2];

(* CUT 45 7 *)

cut eqmod (poly X [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
                   L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**8] prove with [precondition, cuts [26,36], all ghosts],
    eqmod (poly X [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
                   L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**136] prove with [precondition, cuts [26,36], all ghosts],
    eqmod (poly X [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
                   L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**72] prove with [precondition, cuts [27,37], all ghosts],
    eqmod (poly X [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
                   L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**200] prove with [precondition, cuts [27,37], all ghosts],
    eqmod (poly X [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
                   L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**40] prove with [precondition, cuts [28,38], all ghosts],
    eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
                   L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**168] prove with [precondition, cuts [28,38], all ghosts],
    eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
                   L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**104] prove with [precondition, cuts [29,39], all ghosts],
    eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
                   L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**232] prove with [precondition, cuts [29,39], all ghosts],
    eqmod (poly X [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
                   L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**24] prove with [precondition, cuts [30,40], all ghosts],
    eqmod (poly X [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
                   L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**152] prove with [precondition, cuts [30,40], all ghosts],
    eqmod (poly X [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
                   L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**88] prove with [precondition, cuts [31,41], all ghosts],
    eqmod (poly X [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
                   L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**216] prove with [precondition, cuts [31,41], all ghosts],
    eqmod (poly X [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
                   L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**56] prove with [precondition, cuts [32,42], all ghosts],
    eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,
                   L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**184] prove with [precondition, cuts [32,42], all ghosts],
    eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,
                   L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**120] prove with [precondition, cuts [33,43], all ghosts],
    eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,
                   L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**248] prove with [precondition, cuts [33,43], all ghosts],
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc400, L0xffffffffc402] /\
    [L0xffffffffc400, L0xffffffffc402] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc404, L0xffffffffc406] /\
    [L0xffffffffc404, L0xffffffffc406] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc408, L0xffffffffc40a] /\
    [L0xffffffffc408, L0xffffffffc40a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc40c, L0xffffffffc40e] /\
    [L0xffffffffc40c, L0xffffffffc40e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc420, L0xffffffffc422] /\
    [L0xffffffffc420, L0xffffffffc422] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc424, L0xffffffffc426] /\
    [L0xffffffffc424, L0xffffffffc426] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc428, L0xffffffffc42a] /\
    [L0xffffffffc428, L0xffffffffc42a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc42c, L0xffffffffc42e] /\
    [L0xffffffffc42c, L0xffffffffc42e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
    [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
    [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
    [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
    [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
    [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
    [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
    [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
    [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
    [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
    [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
    [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
    [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
    [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
    [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
    [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
    [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
    [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
    [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
    [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
    [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
    [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
    [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
    [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
    [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc500, L0xffffffffc502] /\
    [L0xffffffffc500, L0xffffffffc502] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc504, L0xffffffffc506] /\
    [L0xffffffffc504, L0xffffffffc506] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc508, L0xffffffffc50a] /\
    [L0xffffffffc508, L0xffffffffc50a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc50c, L0xffffffffc50e] /\
    [L0xffffffffc50c, L0xffffffffc50e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc520, L0xffffffffc522] /\
    [L0xffffffffc520, L0xffffffffc522] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc524, L0xffffffffc526] /\
    [L0xffffffffc524, L0xffffffffc526] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc528, L0xffffffffc52a] /\
    [L0xffffffffc528, L0xffffffffc52a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc52c, L0xffffffffc52e] /\
    [L0xffffffffc52c, L0xffffffffc52e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
    [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
    [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
    [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
    [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
    [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
    [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
    [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
    [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
    [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
    [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
    [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
    [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
    [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
    [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
    [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
    [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
    [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
    [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
    [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
    [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
    [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
    [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
    [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
    [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2]
    prove with [all cuts]
 && [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc400, L0xffffffffc402] /\
    [L0xffffffffc400, L0xffffffffc402] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc404, L0xffffffffc406] /\
    [L0xffffffffc404, L0xffffffffc406] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc408, L0xffffffffc40a] /\
    [L0xffffffffc408, L0xffffffffc40a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc40c, L0xffffffffc40e] /\
    [L0xffffffffc40c, L0xffffffffc40e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc420, L0xffffffffc422] /\
    [L0xffffffffc420, L0xffffffffc422] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc424, L0xffffffffc426] /\
    [L0xffffffffc424, L0xffffffffc426] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc428, L0xffffffffc42a] /\
    [L0xffffffffc428, L0xffffffffc42a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc42c, L0xffffffffc42e] /\
    [L0xffffffffc42c, L0xffffffffc42e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc440, L0xffffffffc442] /\
    [L0xffffffffc440, L0xffffffffc442] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc444, L0xffffffffc446] /\
    [L0xffffffffc444, L0xffffffffc446] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc448, L0xffffffffc44a] /\
    [L0xffffffffc448, L0xffffffffc44a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc44c, L0xffffffffc44e] /\
    [L0xffffffffc44c, L0xffffffffc44e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc460, L0xffffffffc462] /\
    [L0xffffffffc460, L0xffffffffc462] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc464, L0xffffffffc466] /\
    [L0xffffffffc464, L0xffffffffc466] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc468, L0xffffffffc46a] /\
    [L0xffffffffc468, L0xffffffffc46a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc46c, L0xffffffffc46e] /\
    [L0xffffffffc46c, L0xffffffffc46e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc480, L0xffffffffc482] /\
    [L0xffffffffc480, L0xffffffffc482] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc484, L0xffffffffc486] /\
    [L0xffffffffc484, L0xffffffffc486] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc488, L0xffffffffc48a] /\
    [L0xffffffffc488, L0xffffffffc48a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc48c, L0xffffffffc48e] /\
    [L0xffffffffc48c, L0xffffffffc48e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a0, L0xffffffffc4a2] /\
    [L0xffffffffc4a0, L0xffffffffc4a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a4, L0xffffffffc4a6] /\
    [L0xffffffffc4a4, L0xffffffffc4a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a8, L0xffffffffc4aa] /\
    [L0xffffffffc4a8, L0xffffffffc4aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ac, L0xffffffffc4ae] /\
    [L0xffffffffc4ac, L0xffffffffc4ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c0, L0xffffffffc4c2] /\
    [L0xffffffffc4c0, L0xffffffffc4c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c4, L0xffffffffc4c6] /\
    [L0xffffffffc4c4, L0xffffffffc4c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c8, L0xffffffffc4ca] /\
    [L0xffffffffc4c8, L0xffffffffc4ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4cc, L0xffffffffc4ce] /\
    [L0xffffffffc4cc, L0xffffffffc4ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e0, L0xffffffffc4e2] /\
    [L0xffffffffc4e0, L0xffffffffc4e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e4, L0xffffffffc4e6] /\
    [L0xffffffffc4e4, L0xffffffffc4e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e8, L0xffffffffc4ea] /\
    [L0xffffffffc4e8, L0xffffffffc4ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ec, L0xffffffffc4ee] /\
    [L0xffffffffc4ec, L0xffffffffc4ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc500, L0xffffffffc502] /\
    [L0xffffffffc500, L0xffffffffc502] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc504, L0xffffffffc506] /\
    [L0xffffffffc504, L0xffffffffc506] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc508, L0xffffffffc50a] /\
    [L0xffffffffc508, L0xffffffffc50a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc50c, L0xffffffffc50e] /\
    [L0xffffffffc50c, L0xffffffffc50e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc520, L0xffffffffc522] /\
    [L0xffffffffc520, L0xffffffffc522] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc524, L0xffffffffc526] /\
    [L0xffffffffc524, L0xffffffffc526] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc528, L0xffffffffc52a] /\
    [L0xffffffffc528, L0xffffffffc52a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc52c, L0xffffffffc52e] /\
    [L0xffffffffc52c, L0xffffffffc52e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc540, L0xffffffffc542] /\
    [L0xffffffffc540, L0xffffffffc542] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc544, L0xffffffffc546] /\
    [L0xffffffffc544, L0xffffffffc546] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc548, L0xffffffffc54a] /\
    [L0xffffffffc548, L0xffffffffc54a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc54c, L0xffffffffc54e] /\
    [L0xffffffffc54c, L0xffffffffc54e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc560, L0xffffffffc562] /\
    [L0xffffffffc560, L0xffffffffc562] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc564, L0xffffffffc566] /\
    [L0xffffffffc564, L0xffffffffc566] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc568, L0xffffffffc56a] /\
    [L0xffffffffc568, L0xffffffffc56a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc56c, L0xffffffffc56e] /\
    [L0xffffffffc56c, L0xffffffffc56e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc580, L0xffffffffc582] /\
    [L0xffffffffc580, L0xffffffffc582] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc584, L0xffffffffc586] /\
    [L0xffffffffc584, L0xffffffffc586] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc588, L0xffffffffc58a] /\
    [L0xffffffffc588, L0xffffffffc58a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc58c, L0xffffffffc58e] /\
    [L0xffffffffc58c, L0xffffffffc58e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a0, L0xffffffffc5a2] /\
    [L0xffffffffc5a0, L0xffffffffc5a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a4, L0xffffffffc5a6] /\
    [L0xffffffffc5a4, L0xffffffffc5a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a8, L0xffffffffc5aa] /\
    [L0xffffffffc5a8, L0xffffffffc5aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ac, L0xffffffffc5ae] /\
    [L0xffffffffc5ac, L0xffffffffc5ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c0, L0xffffffffc5c2] /\
    [L0xffffffffc5c0, L0xffffffffc5c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c4, L0xffffffffc5c6] /\
    [L0xffffffffc5c4, L0xffffffffc5c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c8, L0xffffffffc5ca] /\
    [L0xffffffffc5c8, L0xffffffffc5ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5cc, L0xffffffffc5ce] /\
    [L0xffffffffc5cc, L0xffffffffc5ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e0, L0xffffffffc5e2] /\
    [L0xffffffffc5e0, L0xffffffffc5e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e4, L0xffffffffc5e6] /\
    [L0xffffffffc5e4, L0xffffffffc5e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e8, L0xffffffffc5ea] /\
    [L0xffffffffc5e8, L0xffffffffc5ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ec, L0xffffffffc5ee] /\
    [L0xffffffffc5ec, L0xffffffffc5ee] <s [4@16*Q+Q2, 4@16*Q+Q2]
    prove with [precondition, cuts [5]];


(* mul	v28.8h, v13.8h, v0.h[3]                     #! PC = 0x41163c *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v28 %v13 %mul; cast %v28@int16[8] %v28;
(* mul	v29.8h, v15.8h, v0.h[3]                     #! PC = 0x411640 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v29 %v15 %mul; cast %v29@int16[8] %v29;
(* mul	v30.8h, v17.8h, v0.h[3]                     #! PC = 0x411644 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v30 %v17 %mul; cast %v30@int16[8] %v30;
(* mul	v31.8h, v19.8h, v0.h[3]                     #! PC = 0x411648 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* ldr	q12, [x0, #272]                             #! EA = L0xffffffffc510; Value = 0xffff0000ffff0000; PC = 0x41164c *)
mov %v12 [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e];
(* sqrdmulh	v13.8h, v13.8h, v0.h[2]                #! PC = 0x411650 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v13 %LO11 %LO01;
(* ldr	q14, [x0, #336]                             #! EA = L0xffffffffc550; Value = 0x0001ffff00000001; PC = 0x411654 *)
mov %v14 [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e];
(* sqrdmulh	v15.8h, v15.8h, v0.h[2]                #! PC = 0x411658 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* ldr	q16, [x0, #400]                             #! EA = L0xffffffffc590; Value = 0x0000ffff0000ffff; PC = 0x41165c *)
mov %v16 [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e];
(* sqrdmulh	v17.8h, v17.8h, v0.h[2]                #! PC = 0x411660 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* ldr	q18, [x0, #464]                             #! EA = L0xffffffffc5d0; Value = 0x0002000100020000; PC = 0x411664 *)
mov %v18 [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de];
(* sqrdmulh	v19.8h, v19.8h, v0.h[2]                #! PC = 0x411668 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v13.8h, v0.h[0]                     #! PC = 0x41166c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v13 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v15.8h, v0.h[0]                     #! PC = 0x411670 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v17.8h, v0.h[0]                     #! PC = 0x411674 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411678 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert true
    && eqsmod (sext %v28 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                               sext [Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                               sext [Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [A98,A99,A9a,A9b,A9c,A9d,A9e,A9f]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff]) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl, precondition] && true;

assume [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 46 8 *)

cut eqmod %v28 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [A98,A99,A9a,A9b,A9c,A9d,A9e,A9f]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* ldr	q4, [x0, #16]                               #! EA = L0xffffffffc410; Value = 0x00000000ffff0000; PC = 0x41167c *)
mov %v4 [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e];
(* sub	v13.8h, v5.8h, v28.8h                       #! PC = 0x411680 *)
sub %v13 %v5 %v28;
(* mul	v20.8h, v12.8h, v0.h[3]                     #! PC = 0x411684 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v20 %v12 %mul; cast %v20@int16[8] %v20;
(* ldr	q6, [x0, #80]                               #! EA = L0xffffffffc450; Value = 0x00000000ffff0000; PC = 0x411688 *)
mov %v6 [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e];
(* sub	v15.8h, v7.8h, v29.8h                       #! PC = 0x41168c *)
sub %v15 %v7 %v29;
(* mul	v21.8h, v14.8h, v0.h[3]                     #! PC = 0x411690 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v21 %v14 %mul; cast %v21@int16[8] %v21;
(* ldr	q8, [x0, #144]                              #! EA = L0xffffffffc490; Value = 0x0001000100010000; PC = 0x411694 *)
mov %v8 [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e];
(* sub	v17.8h, v9.8h, v30.8h                       #! PC = 0x411698 *)
sub %v17 %v9 %v30;
(* mul	v22.8h, v16.8h, v0.h[3]                     #! PC = 0x41169c *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v22 %v16 %mul; cast %v22@int16[8] %v22;
(* ldr	q10, [x0, #208]                             #! EA = L0xffffffffc4d0; Value = 0x00010000ffff0000; PC = 0x4116a0 *)
mov %v10 [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de];
(* sub	v19.8h, v11.8h, v31.8h                      #! PC = 0x4116a4 *)
sub %v19 %v11 %v31;
(* mul	v23.8h, v18.8h, v0.h[3]                     #! PC = 0x4116a8 *)
broadcast %mul 8 [%v0[3]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x4116ac *)
add %v5 %v5 %v28;
(* sqrdmulh	v12.8h, v12.8h, v0.h[2]                #! PC = 0x4116b0 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v12 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v12 %LO11 %LO01;
(* add	v7.8h, v7.8h, v29.8h                        #! PC = 0x4116b4 *)
add %v7 %v7 %v29;
(* sqrdmulh	v14.8h, v14.8h, v0.h[2]                #! PC = 0x4116b8 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v14 %LO11 %LO01;
(* add	v9.8h, v9.8h, v30.8h                        #! PC = 0x4116bc *)
add %v9 %v9 %v30;
(* sqrdmulh	v16.8h, v16.8h, v0.h[2]                #! PC = 0x4116c0 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v16 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v11.8h, v11.8h, v31.8h                      #! PC = 0x4116c4 *)
add %v11 %v11 %v31;
(* sqrdmulh	v18.8h, v18.8h, v0.h[2]                #! PC = 0x4116c8 *)
broadcast %sqrdmulh 8 [%v0[2]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v12.8h, v0.h[0]                     #! PC = 0x4116cc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v12 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v14.8h, v0.h[0]                     #! PC = 0x4116d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v14 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v16.8h, v0.h[0]                     #! PC = 0x4116d4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x4116d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;

assert true
    && eqsmod (sext %v20 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32,
                               (-1600)@32,(-1600)@32,(-1600)@32,(-1600)@32] *
                              sext [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                   [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef]) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
       %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
       %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
       %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
       %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
       %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
       %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
       %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
       %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl, precondition] && true;
assume [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
       %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
       %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
       %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
       %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
       %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
       %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
       %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
       %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v5 /\
       %v5<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v7 /\
       %v7<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v9 /\
       %v9<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v11 /\
       %v11<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v13 /\
       %v13<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v15 /\
       %v15<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v17 /\
       %v17<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v19 /\
       %v19<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost F18@int16, F38@int16, F58@int16, F78@int16,
      F98@int16, Fb8@int16, Fd8@int16, Ff8@int16:
F18**2 = A18*X** 24 + A19*X** 25 + A1a*X** 26 + A1b*X** 27 + A1c*X** 28 +
         A1d*X** 29 + A1e*X** 30 + A1f*X** 31 /\
F38**2 = A38*X** 56 + A39*X** 57 + A3a*X** 58 + A3b*X** 59 + A3c*X** 60 +
         A3d*X** 61 + A3e*X** 62 + A3f*X** 63 /\
F58**2 = A58*X** 88 + A59*X** 89 + A5a*X** 90 + A5b*X** 91 + A5c*X** 92 +
         A5d*X** 93 + A5e*X** 94 + A5f*X** 95 /\
F78**2 = A78*X**120 + A79*X**121 + A7a*X**122 + A7b*X**123 + A7c*X**124 +
         A7d*X**125 + A7e*X**126 + A7f*X**127 /\
F98**2 = A98*X**152 + A99*X**153 + A9a*X**154 + A9b*X**155 + A9c*X**156 +
         A9d*X**157 + A9e*X**158 + A9f*X**159 /\
Fb8**2 = Ab8*X**184 + Ab9*X**185 + Aba*X**186 + Abb*X**187 + Abc*X**188 +
         Abd*X**189 + Abe*X**190 + Abf*X**191 /\
Fd8**2 = Ad8*X**216 + Ad9*X**217 + Ada*X**218 + Adb*X**219 + Adc*X**220 +
         Add*X**221 + Ade*X**222 + Adf*X**223 /\
Ff8**2 = Af8*X**248 + Af9*X**249 + Afa*X**250 + Afb*X**251 + Afc*X**252 +
         Afd*X**253 + Afe*X**254 + Aff*X**255 && true;
    
(* CUT 47 9 *)
cut eqmod (X**24 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],
                           %v5[4],%v5[5],%v5[6],%v5[7]])
          (F18**2 + F98**2) [Q, X**128 - (-1600)] /\
    eqmod (X**24 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],
                           %v13[4],%v13[5],%v13[6],%v13[7]])
          (F18**2 + F98**2) [Q, X**128 + (-1600)] /\
    eqmod (X**56 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],
                           %v7[4],%v7[5],%v7[6],%v7[7]])
          (F38**2 + Fb8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**56 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],
                           %v15[4],%v15[5],%v15[6],%v15[7]])
          (F38**2 + Fb8**2) [Q, X**128 + (-1600)] /\
    eqmod (X**88 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],
                           %v9[4],%v9[5],%v9[6],%v9[7]])
          (F58**2 + Fd8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**88 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],
                           %v17[4],%v17[5],%v17[6],%v17[7]])
          (F58**2 + Fd8**2) [Q, X**128 + (-1600)] /\
    eqmod (X**120* poly X [%v11[0],%v11[1],%v11[2],%v11[3],
                           %v11[4],%v11[5],%v11[6],%v11[7]])
          (F78**2 + Ff8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**120* poly X [%v19[0],%v19[1],%v19[2],%v19[3],
                           %v19[4],%v19[5],%v19[6],%v19[7]])
          (F78**2 + Ff8**2) [Q, X**128 + (-1600)] /\
    eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v5 /\
    %v5<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v7 /\
    %v7<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v9 /\
    %v9<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v11 /\
    %v11<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v13 /\
    %v13<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v15 /\
    %v15<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v17 /\
    %v17<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v19 /\
    %v19<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v5 /\
    %v5<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v7 /\
    %v7<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v9 /\
    %v9<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v11 /\
    %v11<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v13 /\
    %v13<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v15 /\
    %v15<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v17 /\
    %v17<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v19 /\
    %v19<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\ 
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];

(* CUT 48 9 *)
ecut eqmod (X**24 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],
                            %v5[4],%v5[5],%v5[6],%v5[7]])
           (F18**2 + F98**2) [Q, X**128 - (-1600)] /\
     eqmod (X**88 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],
                            %v9[4],%v9[5],%v9[6],%v9[7]])
           (F58**2 + Fd8**2) [Q, X**128 - (-1600)]
     prove with [cuts [47]];
(* CUT 49 9 *)
ecut eqmod (X**24 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],
                            %v13[4],%v13[5],%v13[6],%v13[7]])
           (F18**2 + F98**2) [Q, X**128 + (-1600)] /\
     eqmod (X**88 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],
                            %v17[4],%v17[5],%v17[6],%v17[7]])
           (F58**2 + Fd8**2) [Q, X**128 + (-1600)]
     prove with [cuts [47]];
(* CUT 50 9 *)
ecut eqmod (X**56 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],
                            %v7[4],%v7[5],%v7[6],%v7[7]])
           (F38**2 + Fb8**2) [Q, X**128 - (-1600)] /\
     eqmod (X**120* poly X [%v11[0],%v11[1],%v11[2],%v11[3],
                            %v11[4],%v11[5],%v11[6],%v11[7]])
           (F78**2 + Ff8**2) [Q, X**128 - (-1600)]
     prove with [cuts [47]];
(* CUT 51 9 *)
ecut eqmod (X**56 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],
                            %v15[4],%v15[5],%v15[6],%v15[7]])
           (F38**2 + Fb8**2) [Q, X**128 + (-1600)] /\
     eqmod (X**120* poly X [%v19[0],%v19[1],%v19[2],%v19[3],
                            %v19[4],%v19[5],%v19[6],%v19[7]])
           (F78**2 + Ff8**2) [Q, X**128 + (-1600)]
     prove with [cuts [47]];
(* CUT 52 9 *)
ecut eqmod %v20 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [A88,A89,A8a,A8b,A8c,A8d,A8e,A8f]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([-1600,-1600,-1600,-1600,-1600,-1600,-1600,-1600] *
                 [Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef]) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [47]];

ghost %v9o3@sint16[8], %v11o3@sint16[8],%v17o3@sint16[8],%v19o3@sint16[8] :
      %v9o3 = %v9 /\ %v11o3 = %v11 /\ %v17o3 = %v17 /\ %v19o3 = %v19
   && %v9o3 = %v9 /\ %v11o3 = %v11 /\ %v17o3 = %v17 /\ %v19o3 = %v19;

(* sub	v12.8h, v4.8h, v20.8h                       #! PC = 0x4116dc *)
sub %v12 %v4 %v20;
(* mul	v28.8h, v9.8h, v0.h[5]                      #! PC = 0x4116e0 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v28 %v9 %mul; cast %v28@int16[8] %v28;
(* sub	v14.8h, v6.8h, v21.8h                       #! PC = 0x4116e4 *)
sub %v14 %v6 %v21;
(* mul	v29.8h, v11.8h, v0.h[5]                     #! PC = 0x4116e8 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v29 %v11 %mul; cast %v29@int16[8] %v29;
(* sub	v16.8h, v8.8h, v22.8h                       #! PC = 0x4116ec *)
sub %v16 %v8 %v22;
(* mul	v30.8h, v17.8h, v0.h[7]                     #! PC = 0x4116f0 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v30 %v17 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v10.8h, v23.8h                      #! PC = 0x4116f4 *)
sub %v18 %v10 %v23;
(* mul	v31.8h, v19.8h, v0.h[7]                     #! PC = 0x4116f8 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x4116fc *)
add %v4 %v4 %v20;
(* sqrdmulh	v9.8h, v9.8h, v0.h[4]                  #! PC = 0x411700 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v9 %LO11 %LO01;
(* add	v6.8h, v6.8h, v21.8h                        #! PC = 0x411704 *)
add %v6 %v6 %v21;
(* sqrdmulh	v11.8h, v11.8h, v0.h[4]                #! PC = 0x411708 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* add	v8.8h, v8.8h, v22.8h                        #! PC = 0x41170c *)
add %v8 %v8 %v22;
(* sqrdmulh	v17.8h, v17.8h, v0.h[6]                #! PC = 0x411710 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v10.8h, v10.8h, v23.8h                      #! PC = 0x411714 *)
add %v10 %v10 %v23;
(* sqrdmulh	v19.8h, v19.8h, v0.h[6]                #! PC = 0x411718 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v9.8h, v0.h[0]                      #! PC = 0x41171c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v9 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v11.8h, v0.h[0]                     #! PC = 0x411720 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v17.8h, v0.h[0]                     #! PC = 0x411724 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411728 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;


assert true
    && eqsmod (sext %v28 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v9o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v11o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v17o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v19o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v9o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v11o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v17o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v19o3) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

ghost F08@int16,F28@int16,F48@int16,F68@int16,
      F88@int16,Fa8@int16,Fc8@int16,Fe8@int16:
F08**2 = A08*X**  8 + A09*X**  9 + A0a*X** 10 + A0b*X** 11 + A0c*X** 12 +
         A0d*X** 13 + A0e*X** 14 + A0f*X** 15 /\
F28**2 = A28*X** 40 + A29*X** 41 + A2a*X** 42 + A2b*X** 43 + A2c*X** 44 +
         A2d*X** 45 + A2e*X** 46 + A2f*X** 47 /\
F48**2 = A48*X** 72 + A49*X** 73 + A4a*X** 74 + A4b*X** 75 + A4c*X** 76 +
         A4d*X** 77 + A4e*X** 78 + A4f*X** 79 /\
F68**2 = A68*X**104 + A69*X**105 + A6a*X**106 + A6b*X**107 + A6c*X**108 +
         A6d*X**109 + A6e*X**110 + A6f*X**111 /\
F88**2 = A88*X**136 + A89*X**137 + A8a*X**138 + A8b*X**139 + A8c*X**140 +
         A8d*X**141 + A8e*X**142 + A8f*X**143 /\
Fa8**2 = Aa8*X**168 + Aa9*X**169 + Aaa*X**170 + Aab*X**171 + Aac*X**172 +
         Aad*X**173 + Aae*X**174 + Aaf*X**175 /\
Fc8**2 = Ac8*X**200 + Ac9*X**201 + Aca*X**202 + Acb*X**203 + Acc*X**204 +
         Acd*X**205 + Ace*X**206 + Acf*X**207 /\
Fe8**2 = Ae8*X**232 + Ae9*X**233 + Aea*X**234 + Aeb*X**235 + Aec*X**236 +
         Aed*X**237 + Aee*X**238 + Aef*X**239 && true;

assert [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
       %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
       %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
       %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
       %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
       %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
       %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
       %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
       %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31 < [Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver ppl, precondition] && true;
assume [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
       %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
       %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
       %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
       %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
       %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
       %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
       %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
       %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30 < [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31 < [Q,Q,Q,Q,Q,Q,Q,Q]
    &&
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v4 /\
       %v4<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v6 /\
       %v6<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v8 /\
       %v8<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v10 /\
       %v10<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v12 /\
       %v12<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v14 /\
       %v14<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v16 /\
       %v16<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v18 /\
       %v18<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 53 10 *)
cut eqmod (X** 8 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],
                           %v4[4],%v4[5],%v4[6],%v4[7]])
          (F08**2 + F88**2) [Q, X**128 - (-1600)] /\
    eqmod (X** 8 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],
                           %v12[4],%v12[5],%v12[6],%v12[7]])
          (F08**2 + F88**2) [Q, X**128 + (-1600)] /\
    eqmod (X**40 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],
                           %v6[4],%v6[5],%v6[6],%v6[7]])
          (F28**2 + Fa8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**40 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],
                           %v14[4],%v14[5],%v14[6],%v14[7]])
          (F28**2 + Fa8**2) [Q, X**128 + (-1600)] /\
    eqmod (X**72 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],
                           %v8[4],%v8[5],%v8[6],%v8[7]])
          (F48**2 + Fc8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**72 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],
                           %v16[4],%v16[5],%v16[6],%v16[7]])
          (F48**2 + Fc8**2) [Q, X**128 + (-1600)] /\
    eqmod (X**104 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],
                           %v10[4],%v10[5],%v10[6],%v10[7]])
          (F68**2 + Fe8**2) [Q, X**128 - (-1600)] /\
    eqmod (X**104 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],
                           %v18[4],%v18[5],%v18[6],%v18[7]])
          (F68**2 + Fe8**2) [Q, X**128 + (-1600)] /\
    eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v9o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v11o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v17o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v19o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v4 /\
    %v4<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v6 /\
    %v6<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v8 /\
    %v8<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v10 /\
    %v10<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v12 /\
    %v12<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v14 /\
    %v14<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v16 /\
    %v16<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<%v18 /\
    %v18<[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
 &&
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v4 /\
    %v4<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v6 /\
    %v6<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v8 /\
    %v8<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v10 /\
    %v10<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v12 /\
    %v12<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v14 /\
    %v14<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v16 /\
    %v16<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2]<s%v18 /\
    %v18<s[Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition];
(* CUT 54 10 *)
ecut eqmod (X** 8 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],
                            %v4[4],%v4[5],%v4[6],%v4[7]])
           (F08**2 + F88**2) [Q, X**128 - (-1600)] /\
     eqmod (X**72 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],
                            %v8[4],%v8[5],%v8[6],%v8[7]])
           (F48**2 + Fc8**2) [Q, X**128 - (-1600)]
     prove with [cuts [53]];
(* CUT 55 10 *)
ecut eqmod (X** 8 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],
                            %v12[4],%v12[5],%v12[6],%v12[7]])
           (F08**2 + F88**2) [Q, X**128 + (-1600)] /\
     eqmod (X**72 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],
                            %v16[4],%v16[5],%v16[6],%v16[7]])
           (F48**2 + Fc8**2) [Q, X**128 + (-1600)]
     prove with [cuts [53]];
(* CUT 56 10 *)
ecut eqmod (X**40 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],
                            %v6[4],%v6[5],%v6[6],%v6[7]])
           (F28**2 + Fa8**2) [Q, X**128 - (-1600)] /\
     eqmod (X**104 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],
                             %v10[4],%v10[5],%v10[6],%v10[7]])
           (F68**2 + Fe8**2) [Q, X**128 - (-1600)]
     prove with [cuts [53]];
(* CUT 57 10 *)
ecut eqmod (X**40 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],
                            %v14[4],%v14[5],%v14[6],%v14[7]])
           (F28**2 + Fa8**2) [Q, X**128 + (-1600)] /\
     eqmod (X**104 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],
                            %v18[4],%v18[5],%v18[6],%v18[7]])
           (F68**2 + Fe8**2) [Q, X**128 + (-1600)]
     prove with [cuts [53]];
(* CUT 58 10 *)
ecut eqmod %v28 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v9o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v29 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v11o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v30 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v17o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v31 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v19o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [53]];

ghost %v8o2@sint16[8], %v10o2@sint16[8],%v16o2@sint16[8],%v18o2@sint16[8] :
      %v8o2 = %v8 /\ %v10o2 = %v10 /\ %v16o2 = %v16 /\ %v18o2 = %v18
   && %v8o2 = %v8 /\ %v10o2 = %v10 /\ %v16o2 = %v16 /\ %v18o2 = %v18;

(* sub	v9.8h, v5.8h, v28.8h                        #! PC = 0x41172c *)
sub %v9 %v5 %v28;
(* mul	v20.8h, v8.8h, v0.h[5]                      #! PC = 0x411730 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v20 %v8 %mul; cast %v20@int16[8] %v20;
(* sub	v11.8h, v7.8h, v29.8h                       #! PC = 0x411734 *)
sub %v11 %v7 %v29;
(* mul	v21.8h, v10.8h, v0.h[5]                     #! PC = 0x411738 *)
broadcast %mul 8 [%v0[5]]; mull %mdc %v21 %v10 %mul; cast %v21@int16[8] %v21;
(* sub	v17.8h, v13.8h, v30.8h                      #! PC = 0x41173c *)
sub %v17 %v13 %v30;
(* mul	v22.8h, v16.8h, v0.h[7]                     #! PC = 0x411740 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v22 %v16 %mul; cast %v22@int16[8] %v22;
(* sub	v19.8h, v15.8h, v31.8h                      #! PC = 0x411744 *)
sub %v19 %v15 %v31;
(* mul	v23.8h, v18.8h, v0.h[7]                     #! PC = 0x411748 *)
broadcast %mul 8 [%v0[7]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x41174c *)
add %v5 %v5 %v28;
(* sqrdmulh	v8.8h, v8.8h, v0.h[4]                  #! PC = 0x411750 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v8 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v8 %LO11 %LO01;
(* add	v7.8h, v7.8h, v29.8h                        #! PC = 0x411754 *)
add %v7 %v7 %v29;
(* sqrdmulh	v10.8h, v10.8h, v0.h[4]                #! PC = 0x411758 *)
broadcast %sqrdmulh 8 [%v0[4]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v10 %LO11 %LO01;
(* add	v13.8h, v13.8h, v30.8h                      #! PC = 0x41175c *)
add %v13 %v13 %v30;
(* sqrdmulh	v16.8h, v16.8h, v0.h[6]                #! PC = 0x411760 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v16 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v16 %LO11 %LO01;
(* add	v15.8h, v15.8h, v31.8h                      #! PC = 0x411764 *)
add %v15 %v15 %v31;
(* sqrdmulh	v18.8h, v18.8h, v0.h[6]                #! PC = 0x411768 *)
broadcast %sqrdmulh 8 [%v0[6]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v8.8h, v0.h[0]                      #! PC = 0x41176c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v8 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v10.8h, v0.h[0]                     #! PC = 0x411770 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v10 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v16.8h, v0.h[0]                     #! PC = 0x411774 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x411778 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;




assert true
    && eqsmod (sext %v20 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v8o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-749)@32,(-749)@32,(-749)@32,(-749)@32,
                               (-749)@32,(-749)@32,(-749)@32,(-749)@32] *
                              sext %v10o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v16o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-40)@32,(-40)@32,(-40)@32,(-40)@32,
                               (-40)@32,(-40)@32,(-40)@32,(-40)@32] *
                              sext %v18o2 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v8o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                   %v10o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v16o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                   %v18o2) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [47]] && true;
assume
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v5
/\ %v5<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v7
/\ %v7<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v9
/\ %v9<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v11
/\ %v11<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v13
/\ %v13<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v15
/\ %v15<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v17
/\ %v17<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v19
/\ %v19<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* CUT 59 11 *)
cut eqmod (X**24 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
          (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [48], all ghosts],
    eqmod (X**24 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
          (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [48], all ghosts],
    eqmod (X**56 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
          (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [50], all ghosts],
    eqmod (X**56 * poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
          (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [50], all ghosts],
    eqmod (X**24 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
          (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [49], all ghosts],
    eqmod (X**24 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
          (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [49], all ghosts],
    eqmod (X**56 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
          (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [51], all ghosts],
    eqmod (X**56 * poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
          (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [51], all ghosts],
    eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v8o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                %v10o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v16o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                %v18o2) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v5
/\ %v5<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v7
/\ %v7<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v9
/\ %v9<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v11
/\ %v11<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v13
/\ %v13<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v15
/\ %v15<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v17
/\ %v17<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v19
/\ %v19<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v5
/\ %v5<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v7
/\ %v7<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v9
/\ %v9<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v11
/\ %v11<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v13
/\ %v13<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v15
/\ %v15<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v17
/\ %v17<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v19
/\ %v19<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [9]];
(* CUT 60 11 *)
ecut eqmod (X**24*poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
           (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**32] /\
     eqmod (X**56*poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
           (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**32]
     prove with [cuts [59]];
(* CUT 61 11 *)
ecut eqmod (X**24*poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
           (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**160] /\
     eqmod (X**56*poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
           (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**160]
     prove with [cuts [59]];
(* CUT 62 11 *)
ecut eqmod (X**24*poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
           (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**96] /\
     eqmod (X**56*poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
           (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**96]
     prove with [cuts [59]];
(* CUT 63 11 *)
ecut eqmod (X**24*poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
           (F18**2 + F58**2 + F98**2 + Fd8**2) [Q, X**64 - 17**224] /\
     eqmod (X**56*poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
           (F38**2 + F78**2 + Fb8**2 + Ff8**2) [Q, X**64 - 17**224]
     prove with [cuts [59]];
(* CUT 64 11 *)
ecut eqmod %v20 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v8o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([-749,-749,-749,-749,-749,-749,-749,-749] *
                 %v10o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v16o2) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([-40,-40,-40,-40,-40,-40,-40,-40] *
                 %v18o2) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [59]];

ghost %v7o4@sint16[8],%v11o4@sint16[8],%v15o4@sint16[8],%v19o4@sint16[8] :
      %v7o4 = %v7 /\ %v11o4 = %v11 /\ %v15o4 = %v15 /\ %v19o4 = %v19
   && %v7o4 = %v7 /\ %v11o4 = %v11 /\ %v15o4 = %v15 /\ %v19o4 = %v19;

(* sub	v8.8h, v4.8h, v20.8h                        #! PC = 0x41177c *)
sub %v8 %v4 %v20;
(* mul	v28.8h, v7.8h, v1.h[1]                      #! PC = 0x411780 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v28 %v7 %mul; cast %v28@int16[8] %v28;
(* sub	v10.8h, v6.8h, v21.8h                       #! PC = 0x411784 *)
sub %v10 %v6 %v21;
(* mul	v29.8h, v11.8h, v1.h[3]                     #! PC = 0x411788 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v29 %v11 %mul; cast %v29@int16[8] %v29;
(* sub	v16.8h, v12.8h, v22.8h                      #! PC = 0x41178c *)
sub %v16 %v12 %v22;
(* mul	v30.8h, v15.8h, v1.h[5]                     #! PC = 0x411790 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v30 %v15 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v14.8h, v23.8h                      #! PC = 0x411794 *)
sub %v18 %v14 %v23;
(* mul	v31.8h, v19.8h, v1.h[7]                     #! PC = 0x411798 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v31 %v19 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x41179c *)
add %v4 %v4 %v20;
(* sqrdmulh	v7.8h, v7.8h, v1.h[0]                  #! PC = 0x4117a0 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v7 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v7 %LO11 %LO01;
(* add	v6.8h, v6.8h, v21.8h                        #! PC = 0x4117a4 *)
add %v6 %v6 %v21;
(* sqrdmulh	v11.8h, v11.8h, v1.h[2]                #! PC = 0x4117a8 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* add	v12.8h, v12.8h, v22.8h                      #! PC = 0x4117ac *)
add %v12 %v12 %v22;
(* sqrdmulh	v15.8h, v15.8h, v1.h[4]                #! PC = 0x4117b0 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* add	v14.8h, v14.8h, v23.8h                      #! PC = 0x4117b4 *)
add %v14 %v14 %v23;
(* sqrdmulh	v19.8h, v19.8h, v1.h[6]                #! PC = 0x4117b8 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* mls	v28.8h, v7.8h, v0.h[0]                      #! PC = 0x4117bc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v7 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v11.8h, v0.h[0]                     #! PC = 0x4117c0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v15.8h, v0.h[0]                     #! PC = 0x4117c4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x4117c8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;



assert true
    && eqsmod (sext %v28 16) ([(-687)@32,(-687)@32,(-687)@32,(-687)@32,
                               (-687)@32,(-687)@32,(-687)@32,(-687)@32] *
                              sext %v7o4 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(630)@32,(630)@32,(630)@32,(630)@32,
                               (630)@32,(630)@32,(630)@32,(630)@32] *
                              sext %v11o4 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32,
                               (-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32] *
                              sext %v15o4 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(848)@32,(848)@32,(848)@32,(848)@32,
                               (848)@32,(848)@32,(848)@32,(848)@32] *
                              sext %v19o4 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                   %v7o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([630,630,630,630,630,630,630,630] *
                   %v11o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                   %v15o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([848,848,848,848,848,848,848,848] *
                   %v19o4) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [53]] && true;
assume
   [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v4
/\ %v4<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v6
/\ %v6<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v8
/\ %v8<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v10
/\ %v10<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v12
/\ %v12<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v14
/\ %v14<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v16
/\ %v16<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v18
/\ %v18<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 65 12 *)
cut eqmod (X**8 * poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
          (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [54], all ghosts],
    eqmod (X**8 * poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
          (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [54], all ghosts],
    eqmod (X**40 * poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
          (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**32]
    prove with [precondition, cuts [56], all ghosts],
    eqmod (X**40 * poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
          (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**160]
    prove with [precondition, cuts [56], all ghosts],
    eqmod (X**8 * poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
          (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [55], all ghosts],
    eqmod (X**8 * poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
          (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [55], all ghosts],
    eqmod (X**40 * poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
          (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**96]
    prove with [precondition, cuts [57], all ghosts],
    eqmod (X**40 * poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
          (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**224]
    prove with [precondition, cuts [57], all ghosts],
    eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                %v7o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v29 ([630,630,630,630,630,630,630,630] *
                %v11o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                %v15o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v31 ([848,848,848,848,848,848,848,848] *
                %v19o4) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v4
/\ %v4<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v6
/\ %v6<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v8
/\ %v8<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v10
/\ %v10<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v12
/\ %v12<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v14
/\ %v14<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v16
/\ %v16<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2]<%v18
/\ %v18<[2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v4
/\ %v4<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v6
/\ %v6<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v8
/\ %v8<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v10
/\ %v10<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v12
/\ %v12<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v14
/\ %v14<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v16
/\ %v16<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2,2@16*NQ+NQ2]<s%v18
/\ %v18<s[2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2,2@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [10]];
(* CUT 66 12 *)
ecut eqmod (X**8*poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
           (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**32] /\
     eqmod (X**40*poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
           (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**32]
     prove with [cuts [65]];
(* CUT 67 12 *)
ecut eqmod (X**8*poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
           (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**160] /\
     eqmod (X**40*poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
           (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**160]
     prove with [cuts [65]];
(* CUT 68 12 *)
ecut eqmod (X**8*poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
           (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**96] /\
     eqmod (X**40*poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
           (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**96]
     prove with [cuts [65]];
(* CUT 69 12 *)
ecut eqmod (X**8*poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
           (F08**2 + F48**2 + F88**2 + Fc8**2) [Q, X**64 - 17**224] /\
     eqmod (X**40*poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
           (F28**2 + F68**2 + Fa8**2 + Fe8**2) [Q, X**64 - 17**224]
     prove with [cuts [65]];
(* CUT 70 12 *)
ecut eqmod %v28 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                 %v7o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v29 ([630,630,630,630,630,630,630,630] *
                 %v11o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v30 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                 %v15o4) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v31 ([848,848,848,848,848,848,848,848] *
                 %v19o4) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [65]];

ghost %v6o3@sint16[8], %v10o3@sint16[8],%v14o3@sint16[8],%v18o3@sint16[8] :
      %v6o3 = %v6 /\ %v10o3 = %v10 /\ %v14o3 = %v14 /\ %v18o3 = %v18
   && %v6o3 = %v6 /\ %v10o3 = %v10 /\ %v14o3 = %v14 /\ %v18o3 = %v18;

(* sub	v7.8h, v5.8h, v28.8h                        #! PC = 0x4117cc *)
sub %v7 %v5 %v28;
(* mul	v20.8h, v6.8h, v1.h[1]                      #! PC = 0x4117d0 *)
broadcast %mul 8 [%v1[1]]; mull %mdc %v20 %v6 %mul; cast %v20@int16[8] %v20;
(* sub	v11.8h, v9.8h, v29.8h                       #! PC = 0x4117d4 *)
sub %v11 %v9 %v29;
(* mul	v21.8h, v10.8h, v1.h[3]                     #! PC = 0x4117d8 *)
broadcast %mul 8 [%v1[3]]; mull %mdc %v21 %v10 %mul; cast %v21@int16[8] %v21;
(* sub	v15.8h, v13.8h, v30.8h                      #! PC = 0x4117dc *)
sub %v15 %v13 %v30;
(* mul	v22.8h, v14.8h, v1.h[5]                     #! PC = 0x4117e0 *)
broadcast %mul 8 [%v1[5]]; mull %mdc %v22 %v14 %mul; cast %v22@int16[8] %v22;
(* sub	v19.8h, v17.8h, v31.8h                      #! PC = 0x4117e4 *)
sub %v19 %v17 %v31;
(* mul	v23.8h, v18.8h, v1.h[7]                     #! PC = 0x4117e8 *)
broadcast %mul 8 [%v1[7]]; mull %mdc %v23 %v18 %mul; cast %v23@int16[8] %v23;
(* add	v5.8h, v5.8h, v28.8h                        #! PC = 0x4117ec *)
add %v5 %v5 %v28;
(* sqrdmulh	v6.8h, v6.8h, v1.h[0]                  #! PC = 0x4117f0 *)
broadcast %sqrdmulh 8 [%v1[0]]; smulj %LO %v6 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v6 %LO11 %LO01;
(* add	v9.8h, v9.8h, v29.8h                        #! PC = 0x4117f4 *)
add %v9 %v9 %v29;
(* sqrdmulh	v10.8h, v10.8h, v1.h[2]                #! PC = 0x4117f8 *)
broadcast %sqrdmulh 8 [%v1[2]]; smulj %LO %v10 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v10 %LO11 %LO01;
(* add	v13.8h, v13.8h, v30.8h                      #! PC = 0x4117fc *)
add %v13 %v13 %v30;
(* sqrdmulh	v14.8h, v14.8h, v1.h[4]                #! PC = 0x411800 *)
broadcast %sqrdmulh 8 [%v1[4]]; smulj %LO %v14 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v14 %LO11 %LO01;
(* add	v17.8h, v17.8h, v31.8h                      #! PC = 0x411804 *)
add %v17 %v17 %v31;
(* sqrdmulh	v18.8h, v18.8h, v1.h[6]                #! PC = 0x411808 *)
broadcast %sqrdmulh 8 [%v1[6]]; smulj %LO %v18 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v18 %LO11 %LO01;
(* mls	v20.8h, v6.8h, v0.h[0]                      #! PC = 0x41180c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v6 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v10.8h, v0.h[0]                     #! PC = 0x411810 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v10 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v14.8h, v0.h[0]                     #! PC = 0x411814 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v14 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v18.8h, v0.h[0]                     #! PC = 0x411818 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;


assert true
    && eqsmod (sext %v20 16) ([(-687)@32,(-687)@32,(-687)@32,(-687)@32,
                               (-687)@32,(-687)@32,(-687)@32,(-687)@32] *
                              sext %v6o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(630)@32,(630)@32,(630)@32,(630)@32,
                               (630)@32,(630)@32,(630)@32,(630)@32] *
                              sext %v10o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32,
                               (-1432)@32,(-1432)@32,(-1432)@32,(-1432)@32] *
                              sext %v14o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(848)@32,(848)@32,(848)@32,(848)@32,
                               (848)@32,(848)@32,(848)@32,(848)@32] *
                              sext %v18o3 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                   %v6o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([630,630,630,630,630,630,630,630] *
                   %v10o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                   %v14o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([848,848,848,848,848,848,848,848] *
                   %v18o3) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [59]] && true;
assume
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v5
/\ %v5<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v7
/\ %v7<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v9
/\ %v9<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v11
/\ %v11<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v13
/\ %v13<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v15
/\ %v15<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v17
/\ %v17<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v19
/\ %v19<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* CUT 71 13 *)
cut eqmod (X**24 * poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**16] prove with [precondition, cuts [60], all ghosts],
    eqmod (X**24 * poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**144] prove with [precondition, cuts [60], all ghosts],
    eqmod (X**24 * poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**80] prove with [precondition, cuts [61], all ghosts],
    eqmod (X**24 * poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**208] prove with [precondition, cuts [61], all ghosts],
    eqmod (X**24 * poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**48] prove with [precondition, cuts [62], all ghosts],
    eqmod (X**24 * poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**176] prove with [precondition, cuts [62], all ghosts],
    eqmod (X**24 * poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**112] prove with [precondition, cuts [63], all ghosts],
    eqmod (X**24 * poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
          (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
          [Q, X**32 - 17**240] prove with [precondition, cuts [63], all ghosts],
    eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                %v6o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v21 ([630,630,630,630,630,630,630,630] *
                %v10o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                %v14o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v23 ([848,848,848,848,848,848,848,848] *
                %v18o3) [Q,Q,Q,Q,Q,Q,Q,Q]       
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v5
/\ %v5<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v7
/\ %v7<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v9
/\ %v9<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v11
/\ %v11<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v13
/\ %v13<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v15
/\ %v15<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v17
/\ %v17<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v19
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v5
/\ %v5<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v7
/\ %v7<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v9
/\ %v9<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v11
/\ %v11<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v13
/\ %v13<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v15
/\ %v15<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v17
/\ %v17<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v19
/\ %v19<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v20 /\ %v20<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v21 /\ %v21<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v22 /\ %v22<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v23 /\ %v23<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [11]];
(* CUT 72 13 *)
ecut eqmod (X**24*poly X [%v5[0],%v5[1],%v5[2],%v5[3],%v5[4],%v5[5],%v5[6],%v5[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**16] prove with [cuts [71]];
(* CUT 73 13 *)
ecut eqmod (X**24*poly X [%v7[0],%v7[1],%v7[2],%v7[3],%v7[4],%v7[5],%v7[6],%v7[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**144] prove with [cuts [71]];
(* CUT 74 13 *)
ecut eqmod (X**24*poly X [%v9[0],%v9[1],%v9[2],%v9[3],%v9[4],%v9[5],%v9[6],%v9[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**80] prove with [cuts [71]];
(* CUT 75 13 *)
ecut eqmod (X**24*poly X [%v11[0],%v11[1],%v11[2],%v11[3],%v11[4],%v11[5],%v11[6],%v11[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**208] prove with [cuts [71]];
(* CUT 76 13 *)
ecut eqmod (X**24*poly X [%v13[0],%v13[1],%v13[2],%v13[3],%v13[4],%v13[5],%v13[6],%v13[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**48] prove with [cuts [71]];
(* CUT 77 13 *)
ecut eqmod (X**24*poly X [%v15[0],%v15[1],%v15[2],%v15[3],%v15[4],%v15[5],%v15[6],%v15[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**176] prove with [cuts [71]];
(* CUT 78 13 *)
ecut eqmod (X**24*poly X [%v17[0],%v17[1],%v17[2],%v17[3],%v17[4],%v17[5],%v17[6],%v17[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**112] prove with [cuts [71]];
(* CUT 79 13 *)
ecut eqmod (X**24*poly X [%v19[0],%v19[1],%v19[2],%v19[3],%v19[4],%v19[5],%v19[6],%v19[7]])
           (F18**2+F38**2+F58**2+F78**2+F98**2+Fb8**2+Fd8**2+Ff8**2)
           [Q, X**32 - 17**240] prove with [cuts [71]];
(* CUT 80 13 *)
ecut eqmod %v20 ([-687,-687,-687,-687,-687,-687,-687,-687] *
                 %v6o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v21 ([630,630,630,630,630,630,630,630] *
                 %v10o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v22 ([-1432,-1432,-1432,-1432,-1432,-1432,-1432,-1432] *
                 %v14o3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
     eqmod %v23 ([848,848,848,848,848,848,848,848] *
                 %v18o3) [Q,Q,Q,Q,Q,Q,Q,Q]       
/\ %v19<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v20 /\ %v20<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v21 /\ %v21<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v22 /\ %v22<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v23 /\ %v23<[Q,Q,Q,Q,Q,Q,Q,Q]
 prove with [cuts [71]];

ghost %v5o5@sint16[8], %v7o5@sint16[8],%v9o5@sint16[8],%v11o5@sint16[8] :
      %v5o5 = %v5 /\ %v7o5 = %v7 /\ %v9o5 = %v9 /\ %v11o5 = %v11
   && %v5o5 = %v5 /\ %v7o5 = %v7 /\ %v9o5 = %v9 /\ %v11o5 = %v11;


(* sub	v6.8h, v4.8h, v20.8h                        #! PC = 0x41181c *)
sub %v6 %v4 %v20;
(* mul	v28.8h, v5.8h, v2.h[1]                      #! PC = 0x411820 *)
broadcast %mul 8 [%v2[1]]; mull %mdc %v28 %v5 %mul; cast %v28@int16[8] %v28;
(* sub	v10.8h, v8.8h, v21.8h                       #! PC = 0x411824 *)
sub %v10 %v8 %v21;
(* mul	v29.8h, v7.8h, v2.h[3]                      #! PC = 0x411828 *)
broadcast %mul 8 [%v2[3]]; mull %mdc %v29 %v7 %mul; cast %v29@int16[8] %v29;
(* sub	v14.8h, v12.8h, v22.8h                      #! PC = 0x41182c *)
sub %v14 %v12 %v22;
(* mul	v30.8h, v9.8h, v2.h[5]                      #! PC = 0x411830 *)
broadcast %mul 8 [%v2[5]]; mull %mdc %v30 %v9 %mul; cast %v30@int16[8] %v30;
(* sub	v18.8h, v16.8h, v23.8h                      #! PC = 0x411834 *)
sub %v18 %v16 %v23;
(* mul	v31.8h, v11.8h, v2.h[7]                     #! PC = 0x411838 *)
broadcast %mul 8 [%v2[7]]; mull %mdc %v31 %v11 %mul; cast %v31@int16[8] %v31;
(* add	v4.8h, v4.8h, v20.8h                        #! PC = 0x41183c *)
add %v4 %v4 %v20;
(* sqrdmulh	v5.8h, v5.8h, v2.h[0]                  #! PC = 0x411840 *)
broadcast %sqrdmulh 8 [%v2[0]]; smulj %LO %v5 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v5 %LO11 %LO01;
(* add	v8.8h, v8.8h, v21.8h                        #! PC = 0x411844 *)
add %v8 %v8 %v21;
(* sqrdmulh	v7.8h, v7.8h, v2.h[2]                  #! PC = 0x411848 *)
broadcast %sqrdmulh 8 [%v2[2]]; smulj %LO %v7 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v7 %LO11 %LO01;
(* add	v12.8h, v12.8h, v22.8h                      #! PC = 0x41184c *)
add %v12 %v12 %v22;
(* sqrdmulh	v9.8h, v9.8h, v2.h[4]                  #! PC = 0x411850 *)
broadcast %sqrdmulh 8 [%v2[4]]; smulj %LO %v9 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v9 %LO11 %LO01;
(* add	v16.8h, v16.8h, v23.8h                      #! PC = 0x411854 *)
add %v16 %v16 %v23;
(* sqrdmulh	v11.8h, v11.8h, v2.h[6]                #! PC = 0x411858 *)
broadcast %sqrdmulh 8 [%v2[6]]; smulj %LO %v11 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v11 %LO11 %LO01;
(* mls	v28.8h, v5.8h, v0.h[0]                      #! PC = 0x41185c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v5 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* mls	v29.8h, v7.8h, v0.h[0]                      #! PC = 0x411860 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v7 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* mls	v30.8h, v9.8h, v0.h[0]                      #! PC = 0x411864 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v9 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* mls	v31.8h, v11.8h, v0.h[0]                     #! PC = 0x411868 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v11 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;


assert true
    && eqsmod (sext %v28 16) ([(1062)@32,(1062)@32,(1062)@32,(1062)@32,
                               (1062)@32,(1062)@32,(1062)@32,(1062)@32] *
                              sext %v5o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v29 16) ([(-1410)@32,(-1410)@32,(-1410)@32,(-1410)@32,
                               (-1410)@32,(-1410)@32,(-1410)@32,(-1410)@32] *
                              sext %v7o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v30 16) ([(193)@32,(193)@32,(193)@32,(193)@32,
                               (193)@32,(193)@32,(193)@32,(193)@32] *
                              sext %v9o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v31 16) ([(797)@32,(797)@32,(797)@32,(797)@32,
                               (797)@32,(797)@32,(797)@32,(797)@32] *
                              sext %v11o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062] *
                   %v5o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410] *
                   %v7o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 ([193,193,193,193,193,193,193,193] *
                   %v9o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v31 ([797,797,797,797,797,797,797,797] *
                   %v11o5) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;

assert
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [algebra solver ppl, precondition, cuts [65]] && true;
assume
   [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    &&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v4
/\ %v4<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v6
/\ %v6<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v8
/\ %v8<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v10
/\ %v10<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v12
/\ %v12<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v14
/\ %v14<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v16
/\ %v16<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v18
/\ %v18<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 81 14 *)
cut eqmod (X**8*poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**16] prove with [precondition, cuts [66], all ghosts],
    eqmod (X**8*poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**144] prove with [precondition, cuts [66], all ghosts],
    eqmod (X**8*poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**80] prove with [precondition, cuts [67], all ghosts],
    eqmod (X**8*poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**208] prove with [precondition, cuts [67], all ghosts],
    eqmod (X**8*poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**48] prove with [precondition, cuts [68], all ghosts],
    eqmod (X**8*poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**176] prove with [precondition, cuts [68], all ghosts],
    eqmod (X**8*poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**112] prove with [precondition, cuts [69], all ghosts],
    eqmod (X**8*poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
          (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
          [Q, X**32 - 17**240] prove with [precondition, cuts [69], all ghosts],
    eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062]*%v5o5) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410]*%v7o5) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v30 ([193,193,193,193,193,193,193,193]*%v9o5) [Q,Q,Q,Q,Q,Q,Q,Q]
/\  eqmod %v31 ([797,797,797,797,797,797,797,797]*%v11o5) [Q,Q,Q,Q,Q,Q,Q,Q]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v4
/\ %v4<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v6
/\ %v6<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v8
/\ %v8<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v10
/\ %v10<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v12
/\ %v12<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v14
/\ %v14<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v16
/\ %v16<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2]<%v18
/\ %v18<[3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
   [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v4
/\ %v4<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v6
/\ %v6<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v8
/\ %v8<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v10
/\ %v10<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v12
/\ %v12<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v14
/\ %v14<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v16
/\ %v16<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2,3@16*NQ+NQ2]<s%v18
/\ %v18<s[3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2,3@16*Q+Q2]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q]
   prove with [precondition, cuts [12]];
(* CUT 82 14 *)
ecut eqmod (X**8*poly X [%v4[0],%v4[1],%v4[2],%v4[3],%v4[4],%v4[5],%v4[6],%v4[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**16] prove with [cuts [81]];
(* CUT 83 14 *)
ecut eqmod (X**8*poly X [%v6[0],%v6[1],%v6[2],%v6[3],%v6[4],%v6[5],%v6[6],%v6[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**144] prove with [cuts [81]];
(* CUT 84 14 *)
ecut eqmod (X**8*poly X [%v8[0],%v8[1],%v8[2],%v8[3],%v8[4],%v8[5],%v8[6],%v8[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**80] prove with [cuts [81]];
(* CUT 85 14 *)
ecut eqmod (X**8*poly X [%v10[0],%v10[1],%v10[2],%v10[3],%v10[4],%v10[5],%v10[6],%v10[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**208] prove with [cuts [81]];
(* CUT 86 14 *)
ecut eqmod (X**8*poly X [%v12[0],%v12[1],%v12[2],%v12[3],%v12[4],%v12[5],%v12[6],%v12[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**48] prove with [cuts [81]];
(* CUT 87 14 *)
ecut eqmod (X**8*poly X [%v14[0],%v14[1],%v14[2],%v14[3],%v14[4],%v14[5],%v14[6],%v14[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**176] prove with [cuts [81]];
(* CUT 88 14 *)
ecut eqmod (X**8*poly X [%v16[0],%v16[1],%v16[2],%v16[3],%v16[4],%v16[5],%v16[6],%v16[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**112] prove with [cuts [81]];
(* CUT 89 14 *)
ecut eqmod (X**8*poly X [%v18[0],%v18[1],%v18[2],%v18[3],%v18[4],%v18[5],%v18[6],%v18[7]])
           (F08**2+F28**2+F48**2+F68**2+F88**2+Fa8**2+Fc8**2+Fe8**2)
           [Q, X**32 - 17**240] prove with [cuts [81]];
(* CUT 90 14 *)
ecut eqmod %v28 ([1062,1062,1062,1062,1062,1062,1062,1062]*%v5o5) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v29 ([-1410,-1410,-1410,-1410,-1410,-1410,-1410,-1410]*%v7o5) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v30 ([193,193,193,193,193,193,193,193]*%v9o5) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ eqmod %v31 ([797,797,797,797,797,797,797,797]*%v11o5) [Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q]
  /\ [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
     prove with [cuts [81]];

ghost %v13o5@sint16[8], %v15o5@sint16[8],%v17o5@sint16[8],%v19o5@sint16[8] :
      %v13o5 = %v13 /\ %v15o5 = %v15 /\ %v17o5 = %v17 /\ %v19o5 = %v19
   && %v13o5 = %v13 /\ %v15o5 = %v15 /\ %v17o5 = %v17 /\ %v19o5 = %v19;

(* mul	v20.8h, v13.8h, v3.h[1]                     #! PC = 0x41186c *)
broadcast %mul 8 [%v3[1]]; mull %mdc %v20 %v13 %mul; cast %v20@int16[8] %v20;
(* sub	v5.8h, v4.8h, v28.8h                        #! PC = 0x411870 *)
sub %v5 %v4 %v28;
(* str	q5, [x0, #48]                               #! EA = L0xffffffffc430; PC = 0x411874 *)
mov [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e] %v5;
(* mul	v21.8h, v15.8h, v3.h[3]                     #! PC = 0x411878 *)
broadcast %mul 8 [%v3[3]]; mull %mdc %v21 %v15 %mul; cast %v21@int16[8] %v21;
(* sub	v7.8h, v6.8h, v29.8h                        #! PC = 0x41187c *)
sub %v7 %v6 %v29;
(* str	q7, [x0, #112]                              #! EA = L0xffffffffc470; PC = 0x411880 *)
mov [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e] %v7;
(* mul	v22.8h, v17.8h, v3.h[5]                     #! PC = 0x411884 *)
broadcast %mul 8 [%v3[5]]; mull %mdc %v22 %v17 %mul; cast %v22@int16[8] %v22;
(* sub	v9.8h, v8.8h, v30.8h                        #! PC = 0x411888 *)
sub %v9 %v8 %v30;
(* str	q9, [x0, #176]                              #! EA = L0xffffffffc4b0; PC = 0x41188c *)
mov [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] %v9;
(* mul	v23.8h, v19.8h, v3.h[7]                     #! PC = 0x411890 *)
broadcast %mul 8 [%v3[7]]; mull %mdc %v23 %v19 %mul; cast %v23@int16[8] %v23;
(* sub	v11.8h, v10.8h, v31.8h                      #! PC = 0x411894 *)
sub %v11 %v10 %v31;
(* str	q11, [x0, #240]                             #! EA = L0xffffffffc4f0; PC = 0x411898 *)
mov [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] %v11;
(* sqrdmulh	v13.8h, v13.8h, v3.h[0]                #! PC = 0x41189c *)
broadcast %sqrdmulh 8 [%v3[0]]; smulj %LO %v13 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v13 %LO11 %LO01;
(* add	v4.8h, v4.8h, v28.8h                        #! PC = 0x4118a0 *)
add %v4 %v4 %v28;
(* str	q4, [x0, #16]                               #! EA = L0xffffffffc410; PC = 0x4118a4 *)
mov [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e] %v4;
(* sqrdmulh	v15.8h, v15.8h, v3.h[2]                #! PC = 0x4118a8 *)
broadcast %sqrdmulh 8 [%v3[2]]; smulj %LO %v15 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v15 %LO11 %LO01;
(* add	v6.8h, v6.8h, v29.8h                        #! PC = 0x4118ac *)
add %v6 %v6 %v29;
(* str	q6, [x0, #80]                               #! EA = L0xffffffffc450; PC = 0x4118b0 *)
mov [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e] %v6;
(* sqrdmulh	v17.8h, v17.8h, v3.h[4]                #! PC = 0x4118b4 *)
broadcast %sqrdmulh 8 [%v3[4]]; smulj %LO %v17 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v17 %LO11 %LO01;
(* add	v8.8h, v8.8h, v30.8h                        #! PC = 0x4118b8 *)
add %v8 %v8 %v30;
(* str	q8, [x0, #144]                              #! EA = L0xffffffffc490; PC = 0x4118bc *)
mov [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e] %v8;
(* sqrdmulh	v19.8h, v19.8h, v3.h[6]                #! PC = 0x4118c0 *)
broadcast %sqrdmulh 8 [%v3[6]]; smulj %LO %v19 %sqrdmulh;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v19 %LO11 %LO01;
(* add	v10.8h, v10.8h, v31.8h                      #! PC = 0x4118c4 *)
add %v10 %v10 %v31;
(* str	q10, [x0, #208]                             #! EA = L0xffffffffc4d0; PC = 0x4118c8 *)
mov [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] %v10;
(* mls	v20.8h, v13.8h, v0.h[0]                     #! PC = 0x4118cc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v13 %mls;
cast %mls@int16[8] %mls; subc %mdc %v20 %v20 %mls;
(* mls	v21.8h, v15.8h, v0.h[0]                     #! PC = 0x4118d0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v15 %mls;
cast %mls@int16[8] %mls; subc %mdc %v21 %v21 %mls;
(* mls	v22.8h, v17.8h, v0.h[0]                     #! PC = 0x4118d4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v22 %v22 %mls;
(* mls	v23.8h, v19.8h, v0.h[0]                     #! PC = 0x4118d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v23 %v23 %mls;


assert true
    && eqsmod (sext %v20 16) ([(-543)@32,(-543)@32,(-543)@32,(-543)@32,
                               (-543)@32,(-543)@32,(-543)@32,(-543)@32] *
                              sext %v13o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v21 16) ([(-69)@32,(-69)@32,(-69)@32,(-69)@32,
                               (-69)@32,(-69)@32,(-69)@32,(-69)@32] *
                              sext %v15o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v22 16) ([(569)@32,(569)@32,(569)@32,(569)@32,
                               (569)@32,(569)@32,(569)@32,(569)@32] *
                              sext %v17o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16) /\
       eqsmod (sext %v23 16) ([(-1583)@32,(-1583)@32,(-1583)@32,(-1583)@32,
                               (-1583)@32,(-1583)@32,(-1583)@32,(-1583)@32] *
                              sext %v19o5 16)
              (sext [Q,Q,Q,Q,Q,Q,Q,Q] 16)
       prove with [precondition];

assume eqmod %v20 ([-543,-543,-543,-543,-543,-543,-543,-543] *
                   %v13o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v21 ([-69,-69,-69,-69,-69,-69,-69,-69] *
                   %v15o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v22 ([569,569,569,569,569,569,569,569] *
                   %v17o5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v23 ([-1583,-1583,-1583,-1583,-1583,-1583,-1583,-1583] *
                   %v19o5) [Q,Q,Q,Q,Q,Q,Q,Q]
    && true;



(* sub	v13.8h, v12.8h, v20.8h                      #! PC = 0x4118dc *)
sub %v13 %v12 %v20;
(* str	q13, [x0, #304]                             #! EA = L0xffffffffc530; PC = 0x4118e0 *)
mov [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] %v13;
(* sub	v15.8h, v14.8h, v21.8h                      #! PC = 0x4118e4 *)
sub %v15 %v14 %v21;
(* str	q15, [x0, #368]                             #! EA = L0xffffffffc570; PC = 0x4118e8 *)
mov [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] %v15;
(* sub	v17.8h, v16.8h, v22.8h                      #! PC = 0x4118ec *)
sub %v17 %v16 %v22;
(* str	q17, [x0, #432]                             #! EA = L0xffffffffc5b0; PC = 0x4118f0 *)
mov [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be] %v17;
(* sub	v19.8h, v18.8h, v23.8h                      #! PC = 0x4118f4 *)
sub %v19 %v18 %v23;
(* str	q19, [x0, #496]                             #! EA = L0xffffffffc5f0; PC = 0x4118f8 *)
mov [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe] %v19;
(* add	v12.8h, v12.8h, v20.8h                      #! PC = 0x4118fc *)
add %v12 %v12 %v20;
(* str	q12, [x0, #272]                             #! EA = L0xffffffffc510; PC = 0x411900 *)
mov [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] %v12;
(* add	v14.8h, v14.8h, v21.8h                      #! PC = 0x411904 *)
add %v14 %v14 %v21;
(* str	q14, [x0, #336]                             #! EA = L0xffffffffc550; PC = 0x411908 *)
mov [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] %v14;
(* add	v16.8h, v16.8h, v22.8h                      #! PC = 0x41190c *)
add %v16 %v16 %v22;
(* str	q16, [x0, #400]                             #! EA = L0xffffffffc590; PC = 0x411910 *)
mov [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] %v16;
(* add	v18.8h, v18.8h, v23.8h                      #! PC = 0x411914 *)
add %v18 %v18 %v23;
(* str	q18, [x0, #464]                             #! EA = L0xffffffffc5d0; PC = 0x411918 *)
mov [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de] %v18;


assert [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
       [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
       [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
       [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
       [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
       [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
       [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
       [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
       [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
       [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
       [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
       [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
       [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
       [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
       [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
       [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
       [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
       [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
       [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
       [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
       [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
       [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
       [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
       [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
       [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
       [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
       [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
       [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
       [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
       [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
       [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
       [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
       [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
       [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
       [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
       [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
       [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
       [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
       [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
       [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
       [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
       [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
       [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
       [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
       [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
       [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
       [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
       [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
       [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
       [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
       [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
       [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
       [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
       [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
       [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
       [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
       [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
       [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
       [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
       [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
       [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
       [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
       [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
       [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
       [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
       prove with [algebra solver ppl, precondition, cuts [81]] && true;
assume [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
       [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
       [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
       [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
       [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
       [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
       [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
       [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
       [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
       [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
       [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
       [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
       [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
       [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
       [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
       [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
       [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
       [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
       [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
       [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
       [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
       [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
       [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
       [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
       [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
       [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
       [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
       [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
       [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
       [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
       [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
       [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
       [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
       [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
       [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
       [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
       [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
       [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
       [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
       [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
       [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
       [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
       [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
       [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
       [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
       [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
       [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
       [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
       [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
       [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
       [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
       [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
       [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
       [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
       [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
       [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
       [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
       [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
       [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
       [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
       [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
       [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
       [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
       [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
       [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
       [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
    && [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc410, L0xffffffffc412] /\
       [L0xffffffffc410, L0xffffffffc412] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc414, L0xffffffffc416] /\
       [L0xffffffffc414, L0xffffffffc416] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc418, L0xffffffffc41a] /\
       [L0xffffffffc418, L0xffffffffc41a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc41c, L0xffffffffc41e] /\
       [L0xffffffffc41c, L0xffffffffc41e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc430, L0xffffffffc432] /\
       [L0xffffffffc430, L0xffffffffc432] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc434, L0xffffffffc436] /\
       [L0xffffffffc434, L0xffffffffc436] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc438, L0xffffffffc43a] /\
       [L0xffffffffc438, L0xffffffffc43a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc43c, L0xffffffffc43e] /\
       [L0xffffffffc43c, L0xffffffffc43e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc450, L0xffffffffc452] /\
       [L0xffffffffc450, L0xffffffffc452] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc454, L0xffffffffc456] /\
       [L0xffffffffc454, L0xffffffffc456] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc458, L0xffffffffc45a] /\
       [L0xffffffffc458, L0xffffffffc45a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc45c, L0xffffffffc45e] /\
       [L0xffffffffc45c, L0xffffffffc45e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc470, L0xffffffffc472] /\
       [L0xffffffffc470, L0xffffffffc472] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc474, L0xffffffffc476] /\
       [L0xffffffffc474, L0xffffffffc476] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc478, L0xffffffffc47a] /\
       [L0xffffffffc478, L0xffffffffc47a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc47c, L0xffffffffc47e] /\
       [L0xffffffffc47c, L0xffffffffc47e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc490, L0xffffffffc492] /\
       [L0xffffffffc490, L0xffffffffc492] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc494, L0xffffffffc496] /\
       [L0xffffffffc494, L0xffffffffc496] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc498, L0xffffffffc49a] /\
       [L0xffffffffc498, L0xffffffffc49a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc49c, L0xffffffffc49e] /\
       [L0xffffffffc49c, L0xffffffffc49e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b0, L0xffffffffc4b2] /\
       [L0xffffffffc4b0, L0xffffffffc4b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b4, L0xffffffffc4b6] /\
       [L0xffffffffc4b4, L0xffffffffc4b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b8, L0xffffffffc4ba] /\
       [L0xffffffffc4b8, L0xffffffffc4ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4bc, L0xffffffffc4be] /\
       [L0xffffffffc4bc, L0xffffffffc4be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d0, L0xffffffffc4d2] /\
       [L0xffffffffc4d0, L0xffffffffc4d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d4, L0xffffffffc4d6] /\
       [L0xffffffffc4d4, L0xffffffffc4d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d8, L0xffffffffc4da] /\
       [L0xffffffffc4d8, L0xffffffffc4da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4dc, L0xffffffffc4de] /\
       [L0xffffffffc4dc, L0xffffffffc4de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f0, L0xffffffffc4f2] /\
       [L0xffffffffc4f0, L0xffffffffc4f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f4, L0xffffffffc4f6] /\
       [L0xffffffffc4f4, L0xffffffffc4f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f8, L0xffffffffc4fa] /\
       [L0xffffffffc4f8, L0xffffffffc4fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4fc, L0xffffffffc4fe] /\
       [L0xffffffffc4fc, L0xffffffffc4fe] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc510, L0xffffffffc512] /\
       [L0xffffffffc510, L0xffffffffc512] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc514, L0xffffffffc516] /\
       [L0xffffffffc514, L0xffffffffc516] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc518, L0xffffffffc51a] /\
       [L0xffffffffc518, L0xffffffffc51a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc51c, L0xffffffffc51e] /\
       [L0xffffffffc51c, L0xffffffffc51e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc530, L0xffffffffc532] /\
       [L0xffffffffc530, L0xffffffffc532] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc534, L0xffffffffc536] /\
       [L0xffffffffc534, L0xffffffffc536] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc538, L0xffffffffc53a] /\
       [L0xffffffffc538, L0xffffffffc53a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc53c, L0xffffffffc53e] /\
       [L0xffffffffc53c, L0xffffffffc53e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc550, L0xffffffffc552] /\
       [L0xffffffffc550, L0xffffffffc552] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc554, L0xffffffffc556] /\
       [L0xffffffffc554, L0xffffffffc556] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc558, L0xffffffffc55a] /\
       [L0xffffffffc558, L0xffffffffc55a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc55c, L0xffffffffc55e] /\
       [L0xffffffffc55c, L0xffffffffc55e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc570, L0xffffffffc572] /\
       [L0xffffffffc570, L0xffffffffc572] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc574, L0xffffffffc576] /\
       [L0xffffffffc574, L0xffffffffc576] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc578, L0xffffffffc57a] /\
       [L0xffffffffc578, L0xffffffffc57a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc57c, L0xffffffffc57e] /\
       [L0xffffffffc57c, L0xffffffffc57e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc590, L0xffffffffc592] /\
       [L0xffffffffc590, L0xffffffffc592] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc594, L0xffffffffc596] /\
       [L0xffffffffc594, L0xffffffffc596] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc598, L0xffffffffc59a] /\
       [L0xffffffffc598, L0xffffffffc59a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc59c, L0xffffffffc59e] /\
       [L0xffffffffc59c, L0xffffffffc59e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b0, L0xffffffffc5b2] /\
       [L0xffffffffc5b0, L0xffffffffc5b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b4, L0xffffffffc5b6] /\
       [L0xffffffffc5b4, L0xffffffffc5b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b8, L0xffffffffc5ba] /\
       [L0xffffffffc5b8, L0xffffffffc5ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5bc, L0xffffffffc5be] /\
       [L0xffffffffc5bc, L0xffffffffc5be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d0, L0xffffffffc5d2] /\
       [L0xffffffffc5d0, L0xffffffffc5d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d4, L0xffffffffc5d6] /\
       [L0xffffffffc5d4, L0xffffffffc5d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d8, L0xffffffffc5da] /\
       [L0xffffffffc5d8, L0xffffffffc5da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5dc, L0xffffffffc5de] /\
       [L0xffffffffc5dc, L0xffffffffc5de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f0, L0xffffffffc5f2] /\
       [L0xffffffffc5f0, L0xffffffffc5f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f4, L0xffffffffc5f6] /\
       [L0xffffffffc5f4, L0xffffffffc5f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f8, L0xffffffffc5fa] /\
       [L0xffffffffc5f8, L0xffffffffc5fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
       [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5fc, L0xffffffffc5fe] /\
       [L0xffffffffc5fc, L0xffffffffc5fe] <s [4@16*Q+Q2, 4@16*Q+Q2];

(* CUT 91 15 *)

cut eqmod (X**8*
           poly X [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
                   L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**8] prove with [precondition, cuts [72,82], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
                   L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**136] prove with [precondition, cuts [72,82], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
                   L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**72] prove with [precondition, cuts [73,83], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
                   L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**200] prove with [precondition, cuts [73,83], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
                   L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**40] prove with [precondition, cuts [74,84], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
                   L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**168] prove with [precondition, cuts [74,84], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
                   L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**104] prove with [precondition, cuts [75,85], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
                   L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**232] prove with [precondition, cuts [75,85], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
                   L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**24] prove with [precondition, cuts [76,86], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
                   L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**152] prove with [precondition, cuts [76,86], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
                   L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**88] prove with [precondition, cuts [77,87], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
                   L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**216] prove with [precondition, cuts [77,87], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
                   L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**56] prove with [precondition, cuts [78,88], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,
                   L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**184] prove with [precondition, cuts [78,88], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,
                   L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**120] prove with [precondition, cuts [79,89], all ghosts],
    eqmod (X**8*
           poly X [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,
                   L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**248] prove with [precondition, cuts [79,89], all ghosts],
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
    [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
    [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
    [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
    [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
    [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
    [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
    [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
    [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
    [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
    [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
    [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
    [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
    [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
    [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
    [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
    [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
    [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
    [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
    [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
    [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
    [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
    [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
    [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
    [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
    [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
    [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
    [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
    [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
    [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
    [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
    [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
    [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
    [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
    [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
    [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
    [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
    [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
    [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
    [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
    [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
    [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
    [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
    [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
    [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
    [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
    [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
    [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
    [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
    [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
    [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
    [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
    [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
    [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
    [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
    [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
    [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
    [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
    [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
    [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
    [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
    [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
    [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
    [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
    [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
 && [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc410, L0xffffffffc412] /\
    [L0xffffffffc410, L0xffffffffc412] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc414, L0xffffffffc416] /\
    [L0xffffffffc414, L0xffffffffc416] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc418, L0xffffffffc41a] /\
    [L0xffffffffc418, L0xffffffffc41a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc41c, L0xffffffffc41e] /\
    [L0xffffffffc41c, L0xffffffffc41e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc430, L0xffffffffc432] /\
    [L0xffffffffc430, L0xffffffffc432] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc434, L0xffffffffc436] /\
    [L0xffffffffc434, L0xffffffffc436] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc438, L0xffffffffc43a] /\
    [L0xffffffffc438, L0xffffffffc43a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc43c, L0xffffffffc43e] /\
    [L0xffffffffc43c, L0xffffffffc43e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc450, L0xffffffffc452] /\
    [L0xffffffffc450, L0xffffffffc452] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc454, L0xffffffffc456] /\
    [L0xffffffffc454, L0xffffffffc456] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc458, L0xffffffffc45a] /\
    [L0xffffffffc458, L0xffffffffc45a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc45c, L0xffffffffc45e] /\
    [L0xffffffffc45c, L0xffffffffc45e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc470, L0xffffffffc472] /\
    [L0xffffffffc470, L0xffffffffc472] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc474, L0xffffffffc476] /\
    [L0xffffffffc474, L0xffffffffc476] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc478, L0xffffffffc47a] /\
    [L0xffffffffc478, L0xffffffffc47a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc47c, L0xffffffffc47e] /\
    [L0xffffffffc47c, L0xffffffffc47e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc490, L0xffffffffc492] /\
    [L0xffffffffc490, L0xffffffffc492] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc494, L0xffffffffc496] /\
    [L0xffffffffc494, L0xffffffffc496] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc498, L0xffffffffc49a] /\
    [L0xffffffffc498, L0xffffffffc49a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc49c, L0xffffffffc49e] /\
    [L0xffffffffc49c, L0xffffffffc49e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b0, L0xffffffffc4b2] /\
    [L0xffffffffc4b0, L0xffffffffc4b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b4, L0xffffffffc4b6] /\
    [L0xffffffffc4b4, L0xffffffffc4b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b8, L0xffffffffc4ba] /\
    [L0xffffffffc4b8, L0xffffffffc4ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4bc, L0xffffffffc4be] /\
    [L0xffffffffc4bc, L0xffffffffc4be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d0, L0xffffffffc4d2] /\
    [L0xffffffffc4d0, L0xffffffffc4d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d4, L0xffffffffc4d6] /\
    [L0xffffffffc4d4, L0xffffffffc4d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d8, L0xffffffffc4da] /\
    [L0xffffffffc4d8, L0xffffffffc4da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4dc, L0xffffffffc4de] /\
    [L0xffffffffc4dc, L0xffffffffc4de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f0, L0xffffffffc4f2] /\
    [L0xffffffffc4f0, L0xffffffffc4f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f4, L0xffffffffc4f6] /\
    [L0xffffffffc4f4, L0xffffffffc4f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f8, L0xffffffffc4fa] /\
    [L0xffffffffc4f8, L0xffffffffc4fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4fc, L0xffffffffc4fe] /\
    [L0xffffffffc4fc, L0xffffffffc4fe] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc510, L0xffffffffc512] /\
    [L0xffffffffc510, L0xffffffffc512] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc514, L0xffffffffc516] /\
    [L0xffffffffc514, L0xffffffffc516] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc518, L0xffffffffc51a] /\
    [L0xffffffffc518, L0xffffffffc51a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc51c, L0xffffffffc51e] /\
    [L0xffffffffc51c, L0xffffffffc51e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc530, L0xffffffffc532] /\
    [L0xffffffffc530, L0xffffffffc532] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc534, L0xffffffffc536] /\
    [L0xffffffffc534, L0xffffffffc536] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc538, L0xffffffffc53a] /\
    [L0xffffffffc538, L0xffffffffc53a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc53c, L0xffffffffc53e] /\
    [L0xffffffffc53c, L0xffffffffc53e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc550, L0xffffffffc552] /\
    [L0xffffffffc550, L0xffffffffc552] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc554, L0xffffffffc556] /\
    [L0xffffffffc554, L0xffffffffc556] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc558, L0xffffffffc55a] /\
    [L0xffffffffc558, L0xffffffffc55a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc55c, L0xffffffffc55e] /\
    [L0xffffffffc55c, L0xffffffffc55e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc570, L0xffffffffc572] /\
    [L0xffffffffc570, L0xffffffffc572] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc574, L0xffffffffc576] /\
    [L0xffffffffc574, L0xffffffffc576] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc578, L0xffffffffc57a] /\
    [L0xffffffffc578, L0xffffffffc57a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc57c, L0xffffffffc57e] /\
    [L0xffffffffc57c, L0xffffffffc57e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc590, L0xffffffffc592] /\
    [L0xffffffffc590, L0xffffffffc592] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc594, L0xffffffffc596] /\
    [L0xffffffffc594, L0xffffffffc596] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc598, L0xffffffffc59a] /\
    [L0xffffffffc598, L0xffffffffc59a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc59c, L0xffffffffc59e] /\
    [L0xffffffffc59c, L0xffffffffc59e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b0, L0xffffffffc5b2] /\
    [L0xffffffffc5b0, L0xffffffffc5b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b4, L0xffffffffc5b6] /\
    [L0xffffffffc5b4, L0xffffffffc5b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b8, L0xffffffffc5ba] /\
    [L0xffffffffc5b8, L0xffffffffc5ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5bc, L0xffffffffc5be] /\
    [L0xffffffffc5bc, L0xffffffffc5be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d0, L0xffffffffc5d2] /\
    [L0xffffffffc5d0, L0xffffffffc5d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d4, L0xffffffffc5d6] /\
    [L0xffffffffc5d4, L0xffffffffc5d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d8, L0xffffffffc5da] /\
    [L0xffffffffc5d8, L0xffffffffc5da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5dc, L0xffffffffc5de] /\
    [L0xffffffffc5dc, L0xffffffffc5de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f0, L0xffffffffc5f2] /\
    [L0xffffffffc5f0, L0xffffffffc5f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f4, L0xffffffffc5f6] /\
    [L0xffffffffc5f4, L0xffffffffc5f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f8, L0xffffffffc5fa] /\
    [L0xffffffffc5f8, L0xffffffffc5fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5fc, L0xffffffffc5fe] /\
    [L0xffffffffc5fc, L0xffffffffc5fe] <s [4@16*Q+Q2, 4@16*Q+Q2]
    prove with [precondition, cuts [13]];




(* ldp	d8, d9, [sp]                                #! EA = L0xffffffffb3e0; Value = 0x0000000000000000; PC = 0x41191c *)
mov %v8 [L0xffffffffb3e0,L0xffffffffb3e2,L0xffffffffb3e4,L0xffffffffb3e6]++%v8[4:8];
mov %v9 [L0xffffffffb3e8, L0xffffffffb3ea, L0xffffffffb3ec, L0xffffffffb3ee]++%v9[4:8];
(* ldp	d10, d11, [sp, #16]                         #! EA = L0xffffffffb3f0; Value = 0x0000000000000000; PC = 0x411920 *)
mov %v10 [L0xffffffffb3f0,L0xffffffffb3f2,L0xffffffffb3f4,L0xffffffffb3f6]++%v10[4:8];
mov %v11 [L0xffffffffb3f8, L0xffffffffb3fa, L0xffffffffb3fc, L0xffffffffb3fe]++%v11[4:8];
(* ldp	d12, d13, [sp, #32]                         #! EA = L0xffffffffb400; Value = 0x0000000000000000; PC = 0x411924 *)
mov %v12 [L0xffffffffb400,L0xffffffffb402,L0xffffffffb404,L0xffffffffb406]++%v12[4:8];
mov %v13 [L0xffffffffb408, L0xffffffffb40a, L0xffffffffb40c, L0xffffffffb40e]++%v13[4:8];
(* ldp	d14, d15, [sp, #48]                         #! EA = L0xffffffffb410; Value = 0x0000000000000000; PC = 0x411928 *)
mov %v14 [L0xffffffffb410,L0xffffffffb412,L0xffffffffb414,L0xffffffffb416]++%v14[4:8];
mov %v15 [L0xffffffffb418, L0xffffffffb41a, L0xffffffffb41c, L0xffffffffb41e]++%v15[4:8];
(* add	sp, sp, #0x40                               #! PC = 0x41192c *)
adds dc sp sp 0x40@uint32;
(* #! <- SP = 0xffffffffb420 *)
#! 0xffffffffb420 = 0xffffffffb420;
(* #ret                                            #! PC = 0x411930 *)
#ret                                            #! 0x411930 = 0x411930;

{
   eqmod (poly X [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
                  L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**8] /\
   eqmod (poly X [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
                  L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**136] /\
   eqmod (poly X [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
                  L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**72] /\
   eqmod (poly X [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
                  L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**200] /\
   eqmod (poly X [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
                  L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**40] /\
   eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
                  L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**168] /\
   eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
                  L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**104] /\
   eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
                  L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**232] /\
   eqmod (poly X [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
                  L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**24] /\
   eqmod (poly X [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
                  L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**152] /\
   eqmod (poly X [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
                  L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**88] /\
   eqmod (poly X [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
                  L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**216] /\
   eqmod (poly X [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
                  L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**56] /\
   eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,
                  L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**184] /\
   eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,
                  L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**120] /\
   eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,
                  L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**248] /\
   eqmod (X**8*
          poly X [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
                  L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**8] /\
   eqmod (X**8*
          poly X [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
                  L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**136] /\
   eqmod (X**8*
          poly X [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
                  L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**72] /\
   eqmod (X**8*
          poly X [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
                  L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**200] /\
   eqmod (X**8*
          poly X [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
                  L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**40] /\
   eqmod (X**8*
          poly X [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
                  L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**168] /\
   eqmod (X**8*
          poly X [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
                  L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**104] /\
   eqmod (X**8*
          poly X [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
                  L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**232] /\
   eqmod (X**8*
          poly X [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
                  L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**24] /\
   eqmod (X**8*
          poly X [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
                  L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**152] /\
   eqmod (X**8*
          poly X [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
                  L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**88] /\
   eqmod (X**8*
          poly X [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
                  L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**216] /\
   eqmod (X**8*
          poly X [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
                  L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**56] /\
   eqmod (X**8*
          poly X [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,
                  L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**184] /\
   eqmod (X**8*
          poly X [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,
                  L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**120] /\
   eqmod (X**8*
          poly X [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,
                  L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**248] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc400, L0xffffffffc402] /\
   [L0xffffffffc400, L0xffffffffc402] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc404, L0xffffffffc406] /\
   [L0xffffffffc404, L0xffffffffc406] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc408, L0xffffffffc40a] /\
   [L0xffffffffc408, L0xffffffffc40a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc40c, L0xffffffffc40e] /\
   [L0xffffffffc40c, L0xffffffffc40e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc420, L0xffffffffc422] /\
   [L0xffffffffc420, L0xffffffffc422] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc424, L0xffffffffc426] /\
   [L0xffffffffc424, L0xffffffffc426] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc428, L0xffffffffc42a] /\
   [L0xffffffffc428, L0xffffffffc42a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc42c, L0xffffffffc42e] /\
   [L0xffffffffc42c, L0xffffffffc42e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
   [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
   [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
   [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
   [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
   [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
   [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
   [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
   [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
   [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
   [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
   [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
   [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
   [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
   [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
   [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
   [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
   [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
   [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
   [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
   [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
   [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
   [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
   [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
   [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc500, L0xffffffffc502] /\
   [L0xffffffffc500, L0xffffffffc502] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc504, L0xffffffffc506] /\
   [L0xffffffffc504, L0xffffffffc506] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc508, L0xffffffffc50a] /\
   [L0xffffffffc508, L0xffffffffc50a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc50c, L0xffffffffc50e] /\
   [L0xffffffffc50c, L0xffffffffc50e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc520, L0xffffffffc522] /\
   [L0xffffffffc520, L0xffffffffc522] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc524, L0xffffffffc526] /\
   [L0xffffffffc524, L0xffffffffc526] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc528, L0xffffffffc52a] /\
   [L0xffffffffc528, L0xffffffffc52a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc52c, L0xffffffffc52e] /\
   [L0xffffffffc52c, L0xffffffffc52e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
   [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
   [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
   [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
   [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
   [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
   [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
   [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
   [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
   [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
   [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
   [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
   [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
   [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
   [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
   [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
   [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
   [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
   [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
   [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
   [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
   [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
   [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
   [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
   [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
   [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
   [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
   [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
   [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
   [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
   [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
   [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
   [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
   [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
   [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
   [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
   [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
   [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
   [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
   [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
   [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
   [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
   [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
   [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
   [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
   [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
   [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
   [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
   [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
   [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
   [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
   [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
   [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
   [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
   [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
   [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
   [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
   [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
   [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
   [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
   [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
   [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
   [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
   [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
   [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
   [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
   [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
   [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
   [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
   [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
   [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
   [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
   [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
   prove with [precondition, cuts [45]]
&& [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc400, L0xffffffffc402] /\
   [L0xffffffffc400, L0xffffffffc402] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc404, L0xffffffffc406] /\
   [L0xffffffffc404, L0xffffffffc406] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc408, L0xffffffffc40a] /\
   [L0xffffffffc408, L0xffffffffc40a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc40c, L0xffffffffc40e] /\
   [L0xffffffffc40c, L0xffffffffc40e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc420, L0xffffffffc422] /\
   [L0xffffffffc420, L0xffffffffc422] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc424, L0xffffffffc426] /\
   [L0xffffffffc424, L0xffffffffc426] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc428, L0xffffffffc42a] /\
   [L0xffffffffc428, L0xffffffffc42a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc42c, L0xffffffffc42e] /\
   [L0xffffffffc42c, L0xffffffffc42e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc440, L0xffffffffc442] /\
   [L0xffffffffc440, L0xffffffffc442] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc444, L0xffffffffc446] /\
   [L0xffffffffc444, L0xffffffffc446] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc448, L0xffffffffc44a] /\
   [L0xffffffffc448, L0xffffffffc44a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc44c, L0xffffffffc44e] /\
   [L0xffffffffc44c, L0xffffffffc44e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc460, L0xffffffffc462] /\
   [L0xffffffffc460, L0xffffffffc462] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc464, L0xffffffffc466] /\
   [L0xffffffffc464, L0xffffffffc466] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc468, L0xffffffffc46a] /\
   [L0xffffffffc468, L0xffffffffc46a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc46c, L0xffffffffc46e] /\
   [L0xffffffffc46c, L0xffffffffc46e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc480, L0xffffffffc482] /\
   [L0xffffffffc480, L0xffffffffc482] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc484, L0xffffffffc486] /\
   [L0xffffffffc484, L0xffffffffc486] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc488, L0xffffffffc48a] /\
   [L0xffffffffc488, L0xffffffffc48a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc48c, L0xffffffffc48e] /\
   [L0xffffffffc48c, L0xffffffffc48e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a0, L0xffffffffc4a2] /\
   [L0xffffffffc4a0, L0xffffffffc4a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a4, L0xffffffffc4a6] /\
   [L0xffffffffc4a4, L0xffffffffc4a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a8, L0xffffffffc4aa] /\
   [L0xffffffffc4a8, L0xffffffffc4aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ac, L0xffffffffc4ae] /\
   [L0xffffffffc4ac, L0xffffffffc4ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c0, L0xffffffffc4c2] /\
   [L0xffffffffc4c0, L0xffffffffc4c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c4, L0xffffffffc4c6] /\
   [L0xffffffffc4c4, L0xffffffffc4c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c8, L0xffffffffc4ca] /\
   [L0xffffffffc4c8, L0xffffffffc4ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4cc, L0xffffffffc4ce] /\
   [L0xffffffffc4cc, L0xffffffffc4ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e0, L0xffffffffc4e2] /\
   [L0xffffffffc4e0, L0xffffffffc4e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e4, L0xffffffffc4e6] /\
   [L0xffffffffc4e4, L0xffffffffc4e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e8, L0xffffffffc4ea] /\
   [L0xffffffffc4e8, L0xffffffffc4ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ec, L0xffffffffc4ee] /\
   [L0xffffffffc4ec, L0xffffffffc4ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc500, L0xffffffffc502] /\
   [L0xffffffffc500, L0xffffffffc502] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc504, L0xffffffffc506] /\
   [L0xffffffffc504, L0xffffffffc506] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc508, L0xffffffffc50a] /\
   [L0xffffffffc508, L0xffffffffc50a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc50c, L0xffffffffc50e] /\
   [L0xffffffffc50c, L0xffffffffc50e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc520, L0xffffffffc522] /\
   [L0xffffffffc520, L0xffffffffc522] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc524, L0xffffffffc526] /\
   [L0xffffffffc524, L0xffffffffc526] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc528, L0xffffffffc52a] /\
   [L0xffffffffc528, L0xffffffffc52a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc52c, L0xffffffffc52e] /\
   [L0xffffffffc52c, L0xffffffffc52e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc540, L0xffffffffc542] /\
   [L0xffffffffc540, L0xffffffffc542] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc544, L0xffffffffc546] /\
   [L0xffffffffc544, L0xffffffffc546] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc548, L0xffffffffc54a] /\
   [L0xffffffffc548, L0xffffffffc54a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc54c, L0xffffffffc54e] /\
   [L0xffffffffc54c, L0xffffffffc54e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc560, L0xffffffffc562] /\
   [L0xffffffffc560, L0xffffffffc562] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc564, L0xffffffffc566] /\
   [L0xffffffffc564, L0xffffffffc566] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc568, L0xffffffffc56a] /\
   [L0xffffffffc568, L0xffffffffc56a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc56c, L0xffffffffc56e] /\
   [L0xffffffffc56c, L0xffffffffc56e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc580, L0xffffffffc582] /\
   [L0xffffffffc580, L0xffffffffc582] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc584, L0xffffffffc586] /\
   [L0xffffffffc584, L0xffffffffc586] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc588, L0xffffffffc58a] /\
   [L0xffffffffc588, L0xffffffffc58a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc58c, L0xffffffffc58e] /\
   [L0xffffffffc58c, L0xffffffffc58e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a0, L0xffffffffc5a2] /\
   [L0xffffffffc5a0, L0xffffffffc5a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a4, L0xffffffffc5a6] /\
   [L0xffffffffc5a4, L0xffffffffc5a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a8, L0xffffffffc5aa] /\
   [L0xffffffffc5a8, L0xffffffffc5aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ac, L0xffffffffc5ae] /\
   [L0xffffffffc5ac, L0xffffffffc5ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c0, L0xffffffffc5c2] /\
   [L0xffffffffc5c0, L0xffffffffc5c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c4, L0xffffffffc5c6] /\
   [L0xffffffffc5c4, L0xffffffffc5c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c8, L0xffffffffc5ca] /\
   [L0xffffffffc5c8, L0xffffffffc5ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5cc, L0xffffffffc5ce] /\
   [L0xffffffffc5cc, L0xffffffffc5ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e0, L0xffffffffc5e2] /\
   [L0xffffffffc5e0, L0xffffffffc5e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e4, L0xffffffffc5e6] /\
   [L0xffffffffc5e4, L0xffffffffc5e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e8, L0xffffffffc5ea] /\
   [L0xffffffffc5e8, L0xffffffffc5ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ec, L0xffffffffc5ee] /\
   [L0xffffffffc5ec, L0xffffffffc5ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc450, L0xffffffffc452] /\
   [L0xffffffffc450, L0xffffffffc452] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc454, L0xffffffffc456] /\
   [L0xffffffffc454, L0xffffffffc456] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc458, L0xffffffffc45a] /\
   [L0xffffffffc458, L0xffffffffc45a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc45c, L0xffffffffc45e] /\
   [L0xffffffffc45c, L0xffffffffc45e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc470, L0xffffffffc472] /\
   [L0xffffffffc470, L0xffffffffc472] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc474, L0xffffffffc476] /\
   [L0xffffffffc474, L0xffffffffc476] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc478, L0xffffffffc47a] /\
   [L0xffffffffc478, L0xffffffffc47a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc47c, L0xffffffffc47e] /\
   [L0xffffffffc47c, L0xffffffffc47e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc490, L0xffffffffc492] /\
   [L0xffffffffc490, L0xffffffffc492] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc494, L0xffffffffc496] /\
   [L0xffffffffc494, L0xffffffffc496] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc498, L0xffffffffc49a] /\
   [L0xffffffffc498, L0xffffffffc49a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc49c, L0xffffffffc49e] /\
   [L0xffffffffc49c, L0xffffffffc49e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b0, L0xffffffffc4b2] /\
   [L0xffffffffc4b0, L0xffffffffc4b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b4, L0xffffffffc4b6] /\
   [L0xffffffffc4b4, L0xffffffffc4b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b8, L0xffffffffc4ba] /\
   [L0xffffffffc4b8, L0xffffffffc4ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4bc, L0xffffffffc4be] /\
   [L0xffffffffc4bc, L0xffffffffc4be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d0, L0xffffffffc4d2] /\
   [L0xffffffffc4d0, L0xffffffffc4d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d4, L0xffffffffc4d6] /\
   [L0xffffffffc4d4, L0xffffffffc4d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d8, L0xffffffffc4da] /\
   [L0xffffffffc4d8, L0xffffffffc4da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4dc, L0xffffffffc4de] /\
   [L0xffffffffc4dc, L0xffffffffc4de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f0, L0xffffffffc4f2] /\
   [L0xffffffffc4f0, L0xffffffffc4f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f4, L0xffffffffc4f6] /\
   [L0xffffffffc4f4, L0xffffffffc4f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f8, L0xffffffffc4fa] /\
   [L0xffffffffc4f8, L0xffffffffc4fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4fc, L0xffffffffc4fe] /\
   [L0xffffffffc4fc, L0xffffffffc4fe] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc550, L0xffffffffc552] /\
   [L0xffffffffc550, L0xffffffffc552] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc554, L0xffffffffc556] /\
   [L0xffffffffc554, L0xffffffffc556] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc558, L0xffffffffc55a] /\
   [L0xffffffffc558, L0xffffffffc55a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc55c, L0xffffffffc55e] /\
   [L0xffffffffc55c, L0xffffffffc55e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc570, L0xffffffffc572] /\
   [L0xffffffffc570, L0xffffffffc572] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc574, L0xffffffffc576] /\
   [L0xffffffffc574, L0xffffffffc576] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc578, L0xffffffffc57a] /\
   [L0xffffffffc578, L0xffffffffc57a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc57c, L0xffffffffc57e] /\
   [L0xffffffffc57c, L0xffffffffc57e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc590, L0xffffffffc592] /\
   [L0xffffffffc590, L0xffffffffc592] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc594, L0xffffffffc596] /\
   [L0xffffffffc594, L0xffffffffc596] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc598, L0xffffffffc59a] /\
   [L0xffffffffc598, L0xffffffffc59a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc59c, L0xffffffffc59e] /\
   [L0xffffffffc59c, L0xffffffffc59e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b0, L0xffffffffc5b2] /\
   [L0xffffffffc5b0, L0xffffffffc5b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b4, L0xffffffffc5b6] /\
   [L0xffffffffc5b4, L0xffffffffc5b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b8, L0xffffffffc5ba] /\
   [L0xffffffffc5b8, L0xffffffffc5ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5bc, L0xffffffffc5be] /\
   [L0xffffffffc5bc, L0xffffffffc5be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d0, L0xffffffffc5d2] /\
   [L0xffffffffc5d0, L0xffffffffc5d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d4, L0xffffffffc5d6] /\
   [L0xffffffffc5d4, L0xffffffffc5d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d8, L0xffffffffc5da] /\
   [L0xffffffffc5d8, L0xffffffffc5da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5dc, L0xffffffffc5de] /\
   [L0xffffffffc5dc, L0xffffffffc5de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f0, L0xffffffffc5f2] /\
   [L0xffffffffc5f0, L0xffffffffc5f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f4, L0xffffffffc5f6] /\
   [L0xffffffffc5f4, L0xffffffffc5f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f8, L0xffffffffc5fa] /\
   [L0xffffffffc5f8, L0xffffffffc5fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5fc, L0xffffffffc5fe] /\
   [L0xffffffffc5fc, L0xffffffffc5fe] <s [4@16*Q+Q2, 4@16*Q+Q2]
   prove with [precondition, cuts [7]]
}

