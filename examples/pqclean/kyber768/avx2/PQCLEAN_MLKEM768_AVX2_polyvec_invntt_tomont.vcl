(* popper: cv.exe -v -isafety -slicing -jobs 32 PQCLEAN_MLKEM768_AVX2_polyvec_invntt_tomont.vcl
Parsing CryptoLine file:                    [OK]            0.0637 seconds
Checking well-formedness:                   [OK]            0.0204 seconds

Procedure main
==============
Transforming to SSA form:                   [OK]            0.0167 seconds
Normalizing specification:                  [OK]            0.0154 seconds
Rewriting assignments:                      [OK]            0.0152 seconds
Verifying program safety:                   [OK]            311.2501 seconds
Verifying range assertions:                 [OK]            114.0399 seconds
Verifying range specification:              [OK]            437.0766 seconds
Rewriting value-preserved casting:          [OK]            0.0021 seconds
Verifying algebraic assertions:             [OK]            0.0088 seconds
Verifying algebraic specification:          [OK]            8.2026 seconds

Procedure Summary
-----------------
Procedure verification:                     [OK]            870.6374 seconds

Summary
=======
Verification result:                        [OK]            870.7217 seconds
*)
proc main (
int16 L0x7fffffffb180,int16 L0x7fffffffb182,int16 L0x7fffffffb184,
int16 L0x7fffffffb186,int16 L0x7fffffffb188,int16 L0x7fffffffb18a,
int16 L0x7fffffffb18c,int16 L0x7fffffffb18e,int16 L0x7fffffffb190,
int16 L0x7fffffffb192,int16 L0x7fffffffb194,int16 L0x7fffffffb196,
int16 L0x7fffffffb198,int16 L0x7fffffffb19a,int16 L0x7fffffffb19c,
int16 L0x7fffffffb19e,int16 L0x7fffffffb1a0,int16 L0x7fffffffb1a2,
int16 L0x7fffffffb1a4,int16 L0x7fffffffb1a6,int16 L0x7fffffffb1a8,
int16 L0x7fffffffb1aa,int16 L0x7fffffffb1ac,int16 L0x7fffffffb1ae,
int16 L0x7fffffffb1b0,int16 L0x7fffffffb1b2,int16 L0x7fffffffb1b4,
int16 L0x7fffffffb1b6,int16 L0x7fffffffb1b8,int16 L0x7fffffffb1ba,
int16 L0x7fffffffb1bc,int16 L0x7fffffffb1be,int16 L0x7fffffffb1c0,
int16 L0x7fffffffb1c2,int16 L0x7fffffffb1c4,int16 L0x7fffffffb1c6,
int16 L0x7fffffffb1c8,int16 L0x7fffffffb1ca,int16 L0x7fffffffb1cc,
int16 L0x7fffffffb1ce,int16 L0x7fffffffb1d0,int16 L0x7fffffffb1d2,
int16 L0x7fffffffb1d4,int16 L0x7fffffffb1d6,int16 L0x7fffffffb1d8,
int16 L0x7fffffffb1da,int16 L0x7fffffffb1dc,int16 L0x7fffffffb1de,
int16 L0x7fffffffb1e0,int16 L0x7fffffffb1e2,int16 L0x7fffffffb1e4,
int16 L0x7fffffffb1e6,int16 L0x7fffffffb1e8,int16 L0x7fffffffb1ea,
int16 L0x7fffffffb1ec,int16 L0x7fffffffb1ee,int16 L0x7fffffffb1f0,
int16 L0x7fffffffb1f2,int16 L0x7fffffffb1f4,int16 L0x7fffffffb1f6,
int16 L0x7fffffffb1f8,int16 L0x7fffffffb1fa,int16 L0x7fffffffb1fc,
int16 L0x7fffffffb1fe,int16 L0x7fffffffb200,int16 L0x7fffffffb202,
int16 L0x7fffffffb204,int16 L0x7fffffffb206,int16 L0x7fffffffb208,
int16 L0x7fffffffb20a,int16 L0x7fffffffb20c,int16 L0x7fffffffb20e,
int16 L0x7fffffffb210,int16 L0x7fffffffb212,int16 L0x7fffffffb214,
int16 L0x7fffffffb216,int16 L0x7fffffffb218,int16 L0x7fffffffb21a,
int16 L0x7fffffffb21c,int16 L0x7fffffffb21e,int16 L0x7fffffffb220,
int16 L0x7fffffffb222,int16 L0x7fffffffb224,int16 L0x7fffffffb226,
int16 L0x7fffffffb228,int16 L0x7fffffffb22a,int16 L0x7fffffffb22c,
int16 L0x7fffffffb22e,int16 L0x7fffffffb230,int16 L0x7fffffffb232,
int16 L0x7fffffffb234,int16 L0x7fffffffb236,int16 L0x7fffffffb238,
int16 L0x7fffffffb23a,int16 L0x7fffffffb23c,int16 L0x7fffffffb23e,
int16 L0x7fffffffb240,int16 L0x7fffffffb242,int16 L0x7fffffffb244,
int16 L0x7fffffffb246,int16 L0x7fffffffb248,int16 L0x7fffffffb24a,
int16 L0x7fffffffb24c,int16 L0x7fffffffb24e,int16 L0x7fffffffb250,
int16 L0x7fffffffb252,int16 L0x7fffffffb254,int16 L0x7fffffffb256,
int16 L0x7fffffffb258,int16 L0x7fffffffb25a,int16 L0x7fffffffb25c,
int16 L0x7fffffffb25e,int16 L0x7fffffffb260,int16 L0x7fffffffb262,
int16 L0x7fffffffb264,int16 L0x7fffffffb266,int16 L0x7fffffffb268,
int16 L0x7fffffffb26a,int16 L0x7fffffffb26c,int16 L0x7fffffffb26e,
int16 L0x7fffffffb270,int16 L0x7fffffffb272,int16 L0x7fffffffb274,
int16 L0x7fffffffb276,int16 L0x7fffffffb278,int16 L0x7fffffffb27a,
int16 L0x7fffffffb27c,int16 L0x7fffffffb27e,int16 L0x7fffffffb280,
int16 L0x7fffffffb282,int16 L0x7fffffffb284,int16 L0x7fffffffb286,
int16 L0x7fffffffb288,int16 L0x7fffffffb28a,int16 L0x7fffffffb28c,
int16 L0x7fffffffb28e,int16 L0x7fffffffb290,int16 L0x7fffffffb292,
int16 L0x7fffffffb294,int16 L0x7fffffffb296,int16 L0x7fffffffb298,
int16 L0x7fffffffb29a,int16 L0x7fffffffb29c,int16 L0x7fffffffb29e,
int16 L0x7fffffffb2a0,int16 L0x7fffffffb2a2,int16 L0x7fffffffb2a4,
int16 L0x7fffffffb2a6,int16 L0x7fffffffb2a8,int16 L0x7fffffffb2aa,
int16 L0x7fffffffb2ac,int16 L0x7fffffffb2ae,int16 L0x7fffffffb2b0,
int16 L0x7fffffffb2b2,int16 L0x7fffffffb2b4,int16 L0x7fffffffb2b6,
int16 L0x7fffffffb2b8,int16 L0x7fffffffb2ba,int16 L0x7fffffffb2bc,
int16 L0x7fffffffb2be,int16 L0x7fffffffb2c0,int16 L0x7fffffffb2c2,
int16 L0x7fffffffb2c4,int16 L0x7fffffffb2c6,int16 L0x7fffffffb2c8,
int16 L0x7fffffffb2ca,int16 L0x7fffffffb2cc,int16 L0x7fffffffb2ce,
int16 L0x7fffffffb2d0,int16 L0x7fffffffb2d2,int16 L0x7fffffffb2d4,
int16 L0x7fffffffb2d6,int16 L0x7fffffffb2d8,int16 L0x7fffffffb2da,
int16 L0x7fffffffb2dc,int16 L0x7fffffffb2de,int16 L0x7fffffffb2e0,
int16 L0x7fffffffb2e2,int16 L0x7fffffffb2e4,int16 L0x7fffffffb2e6,
int16 L0x7fffffffb2e8,int16 L0x7fffffffb2ea,int16 L0x7fffffffb2ec,
int16 L0x7fffffffb2ee,int16 L0x7fffffffb2f0,int16 L0x7fffffffb2f2,
int16 L0x7fffffffb2f4,int16 L0x7fffffffb2f6,int16 L0x7fffffffb2f8,
int16 L0x7fffffffb2fa,int16 L0x7fffffffb2fc,int16 L0x7fffffffb2fe,
int16 L0x7fffffffb300,int16 L0x7fffffffb302,int16 L0x7fffffffb304,
int16 L0x7fffffffb306,int16 L0x7fffffffb308,int16 L0x7fffffffb30a,
int16 L0x7fffffffb30c,int16 L0x7fffffffb30e,int16 L0x7fffffffb310,
int16 L0x7fffffffb312,int16 L0x7fffffffb314,int16 L0x7fffffffb316,
int16 L0x7fffffffb318,int16 L0x7fffffffb31a,int16 L0x7fffffffb31c,
int16 L0x7fffffffb31e,int16 L0x7fffffffb320,int16 L0x7fffffffb322,
int16 L0x7fffffffb324,int16 L0x7fffffffb326,int16 L0x7fffffffb328,
int16 L0x7fffffffb32a,int16 L0x7fffffffb32c,int16 L0x7fffffffb32e,
int16 L0x7fffffffb330,int16 L0x7fffffffb332,int16 L0x7fffffffb334,
int16 L0x7fffffffb336,int16 L0x7fffffffb338,int16 L0x7fffffffb33a,
int16 L0x7fffffffb33c,int16 L0x7fffffffb33e,int16 L0x7fffffffb340,
int16 L0x7fffffffb342,int16 L0x7fffffffb344,int16 L0x7fffffffb346,
int16 L0x7fffffffb348,int16 L0x7fffffffb34a,int16 L0x7fffffffb34c,
int16 L0x7fffffffb34e,int16 L0x7fffffffb350,int16 L0x7fffffffb352,
int16 L0x7fffffffb354,int16 L0x7fffffffb356,int16 L0x7fffffffb358,
int16 L0x7fffffffb35a,int16 L0x7fffffffb35c,int16 L0x7fffffffb35e,
int16 L0x7fffffffb360,int16 L0x7fffffffb362,int16 L0x7fffffffb364,
int16 L0x7fffffffb366,int16 L0x7fffffffb368,int16 L0x7fffffffb36a,
int16 L0x7fffffffb36c,int16 L0x7fffffffb36e,int16 L0x7fffffffb370,
int16 L0x7fffffffb372,int16 L0x7fffffffb374,int16 L0x7fffffffb376,
int16 L0x7fffffffb378,int16 L0x7fffffffb37a,int16 L0x7fffffffb37c,
int16 L0x7fffffffb37e,
int16 Q, int16 NQ, int16 Q2, int16 NQ2, int16 F, int16 X
) =
{
   Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
   eqmod (F**2) (poly X [L0x7fffffffb180,L0x7fffffffb1a0])
         [Q, X**2 - 17**  1] /\
   eqmod (F**2) (poly X [L0x7fffffffb1c0,L0x7fffffffb1e0])
         [Q, X**2 - 17**129] /\
   eqmod (F**2) (poly X [L0x7fffffffb200,L0x7fffffffb220])
         [Q, X**2 - 17** 65] /\
   eqmod (F**2) (poly X [L0x7fffffffb240,L0x7fffffffb260])
         [Q, X**2 - 17**193] /\
   eqmod (F**2) (poly X [L0x7fffffffb182,L0x7fffffffb1a2])
         [Q, X**2 - 17** 33] /\
   eqmod (F**2) (poly X [L0x7fffffffb1c2,L0x7fffffffb1e2])
         [Q, X**2 - 17**161] /\
   eqmod (F**2) (poly X [L0x7fffffffb202,L0x7fffffffb222])
         [Q, X**2 - 17** 97] /\
   eqmod (F**2) (poly X [L0x7fffffffb242,L0x7fffffffb262])
         [Q, X**2 - 17**225] /\
   eqmod (F**2) (poly X [L0x7fffffffb184,L0x7fffffffb1a4])
         [Q, X**2 - 17** 17] /\
   eqmod (F**2) (poly X [L0x7fffffffb1c4,L0x7fffffffb1e4])
         [Q, X**2 - 17**145] /\
   eqmod (F**2) (poly X [L0x7fffffffb204,L0x7fffffffb224])
         [Q, X**2 - 17** 81] /\
   eqmod (F**2) (poly X [L0x7fffffffb244,L0x7fffffffb264])
         [Q, X**2 - 17**209] /\
   eqmod (F**2) (poly X [L0x7fffffffb186,L0x7fffffffb1a6])
         [Q, X**2 - 17** 49] /\
   eqmod (F**2) (poly X [L0x7fffffffb1c6,L0x7fffffffb1e6])
         [Q, X**2 - 17**177] /\
   eqmod (F**2) (poly X [L0x7fffffffb206,L0x7fffffffb226])
         [Q, X**2 - 17**113] /\
   eqmod (F**2) (poly X [L0x7fffffffb246,L0x7fffffffb266])
         [Q, X**2 - 17**241] /\
   eqmod (F**2) (poly X [L0x7fffffffb188,L0x7fffffffb1a8])
         [Q, X**2 - 17**  9] /\
   eqmod (F**2) (poly X [L0x7fffffffb1c8,L0x7fffffffb1e8])
         [Q, X**2 - 17**137] /\
   eqmod (F**2) (poly X [L0x7fffffffb208,L0x7fffffffb228])
         [Q, X**2 - 17** 73] /\
   eqmod (F**2) (poly X [L0x7fffffffb248,L0x7fffffffb268])
         [Q, X**2 - 17**201] /\
   eqmod (F**2) (poly X [L0x7fffffffb18a,L0x7fffffffb1aa])
         [Q, X**2 - 17** 41] /\
   eqmod (F**2) (poly X [L0x7fffffffb1ca,L0x7fffffffb1ea])
         [Q, X**2 - 17**169] /\
   eqmod (F**2) (poly X [L0x7fffffffb20a,L0x7fffffffb22a])
         [Q, X**2 - 17**105] /\
   eqmod (F**2) (poly X [L0x7fffffffb24a,L0x7fffffffb26a])
         [Q, X**2 - 17**233] /\
   eqmod (F**2) (poly X [L0x7fffffffb18c,L0x7fffffffb1ac])
         [Q, X**2 - 17** 25] /\
   eqmod (F**2) (poly X [L0x7fffffffb1cc,L0x7fffffffb1ec])
         [Q, X**2 - 17**153] /\
   eqmod (F**2) (poly X [L0x7fffffffb20c,L0x7fffffffb22c])
         [Q, X**2 - 17** 89] /\
   eqmod (F**2) (poly X [L0x7fffffffb24c,L0x7fffffffb26c])
         [Q, X**2 - 17**217] /\
   eqmod (F**2) (poly X [L0x7fffffffb18e,L0x7fffffffb1ae])
         [Q, X**2 - 17** 57] /\
   eqmod (F**2) (poly X [L0x7fffffffb1ce,L0x7fffffffb1ee])
         [Q, X**2 - 17**185] /\
   eqmod (F**2) (poly X [L0x7fffffffb20e,L0x7fffffffb22e])
         [Q, X**2 - 17**121] /\
   eqmod (F**2) (poly X [L0x7fffffffb24e,L0x7fffffffb26e])
         [Q, X**2 - 17**249] /\
   eqmod (F**2) (poly X [L0x7fffffffb190,L0x7fffffffb1b0])
         [Q, X**2 - 17**  5] /\
   eqmod (F**2) (poly X [L0x7fffffffb1d0,L0x7fffffffb1f0])
         [Q, X**2 - 17**133] /\
   eqmod (F**2) (poly X [L0x7fffffffb210,L0x7fffffffb230])
         [Q, X**2 - 17** 69] /\
   eqmod (F**2) (poly X [L0x7fffffffb250,L0x7fffffffb270])
         [Q, X**2 - 17**197] /\
   eqmod (F**2) (poly X [L0x7fffffffb192,L0x7fffffffb1b2])
         [Q, X**2 - 17** 37] /\
   eqmod (F**2) (poly X [L0x7fffffffb1d2,L0x7fffffffb1f2])
         [Q, X**2 - 17**165] /\
   eqmod (F**2) (poly X [L0x7fffffffb212,L0x7fffffffb232])
         [Q, X**2 - 17**101] /\
   eqmod (F**2) (poly X [L0x7fffffffb252,L0x7fffffffb272])
         [Q, X**2 - 17**229] /\
   eqmod (F**2) (poly X [L0x7fffffffb194,L0x7fffffffb1b4])
         [Q, X**2 - 17** 21] /\
   eqmod (F**2) (poly X [L0x7fffffffb1d4,L0x7fffffffb1f4])
         [Q, X**2 - 17**149] /\
   eqmod (F**2) (poly X [L0x7fffffffb214,L0x7fffffffb234])
         [Q, X**2 - 17** 85] /\
   eqmod (F**2) (poly X [L0x7fffffffb254,L0x7fffffffb274])
         [Q, X**2 - 17**213] /\
   eqmod (F**2) (poly X [L0x7fffffffb196,L0x7fffffffb1b6])
         [Q, X**2 - 17** 53] /\
   eqmod (F**2) (poly X [L0x7fffffffb1d6,L0x7fffffffb1f6])
         [Q, X**2 - 17**181] /\
   eqmod (F**2) (poly X [L0x7fffffffb216,L0x7fffffffb236])
         [Q, X**2 - 17**117] /\
   eqmod (F**2) (poly X [L0x7fffffffb256,L0x7fffffffb276])
         [Q, X**2 - 17**245] /\
   eqmod (F**2) (poly X [L0x7fffffffb198,L0x7fffffffb1b8])
         [Q, X**2 - 17** 13] /\
   eqmod (F**2) (poly X [L0x7fffffffb1d8,L0x7fffffffb1f8])
         [Q, X**2 - 17**141] /\
   eqmod (F**2) (poly X [L0x7fffffffb218,L0x7fffffffb238])
         [Q, X**2 - 17** 77] /\
   eqmod (F**2) (poly X [L0x7fffffffb258,L0x7fffffffb278])
         [Q, X**2 - 17**205] /\
   eqmod (F**2) (poly X [L0x7fffffffb19a,L0x7fffffffb1ba])
         [Q, X**2 - 17** 45] /\
   eqmod (F**2) (poly X [L0x7fffffffb1da,L0x7fffffffb1fa])
         [Q, X**2 - 17**173] /\
   eqmod (F**2) (poly X [L0x7fffffffb21a,L0x7fffffffb23a])
         [Q, X**2 - 17**109] /\
   eqmod (F**2) (poly X [L0x7fffffffb25a,L0x7fffffffb27a])
         [Q, X**2 - 17**237] /\
   eqmod (F**2) (poly X [L0x7fffffffb19c,L0x7fffffffb1bc])
         [Q, X**2 - 17** 29] /\
   eqmod (F**2) (poly X [L0x7fffffffb1dc,L0x7fffffffb1fc])
         [Q, X**2 - 17**157] /\
   eqmod (F**2) (poly X [L0x7fffffffb21c,L0x7fffffffb23c])
         [Q, X**2 - 17** 93] /\
   eqmod (F**2) (poly X [L0x7fffffffb25c,L0x7fffffffb27c])
         [Q, X**2 - 17**221] /\
   eqmod (F**2) (poly X [L0x7fffffffb19e,L0x7fffffffb1be])
         [Q, X**2 - 17** 61] /\
   eqmod (F**2) (poly X [L0x7fffffffb1de,L0x7fffffffb1fe])
         [Q, X**2 - 17**189] /\
   eqmod (F**2) (poly X [L0x7fffffffb21e,L0x7fffffffb23e])
         [Q, X**2 - 17**125] /\
   eqmod (F**2) (poly X [L0x7fffffffb25e,L0x7fffffffb27e])
         [Q, X**2 - 17**253] /\
   eqmod (F**2) (poly X [L0x7fffffffb280,L0x7fffffffb2a0])
         [Q, X**2 - 17**  3] /\
   eqmod (F**2) (poly X [L0x7fffffffb2c0,L0x7fffffffb2e0])
         [Q, X**2 - 17**131] /\
   eqmod (F**2) (poly X [L0x7fffffffb300,L0x7fffffffb320])
         [Q, X**2 - 17** 67] /\
   eqmod (F**2) (poly X [L0x7fffffffb340,L0x7fffffffb360])
         [Q, X**2 - 17**195] /\
   eqmod (F**2) (poly X [L0x7fffffffb282,L0x7fffffffb2a2])
         [Q, X**2 - 17** 35] /\
   eqmod (F**2) (poly X [L0x7fffffffb2c2,L0x7fffffffb2e2])
         [Q, X**2 - 17**163] /\
   eqmod (F**2) (poly X [L0x7fffffffb302,L0x7fffffffb322])
         [Q, X**2 - 17** 99] /\
   eqmod (F**2) (poly X [L0x7fffffffb342,L0x7fffffffb362])
         [Q, X**2 - 17**227] /\
   eqmod (F**2) (poly X [L0x7fffffffb284,L0x7fffffffb2a4])
         [Q, X**2 - 17** 19] /\
   eqmod (F**2) (poly X [L0x7fffffffb2c4,L0x7fffffffb2e4])
         [Q, X**2 - 17**147] /\
   eqmod (F**2) (poly X [L0x7fffffffb304,L0x7fffffffb324])
         [Q, X**2 - 17** 83] /\
   eqmod (F**2) (poly X [L0x7fffffffb344,L0x7fffffffb364])
         [Q, X**2 - 17**211] /\
   eqmod (F**2) (poly X [L0x7fffffffb286,L0x7fffffffb2a6])
         [Q, X**2 - 17** 51] /\
   eqmod (F**2) (poly X [L0x7fffffffb2c6,L0x7fffffffb2e6])
         [Q, X**2 - 17**179] /\
   eqmod (F**2) (poly X [L0x7fffffffb306,L0x7fffffffb326])
         [Q, X**2 - 17**115] /\
   eqmod (F**2) (poly X [L0x7fffffffb346,L0x7fffffffb366])
         [Q, X**2 - 17**243] /\
   eqmod (F**2) (poly X [L0x7fffffffb288,L0x7fffffffb2a8])
         [Q, X**2 - 17** 11] /\
   eqmod (F**2) (poly X [L0x7fffffffb2c8,L0x7fffffffb2e8])
         [Q, X**2 - 17**139] /\
   eqmod (F**2) (poly X [L0x7fffffffb308,L0x7fffffffb328])
         [Q, X**2 - 17** 75] /\
   eqmod (F**2) (poly X [L0x7fffffffb348,L0x7fffffffb368])
         [Q, X**2 - 17**203] /\
   eqmod (F**2) (poly X [L0x7fffffffb28a,L0x7fffffffb2aa])
         [Q, X**2 - 17** 43] /\
   eqmod (F**2) (poly X [L0x7fffffffb2ca,L0x7fffffffb2ea])
         [Q, X**2 - 17**171] /\
   eqmod (F**2) (poly X [L0x7fffffffb30a,L0x7fffffffb32a])
         [Q, X**2 - 17**107] /\
   eqmod (F**2) (poly X [L0x7fffffffb34a,L0x7fffffffb36a])
         [Q, X**2 - 17**235] /\
   eqmod (F**2) (poly X [L0x7fffffffb28c,L0x7fffffffb2ac])
         [Q, X**2 - 17** 27] /\
   eqmod (F**2) (poly X [L0x7fffffffb2cc,L0x7fffffffb2ec])
         [Q, X**2 - 17**155] /\
   eqmod (F**2) (poly X [L0x7fffffffb30c,L0x7fffffffb32c])
         [Q, X**2 - 17** 91] /\
   eqmod (F**2) (poly X [L0x7fffffffb34c,L0x7fffffffb36c])
         [Q, X**2 - 17**219] /\
   eqmod (F**2) (poly X [L0x7fffffffb28e,L0x7fffffffb2ae])
         [Q, X**2 - 17** 59] /\
   eqmod (F**2) (poly X [L0x7fffffffb2ce,L0x7fffffffb2ee])
         [Q, X**2 - 17**187] /\
   eqmod (F**2) (poly X [L0x7fffffffb30e,L0x7fffffffb32e])
         [Q, X**2 - 17**123] /\
   eqmod (F**2) (poly X [L0x7fffffffb34e,L0x7fffffffb36e])
         [Q, X**2 - 17**251] /\
   eqmod (F**2) (poly X [L0x7fffffffb290,L0x7fffffffb2b0])
         [Q, X**2 - 17**  7] /\
   eqmod (F**2) (poly X [L0x7fffffffb2d0,L0x7fffffffb2f0])
         [Q, X**2 - 17**135] /\
   eqmod (F**2) (poly X [L0x7fffffffb310,L0x7fffffffb330])
         [Q, X**2 - 17** 71] /\
   eqmod (F**2) (poly X [L0x7fffffffb350,L0x7fffffffb370])
         [Q, X**2 - 17**199] /\
   eqmod (F**2) (poly X [L0x7fffffffb292,L0x7fffffffb2b2])
         [Q, X**2 - 17** 39] /\
   eqmod (F**2) (poly X [L0x7fffffffb2d2,L0x7fffffffb2f2])
         [Q, X**2 - 17**167] /\
   eqmod (F**2) (poly X [L0x7fffffffb312,L0x7fffffffb332])
         [Q, X**2 - 17**103] /\
   eqmod (F**2) (poly X [L0x7fffffffb352,L0x7fffffffb372])
         [Q, X**2 - 17**231] /\
   eqmod (F**2) (poly X [L0x7fffffffb294,L0x7fffffffb2b4])
         [Q, X**2 - 17** 23] /\
   eqmod (F**2) (poly X [L0x7fffffffb2d4,L0x7fffffffb2f4])
         [Q, X**2 - 17**151] /\
   eqmod (F**2) (poly X [L0x7fffffffb314,L0x7fffffffb334])
         [Q, X**2 - 17** 87] /\
   eqmod (F**2) (poly X [L0x7fffffffb354,L0x7fffffffb374])
         [Q, X**2 - 17**215] /\
   eqmod (F**2) (poly X [L0x7fffffffb296,L0x7fffffffb2b6])
         [Q, X**2 - 17** 55] /\
   eqmod (F**2) (poly X [L0x7fffffffb2d6,L0x7fffffffb2f6])
         [Q, X**2 - 17**183] /\
   eqmod (F**2) (poly X [L0x7fffffffb316,L0x7fffffffb336])
         [Q, X**2 - 17**119] /\
   eqmod (F**2) (poly X [L0x7fffffffb356,L0x7fffffffb376])
         [Q, X**2 - 17**247] /\
   eqmod (F**2) (poly X [L0x7fffffffb298,L0x7fffffffb2b8])
         [Q, X**2 - 17** 15] /\
   eqmod (F**2) (poly X [L0x7fffffffb2d8,L0x7fffffffb2f8])
         [Q, X**2 - 17**143] /\
   eqmod (F**2) (poly X [L0x7fffffffb318,L0x7fffffffb338])
         [Q, X**2 - 17** 79] /\
   eqmod (F**2) (poly X [L0x7fffffffb358,L0x7fffffffb378])
         [Q, X**2 - 17**207] /\
   eqmod (F**2) (poly X [L0x7fffffffb29a,L0x7fffffffb2ba])
         [Q, X**2 - 17** 47] /\
   eqmod (F**2) (poly X [L0x7fffffffb2da,L0x7fffffffb2fa])
         [Q, X**2 - 17**175] /\
   eqmod (F**2) (poly X [L0x7fffffffb31a,L0x7fffffffb33a])
         [Q, X**2 - 17**111] /\
   eqmod (F**2) (poly X [L0x7fffffffb35a,L0x7fffffffb37a])
         [Q, X**2 - 17**239] /\
   eqmod (F**2) (poly X [L0x7fffffffb29c,L0x7fffffffb2bc])
         [Q, X**2 - 17** 31] /\
   eqmod (F**2) (poly X [L0x7fffffffb2dc,L0x7fffffffb2fc])
         [Q, X**2 - 17**159] /\
   eqmod (F**2) (poly X [L0x7fffffffb31c,L0x7fffffffb33c])
         [Q, X**2 - 17** 95] /\
   eqmod (F**2) (poly X [L0x7fffffffb35c,L0x7fffffffb37c])
         [Q, X**2 - 17**223] /\
   eqmod (F**2) (poly X [L0x7fffffffb29e,L0x7fffffffb2be])
         [Q, X**2 - 17** 63] /\
   eqmod (F**2) (poly X [L0x7fffffffb2de,L0x7fffffffb2fe])
         [Q, X**2 - 17**191] /\
   eqmod (F**2) (poly X [L0x7fffffffb31e,L0x7fffffffb33e])
         [Q, X**2 - 17**127] /\
   eqmod (F**2) (poly X [L0x7fffffffb35e,L0x7fffffffb37e])
         [Q, X**2 - 17**255]
&& Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] /\
   [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] /\
   [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] /\
   [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] /\
   [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] /\
   [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] /\
   [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] /\
   [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] /\
   [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] /\
   [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] /\
   [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] /\
   [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] /\
   [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] /\
   [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] /\
   [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] /\
   [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] /\
   [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] /\
   [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] /\
   [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] /\
   [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] /\
   [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] /\
   [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] /\
   [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] /\
   [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] /\
   [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] /\
   [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] /\
   [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] /\
   [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] /\
   [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] /\
   [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] /\
   [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] /\
   [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] /\
   [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
   [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
   [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
   [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
   [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
   [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
   [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
   [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
   [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
   [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
   [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
   [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
   [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
   [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
   [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
   [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
   [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
   [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
   [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
   [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
   [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
   [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
   [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
   [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
   [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
   [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
   [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
   [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
   [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
   [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
   [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
   [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] <s
   [Q, Q, Q, Q] /\
   [NQ, NQ, NQ, NQ] <s
   [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
   [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] <s
   [Q, Q, Q, Q]
}

(**************** constants ****************)


mov [L0x5555556384a0,L0x5555556384a2] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384a4,L0x5555556384a6] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384a8,L0x5555556384aa] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384ac,L0x5555556384ae] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b0,L0x5555556384b2] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b4,L0x5555556384b6] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b8,L0x5555556384ba] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384bc,L0x5555556384be] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384c0,L0x5555556384c2] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384c4,L0x5555556384c6] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384c8,L0x5555556384ca] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384cc,L0x5555556384ce] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d0,L0x5555556384d2] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d4,L0x5555556384d6] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d8,L0x5555556384da] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384dc,L0x5555556384de] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384e0,L0x5555556384e2] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384e4,L0x5555556384e6] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384e8,L0x5555556384ea] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384ec,L0x5555556384ee] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f0,L0x5555556384f2] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f4,L0x5555556384f6] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f8,L0x5555556384fa] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384fc,L0x5555556384fe] [( 20159)@int16,( 20159)@int16];
mov [L0x555555638500,L0x555555638502] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638504,L0x555555638506] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638508,L0x55555563850a] [(-10079)@int16,(-10079)@int16];
mov [L0x55555563850c,L0x55555563850e] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638510,L0x555555638512] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638514,L0x555555638516] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638518,L0x55555563851a] [(-10079)@int16,(-10079)@int16];
mov [L0x55555563851c,L0x55555563851e] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638520,L0x555555638522] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638524,L0x555555638526] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638528,L0x55555563852a] [(  1441)@int16,(  1441)@int16];
mov [L0x55555563852c,L0x55555563852e] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638530,L0x555555638532] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638534,L0x555555638536] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638538,L0x55555563853a] [(  1441)@int16,(  1441)@int16];
mov [L0x55555563853c,L0x55555563853e] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638540,L0x555555638542] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638544,L0x555555638546] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638548,L0x55555563854a] [( 20553)@int16,( 20553)@int16];
mov [L0x55555563854c,L0x55555563854e] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638550,L0x555555638552] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638554,L0x555555638556] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638558,L0x55555563855a] [( 20553)@int16,( 20553)@int16];
mov [L0x55555563855c,L0x55555563855e] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638560,L0x555555638562] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638564,L0x555555638566] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638568,L0x55555563856a] [(  1353)@int16,(  1353)@int16];
mov [L0x55555563856c,L0x55555563856e] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638570,L0x555555638572] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638574,L0x555555638576] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638578,L0x55555563857a] [(  1353)@int16,(  1353)@int16];
mov [L0x55555563857c,L0x55555563857e] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638580,L0x555555638582] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638584,L0x555555638586] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638588,L0x55555563858a] [(  4095)@int16,(  4095)@int16];
mov [L0x55555563858c,L0x55555563858e] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638590,L0x555555638592] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638594,L0x555555638596] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638598,L0x55555563859a] [(  4095)@int16,(  4095)@int16];
mov [L0x55555563859c,L0x55555563859e] [(  4095)@int16,(  4095)@int16];
mov [L0x5555556385a0,L0x5555556385a2] [(  3854)@int16,(  3340)@int16];
mov [L0x5555556385a4,L0x5555556385a6] [(  2826)@int16,(  2312)@int16];
mov [L0x5555556385a8,L0x5555556385aa] [(  1798)@int16,(  1284)@int16];
mov [L0x5555556385ac,L0x5555556385ae] [(   770)@int16,(   256)@int16];
mov [L0x5555556385b0,L0x5555556385b2] [(  3854)@int16,(  3340)@int16];
mov [L0x5555556385b4,L0x5555556385b6] [(  2826)@int16,(  2312)@int16];
mov [L0x5555556385b8,L0x5555556385ba] [(  1798)@int16,(  1284)@int16];
mov [L0x5555556385bc,L0x5555556385be] [(   770)@int16,(   256)@int16];
mov [L0x5555556385c0,L0x5555556385c2] [(     7)@int16,(     0)@int16];
mov [L0x5555556385c4,L0x5555556385c6] [(     6)@int16,(     0)@int16];
mov [L0x5555556385c8,L0x5555556385ca] [(     5)@int16,(     0)@int16];
mov [L0x5555556385cc,L0x5555556385ce] [(     4)@int16,(     0)@int16];
mov [L0x5555556385d0,L0x5555556385d2] [(     3)@int16,(     0)@int16];
mov [L0x5555556385d4,L0x5555556385d6] [(     2)@int16,(     0)@int16];
mov [L0x5555556385d8,L0x5555556385da] [(     1)@int16,(     0)@int16];
mov [L0x5555556385dc,L0x5555556385de] [(     0)@int16,(     0)@int16];
mov [L0x5555556385e0,L0x5555556385e2] [( 31498)@int16,( 31498)@int16];
mov [L0x5555556385e4,L0x5555556385e6] [( 31498)@int16,( 31498)@int16];
mov [L0x5555556385e8,L0x5555556385ea] [(  -758)@int16,(  -758)@int16];
mov [L0x5555556385ec,L0x5555556385ee] [(  -758)@int16,(  -758)@int16];
mov [L0x5555556385f0,L0x5555556385f2] [(  5237)@int16,(  5237)@int16];
mov [L0x5555556385f4,L0x5555556385f6] [(  5237)@int16,(  5237)@int16];
mov [L0x5555556385f8,L0x5555556385fa] [(  1397)@int16,(  1397)@int16];
mov [L0x5555556385fc,L0x5555556385fe] [(  1397)@int16,(  1397)@int16];
mov [L0x555555638600,L0x555555638602] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638604,L0x555555638606] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638608,L0x55555563860a] [( 14745)@int16,( 14745)@int16];
mov [L0x55555563860c,L0x55555563860e] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638610,L0x555555638612] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638614,L0x555555638616] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638618,L0x55555563861a] [( 14745)@int16,( 14745)@int16];
mov [L0x55555563861c,L0x55555563861e] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638620,L0x555555638622] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638624,L0x555555638626] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638628,L0x55555563862a] [(  -359)@int16,(  -359)@int16];
mov [L0x55555563862c,L0x55555563862e] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638630,L0x555555638632] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638634,L0x555555638636] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638638,L0x55555563863a] [(  -359)@int16,(  -359)@int16];
mov [L0x55555563863c,L0x55555563863e] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638640,L0x555555638642] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638644,L0x555555638646] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638648,L0x55555563864a] [( 13525)@int16,( 13525)@int16];
mov [L0x55555563864c,L0x55555563864e] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638650,L0x555555638652] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638654,L0x555555638656] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638658,L0x55555563865a] [(-12402)@int16,(-12402)@int16];
mov [L0x55555563865c,L0x55555563865e] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638660,L0x555555638662] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638664,L0x555555638666] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638668,L0x55555563866a] [(  1493)@int16,(  1493)@int16];
mov [L0x55555563866c,L0x55555563866e] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638670,L0x555555638672] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638674,L0x555555638676] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638678,L0x55555563867a] [(  1422)@int16,(  1422)@int16];
mov [L0x55555563867c,L0x55555563867e] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638680,L0x555555638682] [(-20907)@int16,(-20907)@int16];
mov [L0x555555638684,L0x555555638686] [(-20907)@int16,(-20907)@int16];
mov [L0x555555638688,L0x55555563868a] [( 27758)@int16,( 27758)@int16];
mov [L0x55555563868c,L0x55555563868e] [( 27758)@int16,( 27758)@int16];
mov [L0x555555638690,L0x555555638692] [( -3799)@int16,( -3799)@int16];
mov [L0x555555638694,L0x555555638696] [( -3799)@int16,( -3799)@int16];
mov [L0x555555638698,L0x55555563869a] [(-15690)@int16,(-15690)@int16];
mov [L0x55555563869c,L0x55555563869e] [(-15690)@int16,(-15690)@int16];
mov [L0x5555556386a0,L0x5555556386a2] [(  -171)@int16,(  -171)@int16];
mov [L0x5555556386a4,L0x5555556386a6] [(  -171)@int16,(  -171)@int16];
mov [L0x5555556386a8,L0x5555556386aa] [(   622)@int16,(   622)@int16];
mov [L0x5555556386ac,L0x5555556386ae] [(   622)@int16,(   622)@int16];
mov [L0x5555556386b0,L0x5555556386b2] [(  1577)@int16,(  1577)@int16];
mov [L0x5555556386b4,L0x5555556386b6] [(  1577)@int16,(  1577)@int16];
mov [L0x5555556386b8,L0x5555556386ba] [(   182)@int16,(   182)@int16];
mov [L0x5555556386bc,L0x5555556386be] [(   182)@int16,(   182)@int16];
mov [L0x5555556386c0,L0x5555556386c2] [( -5827)@int16,( -5827)@int16];
mov [L0x5555556386c4,L0x5555556386c6] [( 17363)@int16,( 17363)@int16];
mov [L0x5555556386c8,L0x5555556386ca] [(-26360)@int16,(-26360)@int16];
mov [L0x5555556386cc,L0x5555556386ce] [(-29057)@int16,(-29057)@int16];
mov [L0x5555556386d0,L0x5555556386d2] [(  5571)@int16,(  5571)@int16];
mov [L0x5555556386d4,L0x5555556386d6] [( -1102)@int16,( -1102)@int16];
mov [L0x5555556386d8,L0x5555556386da] [( 21438)@int16,( 21438)@int16];
mov [L0x5555556386dc,L0x5555556386de] [(-26242)@int16,(-26242)@int16];
mov [L0x5555556386e0,L0x5555556386e2] [(   573)@int16,(   573)@int16];
mov [L0x5555556386e4,L0x5555556386e6] [( -1325)@int16,( -1325)@int16];
mov [L0x5555556386e8,L0x5555556386ea] [(   264)@int16,(   264)@int16];
mov [L0x5555556386ec,L0x5555556386ee] [(   383)@int16,(   383)@int16];
mov [L0x5555556386f0,L0x5555556386f2] [(  -829)@int16,(  -829)@int16];
mov [L0x5555556386f4,L0x5555556386f6] [(  1458)@int16,(  1458)@int16];
mov [L0x5555556386f8,L0x5555556386fa] [( -1602)@int16,( -1602)@int16];
mov [L0x5555556386fc,L0x5555556386fe] [(  -130)@int16,(  -130)@int16];
mov [L0x555555638700,L0x555555638702] [( -5689)@int16,( -6516)@int16];
mov [L0x555555638704,L0x555555638706] [(  1496)@int16,( 30967)@int16];
mov [L0x555555638708,L0x55555563870a] [(-23565)@int16,( 20179)@int16];
mov [L0x55555563870c,L0x55555563870e] [( 20710)@int16,( 25080)@int16];
mov [L0x555555638710,L0x555555638712] [(-12796)@int16,( 26616)@int16];
mov [L0x555555638714,L0x555555638716] [( 16064)@int16,(-12442)@int16];
mov [L0x555555638718,L0x55555563871a] [(  9134)@int16,(  -650)@int16];
mov [L0x55555563871c,L0x55555563871e] [(-25986)@int16,( 27837)@int16];
mov [L0x555555638720,L0x555555638722] [(  1223)@int16,(   652)@int16];
mov [L0x555555638724,L0x555555638726] [(  -552)@int16,(  1015)@int16];
mov [L0x555555638728,L0x55555563872a] [( -1293)@int16,(  1491)@int16];
mov [L0x55555563872c,L0x55555563872e] [(  -282)@int16,( -1544)@int16];
mov [L0x555555638730,L0x555555638732] [(   516)@int16,(    -8)@int16];
mov [L0x555555638734,L0x555555638736] [(  -320)@int16,(  -666)@int16];
mov [L0x555555638738,L0x55555563873a] [( -1618)@int16,( -1162)@int16];
mov [L0x55555563873c,L0x55555563873e] [(   126)@int16,(  1469)@int16];
mov [L0x555555638740,L0x555555638742] [(  -335)@int16,(-11477)@int16];
mov [L0x555555638744,L0x555555638746] [(-32227)@int16,( 20494)@int16];
mov [L0x555555638748,L0x55555563874a] [(-27738)@int16,(   945)@int16];
mov [L0x55555563874c,L0x55555563874e] [(-14883)@int16,(  6182)@int16];
mov [L0x555555638750,L0x555555638752] [( 32010)@int16,( 10631)@int16];
mov [L0x555555638754,L0x555555638756] [( 29175)@int16,(-28762)@int16];
mov [L0x555555638758,L0x55555563875a] [(-18486)@int16,( 17560)@int16];
mov [L0x55555563875c,L0x55555563875e] [(-14430)@int16,( -5276)@int16];
mov [L0x555555638760,L0x555555638762] [( -1103)@int16,(   555)@int16];
mov [L0x555555638764,L0x555555638766] [( -1251)@int16,(  1550)@int16];
mov [L0x555555638768,L0x55555563876a] [(   422)@int16,(   177)@int16];
mov [L0x55555563876c,L0x55555563876e] [(  -291)@int16,(  1574)@int16];
mov [L0x555555638770,L0x555555638772] [(  -246)@int16,(  1159)@int16];
mov [L0x555555638774,L0x555555638776] [(  -777)@int16,(  -602)@int16];
mov [L0x555555638778,L0x55555563877a] [( -1590)@int16,(  -872)@int16];
mov [L0x55555563877c,L0x55555563877e] [(   418)@int16,(  -156)@int16];
mov [L0x555555638780,L0x555555638782] [( 11182)@int16,( 13387)@int16];
mov [L0x555555638784,L0x555555638786] [(-14233)@int16,(-21655)@int16];
mov [L0x555555638788,L0x55555563878a] [( 13131)@int16,( -4587)@int16];
mov [L0x55555563878c,L0x55555563878e] [( 23092)@int16,(  5493)@int16];
mov [L0x555555638790,L0x555555638792] [(-32502)@int16,( 30317)@int16];
mov [L0x555555638794,L0x555555638796] [(-18741)@int16,( 12639)@int16];
mov [L0x555555638798,L0x55555563879a] [( 20100)@int16,( 18525)@int16];
mov [L0x55555563879c,L0x55555563879e] [( 19529)@int16,(-12619)@int16];
mov [L0x5555556387a0,L0x5555556387a2] [(   430)@int16,(   843)@int16];
mov [L0x5555556387a4,L0x5555556387a6] [(   871)@int16,(   105)@int16];
mov [L0x5555556387a8,L0x5555556387aa] [(   587)@int16,(  -235)@int16];
mov [L0x5555556387ac,L0x5555556387ae] [(  -460)@int16,(  1653)@int16];
mov [L0x5555556387b0,L0x5555556387b2] [(   778)@int16,(  -147)@int16];
mov [L0x5555556387b4,L0x5555556387b6] [(  1483)@int16,(  1119)@int16];
mov [L0x5555556387b8,L0x5555556387ba] [(   644)@int16,(   349)@int16];
mov [L0x5555556387bc,L0x5555556387be] [(   329)@int16,(   -75)@int16];
mov [L0x5555556387c0,L0x5555556387c2] [(   787)@int16,(   787)@int16];
mov [L0x5555556387c4,L0x5555556387c6] [(   787)@int16,(   787)@int16];
mov [L0x5555556387c8,L0x5555556387ca] [(   787)@int16,(   787)@int16];
mov [L0x5555556387cc,L0x5555556387ce] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d0,L0x5555556387d2] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d4,L0x5555556387d6] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d8,L0x5555556387da] [(   787)@int16,(   787)@int16];
mov [L0x5555556387dc,L0x5555556387de] [(   787)@int16,(   787)@int16];
mov [L0x5555556387e0,L0x5555556387e2] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387e4,L0x5555556387e6] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387e8,L0x5555556387ea] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387ec,L0x5555556387ee] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f0,L0x5555556387f2] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f4,L0x5555556387f6] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f8,L0x5555556387fa] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387fc,L0x5555556387fe] [( -1517)@int16,( -1517)@int16];
mov [L0x555555638800,L0x555555638802] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638804,L0x555555638806] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638808,L0x55555563880a] [( 28191)@int16,( 28191)@int16];
mov [L0x55555563880c,L0x55555563880e] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638810,L0x555555638812] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638814,L0x555555638816] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638818,L0x55555563881a] [(-16694)@int16,(-16694)@int16];
mov [L0x55555563881c,L0x55555563881e] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638820,L0x555555638822] [(   287)@int16,(   287)@int16];
mov [L0x555555638824,L0x555555638826] [(   287)@int16,(   287)@int16];
mov [L0x555555638828,L0x55555563882a] [(   287)@int16,(   287)@int16];
mov [L0x55555563882c,L0x55555563882e] [(   287)@int16,(   287)@int16];
mov [L0x555555638830,L0x555555638832] [(   202)@int16,(   202)@int16];
mov [L0x555555638834,L0x555555638836] [(   202)@int16,(   202)@int16];
mov [L0x555555638838,L0x55555563883a] [(   202)@int16,(   202)@int16];
mov [L0x55555563883c,L0x55555563883e] [(   202)@int16,(   202)@int16];
mov [L0x555555638840,L0x555555638842] [( 10690)@int16,( 10690)@int16];
mov [L0x555555638844,L0x555555638846] [( 10690)@int16,( 10690)@int16];
mov [L0x555555638848,L0x55555563884a] [(  1358)@int16,(  1358)@int16];
mov [L0x55555563884c,L0x55555563884e] [(  1358)@int16,(  1358)@int16];
mov [L0x555555638850,L0x555555638852] [(-11202)@int16,(-11202)@int16];
mov [L0x555555638854,L0x555555638856] [(-11202)@int16,(-11202)@int16];
mov [L0x555555638858,L0x55555563885a] [( 31164)@int16,( 31164)@int16];
mov [L0x55555563885c,L0x55555563885e] [( 31164)@int16,( 31164)@int16];
mov [L0x555555638860,L0x555555638862] [(   962)@int16,(   962)@int16];
mov [L0x555555638864,L0x555555638866] [(   962)@int16,(   962)@int16];
mov [L0x555555638868,L0x55555563886a] [( -1202)@int16,( -1202)@int16];
mov [L0x55555563886c,L0x55555563886e] [( -1202)@int16,( -1202)@int16];
mov [L0x555555638870,L0x555555638872] [( -1474)@int16,( -1474)@int16];
mov [L0x555555638874,L0x555555638876] [( -1474)@int16,( -1474)@int16];
mov [L0x555555638878,L0x55555563887a] [(  1468)@int16,(  1468)@int16];
mov [L0x55555563887c,L0x55555563887e] [(  1468)@int16,(  1468)@int16];
mov [L0x555555638880,L0x555555638882] [(-28073)@int16,(-28073)@int16];
mov [L0x555555638884,L0x555555638886] [( 24313)@int16,( 24313)@int16];
mov [L0x555555638888,L0x55555563888a] [(-10532)@int16,(-10532)@int16];
mov [L0x55555563888c,L0x55555563888e] [(  8800)@int16,(  8800)@int16];
mov [L0x555555638890,L0x555555638892] [( 18426)@int16,( 18426)@int16];
mov [L0x555555638894,L0x555555638896] [(  8859)@int16,(  8859)@int16];
mov [L0x555555638898,L0x55555563889a] [( 26675)@int16,( 26675)@int16];
mov [L0x55555563889c,L0x55555563889e] [(-16163)@int16,(-16163)@int16];
mov [L0x5555556388a0,L0x5555556388a2] [(  -681)@int16,(  -681)@int16];
mov [L0x5555556388a4,L0x5555556388a6] [(  1017)@int16,(  1017)@int16];
mov [L0x5555556388a8,L0x5555556388aa] [(   732)@int16,(   732)@int16];
mov [L0x5555556388ac,L0x5555556388ae] [(   608)@int16,(   608)@int16];
mov [L0x5555556388b0,L0x5555556388b2] [( -1542)@int16,( -1542)@int16];
mov [L0x5555556388b4,L0x5555556388b6] [(   411)@int16,(   411)@int16];
mov [L0x5555556388b8,L0x5555556388ba] [(  -205)@int16,(  -205)@int16];
mov [L0x5555556388bc,L0x5555556388be] [( -1571)@int16,( -1571)@int16];
mov [L0x5555556388c0,L0x5555556388c2] [( 19883)@int16,(-28250)@int16];
mov [L0x5555556388c4,L0x5555556388c6] [(-15887)@int16,( -8898)@int16];
mov [L0x5555556388c8,L0x5555556388ca] [(-28309)@int16,(  9075)@int16];
mov [L0x5555556388cc,L0x5555556388ce] [(-30199)@int16,( 18249)@int16];
mov [L0x5555556388d0,L0x5555556388d2] [( 13426)@int16,( 14017)@int16];
mov [L0x5555556388d4,L0x5555556388d6] [(-29156)@int16,(-12757)@int16];
mov [L0x5555556388d8,L0x5555556388da] [( 16832)@int16,(  4311)@int16];
mov [L0x5555556388dc,L0x5555556388de] [(-24155)@int16,(-17915)@int16];
mov [L0x5555556388e0,L0x5555556388e2] [(  -853)@int16,(   -90)@int16];
mov [L0x5555556388e4,L0x5555556388e6] [(  -271)@int16,(   830)@int16];
mov [L0x5555556388e8,L0x5555556388ea] [(   107)@int16,( -1421)@int16];
mov [L0x5555556388ec,L0x5555556388ee] [(  -247)@int16,(  -951)@int16];
mov [L0x5555556388f0,L0x5555556388f2] [(  -398)@int16,(   961)@int16];
mov [L0x5555556388f4,L0x5555556388f6] [( -1508)@int16,(  -725)@int16];
mov [L0x5555556388f8,L0x5555556388fa] [(   448)@int16,( -1065)@int16];
mov [L0x5555556388fc,L0x5555556388fe] [(   677)@int16,( -1275)@int16];
mov [L0x555555638900,L0x555555638902] [(-31183)@int16,( 25435)@int16];
mov [L0x555555638904,L0x555555638906] [( -7382)@int16,( 24391)@int16];
mov [L0x555555638908,L0x55555563890a] [(-20927)@int16,( 10946)@int16];
mov [L0x55555563890c,L0x55555563890e] [( 24214)@int16,( 16989)@int16];
mov [L0x555555638910,L0x555555638912] [( 10335)@int16,( -7934)@int16];
mov [L0x555555638914,L0x555555638916] [(-22502)@int16,( 10906)@int16];
mov [L0x555555638918,L0x55555563891a] [( 31636)@int16,( 28644)@int16];
mov [L0x55555563891c,L0x55555563891e] [( 23998)@int16,(-17422)@int16];
mov [L0x555555638920,L0x555555638922] [(   817)@int16,(   603)@int16];
mov [L0x555555638924,L0x555555638926] [(  1322)@int16,( -1465)@int16];
mov [L0x555555638928,L0x55555563892a] [( -1215)@int16,(  1218)@int16];
mov [L0x55555563892c,L0x55555563892e] [(  -874)@int16,( -1187)@int16];
mov [L0x555555638930,L0x555555638932] [( -1185)@int16,( -1278)@int16];
mov [L0x555555638934,L0x555555638936] [( -1510)@int16,(  -870)@int16];
mov [L0x555555638938,L0x55555563893a] [(  -108)@int16,(   996)@int16];
mov [L0x55555563893c,L0x55555563893e] [(   958)@int16,(  1522)@int16];
mov [L0x555555638940,L0x555555638942] [( 20297)@int16,(  2146)@int16];
mov [L0x555555638944,L0x555555638946] [( 15355)@int16,(-32384)@int16];
mov [L0x555555638948,L0x55555563894a] [( -6280)@int16,(-14903)@int16];
mov [L0x55555563894c,L0x55555563894e] [(-11044)@int16,( 14469)@int16];
mov [L0x555555638950,L0x555555638952] [(-21498)@int16,(-20198)@int16];
mov [L0x555555638954,L0x555555638956] [( 23210)@int16,(-17442)@int16];
mov [L0x555555638958,L0x55555563895a] [(-23860)@int16,(-20257)@int16];
mov [L0x55555563895c,L0x55555563895e] [(  7756)@int16,( 23132)@int16];
mov [L0x555555638960,L0x555555638962] [(  1097)@int16,(   610)@int16];
mov [L0x555555638964,L0x555555638966] [( -1285)@int16,(   384)@int16];
mov [L0x555555638968,L0x55555563896a] [(  -136)@int16,( -1335)@int16];
mov [L0x55555563896c,L0x55555563896e] [(   220)@int16,( -1659)@int16];
mov [L0x555555638970,L0x555555638972] [( -1530)@int16,(   794)@int16];
mov [L0x555555638974,L0x555555638976] [(  -854)@int16,(   478)@int16];
mov [L0x555555638978,L0x55555563897a] [(  -308)@int16,(   991)@int16];
mov [L0x55555563897c,L0x55555563897e] [( -1460)@int16,(  1628)@int16];
mov [L0x555555638980,L0x555555638982] [(    32)@int16,(    32)@int16];
mov [L0x555555638984,L0x555555638986] [(    32)@int16,(    32)@int16];
mov [L0x555555638988,L0x55555563898a] [(    32)@int16,(    32)@int16];
mov [L0x55555563898c,L0x55555563898e] [(    32)@int16,(    32)@int16];
mov [L0x555555638990,L0x555555638992] [(    32)@int16,(    32)@int16];
mov [L0x555555638994,L0x555555638996] [(    32)@int16,(    32)@int16];
mov [L0x555555638998,L0x55555563899a] [(    32)@int16,(    32)@int16];
mov [L0x55555563899c,L0x55555563899e] [(    32)@int16,(    32)@int16];

(* CUT 0 0 *)
cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [L0x7fffffffb180,L0x7fffffffb1a0])
          [Q, X**2 - 17**  1] /\
    eqmod (F**2) (poly X [L0x7fffffffb1c0,L0x7fffffffb1e0])
          [Q, X**2 - 17**129] /\
    eqmod (F**2) (poly X [L0x7fffffffb200,L0x7fffffffb220])
          [Q, X**2 - 17** 65] /\
    eqmod (F**2) (poly X [L0x7fffffffb240,L0x7fffffffb260])
          [Q, X**2 - 17**193] /\
    eqmod (F**2) (poly X [L0x7fffffffb182,L0x7fffffffb1a2])
          [Q, X**2 - 17** 33] /\
    eqmod (F**2) (poly X [L0x7fffffffb1c2,L0x7fffffffb1e2])
          [Q, X**2 - 17**161] /\
    eqmod (F**2) (poly X [L0x7fffffffb202,L0x7fffffffb222])
          [Q, X**2 - 17** 97] /\
    eqmod (F**2) (poly X [L0x7fffffffb242,L0x7fffffffb262])
          [Q, X**2 - 17**225] /\
    eqmod (F**2) (poly X [L0x7fffffffb184,L0x7fffffffb1a4])
          [Q, X**2 - 17** 17] /\
    eqmod (F**2) (poly X [L0x7fffffffb1c4,L0x7fffffffb1e4])
          [Q, X**2 - 17**145] /\
    eqmod (F**2) (poly X [L0x7fffffffb204,L0x7fffffffb224])
          [Q, X**2 - 17** 81] /\
    eqmod (F**2) (poly X [L0x7fffffffb244,L0x7fffffffb264])
          [Q, X**2 - 17**209] /\
    eqmod (F**2) (poly X [L0x7fffffffb186,L0x7fffffffb1a6])
          [Q, X**2 - 17** 49] /\
    eqmod (F**2) (poly X [L0x7fffffffb1c6,L0x7fffffffb1e6])
          [Q, X**2 - 17**177] /\
    eqmod (F**2) (poly X [L0x7fffffffb206,L0x7fffffffb226])
          [Q, X**2 - 17**113] /\
    eqmod (F**2) (poly X [L0x7fffffffb246,L0x7fffffffb266])
          [Q, X**2 - 17**241] /\
    eqmod (F**2) (poly X [L0x7fffffffb188,L0x7fffffffb1a8])
          [Q, X**2 - 17**  9] /\
    eqmod (F**2) (poly X [L0x7fffffffb1c8,L0x7fffffffb1e8])
          [Q, X**2 - 17**137] /\
    eqmod (F**2) (poly X [L0x7fffffffb208,L0x7fffffffb228])
          [Q, X**2 - 17** 73] /\
    eqmod (F**2) (poly X [L0x7fffffffb248,L0x7fffffffb268])
          [Q, X**2 - 17**201] /\
    eqmod (F**2) (poly X [L0x7fffffffb18a,L0x7fffffffb1aa])
          [Q, X**2 - 17** 41] /\
    eqmod (F**2) (poly X [L0x7fffffffb1ca,L0x7fffffffb1ea])
          [Q, X**2 - 17**169] /\
    eqmod (F**2) (poly X [L0x7fffffffb20a,L0x7fffffffb22a])
          [Q, X**2 - 17**105] /\
    eqmod (F**2) (poly X [L0x7fffffffb24a,L0x7fffffffb26a])
          [Q, X**2 - 17**233] /\
    eqmod (F**2) (poly X [L0x7fffffffb18c,L0x7fffffffb1ac])
          [Q, X**2 - 17** 25] /\
    eqmod (F**2) (poly X [L0x7fffffffb1cc,L0x7fffffffb1ec])
          [Q, X**2 - 17**153] /\
    eqmod (F**2) (poly X [L0x7fffffffb20c,L0x7fffffffb22c])
          [Q, X**2 - 17** 89] /\
    eqmod (F**2) (poly X [L0x7fffffffb24c,L0x7fffffffb26c])
          [Q, X**2 - 17**217] /\
    eqmod (F**2) (poly X [L0x7fffffffb18e,L0x7fffffffb1ae])
          [Q, X**2 - 17** 57] /\
    eqmod (F**2) (poly X [L0x7fffffffb1ce,L0x7fffffffb1ee])
          [Q, X**2 - 17**185] /\
    eqmod (F**2) (poly X [L0x7fffffffb20e,L0x7fffffffb22e])
          [Q, X**2 - 17**121] /\
    eqmod (F**2) (poly X [L0x7fffffffb24e,L0x7fffffffb26e])
          [Q, X**2 - 17**249] /\
    eqmod (F**2) (poly X [L0x7fffffffb190,L0x7fffffffb1b0])
          [Q, X**2 - 17**  5] /\
    eqmod (F**2) (poly X [L0x7fffffffb1d0,L0x7fffffffb1f0])
          [Q, X**2 - 17**133] /\
    eqmod (F**2) (poly X [L0x7fffffffb210,L0x7fffffffb230])
          [Q, X**2 - 17** 69] /\
    eqmod (F**2) (poly X [L0x7fffffffb250,L0x7fffffffb270])
          [Q, X**2 - 17**197] /\
    eqmod (F**2) (poly X [L0x7fffffffb192,L0x7fffffffb1b2])
          [Q, X**2 - 17** 37] /\
    eqmod (F**2) (poly X [L0x7fffffffb1d2,L0x7fffffffb1f2])
          [Q, X**2 - 17**165] /\
    eqmod (F**2) (poly X [L0x7fffffffb212,L0x7fffffffb232])
          [Q, X**2 - 17**101] /\
    eqmod (F**2) (poly X [L0x7fffffffb252,L0x7fffffffb272])
          [Q, X**2 - 17**229] /\
    eqmod (F**2) (poly X [L0x7fffffffb194,L0x7fffffffb1b4])
          [Q, X**2 - 17** 21] /\
    eqmod (F**2) (poly X [L0x7fffffffb1d4,L0x7fffffffb1f4])
          [Q, X**2 - 17**149] /\
    eqmod (F**2) (poly X [L0x7fffffffb214,L0x7fffffffb234])
          [Q, X**2 - 17** 85] /\
    eqmod (F**2) (poly X [L0x7fffffffb254,L0x7fffffffb274])
          [Q, X**2 - 17**213] /\
    eqmod (F**2) (poly X [L0x7fffffffb196,L0x7fffffffb1b6])
          [Q, X**2 - 17** 53] /\
    eqmod (F**2) (poly X [L0x7fffffffb1d6,L0x7fffffffb1f6])
          [Q, X**2 - 17**181] /\
    eqmod (F**2) (poly X [L0x7fffffffb216,L0x7fffffffb236])
          [Q, X**2 - 17**117] /\
    eqmod (F**2) (poly X [L0x7fffffffb256,L0x7fffffffb276])
          [Q, X**2 - 17**245] /\
    eqmod (F**2) (poly X [L0x7fffffffb198,L0x7fffffffb1b8])
          [Q, X**2 - 17** 13] /\
    eqmod (F**2) (poly X [L0x7fffffffb1d8,L0x7fffffffb1f8])
          [Q, X**2 - 17**141] /\
    eqmod (F**2) (poly X [L0x7fffffffb218,L0x7fffffffb238])
          [Q, X**2 - 17** 77] /\
    eqmod (F**2) (poly X [L0x7fffffffb258,L0x7fffffffb278])
          [Q, X**2 - 17**205] /\
    eqmod (F**2) (poly X [L0x7fffffffb19a,L0x7fffffffb1ba])
          [Q, X**2 - 17** 45] /\
    eqmod (F**2) (poly X [L0x7fffffffb1da,L0x7fffffffb1fa])
          [Q, X**2 - 17**173] /\
    eqmod (F**2) (poly X [L0x7fffffffb21a,L0x7fffffffb23a])
          [Q, X**2 - 17**109] /\
    eqmod (F**2) (poly X [L0x7fffffffb25a,L0x7fffffffb27a])
          [Q, X**2 - 17**237] /\
    eqmod (F**2) (poly X [L0x7fffffffb19c,L0x7fffffffb1bc])
          [Q, X**2 - 17** 29] /\
    eqmod (F**2) (poly X [L0x7fffffffb1dc,L0x7fffffffb1fc])
          [Q, X**2 - 17**157] /\
    eqmod (F**2) (poly X [L0x7fffffffb21c,L0x7fffffffb23c])
          [Q, X**2 - 17** 93] /\
    eqmod (F**2) (poly X [L0x7fffffffb25c,L0x7fffffffb27c])
          [Q, X**2 - 17**221] /\
    eqmod (F**2) (poly X [L0x7fffffffb19e,L0x7fffffffb1be])
          [Q, X**2 - 17** 61] /\
    eqmod (F**2) (poly X [L0x7fffffffb1de,L0x7fffffffb1fe])
          [Q, X**2 - 17**189] /\
    eqmod (F**2) (poly X [L0x7fffffffb21e,L0x7fffffffb23e])
          [Q, X**2 - 17**125] /\
    eqmod (F**2) (poly X [L0x7fffffffb25e,L0x7fffffffb27e])
          [Q, X**2 - 17**253]
    prove with [precondition]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] /\
    [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] /\
    [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] /\
    [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] /\
    [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] /\
    [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] /\
    [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] /\
    [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] /\
    [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] /\
    [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] /\
    [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] /\
    [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] /\
    [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] /\
    [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] /\
    [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] /\
    [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] /\
    [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] /\
    [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] /\
    [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] /\
    [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] /\
    [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] /\
    [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] /\
    [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] /\
    [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] /\
    [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] /\
    [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] /\
    [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] /\
    [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] /\
    [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] /\
    [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] /\
    [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] /\
    [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] /\
    [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] <s
    [Q, Q, Q, Q]
    prove with [precondition];

(* CUT 1 1 *)
cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [L0x7fffffffb280,L0x7fffffffb2a0])
          [Q, X**2 - 17**  3] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c0,L0x7fffffffb2e0])
          [Q, X**2 - 17**131] /\
    eqmod (F**2) (poly X [L0x7fffffffb300,L0x7fffffffb320])
          [Q, X**2 - 17** 67] /\
    eqmod (F**2) (poly X [L0x7fffffffb340,L0x7fffffffb360])
          [Q, X**2 - 17**195] /\
    eqmod (F**2) (poly X [L0x7fffffffb282,L0x7fffffffb2a2])
          [Q, X**2 - 17** 35] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c2,L0x7fffffffb2e2])
          [Q, X**2 - 17**163] /\
    eqmod (F**2) (poly X [L0x7fffffffb302,L0x7fffffffb322])
          [Q, X**2 - 17** 99] /\
    eqmod (F**2) (poly X [L0x7fffffffb342,L0x7fffffffb362])
          [Q, X**2 - 17**227] /\
    eqmod (F**2) (poly X [L0x7fffffffb284,L0x7fffffffb2a4])
          [Q, X**2 - 17** 19] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c4,L0x7fffffffb2e4])
          [Q, X**2 - 17**147] /\
    eqmod (F**2) (poly X [L0x7fffffffb304,L0x7fffffffb324])
          [Q, X**2 - 17** 83] /\
    eqmod (F**2) (poly X [L0x7fffffffb344,L0x7fffffffb364])
          [Q, X**2 - 17**211] /\
    eqmod (F**2) (poly X [L0x7fffffffb286,L0x7fffffffb2a6])
          [Q, X**2 - 17** 51] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c6,L0x7fffffffb2e6])
          [Q, X**2 - 17**179] /\
    eqmod (F**2) (poly X [L0x7fffffffb306,L0x7fffffffb326])
          [Q, X**2 - 17**115] /\
    eqmod (F**2) (poly X [L0x7fffffffb346,L0x7fffffffb366])
          [Q, X**2 - 17**243] /\
    eqmod (F**2) (poly X [L0x7fffffffb288,L0x7fffffffb2a8])
          [Q, X**2 - 17** 11] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c8,L0x7fffffffb2e8])
          [Q, X**2 - 17**139] /\
    eqmod (F**2) (poly X [L0x7fffffffb308,L0x7fffffffb328])
          [Q, X**2 - 17** 75] /\
    eqmod (F**2) (poly X [L0x7fffffffb348,L0x7fffffffb368])
          [Q, X**2 - 17**203] /\
    eqmod (F**2) (poly X [L0x7fffffffb28a,L0x7fffffffb2aa])
          [Q, X**2 - 17** 43] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ca,L0x7fffffffb2ea])
          [Q, X**2 - 17**171] /\
    eqmod (F**2) (poly X [L0x7fffffffb30a,L0x7fffffffb32a])
          [Q, X**2 - 17**107] /\
    eqmod (F**2) (poly X [L0x7fffffffb34a,L0x7fffffffb36a])
          [Q, X**2 - 17**235] /\
    eqmod (F**2) (poly X [L0x7fffffffb28c,L0x7fffffffb2ac])
          [Q, X**2 - 17** 27] /\
    eqmod (F**2) (poly X [L0x7fffffffb2cc,L0x7fffffffb2ec])
          [Q, X**2 - 17**155] /\
    eqmod (F**2) (poly X [L0x7fffffffb30c,L0x7fffffffb32c])
          [Q, X**2 - 17** 91] /\
    eqmod (F**2) (poly X [L0x7fffffffb34c,L0x7fffffffb36c])
          [Q, X**2 - 17**219] /\
    eqmod (F**2) (poly X [L0x7fffffffb28e,L0x7fffffffb2ae])
          [Q, X**2 - 17** 59] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ce,L0x7fffffffb2ee])
          [Q, X**2 - 17**187] /\
    eqmod (F**2) (poly X [L0x7fffffffb30e,L0x7fffffffb32e])
          [Q, X**2 - 17**123] /\
    eqmod (F**2) (poly X [L0x7fffffffb34e,L0x7fffffffb36e])
          [Q, X**2 - 17**251] /\
    eqmod (F**2) (poly X [L0x7fffffffb290,L0x7fffffffb2b0])
          [Q, X**2 - 17**  7] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d0,L0x7fffffffb2f0])
          [Q, X**2 - 17**135] /\
    eqmod (F**2) (poly X [L0x7fffffffb310,L0x7fffffffb330])
          [Q, X**2 - 17** 71] /\
    eqmod (F**2) (poly X [L0x7fffffffb350,L0x7fffffffb370])
          [Q, X**2 - 17**199] /\
    eqmod (F**2) (poly X [L0x7fffffffb292,L0x7fffffffb2b2])
          [Q, X**2 - 17** 39] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d2,L0x7fffffffb2f2])
          [Q, X**2 - 17**167] /\
    eqmod (F**2) (poly X [L0x7fffffffb312,L0x7fffffffb332])
          [Q, X**2 - 17**103] /\
    eqmod (F**2) (poly X [L0x7fffffffb352,L0x7fffffffb372])
          [Q, X**2 - 17**231] /\
    eqmod (F**2) (poly X [L0x7fffffffb294,L0x7fffffffb2b4])
          [Q, X**2 - 17** 23] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d4,L0x7fffffffb2f4])
          [Q, X**2 - 17**151] /\
    eqmod (F**2) (poly X [L0x7fffffffb314,L0x7fffffffb334])
          [Q, X**2 - 17** 87] /\
    eqmod (F**2) (poly X [L0x7fffffffb354,L0x7fffffffb374])
          [Q, X**2 - 17**215] /\
    eqmod (F**2) (poly X [L0x7fffffffb296,L0x7fffffffb2b6])
          [Q, X**2 - 17** 55] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d6,L0x7fffffffb2f6])
          [Q, X**2 - 17**183] /\
    eqmod (F**2) (poly X [L0x7fffffffb316,L0x7fffffffb336])
          [Q, X**2 - 17**119] /\
    eqmod (F**2) (poly X [L0x7fffffffb356,L0x7fffffffb376])
          [Q, X**2 - 17**247] /\
    eqmod (F**2) (poly X [L0x7fffffffb298,L0x7fffffffb2b8])
          [Q, X**2 - 17** 15] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d8,L0x7fffffffb2f8])
          [Q, X**2 - 17**143] /\
    eqmod (F**2) (poly X [L0x7fffffffb318,L0x7fffffffb338])
          [Q, X**2 - 17** 79] /\
    eqmod (F**2) (poly X [L0x7fffffffb358,L0x7fffffffb378])
          [Q, X**2 - 17**207] /\
    eqmod (F**2) (poly X [L0x7fffffffb29a,L0x7fffffffb2ba])
          [Q, X**2 - 17** 47] /\
    eqmod (F**2) (poly X [L0x7fffffffb2da,L0x7fffffffb2fa])
          [Q, X**2 - 17**175] /\
    eqmod (F**2) (poly X [L0x7fffffffb31a,L0x7fffffffb33a])
          [Q, X**2 - 17**111] /\
    eqmod (F**2) (poly X [L0x7fffffffb35a,L0x7fffffffb37a])
          [Q, X**2 - 17**239] /\
    eqmod (F**2) (poly X [L0x7fffffffb29c,L0x7fffffffb2bc])
          [Q, X**2 - 17** 31] /\
    eqmod (F**2) (poly X [L0x7fffffffb2dc,L0x7fffffffb2fc])
          [Q, X**2 - 17**159] /\
    eqmod (F**2) (poly X [L0x7fffffffb31c,L0x7fffffffb33c])
          [Q, X**2 - 17** 95] /\
    eqmod (F**2) (poly X [L0x7fffffffb35c,L0x7fffffffb37c])
          [Q, X**2 - 17**223] /\
    eqmod (F**2) (poly X [L0x7fffffffb29e,L0x7fffffffb2be])
          [Q, X**2 - 17** 63] /\
    eqmod (F**2) (poly X [L0x7fffffffb2de,L0x7fffffffb2fe])
          [Q, X**2 - 17**191] /\
    eqmod (F**2) (poly X [L0x7fffffffb31e,L0x7fffffffb33e])
          [Q, X**2 - 17**127] /\
    eqmod (F**2) (poly X [L0x7fffffffb35e,L0x7fffffffb37e])
          [Q, X**2 - 17**255]
    prove with [precondition]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] <s
    [Q, Q, Q, Q] /\
    [NQ, NQ, NQ, NQ] <s
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] <s
    [Q, Q, Q, Q]
    prove with [precondition];
    

(* #! -> SP = 0x7fffffff9958 *)
#! 0x7fffffff9958 = 0x7fffffff9958;
(* endbr64                                         #! PC = 0x55555556cbe0 *)
(* endbr64 *) nop;
(* push   %rbx                                     #! EA = L0x7fffffff9950; PC = 0x55555556cbe4 *)
(* push *) nop;
(* mov    %rdi,%rbx                                #! PC = 0x55555556cbe5 *)
(* mov %rdi, %rbx *) nop;
(* #call   0x55555556c400 <PQCLEAN_MLKEM768_AVX2_poly_invntt_tomont>#! PC = 0x55555556cbe8 *)
#call   0x55555556c400 <PQCLEAN_MLKEM768_AVX2_poly_invntt_tomont>#! 0x55555556cbe8 = 0x55555556cbe8;
(* #! -> SP = 0x7fffffff9948 *)
#! 0x7fffffff9948 = 0x7fffffff9948;
(* endbr64                                         #! PC = 0x55555556c400 *)
(* endbr64 *) nop;
(* lea    0xcc095(%rip),%rsi        # 0x5555556384a0 <PQCLEAN_MLKEM768_AVX2_qdata>#! PC = 0x55555556c404 *)
(* lea *) nop;
(* #jmp    0x55555556d7f9 <_PQCLEAN_MLKEM768_AVX2_invntt_avx>#! PC = 0x55555556c40b *)
#jmp    0x55555556d7f9 <_PQCLEAN_MLKEM768_AVX2_invntt_avx>#! 0x55555556c40b = 0x55555556c40b;
(* vmovdqa (%rsi),%ymm0                            #! EA = L0x5555556384a0; Value = 0x0d010d010d010d01; PC = 0x55555556d7f9 *)
mov %ymm0
    [L0x5555556384a0, L0x5555556384a2, L0x5555556384a4, L0x5555556384a6,
     L0x5555556384a8, L0x5555556384aa, L0x5555556384ac, L0x5555556384ae,
     L0x5555556384b0, L0x5555556384b2, L0x5555556384b4, L0x5555556384b6,
     L0x5555556384b8, L0x5555556384ba, L0x5555556384bc, L0x5555556384be];
(* vmovdqa 0x60(%rsi),%ymm2                        #! EA = L0x555555638500; Value = 0xd8a1d8a1d8a1d8a1; PC = 0x55555556d7fd *)
mov %ymm2
    [L0x555555638500, L0x555555638502, L0x555555638504, L0x555555638506,
     L0x555555638508, L0x55555563850a, L0x55555563850c, L0x55555563850e,
     L0x555555638510, L0x555555638512, L0x555555638514, L0x555555638516,
     L0x555555638518, L0x55555563851a, L0x55555563851c, L0x55555563851e];
(* vmovdqa 0x80(%rsi),%ymm3                        #! EA = L0x555555638520; Value = 0x05a105a105a105a1; PC = 0x55555556d802 *)
mov %ymm3
    [L0x555555638520, L0x555555638522, L0x555555638524, L0x555555638526,
     L0x555555638528, L0x55555563852a, L0x55555563852c, L0x55555563852e,
     L0x555555638530, L0x555555638532, L0x555555638534, L0x555555638536,
     L0x555555638538, L0x55555563853a, L0x55555563853c, L0x55555563853e];
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb180; Value = 0x03d7f281f7f70d6c; PC = 0x55555556d80a *)
mov %ymm4
    [L0x7fffffffb180, L0x7fffffffb182, L0x7fffffffb184, L0x7fffffffb186,
     L0x7fffffffb188, L0x7fffffffb18a, L0x7fffffffb18c, L0x7fffffffb18e,
     L0x7fffffffb190, L0x7fffffffb192, L0x7fffffffb194, L0x7fffffffb196,
     L0x7fffffffb198, L0x7fffffffb19a, L0x7fffffffb19c, L0x7fffffffb19e];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb1c0; Value = 0xf70df0b5fb4d02ed; PC = 0x55555556d80e *)
mov %ymm6
    [L0x7fffffffb1c0, L0x7fffffffb1c2, L0x7fffffffb1c4, L0x7fffffffb1c6,
     L0x7fffffffb1c8, L0x7fffffffb1ca, L0x7fffffffb1cc, L0x7fffffffb1ce,
     L0x7fffffffb1d0, L0x7fffffffb1d2, L0x7fffffffb1d4, L0x7fffffffb1d6,
     L0x7fffffffb1d8, L0x7fffffffb1da, L0x7fffffffb1dc, L0x7fffffffb1de];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb1a0; Value = 0x03bcf9acf1101120; PC = 0x55555556d813 *)
mov %ymm5
    [L0x7fffffffb1a0, L0x7fffffffb1a2, L0x7fffffffb1a4, L0x7fffffffb1a6,
     L0x7fffffffb1a8, L0x7fffffffb1aa, L0x7fffffffb1ac, L0x7fffffffb1ae,
     L0x7fffffffb1b0, L0x7fffffffb1b2, L0x7fffffffb1b4, L0x7fffffffb1b6,
     L0x7fffffffb1b8, L0x7fffffffb1ba, L0x7fffffffb1bc, L0x7fffffffb1be];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb1e0; Value = 0x029bfb480a4b0a9d; PC = 0x55555556d818 *)
mov %ymm7
    [L0x7fffffffb1e0, L0x7fffffffb1e2, L0x7fffffffb1e4, L0x7fffffffb1e6,
     L0x7fffffffb1e8, L0x7fffffffb1ea, L0x7fffffffb1ec, L0x7fffffffb1ee,
     L0x7fffffffb1f0, L0x7fffffffb1f2, L0x7fffffffb1f4, L0x7fffffffb1f6,
     L0x7fffffffb1f8, L0x7fffffffb1fa, L0x7fffffffb1fc, L0x7fffffffb1fe];
(* vpmullw %ymm2,%ymm4,%ymm12                      #! PC = 0x55555556d81d *)
smull %mulHymm4 %mulL %ymm2 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm4,%ymm4                       #! PC = 0x55555556d821 *)
smull %ymm4 %mulLymm4 %ymm3 %ymm4;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d825 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm4;
assume %red = %mulLymm4 && true;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556d829 *)
sub %ymm4 %ymm4 %ymm12;
(* vpmullw %ymm2,%ymm6,%ymm12                      #! PC = 0x55555556d82e *)
smull %mulHymm6 %mulL %ymm2 %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm6,%ymm6                       #! PC = 0x55555556d832 *)
smull %ymm6 %mulLymm6 %ymm3 %ymm6;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d836 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm6;
assume %red = %mulLymm6 && true;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556d83a *)
sub %ymm6 %ymm6 %ymm12;
(* vpmullw %ymm2,%ymm5,%ymm12                      #! PC = 0x55555556d83f *)
smull %mulHymm5 %mulL %ymm2 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm5,%ymm5                       #! PC = 0x55555556d843 *)
smull %ymm5 %mulLymm5 %ymm3 %ymm5;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d847 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpsubw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556d84b *)
sub %ymm5 %ymm5 %ymm12;
(* vpmullw %ymm2,%ymm7,%ymm12                      #! PC = 0x55555556d850 *)
smull %mulHymm7 %mulL %ymm2 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm7,%ymm7                       #! PC = 0x55555556d854 *)
smull %ymm7 %mulLymm7 %ymm3 %ymm7;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d858 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpsubw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556d85c *)
sub %ymm7 %ymm7 %ymm12;


(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb200; Value = 0xffe70db5f4ea009a; PC = 0x55555556d861 *)
mov %ymm8
    [L0x7fffffffb200, L0x7fffffffb202, L0x7fffffffb204, L0x7fffffffb206,
     L0x7fffffffb208, L0x7fffffffb20a, L0x7fffffffb20c, L0x7fffffffb20e,
     L0x7fffffffb210, L0x7fffffffb212, L0x7fffffffb214, L0x7fffffffb216,
     L0x7fffffffb218, L0x7fffffffb21a, L0x7fffffffb21c, L0x7fffffffb21e];
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb240; Value = 0x03750ea0ed860506; PC = 0x55555556d869 *)
mov %ymm10
    [L0x7fffffffb240, L0x7fffffffb242, L0x7fffffffb244, L0x7fffffffb246,
     L0x7fffffffb248, L0x7fffffffb24a, L0x7fffffffb24c, L0x7fffffffb24e,
     L0x7fffffffb250, L0x7fffffffb252, L0x7fffffffb254, L0x7fffffffb256,
     L0x7fffffffb258, L0x7fffffffb25a, L0x7fffffffb25c, L0x7fffffffb25e];
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb220; Value = 0xffcfe8a400e2f9ee; PC = 0x55555556d871 *)
mov %ymm9
    [L0x7fffffffb220, L0x7fffffffb222, L0x7fffffffb224, L0x7fffffffb226,
     L0x7fffffffb228, L0x7fffffffb22a, L0x7fffffffb22c, L0x7fffffffb22e,
     L0x7fffffffb230, L0x7fffffffb232, L0x7fffffffb234, L0x7fffffffb236,
     L0x7fffffffb238, L0x7fffffffb23a, L0x7fffffffb23c, L0x7fffffffb23e];
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb260; Value = 0xfec81491ffe4034d; PC = 0x55555556d879 *)
mov %ymm11
    [L0x7fffffffb260, L0x7fffffffb262, L0x7fffffffb264, L0x7fffffffb266,
     L0x7fffffffb268, L0x7fffffffb26a, L0x7fffffffb26c, L0x7fffffffb26e,
     L0x7fffffffb270, L0x7fffffffb272, L0x7fffffffb274, L0x7fffffffb276,
     L0x7fffffffb278, L0x7fffffffb27a, L0x7fffffffb27c, L0x7fffffffb27e];
(* vpmullw %ymm2,%ymm8,%ymm12                      #! PC = 0x55555556d881 *)
smull %mulHymm8 %mulL %ymm2 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x55555556d885 *)
smull %ymm8 %mulLymm8 %ymm3 %ymm8;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d889 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556d88d *)
sub %ymm8 %ymm8 %ymm12;
(* vpmullw %ymm2,%ymm10,%ymm12                     #! PC = 0x55555556d892 *)
smull %mulHymm10 %mulL %ymm2 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x55555556d896 *)
smull %ymm10 %mulLymm10 %ymm3 %ymm10;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d89a *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556d89e *)
sub %ymm10 %ymm10 %ymm12;
(* vpmullw %ymm2,%ymm9,%ymm12                      #! PC = 0x55555556d8a3 *)
smull %mulHymm9 %mulL %ymm2 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x55555556d8a7 *)
smull %ymm9 %mulLymm9 %ymm3 %ymm9;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d8ab *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556d8af *)
sub %ymm9 %ymm9 %ymm12;
(* vpmullw %ymm2,%ymm11,%ymm12                     #! PC = 0x55555556d8b4 *)
smull %mulHymm11 %mulL %ymm2 %ymm11;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x55555556d8b8 *)
smull %ymm11 %mulLymm11 %ymm3 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556d8bc *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpsubw %ymm12,%ymm11,%ymm11                     #! PC = 0x55555556d8c0 *)
sub %ymm11 %ymm11 %ymm12;
(* vpermq $0x4e,0x4a0(%rsi),%ymm15                 #! EA = L0x555555638940; Value = 0x81803bfb08624f49; PC = 0x55555556d8c5 *)
mov %ymm15
    [L0x555555638950,L0x555555638952,L0x555555638954,L0x555555638956,
     L0x555555638958,L0x55555563895a,L0x55555563895c,L0x55555563895e,
     L0x555555638940,L0x555555638942,L0x555555638944,L0x555555638946,
     L0x555555638948,L0x55555563894a,L0x55555563894c,L0x55555563894e];
(* vpermq $0x4e,0x460(%rsi),%ymm1                  #! EA = L0x555555638900; Value = 0x5f47e32a635b8631; PC = 0x55555556d8cf *)
mov %ymm1
    [L0x555555638910,L0x555555638912,L0x555555638914,L0x555555638916,
     L0x555555638918,L0x55555563891a,L0x55555563891c,L0x55555563891e,
     L0x555555638900,L0x555555638902,L0x555555638904,L0x555555638906,
     L0x555555638908,L0x55555563890a,L0x55555563890c,L0x55555563890e];
(* vpermq $0x4e,0x4c0(%rsi),%ymm2                  #! EA = L0x555555638960; Value = 0x0180fafb02620449; PC = 0x55555556d8d9 *)
mov %ymm2
    [L0x555555638970,L0x555555638972,L0x555555638974,L0x555555638976,
     L0x555555638978,L0x55555563897a,L0x55555563897c,L0x55555563897e,
     L0x555555638960,L0x555555638962,L0x555555638964,L0x555555638966,
     L0x555555638968,L0x55555563896a,L0x55555563896c,L0x55555563896e];
(* vpermq $0x4e,0x480(%rsi),%ymm3                  #! EA = L0x555555638920; Value = 0xfa47052a025b0331; PC = 0x55555556d8e3 *)
mov %ymm3
    [L0x555555638930,L0x555555638932,L0x555555638934,L0x555555638936,
     L0x555555638938,L0x55555563893a,L0x55555563893c,L0x55555563893e,
     L0x555555638920,L0x555555638922,L0x555555638924,L0x555555638926,
     L0x555555638928,L0x55555563892a,L0x55555563892c,L0x55555563892e];
(* vmovdqa 0x100(%rsi),%ymm12                      #! EA = L0x5555556385a0; Value = 0x09080b0a0d0c0f0e; PC = 0x55555556d8ed *)
mov %ymm12
    [L0x5555556385a0, L0x5555556385a2, L0x5555556385a4, L0x5555556385a6,
     L0x5555556385a8, L0x5555556385aa, L0x5555556385ac, L0x5555556385ae,
     L0x5555556385b0, L0x5555556385b2, L0x5555556385b4, L0x5555556385b6,
     L0x5555556385b8, L0x5555556385ba, L0x5555556385bc, L0x5555556385be];
(* vpshufb %ymm12,%ymm15,%ymm15                    #! PC = 0x55555556d8f5 *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm15
    [%ymm15[7],%ymm15[6],%ymm15[5],%ymm15[4],
     %ymm15[3],%ymm15[2],%ymm15[1],%ymm15[0],
     %ymm15[15],%ymm15[14],%ymm15[13],%ymm15[12],
     %ymm15[11],%ymm15[10],%ymm15[9],%ymm15[8]];
(* vpshufb %ymm12,%ymm1,%ymm1                      #! PC = 0x55555556d8fa *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm1
    [%ymm1[7],%ymm1[6],%ymm1[5],%ymm1[4],
     %ymm1[3],%ymm1[2],%ymm1[1],%ymm1[0],
     %ymm1[15],%ymm1[14],%ymm1[13],%ymm1[12],
     %ymm1[11],%ymm1[10],%ymm1[9],%ymm1[8]];
(* vpshufb %ymm12,%ymm2,%ymm2                      #! PC = 0x55555556d8ff *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm2
    [%ymm2[7],%ymm2[6],%ymm2[5],%ymm2[4],
     %ymm2[3],%ymm2[2],%ymm2[1],%ymm2[0],
     %ymm2[15],%ymm2[14],%ymm2[13],%ymm2[12],
     %ymm2[11],%ymm2[10],%ymm2[9],%ymm2[8]];
(* vpshufb %ymm12,%ymm3,%ymm3                      #! PC = 0x55555556d904 *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm3
    [%ymm3[7],%ymm3[6],%ymm3[5],%ymm3[4],
     %ymm3[3],%ymm3[2],%ymm3[1],%ymm3[0],
     %ymm3[15],%ymm3[14],%ymm3[13],%ymm3[12],
     %ymm3[11],%ymm3[10],%ymm3[9],%ymm3[8]];
(* vpsubw %ymm4,%ymm6,%ymm12                       #! PC = 0x55555556d909 *)
sub %ymm12 %ymm6 %ymm4;
(* vpaddw %ymm6,%ymm4,%ymm4                        #! PC = 0x55555556d90d *)
add %ymm4 %ymm6 %ymm4;
(* vpsubw %ymm5,%ymm7,%ymm13                       #! PC = 0x55555556d911 *)
sub %ymm13 %ymm7 %ymm5;
(* vpmullw %ymm15,%ymm12,%ymm6                     #! PC = 0x55555556d915 *)
smull %mulHymm12 %mulL %ymm15 %ymm12;
cast %ymm6@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556d91a *)
add %ymm5 %ymm7 %ymm5;
(* vpsubw %ymm8,%ymm10,%ymm14                      #! PC = 0x55555556d91e *)
sub %ymm14 %ymm10 %ymm8;
(* vpmullw %ymm15,%ymm13,%ymm7                     #! PC = 0x55555556d923 *)
smull %mulHymm13 %mulL %ymm15 %ymm13;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm8,%ymm8                       #! PC = 0x55555556d928 *)
add %ymm8 %ymm10 %ymm8;
(* vpsubw %ymm9,%ymm11,%ymm15                      #! PC = 0x55555556d92d *)
sub %ymm15 %ymm11 %ymm9;
(* vpmullw %ymm1,%ymm14,%ymm10                     #! PC = 0x55555556d932 *)
smull %mulHymm14 %mulL %ymm1 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm9,%ymm9                       #! PC = 0x55555556d936 *)
add %ymm9 %ymm11 %ymm9;
(* vpmullw %ymm1,%ymm15,%ymm11                     #! PC = 0x55555556d93b *)
smull %mulHymm15 %mulL %ymm1 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm12,%ymm12                     #! PC = 0x55555556d93f *)
smull %ymm12 %mulLymm12 %ymm2 %ymm12;
(* vpmulhw %ymm2,%ymm13,%ymm13                     #! PC = 0x55555556d943 *)
smull %ymm13 %mulLymm13 %ymm2 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556d947 *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556d94b *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm6,%ymm6                       #! PC = 0x55555556d94f *)
smull %ymm6 %red %ymm6 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556d953 *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556d957 *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556d95b *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm6,%ymm12,%ymm6                       #! PC = 0x55555556d95f *)
sub %ymm6 %ymm12 %ymm6;
(* vpsubw %ymm7,%ymm13,%ymm7                       #! PC = 0x55555556d963 *)
sub %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556d967 *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556d96c *)
sub %ymm11 %ymm15 %ymm11;

(******************** LEVEL 6 0 ********************)
(* CUT 2 1 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (1024*F**2) (poly X [%ymm4[0], %ymm5[0], %ymm6[0], %ymm7[0]])
          [Q, X**4 - 17**  2] /\
    eqmod (1024*F**2) (poly X [%ymm8[0], %ymm9[0], %ymm10[0], %ymm11[0]])
          [Q, X**4 - 17**130] /\
    eqmod (1024*F**2) (poly X [%ymm4[1], %ymm5[1], %ymm6[1], %ymm7[1]])
          [Q, X**4 - 17** 66] /\
    eqmod (1024*F**2) (poly X [%ymm8[1], %ymm9[1], %ymm10[1], %ymm11[1]])
          [Q, X**4 - 17**194] /\
    eqmod (1024*F**2) (poly X [%ymm4[2], %ymm5[2], %ymm6[2], %ymm7[2]])
          [Q, X**4 - 17** 34] /\
    eqmod (1024*F**2) (poly X [%ymm8[2], %ymm9[2], %ymm10[2], %ymm11[2]])
          [Q, X**4 - 17**162] /\
    eqmod (1024*F**2) (poly X [%ymm4[3], %ymm5[3], %ymm6[3], %ymm7[3]])
          [Q, X**4 - 17** 98] /\
    eqmod (1024*F**2) (poly X [%ymm8[3], %ymm9[3], %ymm10[3], %ymm11[3]])
          [Q, X**4 - 17**226] /\
    eqmod (1024*F**2) (poly X [%ymm4[4], %ymm5[4], %ymm6[4], %ymm7[4]])
          [Q, X**4 - 17** 18] /\
    eqmod (1024*F**2) (poly X [%ymm8[4], %ymm9[4], %ymm10[4], %ymm11[4]])
          [Q, X**4 - 17**146] /\
    eqmod (1024*F**2) (poly X [%ymm4[5], %ymm5[5], %ymm6[5], %ymm7[5]])
          [Q, X**4 - 17** 82] /\
    eqmod (1024*F**2) (poly X [%ymm8[5], %ymm9[5], %ymm10[5], %ymm11[5]])
          [Q, X**4 - 17**210] /\
    eqmod (1024*F**2) (poly X [%ymm4[6], %ymm5[6], %ymm6[6], %ymm7[6]])
          [Q, X**4 - 17** 50] /\
    eqmod (1024*F**2) (poly X [%ymm8[6], %ymm9[6], %ymm10[6], %ymm11[6]])
          [Q, X**4 - 17**178] /\
    eqmod (1024*F**2) (poly X [%ymm4[7], %ymm5[7], %ymm6[7], %ymm7[7]])
          [Q, X**4 - 17**114] /\
    eqmod (1024*F**2) (poly X [%ymm8[7], %ymm9[7], %ymm10[7], %ymm11[7]])
          [Q, X**4 - 17**242] /\
    eqmod (1024*F**2) (poly X [%ymm4[8], %ymm5[8], %ymm6[8], %ymm7[8]])
          [Q, X**4 - 17** 10] /\
    eqmod (1024*F**2) (poly X [%ymm8[8], %ymm9[8], %ymm10[8], %ymm11[8]])
          [Q, X**4 - 17**138] /\
    eqmod (1024*F**2) (poly X [%ymm4[9], %ymm5[9], %ymm6[9], %ymm7[9]])
          [Q, X**4 - 17** 74] /\
    eqmod (1024*F**2) (poly X [%ymm8[9], %ymm9[9], %ymm10[9], %ymm11[9]])
          [Q, X**4 - 17**202] /\
    eqmod (1024*F**2) (poly X [%ymm4[10], %ymm5[10], %ymm6[10], %ymm7[10]])
          [Q, X**4 - 17** 42] /\
    eqmod (1024*F**2) (poly X [%ymm8[10], %ymm9[10], %ymm10[10], %ymm11[10]])
          [Q, X**4 - 17**170] /\
    eqmod (1024*F**2) (poly X [%ymm4[11], %ymm5[11], %ymm6[11], %ymm7[11]])
          [Q, X**4 - 17**106] /\
    eqmod (1024*F**2) (poly X [%ymm8[11], %ymm9[11], %ymm10[11], %ymm11[11]])
          [Q, X**4 - 17**234] /\
    eqmod (1024*F**2) (poly X [%ymm4[12], %ymm5[12], %ymm6[12], %ymm7[12]])
          [Q, X**4 - 17** 26] /\
    eqmod (1024*F**2) (poly X [%ymm8[12], %ymm9[12], %ymm10[12], %ymm11[12]])
          [Q, X**4 - 17**154] /\
    eqmod (1024*F**2) (poly X [%ymm4[13], %ymm5[13], %ymm6[13], %ymm7[13]])
          [Q, X**4 - 17** 90] /\
    eqmod (1024*F**2) (poly X [%ymm8[13], %ymm9[13], %ymm10[13], %ymm11[13]])
          [Q, X**4 - 17**218] /\
    eqmod (1024*F**2) (poly X [%ymm4[14], %ymm5[14], %ymm6[14], %ymm7[14]])
          [Q, X**4 - 17** 58] /\
    eqmod (1024*F**2) (poly X [%ymm8[14], %ymm9[14], %ymm10[14], %ymm11[14]])
          [Q, X**4 - 17**186] /\
    eqmod (1024*F**2) (poly X [%ymm4[15], %ymm5[15], %ymm6[15], %ymm7[15]])
          [Q, X**4 - 17**122] /\
    eqmod (1024*F**2) (poly X [%ymm8[15], %ymm9[15], %ymm10[15], %ymm11[15]])
          [Q, X**4 - 17**250]
    prove with [cuts [0]];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm4 /\ %ymm4 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm5 /\ %ymm5 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm7 /\ %ymm7 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm8 /\ %ymm8 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm9 /\ %ymm9 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm10 /\ %ymm10 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2]
    prove with [cuts [0]];
*)

(* vpermq $0x4e,0x420(%rsi),%ymm2                  #! EA = L0x5555556388c0; Value = 0xdd3ec1f191a64dab; PC = 0x55555556d971 *)
mov %ymm2
    [L0x5555556388d0,L0x5555556388d2,L0x5555556388d4,L0x5555556388d6,
     L0x5555556388d8,L0x5555556388da,L0x5555556388dc,L0x5555556388de,
     L0x5555556388c0,L0x5555556388c2,L0x5555556388c4,L0x5555556388c6,
     L0x5555556388c8,L0x5555556388ca,L0x5555556388cc,L0x5555556388ce];
(* vpermq $0x4e,0x440(%rsi),%ymm3                  #! EA = L0x5555556388e0; Value = 0x033efef1ffa6fcab; PC = 0x55555556d97b *)
mov %ymm3
    [L0x5555556388f0,L0x5555556388f2,L0x5555556388f4,L0x5555556388f6,
     L0x5555556388f8,L0x5555556388fa,L0x5555556388fc,L0x5555556388fe,
     L0x5555556388e0,L0x5555556388e2,L0x5555556388e4,L0x5555556388e6,
     L0x5555556388e8,L0x5555556388ea,L0x5555556388ec,L0x5555556388ee];
(* vmovdqa 0x100(%rsi),%ymm1                       #! EA = L0x5555556385a0; Value = 0x09080b0a0d0c0f0e; PC = 0x55555556d985 *)
mov %ymm1
    [L0x5555556385a0, L0x5555556385a2, L0x5555556385a4, L0x5555556385a6,
     L0x5555556385a8, L0x5555556385aa, L0x5555556385ac, L0x5555556385ae,
     L0x5555556385b0, L0x5555556385b2, L0x5555556385b4, L0x5555556385b6,
     L0x5555556385b8, L0x5555556385ba, L0x5555556385bc, L0x5555556385be];
(* vpshufb %ymm1,%ymm2,%ymm2                       #! PC = 0x55555556d98d *)
assert true && %ymm1 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                        0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm2
    [%ymm2[7],%ymm2[6],%ymm2[5],%ymm2[4],
     %ymm2[3],%ymm2[2],%ymm2[1],%ymm2[0],
     %ymm2[15],%ymm2[14],%ymm2[13],%ymm2[12],
     %ymm2[11],%ymm2[10],%ymm2[9],%ymm2[8]];
(* vpshufb %ymm1,%ymm3,%ymm3                       #! PC = 0x55555556d992 *)
assert true && %ymm1 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                        0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm3
    [%ymm3[7],%ymm3[6],%ymm3[5],%ymm3[4],
     %ymm3[3],%ymm3[2],%ymm3[1],%ymm3[0],
     %ymm3[15],%ymm3[14],%ymm3[13],%ymm3[12],
     %ymm3[11],%ymm3[10],%ymm3[9],%ymm3[8]];
(* vpsubw %ymm4,%ymm8,%ymm12                       #! PC = 0x55555556d997 *)
sub %ymm12 %ymm8 %ymm4;
(* vpaddw %ymm8,%ymm4,%ymm4                        #! PC = 0x55555556d99b *)
add %ymm4 %ymm8 %ymm4;
(* vpsubw %ymm5,%ymm9,%ymm13                       #! PC = 0x55555556d9a0 *)
sub %ymm13 %ymm9 %ymm5;
(* vpmullw %ymm2,%ymm12,%ymm8                      #! PC = 0x55555556d9a4 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556d9a8 *)
add %ymm5 %ymm9 %ymm5;
(* vpsubw %ymm6,%ymm10,%ymm14                      #! PC = 0x55555556d9ad *)
sub %ymm14 %ymm10 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm9                      #! PC = 0x55555556d9b1 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm6,%ymm6                       #! PC = 0x55555556d9b5 *)
add %ymm6 %ymm10 %ymm6;
(* vpsubw %ymm7,%ymm11,%ymm15                      #! PC = 0x55555556d9ba *)
sub %ymm15 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm14,%ymm10                     #! PC = 0x55555556d9be *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556d9c2 *)
add %ymm7 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556d9c7 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm12,%ymm12                     #! PC = 0x55555556d9cb *)
smull %ymm12 %mulLymm12 %ymm3 %ymm12;
(* vpmulhw %ymm3,%ymm13,%ymm13                     #! PC = 0x55555556d9cf *)
smull %ymm13 %mulLymm13 %ymm3 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556d9d3 *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556d9d7 *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556d9db *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556d9df *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556d9e3 *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556d9e7 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm8,%ymm12,%ymm8                       #! PC = 0x55555556d9eb *)
sub %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm9,%ymm13,%ymm9                       #! PC = 0x55555556d9f0 *)
sub %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556d9f5 *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556d9fa *)
sub %ymm11 %ymm15 %ymm11;
(* vpslld $0x10,%ymm5,%ymm3                        #! PC = 0x55555556d9ff *)
mov %ymm3
    [0@int16,%ymm5[0],0@int16,%ymm5[2],
     0@int16,%ymm5[4],0@int16,%ymm5[6],
     0@int16,%ymm5[8],0@int16,%ymm5[10],
     0@int16,%ymm5[12],0@int16,%ymm5[14]];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556da04 *)
mov %ymm3
    [%ymm4[0],%ymm3[1],%ymm4[2],%ymm3[3],
     %ymm4[4],%ymm3[5],%ymm4[6],%ymm3[7],
     %ymm4[8],%ymm3[9],%ymm4[10],%ymm3[11],
     %ymm4[12],%ymm3[13],%ymm4[14],%ymm3[15]];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556da0a *)
mov %ymm4
    [%ymm4[1],0@int16,%ymm4[3],0@int16,
     %ymm4[5],0@int16,%ymm4[7],0@int16,
     %ymm4[9],0@int16,%ymm4[11],0@int16,
     %ymm4[13],0@int16,%ymm4[15],0@int16];
(* vpblendw $0xaa,%ymm5,%ymm4,%ymm5                #! PC = 0x55555556da0f *)
mov %ymm5
    [%ymm4[0],%ymm5[1],%ymm4[2],%ymm5[3],
     %ymm4[4],%ymm5[5],%ymm4[6],%ymm5[7],
     %ymm4[8],%ymm5[9],%ymm4[10],%ymm5[11],
     %ymm4[12],%ymm5[13],%ymm4[14],%ymm5[15]];
(* vpslld $0x10,%ymm7,%ymm4                        #! PC = 0x55555556da15 *)
mov %ymm4
    [0@int16,%ymm7[0],0@int16,%ymm7[2],
     0@int16,%ymm7[4],0@int16,%ymm7[6],
     0@int16,%ymm7[8],0@int16,%ymm7[10],
     0@int16,%ymm7[12],0@int16,%ymm7[14]];
(* vpblendw $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556da1a *)
mov %ymm4
    [%ymm6[0],%ymm4[1],%ymm6[2],%ymm4[3],
     %ymm6[4],%ymm4[5],%ymm6[6],%ymm4[7],
     %ymm6[8],%ymm4[9],%ymm6[10],%ymm4[11],
     %ymm6[12],%ymm4[13],%ymm6[14],%ymm4[15]];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556da20 *)
mov %ymm6
    [%ymm6[1],0@int16,%ymm6[3],0@int16,
     %ymm6[5],0@int16,%ymm6[7],0@int16,
     %ymm6[9],0@int16,%ymm6[11],0@int16,
     %ymm6[13],0@int16,%ymm6[15],0@int16];
(* vpblendw $0xaa,%ymm7,%ymm6,%ymm7                #! PC = 0x55555556da25 *)
mov %ymm7
    [%ymm6[0],%ymm7[1],%ymm6[2],%ymm7[3],
     %ymm6[4],%ymm7[5],%ymm6[6],%ymm7[7],
     %ymm6[8],%ymm7[9],%ymm6[10],%ymm7[11],
     %ymm6[12],%ymm7[13],%ymm6[14],%ymm7[15]];
(* vpslld $0x10,%ymm9,%ymm6                        #! PC = 0x55555556da2b *)
mov %ymm6
    [0@int16,%ymm9[0],0@int16,%ymm9[2],
     0@int16,%ymm9[4],0@int16,%ymm9[6],
     0@int16,%ymm9[8],0@int16,%ymm9[10],
     0@int16,%ymm9[12],0@int16,%ymm9[14]];
(* vpblendw $0xaa,%ymm6,%ymm8,%ymm6                #! PC = 0x55555556da31 *)
mov %ymm6
    [%ymm8[0],%ymm6[1],%ymm8[2],%ymm6[3],
     %ymm8[4],%ymm6[5],%ymm8[6],%ymm6[7],
     %ymm8[8],%ymm6[9],%ymm8[10],%ymm6[11],
     %ymm8[12],%ymm6[13],%ymm8[14],%ymm6[15]];
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x55555556da37 *)
mov %ymm8
    [%ymm8[1],0@int16,%ymm8[3],0@int16,
     %ymm8[5],0@int16,%ymm8[7],0@int16,
     %ymm8[9],0@int16,%ymm8[11],0@int16,
     %ymm8[13],0@int16,%ymm8[15],0@int16];
(* vpblendw $0xaa,%ymm9,%ymm8,%ymm9                #! PC = 0x55555556da3d *)
mov %ymm9
    [%ymm8[0],%ymm9[1],%ymm8[2],%ymm9[3],
     %ymm8[4],%ymm9[5],%ymm8[6],%ymm9[7],
     %ymm8[8],%ymm9[9],%ymm8[10],%ymm9[11],
     %ymm8[12],%ymm9[13],%ymm8[14],%ymm9[15]];
(* vpslld $0x10,%ymm11,%ymm8                       #! PC = 0x55555556da43 *)
mov %ymm8
    [0@int16,%ymm11[0],0@int16,%ymm11[2],
     0@int16,%ymm11[4],0@int16,%ymm11[6],
     0@int16,%ymm11[8],0@int16,%ymm11[10],
     0@int16,%ymm11[12],0@int16,%ymm11[14]];
(* vpblendw $0xaa,%ymm8,%ymm10,%ymm8               #! PC = 0x55555556da49 *)
mov %ymm8
    [%ymm10[0],%ymm8[1],%ymm10[2],%ymm8[3],
     %ymm10[4],%ymm8[5],%ymm10[6],%ymm8[7],
     %ymm10[8],%ymm8[9],%ymm10[10],%ymm8[11],
     %ymm10[12],%ymm8[13],%ymm10[14],%ymm8[15]];
(* vpsrld $0x10,%ymm10,%ymm10                      #! PC = 0x55555556da4f *)
mov %ymm10
    [%ymm10[1],0@int16,%ymm10[3],0@int16,
     %ymm10[5],0@int16,%ymm10[7],0@int16,
     %ymm10[9],0@int16,%ymm10[11],0@int16,
     %ymm10[13],0@int16,%ymm10[15],0@int16];
(* vpblendw $0xaa,%ymm11,%ymm10,%ymm11             #! PC = 0x55555556da55 *)
mov %ymm11
    [%ymm10[0],%ymm11[1],%ymm10[2],%ymm11[3],
     %ymm10[4],%ymm11[5],%ymm10[6],%ymm11[7],
     %ymm10[8],%ymm11[9],%ymm10[10],%ymm11[11],
     %ymm10[12],%ymm11[13],%ymm10[14],%ymm11[15]];

(******************** LEVEL 5 0 ********************)
(* CUT 3 1 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                   %ymm6[0],%ymm6[1],%ymm8[0],%ymm8[1]])
          (2048*F**2) [Q, X**8 - 17**  4] /\
    eqmod (poly X [%ymm5[0],%ymm5[1],%ymm7[0],%ymm7[1],
                   %ymm9[0],%ymm9[1],%ymm11[0],%ymm11[1]])
          (2048*F**2) [Q, X**8 - 17**132] /\
    eqmod (poly X [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                   %ymm6[2],%ymm6[3],%ymm8[2],%ymm8[3]])
          (2048*F**2) [Q, X**8 - 17** 68] /\
    eqmod (poly X [%ymm5[2],%ymm5[3],%ymm7[2],%ymm7[3],
                   %ymm9[2],%ymm9[3],%ymm11[2],%ymm11[3]])
          (2048*F**2) [Q, X**8 - 17**196] /\
    eqmod (poly X [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                   %ymm6[4],%ymm6[5],%ymm8[4],%ymm8[5]])
          (2048*F**2) [Q, X**8 - 17** 36] /\
    eqmod (poly X [%ymm5[4],%ymm5[5],%ymm7[4],%ymm7[5],
                   %ymm9[4],%ymm9[5],%ymm11[4],%ymm11[5]])
          (2048*F**2) [Q, X**8 - 17**164] /\
    eqmod (poly X [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                   %ymm6[6],%ymm6[7],%ymm8[6],%ymm8[7]])
          (2048*F**2) [Q, X**8 - 17**100] /\
    eqmod (poly X [%ymm5[6],%ymm5[7],%ymm7[6],%ymm7[7],
                   %ymm9[6],%ymm9[7],%ymm11[6],%ymm11[7]])
          (2048*F**2) [Q, X**8 - 17**228] /\
    eqmod (poly X [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                   %ymm6[8],%ymm6[9],%ymm8[8],%ymm8[9]])
          (2048*F**2) [Q, X**8 - 17** 20] /\
    eqmod (poly X [%ymm5[8],%ymm5[9],%ymm7[8],%ymm7[9],
                   %ymm9[8],%ymm9[9],%ymm11[8],%ymm11[9]])
          (2048*F**2) [Q, X**8 - 17**148] /\
    eqmod (poly X [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                   %ymm6[10],%ymm6[11],%ymm8[10],%ymm8[11]])
          (2048*F**2) [Q, X**8 - 17** 84] /\
    eqmod (poly X [%ymm5[10],%ymm5[11],%ymm7[10],%ymm7[11],
                   %ymm9[10],%ymm9[11],%ymm11[10],%ymm11[11]])
          (2048*F**2) [Q, X**8 - 17**212] /\
    eqmod (poly X [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                   %ymm6[12],%ymm6[13],%ymm8[12],%ymm8[13]])
          (2048*F**2) [Q, X**8 - 17** 52] /\
    eqmod (poly X [%ymm5[12],%ymm5[13],%ymm7[12],%ymm7[13],
                   %ymm9[12],%ymm9[13],%ymm11[12],%ymm11[13]])
          (2048*F**2) [Q, X**8 - 17**180] /\
    eqmod (poly X [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                   %ymm6[14],%ymm6[15],%ymm8[14],%ymm8[15]])
          (2048*F**2) [Q, X**8 - 17**116] /\
    eqmod (poly X [%ymm5[14],%ymm5[15],%ymm7[14],%ymm7[15],
                   %ymm9[14],%ymm9[15],%ymm11[14],%ymm11[15]])
          (2048*F**2) [Q, X**8 - 17**244];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm3 /\ %ymm3 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2]<s
    %ymm4 /\ %ymm4 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm5 /\ %ymm5 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2]<s
    %ymm7 /\ %ymm7 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm8 /\ %ymm8 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm9 /\ %ymm9 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2];
*)

(* vmovdqa 0x120(%rsi),%ymm12                      #! EA = L0x5555556385c0; Value = 0x0000000600000007; PC = 0x55555556da5b *)
mov %ymm12
    [L0x5555556385c0, L0x5555556385c2, L0x5555556385c4, L0x5555556385c6,
     L0x5555556385c8, L0x5555556385ca, L0x5555556385cc, L0x5555556385ce,
     L0x5555556385d0, L0x5555556385d2, L0x5555556385d4, L0x5555556385d6,
     L0x5555556385d8, L0x5555556385da, L0x5555556385dc, L0x5555556385de];
(* vpermd 0x3e0(%rsi),%ymm12,%ymm2                 #! EA = L0x555555638880; Value = 0x5ef95ef992579257; PC = 0x55555556da63 *)
assert true && %ymm12 = [7@16, 0@16, 6@16, 0@16, 5@16, 0@16, 4@16, 0@16,
                         3@16, 0@16, 2@16, 0@16, 1@16, 0@16, 0@16, 0@16];
mov %ymm2
    [L0x55555563889c,L0x55555563889e,L0x555555638898,L0x55555563889a,
     L0x555555638894,L0x555555638896,L0x555555638890,L0x555555638892,
     L0x55555563888c,L0x55555563888e,L0x555555638888,L0x55555563888a,
     L0x555555638884,L0x555555638886,L0x555555638880,L0x555555638882];
(* vpermd 0x400(%rsi),%ymm12,%ymm10                #! EA = L0x5555556388a0; Value = 0x03f903f9fd57fd57; PC = 0x55555556da6c *)
assert true && %ymm12 = [7@16, 0@16, 6@16, 0@16, 5@16, 0@16, 4@16, 0@16,
                         3@16, 0@16, 2@16, 0@16, 1@16, 0@16, 0@16, 0@16];
mov %ymm10
    [L0x5555556388bc,L0x5555556388be,L0x5555556388b8,L0x5555556388ba,
     L0x5555556388b4,L0x5555556388b6,L0x5555556388b0,L0x5555556388b2,
     L0x5555556388ac,L0x5555556388ae,L0x5555556388a8,L0x5555556388aa,
     L0x5555556388a4,L0x5555556388a6,L0x5555556388a0,L0x5555556388a2];
(* vpsubw %ymm3,%ymm5,%ymm12                       #! PC = 0x55555556da75 *)
sub %ymm12 %ymm5 %ymm3;
(* vpaddw %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556da79 *)
add %ymm3 %ymm5 %ymm3;
(* vpsubw %ymm4,%ymm7,%ymm13                       #! PC = 0x55555556da7d *)
sub %ymm13 %ymm7 %ymm4;
(* vpmullw %ymm2,%ymm12,%ymm5                      #! PC = 0x55555556da81 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm4,%ymm4                        #! PC = 0x55555556da85 *)
add %ymm4 %ymm7 %ymm4;
(* vpsubw %ymm6,%ymm9,%ymm14                       #! PC = 0x55555556da89 *)
sub %ymm14 %ymm9 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm7                      #! PC = 0x55555556da8d *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm6,%ymm6                        #! PC = 0x55555556da91 *)
add %ymm6 %ymm9 %ymm6;
(* vpsubw %ymm8,%ymm11,%ymm15                      #! PC = 0x55555556da96 *)
sub %ymm15 %ymm11 %ymm8;
(* vpmullw %ymm2,%ymm14,%ymm9                      #! PC = 0x55555556da9b *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm8,%ymm8                       #! PC = 0x55555556da9f *)
add %ymm8 %ymm11 %ymm8;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556daa4 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm10,%ymm12,%ymm12                    #! PC = 0x55555556daa8 *)
smull %ymm12 %mulLymm12 %ymm10 %ymm12;
(* vpmulhw %ymm10,%ymm13,%ymm13                    #! PC = 0x55555556daad *)
smull %ymm13 %mulLymm13 %ymm10 %ymm13;
(* vpmulhw %ymm10,%ymm14,%ymm14                    #! PC = 0x55555556dab2 *)
smull %ymm14 %mulLymm14 %ymm10 %ymm14;
(* vpmulhw %ymm10,%ymm15,%ymm15                    #! PC = 0x55555556dab7 *)
smull %ymm15 %mulLymm15 %ymm10 %ymm15;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556dabc *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556dac0 *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556dac4 *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556dac8 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm5,%ymm12,%ymm5                       #! PC = 0x55555556dacc *)
sub %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm7,%ymm13,%ymm7                       #! PC = 0x55555556dad0 *)
sub %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm9,%ymm14,%ymm9                       #! PC = 0x55555556dad4 *)
sub %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556dad9 *)
sub %ymm11 %ymm15 %ymm11;
(* vmovdqa 0x40(%rsi),%ymm1                        #! EA = L0x5555556384e0; Value = 0x4ebf4ebf4ebf4ebf; PC = 0x55555556dade *)
mov %ymm1
    [L0x5555556384e0, L0x5555556384e2, L0x5555556384e4, L0x5555556384e6,
     L0x5555556384e8, L0x5555556384ea, L0x5555556384ec, L0x5555556384ee,
     L0x5555556384f0, L0x5555556384f2, L0x5555556384f4, L0x5555556384f6,
     L0x5555556384f8, L0x5555556384fa, L0x5555556384fc, L0x5555556384fe];
(* vpmulhw %ymm1,%ymm3,%ymm12                      #! PC = 0x55555556dae3 *)
smull %ymm12 %mulLymm3 %ymm1 %ymm3;
(* vpsraw $0xa,%ymm12,%ymm12                       #! PC = 0x55555556dae7 *)
split %ymm12 %sra %ymm12 10;
(* vpmullw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556daed *)
smul (* %mulHymm12 *) %mulL %ymm0 %ymm12;
cast %ymm12@sint16[16] %mulL;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556daf1 *)
sub %ymm3 %ymm3 %ymm12;
(* vmovsldup %ymm4,%ymm10                          #! PC = 0x55555556daf6 *)
mov %ymm10
    [%ymm4[0],%ymm4[1],%ymm4[0],%ymm4[1],
     %ymm4[4],%ymm4[5],%ymm4[4],%ymm4[5],
     %ymm4[8],%ymm4[9],%ymm4[8],%ymm4[9],
     %ymm4[12],%ymm4[13],%ymm4[12],%ymm4[13]];
(* vpblendd $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556dafa *)
mov %ymm10
    [%ymm3[0],%ymm3[1],%ymm10[2],%ymm10[3],
     %ymm3[4],%ymm3[5],%ymm10[6],%ymm10[7],
     %ymm3[8],%ymm3[9],%ymm10[10],%ymm10[11],
     %ymm3[12],%ymm3[13],%ymm10[14],%ymm10[15]];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556db00 *)
mov %ymm3
    [%ymm3[2],%ymm3[3],0@int16,0@int16,
     %ymm3[6],%ymm3[7],0@int16,0@int16,
     %ymm3[10],%ymm3[11],0@int16,0@int16,
     %ymm3[14],%ymm3[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm4,%ymm3,%ymm4                #! PC = 0x55555556db05 *)
mov %ymm4
    [%ymm3[0],%ymm3[1],%ymm4[2],%ymm4[3],
     %ymm3[4],%ymm3[5],%ymm4[6],%ymm4[7],
     %ymm3[8],%ymm3[9],%ymm4[10],%ymm4[11],
     %ymm3[12],%ymm3[13],%ymm4[14],%ymm4[15]];
(* vmovsldup %ymm8,%ymm3                           #! PC = 0x55555556db0b *)
mov %ymm3
    [%ymm8[0],%ymm8[1],%ymm8[0],%ymm8[1],
     %ymm8[4],%ymm8[5],%ymm8[4],%ymm8[5],
     %ymm8[8],%ymm8[9],%ymm8[8],%ymm8[9],
     %ymm8[12],%ymm8[13],%ymm8[12],%ymm8[13]];
(* vpblendd $0xaa,%ymm3,%ymm6,%ymm3                #! PC = 0x55555556db10 *)
mov %ymm3
    [%ymm6[0],%ymm6[1],%ymm3[2],%ymm3[3],
     %ymm6[4],%ymm6[5],%ymm3[6],%ymm3[7],
     %ymm6[8],%ymm6[9],%ymm3[10],%ymm3[11],
     %ymm6[12],%ymm6[13],%ymm3[14],%ymm3[15]];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556db16 *)
mov %ymm6
    [%ymm6[2],%ymm6[3],0@int16,0@int16,
     %ymm6[6],%ymm6[7],0@int16,0@int16,
     %ymm6[10],%ymm6[11],0@int16,0@int16,
     %ymm6[14],%ymm6[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm8,%ymm6,%ymm8                #! PC = 0x55555556db1b *)
mov %ymm8
    [%ymm6[0],%ymm6[1],%ymm8[2],%ymm8[3],
     %ymm6[4],%ymm6[5],%ymm8[6],%ymm8[7],
     %ymm6[8],%ymm6[9],%ymm8[10],%ymm8[11],
     %ymm6[12],%ymm6[13],%ymm8[14],%ymm8[15]];
(* vmovsldup %ymm7,%ymm6                           #! PC = 0x55555556db21 *)
mov %ymm6
    [%ymm7[0],%ymm7[1],%ymm7[0],%ymm7[1],
     %ymm7[4],%ymm7[5],%ymm7[4],%ymm7[5],
     %ymm7[8],%ymm7[9],%ymm7[8],%ymm7[9],
     %ymm7[12],%ymm7[13],%ymm7[12],%ymm7[13]];
(* vpblendd $0xaa,%ymm6,%ymm5,%ymm6                #! PC = 0x55555556db25 *)
mov %ymm6
    [%ymm5[0],%ymm5[1],%ymm6[2],%ymm6[3],
     %ymm5[4],%ymm5[5],%ymm6[6],%ymm6[7],
     %ymm5[8],%ymm5[9],%ymm6[10],%ymm6[11],
     %ymm5[12],%ymm5[13],%ymm6[14],%ymm6[15]];
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x55555556db2b *)
mov %ymm5
    [%ymm5[2],%ymm5[3],0@int16,0@int16,
     %ymm5[6],%ymm5[7],0@int16,0@int16,
     %ymm5[10],%ymm5[11],0@int16,0@int16,
     %ymm5[14],%ymm5[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x55555556db30 *)
mov %ymm7
    [%ymm5[0],%ymm5[1],%ymm7[2],%ymm7[3],
     %ymm5[4],%ymm5[5],%ymm7[6],%ymm7[7],
     %ymm5[8],%ymm5[9],%ymm7[10],%ymm7[11],
     %ymm5[12],%ymm5[13],%ymm7[14],%ymm7[15]];
(* vmovsldup %ymm11,%ymm5                          #! PC = 0x55555556db36 *)
mov %ymm5
    [%ymm11[0],%ymm11[1],%ymm11[0],%ymm11[1],
     %ymm11[4],%ymm11[5],%ymm11[4],%ymm11[5],
     %ymm11[8],%ymm11[9],%ymm11[8],%ymm11[9],
     %ymm11[12],%ymm11[13],%ymm11[12],%ymm11[13]];
(* vpblendd $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556db3b *)
mov %ymm5
    [%ymm9[0],%ymm9[1],%ymm5[2],%ymm5[3],
     %ymm9[4],%ymm9[5],%ymm5[6],%ymm5[7],
     %ymm9[8],%ymm9[9],%ymm5[10],%ymm5[11],
     %ymm9[12],%ymm9[13],%ymm5[14],%ymm5[15]];
(* vpsrlq $0x20,%ymm9,%ymm9                        #! PC = 0x55555556db41 *)
mov %ymm9
    [%ymm9[2],%ymm9[3],0@int16,0@int16,
     %ymm9[6],%ymm9[7],0@int16,0@int16,
     %ymm9[10],%ymm9[11],0@int16,0@int16,
     %ymm9[14],%ymm9[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm11,%ymm9,%ymm11              #! PC = 0x55555556db47 *)
mov %ymm11
    [%ymm9[0],%ymm9[1],%ymm11[2],%ymm11[3],
     %ymm9[4],%ymm9[5],%ymm11[6],%ymm11[7],
     %ymm9[8],%ymm9[9],%ymm11[10],%ymm11[11],
     %ymm9[12],%ymm9[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 4 0 ********************)
(* CUT 4 1 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3]])
          (4096*F**2) [Q, X**16 - 17**  8] /\
    eqmod (poly X [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          (4096*F**2) [Q, X**16 - 17**136] /\
    eqmod (poly X [%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7]])
          (4096*F**2) [Q, X**16 - 17** 72] /\
    eqmod (poly X [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          (4096*F**2) [Q, X**16 - 17**200] /\
    eqmod (poly X [%ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]])
          (4096*F**2) [Q, X**16 - 17** 40] /\
    eqmod (poly X [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          (4096*F**2) [Q, X**16 - 17**168] /\
    eqmod (poly X [%ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]])
          (4096*F**2) [Q, X**16 - 17**104] /\
    eqmod (poly X [%ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          (4096*F**2) [Q, X**16 - 17**232];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2] <s
    %ymm3 /\ %ymm3 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,
     1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2] <s
    %ymm4 /\ %ymm4 <s
    [2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,
     2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm5 /\ %ymm5 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm7 /\ %ymm7 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2] <s
    %ymm8 /\ %ymm8 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,
     1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2,1@16*NQ2,1@16*NQ2,5@16*NQ2,5@16*NQ2] <s
    %ymm10 /\ %ymm10 <s
    [2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,
     2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2,2@16*Q2,2@16*Q2,5@16*Q2,5@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2];
*)

(* vpermq $0x1b,0x3a0(%rsi),%ymm2                  #! EA = L0x555555638840; Value = 0x29c229c229c229c2; PC = 0x55555556db4d *)
mov %ymm2
    [L0x555555638858,L0x55555563885a,L0x55555563885c,L0x55555563885e,
     L0x555555638850,L0x555555638852,L0x555555638854,L0x555555638856,
     L0x555555638848,L0x55555563884a,L0x55555563884c,L0x55555563884e,
     L0x555555638840,L0x555555638842,L0x555555638844,L0x555555638846];
(* vpermq $0x1b,0x3c0(%rsi),%ymm9                  #! EA = L0x555555638860; Value = 0x03c203c203c203c2; PC = 0x55555556db57 *)
mov %ymm9
    [L0x555555638878,L0x55555563887a,L0x55555563887c,L0x55555563887e,
     L0x555555638870,L0x555555638872,L0x555555638874,L0x555555638876,
     L0x555555638868,L0x55555563886a,L0x55555563886c,L0x55555563886e,
     L0x555555638860,L0x555555638862,L0x555555638864,L0x555555638866];
(* vpsubw %ymm10,%ymm4,%ymm12                      #! PC = 0x55555556db61 *)
sub %ymm12 %ymm4 %ymm10;
(* vpaddw %ymm4,%ymm10,%ymm10                      #! PC = 0x55555556db66 *)
add %ymm10 %ymm4 %ymm10;
(* vpsubw %ymm3,%ymm8,%ymm13                       #! PC = 0x55555556db6a *)
sub %ymm13 %ymm8 %ymm3;
(* vpmullw %ymm2,%ymm12,%ymm4                      #! PC = 0x55555556db6e *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm4@sint16[16] %mulL;
(* vpaddw %ymm8,%ymm3,%ymm3                        #! PC = 0x55555556db72 *)
add %ymm3 %ymm8 %ymm3;
(* vpsubw %ymm6,%ymm7,%ymm14                       #! PC = 0x55555556db77 *)
sub %ymm14 %ymm7 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm8                      #! PC = 0x55555556db7b *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm6,%ymm6                        #! PC = 0x55555556db7f *)
add %ymm6 %ymm7 %ymm6;
(* vpsubw %ymm5,%ymm11,%ymm15                      #! PC = 0x55555556db83 *)
sub %ymm15 %ymm11 %ymm5;
(* vpmullw %ymm2,%ymm14,%ymm7                      #! PC = 0x55555556db87 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm5,%ymm5                       #! PC = 0x55555556db8b *)
add %ymm5 %ymm11 %ymm5;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556db90 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm9,%ymm12,%ymm12                     #! PC = 0x55555556db94 *)
smull %ymm12 %mulLymm12 %ymm9 %ymm12;
(* vpmulhw %ymm9,%ymm13,%ymm13                     #! PC = 0x55555556db99 *)
smull %ymm13 %mulLymm13 %ymm9 %ymm13;
(* vpmulhw %ymm9,%ymm14,%ymm14                     #! PC = 0x55555556db9e *)
smull %ymm14 %mulLymm14 %ymm9 %ymm14;
(* vpmulhw %ymm9,%ymm15,%ymm15                     #! PC = 0x55555556dba3 *)
smull %ymm15 %mulLymm15 %ymm9 %ymm15;
(* vpmulhw %ymm0,%ymm4,%ymm4                       #! PC = 0x55555556dba8 *)
smull %ymm4 %red %ymm4 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556dbac *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556dbb0 *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556dbb4 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm4,%ymm12,%ymm4                       #! PC = 0x55555556dbb8 *)
sub %ymm4 %ymm12 %ymm4;
(* vpsubw %ymm8,%ymm13,%ymm8                       #! PC = 0x55555556dbbc *)
sub %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm7,%ymm14,%ymm7                       #! PC = 0x55555556dbc1 *)
sub %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556dbc5 *)
sub %ymm11 %ymm15 %ymm11;
(* vpunpcklqdq %ymm3,%ymm10,%ymm9                  #! PC = 0x55555556dbca *)
mov %ymm9
    [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11]];
(* vpunpckhqdq %ymm3,%ymm10,%ymm3                  #! PC = 0x55555556dbce *)
mov %ymm3
    [%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]];
(* vpunpcklqdq %ymm5,%ymm6,%ymm10                  #! PC = 0x55555556dbd2 *)
mov %ymm10
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]];
(* vpunpckhqdq %ymm5,%ymm6,%ymm5                   #! PC = 0x55555556dbd6 *)
mov %ymm5
    [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vpunpcklqdq %ymm8,%ymm4,%ymm6                   #! PC = 0x55555556dbda *)
mov %ymm6
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11]];
(* vpunpckhqdq %ymm8,%ymm4,%ymm8                   #! PC = 0x55555556dbdf *)
mov %ymm8
    [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15]];
(* vpunpcklqdq %ymm11,%ymm7,%ymm4                  #! PC = 0x55555556dbe4 *)
mov %ymm4
    [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]];
(* vpunpckhqdq %ymm11,%ymm7,%ymm11                 #! PC = 0x55555556dbe9 *)
mov %ymm11
    [%ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7],
     %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 3 0 ********************)
(* CUT 5 1 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                   %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                   %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          (2**13*F**2) [Q, X**32 - 17** 16] /\
    eqmod (poly X [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          (2**13*F**2) [Q, X**32 - 17**144] /\
    eqmod (poly X [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                   %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                   %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          (2**13*F**2) [Q, X**32 - 17** 80] /\
    eqmod (poly X [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          (2**13*F**2) [Q, X**32 - 17**208];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ2,2@16*NQ2,14@16*NQ2,16@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,
     2@16*NQ2,2@16*NQ2,16@16*NQ2,16@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2] <s
    %ymm3 /\ %ymm3 <s
    [1@16*Q2,1@16*Q2,16@16*Q2,16@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,
     1@16*Q2,1@16*Q2,16@16*Q2,16@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,16@16*NQ2,16@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,
     4@16*NQ2,4@16*NQ2,16@16*NQ2,16@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2,8@16*NQ2] <s
    %ymm9 /\ %ymm9 <s
    [4@16*Q2,4@16*Q2,16@16*Q2,16@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,
     4@16*Q2,4@16*Q2,16@16*Q2,16@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2,8@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2] <s
    %ymm5 /\ %ymm5 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2] <s
    %ymm10 /\ %ymm10 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm8 /\ %ymm8 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm4 /\ %ymm4 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2];
*)

(* vpermq $0x4e,0x360(%rsi),%ymm2                  #! EA = L0x555555638800; Value = 0x6e1f6e1f6e1f6e1f; PC = 0x55555556dbee *)
mov %ymm2
    [L0x555555638810,L0x555555638812,L0x555555638814,L0x555555638816,
     L0x555555638818,L0x55555563881a,L0x55555563881c,L0x55555563881e,
     L0x555555638800,L0x555555638802,L0x555555638804,L0x555555638806,
     L0x555555638808,L0x55555563880a,L0x55555563880c,L0x55555563880e];
(* vpermq $0x4e,0x380(%rsi),%ymm7                  #! EA = L0x555555638820; Value = 0x011f011f011f011f; PC = 0x55555556dbf8 *)
mov %ymm7
    [L0x555555638830,L0x555555638832,L0x555555638834,L0x555555638836,
     L0x555555638838,L0x55555563883a,L0x55555563883c,L0x55555563883e,
     L0x555555638820,L0x555555638822,L0x555555638824,L0x555555638826,
     L0x555555638828,L0x55555563882a,L0x55555563882c,L0x55555563882e];
(* vpsubw %ymm9,%ymm3,%ymm12                       #! PC = 0x55555556dc02 *)
sub %ymm12 %ymm3 %ymm9;
(* vpaddw %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556dc07 *)
add %ymm9 %ymm3 %ymm9;
(* vpsubw %ymm10,%ymm5,%ymm13                      #! PC = 0x55555556dc0b *)
sub %ymm13 %ymm5 %ymm10;
(* vpmullw %ymm2,%ymm12,%ymm3                      #! PC = 0x55555556dc10 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm3@sint16[16] %mulL;
(* vpaddw %ymm5,%ymm10,%ymm10                      #! PC = 0x55555556dc14 *)
add %ymm10 %ymm5 %ymm10;
(* vpsubw %ymm6,%ymm8,%ymm14                       #! PC = 0x55555556dc18 *)
sub %ymm14 %ymm8 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm5                      #! PC = 0x55555556dc1c *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm8,%ymm6,%ymm6                        #! PC = 0x55555556dc20 *)
add %ymm6 %ymm8 %ymm6;
(* vpsubw %ymm4,%ymm11,%ymm15                      #! PC = 0x55555556dc25 *)
sub %ymm15 %ymm11 %ymm4;
(* vpmullw %ymm2,%ymm14,%ymm8                      #! PC = 0x55555556dc29 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm4,%ymm4                       #! PC = 0x55555556dc2d *)
add %ymm4 %ymm11 %ymm4;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556dc32 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm7,%ymm12,%ymm12                     #! PC = 0x55555556dc36 *)
smull %ymm12 %mulLymm12 %ymm7 %ymm12;
(* vpmulhw %ymm7,%ymm13,%ymm13                     #! PC = 0x55555556dc3a *)
smull %ymm13 %mulLymm13 %ymm7 %ymm13;
(* vpmulhw %ymm7,%ymm14,%ymm14                     #! PC = 0x55555556dc3e *)
smull %ymm14 %mulLymm14 %ymm7 %ymm14;
(* vpmulhw %ymm7,%ymm15,%ymm15                     #! PC = 0x55555556dc42 *)
smull %ymm15 %mulLymm15 %ymm7 %ymm15;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x55555556dc46 *)
smull %ymm3 %red %ymm3 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556dc4a *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556dc4e *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556dc52 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm3,%ymm12,%ymm3                       #! PC = 0x55555556dc56 *)
sub %ymm3 %ymm12 %ymm3;
(* vpsubw %ymm5,%ymm13,%ymm5                       #! PC = 0x55555556dc5a *)
sub %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm8,%ymm14,%ymm8                       #! PC = 0x55555556dc5e *)
sub %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556dc63 *)
sub %ymm11 %ymm15 %ymm11;
(* vpmulhw %ymm1,%ymm9,%ymm12                      #! PC = 0x55555556dc68 *)
smull %ymm12 %mulLymm9 %ymm1 %ymm9;
(* vpsraw $0xa,%ymm12,%ymm12                       #! PC = 0x55555556dc6c *)
split %ymm12 %sra %ymm12 10;
(* vpmullw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556dc72 *)
smul (* %mulHymm12 *) %mulL %ymm0 %ymm12;
cast %ymm12@sint16[16] %mulL;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556dc76 *)
sub %ymm9 %ymm9 %ymm12;
(* vperm2i128 $0x20,%ymm10,%ymm9,%ymm7             #! PC = 0x55555556dc7b *)
mov %ymm7
    [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
     %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7]];
(* vperm2i128 $0x31,%ymm10,%ymm9,%ymm10            #! PC = 0x55555556dc81 *)
mov %ymm10
    [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
     %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vperm2i128 $0x20,%ymm4,%ymm6,%ymm9              #! PC = 0x55555556dc87 *)
mov %ymm9
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]];
(* vperm2i128 $0x31,%ymm4,%ymm6,%ymm4              #! PC = 0x55555556dc8d *)
mov %ymm4
    [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]];
(* vperm2i128 $0x20,%ymm5,%ymm3,%ymm6              #! PC = 0x55555556dc93 *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7]];
(* vperm2i128 $0x31,%ymm5,%ymm3,%ymm5              #! PC = 0x55555556dc99 *)
mov %ymm5
    [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vperm2i128 $0x20,%ymm11,%ymm8,%ymm3             #! PC = 0x55555556dc9f *)
mov %ymm3
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]];
(* vperm2i128 $0x31,%ymm11,%ymm8,%ymm11            #! PC = 0x55555556dca5 *)
mov %ymm11
    [%ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 2 0 ********************)
(* CUT 6 1 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [ *%ymm7, *%ymm9, *%ymm6, *%ymm3])
          (2**14*F**2) [Q, X**64 - 17** 32] /\
    eqmod (poly X [ *%ymm10, *%ymm4, *%ymm5, *%ymm11])
          (2**14*F**2) [Q, X**64 - 17**160];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    true;
*)

(* vmovdqa 0x320(%rsi),%ymm2                       #! EA = L0x5555556387c0; Value = 0x0313031303130313; PC = 0x55555556dcab *)
mov %ymm2
    [L0x5555556387c0, L0x5555556387c2, L0x5555556387c4, L0x5555556387c6,
     L0x5555556387c8, L0x5555556387ca, L0x5555556387cc, L0x5555556387ce,
     L0x5555556387d0, L0x5555556387d2, L0x5555556387d4, L0x5555556387d6,
     L0x5555556387d8, L0x5555556387da, L0x5555556387dc, L0x5555556387de];
(* vmovdqa 0x340(%rsi),%ymm8                       #! EA = L0x5555556387e0; Value = 0xfa13fa13fa13fa13; PC = 0x55555556dcb3 *)
mov %ymm8
    [L0x5555556387e0, L0x5555556387e2, L0x5555556387e4, L0x5555556387e6,
     L0x5555556387e8, L0x5555556387ea, L0x5555556387ec, L0x5555556387ee,
     L0x5555556387f0, L0x5555556387f2, L0x5555556387f4, L0x5555556387f6,
     L0x5555556387f8, L0x5555556387fa, L0x5555556387fc, L0x5555556387fe];
(* vpsubw %ymm7,%ymm10,%ymm12                      #! PC = 0x55555556dcbb *)
sub %ymm12 %ymm10 %ymm7;
(* vpaddw %ymm10,%ymm7,%ymm7                       #! PC = 0x55555556dcbf *)
add %ymm7 %ymm10 %ymm7;
(* vpsubw %ymm9,%ymm4,%ymm13                       #! PC = 0x55555556dcc4 *)
sub %ymm13 %ymm4 %ymm9;
(* vpmullw %ymm2,%ymm12,%ymm10                     #! PC = 0x55555556dcc9 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm4,%ymm9,%ymm9                        #! PC = 0x55555556dccd *)
add %ymm9 %ymm4 %ymm9;
(* vpsubw %ymm6,%ymm5,%ymm14                       #! PC = 0x55555556dcd1 *)
sub %ymm14 %ymm5 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm4                      #! PC = 0x55555556dcd5 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm4@sint16[16] %mulL;
(* vpaddw %ymm5,%ymm6,%ymm6                        #! PC = 0x55555556dcd9 *)
add %ymm6 %ymm5 %ymm6;
(* vpsubw %ymm3,%ymm11,%ymm15                      #! PC = 0x55555556dcdd *)
sub %ymm15 %ymm11 %ymm3;
(* vpmullw %ymm2,%ymm14,%ymm5                      #! PC = 0x55555556dce1 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm3,%ymm3                       #! PC = 0x55555556dce5 *)
add %ymm3 %ymm11 %ymm3;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556dcea *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555556dcee *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x55555556dcf3 *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
(* vpmulhw %ymm8,%ymm14,%ymm14                     #! PC = 0x55555556dcf8 *)
smull %ymm14 %mulLymm14 %ymm8 %ymm14;
(* vpmulhw %ymm8,%ymm15,%ymm15                     #! PC = 0x55555556dcfd *)
smull %ymm15 %mulLymm15 %ymm8 %ymm15;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556dd02 *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm4,%ymm4                       #! PC = 0x55555556dd06 *)
smull %ymm4 %red %ymm4 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556dd0a *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556dd0e *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm10,%ymm12,%ymm10                     #! PC = 0x55555556dd12 *)
sub %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm4,%ymm13,%ymm4                       #! PC = 0x55555556dd17 *)
sub %ymm4 %ymm13 %ymm4;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x55555556dd1b *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556dd1f *)
sub %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm7,(%rdi)                            #! EA = L0x7fffffffb180; PC = 0x55555556dd24 *)
mov [L0x7fffffffb180, L0x7fffffffb182, L0x7fffffffb184, L0x7fffffffb186,
     L0x7fffffffb188, L0x7fffffffb18a, L0x7fffffffb18c, L0x7fffffffb18e,
     L0x7fffffffb190, L0x7fffffffb192, L0x7fffffffb194, L0x7fffffffb196,
     L0x7fffffffb198, L0x7fffffffb19a, L0x7fffffffb19c, L0x7fffffffb19e]
    %ymm7;
(* vmovdqa %ymm9,0x20(%rdi)                        #! EA = L0x7fffffffb1a0; PC = 0x55555556dd28 *)
mov [L0x7fffffffb1a0, L0x7fffffffb1a2, L0x7fffffffb1a4, L0x7fffffffb1a6,
     L0x7fffffffb1a8, L0x7fffffffb1aa, L0x7fffffffb1ac, L0x7fffffffb1ae,
     L0x7fffffffb1b0, L0x7fffffffb1b2, L0x7fffffffb1b4, L0x7fffffffb1b6,
     L0x7fffffffb1b8, L0x7fffffffb1ba, L0x7fffffffb1bc, L0x7fffffffb1be]
    %ymm9;
(* vmovdqa %ymm6,0x40(%rdi)                        #! EA = L0x7fffffffb1c0; PC = 0x55555556dd2d *)
mov [L0x7fffffffb1c0, L0x7fffffffb1c2, L0x7fffffffb1c4, L0x7fffffffb1c6,
     L0x7fffffffb1c8, L0x7fffffffb1ca, L0x7fffffffb1cc, L0x7fffffffb1ce,
     L0x7fffffffb1d0, L0x7fffffffb1d2, L0x7fffffffb1d4, L0x7fffffffb1d6,
     L0x7fffffffb1d8, L0x7fffffffb1da, L0x7fffffffb1dc, L0x7fffffffb1de]
    %ymm6;
(* vmovdqa %ymm3,0x60(%rdi)                        #! EA = L0x7fffffffb1e0; PC = 0x55555556dd32 *)
mov [L0x7fffffffb1e0, L0x7fffffffb1e2, L0x7fffffffb1e4, L0x7fffffffb1e6,
     L0x7fffffffb1e8, L0x7fffffffb1ea, L0x7fffffffb1ec, L0x7fffffffb1ee,
     L0x7fffffffb1f0, L0x7fffffffb1f2, L0x7fffffffb1f4, L0x7fffffffb1f6,
     L0x7fffffffb1f8, L0x7fffffffb1fa, L0x7fffffffb1fc, L0x7fffffffb1fe]
    %ymm3;
(* vmovdqa %ymm10,0x80(%rdi)                       #! EA = L0x7fffffffb200; PC = 0x55555556dd37 *)
mov [L0x7fffffffb200, L0x7fffffffb202, L0x7fffffffb204, L0x7fffffffb206,
     L0x7fffffffb208, L0x7fffffffb20a, L0x7fffffffb20c, L0x7fffffffb20e,
     L0x7fffffffb210, L0x7fffffffb212, L0x7fffffffb214, L0x7fffffffb216,
     L0x7fffffffb218, L0x7fffffffb21a, L0x7fffffffb21c, L0x7fffffffb21e]
    %ymm10;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb220; PC = 0x55555556dd3f *)
mov [L0x7fffffffb220, L0x7fffffffb222, L0x7fffffffb224, L0x7fffffffb226,
     L0x7fffffffb228, L0x7fffffffb22a, L0x7fffffffb22c, L0x7fffffffb22e,
     L0x7fffffffb230, L0x7fffffffb232, L0x7fffffffb234, L0x7fffffffb236,
     L0x7fffffffb238, L0x7fffffffb23a, L0x7fffffffb23c, L0x7fffffffb23e]
    %ymm4;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb240; PC = 0x55555556dd47 *)
mov [L0x7fffffffb240, L0x7fffffffb242, L0x7fffffffb244, L0x7fffffffb246,
     L0x7fffffffb248, L0x7fffffffb24a, L0x7fffffffb24c, L0x7fffffffb24e,
     L0x7fffffffb250, L0x7fffffffb252, L0x7fffffffb254, L0x7fffffffb256,
     L0x7fffffffb258, L0x7fffffffb25a, L0x7fffffffb25c, L0x7fffffffb25e]
    %ymm5;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb260; PC = 0x55555556dd4f *)
mov [L0x7fffffffb260, L0x7fffffffb262, L0x7fffffffb264, L0x7fffffffb266,
     L0x7fffffffb268, L0x7fffffffb26a, L0x7fffffffb26c, L0x7fffffffb26e,
     L0x7fffffffb270, L0x7fffffffb272, L0x7fffffffb274, L0x7fffffffb276,
     L0x7fffffffb278, L0x7fffffffb27a, L0x7fffffffb27c, L0x7fffffffb27e]
    %ymm11;

(******************** LEVEL 1 0 ********************)
(* CUT 7 2 *)
cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,
                   L0x7fffffffb186,L0x7fffffffb188,L0x7fffffffb18a,
                   L0x7fffffffb18c,L0x7fffffffb18e,L0x7fffffffb190,
                   L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196,
                   L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,
                   L0x7fffffffb19e,L0x7fffffffb1a0,L0x7fffffffb1a2,
                   L0x7fffffffb1a4,L0x7fffffffb1a6,L0x7fffffffb1a8,
                   L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae,
                   L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,
                   L0x7fffffffb1b6,L0x7fffffffb1b8,L0x7fffffffb1ba,
                   L0x7fffffffb1bc,L0x7fffffffb1be,L0x7fffffffb1c0,
                   L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6,
                   L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,
                   L0x7fffffffb1ce,L0x7fffffffb1d0,L0x7fffffffb1d2,
                   L0x7fffffffb1d4,L0x7fffffffb1d6,L0x7fffffffb1d8,
                   L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de,
                   L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,
                   L0x7fffffffb1e6,L0x7fffffffb1e8,L0x7fffffffb1ea,
                   L0x7fffffffb1ec,L0x7fffffffb1ee,L0x7fffffffb1f0,
                   L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6,
                   L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,
                   L0x7fffffffb1fe,L0x7fffffffb200,L0x7fffffffb202,
                   L0x7fffffffb204,L0x7fffffffb206,L0x7fffffffb208,
                   L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e,
                   L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,
                   L0x7fffffffb216,L0x7fffffffb218,L0x7fffffffb21a,
                   L0x7fffffffb21c,L0x7fffffffb21e,L0x7fffffffb220,
                   L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226,
                   L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,
                   L0x7fffffffb22e,L0x7fffffffb230,L0x7fffffffb232,
                   L0x7fffffffb234,L0x7fffffffb236,L0x7fffffffb238,
                   L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e,
                   L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,
                   L0x7fffffffb246,L0x7fffffffb248,L0x7fffffffb24a,
                   L0x7fffffffb24c,L0x7fffffffb24e,L0x7fffffffb250,
                   L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256,
                   L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,
                   L0x7fffffffb25e,L0x7fffffffb260,L0x7fffffffb262,
                   L0x7fffffffb264,L0x7fffffffb266,L0x7fffffffb268,
                   L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e,
                   L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,
                   L0x7fffffffb276,L0x7fffffffb278,L0x7fffffffb27a,
                   L0x7fffffffb27c,L0x7fffffffb27e])
    (2**15*F**2) [Q, X**128 - 17**64]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] /\
    [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] /\
    [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] /\
    [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] /\
    [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] /\
    [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] /\
    [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] /\
    [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] /\
    [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] /\
    [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] /\
    [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] /\
    [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] /\
    [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] /\
    [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] /\
    [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] /\
    [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] /\
    [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] /\
    [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] /\
    [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] /\
    [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] /\
    [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] /\
    [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] /\
    [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] /\
    [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] /\
    [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] /\
    [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] /\
    [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] /\
    [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] /\
    [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] /\
    [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] /\
    [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] /\
    [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16] /\
    [(-3661)@16,(-3661)@16,(-3661)@16,(-3661)@16]<s
    [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] /\
    [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e]<s
    [(3661)@16,(3661)@16,(3661)@16,(3661)@16]
    prove with [cuts [0]];

(* CUT 7 3 *)
rcut Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
     [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
     [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
     [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
     [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
     [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
     [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
     [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
     [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
     [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
     [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
     [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
     [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
     [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
     [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
     [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
     [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
     [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
     [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
     [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
     [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
     [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
     [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
     [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
     [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
     [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
     [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
     [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
     [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
     [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
     [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
     [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] <s
     [Q, Q, Q, Q] /\
     [NQ, NQ, NQ, NQ] <s
     [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
     [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] <s
     [Q, Q, Q, Q]
     prove with [cuts [1]];


(* vmovdqa 0x60(%rsi),%ymm2                        #! EA = L0x555555638500; Value = 0xd8a1d8a1d8a1d8a1; PC = 0x55555556dd57 *)
mov %ymm2
    [L0x555555638500, L0x555555638502, L0x555555638504, L0x555555638506,
     L0x555555638508, L0x55555563850a, L0x55555563850c, L0x55555563850e,
     L0x555555638510, L0x555555638512, L0x555555638514, L0x555555638516,
     L0x555555638518, L0x55555563851a, L0x55555563851c, L0x55555563851e];
(* vmovdqa 0x80(%rsi),%ymm3                        #! EA = L0x555555638520; Value = 0x05a105a105a105a1; PC = 0x55555556dd5c *)
mov %ymm3
    [L0x555555638520, L0x555555638522, L0x555555638524, L0x555555638526,
     L0x555555638528, L0x55555563852a, L0x55555563852c, L0x55555563852e,
     L0x555555638530, L0x555555638532, L0x555555638534, L0x555555638536,
     L0x555555638538, L0x55555563853a, L0x55555563853c, L0x55555563853e];
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb280; Value = 0xfb4f06ebfe06fd83; PC = 0x55555556dd64 *)
mov %ymm4
    [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e];
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb2c0; Value = 0x099dfb2cf1b1fc9b; PC = 0x55555556dd6c *)
mov %ymm6
    [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de];
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb2a0; Value = 0x0b1505ac0be1f081; PC = 0x55555556dd74 *)
mov %ymm5
    [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be];
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb2e0; Value = 0xe69a0ae60203f027; PC = 0x55555556dd7c *)
mov %ymm7
    [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe];
(* vpmullw %ymm2,%ymm4,%ymm12                      #! PC = 0x55555556dd84 *)
smull %mulHymm4 %mulL %ymm2 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm4,%ymm4                       #! PC = 0x55555556dd88 *)
smull %ymm4 %mulLymm4 %ymm3 %ymm4;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556dd8c *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm4;
assume %red = %mulLymm4 && true;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556dd90 *)
sub %ymm4 %ymm4 %ymm12;
(* vpmullw %ymm2,%ymm6,%ymm12                      #! PC = 0x55555556dd95 *)
smull %mulHymm6 %mulL %ymm2 %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm6,%ymm6                       #! PC = 0x55555556dd99 *)
smull %ymm6 %mulLymm6 %ymm3 %ymm6;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556dd9d *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm6;
assume %red = %mulLymm6 && true;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556dda1 *)
sub %ymm6 %ymm6 %ymm12;
(* vpmullw %ymm2,%ymm5,%ymm12                      #! PC = 0x55555556dda6 *)
smull %mulHymm5 %mulL %ymm2 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm5,%ymm5                       #! PC = 0x55555556ddaa *)
smull %ymm5 %mulLymm5 %ymm3 %ymm5;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ddae *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpsubw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556ddb2 *)
sub %ymm5 %ymm5 %ymm12;
(* vpmullw %ymm2,%ymm7,%ymm12                      #! PC = 0x55555556ddb7 *)
smull %mulHymm7 %mulL %ymm2 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm7,%ymm7                       #! PC = 0x55555556ddbb *)
smull %ymm7 %mulLymm7 %ymm3 %ymm7;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ddbf *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpsubw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556ddc3 *)
sub %ymm7 %ymm7 %ymm12;
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb300; Value = 0x023f027b08940045; PC = 0x55555556ddc8 *)
mov %ymm8
    [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb340; Value = 0x04f203fafc52ff7f; PC = 0x55555556ddd0 *)
mov %ymm10
    [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb320; Value = 0xfd00089a09530761; PC = 0x55555556ddd8 *)
mov %ymm9
    [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb360; Value = 0xfb69ffb701fefef5; PC = 0x55555556dde0 *)
mov %ymm11
    [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e];
(* vpmullw %ymm2,%ymm8,%ymm12                      #! PC = 0x55555556dde8 *)
smull %mulHymm8 %mulL %ymm2 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x55555556ddec *)
smull %ymm8 %mulLymm8 %ymm3 %ymm8;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ddf0 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ddf4 *)
sub %ymm8 %ymm8 %ymm12;
(* vpmullw %ymm2,%ymm10,%ymm12                     #! PC = 0x55555556ddf9 *)
smull %mulHymm10 %mulL %ymm2 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x55555556ddfd *)
smull %ymm10 %mulLymm10 %ymm3 %ymm10;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556de01 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556de05 *)
sub %ymm10 %ymm10 %ymm12;
(* vpmullw %ymm2,%ymm9,%ymm12                      #! PC = 0x55555556de0a *)
smull %mulHymm9 %mulL %ymm2 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x55555556de0e *)
smull %ymm9 %mulLymm9 %ymm3 %ymm9;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556de12 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556de16 *)
sub %ymm9 %ymm9 %ymm12;
(* vpmullw %ymm2,%ymm11,%ymm12                     #! PC = 0x55555556de1b *)
smull %mulHymm11 %mulL %ymm2 %ymm11;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x55555556de1f *)
smull %ymm11 %mulLymm11 %ymm3 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556de23 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpsubw %ymm12,%ymm11,%ymm11                     #! PC = 0x55555556de27 *)
sub %ymm11 %ymm11 %ymm12;
(* vpermq $0x4e,0x2e0(%rsi),%ymm15                 #! EA = L0x555555638780; Value = 0xab69c867344b2bae; PC = 0x55555556de2c *)
mov %ymm15
    [L0x555555638790,L0x555555638792,L0x555555638794,L0x555555638796,
     L0x555555638798,L0x55555563879a,L0x55555563879c,L0x55555563879e,
     L0x555555638780,L0x555555638782,L0x555555638784,L0x555555638786,
     L0x555555638788,L0x55555563878a,L0x55555563878c,L0x55555563878e];
(* vpermq $0x4e,0x2a0(%rsi),%ymm1                  #! EA = L0x555555638740; Value = 0x500e821dd32bfeb1; PC = 0x55555556de36 *)
mov %ymm1
    [L0x555555638750,L0x555555638752,L0x555555638754,L0x555555638756,
     L0x555555638758,L0x55555563875a,L0x55555563875c,L0x55555563875e,
     L0x555555638740,L0x555555638742,L0x555555638744,L0x555555638746,
     L0x555555638748,L0x55555563874a,L0x55555563874c,L0x55555563874e];
(* vpermq $0x4e,0x300(%rsi),%ymm2                  #! EA = L0x5555556387a0; Value = 0x00690367034b01ae; PC = 0x55555556de40 *)
mov %ymm2
    [L0x5555556387b0,L0x5555556387b2,L0x5555556387b4,L0x5555556387b6,
     L0x5555556387b8,L0x5555556387ba,L0x5555556387bc,L0x5555556387be,
     L0x5555556387a0,L0x5555556387a2,L0x5555556387a4,L0x5555556387a6,
     L0x5555556387a8,L0x5555556387aa,L0x5555556387ac,L0x5555556387ae];
(* vpermq $0x4e,0x2c0(%rsi),%ymm3                  #! EA = L0x555555638760; Value = 0x060efb1d022bfbb1; PC = 0x55555556de4a *)
mov %ymm3
    [L0x555555638770,L0x555555638772,L0x555555638774,L0x555555638776,
     L0x555555638778,L0x55555563877a,L0x55555563877c,L0x55555563877e,
     L0x555555638760,L0x555555638762,L0x555555638764,L0x555555638766,
     L0x555555638768,L0x55555563876a,L0x55555563876c,L0x55555563876e];
(* vmovdqa 0x100(%rsi),%ymm12                      #! EA = L0x5555556385a0; Value = 0x09080b0a0d0c0f0e; PC = 0x55555556de54 *)
mov %ymm12
    [L0x5555556385a0, L0x5555556385a2, L0x5555556385a4, L0x5555556385a6,
     L0x5555556385a8, L0x5555556385aa, L0x5555556385ac, L0x5555556385ae,
     L0x5555556385b0, L0x5555556385b2, L0x5555556385b4, L0x5555556385b6,
     L0x5555556385b8, L0x5555556385ba, L0x5555556385bc, L0x5555556385be];
(* vpshufb %ymm12,%ymm15,%ymm15                    #! PC = 0x55555556de5c *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm15
    [%ymm15[7],%ymm15[6],%ymm15[5],%ymm15[4],
     %ymm15[3],%ymm15[2],%ymm15[1],%ymm15[0],
     %ymm15[15],%ymm15[14],%ymm15[13],%ymm15[12],
     %ymm15[11],%ymm15[10],%ymm15[9],%ymm15[8]];
(* vpshufb %ymm12,%ymm1,%ymm1                      #! PC = 0x55555556de61 *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm1
    [%ymm1[7],%ymm1[6],%ymm1[5],%ymm1[4],
     %ymm1[3],%ymm1[2],%ymm1[1],%ymm1[0],
     %ymm1[15],%ymm1[14],%ymm1[13],%ymm1[12],
     %ymm1[11],%ymm1[10],%ymm1[9],%ymm1[8]];
(* vpshufb %ymm12,%ymm2,%ymm2                      #! PC = 0x55555556de66 *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm2
    [%ymm2[7],%ymm2[6],%ymm2[5],%ymm2[4],
     %ymm2[3],%ymm2[2],%ymm2[1],%ymm2[0],
     %ymm2[15],%ymm2[14],%ymm2[13],%ymm2[12],
     %ymm2[11],%ymm2[10],%ymm2[9],%ymm2[8]];
(* vpshufb %ymm12,%ymm3,%ymm3                      #! PC = 0x55555556de6b *)
assert true && %ymm12 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                         0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                         0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm3
    [%ymm3[7],%ymm3[6],%ymm3[5],%ymm3[4],
     %ymm3[3],%ymm3[2],%ymm3[1],%ymm3[0],
     %ymm3[15],%ymm3[14],%ymm3[13],%ymm3[12],
     %ymm3[11],%ymm3[10],%ymm3[9],%ymm3[8]];
(* vpsubw %ymm4,%ymm6,%ymm12                       #! PC = 0x55555556de70 *)
sub %ymm12 %ymm6 %ymm4;
(* vpaddw %ymm6,%ymm4,%ymm4                        #! PC = 0x55555556de74 *)
add %ymm4 %ymm6 %ymm4;
(* vpsubw %ymm5,%ymm7,%ymm13                       #! PC = 0x55555556de78 *)
sub %ymm13 %ymm7 %ymm5;
(* vpmullw %ymm15,%ymm12,%ymm6                     #! PC = 0x55555556de7c *)
smull %mulHymm12 %mulL %ymm15 %ymm12;
cast %ymm6@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556de81 *)
add %ymm5 %ymm7 %ymm5;
(* vpsubw %ymm8,%ymm10,%ymm14                      #! PC = 0x55555556de85 *)
sub %ymm14 %ymm10 %ymm8;
(* vpmullw %ymm15,%ymm13,%ymm7                     #! PC = 0x55555556de8a *)
smull %mulHymm13 %mulL %ymm15 %ymm13;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm8,%ymm8                       #! PC = 0x55555556de8f *)
add %ymm8 %ymm10 %ymm8;
(* vpsubw %ymm9,%ymm11,%ymm15                      #! PC = 0x55555556de94 *)
sub %ymm15 %ymm11 %ymm9;
(* vpmullw %ymm1,%ymm14,%ymm10                     #! PC = 0x55555556de99 *)
smull %mulHymm14 %mulL %ymm1 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm9,%ymm9                       #! PC = 0x55555556de9d *)
add %ymm9 %ymm11 %ymm9;
(* vpmullw %ymm1,%ymm15,%ymm11                     #! PC = 0x55555556dea2 *)
smull %mulHymm15 %mulL %ymm1 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm12,%ymm12                     #! PC = 0x55555556dea6 *)
smull %ymm12 %mulLymm12 %ymm2 %ymm12;
(* vpmulhw %ymm2,%ymm13,%ymm13                     #! PC = 0x55555556deaa *)
smull %ymm13 %mulLymm13 %ymm2 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556deae *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556deb2 *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm6,%ymm6                       #! PC = 0x55555556deb6 *)
smull %ymm6 %red %ymm6 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556deba *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556debe *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556dec2 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm6,%ymm12,%ymm6                       #! PC = 0x55555556dec6 *)
sub %ymm6 %ymm12 %ymm6;
(* vpsubw %ymm7,%ymm13,%ymm7                       #! PC = 0x55555556deca *)
sub %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556dece *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556ded3 *)
sub %ymm11 %ymm15 %ymm11;

(******************** LEVEL 6 1 ********************)
(* CUT 8 3 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (2**10*F**2) (poly X [%ymm4[0], %ymm5[0], %ymm6[0], %ymm7[0]])
          [Q, X**4 - 17**  6] /\
    eqmod (2**10*F**2) (poly X [%ymm8[0], %ymm9[0], %ymm10[0], %ymm11[0]])
          [Q, X**4 - 17**134] /\
    eqmod (2**10*F**2) (poly X [%ymm4[1], %ymm5[1], %ymm6[1], %ymm7[1]])
          [Q, X**4 - 17** 70] /\
    eqmod (2**10*F**2) (poly X [%ymm8[1], %ymm9[1], %ymm10[1], %ymm11[1]])
          [Q, X**4 - 17**198] /\
    eqmod (2**10*F**2) (poly X [%ymm4[2], %ymm5[2], %ymm6[2], %ymm7[2]])
          [Q, X**4 - 17** 38] /\
    eqmod (2**10*F**2) (poly X [%ymm8[2], %ymm9[2], %ymm10[2], %ymm11[2]])
          [Q, X**4 - 17**166] /\
    eqmod (2**10*F**2) (poly X [%ymm4[3], %ymm5[3], %ymm6[3], %ymm7[3]])
          [Q, X**4 - 17**102] /\
    eqmod (2**10*F**2) (poly X [%ymm8[3], %ymm9[3], %ymm10[3], %ymm11[3]])
          [Q, X**4 - 17**230] /\
    eqmod (2**10*F**2) (poly X [%ymm4[4], %ymm5[4], %ymm6[4], %ymm7[4]])
          [Q, X**4 - 17** 22] /\
    eqmod (2**10*F**2) (poly X [%ymm8[4], %ymm9[4], %ymm10[4], %ymm11[4]])
          [Q, X**4 - 17**150] /\
    eqmod (2**10*F**2) (poly X [%ymm4[5], %ymm5[5], %ymm6[5], %ymm7[5]])
          [Q, X**4 - 17** 86] /\
    eqmod (2**10*F**2) (poly X [%ymm8[5], %ymm9[5], %ymm10[5], %ymm11[5]])
          [Q, X**4 - 17**214] /\
    eqmod (2**10*F**2) (poly X [%ymm4[6], %ymm5[6], %ymm6[6], %ymm7[6]])
          [Q, X**4 - 17** 54] /\
    eqmod (2**10*F**2) (poly X [%ymm8[6], %ymm9[6], %ymm10[6], %ymm11[6]])
          [Q, X**4 - 17**182] /\
    eqmod (2**10*F**2) (poly X [%ymm4[7], %ymm5[7], %ymm6[7], %ymm7[7]])
          [Q, X**4 - 17**118] /\
    eqmod (2**10*F**2) (poly X [%ymm8[7], %ymm9[7], %ymm10[7], %ymm11[7]])
          [Q, X**4 - 17**246] /\
    eqmod (2**10*F**2) (poly X [%ymm4[8], %ymm5[8], %ymm6[8], %ymm7[8]])
          [Q, X**4 - 17** 14] /\
    eqmod (2**10*F**2) (poly X [%ymm8[8], %ymm9[8], %ymm10[8], %ymm11[8]])
          [Q, X**4 - 17**142] /\
    eqmod (2**10*F**2) (poly X [%ymm4[9], %ymm5[9], %ymm6[9], %ymm7[9]])
          [Q, X**4 - 17** 78] /\
    eqmod (2**10*F**2) (poly X [%ymm8[9], %ymm9[9], %ymm10[9], %ymm11[9]])
          [Q, X**4 - 17**206] /\
    eqmod (2**10*F**2) (poly X [%ymm4[10], %ymm5[10], %ymm6[10], %ymm7[10]])
          [Q, X**4 - 17** 46] /\
    eqmod (2**10*F**2) (poly X [%ymm8[10], %ymm9[10], %ymm10[10], %ymm11[10]])
          [Q, X**4 - 17**174] /\
    eqmod (2**10*F**2) (poly X [%ymm4[11], %ymm5[11], %ymm6[11], %ymm7[11]])
          [Q, X**4 - 17**110] /\
    eqmod (2**10*F**2) (poly X [%ymm8[11], %ymm9[11], %ymm10[11], %ymm11[11]])
          [Q, X**4 - 17**238] /\
    eqmod (2**10*F**2) (poly X [%ymm4[12], %ymm5[12], %ymm6[12], %ymm7[12]])
          [Q, X**4 - 17** 30] /\
    eqmod (2**10*F**2) (poly X [%ymm8[12], %ymm9[12], %ymm10[12], %ymm11[12]])
          [Q, X**4 - 17**158] /\
    eqmod (2**10*F**2) (poly X [%ymm4[13], %ymm5[13], %ymm6[13], %ymm7[13]])
          [Q, X**4 - 17** 94] /\
    eqmod (2**10*F**2) (poly X [%ymm8[13], %ymm9[13], %ymm10[13], %ymm11[13]])
          [Q, X**4 - 17**222] /\
    eqmod (2**10*F**2) (poly X [%ymm4[14], %ymm5[14], %ymm6[14], %ymm7[14]])
          [Q, X**4 - 17** 62] /\
    eqmod (2**10*F**2) (poly X [%ymm8[14], %ymm9[14], %ymm10[14], %ymm11[14]])
          [Q, X**4 - 17**190] /\
    eqmod (2**10*F**2) (poly X [%ymm4[15], %ymm5[15], %ymm6[15], %ymm7[15]])
          [Q, X**4 - 17**126] /\
    eqmod (2**10*F**2) (poly X [%ymm8[15], %ymm9[15], %ymm10[15], %ymm11[15]])
          [Q, X**4 - 17**254]
    prove with [cuts [1]];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm4 /\ %ymm4 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm5 /\ %ymm5 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm6 /\ %ymm6 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm7 /\ %ymm7 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm8 /\ %ymm8 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm9 /\ %ymm9 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm10 /\ %ymm10 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2] /\
    [3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,
     3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2,3@16*NQ2]<s
    %ymm11 /\ %ymm11 <s
    [3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,
     3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2,3@16*Q2]
    prove with [cuts [1]];
*)

(* vpermq $0x4e,0x260(%rsi),%ymm2                  #! EA = L0x555555638700; Value = 0x78f705d8e68ce9c7; PC = 0x55555556ded8 *)
mov %ymm2
    [L0x555555638710,L0x555555638712,L0x555555638714,L0x555555638716,
     L0x555555638718,L0x55555563871a,L0x55555563871c,L0x55555563871e,
     L0x555555638700,L0x555555638702,L0x555555638704,L0x555555638706,
     L0x555555638708,L0x55555563870a,L0x55555563870c,L0x55555563870e];
(* vpermq $0x4e,0x280(%rsi),%ymm3                  #! EA = L0x555555638720; Value = 0x03f7fdd8028c04c7; PC = 0x55555556dee2 *)
mov %ymm3
    [L0x555555638730,L0x555555638732,L0x555555638734,L0x555555638736,
     L0x555555638738,L0x55555563873a,L0x55555563873c,L0x55555563873e,
     L0x555555638720,L0x555555638722,L0x555555638724,L0x555555638726,
     L0x555555638728,L0x55555563872a,L0x55555563872c,L0x55555563872e];
(* vmovdqa 0x100(%rsi),%ymm1                       #! EA = L0x5555556385a0; Value = 0x09080b0a0d0c0f0e; PC = 0x55555556deec *)
mov %ymm1
    [L0x5555556385a0, L0x5555556385a2, L0x5555556385a4, L0x5555556385a6,
     L0x5555556385a8, L0x5555556385aa, L0x5555556385ac, L0x5555556385ae,
     L0x5555556385b0, L0x5555556385b2, L0x5555556385b4, L0x5555556385b6,
     L0x5555556385b8, L0x5555556385ba, L0x5555556385bc, L0x5555556385be];
(* vpshufb %ymm1,%ymm2,%ymm2                       #! PC = 0x55555556def4 *)
assert true && %ymm1 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                        0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm2
    [%ymm2[7],%ymm2[6],%ymm2[5],%ymm2[4],
     %ymm2[3],%ymm2[2],%ymm2[1],%ymm2[0],
     %ymm2[15],%ymm2[14],%ymm2[13],%ymm2[12],
     %ymm2[11],%ymm2[10],%ymm2[9],%ymm2[8]];
(* vpshufb %ymm1,%ymm3,%ymm3                       #! PC = 0x55555556def9 *)
assert true && %ymm1 = [0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16,
                        0x0f0e@16,0x0d0c@16,0x0b0a@16,0x0908@16,
                        0x0706@16,0x0504@16,0x0302@16,0x0100@16];
mov %ymm3
    [%ymm3[7],%ymm3[6],%ymm3[5],%ymm3[4],
     %ymm3[3],%ymm3[2],%ymm3[1],%ymm3[0],
     %ymm3[15],%ymm3[14],%ymm3[13],%ymm3[12],
     %ymm3[11],%ymm3[10],%ymm3[9],%ymm3[8]];
(* vpsubw %ymm4,%ymm8,%ymm12                       #! PC = 0x55555556defe *)
sub %ymm12 %ymm8 %ymm4;
(* vpaddw %ymm8,%ymm4,%ymm4                        #! PC = 0x55555556df02 *)
add %ymm4 %ymm8 %ymm4;
(* vpsubw %ymm5,%ymm9,%ymm13                       #! PC = 0x55555556df07 *)
sub %ymm13 %ymm9 %ymm5;
(* vpmullw %ymm2,%ymm12,%ymm8                      #! PC = 0x55555556df0b *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556df0f *)
add %ymm5 %ymm9 %ymm5;
(* vpsubw %ymm6,%ymm10,%ymm14                      #! PC = 0x55555556df14 *)
sub %ymm14 %ymm10 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm9                      #! PC = 0x55555556df18 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm6,%ymm6                       #! PC = 0x55555556df1c *)
add %ymm6 %ymm10 %ymm6;
(* vpsubw %ymm7,%ymm11,%ymm15                      #! PC = 0x55555556df21 *)
sub %ymm15 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm14,%ymm10                     #! PC = 0x55555556df25 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556df29 *)
add %ymm7 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556df2e *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm12,%ymm12                     #! PC = 0x55555556df32 *)
smull %ymm12 %mulLymm12 %ymm3 %ymm12;
(* vpmulhw %ymm3,%ymm13,%ymm13                     #! PC = 0x55555556df36 *)
smull %ymm13 %mulLymm13 %ymm3 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556df3a *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556df3e *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556df42 *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556df46 *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556df4a *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556df4e *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm8,%ymm12,%ymm8                       #! PC = 0x55555556df52 *)
sub %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm9,%ymm13,%ymm9                       #! PC = 0x55555556df57 *)
sub %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556df5c *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556df61 *)
sub %ymm11 %ymm15 %ymm11;
(* vpslld $0x10,%ymm5,%ymm3                        #! PC = 0x55555556df66 *)
mov %ymm3
    [0@int16,%ymm5[0],0@int16,%ymm5[2],
     0@int16,%ymm5[4],0@int16,%ymm5[6],
     0@int16,%ymm5[8],0@int16,%ymm5[10],
     0@int16,%ymm5[12],0@int16,%ymm5[14]];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556df6b *)
mov %ymm3
    [%ymm4[0],%ymm3[1],%ymm4[2],%ymm3[3],
     %ymm4[4],%ymm3[5],%ymm4[6],%ymm3[7],
     %ymm4[8],%ymm3[9],%ymm4[10],%ymm3[11],
     %ymm4[12],%ymm3[13],%ymm4[14],%ymm3[15]];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556df71 *)
mov %ymm4
    [%ymm4[1],0@int16,%ymm4[3],0@int16,
     %ymm4[5],0@int16,%ymm4[7],0@int16,
     %ymm4[9],0@int16,%ymm4[11],0@int16,
     %ymm4[13],0@int16,%ymm4[15],0@int16];
(* vpblendw $0xaa,%ymm5,%ymm4,%ymm5                #! PC = 0x55555556df76 *)
mov %ymm5
    [%ymm4[0],%ymm5[1],%ymm4[2],%ymm5[3],
     %ymm4[4],%ymm5[5],%ymm4[6],%ymm5[7],
     %ymm4[8],%ymm5[9],%ymm4[10],%ymm5[11],
     %ymm4[12],%ymm5[13],%ymm4[14],%ymm5[15]];
(* vpslld $0x10,%ymm7,%ymm4                        #! PC = 0x55555556df7c *)
mov %ymm4
    [0@int16,%ymm7[0],0@int16,%ymm7[2],
     0@int16,%ymm7[4],0@int16,%ymm7[6],
     0@int16,%ymm7[8],0@int16,%ymm7[10],
     0@int16,%ymm7[12],0@int16,%ymm7[14]];
(* vpblendw $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556df81 *)
mov %ymm4
    [%ymm6[0],%ymm4[1],%ymm6[2],%ymm4[3],
     %ymm6[4],%ymm4[5],%ymm6[6],%ymm4[7],
     %ymm6[8],%ymm4[9],%ymm6[10],%ymm4[11],
     %ymm6[12],%ymm4[13],%ymm6[14],%ymm4[15]];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556df87 *)
mov %ymm6
    [%ymm6[1],0@int16,%ymm6[3],0@int16,
     %ymm6[5],0@int16,%ymm6[7],0@int16,
     %ymm6[9],0@int16,%ymm6[11],0@int16,
     %ymm6[13],0@int16,%ymm6[15],0@int16];
(* vpblendw $0xaa,%ymm7,%ymm6,%ymm7                #! PC = 0x55555556df8c *)
mov %ymm7
    [%ymm6[0],%ymm7[1],%ymm6[2],%ymm7[3],
     %ymm6[4],%ymm7[5],%ymm6[6],%ymm7[7],
     %ymm6[8],%ymm7[9],%ymm6[10],%ymm7[11],
     %ymm6[12],%ymm7[13],%ymm6[14],%ymm7[15]];
(* vpslld $0x10,%ymm9,%ymm6                        #! PC = 0x55555556df92 *)
mov %ymm6
    [0@int16,%ymm9[0],0@int16,%ymm9[2],
     0@int16,%ymm9[4],0@int16,%ymm9[6],
     0@int16,%ymm9[8],0@int16,%ymm9[10],
     0@int16,%ymm9[12],0@int16,%ymm9[14]];
(* vpblendw $0xaa,%ymm6,%ymm8,%ymm6                #! PC = 0x55555556df98 *)
mov %ymm6
    [%ymm8[0],%ymm6[1],%ymm8[2],%ymm6[3],
     %ymm8[4],%ymm6[5],%ymm8[6],%ymm6[7],
     %ymm8[8],%ymm6[9],%ymm8[10],%ymm6[11],
     %ymm8[12],%ymm6[13],%ymm8[14],%ymm6[15]];
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x55555556df9e *)
mov %ymm8
    [%ymm8[1],0@int16,%ymm8[3],0@int16,
     %ymm8[5],0@int16,%ymm8[7],0@int16,
     %ymm8[9],0@int16,%ymm8[11],0@int16,
     %ymm8[13],0@int16,%ymm8[15],0@int16];
(* vpblendw $0xaa,%ymm9,%ymm8,%ymm9                #! PC = 0x55555556dfa4 *)
mov %ymm9
    [%ymm8[0],%ymm9[1],%ymm8[2],%ymm9[3],
     %ymm8[4],%ymm9[5],%ymm8[6],%ymm9[7],
     %ymm8[8],%ymm9[9],%ymm8[10],%ymm9[11],
     %ymm8[12],%ymm9[13],%ymm8[14],%ymm9[15]];
(* vpslld $0x10,%ymm11,%ymm8                       #! PC = 0x55555556dfaa *)
mov %ymm8
    [0@int16,%ymm11[0],0@int16,%ymm11[2],
     0@int16,%ymm11[4],0@int16,%ymm11[6],
     0@int16,%ymm11[8],0@int16,%ymm11[10],
     0@int16,%ymm11[12],0@int16,%ymm11[14]];
(* vpblendw $0xaa,%ymm8,%ymm10,%ymm8               #! PC = 0x55555556dfb0 *)
mov %ymm8
    [%ymm10[0],%ymm8[1],%ymm10[2],%ymm8[3],
     %ymm10[4],%ymm8[5],%ymm10[6],%ymm8[7],
     %ymm10[8],%ymm8[9],%ymm10[10],%ymm8[11],
     %ymm10[12],%ymm8[13],%ymm10[14],%ymm8[15]];
(* vpsrld $0x10,%ymm10,%ymm10                      #! PC = 0x55555556dfb6 *)
mov %ymm10
    [%ymm10[1],0@int16,%ymm10[3],0@int16,
     %ymm10[5],0@int16,%ymm10[7],0@int16,
     %ymm10[9],0@int16,%ymm10[11],0@int16,
     %ymm10[13],0@int16,%ymm10[15],0@int16];
(* vpblendw $0xaa,%ymm11,%ymm10,%ymm11             #! PC = 0x55555556dfbc *)
mov %ymm11
    [%ymm10[0],%ymm11[1],%ymm10[2],%ymm11[3],
     %ymm10[4],%ymm11[5],%ymm10[6],%ymm11[7],
     %ymm10[8],%ymm11[9],%ymm10[10],%ymm11[11],
     %ymm10[12],%ymm11[13],%ymm10[14],%ymm11[15]];

(******************** LEVEL 5 1 ********************)
(* CUT 9 3 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                   %ymm6[0],%ymm6[1],%ymm8[0],%ymm8[1]])
          (2**11*F**2) [Q, X**8 - 17** 12] /\
    eqmod (poly X [%ymm5[0],%ymm5[1],%ymm7[0],%ymm7[1],
                   %ymm9[0],%ymm9[1],%ymm11[0],%ymm11[1]])
          (2**11*F**2) [Q, X**8 - 17**140] /\
    eqmod (poly X [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                   %ymm6[2],%ymm6[3],%ymm8[2],%ymm8[3]])
          (2**11*F**2) [Q, X**8 - 17** 76] /\
    eqmod (poly X [%ymm5[2],%ymm5[3],%ymm7[2],%ymm7[3],
                   %ymm9[2],%ymm9[3],%ymm11[2],%ymm11[3]])
          (2**11*F**2) [Q, X**8 - 17**204] /\
    eqmod (poly X [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                   %ymm6[4],%ymm6[5],%ymm8[4],%ymm8[5]])
          (2**11*F**2) [Q, X**8 - 17** 44] /\
    eqmod (poly X [%ymm5[4],%ymm5[5],%ymm7[4],%ymm7[5],
                   %ymm9[4],%ymm9[5],%ymm11[4],%ymm11[5]])
          (2**11*F**2) [Q, X**8 - 17**172] /\
    eqmod (poly X [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                   %ymm6[6],%ymm6[7],%ymm8[6],%ymm8[7]])
          (2**11*F**2) [Q, X**8 - 17**108] /\
    eqmod (poly X [%ymm5[6],%ymm5[7],%ymm7[6],%ymm7[7],
                   %ymm9[6],%ymm9[7],%ymm11[6],%ymm11[7]])
          (2**11*F**2) [Q, X**8 - 17**236] /\
    eqmod (poly X [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                   %ymm6[8],%ymm6[9],%ymm8[8],%ymm8[9]])
          (2**11*F**2) [Q, X**8 - 17** 28] /\
    eqmod (poly X [%ymm5[8],%ymm5[9],%ymm7[8],%ymm7[9],
                   %ymm9[8],%ymm9[9],%ymm11[8],%ymm11[9]])
          (2**11*F**2) [Q, X**8 - 17**156] /\
    eqmod (poly X [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                   %ymm6[10],%ymm6[11],%ymm8[10],%ymm8[11]])
          (2**11*F**2) [Q, X**8 - 17** 92] /\
    eqmod (poly X [%ymm5[10],%ymm5[11],%ymm7[10],%ymm7[11],
                   %ymm9[10],%ymm9[11],%ymm11[10],%ymm11[11]])
          (2**11*F**2) [Q, X**8 - 17**220] /\
    eqmod (poly X [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                   %ymm6[12],%ymm6[13],%ymm8[12],%ymm8[13]])
          (2**11*F**2) [Q, X**8 - 17** 60] /\
    eqmod (poly X [%ymm5[12],%ymm5[13],%ymm7[12],%ymm7[13],
                   %ymm9[12],%ymm9[13],%ymm11[12],%ymm11[13]])
          (2**11*F**2) [Q, X**8 - 17**188] /\
    eqmod (poly X [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                   %ymm6[14],%ymm6[15],%ymm8[14],%ymm8[15]])
          (2**11*F**2) [Q, X**8 - 17**124] /\
    eqmod (poly X [%ymm5[14],%ymm5[15],%ymm7[14],%ymm7[15],
                   %ymm9[14],%ymm9[15],%ymm11[14],%ymm11[15]])
          (2**11*F**2) [Q, X**8 - 17**252];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm3 /\ %ymm3 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm4 /\ %ymm4 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm5 /\ %ymm5 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,
     6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2,6@16*NQ2]<s
    %ymm7 /\ %ymm7 <s
    [6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,
     6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2,6@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm8 /\ %ymm8 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm9 /\ %ymm9 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2]<s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2];
*)

(* vmovdqa 0x120(%rsi),%ymm12                      #! EA = L0x5555556385c0; Value = 0x0000000600000007; PC = 0x55555556dfc2 *)
mov %ymm12
    [L0x5555556385c0, L0x5555556385c2, L0x5555556385c4, L0x5555556385c6,
     L0x5555556385c8, L0x5555556385ca, L0x5555556385cc, L0x5555556385ce,
     L0x5555556385d0, L0x5555556385d2, L0x5555556385d4, L0x5555556385d6,
     L0x5555556385d8, L0x5555556385da, L0x5555556385dc, L0x5555556385de];
(* vpermd 0x220(%rsi),%ymm12,%ymm2                 #! EA = L0x5555556386c0; Value = 0x43d343d3e93de93d; PC = 0x55555556dfca *)
assert true && %ymm12 = [7@16, 0@16, 6@16, 0@16, 5@16, 0@16, 4@16, 0@16,
                         3@16, 0@16, 2@16, 0@16, 1@16, 0@16, 0@16, 0@16];
mov %ymm2
    [L0x5555556386dc,L0x5555556386de,L0x5555556386d8,L0x5555556386da,
     L0x5555556386d4,L0x5555556386d6,L0x5555556386d0,L0x5555556386d2,
     L0x5555556386cc,L0x5555556386ce,L0x5555556386c8,L0x5555556386ca,
     L0x5555556386c4,L0x5555556386c6,L0x5555556386c0,L0x5555556386c2];
(* vpermd 0x240(%rsi),%ymm12,%ymm10                #! EA = L0x5555556386e0; Value = 0xfad3fad3023d023d; PC = 0x55555556dfd3 *)
assert true && %ymm12 = [7@16, 0@16, 6@16, 0@16, 5@16, 0@16, 4@16, 0@16,
                         3@16, 0@16, 2@16, 0@16, 1@16, 0@16, 0@16, 0@16];
mov %ymm10
    [L0x5555556386fc,L0x5555556386fe,L0x5555556386f8,L0x5555556386fa,
     L0x5555556386f4,L0x5555556386f6,L0x5555556386f0,L0x5555556386f2,
     L0x5555556386ec,L0x5555556386ee,L0x5555556386e8,L0x5555556386ea,
     L0x5555556386e4,L0x5555556386e6,L0x5555556386e0,L0x5555556386e2];
(* vpsubw %ymm3,%ymm5,%ymm12                       #! PC = 0x55555556dfdc *)
sub %ymm12 %ymm5 %ymm3;
(* vpaddw %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556dfe0 *)
add %ymm3 %ymm5 %ymm3;
(* vpsubw %ymm4,%ymm7,%ymm13                       #! PC = 0x55555556dfe4 *)
sub %ymm13 %ymm7 %ymm4;
(* vpmullw %ymm2,%ymm12,%ymm5                      #! PC = 0x55555556dfe8 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm4,%ymm4                        #! PC = 0x55555556dfec *)
add %ymm4 %ymm7 %ymm4;
(* vpsubw %ymm6,%ymm9,%ymm14                       #! PC = 0x55555556dff0 *)
sub %ymm14 %ymm9 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm7                      #! PC = 0x55555556dff4 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm6,%ymm6                        #! PC = 0x55555556dff8 *)
add %ymm6 %ymm9 %ymm6;
(* vpsubw %ymm8,%ymm11,%ymm15                      #! PC = 0x55555556dffd *)
sub %ymm15 %ymm11 %ymm8;
(* vpmullw %ymm2,%ymm14,%ymm9                      #! PC = 0x55555556e002 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm8,%ymm8                       #! PC = 0x55555556e006 *)
add %ymm8 %ymm11 %ymm8;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e00b *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm10,%ymm12,%ymm12                    #! PC = 0x55555556e00f *)
smull %ymm12 %mulLymm12 %ymm10 %ymm12;
(* vpmulhw %ymm10,%ymm13,%ymm13                    #! PC = 0x55555556e014 *)
smull %ymm13 %mulLymm13 %ymm10 %ymm13;
(* vpmulhw %ymm10,%ymm14,%ymm14                    #! PC = 0x55555556e019 *)
smull %ymm14 %mulLymm14 %ymm10 %ymm14;
(* vpmulhw %ymm10,%ymm15,%ymm15                    #! PC = 0x55555556e01e *)
smull %ymm15 %mulLymm15 %ymm10 %ymm15;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556e023 *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556e027 *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556e02b *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e02f *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm5,%ymm12,%ymm5                       #! PC = 0x55555556e033 *)
sub %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm7,%ymm13,%ymm7                       #! PC = 0x55555556e037 *)
sub %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm9,%ymm14,%ymm9                       #! PC = 0x55555556e03b *)
sub %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e040 *)
sub %ymm11 %ymm15 %ymm11;
(* vmovdqa 0x40(%rsi),%ymm1                        #! EA = L0x5555556384e0; Value = 0x4ebf4ebf4ebf4ebf; PC = 0x55555556e045 *)
mov %ymm1
    [L0x5555556384e0, L0x5555556384e2, L0x5555556384e4, L0x5555556384e6,
     L0x5555556384e8, L0x5555556384ea, L0x5555556384ec, L0x5555556384ee,
     L0x5555556384f0, L0x5555556384f2, L0x5555556384f4, L0x5555556384f6,
     L0x5555556384f8, L0x5555556384fa, L0x5555556384fc, L0x5555556384fe];
(* vpmulhw %ymm1,%ymm3,%ymm12                      #! PC = 0x55555556e04a *)
smull %ymm12 %mulLymm3 %ymm1 %ymm3;
(* vpsraw $0xa,%ymm12,%ymm12                       #! PC = 0x55555556e04e *)
split %ymm12 %sra %ymm12 10;
(* vpmullw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e054 *)
smul (* %mulHymm12 *) %mulL %ymm0 %ymm12;
cast %ymm12@sint16[16] %mulL;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e058 *)
sub %ymm3 %ymm3 %ymm12;
(* vmovsldup %ymm4,%ymm10                          #! PC = 0x55555556e05d *)
mov %ymm10
    [%ymm4[0],%ymm4[1],%ymm4[0],%ymm4[1],
     %ymm4[4],%ymm4[5],%ymm4[4],%ymm4[5],
     %ymm4[8],%ymm4[9],%ymm4[8],%ymm4[9],
     %ymm4[12],%ymm4[13],%ymm4[12],%ymm4[13]];
(* vpblendd $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556e061 *)
mov %ymm10
    [%ymm3[0],%ymm3[1],%ymm10[2],%ymm10[3],
     %ymm3[4],%ymm3[5],%ymm10[6],%ymm10[7],
     %ymm3[8],%ymm3[9],%ymm10[10],%ymm10[11],
     %ymm3[12],%ymm3[13],%ymm10[14],%ymm10[15]];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556e067 *)
mov %ymm3
    [%ymm3[2],%ymm3[3],0@int16,0@int16,
     %ymm3[6],%ymm3[7],0@int16,0@int16,
     %ymm3[10],%ymm3[11],0@int16,0@int16,
     %ymm3[14],%ymm3[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm4,%ymm3,%ymm4                #! PC = 0x55555556e06c *)
mov %ymm4
    [%ymm3[0],%ymm3[1],%ymm4[2],%ymm4[3],
     %ymm3[4],%ymm3[5],%ymm4[6],%ymm4[7],
     %ymm3[8],%ymm3[9],%ymm4[10],%ymm4[11],
     %ymm3[12],%ymm3[13],%ymm4[14],%ymm4[15]];
(* vmovsldup %ymm8,%ymm3                           #! PC = 0x55555556e072 *)
mov %ymm3
    [%ymm8[0],%ymm8[1],%ymm8[0],%ymm8[1],
     %ymm8[4],%ymm8[5],%ymm8[4],%ymm8[5],
     %ymm8[8],%ymm8[9],%ymm8[8],%ymm8[9],
     %ymm8[12],%ymm8[13],%ymm8[12],%ymm8[13]];
(* vpblendd $0xaa,%ymm3,%ymm6,%ymm3                #! PC = 0x55555556e077 *)
mov %ymm3
    [%ymm6[0],%ymm6[1],%ymm3[2],%ymm3[3],
     %ymm6[4],%ymm6[5],%ymm3[6],%ymm3[7],
     %ymm6[8],%ymm6[9],%ymm3[10],%ymm3[11],
     %ymm6[12],%ymm6[13],%ymm3[14],%ymm3[15]];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556e07d *)
mov %ymm6
    [%ymm6[2],%ymm6[3],0@int16,0@int16,
     %ymm6[6],%ymm6[7],0@int16,0@int16,
     %ymm6[10],%ymm6[11],0@int16,0@int16,
     %ymm6[14],%ymm6[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm8,%ymm6,%ymm8                #! PC = 0x55555556e082 *)
mov %ymm8
    [%ymm6[0],%ymm6[1],%ymm8[2],%ymm8[3],
     %ymm6[4],%ymm6[5],%ymm8[6],%ymm8[7],
     %ymm6[8],%ymm6[9],%ymm8[10],%ymm8[11],
     %ymm6[12],%ymm6[13],%ymm8[14],%ymm8[15]];
(* vmovsldup %ymm7,%ymm6                           #! PC = 0x55555556e088 *)
mov %ymm6
    [%ymm7[0],%ymm7[1],%ymm7[0],%ymm7[1],
     %ymm7[4],%ymm7[5],%ymm7[4],%ymm7[5],
     %ymm7[8],%ymm7[9],%ymm7[8],%ymm7[9],
     %ymm7[12],%ymm7[13],%ymm7[12],%ymm7[13]];
(* vpblendd $0xaa,%ymm6,%ymm5,%ymm6                #! PC = 0x55555556e08c *)
mov %ymm6
    [%ymm5[0],%ymm5[1],%ymm6[2],%ymm6[3],
     %ymm5[4],%ymm5[5],%ymm6[6],%ymm6[7],
     %ymm5[8],%ymm5[9],%ymm6[10],%ymm6[11],
     %ymm5[12],%ymm5[13],%ymm6[14],%ymm6[15]];
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x55555556e092 *)
mov %ymm5
    [%ymm5[2],%ymm5[3],0@int16,0@int16,
     %ymm5[6],%ymm5[7],0@int16,0@int16,
     %ymm5[10],%ymm5[11],0@int16,0@int16,
     %ymm5[14],%ymm5[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x55555556e097 *)
mov %ymm7
    [%ymm5[0],%ymm5[1],%ymm7[2],%ymm7[3],
     %ymm5[4],%ymm5[5],%ymm7[6],%ymm7[7],
     %ymm5[8],%ymm5[9],%ymm7[10],%ymm7[11],
     %ymm5[12],%ymm5[13],%ymm7[14],%ymm7[15]];
(* vmovsldup %ymm11,%ymm5                          #! PC = 0x55555556e09d *)
mov %ymm5
    [%ymm11[0],%ymm11[1],%ymm11[0],%ymm11[1],
     %ymm11[4],%ymm11[5],%ymm11[4],%ymm11[5],
     %ymm11[8],%ymm11[9],%ymm11[8],%ymm11[9],
     %ymm11[12],%ymm11[13],%ymm11[12],%ymm11[13]];
(* vpblendd $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556e0a2 *)
mov %ymm5
    [%ymm9[0],%ymm9[1],%ymm5[2],%ymm5[3],
     %ymm9[4],%ymm9[5],%ymm5[6],%ymm5[7],
     %ymm9[8],%ymm9[9],%ymm5[10],%ymm5[11],
     %ymm9[12],%ymm9[13],%ymm5[14],%ymm5[15]];
(* vpsrlq $0x20,%ymm9,%ymm9                        #! PC = 0x55555556e0a8 *)
mov %ymm9
    [%ymm9[2],%ymm9[3],0@int16,0@int16,
     %ymm9[6],%ymm9[7],0@int16,0@int16,
     %ymm9[10],%ymm9[11],0@int16,0@int16,
     %ymm9[14],%ymm9[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm11,%ymm9,%ymm11              #! PC = 0x55555556e0ae *)
mov %ymm11
    [%ymm9[0],%ymm9[1],%ymm11[2],%ymm11[3],
     %ymm9[4],%ymm9[5],%ymm11[6],%ymm11[7],
     %ymm9[8],%ymm9[9],%ymm11[10],%ymm11[11],
     %ymm9[12],%ymm9[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 4 1 ********************)
(* CUT 10 3 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3]])
          (2**12*F**2) [Q, X**16 - 17**  24] /\
    eqmod (poly X [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          (2**12*F**2) [Q, X**16 - 17**152] /\
    eqmod (poly X [%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7]])
          (2**12*F**2) [Q, X**16 - 17** 88] /\
    eqmod (poly X [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          (2**12*F**2) [Q, X**16 - 17**216] /\
    eqmod (poly X [%ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]])
          (2**12*F**2) [Q, X**16 - 17** 56] /\
    eqmod (poly X [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          (2**12*F**2) [Q, X**16 - 17**184] /\
    eqmod (poly X [%ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]])
          (2**12*F**2) [Q, X**16 - 17**120] /\
    eqmod (poly X [%ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          (2**12*F**2) [Q, X**16 - 17**248];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2] <s
    %ymm3 /\ %ymm3 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,
     1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2] <s
    %ymm4 /\ %ymm4 <s
    [2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,
     2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm5 /\ %ymm5 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm6 /\ %ymm6 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm7 /\ %ymm7 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2] /\
    [4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,
     4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2,4@16*NQ2] <s
    %ymm8 /\ %ymm8 <s
    [4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,
     4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2,4@16*Q2] /\
    [1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,
     1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2,1@16*NQ2,1@16*NQ2,12@16*NQ2,12@16*NQ2] <s
    %ymm10 /\ %ymm10 <s
    [2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,
     2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2,2@16*Q2,2@16*Q2,12@16*Q2,12@16*Q2] /\
    [2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,
     2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2,2@16*NQ2] <s
    %ymm11 /\ %ymm11 <s
    [2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,
     2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2,2@16*Q2];
*)

(* vpermq $0x1b,0x1e0(%rsi),%ymm2                  #! EA = L0x555555638680; Value = 0xae55ae55ae55ae55; PC = 0x55555556e0b4 *)
mov %ymm2
    [L0x555555638698,L0x55555563869a,L0x55555563869c,L0x55555563869e,
     L0x555555638690,L0x555555638692,L0x555555638694,L0x555555638696,
     L0x555555638688,L0x55555563868a,L0x55555563868c,L0x55555563868e,
     L0x555555638680,L0x555555638682,L0x555555638684,L0x555555638686];
(* vpermq $0x1b,0x200(%rsi),%ymm9                  #! EA = L0x5555556386a0; Value = 0xff55ff55ff55ff55; PC = 0x55555556e0be *)
mov %ymm9
    [L0x5555556386b8,L0x5555556386ba,L0x5555556386bc,L0x5555556386be,
     L0x5555556386b0,L0x5555556386b2,L0x5555556386b4,L0x5555556386b6,
     L0x5555556386a8,L0x5555556386aa,L0x5555556386ac,L0x5555556386ae,
     L0x5555556386a0,L0x5555556386a2,L0x5555556386a4,L0x5555556386a6];
(* vpsubw %ymm10,%ymm4,%ymm12                      #! PC = 0x55555556e0c8 *)
sub %ymm12 %ymm4 %ymm10;
(* vpaddw %ymm4,%ymm10,%ymm10                      #! PC = 0x55555556e0cd *)
add %ymm10 %ymm4 %ymm10;
(* vpsubw %ymm3,%ymm8,%ymm13                       #! PC = 0x55555556e0d1 *)
sub %ymm13 %ymm8 %ymm3;
(* vpmullw %ymm2,%ymm12,%ymm4                      #! PC = 0x55555556e0d5 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm4@sint16[16] %mulL;
(* vpaddw %ymm8,%ymm3,%ymm3                        #! PC = 0x55555556e0d9 *)
add %ymm3 %ymm8 %ymm3;
(* vpsubw %ymm6,%ymm7,%ymm14                       #! PC = 0x55555556e0de *)
sub %ymm14 %ymm7 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm8                      #! PC = 0x55555556e0e2 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm7,%ymm6,%ymm6                        #! PC = 0x55555556e0e6 *)
add %ymm6 %ymm7 %ymm6;
(* vpsubw %ymm5,%ymm11,%ymm15                      #! PC = 0x55555556e0ea *)
sub %ymm15 %ymm11 %ymm5;
(* vpmullw %ymm2,%ymm14,%ymm7                      #! PC = 0x55555556e0ee *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm7@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm5,%ymm5                       #! PC = 0x55555556e0f2 *)
add %ymm5 %ymm11 %ymm5;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e0f7 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm9,%ymm12,%ymm12                     #! PC = 0x55555556e0fb *)
smull %ymm12 %mulLymm12 %ymm9 %ymm12;
(* vpmulhw %ymm9,%ymm13,%ymm13                     #! PC = 0x55555556e100 *)
smull %ymm13 %mulLymm13 %ymm9 %ymm13;
(* vpmulhw %ymm9,%ymm14,%ymm14                     #! PC = 0x55555556e105 *)
smull %ymm14 %mulLymm14 %ymm9 %ymm14;
(* vpmulhw %ymm9,%ymm15,%ymm15                     #! PC = 0x55555556e10a *)
smull %ymm15 %mulLymm15 %ymm9 %ymm15;
(* vpmulhw %ymm0,%ymm4,%ymm4                       #! PC = 0x55555556e10f *)
smull %ymm4 %red %ymm4 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556e113 *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x55555556e117 *)
smull %ymm7 %red %ymm7 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e11b *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm4,%ymm12,%ymm4                       #! PC = 0x55555556e11f *)
sub %ymm4 %ymm12 %ymm4;
(* vpsubw %ymm8,%ymm13,%ymm8                       #! PC = 0x55555556e123 *)
sub %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm7,%ymm14,%ymm7                       #! PC = 0x55555556e128 *)
sub %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e12c *)
sub %ymm11 %ymm15 %ymm11;
(* vpunpcklqdq %ymm3,%ymm10,%ymm9                  #! PC = 0x55555556e131 *)
mov %ymm9
    [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11]];
(* vpunpckhqdq %ymm3,%ymm10,%ymm3                  #! PC = 0x55555556e135 *)
mov %ymm3
    [%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]];
(* vpunpcklqdq %ymm5,%ymm6,%ymm10                  #! PC = 0x55555556e139 *)
mov %ymm10
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]];
(* vpunpckhqdq %ymm5,%ymm6,%ymm5                   #! PC = 0x55555556e13d *)
mov %ymm5
    [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vpunpcklqdq %ymm8,%ymm4,%ymm6                   #! PC = 0x55555556e141 *)
mov %ymm6
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11]];
(* vpunpckhqdq %ymm8,%ymm4,%ymm8                   #! PC = 0x55555556e146 *)
mov %ymm8
    [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15]];
(* vpunpcklqdq %ymm11,%ymm7,%ymm4                  #! PC = 0x55555556e14b *)
mov %ymm4
    [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]];
(* vpunpckhqdq %ymm11,%ymm7,%ymm11                 #! PC = 0x55555556e150 *)
mov %ymm11
    [%ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7],
     %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 3 1 ********************)
(* CUT 11 3 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                   %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                   %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          (2**13*F**2) [Q, X**32 - 17** 48] /\
    eqmod (poly X [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          (2**13*F**2) [Q, X**32 - 17**176] /\
    eqmod (poly X [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                   %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                   %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          (2**13*F**2) [Q, X**32 - 17**112] /\
    eqmod (poly X [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          (2**13*F**2) [Q, X**32 - 17**240];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    true;
*)

(* vpermq $0x4e,0x1a0(%rsi),%ymm2                  #! EA = L0x555555638640; Value = 0x34d534d534d534d5; PC = 0x55555556e155 *)
mov %ymm2
    [L0x555555638650,L0x555555638652,L0x555555638654,L0x555555638656,
     L0x555555638658,L0x55555563865a,L0x55555563865c,L0x55555563865e,
     L0x555555638640,L0x555555638642,L0x555555638644,L0x555555638646,
     L0x555555638648,L0x55555563864a,L0x55555563864c,L0x55555563864e];
(* vpermq $0x4e,0x1c0(%rsi),%ymm7                  #! EA = L0x555555638660; Value = 0x05d505d505d505d5; PC = 0x55555556e15f *)
mov %ymm7
    [L0x555555638670,L0x555555638672,L0x555555638674,L0x555555638676,
     L0x555555638678,L0x55555563867a,L0x55555563867c,L0x55555563867e,
     L0x555555638660,L0x555555638662,L0x555555638664,L0x555555638666,
     L0x555555638668,L0x55555563866a,L0x55555563866c,L0x55555563866e];
(* vpsubw %ymm9,%ymm3,%ymm12                       #! PC = 0x55555556e169 *)
sub %ymm12 %ymm3 %ymm9;
(* vpaddw %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556e16e *)
add %ymm9 %ymm3 %ymm9;
(* vpsubw %ymm10,%ymm5,%ymm13                      #! PC = 0x55555556e172 *)
sub %ymm13 %ymm5 %ymm10;
(* vpmullw %ymm2,%ymm12,%ymm3                      #! PC = 0x55555556e177 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm3@sint16[16] %mulL;
(* vpaddw %ymm5,%ymm10,%ymm10                      #! PC = 0x55555556e17b *)
add %ymm10 %ymm5 %ymm10;
(* vpsubw %ymm6,%ymm8,%ymm14                       #! PC = 0x55555556e17f *)
sub %ymm14 %ymm8 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm5                      #! PC = 0x55555556e183 *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm8,%ymm6,%ymm6                        #! PC = 0x55555556e187 *)
add %ymm6 %ymm8 %ymm6;
(* vpsubw %ymm4,%ymm11,%ymm15                      #! PC = 0x55555556e18c *)
sub %ymm15 %ymm11 %ymm4;
(* vpmullw %ymm2,%ymm14,%ymm8                      #! PC = 0x55555556e190 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm4,%ymm4                       #! PC = 0x55555556e194 *)
add %ymm4 %ymm11 %ymm4;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e199 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm7,%ymm12,%ymm12                     #! PC = 0x55555556e19d *)
smull %ymm12 %mulLymm12 %ymm7 %ymm12;
(* vpmulhw %ymm7,%ymm13,%ymm13                     #! PC = 0x55555556e1a1 *)
smull %ymm13 %mulLymm13 %ymm7 %ymm13;
(* vpmulhw %ymm7,%ymm14,%ymm14                     #! PC = 0x55555556e1a5 *)
smull %ymm14 %mulLymm14 %ymm7 %ymm14;
(* vpmulhw %ymm7,%ymm15,%ymm15                     #! PC = 0x55555556e1a9 *)
smull %ymm15 %mulLymm15 %ymm7 %ymm15;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x55555556e1ad *)
smull %ymm3 %red %ymm3 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556e1b1 *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556e1b5 *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e1b9 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm3,%ymm12,%ymm3                       #! PC = 0x55555556e1bd *)
sub %ymm3 %ymm12 %ymm3;
(* vpsubw %ymm5,%ymm13,%ymm5                       #! PC = 0x55555556e1c1 *)
sub %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm8,%ymm14,%ymm8                       #! PC = 0x55555556e1c5 *)
sub %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e1ca *)
sub %ymm11 %ymm15 %ymm11;
(* vpmulhw %ymm1,%ymm9,%ymm12                      #! PC = 0x55555556e1cf *)
smull %ymm12 %mulLymm9 %ymm1 %ymm9;
(* vpsraw $0xa,%ymm12,%ymm12                       #! PC = 0x55555556e1d3 *)
split %ymm12 %sra %ymm12 10;
(* vpmullw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e1d9 *)
smul (* %mulHymm12 *) %mulL %ymm0 %ymm12;
cast %ymm12@sint16[16] %mulL;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556e1dd *)
sub %ymm9 %ymm9 %ymm12;
(* vperm2i128 $0x20,%ymm10,%ymm9,%ymm7             #! PC = 0x55555556e1e2 *)
mov %ymm7
    [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
     %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7]];
(* vperm2i128 $0x31,%ymm10,%ymm9,%ymm10            #! PC = 0x55555556e1e8 *)
mov %ymm10
    [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
     %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vperm2i128 $0x20,%ymm4,%ymm6,%ymm9              #! PC = 0x55555556e1ee *)
mov %ymm9
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]];
(* vperm2i128 $0x31,%ymm4,%ymm6,%ymm4              #! PC = 0x55555556e1f4 *)
mov %ymm4
    [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]];
(* vperm2i128 $0x20,%ymm5,%ymm3,%ymm6              #! PC = 0x55555556e1fa *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7]];
(* vperm2i128 $0x31,%ymm5,%ymm3,%ymm5              #! PC = 0x55555556e200 *)
mov %ymm5
    [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vperm2i128 $0x20,%ymm11,%ymm8,%ymm3             #! PC = 0x55555556e206 *)
mov %ymm3
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]];
(* vperm2i128 $0x31,%ymm11,%ymm8,%ymm11            #! PC = 0x55555556e20c *)
mov %ymm11
    [%ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];

(******************** LEVEL 2 1 ********************)
(* CUT 12 3 *)

ecut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [ *%ymm7, *%ymm9, *%ymm6, *%ymm3])
          (2**14*F**2) [Q, X**64 - 17** 96] /\
    eqmod (poly X [ *%ymm10, *%ymm4, *%ymm5, *%ymm11])
          (2**14*F**2) [Q, X**64 - 17**224];
(*
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    true;
*)

(* vmovdqa 0x160(%rsi),%ymm2                       #! EA = L0x555555638600; Value = 0x3999399939993999; PC = 0x55555556e212 *)
mov %ymm2
    [L0x555555638600, L0x555555638602, L0x555555638604, L0x555555638606,
     L0x555555638608, L0x55555563860a, L0x55555563860c, L0x55555563860e,
     L0x555555638610, L0x555555638612, L0x555555638614, L0x555555638616,
     L0x555555638618, L0x55555563861a, L0x55555563861c, L0x55555563861e];
(* vmovdqa 0x180(%rsi),%ymm8                       #! EA = L0x555555638620; Value = 0xfe99fe99fe99fe99; PC = 0x55555556e21a *)
mov %ymm8
    [L0x555555638620, L0x555555638622, L0x555555638624, L0x555555638626,
     L0x555555638628, L0x55555563862a, L0x55555563862c, L0x55555563862e,
     L0x555555638630, L0x555555638632, L0x555555638634, L0x555555638636,
     L0x555555638638, L0x55555563863a, L0x55555563863c, L0x55555563863e];
(* vpsubw %ymm7,%ymm10,%ymm12                      #! PC = 0x55555556e222 *)
sub %ymm12 %ymm10 %ymm7;
(* vpaddw %ymm10,%ymm7,%ymm7                       #! PC = 0x55555556e226 *)
add %ymm7 %ymm10 %ymm7;
(* vpsubw %ymm9,%ymm4,%ymm13                       #! PC = 0x55555556e22b *)
sub %ymm13 %ymm4 %ymm9;
(* vpmullw %ymm2,%ymm12,%ymm10                     #! PC = 0x55555556e230 *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm4,%ymm9,%ymm9                        #! PC = 0x55555556e234 *)
add %ymm9 %ymm4 %ymm9;
(* vpsubw %ymm6,%ymm5,%ymm14                       #! PC = 0x55555556e238 *)
sub %ymm14 %ymm5 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm4                      #! PC = 0x55555556e23c *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm4@sint16[16] %mulL;
(* vpaddw %ymm5,%ymm6,%ymm6                        #! PC = 0x55555556e240 *)
add %ymm6 %ymm5 %ymm6;
(* vpsubw %ymm3,%ymm11,%ymm15                      #! PC = 0x55555556e244 *)
sub %ymm15 %ymm11 %ymm3;
(* vpmullw %ymm2,%ymm14,%ymm5                      #! PC = 0x55555556e248 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm5@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm3,%ymm3                       #! PC = 0x55555556e24c *)
add %ymm3 %ymm11 %ymm3;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e251 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555556e255 *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x55555556e25a *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
(* vpmulhw %ymm8,%ymm14,%ymm14                     #! PC = 0x55555556e25f *)
smull %ymm14 %mulLymm14 %ymm8 %ymm14;
(* vpmulhw %ymm8,%ymm15,%ymm15                     #! PC = 0x55555556e264 *)
smull %ymm15 %mulLymm15 %ymm8 %ymm15;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556e269 *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm4,%ymm4                       #! PC = 0x55555556e26d *)
smull %ymm4 %red %ymm4 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x55555556e271 *)
smull %ymm5 %red %ymm5 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e275 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm10,%ymm12,%ymm10                     #! PC = 0x55555556e279 *)
sub %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm4,%ymm13,%ymm4                       #! PC = 0x55555556e27e *)
sub %ymm4 %ymm13 %ymm4;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x55555556e282 *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e286 *)
sub %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm7,0x100(%rdi)                       #! EA = L0x7fffffffb280; PC = 0x55555556e28b *)
mov [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e]
    %ymm7;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb2a0; PC = 0x55555556e293 *)
mov [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be]
    %ymm9;
(* vmovdqa %ymm6,0x140(%rdi)                       #! EA = L0x7fffffffb2c0; PC = 0x55555556e29b *)
mov [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de]
    %ymm6;
(* vmovdqa %ymm3,0x160(%rdi)                       #! EA = L0x7fffffffb2e0; PC = 0x55555556e2a3 *)
mov [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe]
    %ymm3;
(* vmovdqa %ymm10,0x180(%rdi)                      #! EA = L0x7fffffffb300; PC = 0x55555556e2ab *)
mov [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e]
    %ymm10;
(* vmovdqa %ymm4,0x1a0(%rdi)                       #! EA = L0x7fffffffb320; PC = 0x55555556e2b3 *)
mov [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e]
    %ymm4;
(* vmovdqa %ymm5,0x1c0(%rdi)                       #! EA = L0x7fffffffb340; PC = 0x55555556e2bb *)
mov [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e]
    %ymm5;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb360; PC = 0x55555556e2c3 *)
mov [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e]
    %ymm11;

(******************** LEVEL 1 1 ********************)
(* CUT 13 4 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (poly X [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,
                   L0x7fffffffb286,L0x7fffffffb288,L0x7fffffffb28a,
                   L0x7fffffffb28c,L0x7fffffffb28e,L0x7fffffffb290,
                   L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296,
                   L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,
                   L0x7fffffffb29e,L0x7fffffffb2a0,L0x7fffffffb2a2,
                   L0x7fffffffb2a4,L0x7fffffffb2a6,L0x7fffffffb2a8,
                   L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae,
                   L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,
                   L0x7fffffffb2b6,L0x7fffffffb2b8,L0x7fffffffb2ba,
                   L0x7fffffffb2bc,L0x7fffffffb2be,L0x7fffffffb2c0,
                   L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6,
                   L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,
                   L0x7fffffffb2ce,L0x7fffffffb2d0,L0x7fffffffb2d2,
                   L0x7fffffffb2d4,L0x7fffffffb2d6,L0x7fffffffb2d8,
                   L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de,
                   L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,
                   L0x7fffffffb2e6,L0x7fffffffb2e8,L0x7fffffffb2ea,
                   L0x7fffffffb2ec,L0x7fffffffb2ee,L0x7fffffffb2f0,
                   L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6,
                   L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,
                   L0x7fffffffb2fe,L0x7fffffffb300,L0x7fffffffb302,
                   L0x7fffffffb304,L0x7fffffffb306,L0x7fffffffb308,
                   L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e,
                   L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,
                   L0x7fffffffb316,L0x7fffffffb318,L0x7fffffffb31a,
                   L0x7fffffffb31c,L0x7fffffffb31e,L0x7fffffffb320,
                   L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326,
                   L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,
                   L0x7fffffffb32e,L0x7fffffffb330,L0x7fffffffb332,
                   L0x7fffffffb334,L0x7fffffffb336,L0x7fffffffb338,
                   L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e,
                   L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,
                   L0x7fffffffb346,L0x7fffffffb348,L0x7fffffffb34a,
                   L0x7fffffffb34c,L0x7fffffffb34e,L0x7fffffffb350,
                   L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356,
                   L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,
                   L0x7fffffffb35e,L0x7fffffffb360,L0x7fffffffb362,
                   L0x7fffffffb364,L0x7fffffffb366,L0x7fffffffb368,
                   L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e,
                   L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,
                   L0x7fffffffb376,L0x7fffffffb378,L0x7fffffffb37a,
                   L0x7fffffffb37c,L0x7fffffffb37e])
    (2**15*F**2) [Q, X**128 - 17**192]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-14981)@16,(-14981)@16,(-14981)@16,(-14981)@16]<s
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be]<s
    [(14981)@16,(14981)@16,(14981)@16,(14981)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16] /\
    [(-4993)@16,(-4993)@16,(-4993)@16,(-4993)@16]<s
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e]<s
    [(4993)@16,(4993)@16,(4993)@16,(4993)@16];
    
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb180; Value = 0x020d0d8c0d410af7; PC = 0x55555556e2cb *)
mov %ymm4
    [L0x7fffffffb180, L0x7fffffffb182, L0x7fffffffb184, L0x7fffffffb186,
     L0x7fffffffb188, L0x7fffffffb18a, L0x7fffffffb18c, L0x7fffffffb18e,
     L0x7fffffffb190, L0x7fffffffb192, L0x7fffffffb194, L0x7fffffffb196,
     L0x7fffffffb198, L0x7fffffffb19a, L0x7fffffffb19c, L0x7fffffffb19e];
(* vmovdqa 0x100(%rdi),%ymm8                       #! EA = L0x7fffffffb280; Value = 0x082e0ac210bc0c7a; PC = 0x55555556e2cf *)
mov %ymm8
    [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb1a0; Value = 0x004ef4e1f928f89f; PC = 0x55555556e2d7 *)
mov %ymm5
    [L0x7fffffffb1a0, L0x7fffffffb1a2, L0x7fffffffb1a4, L0x7fffffffb1a6,
     L0x7fffffffb1a8, L0x7fffffffb1aa, L0x7fffffffb1ac, L0x7fffffffb1ae,
     L0x7fffffffb1b0, L0x7fffffffb1b2, L0x7fffffffb1b4, L0x7fffffffb1b6,
     L0x7fffffffb1b8, L0x7fffffffb1ba, L0x7fffffffb1bc, L0x7fffffffb1be];
(* vmovdqa 0x120(%rdi),%ymm9                       #! EA = L0x7fffffffb2a0; Value = 0xf9700702ff730e0e; PC = 0x55555556e2dc *)
mov %ymm9
    [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be];
(* vpbroadcastq 0x140(%rsi),%ymm2                  #! EA = L0x5555556385e0; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556e2e4 *)
broadcast %ymm2 16 [L0x5555556385e0, L0x5555556385e2];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb1c0; Value = 0x0b680a4ff795ff92; PC = 0x55555556e2ed *)
mov %ymm6
    [L0x7fffffffb1c0, L0x7fffffffb1c2, L0x7fffffffb1c4, L0x7fffffffb1c6,
     L0x7fffffffb1c8, L0x7fffffffb1ca, L0x7fffffffb1cc, L0x7fffffffb1ce,
     L0x7fffffffb1d0, L0x7fffffffb1d2, L0x7fffffffb1d4, L0x7fffffffb1d6,
     L0x7fffffffb1d8, L0x7fffffffb1da, L0x7fffffffb1dc, L0x7fffffffb1de];
(* vmovdqa 0x140(%rdi),%ymm10                      #! EA = L0x7fffffffb2c0; Value = 0x055300faf4f40802; PC = 0x55555556e2f2 *)
mov %ymm10
    [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb1e0; Value = 0x014a0147fa67fe19; PC = 0x55555556e2fa *)
mov %ymm7
    [L0x7fffffffb1e0, L0x7fffffffb1e2, L0x7fffffffb1e4, L0x7fffffffb1e6,
     L0x7fffffffb1e8, L0x7fffffffb1ea, L0x7fffffffb1ec, L0x7fffffffb1ee,
     L0x7fffffffb1f0, L0x7fffffffb1f2, L0x7fffffffb1f4, L0x7fffffffb1f6,
     L0x7fffffffb1f8, L0x7fffffffb1fa, L0x7fffffffb1fc, L0x7fffffffb1fe];
(* vmovdqa 0x160(%rdi),%ymm11                      #! EA = L0x7fffffffb2e0; Value = 0x00a7fd6607a6ffa4; PC = 0x55555556e2ff *)
mov %ymm11
    [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe];
(* vpbroadcastq 0x148(%rsi),%ymm3                  #! EA = L0x5555556385e8; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556e307 *)
broadcast %ymm3 16 [L0x5555556385e8, L0x5555556385ea];
(* vpsubw %ymm4,%ymm8,%ymm12                       #! PC = 0x55555556e310 *)
sub %ymm12 %ymm8 %ymm4;
(* vpaddw %ymm8,%ymm4,%ymm4                        #! PC = 0x55555556e314 *)
add %ymm4 %ymm8 %ymm4;
(* vpsubw %ymm5,%ymm9,%ymm13                       #! PC = 0x55555556e319 *)
sub %ymm13 %ymm9 %ymm5;
(* vpmullw %ymm2,%ymm12,%ymm8                      #! PC = 0x55555556e31d *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556e321 *)
add %ymm5 %ymm9 %ymm5;
(* vpsubw %ymm6,%ymm10,%ymm14                      #! PC = 0x55555556e326 *)
sub %ymm14 %ymm10 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm9                      #! PC = 0x55555556e32a *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm6,%ymm6                       #! PC = 0x55555556e32e *)
add %ymm6 %ymm10 %ymm6;
(* vpsubw %ymm7,%ymm11,%ymm15                      #! PC = 0x55555556e333 *)
sub %ymm15 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm14,%ymm10                     #! PC = 0x55555556e337 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556e33b *)
add %ymm7 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e340 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm12,%ymm12                     #! PC = 0x55555556e344 *)
smull %ymm12 %mulLymm12 %ymm3 %ymm12;
(* vpmulhw %ymm3,%ymm13,%ymm13                     #! PC = 0x55555556e348 *)
smull %ymm13 %mulLymm13 %ymm3 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556e34c *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556e350 *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556e354 *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556e358 *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556e35c *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e360 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm8,%ymm12,%ymm8                       #! PC = 0x55555556e364 *)
sub %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm9,%ymm13,%ymm9                       #! PC = 0x55555556e369 *)
sub %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556e36e *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e373 *)
sub %ymm11 %ymm15 %ymm11;
(* vpmulhw %ymm1,%ymm4,%ymm12                      #! PC = 0x55555556e378 *)
smull %ymm12 %mulLymm4 %ymm1 %ymm4;
(* vpsraw $0xa,%ymm12,%ymm12                       #! PC = 0x55555556e37c *)
split %ymm12 %sra %ymm12 10;
(* vpmullw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e382 *)
smul (* %mulHymm12 *) %mulL %ymm0 %ymm12;
cast %ymm12@sint16[16] %mulL;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556e386 *)
sub %ymm4 %ymm4 %ymm12;
(* vmovdqa %ymm4,(%rdi)                            #! EA = L0x7fffffffb180; PC = 0x55555556e38b *)
mov [L0x7fffffffb180, L0x7fffffffb182, L0x7fffffffb184, L0x7fffffffb186,
     L0x7fffffffb188, L0x7fffffffb18a, L0x7fffffffb18c, L0x7fffffffb18e,
     L0x7fffffffb190, L0x7fffffffb192, L0x7fffffffb194, L0x7fffffffb196,
     L0x7fffffffb198, L0x7fffffffb19a, L0x7fffffffb19c, L0x7fffffffb19e]
    %ymm4;
(* vmovdqa %ymm5,0x20(%rdi)                        #! EA = L0x7fffffffb1a0; PC = 0x55555556e38f *)
mov [L0x7fffffffb1a0, L0x7fffffffb1a2, L0x7fffffffb1a4, L0x7fffffffb1a6,
     L0x7fffffffb1a8, L0x7fffffffb1aa, L0x7fffffffb1ac, L0x7fffffffb1ae,
     L0x7fffffffb1b0, L0x7fffffffb1b2, L0x7fffffffb1b4, L0x7fffffffb1b6,
     L0x7fffffffb1b8, L0x7fffffffb1ba, L0x7fffffffb1bc, L0x7fffffffb1be]
    %ymm5;
(* vmovdqa %ymm6,0x40(%rdi)                        #! EA = L0x7fffffffb1c0; PC = 0x55555556e394 *)
mov [L0x7fffffffb1c0, L0x7fffffffb1c2, L0x7fffffffb1c4, L0x7fffffffb1c6,
     L0x7fffffffb1c8, L0x7fffffffb1ca, L0x7fffffffb1cc, L0x7fffffffb1ce,
     L0x7fffffffb1d0, L0x7fffffffb1d2, L0x7fffffffb1d4, L0x7fffffffb1d6,
     L0x7fffffffb1d8, L0x7fffffffb1da, L0x7fffffffb1dc, L0x7fffffffb1de]
    %ymm6;
(* vmovdqa %ymm7,0x60(%rdi)                        #! EA = L0x7fffffffb1e0; PC = 0x55555556e399 *)
mov [L0x7fffffffb1e0, L0x7fffffffb1e2, L0x7fffffffb1e4, L0x7fffffffb1e6,
     L0x7fffffffb1e8, L0x7fffffffb1ea, L0x7fffffffb1ec, L0x7fffffffb1ee,
     L0x7fffffffb1f0, L0x7fffffffb1f2, L0x7fffffffb1f4, L0x7fffffffb1f6,
     L0x7fffffffb1f8, L0x7fffffffb1fa, L0x7fffffffb1fc, L0x7fffffffb1fe]
    %ymm7;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb280; PC = 0x55555556e39e *)
mov [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e]
    %ymm8;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb2a0; PC = 0x55555556e3a6 *)
mov [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be]
    %ymm9;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb2c0; PC = 0x55555556e3ae *)
mov [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de]
    %ymm10;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb2e0; PC = 0x55555556e3b6 *)
mov [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe]
    %ymm11;
(* vmovdqa 0x80(%rdi),%ymm4                        #! EA = L0x7fffffffb200; Value = 0x0573fedc0519fa28; PC = 0x55555556e3be *)
mov %ymm4
    [L0x7fffffffb200, L0x7fffffffb202, L0x7fffffffb204, L0x7fffffffb206,
     L0x7fffffffb208, L0x7fffffffb20a, L0x7fffffffb20c, L0x7fffffffb20e,
     L0x7fffffffb210, L0x7fffffffb212, L0x7fffffffb214, L0x7fffffffb216,
     L0x7fffffffb218, L0x7fffffffb21a, L0x7fffffffb21c, L0x7fffffffb21e];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb300; Value = 0x054bfbdafa1205f3; PC = 0x55555556e3c6 *)
mov %ymm8
    [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e];
(* vmovdqa 0xa0(%rdi),%ymm5                        #! EA = L0x7fffffffb220; Value = 0xff280657fd74fdb7; PC = 0x55555556e3ce *)
mov %ymm5
    [L0x7fffffffb220, L0x7fffffffb222, L0x7fffffffb224, L0x7fffffffb226,
     L0x7fffffffb228, L0x7fffffffb22a, L0x7fffffffb22c, L0x7fffffffb22e,
     L0x7fffffffb230, L0x7fffffffb232, L0x7fffffffb234, L0x7fffffffb236,
     L0x7fffffffb238, L0x7fffffffb23a, L0x7fffffffb23c, L0x7fffffffb23e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb320; Value = 0xfa8e04a5008303e6; PC = 0x55555556e3d6 *)
mov %ymm9
    [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e];
(* vpbroadcastq 0x140(%rsi),%ymm2                  #! EA = L0x5555556385e0; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556e3de *)
broadcast %ymm2 16 [L0x5555556385e0, L0x5555556385e2];
(* vmovdqa 0xc0(%rdi),%ymm6                        #! EA = L0x7fffffffb240; Value = 0xfdeffd39fd2aff61; PC = 0x55555556e3e7 *)
mov %ymm6
    [L0x7fffffffb240, L0x7fffffffb242, L0x7fffffffb244, L0x7fffffffb246,
     L0x7fffffffb248, L0x7fffffffb24a, L0x7fffffffb24c, L0x7fffffffb24e,
     L0x7fffffffb250, L0x7fffffffb252, L0x7fffffffb254, L0x7fffffffb256,
     L0x7fffffffb258, L0x7fffffffb25a, L0x7fffffffb25c, L0x7fffffffb25e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb340; Value = 0xfb37fd48febf054e; PC = 0x55555556e3ef *)
mov %ymm10
    [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e];
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffb260; Value = 0xfbc9022cfabe03f3; PC = 0x55555556e3f7 *)
mov %ymm7
    [L0x7fffffffb260, L0x7fffffffb262, L0x7fffffffb264, L0x7fffffffb266,
     L0x7fffffffb268, L0x7fffffffb26a, L0x7fffffffb26c, L0x7fffffffb26e,
     L0x7fffffffb270, L0x7fffffffb272, L0x7fffffffb274, L0x7fffffffb276,
     L0x7fffffffb278, L0x7fffffffb27a, L0x7fffffffb27c, L0x7fffffffb27e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb360; Value = 0x0661052afc30fb8e; PC = 0x55555556e3ff *)
mov %ymm11
    [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e];
(* vpbroadcastq 0x148(%rsi),%ymm3                  #! EA = L0x5555556385e8; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556e407 *)
broadcast %ymm3 16 [L0x5555556385e8, L0x5555556385ea];
(* vpsubw %ymm4,%ymm8,%ymm12                       #! PC = 0x55555556e410 *)
sub %ymm12 %ymm8 %ymm4;
(* vpaddw %ymm8,%ymm4,%ymm4                        #! PC = 0x55555556e414 *)
add %ymm4 %ymm8 %ymm4;
(* vpsubw %ymm5,%ymm9,%ymm13                       #! PC = 0x55555556e419 *)
sub %ymm13 %ymm9 %ymm5;
(* vpmullw %ymm2,%ymm12,%ymm8                      #! PC = 0x55555556e41d *)
smull %mulHymm12 %mulL %ymm2 %ymm12;
cast %ymm8@sint16[16] %mulL;
(* vpaddw %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556e421 *)
add %ymm5 %ymm9 %ymm5;
(* vpsubw %ymm6,%ymm10,%ymm14                      #! PC = 0x55555556e426 *)
sub %ymm14 %ymm10 %ymm6;
(* vpmullw %ymm2,%ymm13,%ymm9                      #! PC = 0x55555556e42a *)
smull %mulHymm13 %mulL %ymm2 %ymm13;
cast %ymm9@sint16[16] %mulL;
(* vpaddw %ymm10,%ymm6,%ymm6                       #! PC = 0x55555556e42e *)
add %ymm6 %ymm10 %ymm6;
(* vpsubw %ymm7,%ymm11,%ymm15                      #! PC = 0x55555556e433 *)
sub %ymm15 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm14,%ymm10                     #! PC = 0x55555556e437 *)
smull %mulHymm14 %mulL %ymm2 %ymm14;
cast %ymm10@sint16[16] %mulL;
(* vpaddw %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556e43b *)
add %ymm7 %ymm11 %ymm7;
(* vpmullw %ymm2,%ymm15,%ymm11                     #! PC = 0x55555556e440 *)
smull %mulHymm15 %mulL %ymm2 %ymm15;
cast %ymm11@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm12,%ymm12                     #! PC = 0x55555556e444 *)
smull %ymm12 %mulLymm12 %ymm3 %ymm12;
(* vpmulhw %ymm3,%ymm13,%ymm13                     #! PC = 0x55555556e448 *)
smull %ymm13 %mulLymm13 %ymm3 %ymm13;
(* vpmulhw %ymm3,%ymm14,%ymm14                     #! PC = 0x55555556e44c *)
smull %ymm14 %mulLymm14 %ymm3 %ymm14;
(* vpmulhw %ymm3,%ymm15,%ymm15                     #! PC = 0x55555556e450 *)
smull %ymm15 %mulLymm15 %ymm3 %ymm15;
(* vpmulhw %ymm0,%ymm8,%ymm8                       #! PC = 0x55555556e454 *)
smull %ymm8 %red %ymm8 %ymm0;
assert true && %red = %mulLymm12;
assume %red = %mulLymm12 && true;
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x55555556e458 *)
smull %ymm9 %red %ymm9 %ymm0;
assert true && %red = %mulLymm13;
assume %red = %mulLymm13 && true;
(* vpmulhw %ymm0,%ymm10,%ymm10                     #! PC = 0x55555556e45c *)
smull %ymm10 %red %ymm10 %ymm0;
assert true && %red = %mulLymm14;
assume %red = %mulLymm14 && true;
(* vpmulhw %ymm0,%ymm11,%ymm11                     #! PC = 0x55555556e460 *)
smull %ymm11 %red %ymm11 %ymm0;
assert true && %red = %mulLymm15;
assume %red = %mulLymm15 && true;
(* vpsubw %ymm8,%ymm12,%ymm8                       #! PC = 0x55555556e464 *)
sub %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm9,%ymm13,%ymm9                       #! PC = 0x55555556e469 *)
sub %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm10,%ymm14,%ymm10                     #! PC = 0x55555556e46e *)
sub %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm11,%ymm15,%ymm11                     #! PC = 0x55555556e473 *)
sub %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm4,0x80(%rdi)                        #! EA = L0x7fffffffb200; PC = 0x55555556e478 *)
mov [L0x7fffffffb200, L0x7fffffffb202, L0x7fffffffb204, L0x7fffffffb206,
     L0x7fffffffb208, L0x7fffffffb20a, L0x7fffffffb20c, L0x7fffffffb20e,
     L0x7fffffffb210, L0x7fffffffb212, L0x7fffffffb214, L0x7fffffffb216,
     L0x7fffffffb218, L0x7fffffffb21a, L0x7fffffffb21c, L0x7fffffffb21e]
    %ymm4;
(* vmovdqa %ymm5,0xa0(%rdi)                        #! EA = L0x7fffffffb220; PC = 0x55555556e480 *)
mov [L0x7fffffffb220, L0x7fffffffb222, L0x7fffffffb224, L0x7fffffffb226,
     L0x7fffffffb228, L0x7fffffffb22a, L0x7fffffffb22c, L0x7fffffffb22e,
     L0x7fffffffb230, L0x7fffffffb232, L0x7fffffffb234, L0x7fffffffb236,
     L0x7fffffffb238, L0x7fffffffb23a, L0x7fffffffb23c, L0x7fffffffb23e]
    %ymm5;
(* vmovdqa %ymm6,0xc0(%rdi)                        #! EA = L0x7fffffffb240; PC = 0x55555556e488 *)
mov [L0x7fffffffb240, L0x7fffffffb242, L0x7fffffffb244, L0x7fffffffb246,
     L0x7fffffffb248, L0x7fffffffb24a, L0x7fffffffb24c, L0x7fffffffb24e,
     L0x7fffffffb250, L0x7fffffffb252, L0x7fffffffb254, L0x7fffffffb256,
     L0x7fffffffb258, L0x7fffffffb25a, L0x7fffffffb25c, L0x7fffffffb25e]
    %ymm6;
(* vmovdqa %ymm7,0xe0(%rdi)                        #! EA = L0x7fffffffb260; PC = 0x55555556e490 *)
mov [L0x7fffffffb260, L0x7fffffffb262, L0x7fffffffb264, L0x7fffffffb266,
     L0x7fffffffb268, L0x7fffffffb26a, L0x7fffffffb26c, L0x7fffffffb26e,
     L0x7fffffffb270, L0x7fffffffb272, L0x7fffffffb274, L0x7fffffffb276,
     L0x7fffffffb278, L0x7fffffffb27a, L0x7fffffffb27c, L0x7fffffffb27e]
    %ymm7;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb300; PC = 0x55555556e498 *)
mov [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e]
    %ymm8;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb320; PC = 0x55555556e4a0 *)
mov [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e]
    %ymm9;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb340; PC = 0x55555556e4a8 *)
mov [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e]
    %ymm10;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb360; PC = 0x55555556e4b0 *)
mov [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e]
    %ymm11;
(* #! <- SP = 0x7fffffff9948 *)
#! 0x7fffffff9948 = 0x7fffffff9948;
(* #ret                                            #! PC = 0x55555556e4b8 *)
#ret                                            #! 0x55555556e4b8 = 0x55555556e4b8;

{
   Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
   eqmod (poly X [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,
                  L0x7fffffffb186,L0x7fffffffb188,L0x7fffffffb18a,
                  L0x7fffffffb18c,L0x7fffffffb18e,L0x7fffffffb190,
                  L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196,
                  L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,
                  L0x7fffffffb19e,L0x7fffffffb1a0,L0x7fffffffb1a2,
                  L0x7fffffffb1a4,L0x7fffffffb1a6,L0x7fffffffb1a8,
                  L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae,
                  L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,
                  L0x7fffffffb1b6,L0x7fffffffb1b8,L0x7fffffffb1ba,
                  L0x7fffffffb1bc,L0x7fffffffb1be,L0x7fffffffb1c0,
                  L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6,
                  L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,
                  L0x7fffffffb1ce,L0x7fffffffb1d0,L0x7fffffffb1d2,
                  L0x7fffffffb1d4,L0x7fffffffb1d6,L0x7fffffffb1d8,
                  L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de,
                  L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,
                  L0x7fffffffb1e6,L0x7fffffffb1e8,L0x7fffffffb1ea,
                  L0x7fffffffb1ec,L0x7fffffffb1ee,L0x7fffffffb1f0,
                  L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6,
                  L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,
                  L0x7fffffffb1fe,L0x7fffffffb200,L0x7fffffffb202,
                  L0x7fffffffb204,L0x7fffffffb206,L0x7fffffffb208,
                  L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e,
                  L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,
                  L0x7fffffffb216,L0x7fffffffb218,L0x7fffffffb21a,
                  L0x7fffffffb21c,L0x7fffffffb21e,L0x7fffffffb220,
                  L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226,
                  L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,
                  L0x7fffffffb22e,L0x7fffffffb230,L0x7fffffffb232,
                  L0x7fffffffb234,L0x7fffffffb236,L0x7fffffffb238,
                  L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e,
                  L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,
                  L0x7fffffffb246,L0x7fffffffb248,L0x7fffffffb24a,
                  L0x7fffffffb24c,L0x7fffffffb24e,L0x7fffffffb250,
                  L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256,
                  L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,
                  L0x7fffffffb25e,L0x7fffffffb260,L0x7fffffffb262,
                  L0x7fffffffb264,L0x7fffffffb266,L0x7fffffffb268,
                  L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e,
                  L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,
                  L0x7fffffffb276,L0x7fffffffb278,L0x7fffffffb27a,
                  L0x7fffffffb27c,L0x7fffffffb27e,L0x7fffffffb280,
                  L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286,
                  L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,
                  L0x7fffffffb28e,L0x7fffffffb290,L0x7fffffffb292,
                  L0x7fffffffb294,L0x7fffffffb296,L0x7fffffffb298,
                  L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e,
                  L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,
                  L0x7fffffffb2a6,L0x7fffffffb2a8,L0x7fffffffb2aa,
                  L0x7fffffffb2ac,L0x7fffffffb2ae,L0x7fffffffb2b0,
                  L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6,
                  L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,
                  L0x7fffffffb2be,L0x7fffffffb2c0,L0x7fffffffb2c2,
                  L0x7fffffffb2c4,L0x7fffffffb2c6,L0x7fffffffb2c8,
                  L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce,
                  L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,
                  L0x7fffffffb2d6,L0x7fffffffb2d8,L0x7fffffffb2da,
                  L0x7fffffffb2dc,L0x7fffffffb2de,L0x7fffffffb2e0,
                  L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6,
                  L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,
                  L0x7fffffffb2ee,L0x7fffffffb2f0,L0x7fffffffb2f2,
                  L0x7fffffffb2f4,L0x7fffffffb2f6,L0x7fffffffb2f8,
                  L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe,
                  L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,
                  L0x7fffffffb306,L0x7fffffffb308,L0x7fffffffb30a,
                  L0x7fffffffb30c,L0x7fffffffb30e,L0x7fffffffb310,
                  L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316,
                  L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,
                  L0x7fffffffb31e,L0x7fffffffb320,L0x7fffffffb322,
                  L0x7fffffffb324,L0x7fffffffb326,L0x7fffffffb328,
                  L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e,
                  L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,
                  L0x7fffffffb336,L0x7fffffffb338,L0x7fffffffb33a,
                  L0x7fffffffb33c,L0x7fffffffb33e,L0x7fffffffb340,
                  L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346,
                  L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,
                  L0x7fffffffb34e,L0x7fffffffb350,L0x7fffffffb352,
                  L0x7fffffffb354,L0x7fffffffb356,L0x7fffffffb358,
                  L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e,
                  L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,
                  L0x7fffffffb366,L0x7fffffffb368,L0x7fffffffb36a,
                  L0x7fffffffb36c,L0x7fffffffb36e,L0x7fffffffb370,
                  L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376,
                  L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,
                  L0x7fffffffb37e])
         (2**16*F**2) [Q, X**256 + 1]
   prove with [cuts [7]]
&&
   Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186] /\
   [L0x7fffffffb180,L0x7fffffffb182,L0x7fffffffb184,L0x7fffffffb186]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e] /\
   [L0x7fffffffb188,L0x7fffffffb18a,L0x7fffffffb18c,L0x7fffffffb18e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196] /\
   [L0x7fffffffb190,L0x7fffffffb192,L0x7fffffffb194,L0x7fffffffb196]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e] /\
   [L0x7fffffffb198,L0x7fffffffb19a,L0x7fffffffb19c,L0x7fffffffb19e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6] /\
   [L0x7fffffffb1a0,L0x7fffffffb1a2,L0x7fffffffb1a4,L0x7fffffffb1a6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae] /\
   [L0x7fffffffb1a8,L0x7fffffffb1aa,L0x7fffffffb1ac,L0x7fffffffb1ae]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6] /\
   [L0x7fffffffb1b0,L0x7fffffffb1b2,L0x7fffffffb1b4,L0x7fffffffb1b6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be] /\
   [L0x7fffffffb1b8,L0x7fffffffb1ba,L0x7fffffffb1bc,L0x7fffffffb1be]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6] /\
   [L0x7fffffffb1c0,L0x7fffffffb1c2,L0x7fffffffb1c4,L0x7fffffffb1c6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce] /\
   [L0x7fffffffb1c8,L0x7fffffffb1ca,L0x7fffffffb1cc,L0x7fffffffb1ce]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6] /\
   [L0x7fffffffb1d0,L0x7fffffffb1d2,L0x7fffffffb1d4,L0x7fffffffb1d6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de] /\
   [L0x7fffffffb1d8,L0x7fffffffb1da,L0x7fffffffb1dc,L0x7fffffffb1de]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6] /\
   [L0x7fffffffb1e0,L0x7fffffffb1e2,L0x7fffffffb1e4,L0x7fffffffb1e6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee] /\
   [L0x7fffffffb1e8,L0x7fffffffb1ea,L0x7fffffffb1ec,L0x7fffffffb1ee]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6] /\
   [L0x7fffffffb1f0,L0x7fffffffb1f2,L0x7fffffffb1f4,L0x7fffffffb1f6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe] /\
   [L0x7fffffffb1f8,L0x7fffffffb1fa,L0x7fffffffb1fc,L0x7fffffffb1fe]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206] /\
   [L0x7fffffffb200,L0x7fffffffb202,L0x7fffffffb204,L0x7fffffffb206]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e] /\
   [L0x7fffffffb208,L0x7fffffffb20a,L0x7fffffffb20c,L0x7fffffffb20e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216] /\
   [L0x7fffffffb210,L0x7fffffffb212,L0x7fffffffb214,L0x7fffffffb216]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e] /\
   [L0x7fffffffb218,L0x7fffffffb21a,L0x7fffffffb21c,L0x7fffffffb21e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226] /\
   [L0x7fffffffb220,L0x7fffffffb222,L0x7fffffffb224,L0x7fffffffb226]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e] /\
   [L0x7fffffffb228,L0x7fffffffb22a,L0x7fffffffb22c,L0x7fffffffb22e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236] /\
   [L0x7fffffffb230,L0x7fffffffb232,L0x7fffffffb234,L0x7fffffffb236]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e] /\
   [L0x7fffffffb238,L0x7fffffffb23a,L0x7fffffffb23c,L0x7fffffffb23e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246] /\
   [L0x7fffffffb240,L0x7fffffffb242,L0x7fffffffb244,L0x7fffffffb246]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e] /\
   [L0x7fffffffb248,L0x7fffffffb24a,L0x7fffffffb24c,L0x7fffffffb24e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256] /\
   [L0x7fffffffb250,L0x7fffffffb252,L0x7fffffffb254,L0x7fffffffb256]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e] /\
   [L0x7fffffffb258,L0x7fffffffb25a,L0x7fffffffb25c,L0x7fffffffb25e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266] /\
   [L0x7fffffffb260,L0x7fffffffb262,L0x7fffffffb264,L0x7fffffffb266]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e] /\
   [L0x7fffffffb268,L0x7fffffffb26a,L0x7fffffffb26c,L0x7fffffffb26e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276] /\
   [L0x7fffffffb270,L0x7fffffffb272,L0x7fffffffb274,L0x7fffffffb276]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e] /\
   [L0x7fffffffb278,L0x7fffffffb27a,L0x7fffffffb27c,L0x7fffffffb27e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
   [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
   [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
   [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
   [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
   [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
   [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
   [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
   [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
   [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
   [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
   [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
   [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
   [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
   [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
   [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
   [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
   [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
   [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
   [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
   [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
   [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
   [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
   [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
   [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
   [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
   [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
   [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
   [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
   [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
   [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
   [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16] /\
   [(-31625)@16,(-31625)@16,(-31625)@16,(-31625)@16]<s
   [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
   [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e]<s
   [(31625)@16,(31625)@16,(31625)@16,(31625)@16]
   prove with [cuts [2]]
}

