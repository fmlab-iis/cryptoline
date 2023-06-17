(* popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24#b00,b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23 KeccakP1600times2_PermuteAll_24rounds.cl ../KeccakP-1600-reference_KeccakP1600times2_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.051394 seconds
Checking well-formedness:               [OK]            0.011845 seconds
Parsing CryptoLine file:                [OK]            0.018181 seconds
Checking well-formedness:               [OK]            0.012840 seconds
Equivalence of output group #0:         [OK]            0.912952 seconds
Equivalence of output group #1:         [OK]            0.550782 seconds
Final result:                           [OK]            2.332702 seconds
*)

const KeccakF1600RoundConstants_00 = 0x0000000000000001
const KeccakF1600RoundConstants_01 = 0x0000000000008082
const KeccakF1600RoundConstants_02 = 0x800000000000808a
const KeccakF1600RoundConstants_03 = 0x8000000080008000
const KeccakF1600RoundConstants_04 = 0x000000000000808b
const KeccakF1600RoundConstants_05 = 0x0000000080000001
const KeccakF1600RoundConstants_06 = 0x8000000080008081
const KeccakF1600RoundConstants_07 = 0x8000000000008009
const KeccakF1600RoundConstants_08 = 0x000000000000008a
const KeccakF1600RoundConstants_09 = 0x0000000000000088
const KeccakF1600RoundConstants_10 = 0x0000000080008009
const KeccakF1600RoundConstants_11 = 0x000000008000000a
const KeccakF1600RoundConstants_12 = 0x000000008000808b
const KeccakF1600RoundConstants_13 = 0x800000000000008b
const KeccakF1600RoundConstants_14 = 0x8000000000008089
const KeccakF1600RoundConstants_15 = 0x8000000000008003
const KeccakF1600RoundConstants_16 = 0x8000000000008002
const KeccakF1600RoundConstants_17 = 0x8000000000000080
const KeccakF1600RoundConstants_18 = 0x000000000000800a
const KeccakF1600RoundConstants_19 = 0x800000008000000a
const KeccakF1600RoundConstants_20 = 0x8000000080008081
const KeccakF1600RoundConstants_21 = 0x8000000000008080
const KeccakF1600RoundConstants_22 = 0x0000000080000001
const KeccakF1600RoundConstants_23 = 0x8000000080008008

proc main (uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
           uint64 A05, uint64 A06, uint64 A07, uint64 A08, uint64 A09,
           uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
           uint64 A15, uint64 A16, uint64 A17, uint64 A18, uint64 A19,
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
           uint64 B00, uint64 B01, uint64 B02, uint64 B03, uint64 B04,
           uint64 B05, uint64 B06, uint64 B07, uint64 B08, uint64 B09,
           uint64 B10, uint64 B11, uint64 B12, uint64 B13, uint64 B14,
           uint64 B15, uint64 B16, uint64 B17, uint64 B18, uint64 B19,
           uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24) =
{
  true
  &&
  true
}

(******** inputs ********)

mov L0x7effec40 A00; mov L0x7effec48 B00; mov L0x7effec50 A01; mov L0x7effec58 B01;
mov L0x7effec60 A02; mov L0x7effec68 B02; mov L0x7effec70 A03; mov L0x7effec78 B03;
mov L0x7effec80 A04; mov L0x7effec88 B04; mov L0x7effec90 A05; mov L0x7effec98 B05;
mov L0x7effeca0 A06; mov L0x7effeca8 B06; mov L0x7effecb0 A07; mov L0x7effecb8 B07;
mov L0x7effecc0 A08; mov L0x7effecc8 B08; mov L0x7effecd0 A09; mov L0x7effecd8 B09;
mov L0x7effece0 A10; mov L0x7effece8 B10; mov L0x7effecf0 A11; mov L0x7effecf8 B11;
mov L0x7effed00 A12; mov L0x7effed08 B12; mov L0x7effed10 A13; mov L0x7effed18 B13;
mov L0x7effed20 A14; mov L0x7effed28 B14; mov L0x7effed30 A15; mov L0x7effed38 B15;
mov L0x7effed40 A16; mov L0x7effed48 B16; mov L0x7effed50 A17; mov L0x7effed58 B17;
mov L0x7effed60 A18; mov L0x7effed68 B18; mov L0x7effed70 A19; mov L0x7effed78 B19;
mov L0x7effed80 A20; mov L0x7effed88 B20; mov L0x7effed90 A21; mov L0x7effed98 B21;
mov L0x7effeda0 A22; mov L0x7effeda8 B22; mov L0x7effedb0 A23; mov L0x7effedb8 B23;
mov L0x7effedc0 A24; mov L0x7effedc8 B24;


(******** constants ********)

mov L0x25400 $KeccakF1600RoundConstants_00@uint64;
mov L0x25408 $KeccakF1600RoundConstants_01@uint64;
mov L0x25410 $KeccakF1600RoundConstants_02@uint64;
mov L0x25418 $KeccakF1600RoundConstants_03@uint64;
mov L0x25420 $KeccakF1600RoundConstants_04@uint64;
mov L0x25428 $KeccakF1600RoundConstants_05@uint64;
mov L0x25430 $KeccakF1600RoundConstants_06@uint64;
mov L0x25438 $KeccakF1600RoundConstants_07@uint64;
mov L0x25440 $KeccakF1600RoundConstants_08@uint64;
mov L0x25448 $KeccakF1600RoundConstants_09@uint64;
mov L0x25450 $KeccakF1600RoundConstants_10@uint64;
mov L0x25458 $KeccakF1600RoundConstants_11@uint64;
mov L0x25460 $KeccakF1600RoundConstants_12@uint64;
mov L0x25468 $KeccakF1600RoundConstants_13@uint64;
mov L0x25470 $KeccakF1600RoundConstants_14@uint64;
mov L0x25478 $KeccakF1600RoundConstants_15@uint64;
mov L0x25480 $KeccakF1600RoundConstants_16@uint64;
mov L0x25488 $KeccakF1600RoundConstants_17@uint64;
mov L0x25490 $KeccakF1600RoundConstants_18@uint64;
mov L0x25498 $KeccakF1600RoundConstants_19@uint64;
mov L0x254a0 $KeccakF1600RoundConstants_20@uint64;
mov L0x254a8 $KeccakF1600RoundConstants_21@uint64;
mov L0x254b0 $KeccakF1600RoundConstants_22@uint64;
mov L0x254b8 $KeccakF1600RoundConstants_23@uint64;

(* #! -> SP = 0x7effec30 *)
#! 0x7effec30 = 0x7effec30;
(* #sub	r1, pc, #264	; 0x108                        #! PC = 0x25500 *)
#sub	%%r1, %%pc, #264	; 0x108                        #! 0x25500 = 0x25500;
(* #movs	r2, #24                                    #! PC = 0x25504 *)
#movs	%%r2, #24                                    #! 0x25504 = 0x25504;
(* #b	0x25800 <KeccakP1600times2_PermuteAll>       #! PC = 0x25508 *)
#b	0x25800 <KeccakP1600times2_PermuteAll>       #! 0x25508 = 0x25508;
(* vld1.64	{d0-d3}, [r3 :256]!                     #! EA = L0x7effec40; PC = 0x25814 *)
mov q0_0 L0x7effec40; mov q0_1 L0x7effec48; mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* #bic	r5, r5, #15                                #! PC = 0x25818 *)
#bic	%%r5, %%r5, #15                                #! 0x25818 = 0x25818;
(* vld1.64	{d4-d7}, [r3 :256]!                     #! EA = L0x7effec60; PC = 0x2581c *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68; mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* vld1.64	{d8-d11}, [r3 :256]!                    #! EA = L0x7effec80; PC = 0x25820 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88; mov q5_0 L0x7effec90; mov q5_1 L0x7effec98;
(* vld1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x25824 *)
mov q6_0 L0x7effeca0; mov q6_1 L0x7effeca8;
(* veor	q0, q0, q5                                 #! PC = 0x25828 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vld1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x2582c *)
mov q7_0 L0x7effecb0; mov q7_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25830 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x25834 *)
mov q8_0 L0x7effecc0; mov q8_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x25838 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x2583c *)
mov q9_0 L0x7effecd0; mov q9_1 L0x7effecd8;
(* veor	q3, q3, q8                                 #! PC = 0x25840 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vld1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x25844 *)
mov q5_0 L0x7effece0; mov q5_1 L0x7effece8;
(* veor	q4, q4, q9                                 #! PC = 0x25848 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2584c *)
mov q6_0 L0x7effecf0; mov q6_1 L0x7effecf8;
(* veor	q0, q0, q5                                 #! PC = 0x25850 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vld1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x25854 *)
mov q7_0 L0x7effed00; mov q7_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25858 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2585c *)
mov q8_0 L0x7effed10; mov q8_1 L0x7effed18;
(* veor	q2, q2, q7                                 #! PC = 0x25860 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x25864 *)
mov q9_0 L0x7effed20; mov q9_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25868 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vld1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2586c *)
mov q5_0 L0x7effed30; mov q5_1 L0x7effed38;
(* veor	q4, q4, q9                                 #! PC = 0x25870 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x25874 *)
mov q6_0 L0x7effed40; mov q6_1 L0x7effed48;
(* veor	q0, q0, q5                                 #! PC = 0x25878 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vld1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x2587c *)
mov q7_0 L0x7effed50; mov q7_1 L0x7effed58;
(* veor	q1, q1, q6                                 #! PC = 0x25880 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x25884 *)
mov q8_0 L0x7effed60; mov q8_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x25888 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x2588c *)
mov q9_0 L0x7effed70; mov q9_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x25890 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vld1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x25894 *)
mov q5_0 L0x7effed80; mov q5_1 L0x7effed88;
(* veor	q4, q4, q9                                 #! PC = 0x25898 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x2589c *)
mov q6_0 L0x7effed90; mov q6_1 L0x7effed98;
(* veor	q0, q0, q5                                 #! PC = 0x258a0 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vld1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x258a4 *)
mov q7_0 L0x7effeda0; mov q7_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x258a8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x258ac *)
mov q8_0 L0x7effedb0; mov q8_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x258b0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x258b4 *)
mov q9_0 L0x7effedc0; mov q9_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x258bc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x258c0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25400; PC = 0x25960 *)
mov q15_0 L0x25400;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25400; PC = 0x2596c *)
mov q15_1 L0x25400;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25408; PC = 0x25d60 *)
mov q15_0 L0x25408;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25408; PC = 0x25d6c *)
mov q15_1 L0x25408;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25410; PC = 0x26194 *)
mov q15_0 L0x25410;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25410; PC = 0x261a0 *)
mov q15_1 L0x25410;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25418; PC = 0x265a4 *)
mov q15_0 L0x25418;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25418; PC = 0x265b0 *)
mov q15_1 L0x25418;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25420; PC = 0x25960 *)
mov q15_0 L0x25420;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25420; PC = 0x2596c *)
mov q15_1 L0x25420;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25428; PC = 0x25d60 *)
mov q15_0 L0x25428;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25428; PC = 0x25d6c *)
mov q15_1 L0x25428;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25430; PC = 0x26194 *)
mov q15_0 L0x25430;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25430; PC = 0x261a0 *)
mov q15_1 L0x25430;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25438; PC = 0x265a4 *)
mov q15_0 L0x25438;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25438; PC = 0x265b0 *)
mov q15_1 L0x25438;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25440; PC = 0x25960 *)
mov q15_0 L0x25440;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25440; PC = 0x2596c *)
mov q15_1 L0x25440;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25448; PC = 0x25d60 *)
mov q15_0 L0x25448;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25448; PC = 0x25d6c *)
mov q15_1 L0x25448;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25450; PC = 0x26194 *)
mov q15_0 L0x25450;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25450; PC = 0x261a0 *)
mov q15_1 L0x25450;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25458; PC = 0x265a4 *)
mov q15_0 L0x25458;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25458; PC = 0x265b0 *)
mov q15_1 L0x25458;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25460; PC = 0x25960 *)
mov q15_0 L0x25460;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25460; PC = 0x2596c *)
mov q15_1 L0x25460;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25468; PC = 0x25d60 *)
mov q15_0 L0x25468;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25468; PC = 0x25d6c *)
mov q15_1 L0x25468;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25470; PC = 0x26194 *)
mov q15_0 L0x25470;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25470; PC = 0x261a0 *)
mov q15_1 L0x25470;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25478; PC = 0x265a4 *)
mov q15_0 L0x25478;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25478; PC = 0x265b0 *)
mov q15_1 L0x25478;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25480; PC = 0x25960 *)
mov q15_0 L0x25480;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25480; PC = 0x2596c *)
mov q15_1 L0x25480;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25488; PC = 0x25d60 *)
mov q15_0 L0x25488;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25488; PC = 0x25d6c *)
mov q15_1 L0x25488;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25490; PC = 0x26194 *)
mov q15_0 L0x25490;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25490; PC = 0x261a0 *)
mov q15_1 L0x25490;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x25498; PC = 0x265a4 *)
mov q15_0 L0x25498;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x25498; PC = 0x265b0 *)
mov q15_1 L0x25498;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* vadd.i64	q6, q2, q2                             #! PC = 0x258c4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x258c8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x258cc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x258d0 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x258d4 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x258d8 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x258dc *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x258e0 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x258e4 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x258e8 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x258ec *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x258f0 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x258f4 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x258fc *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25900 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25904 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25908 *)
mov q1_0 L0x7effeca0; mov q1_1 L0x7effeca8;
(* veor	q10, q10, q5                               #! PC = 0x2590c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x25910 *)
mov q2_0 L0x7effed00; mov q2_1 L0x7effed08;
(* veor	q1, q1, q6                                 #! PC = 0x25914 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x25918 *)
mov q3_0 L0x7effed60; mov q3_1 L0x7effed68;
(* veor	q2, q2, q7                                 #! PC = 0x2591c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x25920 *)
mov q4_0 L0x7effedc0; mov q4_1 L0x7effedc8;
(* veor	q3, q3, q8                                 #! PC = 0x25924 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x2592c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25930 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25934 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25938 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2593c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25940 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25944 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25948 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x2594c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25950 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25954 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25958 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x2595c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x254a0; PC = 0x25960 *)
mov q15_0 L0x254a0;
(* vbic	q0, q12, q11                               #! PC = 0x25964 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25968 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x254a0; PC = 0x2596c *)
mov q15_1 L0x254a0;
(* veor	q0, q0, q10                                #! PC = 0x25970 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25974 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25978 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x2597c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25980 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25988 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x2598c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25990 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effeca0; PC = 0x25994 *)
mov L0x7effeca0 q1_0; mov L0x7effeca8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25998 *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effed00; PC = 0x2599c *)
mov L0x7effed00 q2_0; mov L0x7effed08 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x259a0 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effed60; PC = 0x259a4 *)
mov L0x7effed60 q3_0; mov L0x7effed68 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effedc0; PC = 0x259a8 *)
mov L0x7effedc0 q4_0; mov L0x7effedc8 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x259b4 *)
mov q12_0 L0x7effece0; mov q12_1 L0x7effece8;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x259b8 *)
mov q13_0 L0x7effed40; mov q13_1 L0x7effed48;
(* veor	q15, q5, q12                               #! PC = 0x259bc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x259c0 *)
mov q14_0 L0x7effeda0; mov q14_1 L0x7effeda8;
(* veor	q6, q6, q13                                #! PC = 0x259c8 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x259cc *)
mov q10_0 L0x7effec70; mov q10_1 L0x7effec78;
(* veor	q7, q7, q14                                #! PC = 0x259d0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x259d4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x259d8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x259dc *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x259e0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x259e4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x259e8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x259ec *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x259f0 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x259f4 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x259f8 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x259fc *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25a00 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25a04 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25a08 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25a10 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25a18 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25a1c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25a20 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25a24 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25a28 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25a2c *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25a30 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x25a34 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25a38 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25a3c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25a40 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25a44 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25a4c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25a50 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25a54 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x25a58 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25a5c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25a60 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25a64 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25a68 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25a70 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25a74 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25a7c *)
mov q14_0 L0x7effed80; mov q14_1 L0x7effed88;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25a84 *)
mov q10_0 L0x7effec50; mov q10_1 L0x7effec58;
(* veor	q15, q5, q14                               #! PC = 0x25a88 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25a8c *)
mov q11_0 L0x7effecb0; mov q11_1 L0x7effecb8;
(* veor	q6, q6, q10                                #! PC = 0x25a90 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25a94 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25a98 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25a9c *)
mov q13_0 L0x7effed70; mov q13_1 L0x7effed78;
(* veor	q8, q8, q12                                #! PC = 0x25aa0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25aa4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25aa8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25aac *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ab0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ab4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ab8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25abc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ac0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ac4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ac8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25acc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ad0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ad8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ae0 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25ae4 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25ae8 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25aec *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25af0 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25af4 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25afc *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25b00 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25b04 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25b08 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25b0c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x25b10 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25b14 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25b18 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25b1c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25b20 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25b24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x25b28 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25b2c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25b30 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25b38 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25b3c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25b44 *)
mov q11_0 L0x7effec90; mov q11_1 L0x7effec98;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25b48 *)
mov q12_0 L0x7effecf0; mov q12_1 L0x7effecf8;
(* veor	q15, q5, q11                               #! PC = 0x25b4c *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25b50 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25b54 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25b58 *)
mov q14_0 L0x7effedb0; mov q14_1 L0x7effedb8;
(* veor	q7, q7, q13                                #! PC = 0x25b60 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25b64 *)
mov q10_0 L0x7effec80; mov q10_1 L0x7effec88;
(* veor	q8, q8, q14                                #! PC = 0x25b68 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25b6c *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25b70 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25b74 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25b78 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25b7c *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25b80 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25b84 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25b88 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25b8c *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25b90 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25b94 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25b98 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ba0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25ba8 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25bac *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25bb0 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25bb4 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25bb8 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x25bbc *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25bc0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25bc4 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25bc8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25bcc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25bd0 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25bd4 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25bd8 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25bdc *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25be0 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x25be4 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25bec *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25bf0 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25bf4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25bf8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25c00 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25c04 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c0c *)
mov q13_0 L0x7effed30; mov q13_1 L0x7effed38;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c10 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x25c18 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25c1c *)
mov q10_0 L0x7effec60; mov q10_1 L0x7effec68;
(* veor	q6, q6, q14                                #! PC = 0x25c20 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25c24 *)
mov q11_0 L0x7effecc0; mov q11_1 L0x7effecc8;
(* veor	q7, q7, q10                                #! PC = 0x25c28 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25c2c *)
mov q12_0 L0x7effed20; mov q12_1 L0x7effed28;
(* veor	q8, q8, q11                                #! PC = 0x25c30 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x25c34 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x25c38 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x25c3c *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x25c40 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x25c44 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x25c48 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x25c4c *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x25c50 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x25c54 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x25c58 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x25c5c *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x25c60 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25c64 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25c68 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25c6c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25c70 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x25c74 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25c78 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x25c7c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x25c80 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x25c88 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25c8c *)
mov L0x7effed30 q5_0; mov L0x7effed38 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x25c90 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x25c94 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25c9c *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25ca0 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25ca4 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25ca8 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25cac *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x25cb0 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x25cb8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x25cbc *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x25cc0 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x25cc4 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x25cc8 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x25ccc *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x25cd0 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x25cd4 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x25cd8 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x25cdc *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x25ce0 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x25ce4 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x25ce8 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x25cec *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x25cf4 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x25cf8 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x25cfc *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d00 *)
mov q1_0 L0x7effed40; mov q1_1 L0x7effed48;
(* veor	q10, q10, q5                               #! PC = 0x25d08 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25d0c *)
mov q2_0 L0x7effecb0; mov q2_1 L0x7effecb8;
(* veor	q1, q1, q6                                 #! PC = 0x25d10 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25d14 *)
mov q3_0 L0x7effedb0; mov q3_1 L0x7effedb8;
(* veor	q2, q2, q7                                 #! PC = 0x25d1c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25d20 *)
mov q4_0 L0x7effed20; mov q4_1 L0x7effed28;
(* veor	q3, q3, q8                                 #! PC = 0x25d24 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x25d2c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25d30 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x25d34 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x25d38 *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25d3c *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x25d40 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x25d44 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25d48 *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x25d4c *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x25d50 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25d54 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x25d58 *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x25d5c *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x254a8; PC = 0x25d60 *)
mov q15_0 L0x254a8;
(* vbic	q0, q12, q11                               #! PC = 0x25d64 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x25d68 *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x254a8; PC = 0x25d6c *)
mov q15_1 L0x254a8;
(* veor	q0, q0, q10                                #! PC = 0x25d70 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x25d74 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x25d78 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x25d7c *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x25d80 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x25d88 *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x25d8c *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x25d90 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effed40; PC = 0x25d94 *)
mov L0x7effed40 q1_0; mov L0x7effed48 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x25d9c *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effecb0; PC = 0x25da0 *)
mov L0x7effecb0 q2_0; mov L0x7effecb8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x25da4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effedb0; PC = 0x25da8 *)
mov L0x7effedb0 q3_0; mov L0x7effedb8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed20; PC = 0x25db0 *)
mov L0x7effed20 q4_0; mov L0x7effed28 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25dbc *)
mov q12_0 L0x7effed80; mov q12_1 L0x7effed88;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25dc4 *)
mov q13_0 L0x7effecf0; mov q13_1 L0x7effecf8;
(* veor	q15, q5, q12                               #! PC = 0x25dcc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25dd0 *)
mov q14_0 L0x7effec60; mov q14_1 L0x7effec68;
(* veor	q6, q6, q13                                #! PC = 0x25dd4 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25dd8 *)
mov q10_0 L0x7effed60; mov q10_1 L0x7effed68;
(* veor	q7, q7, q14                                #! PC = 0x25de0 *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25de4 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x25de8 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x25dec *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x25df0 *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x25df4 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x25df8 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x25dfc *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x25e00 *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x25e04 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x25e08 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x25e0c *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x25e10 *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x25e14 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25e18 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25e20 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25e28 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25e2c *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25e30 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25e34 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25e38 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x25e3c *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25e44 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effecf0; PC = 0x25e48 *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25e50 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25e54 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25e58 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x25e5c *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25e60 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25e64 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25e68 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x25e6c *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25e74 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x25e78 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25e7c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25e80 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25e88 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25e8c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25e94 *)
mov q14_0 L0x7effed30; mov q14_1 L0x7effed38;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25e9c *)
mov q10_0 L0x7effeca0; mov q10_1 L0x7effeca8;
(* veor	q15, q5, q14                               #! PC = 0x25ea0 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25ea4 *)
mov q11_0 L0x7effeda0; mov q11_1 L0x7effeda8;
(* veor	q6, q6, q10                                #! PC = 0x25eac *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25eb0 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x25eb8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25ebc *)
mov q13_0 L0x7effec80; mov q13_1 L0x7effec88;
(* veor	q8, q8, q12                                #! PC = 0x25ec0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x25ec4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x25ec8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x25ecc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x25ed0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x25ed4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x25ed8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x25edc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x25ee0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x25ee4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x25ee8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x25eec *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25ef0 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25ef8 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25f00 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25f04 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25f08 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25f0c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25f10 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x25f14 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25f1c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x25f20 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25f24 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25f28 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x25f2c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effeda0; PC = 0x25f30 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x25f38 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x25f3c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x25f40 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x25f44 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x25f4c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x25f50 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x25f54 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x25f58 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x25f60 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x25f64 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25f6c *)
mov q11_0 L0x7effece0; mov q11_1 L0x7effece8;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25f74 *)
mov q12_0 L0x7effec50; mov q12_1 L0x7effec58;
(* veor	q15, q5, q11                               #! PC = 0x25f78 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x25f7c *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x25f84 *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x25f88 *)
mov q14_0 L0x7effecc0; mov q14_1 L0x7effecc8;
(* veor	q7, q7, q13                                #! PC = 0x25f8c *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x25f90 *)
mov q10_0 L0x7effedc0; mov q10_1 L0x7effedc8;
(* veor	q8, q8, q14                                #! PC = 0x25f94 *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x25f98 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x25f9c *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x25fa0 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x25fa4 *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x25fa8 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x25fac *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x25fb0 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x25fb4 *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x25fb8 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x25fbc *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x25fc0 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x25fc4 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x25fcc *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x25fd4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x25fd8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x25fdc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x25fe0 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x25fe4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x25fe8 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x25ff0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x25ff4 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x25ff8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x25ffc *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26000 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26004 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x2600c *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26010 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26014 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effecc0; PC = 0x26018 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2601c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26020 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26024 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26028 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26030 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26034 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x2603c *)
mov q13_0 L0x7effec90; mov q13_1 L0x7effec98;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26040 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26048 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x2604c *)
mov q10_0 L0x7effed00; mov q10_1 L0x7effed08;
(* veor	q6, q6, q14                                #! PC = 0x26054 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26058 *)
mov q11_0 L0x7effec70; mov q11_1 L0x7effec78;
(* veor	q7, q7, q10                                #! PC = 0x2605c *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x26060 *)
mov q12_0 L0x7effed70; mov q12_1 L0x7effed78;
(* veor	q8, q8, q11                                #! PC = 0x26064 *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26068 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x2606c *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26070 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x26074 *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26078 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x2607c *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26080 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x26084 *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26088 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x2608c *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26090 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x26094 *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26098 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x2609c *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x260a0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x260a4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x260a8 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x260ac *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x260b0 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x260b4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x260bc *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x260c0 *)
mov L0x7effec90 q5_0; mov L0x7effec98 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x260c4 *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x260c8 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x260d0 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x260d4 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x260dc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x260e0 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x260e4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed70; PC = 0x260e8 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x260f0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x260f4 *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x260f8 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x260fc *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26100 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x26104 *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26108 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x2610c *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26110 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x26114 *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26118 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x2611c *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26120 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x26124 *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x2612c *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26130 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effec40; PC = 0x26134 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x26138 *)
mov q1_0 L0x7effecf0; mov q1_1 L0x7effecf8;
(* veor	q10, q10, q5                               #! PC = 0x2613c *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x26140 *)
mov q2_0 L0x7effeda0; mov q2_1 L0x7effeda8;
(* veor	q1, q1, q6                                 #! PC = 0x26148 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x2614c *)
mov q3_0 L0x7effecc0; mov q3_1 L0x7effecc8;
(* veor	q2, q2, q7                                 #! PC = 0x26150 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x26154 *)
mov q4_0 L0x7effed70; mov q4_1 L0x7effed78;
(* veor	q3, q3, q8                                 #! PC = 0x26158 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26160 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26164 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26168 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2616c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26170 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26174 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26178 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2617c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26180 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26184 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26188 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2618c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x26190 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x254b0; PC = 0x26194 *)
mov q15_0 L0x254b0;
(* vbic	q0, q12, q11                               #! PC = 0x26198 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x2619c *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x254b0; PC = 0x261a0 *)
mov q15_1 L0x254b0;
(* veor	q0, q0, q10                                #! PC = 0x261a4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x261a8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x261ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x261b0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x261b4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x261bc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128], r4                  #! EA = L0x7effec40; PC = 0x261c0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x261c4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128], r4                  #! EA = L0x7effecf0; PC = 0x261c8 *)
mov L0x7effecf0 q1_0; mov L0x7effecf8 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x261cc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128], r4                  #! EA = L0x7effeda0; PC = 0x261d0 *)
mov L0x7effeda0 q2_0; mov L0x7effeda8 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x261d8 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128], r4                  #! EA = L0x7effecc0; PC = 0x261dc *)
mov L0x7effecc0 q3_0; mov L0x7effecc8 q3_1;
(* vst1.64	{d8-d9}, [r3 :128], r4                  #! EA = L0x7effed70; PC = 0x261e0 *)
mov L0x7effed70 q4_0; mov L0x7effed78 q4_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x261ec *)
mov q12_0 L0x7effed30; mov q12_1 L0x7effed38;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x261f4 *)
mov q13_0 L0x7effec50; mov q13_1 L0x7effec58;
(* veor	q15, q5, q12                               #! PC = 0x261f8 *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x261fc *)
mov q14_0 L0x7effed00; mov q14_1 L0x7effed08;
(* veor	q6, q6, q13                                #! PC = 0x26200 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26204 *)
mov q10_0 L0x7effedb0; mov q10_1 L0x7effedb8;
(* veor	q7, q7, q14                                #! PC = 0x2620c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x26210 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26214 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26218 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2621c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26220 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26224 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26228 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2622c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26230 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26234 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26238 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2623c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26240 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26244 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2624c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26254 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26258 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2625c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26260 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26264 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed30; PC = 0x26268 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26270 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effec50; PC = 0x26274 *)
mov L0x7effec50 q6_0; mov L0x7effec58 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26278 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x2627c *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26280 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed00; PC = 0x26284 *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26288 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x2628c *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26290 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effedb0; PC = 0x26294 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2629c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effecd0; PC = 0x262a0 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x262a4 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x262a8 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x262b0 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x262b4 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x262bc *)
mov q14_0 L0x7effec90; mov q14_1 L0x7effec98;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x262c0 *)
mov q10_0 L0x7effed40; mov q10_1 L0x7effed48;
(* veor	q15, q5, q14                               #! PC = 0x262c8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x262cc *)
mov q11_0 L0x7effec60; mov q11_1 L0x7effec68;
(* veor	q6, q6, q10                                #! PC = 0x262d0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x262d4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x262d8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x262dc *)
mov q13_0 L0x7effedc0; mov q13_1 L0x7effedc8;
(* veor	q8, q8, q12                                #! PC = 0x262e0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x262e4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x262e8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x262ec *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x262f0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x262f4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x262f8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x262fc *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x26300 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x26304 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x26308 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x2630c *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26310 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26318 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26320 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26324 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26328 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2632c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26330 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effec90; PC = 0x26334 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26338 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed40; PC = 0x2633c *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26344 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26348 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2634c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effec60; PC = 0x26350 *)
mov L0x7effec60 q7_0; mov L0x7effec68 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26354 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26358 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2635c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed10; PC = 0x26360 *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26364 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effedc0; PC = 0x26368 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2636c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26370 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26378 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2637c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26384 *)
mov q11_0 L0x7effed80; mov q11_1 L0x7effed88;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2638c *)
mov q12_0 L0x7effeca0; mov q12_1 L0x7effeca8;
(* veor	q15, q5, q11                               #! PC = 0x26390 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x26394 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2639c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x263a0 *)
mov q14_0 L0x7effec70; mov q14_1 L0x7effec78;
(* veor	q7, q7, q13                                #! PC = 0x263a4 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x263a8 *)
mov q10_0 L0x7effed20; mov q10_1 L0x7effed28;
(* veor	q8, q8, q14                                #! PC = 0x263ac *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x263b0 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x263b4 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x263b8 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x263bc *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x263c0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x263c4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x263c8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x263cc *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x263d0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x263d4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x263d8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x263dc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x263e4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x263ec *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x263f0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x263f4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x263f8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x263fc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128], r4                #! EA = L0x7effed80; PC = 0x26400 *)
mov L0x7effed80 q15_0; mov L0x7effed88 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26408 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effeca0; PC = 0x2640c *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26410 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26414 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26418 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effed50; PC = 0x2641c *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26424 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26428 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2642c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effec70; PC = 0x26430 *)
mov L0x7effec70 q8_0; mov L0x7effec78 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26434 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effed20; PC = 0x26438 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2643c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26440 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26448 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x2644c *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x26454 *)
mov q13_0 L0x7effece0; mov q13_1 L0x7effece8;
(* vld1.64	{d28-d29}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x26458 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26460 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x26464 *)
mov q10_0 L0x7effecb0; mov q10_1 L0x7effecb8;
(* veor	q6, q6, q14                                #! PC = 0x26468 *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x2646c *)
mov q11_0 L0x7effed60; mov q11_1 L0x7effed68;
(* veor	q7, q7, q10                                #! PC = 0x26474 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26478 *)
mov q12_0 L0x7effec80; mov q12_1 L0x7effec88;
(* veor	q8, q8, q11                                #! PC = 0x2647c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26480 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26484 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26488 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2648c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26490 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26494 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26498 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2649c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x264a0 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x264a4 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x264a8 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x264ac *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x264b0 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x264b4 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x264b8 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x264bc *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x264c0 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x264c4 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x264c8 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x264cc *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x264d4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128], r4                #! EA = L0x7effece0; PC = 0x264d8 *)
mov L0x7effece0 q5_0; mov L0x7effece8 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x264dc *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128], r4                #! EA = L0x7effed90; PC = 0x264e0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x264e8 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128], r4                #! EA = L0x7effecb0; PC = 0x264ec *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x264f0 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128], r4                #! EA = L0x7effed60; PC = 0x264f4 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x264fc *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128], r4                #! EA = L0x7effec80; PC = 0x26500 *)
mov L0x7effec80 q9_0; mov L0x7effec88 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x26508 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vadd.i64	q6, q2, q2                             #! PC = 0x2650c *)
add q6_0 q2_0 q2_0; add q6_1 q2_1 q2_1;
(* vadd.i64	q7, q3, q3                             #! PC = 0x26510 *)
add q7_0 q3_0 q3_0; add q7_1 q3_1 q3_1;
(* vadd.i64	q8, q4, q4                             #! PC = 0x26514 *)
add q8_0 q4_0 q4_0; add q8_1 q4_1 q4_1;
(* vadd.i64	q9, q0, q0                             #! PC = 0x26518 *)
add q9_0 q0_0 q0_0; add q9_1 q0_1 q0_1;
(* vadd.i64	q5, q1, q1                             #! PC = 0x2651c *)
add q5_0 q1_0 q1_0; add q5_1 q1_1 q1_1;
(* vsri.64	q6, q2, #63                             #! PC = 0x26520 *)
spl q2_0_shr dc q2_0 63;
spl q6_0_h dc q6_0 1;
join q6_0 q6_0_h q2_0_shr;
spl q2_1_shr dc q2_1 63;
spl q6_1_h dc q6_1 1;
join q6_1 q6_1_h q2_1_shr;
(* vsri.64	q7, q3, #63                             #! PC = 0x26524 *)
spl q3_0_shr dc q3_0 63;
spl q7_0_h dc q7_0 1;
join q7_0 q7_0_h q3_0_shr;
spl q3_1_shr dc q3_1 63;
spl q7_1_h dc q7_1 1;
join q7_1 q7_1_h q3_1_shr;
(* vsri.64	q8, q4, #63                             #! PC = 0x26528 *)
spl q4_0_shr dc q4_0 63;
spl q8_0_h dc q8_0 1;
join q8_0 q8_0_h q4_0_shr;
spl q4_1_shr dc q4_1 63;
spl q8_1_h dc q8_1 1;
join q8_1 q8_1_h q4_1_shr;
(* vsri.64	q9, q0, #63                             #! PC = 0x2652c *)
spl q0_0_shr dc q0_0 63;
spl q9_0_h dc q9_0 1;
join q9_0 q9_0_h q0_0_shr;
spl q0_1_shr dc q0_1 63;
spl q9_1_h dc q9_1 1;
join q9_1 q9_1_h q0_1_shr;
(* vsri.64	q5, q1, #63                             #! PC = 0x26530 *)
spl q1_0_shr dc q1_0 63;
spl q5_0_h dc q5_0 1;
join q5_0 q5_0_h q1_0_shr;
spl q1_1_shr dc q1_1 63;
spl q5_1_h dc q5_1 1;
join q5_1 q5_1_h q1_1_shr;
(* veor	q6, q6, q0                                 #! PC = 0x26534 *)
xor q6_0@uint64 q6_0 q0_0; xor q6_1@uint64 q6_1 q0_1;
(* veor	q7, q7, q1                                 #! PC = 0x26538 *)
xor q7_0@uint64 q7_0 q1_0; xor q7_1@uint64 q7_1 q1_1;
(* veor	q8, q8, q2                                 #! PC = 0x2653c *)
xor q8_0@uint64 q8_0 q2_0; xor q8_1@uint64 q8_1 q2_1;
(* veor	q9, q9, q3                                 #! PC = 0x26540 *)
xor q9_0@uint64 q9_0 q3_0; xor q9_1@uint64 q9_1 q3_1;
(* veor	q5, q5, q4                                 #! PC = 0x26544 *)
xor q5_0@uint64 q5_0 q4_0; xor q5_1@uint64 q5_1 q4_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effec40; PC = 0x26548 *)
mov q10_0 L0x7effec40; mov q10_1 L0x7effec48;
(* vld1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x2654c *)
mov q1_0 L0x7effec50; mov q1_1 L0x7effec58;
(* veor	q10, q10, q5                               #! PC = 0x26550 *)
xor q10_0@uint64 q10_0 q5_0; xor q10_1@uint64 q10_1 q5_1;
(* vld1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x26554 *)
mov q2_0 L0x7effec60; mov q2_1 L0x7effec68;
(* veor	q1, q1, q6                                 #! PC = 0x26558 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x2655c *)
mov q3_0 L0x7effec70; mov q3_1 L0x7effec78;
(* veor	q2, q2, q7                                 #! PC = 0x26560 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x26564 *)
mov q4_0 L0x7effec80; mov q4_1 L0x7effec88;
(* veor	q3, q3, q8                                 #! PC = 0x26568 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* veor	q4, q4, q9                                 #! PC = 0x26570 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vst1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26574 *)
mov L0x7effeba0 q6_0; mov L0x7effeba8 q6_1;
(* vshl.s64	q11, q1, #44	; 0x2c                    #! PC = 0x26578 *)
shl q11_0 q1_0 44; shl q11_1 q1_1 44;
(* vshl.s64	q12, q2, #43	; 0x2b                    #! PC = 0x2657c *)
shl q12_0 q2_0 43; shl q12_1 q2_1 43;
(* vst1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26580 *)
mov L0x7effebb0 q7_0; mov L0x7effebb8 q7_1;
(* vshl.s64	q13, q3, #21                           #! PC = 0x26584 *)
shl q13_0 q3_0 21; shl q13_1 q3_1 21;
(* vshl.s64	q14, q4, #14                           #! PC = 0x26588 *)
shl q14_0 q4_0 14; shl q14_1 q4_1 14;
(* vst1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2658c *)
mov L0x7effebc0 q8_0; mov L0x7effebc8 q8_1;
(* vsri.64	q11, q1, #20                            #! PC = 0x26590 *)
spl q1_0_shr dc q1_0 20;
spl q11_0_h dc q11_0 44;
join q11_0 q11_0_h q1_0_shr;
spl q1_1_shr dc q1_1 20;
spl q11_1_h dc q11_1 44;
join q11_1 q11_1_h q1_1_shr;
(* vsri.64	q12, q2, #21                            #! PC = 0x26594 *)
spl q2_0_shr dc q2_0 21;
spl q12_0_h dc q12_0 43;
join q12_0 q12_0_h q2_0_shr;
spl q2_1_shr dc q2_1 21;
spl q12_1_h dc q12_1 43;
join q12_1 q12_1_h q2_1_shr;
(* vst1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26598 *)
mov L0x7effebd0 q9_0; mov L0x7effebd8 q9_1;
(* vsri.64	q13, q3, #43                            #! PC = 0x2659c *)
spl q3_0_shr dc q3_0 43;
spl q13_0_h dc q13_0 21;
join q13_0 q13_0_h q3_0_shr;
spl q3_1_shr dc q3_1 43;
spl q13_1_h dc q13_1 21;
join q13_1 q13_1_h q3_1_shr;
(* vsri.64	q14, q4, #50                            #! PC = 0x265a0 *)
spl q4_0_shr dc q4_0 50;
spl q14_0_h dc q14_0 14;
join q14_0 q14_0_h q4_0_shr;
spl q4_1_shr dc q4_1 50;
spl q14_1_h dc q14_1 14;
join q14_1 q14_1_h q4_1_shr;
(* vld1.64	{d30}, [r1 :64]                         #! EA = L0x254b8; PC = 0x265a4 *)
mov q15_0 L0x254b8;
(* vbic	q0, q12, q11                               #! PC = 0x265a8 *)
not q11_0_c@uint64 q11_0;
and q0_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q0_1@uint64 q12_1 q11_1_c;
(* vbic	q1, q13, q12                               #! PC = 0x265ac *)
not q12_0_c@uint64 q12_0;
and q1_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q1_1@uint64 q13_1 q12_1_c;
(* vld1.64	{d31}, [r1 :64]!                        #! EA = L0x254b8; PC = 0x265b0 *)
mov q15_1 L0x254b8;
(* veor	q0, q0, q10                                #! PC = 0x265b4 *)
xor q0_0@uint64 q0_0 q10_0; xor q0_1@uint64 q0_1 q10_1;
(* vbic	q4, q11, q10                               #! PC = 0x265b8 *)
not q10_0_c@uint64 q10_0;
and q4_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q4_1@uint64 q11_1 q10_1_c;
(* veor	q0, q0, q15                                #! PC = 0x265bc *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vbic	q2, q14, q13                               #! PC = 0x265c0 *)
not q13_0_c@uint64 q13_0;
and q2_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q2_1@uint64 q14_1 q13_1_c;
(* vbic	q3, q10, q14                               #! PC = 0x265c4 *)
not q14_0_c@uint64 q14_0;
and q3_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q3_1@uint64 q10_1 q14_1_c;
(* veor	q1, q1, q11                                #! PC = 0x265cc *)
xor q1_0@uint64 q1_0 q11_0; xor q1_1@uint64 q1_1 q11_1;
(* vst1.64	{d0-d1}, [r3 :128]!                     #! EA = L0x7effec40; PC = 0x265d0 *)
mov L0x7effec40 q0_0; mov L0x7effec48 q0_1;
(* veor	q2, q2, q12                                #! PC = 0x265d4 *)
xor q2_0@uint64 q2_0 q12_0; xor q2_1@uint64 q2_1 q12_1;
(* vst1.64	{d2-d3}, [r3 :128]!                     #! EA = L0x7effec50; PC = 0x265d8 *)
mov L0x7effec50 q1_0; mov L0x7effec58 q1_1;
(* veor	q3, q3, q13                                #! PC = 0x265dc *)
xor q3_0@uint64 q3_0 q13_0; xor q3_1@uint64 q3_1 q13_1;
(* vst1.64	{d4-d5}, [r3 :128]!                     #! EA = L0x7effec60; PC = 0x265e0 *)
mov L0x7effec60 q2_0; mov L0x7effec68 q2_1;
(* veor	q4, q4, q14                                #! PC = 0x265e4 *)
xor q4_0@uint64 q4_0 q14_0; xor q4_1@uint64 q4_1 q14_1;
(* vst1.64	{d6-d7}, [r3 :128]!                     #! EA = L0x7effec70; PC = 0x265e8 *)
mov L0x7effec70 q3_0; mov L0x7effec78 q3_1;
(* vst1.64	{d8-d9}, [r3 :128]!                     #! EA = L0x7effec80; PC = 0x265ec *)
mov L0x7effec80 q4_0; mov L0x7effec88 q4_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x265f4 *)
mov q12_0 L0x7effec90; mov q12_1 L0x7effec98;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x265f8 *)
mov q13_0 L0x7effeca0; mov q13_1 L0x7effeca8;
(* veor	q15, q5, q12                               #! PC = 0x265fc *)
xor q15_0@uint64 q5_0 q12_0; xor q15_1@uint64 q5_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26600 *)
mov q14_0 L0x7effecb0; mov q14_1 L0x7effecb8;
(* veor	q6, q6, q13                                #! PC = 0x26604 *)
xor q6_0@uint64 q6_0 q13_0; xor q6_1@uint64 q6_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26608 *)
mov q10_0 L0x7effecc0; mov q10_1 L0x7effecc8;
(* veor	q7, q7, q14                                #! PC = 0x2660c *)
xor q7_0@uint64 q7_0 q14_0; xor q7_1@uint64 q7_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26610 *)
mov q11_0 L0x7effecd0; mov q11_1 L0x7effecd8;
(* veor	q8, q8, q10                                #! PC = 0x26614 *)
xor q8_0@uint64 q8_0 q10_0; xor q8_1@uint64 q8_1 q10_1;
(* veor	q9, q9, q11                                #! PC = 0x26618 *)
xor q9_0@uint64 q9_0 q11_0; xor q9_1@uint64 q9_1 q11_1;
(* vshl.s64	q12, q15, #3                           #! PC = 0x2661c *)
shl q12_0 q15_0 3; shl q12_1 q15_1 3;
(* vshl.s64	q13, q6, #45	; 0x2d                    #! PC = 0x26620 *)
shl q13_0 q6_0 45; shl q13_1 q6_1 45;
(* vshl.s64	q14, q7, #61	; 0x3d                    #! PC = 0x26624 *)
shl q14_0 q7_0 61; shl q14_1 q7_1 61;
(* vshl.s64	q10, q8, #28                           #! PC = 0x26628 *)
shl q10_0 q8_0 28; shl q10_1 q8_1 28;
(* vshl.s64	q11, q9, #20                           #! PC = 0x2662c *)
shl q11_0 q9_0 20; shl q11_1 q9_1 20;
(* vsri.64	q12, q15, #61                           #! PC = 0x26630 *)
spl q15_0_shr dc q15_0 61;
spl q12_0_h dc q12_0 3;
join q12_0 q12_0_h q15_0_shr;
spl q15_1_shr dc q15_1 61;
spl q12_1_h dc q12_1 3;
join q12_1 q12_1_h q15_1_shr;
(* vsri.64	q13, q6, #19                            #! PC = 0x26634 *)
spl q6_0_shr dc q6_0 19;
spl q13_0_h dc q13_0 45;
join q13_0 q13_0_h q6_0_shr;
spl q6_1_shr dc q6_1 19;
spl q13_1_h dc q13_1 45;
join q13_1 q13_1_h q6_1_shr;
(* vsri.64	q14, q7, #3                             #! PC = 0x26638 *)
spl q7_0_shr dc q7_0 3;
spl q14_0_h dc q14_0 61;
join q14_0 q14_0_h q7_0_shr;
spl q7_1_shr dc q7_1 3;
spl q14_1_h dc q14_1 61;
join q14_1 q14_1_h q7_1_shr;
(* vsri.64	q10, q8, #36                            #! PC = 0x2663c *)
spl q8_0_shr dc q8_0 36;
spl q10_0_h dc q10_0 28;
join q10_0 q10_0_h q8_0_shr;
spl q8_1_shr dc q8_1 36;
spl q10_1_h dc q10_1 28;
join q10_1 q10_1_h q8_1_shr;
(* vsri.64	q11, q9, #44                            #! PC = 0x26640 *)
spl q9_0_shr dc q9_0 44;
spl q11_0_h dc q11_0 20;
join q11_0 q11_0_h q9_0_shr;
spl q9_1_shr dc q9_1 44;
spl q11_1_h dc q11_1 20;
join q11_1 q11_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26644 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x2664c *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26654 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26658 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2665c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x26660 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26664 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effec90; PC = 0x26668 *)
mov L0x7effec90 q15_0; mov L0x7effec98 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x2666c *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effeca0; PC = 0x26670 *)
mov L0x7effeca0 q6_0; mov L0x7effeca8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26674 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26678 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x2667c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effecb0; PC = 0x26680 *)
mov L0x7effecb0 q7_0; mov L0x7effecb8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26684 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26688 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x2668c *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effecc0; PC = 0x26690 *)
mov L0x7effecc0 q8_0; mov L0x7effecc8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26694 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effecd0; PC = 0x26698 *)
mov L0x7effecd0 q9_0; mov L0x7effecd8 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x2669c *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x266a0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x266a8 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x266ac *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x266b0 *)
mov q14_0 L0x7effece0; mov q14_1 L0x7effece8;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x266b4 *)
mov q10_0 L0x7effecf0; mov q10_1 L0x7effecf8;
(* veor	q15, q5, q14                               #! PC = 0x266b8 *)
xor q15_0@uint64 q5_0 q14_0; xor q15_1@uint64 q5_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x266bc *)
mov q11_0 L0x7effed00; mov q11_1 L0x7effed08;
(* veor	q6, q6, q10                                #! PC = 0x266c0 *)
xor q6_0@uint64 q6_0 q10_0; xor q6_1@uint64 q6_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x266c4 *)
mov q12_0 L0x7effed10; mov q12_1 L0x7effed18;
(* veor	q7, q7, q11                                #! PC = 0x266c8 *)
xor q7_0@uint64 q7_0 q11_0; xor q7_1@uint64 q7_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x266cc *)
mov q13_0 L0x7effed20; mov q13_1 L0x7effed28;
(* veor	q8, q8, q12                                #! PC = 0x266d0 *)
xor q8_0@uint64 q8_0 q12_0; xor q8_1@uint64 q8_1 q12_1;
(* veor	q9, q9, q13                                #! PC = 0x266d4 *)
xor q9_0@uint64 q9_0 q13_0; xor q9_1@uint64 q9_1 q13_1;
(* vshl.s64	q14, q15, #18                          #! PC = 0x266d8 *)
shl q14_0 q15_0 18; shl q14_1 q15_1 18;
(* vshl.s64	q10, q6, #1                            #! PC = 0x266dc *)
shl q10_0 q6_0 1; shl q10_1 q6_1 1;
(* vshl.s64	q11, q7, #6                            #! PC = 0x266e0 *)
shl q11_0 q7_0 6; shl q11_1 q7_1 6;
(* vshl.s64	q12, q8, #25                           #! PC = 0x266e4 *)
shl q12_0 q8_0 25; shl q12_1 q8_1 25;
(* vshl.s64	q13, q9, #8                            #! PC = 0x266e8 *)
shl q13_0 q9_0 8; shl q13_1 q9_1 8;
(* vsri.64	q14, q15, #46                           #! PC = 0x266ec *)
spl q15_0_shr dc q15_0 46;
spl q14_0_h dc q14_0 18;
join q14_0 q14_0_h q15_0_shr;
spl q15_1_shr dc q15_1 46;
spl q14_1_h dc q14_1 18;
join q14_1 q14_1_h q15_1_shr;
(* vsri.64	q10, q6, #63                            #! PC = 0x266f0 *)
spl q6_0_shr dc q6_0 63;
spl q10_0_h dc q10_0 1;
join q10_0 q10_0_h q6_0_shr;
spl q6_1_shr dc q6_1 63;
spl q10_1_h dc q10_1 1;
join q10_1 q10_1_h q6_1_shr;
(* vsri.64	q11, q7, #58                            #! PC = 0x266f4 *)
spl q7_0_shr dc q7_0 58;
spl q11_0_h dc q11_0 6;
join q11_0 q11_0_h q7_0_shr;
spl q7_1_shr dc q7_1 58;
spl q11_1_h dc q11_1 6;
join q11_1 q11_1_h q7_1_shr;
(* vsri.64	q12, q8, #39                            #! PC = 0x266f8 *)
spl q8_0_shr dc q8_0 39;
spl q12_0_h dc q12_0 25;
join q12_0 q12_0_h q8_0_shr;
spl q8_1_shr dc q8_1 39;
spl q12_1_h dc q12_1 25;
join q12_1 q12_1_h q8_1_shr;
(* vsri.64	q13, q9, #56                            #! PC = 0x266fc *)
spl q9_0_shr dc q9_0 56;
spl q13_0_h dc q13_0 8;
join q13_0 q13_0_h q9_0_shr;
spl q9_1_shr dc q9_1 56;
spl q13_1_h dc q13_1 8;
join q13_1 q13_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x26700 *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26708 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26710 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26714 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x26718 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x2671c *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26720 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effece0; PC = 0x26724 *)
mov L0x7effece0 q15_0; mov L0x7effece8 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x26728 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effecf0; PC = 0x2672c *)
mov L0x7effecf0 q6_0; mov L0x7effecf8 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x26730 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x26734 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x26738 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed00; PC = 0x2673c *)
mov L0x7effed00 q7_0; mov L0x7effed08 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x26740 *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26744 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26748 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed10; PC = 0x2674c *)
mov L0x7effed10 q8_0; mov L0x7effed18 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x26750 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed20; PC = 0x26754 *)
mov L0x7effed20 q9_0; mov L0x7effed28 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26758 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x2675c *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26764 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26768 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x2676c *)
mov q11_0 L0x7effed30; mov q11_1 L0x7effed38;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x26770 *)
mov q12_0 L0x7effed40; mov q12_1 L0x7effed48;
(* veor	q15, q5, q11                               #! PC = 0x26774 *)
xor q15_0@uint64 q5_0 q11_0; xor q15_1@uint64 q5_1 q11_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x26778 *)
mov q13_0 L0x7effed50; mov q13_1 L0x7effed58;
(* veor	q6, q6, q12                                #! PC = 0x2677c *)
xor q6_0@uint64 q6_0 q12_0; xor q6_1@uint64 q6_1 q12_1;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26780 *)
mov q14_0 L0x7effed60; mov q14_1 L0x7effed68;
(* veor	q7, q7, q13                                #! PC = 0x26784 *)
xor q7_0@uint64 q7_0 q13_0; xor q7_1@uint64 q7_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26788 *)
mov q10_0 L0x7effed70; mov q10_1 L0x7effed78;
(* veor	q8, q8, q14                                #! PC = 0x2678c *)
xor q8_0@uint64 q8_0 q14_0; xor q8_1@uint64 q8_1 q14_1;
(* veor	q9, q9, q10                                #! PC = 0x26790 *)
xor q9_0@uint64 q9_0 q10_0; xor q9_1@uint64 q9_1 q10_1;
(* vshl.s64	q11, q15, #36	; 0x24                   #! PC = 0x26794 *)
shl q11_0 q15_0 36; shl q11_1 q15_1 36;
(* vshl.s64	q12, q6, #10                           #! PC = 0x26798 *)
shl q12_0 q6_0 10; shl q12_1 q6_1 10;
(* vshl.s64	q13, q7, #15                           #! PC = 0x2679c *)
shl q13_0 q7_0 15; shl q13_1 q7_1 15;
(* vshl.s64	q14, q8, #56	; 0x38                    #! PC = 0x267a0 *)
shl q14_0 q8_0 56; shl q14_1 q8_1 56;
(* vshl.s64	q10, q9, #27                           #! PC = 0x267a4 *)
shl q10_0 q9_0 27; shl q10_1 q9_1 27;
(* vsri.64	q11, q15, #28                           #! PC = 0x267a8 *)
spl q15_0_shr dc q15_0 28;
spl q11_0_h dc q11_0 36;
join q11_0 q11_0_h q15_0_shr;
spl q15_1_shr dc q15_1 28;
spl q11_1_h dc q11_1 36;
join q11_1 q11_1_h q15_1_shr;
(* vsri.64	q12, q6, #54                            #! PC = 0x267ac *)
spl q6_0_shr dc q6_0 54;
spl q12_0_h dc q12_0 10;
join q12_0 q12_0_h q6_0_shr;
spl q6_1_shr dc q6_1 54;
spl q12_1_h dc q12_1 10;
join q12_1 q12_1_h q6_1_shr;
(* vsri.64	q13, q7, #49                            #! PC = 0x267b0 *)
spl q7_0_shr dc q7_0 49;
spl q13_0_h dc q13_0 15;
join q13_0 q13_0_h q7_0_shr;
spl q7_1_shr dc q7_1 49;
spl q13_1_h dc q13_1 15;
join q13_1 q13_1_h q7_1_shr;
(* vsri.64	q14, q8, #8                             #! PC = 0x267b4 *)
spl q8_0_shr dc q8_0 8;
spl q14_0_h dc q14_0 56;
join q14_0 q14_0_h q8_0_shr;
spl q8_1_shr dc q8_1 8;
spl q14_1_h dc q14_1 56;
join q14_1 q14_1_h q8_1_shr;
(* vsri.64	q10, q9, #37                            #! PC = 0x267b8 *)
spl q9_0_shr dc q9_0 37;
spl q10_0_h dc q10_0 27;
join q10_0 q10_0_h q9_0_shr;
spl q9_1_shr dc q9_1 37;
spl q10_1_h dc q10_1 27;
join q10_1 q10_1_h q9_1_shr;
(* vbic	q15, q12, q11                              #! PC = 0x267bc *)
not q11_0_c@uint64 q11_0;
and q15_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q15_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x267c4 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x267cc *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x267d0 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x267d4 *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q15, q15, q10                              #! PC = 0x267d8 *)
xor q15_0@uint64 q15_0 q10_0; xor q15_1@uint64 q15_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x267dc *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* vst1.64	{d30-d31}, [r3 :128]!                   #! EA = L0x7effed30; PC = 0x267e0 *)
mov L0x7effed30 q15_0; mov L0x7effed38 q15_1;
(* veor	q7, q7, q12                                #! PC = 0x267e4 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed40; PC = 0x267e8 *)
mov L0x7effed40 q6_0; mov L0x7effed48 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x267ec *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vld1.64	{d12-d13}, [r6 :128]!                   #! EA = L0x7effeba0; PC = 0x267f0 *)
mov q6_0 L0x7effeba0; mov q6_1 L0x7effeba8;
(* veor	q8, q8, q13                                #! PC = 0x267f4 *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effed50; PC = 0x267f8 *)
mov L0x7effed50 q7_0; mov L0x7effed58 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x267fc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vld1.64	{d14-d15}, [r6 :128]!                   #! EA = L0x7effebb0; PC = 0x26800 *)
mov q7_0 L0x7effebb0; mov q7_1 L0x7effebb8;
(* veor	q9, q9, q14                                #! PC = 0x26804 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effed60; PC = 0x26808 *)
mov L0x7effed60 q8_0; mov L0x7effed68 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x2680c *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effed70; PC = 0x26810 *)
mov L0x7effed70 q9_0; mov L0x7effed78 q9_1;
(* vld1.64	{d16-d17}, [r6 :128]!                   #! EA = L0x7effebc0; PC = 0x26814 *)
mov q8_0 L0x7effebc0; mov q8_1 L0x7effebc8;
(* veor	q4, q4, q9                                 #! PC = 0x26818 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* vld1.64	{d18-d19}, [r6 :128]!                   #! EA = L0x7effebd0; PC = 0x26820 *)
mov q9_0 L0x7effebd0; mov q9_1 L0x7effebd8;
(* veor	q0, q0, q15                                #! PC = 0x26824 *)
xor q0_0@uint64 q0_0 q15_0; xor q0_1@uint64 q0_1 q15_1;
(* vld1.64	{d26-d27}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x2682c *)
mov q13_0 L0x7effed80; mov q13_1 L0x7effed88;
(* vld1.64	{d28-d29}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x26830 *)
mov q14_0 L0x7effed90; mov q14_1 L0x7effed98;
(* veor	q5, q5, q13                                #! PC = 0x26834 *)
xor q5_0@uint64 q5_0 q13_0; xor q5_1@uint64 q5_1 q13_1;
(* vld1.64	{d20-d21}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x26838 *)
mov q10_0 L0x7effeda0; mov q10_1 L0x7effeda8;
(* veor	q6, q6, q14                                #! PC = 0x2683c *)
xor q6_0@uint64 q6_0 q14_0; xor q6_1@uint64 q6_1 q14_1;
(* vld1.64	{d22-d23}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x26840 *)
mov q11_0 L0x7effedb0; mov q11_1 L0x7effedb8;
(* veor	q7, q7, q10                                #! PC = 0x26844 *)
xor q7_0@uint64 q7_0 q10_0; xor q7_1@uint64 q7_1 q10_1;
(* vld1.64	{d24-d25}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x26848 *)
mov q12_0 L0x7effedc0; mov q12_1 L0x7effedc8;
(* veor	q8, q8, q11                                #! PC = 0x2684c *)
xor q8_0@uint64 q8_0 q11_0; xor q8_1@uint64 q8_1 q11_1;
(* veor	q9, q9, q12                                #! PC = 0x26850 *)
xor q9_0@uint64 q9_0 q12_0; xor q9_1@uint64 q9_1 q12_1;
(* vshl.s64	q13, q5, #41	; 0x29                    #! PC = 0x26854 *)
shl q13_0 q5_0 41; shl q13_1 q5_1 41;
(* vshl.s64	q14, q6, #2                            #! PC = 0x26858 *)
shl q14_0 q6_0 2; shl q14_1 q6_1 2;
(* vshl.s64	q10, q7, #62	; 0x3e                    #! PC = 0x2685c *)
shl q10_0 q7_0 62; shl q10_1 q7_1 62;
(* vshl.s64	q11, q8, #55	; 0x37                    #! PC = 0x26860 *)
shl q11_0 q8_0 55; shl q11_1 q8_1 55;
(* vshl.s64	q12, q9, #39	; 0x27                    #! PC = 0x26864 *)
shl q12_0 q9_0 39; shl q12_1 q9_1 39;
(* vsri.64	q13, q5, #23                            #! PC = 0x26868 *)
spl q5_0_shr dc q5_0 23;
spl q13_0_h dc q13_0 41;
join q13_0 q13_0_h q5_0_shr;
spl q5_1_shr dc q5_1 23;
spl q13_1_h dc q13_1 41;
join q13_1 q13_1_h q5_1_shr;
(* vsri.64	q14, q6, #62                            #! PC = 0x2686c *)
spl q6_0_shr dc q6_0 62;
spl q14_0_h dc q14_0 2;
join q14_0 q14_0_h q6_0_shr;
spl q6_1_shr dc q6_1 62;
spl q14_1_h dc q14_1 2;
join q14_1 q14_1_h q6_1_shr;
(* vsri.64	q11, q8, #9                             #! PC = 0x26870 *)
spl q8_0_shr dc q8_0 9;
spl q11_0_h dc q11_0 55;
join q11_0 q11_0_h q8_0_shr;
spl q8_1_shr dc q8_1 9;
spl q11_1_h dc q11_1 55;
join q11_1 q11_1_h q8_1_shr;
(* vsri.64	q12, q9, #25                            #! PC = 0x26874 *)
spl q9_0_shr dc q9_0 25;
spl q12_0_h dc q12_0 39;
join q12_0 q12_0_h q9_0_shr;
spl q9_1_shr dc q9_1 25;
spl q12_1_h dc q12_1 39;
join q12_1 q12_1_h q9_1_shr;
(* vsri.64	q10, q7, #2                             #! PC = 0x26878 *)
spl q7_0_shr dc q7_0 2;
spl q10_0_h dc q10_0 62;
join q10_0 q10_0_h q7_0_shr;
spl q7_1_shr dc q7_1 2;
spl q10_1_h dc q10_1 62;
join q10_1 q10_1_h q7_1_shr;
(* vbic	q5, q12, q11                               #! PC = 0x2687c *)
not q11_0_c@uint64 q11_0;
and q5_0@uint64 q12_0 q11_0_c;
not q11_1_c@uint64 q11_1;
and q5_1@uint64 q12_1 q11_1_c;
(* vbic	q6, q13, q12                               #! PC = 0x26880 *)
not q12_0_c@uint64 q12_0;
and q6_0@uint64 q13_0 q12_0_c;
not q12_1_c@uint64 q12_1;
and q6_1@uint64 q13_1 q12_1_c;
(* vbic	q7, q14, q13                               #! PC = 0x26884 *)
not q13_0_c@uint64 q13_0;
and q7_0@uint64 q14_0 q13_0_c;
not q13_1_c@uint64 q13_1;
and q7_1@uint64 q14_1 q13_1_c;
(* vbic	q8, q10, q14                               #! PC = 0x26888 *)
not q14_0_c@uint64 q14_0;
and q8_0@uint64 q10_0 q14_0_c;
not q14_1_c@uint64 q14_1;
and q8_1@uint64 q10_1 q14_1_c;
(* vbic	q9, q11, q10                               #! PC = 0x2688c *)
not q10_0_c@uint64 q10_0;
and q9_0@uint64 q11_0 q10_0_c;
not q10_1_c@uint64 q10_1;
and q9_1@uint64 q11_1 q10_1_c;
(* veor	q5, q5, q10                                #! PC = 0x26890 *)
xor q5_0@uint64 q5_0 q10_0; xor q5_1@uint64 q5_1 q10_1;
(* veor	q6, q6, q11                                #! PC = 0x26894 *)
xor q6_0@uint64 q6_0 q11_0; xor q6_1@uint64 q6_1 q11_1;
(* veor	q7, q7, q12                                #! PC = 0x26898 *)
xor q7_0@uint64 q7_0 q12_0; xor q7_1@uint64 q7_1 q12_1;
(* veor	q8, q8, q13                                #! PC = 0x2689c *)
xor q8_0@uint64 q8_0 q13_0; xor q8_1@uint64 q8_1 q13_1;
(* veor	q9, q9, q14                                #! PC = 0x268a4 *)
xor q9_0@uint64 q9_0 q14_0; xor q9_1@uint64 q9_1 q14_1;
(* vst1.64	{d10-d11}, [r3 :128]!                   #! EA = L0x7effed80; PC = 0x268a8 *)
mov L0x7effed80 q5_0; mov L0x7effed88 q5_1;
(* veor	q0, q0, q5                                 #! PC = 0x268ac *)
xor q0_0@uint64 q0_0 q5_0; xor q0_1@uint64 q0_1 q5_1;
(* vst1.64	{d12-d13}, [r3 :128]!                   #! EA = L0x7effed90; PC = 0x268b0 *)
mov L0x7effed90 q6_0; mov L0x7effed98 q6_1;
(* veor	q1, q1, q6                                 #! PC = 0x268b4 *)
xor q1_0@uint64 q1_0 q6_0; xor q1_1@uint64 q1_1 q6_1;
(* vst1.64	{d14-d15}, [r3 :128]!                   #! EA = L0x7effeda0; PC = 0x268b8 *)
mov L0x7effeda0 q7_0; mov L0x7effeda8 q7_1;
(* veor	q2, q2, q7                                 #! PC = 0x268bc *)
xor q2_0@uint64 q2_0 q7_0; xor q2_1@uint64 q2_1 q7_1;
(* vst1.64	{d16-d17}, [r3 :128]!                   #! EA = L0x7effedb0; PC = 0x268c0 *)
mov L0x7effedb0 q8_0; mov L0x7effedb8 q8_1;
(* veor	q3, q3, q8                                 #! PC = 0x268c4 *)
xor q3_0@uint64 q3_0 q8_0; xor q3_1@uint64 q3_1 q8_1;
(* vst1.64	{d18-d19}, [r3 :128]!                   #! EA = L0x7effedc0; PC = 0x268c8 *)
mov L0x7effedc0 q9_0; mov L0x7effedc8 q9_1;
(* veor	q4, q4, q9                                 #! PC = 0x268d0 *)
xor q4_0@uint64 q4_0 q9_0; xor q4_1@uint64 q4_1 q9_1;
(* #bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! PC = 0x268d4 *)
#bne	0x258c4 <KeccakP1600times2_PermuteAll_RoundLoop>#! 0x268d4 = 0x268d4;
(* #! <- SP = 0x7effec30 *)
#! 0x7effec30 = 0x7effec30;
(* #bx	lr                                          #! PC = 0x268e4 *)
#bx	%%lr                                          #! 0x268e4 = 0x268e4;


(******** outputs ********)


mov a00 L0x7effec40; mov b00 L0x7effec48; mov a01 L0x7effec50; mov b01 L0x7effec58;
mov a02 L0x7effec60; mov b02 L0x7effec68; mov a03 L0x7effec70; mov b03 L0x7effec78;
mov a04 L0x7effec80; mov b04 L0x7effec88; mov a05 L0x7effec90; mov b05 L0x7effec98;
mov a06 L0x7effeca0; mov b06 L0x7effeca8; mov a07 L0x7effecb0; mov b07 L0x7effecb8;
mov a08 L0x7effecc0; mov b08 L0x7effecc8; mov a09 L0x7effecd0; mov b09 L0x7effecd8;
mov a10 L0x7effece0; mov b10 L0x7effece8; mov a11 L0x7effecf0; mov b11 L0x7effecf8;
mov a12 L0x7effed00; mov b12 L0x7effed08; mov a13 L0x7effed10; mov b13 L0x7effed18;
mov a14 L0x7effed20; mov b14 L0x7effed28; mov a15 L0x7effed30; mov b15 L0x7effed38;
mov a16 L0x7effed40; mov b16 L0x7effed48; mov a17 L0x7effed50; mov b17 L0x7effed58;
mov a18 L0x7effed60; mov b18 L0x7effed68; mov a19 L0x7effed70; mov b19 L0x7effed78;
mov a20 L0x7effed80; mov b20 L0x7effed88; mov a21 L0x7effed90; mov b21 L0x7effed98;
mov a22 L0x7effeda0; mov b22 L0x7effeda8; mov a23 L0x7effedb0; mov b23 L0x7effedb8;
mov a24 L0x7effedc0; mov b24 L0x7effedc8;


{
  true
  &&
  true
}

