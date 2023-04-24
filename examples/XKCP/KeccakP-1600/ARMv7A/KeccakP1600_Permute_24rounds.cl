(*
on popper, equivalence against XKCP C reference implementation, 1 thread:
Parsing CryptoLine file:		[OK]		0.028970 seconds
Checking well-formedness:		[OK]		0.007705 seconds
Parsing CryptoLine file:		[OK]		0.013576 seconds
Checking well-formedness:		[OK]		0.006477 seconds
Output group #0:
  Converting programs to AIG:		[OK]		0.926114 seconds
  Checking equivalence:			[OK]		70.269585 seconds
Final result:				[OK]		71.195763 seconds
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
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24) =
{
  true
  &&
  true
}

(* ===== Initialization ===== *)

mov L0x24000 $KeccakF1600RoundConstants_00@uint64;
mov L0x24008 $KeccakF1600RoundConstants_01@uint64;
mov L0x24010 $KeccakF1600RoundConstants_02@uint64;
mov L0x24018 $KeccakF1600RoundConstants_03@uint64;
mov L0x24020 $KeccakF1600RoundConstants_04@uint64;
mov L0x24028 $KeccakF1600RoundConstants_05@uint64;
mov L0x24030 $KeccakF1600RoundConstants_06@uint64;
mov L0x24038 $KeccakF1600RoundConstants_07@uint64;
mov L0x24040 $KeccakF1600RoundConstants_08@uint64;
mov L0x24048 $KeccakF1600RoundConstants_09@uint64;
mov L0x24050 $KeccakF1600RoundConstants_10@uint64;
mov L0x24058 $KeccakF1600RoundConstants_11@uint64;
mov L0x24060 $KeccakF1600RoundConstants_12@uint64;
mov L0x24068 $KeccakF1600RoundConstants_13@uint64;
mov L0x24070 $KeccakF1600RoundConstants_14@uint64;
mov L0x24078 $KeccakF1600RoundConstants_15@uint64;
mov L0x24080 $KeccakF1600RoundConstants_16@uint64;
mov L0x24088 $KeccakF1600RoundConstants_17@uint64;
mov L0x24090 $KeccakF1600RoundConstants_18@uint64;
mov L0x24098 $KeccakF1600RoundConstants_19@uint64;
mov L0x240a0 $KeccakF1600RoundConstants_20@uint64;
mov L0x240a8 $KeccakF1600RoundConstants_21@uint64;
mov L0x240b0 $KeccakF1600RoundConstants_22@uint64;
mov L0x240b8 $KeccakF1600RoundConstants_23@uint64;

mov L0x7effec60 A00;
mov L0x7effec68 A01;
mov L0x7effec70 A02;
mov L0x7effec78 A03;
mov L0x7effec80 A04;
mov L0x7effec88 A05;
mov L0x7effec90 A06;
mov L0x7effec98 A07;
mov L0x7effeca0 A08;
mov L0x7effeca8 A09;
mov L0x7effecb0 A10;
mov L0x7effecb8 A11;
mov L0x7effecc0 A12;
mov L0x7effecc8 A13;
mov L0x7effecd0 A14;
mov L0x7effecd8 A15;
mov L0x7effece0 A16;
mov L0x7effece8 A17;
mov L0x7effecf0 A18;
mov L0x7effecf8 A19;
mov L0x7effed00 A20;
mov L0x7effed08 A21;
mov L0x7effed10 A22;
mov L0x7effed18 A23;
mov L0x7effed20 A24;

nondet d25@uint64;
nondet d26@uint64;
nondet d27@uint64;
nondet d28@uint64;
nondet d29@uint64;
nondet lr@uint32;
nondet pc@uint32;
nondet r0@uint32;

(* ===== Program ===== *)

(* #! -> SP = 0x7effec38 *)
#! 0x7effec38 = 0x7effec38;
(* add	r1, pc, #248	; 0xf8                         #! PC = 0x23f00 *)
add r1 pc 248@uint32;
(* movs	r2, #24                                    #! PC = 0x23f04 *)
mov r2 24@uint32;
(* #b	0x24500 <KeccakP1600_Permute>                #! PC = 0x23f08 *)
#b	0x24500 <KeccakP1600_Permute>                #! 0x23f08 = 0x23f08;
(* mov	r3, lr                                      #! PC = 0x24500 *)
mov r3 lr;
(* vld1.64	{d0}, [r0 :64]!                         #! EA = L0x7effec60; PC = 0x24508 *)
mov d0 L0x7effec60;
(* vld1.64	{d2}, [r0 :64]!                         #! EA = L0x7effec68; PC = 0x2450c *)
mov d2 L0x7effec68;
(* vld1.64	{d4}, [r0 :64]!                         #! EA = L0x7effec70; PC = 0x24510 *)
mov d4 L0x7effec70;
(* vld1.64	{d6}, [r0 :64]!                         #! EA = L0x7effec78; PC = 0x24514 *)
mov d6 L0x7effec78;
(* vld1.64	{d8}, [r0 :64]!                         #! EA = L0x7effec80; PC = 0x24518 *)
mov d8 L0x7effec80;
(* vld1.64	{d1}, [r0 :64]!                         #! EA = L0x7effec88; PC = 0x2451c *)
mov d1 L0x7effec88;
(* vld1.64	{d3}, [r0 :64]!                         #! EA = L0x7effec90; PC = 0x24520 *)
mov d3 L0x7effec90;
(* vld1.64	{d5}, [r0 :64]!                         #! EA = L0x7effec98; PC = 0x24524 *)
mov d5 L0x7effec98;
(* vld1.64	{d7}, [r0 :64]!                         #! EA = L0x7effeca0; PC = 0x24528 *)
mov d7 L0x7effeca0;
(* vld1.64	{d9}, [r0 :64]!                         #! EA = L0x7effeca8; PC = 0x2452c *)
mov d9 L0x7effeca8;
(* vld1.64	{d10}, [r0 :64]!                        #! EA = L0x7effecb0; PC = 0x24530 *)
mov d10 L0x7effecb0;
(* vld1.64	{d12}, [r0 :64]!                        #! EA = L0x7effecb8; PC = 0x24534 *)
mov d12 L0x7effecb8;
(* vld1.64	{d14}, [r0 :64]!                        #! EA = L0x7effecc0; PC = 0x24538 *)
mov d14 L0x7effecc0;
(* vld1.64	{d16}, [r0 :64]!                        #! EA = L0x7effecc8; PC = 0x2453c *)
mov d16 L0x7effecc8;
(* vld1.64	{d18}, [r0 :64]!                        #! EA = L0x7effecd0; PC = 0x24540 *)
mov d18 L0x7effecd0;
(* vld1.64	{d11}, [r0 :64]!                        #! EA = L0x7effecd8; PC = 0x24544 *)
mov d11 L0x7effecd8;
(* vld1.64	{d13}, [r0 :64]!                        #! EA = L0x7effece0; PC = 0x24548 *)
mov d13 L0x7effece0;
(* vld1.64	{d15}, [r0 :64]!                        #! EA = L0x7effece8; PC = 0x2454c *)
mov d15 L0x7effece8;
(* vld1.64	{d17}, [r0 :64]!                        #! EA = L0x7effecf0; PC = 0x24550 *)
mov d17 L0x7effecf0;
(* vld1.64	{d19}, [r0 :64]!                        #! EA = L0x7effecf8; PC = 0x24554 *)
mov d19 L0x7effecf8;
(* vld1.64	{d20-d21}, [r0 :128]!                   #! EA = L0x7effed00; PC = 0x24558 *)
mov d20 L0x7effed00;
mov d21 L0x7effed08;
(* vld1.64	{d22-d23}, [r0 :128]!                   #! EA = L0x7effed10; PC = 0x2455c *)
mov d22 L0x7effed10;
mov d23 L0x7effed18;
(* vld1.64	{d24}, [r0 :64]                         #! EA = L0x7effed20; PC = 0x24560 *)
mov d24 L0x7effed20;
(* sub	r0, r0, #192	; 0xc0                         #! PC = 0x24564 *)
sub r0 r0 192@uint32;
(* #bl	0x241cc <KeccakP1600_Permute_RoundLoop>     #! PC = 0x24568 *)
#bl	0x241cc <KeccakP1600_Permute_RoundLoop>     #! 0x24568 = 0x24568;
(* #! -> SP = 0x7effebf8 *)
#! 0x7effebf8 = 0x7effebf8;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24000; PC = 0x243fc *)
mov d30 L0x24000;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24008; PC = 0x243fc *)
mov d30 L0x24008;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24010; PC = 0x243fc *)
mov d30 L0x24010;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24018; PC = 0x243fc *)
mov d30 L0x24018;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24020; PC = 0x243fc *)
mov d30 L0x24020;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24028; PC = 0x243fc *)
mov d30 L0x24028;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24030; PC = 0x243fc *)
mov d30 L0x24030;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24038; PC = 0x243fc *)
mov d30 L0x24038;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24040; PC = 0x243fc *)
mov d30 L0x24040;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24048; PC = 0x243fc *)
mov d30 L0x24048;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24050; PC = 0x243fc *)
mov d30 L0x24050;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24058; PC = 0x243fc *)
mov d30 L0x24058;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24060; PC = 0x243fc *)
mov d30 L0x24060;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24068; PC = 0x243fc *)
mov d30 L0x24068;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24070; PC = 0x243fc *)
mov d30 L0x24070;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24078; PC = 0x243fc *)
mov d30 L0x24078;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24080; PC = 0x243fc *)
mov d30 L0x24080;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24088; PC = 0x243fc *)
mov d30 L0x24088;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24090; PC = 0x243fc *)
mov d30 L0x24090;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x24098; PC = 0x243fc *)
mov d30 L0x24098;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x240a0; PC = 0x243fc *)
mov d30 L0x240a0;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x240a8; PC = 0x243fc *)
mov d30 L0x240a8;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x240b0; PC = 0x243fc *)
mov d30 L0x240b0;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* veor	q13, q0, q5                                #! PC = 0x241cc *)
xor d26@uint64 d0 d10;
xor d27@uint64 d1 d11;
(* vst1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x241d0 *)
mov L0x7effec60 d24;
mov L0x7effec68 d25;
(* veor	q14, q1, q6                                #! PC = 0x241d4 *)
xor d28@uint64 d2 d12;
xor d29@uint64 d3 d13;
(* vst1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x241d8 *)
mov L0x7effec70 d8;
mov L0x7effec78 d9;
(* veor	d26, d26, d27                              #! PC = 0x241dc *)
xor d26@uint64 d26 d27;
(* vst1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x241e0 *)
mov L0x7effec80 d18;
mov L0x7effec88 d19;
(* veor	d28, d28, d29                              #! PC = 0x241e4 *)
xor d28@uint64 d28 d29;
(* veor	d26, d26, d20                              #! PC = 0x241e8 *)
xor d26@uint64 d26 d20;
(* veor	d27, d28, d21                              #! PC = 0x241ec *)
xor d27@uint64 d28 d21;
(* veor	q14, q2, q7                                #! PC = 0x241f0 *)
xor d28@uint64 d4 d14;
xor d29@uint64 d5 d15;
(* veor	q15, q3, q8                                #! PC = 0x241f4 *)
xor d30@uint64 d6 d16;
xor d31@uint64 d7 d17;
(* veor	q4, q4, q9                                 #! PC = 0x241f8 *)
xor d8@uint64 d8 d18;
xor d9@uint64 d9 d19;
(* veor	d28, d28, d29                              #! PC = 0x241fc *)
xor d28@uint64 d28 d29;
(* veor	d30, d30, d31                              #! PC = 0x24200 *)
xor d30@uint64 d30 d31;
(* veor	d25, d8, d9                                #! PC = 0x24204 *)
xor d25@uint64 d8 d9;
(* veor	d28, d28, d22                              #! PC = 0x24208 *)
xor d28@uint64 d28 d22;
(* veor	d29, d30, d23                              #! PC = 0x2420c *)
xor d29@uint64 d30 d23;
(* veor	d25, d25, d24                              #! PC = 0x24210 *)
xor d25@uint64 d25 d24;
(* sub	r0, r0, #32                                 #! PC = 0x24214 *)
sub r0 r0 32@uint32;
(* vadd.i64	d30, d27, d27                          #! PC = 0x24218 *)
add d30 d27 d27;
(* vadd.i64	d24, d28, d28                          #! PC = 0x2421c *)
add d24 d28 d28;
(* vadd.i64	d8, d29, d29                           #! PC = 0x24220 *)
add d8 d29 d29;
(* vadd.i64	d18, d25, d25                          #! PC = 0x24224 *)
add d18 d25 d25;
(* vsri.64	d30, d27, #63                           #! PC = 0x24228 *)
shr d27_shr d27 63;
spl d30_h d30_l d30 1;
join d30_h d30_h 0@uint1;
or d30@uint64 d30_h d27_shr;
(* vsri.64	d24, d28, #63                           #! PC = 0x2422c *)
shr d28_shr d28 63;
spl d24_h d24_l d24 1;
join d24_h d24_h 0@uint1;
or d24@uint64 d24_h d28_shr;
(* vsri.64	d8, d29, #63                            #! PC = 0x24230 *)
shr d29_shr d29 63;
spl d8_h d8_l d8 1;
join d8_h d8_h 0@uint1;
or d8@uint64 d8_h d29_shr;
(* vsri.64	d18, d25, #63                           #! PC = 0x24234 *)
shr d25_shr d25 63;
spl d18_h d18_l d18 1;
join d18_h d18_h 0@uint1;
or d18@uint64 d18_h d25_shr;
(* veor	d30, d30, d25                              #! PC = 0x24238 *)
xor d30@uint64 d30 d25;
(* veor	d24, d24, d26                              #! PC = 0x2423c *)
xor d24@uint64 d24 d26;
(* veor	d8, d8, d27                                #! PC = 0x24240 *)
xor d8@uint64 d8 d27;
(* vadd.i64	d27, d26, d26                          #! PC = 0x24244 *)
add d27 d26 d26;
(* veor	d18, d18, d28                              #! PC = 0x24248 *)
xor d18@uint64 d18 d28;
(* vorr	d31, d30, d30                              #! PC = 0x2424c *)
or d31@uint64 d30 d30;
(* vorr	d25, d24, d24                              #! PC = 0x24250 *)
or d25@uint64 d24 d24;
(* vsri.64	d27, d26, #63                           #! PC = 0x24254 *)
shr d26_shr d26 63;
spl d27_h d27_l d27 1;
join d27_h d27_h 0@uint1;
or d27@uint64 d27_h d26_shr;
(* vorr	d9, d8, d8                                 #! PC = 0x24258 *)
or d9@uint64 d8 d8;
(* vorr	d19, d18, d18                              #! PC = 0x2425c *)
or d19@uint64 d18 d18;
(* veor	d20, d20, d30                              #! PC = 0x24260 *)
xor d20@uint64 d20 d30;
(* veor	d21, d21, d24                              #! PC = 0x24264 *)
xor d21@uint64 d21 d24;
(* veor	d27, d27, d29                              #! PC = 0x24268 *)
xor d27@uint64 d27 d29;
(* veor	d22, d22, d8                               #! PC = 0x2426c *)
xor d22@uint64 d22 d8;
(* veor	d23, d23, d18                              #! PC = 0x24270 *)
xor d23@uint64 d23 d18;
(* vorr	d26, d27, d27                              #! PC = 0x24274 *)
or d26@uint64 d27 d27;
(* veor	q0, q0, q15                                #! PC = 0x24278 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* veor	q1, q1, q12                                #! PC = 0x2427c *)
xor d2@uint64 d2 d24;
xor d3@uint64 d3 d25;
(* veor	q2, q2, q4                                 #! PC = 0x24280 *)
xor d4@uint64 d4 d8;
xor d5@uint64 d5 d9;
(* veor	q3, q3, q9                                 #! PC = 0x24284 *)
xor d6@uint64 d6 d18;
xor d7@uint64 d7 d19;
(* veor	q5, q5, q15                                #! PC = 0x24288 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* veor	q6, q6, q12                                #! PC = 0x2428c *)
xor d12@uint64 d12 d24;
xor d13@uint64 d13 d25;
(* vld1.64	{d24-d25}, [r0 :128]!                   #! EA = L0x7effec60; PC = 0x24290 *)
mov d24 L0x7effec60;
mov d25 L0x7effec68;
(* veor	q7, q7, q4                                 #! PC = 0x24294 *)
xor d14@uint64 d14 d8;
xor d15@uint64 d15 d9;
(* vld1.64	{d8-d9}, [r0 :128]!                     #! EA = L0x7effec70; PC = 0x24298 *)
mov d8 L0x7effec70;
mov d9 L0x7effec78;
(* veor	q8, q8, q9                                 #! PC = 0x2429c *)
xor d16@uint64 d16 d18;
xor d17@uint64 d17 d19;
(* vld1.64	{d18-d19}, [r0 :128]                    #! EA = L0x7effec80; PC = 0x242a0 *)
mov d18 L0x7effec80;
mov d19 L0x7effec88;
(* veor	d24, d24, d26                              #! PC = 0x242a4 *)
xor d24@uint64 d24 d26;
(* sub	r0, r0, #32                                 #! PC = 0x242a8 *)
sub r0 r0 32@uint32;
(* veor	q4, q4, q13                                #! PC = 0x242ac *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* veor	q9, q9, q13                                #! PC = 0x242b0 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	d27, d2, d2                                #! PC = 0x242b4 *)
or d27@uint64 d2 d2;
(* vorr	d28, d4, d4                                #! PC = 0x242b8 *)
or d28@uint64 d4 d4;
(* vorr	d29, d6, d6                                #! PC = 0x242bc *)
or d29@uint64 d6 d6;
(* vorr	d25, d8, d8                                #! PC = 0x242c0 *)
or d25@uint64 d8 d8;
(* vshl.s64	d2, d3, #44	; 0x2c                     #! PC = 0x242c4 *)
shl d2 d3 44;
(* vshl.s64	d4, d14, #43	; 0x2b                    #! PC = 0x242c8 *)
shl d4 d14 43;
(* vshl.s64	d8, d24, #14                           #! PC = 0x242cc *)
shl d8 d24 14;
(* vshl.s64	d6, d17, #21                           #! PC = 0x242d0 *)
shl d6 d17 21;
(* vsri.64	d2, d3, #20                             #! PC = 0x242d4 *)
shr d3_shr d3 20;
spl d2_h d2_l d2 44;
join d2_h d2_h 0@uint44;
or d2@uint64 d2_h d3_shr;
(* vsri.64	d4, d14, #21                            #! PC = 0x242d8 *)
shr d14_shr d14 21;
spl d4_h d4_l d4 43;
join d4_h d4_h 0@uint43;
or d4@uint64 d4_h d14_shr;
(* vsri.64	d8, d24, #50                            #! PC = 0x242dc *)
shr d24_shr d24 50;
spl d8_h d8_l d8 14;
join d8_h d8_h 0@uint14;
or d8@uint64 d8_h d24_shr;
(* vsri.64	d6, d17, #43                            #! PC = 0x242e0 *)
shr d17_shr d17 43;
spl d6_h d6_l d6 21;
join d6_h d6_h 0@uint21;
or d6@uint64 d6_h d17_shr;
(* vshl.s64	d3, d9, #20                            #! PC = 0x242e4 *)
shl d3 d9 20;
(* vshl.s64	d14, d16, #25                          #! PC = 0x242e8 *)
shl d14 d16 25;
(* vshl.s64	d24, d21, #2                           #! PC = 0x242ec *)
shl d24 d21 2;
(* vshl.s64	d17, d15, #15                          #! PC = 0x242f0 *)
shl d17 d15 15;
(* vsri.64	d3, d9, #44                             #! PC = 0x242f4 *)
shr d9_shr d9 44;
spl d3_h d3_l d3 20;
join d3_h d3_h 0@uint20;
or d3@uint64 d3_h d9_shr;
(* vsri.64	d14, d16, #39                           #! PC = 0x242f8 *)
shr d16_shr d16 39;
spl d14_h d14_l d14 25;
join d14_h d14_h 0@uint25;
or d14@uint64 d14_h d16_shr;
(* vsri.64	d24, d21, #62                           #! PC = 0x242fc *)
shr d21_shr d21 62;
spl d24_h d24_l d24 2;
join d24_h d24_h 0@uint2;
or d24@uint64 d24_h d21_shr;
(* vsri.64	d17, d15, #49                           #! PC = 0x24300 *)
shr d15_shr d15 49;
spl d17_h d17_l d17 15;
join d17_h d17_h 0@uint15;
or d17@uint64 d17_h d15_shr;
(* vshl.s64	d9, d22, #61	; 0x3d                    #! PC = 0x24304 *)
shl d9 d22 61;
(* vext.8	d16, d19, d19, #7                        #! PC = 0x24308 *)
ror d16 d19 56;
(* vshl.s64	d21, d7, #55	; 0x37                    #! PC = 0x2430c *)
shl d21 d7 55;
(* vshl.s64	d15, d12, #10                          #! PC = 0x24310 *)
shl d15 d12 10;
(* vsri.64	d9, d22, #3                             #! PC = 0x24314 *)
shr d22_shr d22 3;
spl d9_h d9_l d9 61;
join d9_h d9_h 0@uint61;
or d9@uint64 d9_h d22_shr;
(* vsri.64	d21, d7, #9                             #! PC = 0x24318 *)
shr d7_shr d7 9;
spl d21_h d21_l d21 55;
join d21_h d21_h 0@uint55;
or d21@uint64 d21_h d7_shr;
(* vsri.64	d15, d12, #54                           #! PC = 0x2431c *)
shr d12_shr d12 54;
spl d15_h d15_l d15 10;
join d15_h d15_h 0@uint10;
or d15@uint64 d15_h d12_shr;
(* vshl.s64	d22, d18, #39	; 0x27                   #! PC = 0x24320 *)
shl d22 d18 39;
(* vext.8	d19, d23, d23, #1                        #! PC = 0x24324 *)
ror d19 d23 8;
(* vshl.s64	d7, d13, #45	; 0x2d                    #! PC = 0x24328 *)
shl d7 d13 45;
(* vshl.s64	d12, d5, #6                            #! PC = 0x2432c *)
shl d12 d5 6;
(* vsri.64	d22, d18, #25                           #! PC = 0x24330 *)
shr d18_shr d18 25;
spl d22_h d22_l d22 39;
join d22_h d22_h 0@uint39;
or d22@uint64 d22_h d18_shr;
(* vsri.64	d7, d13, #19                            #! PC = 0x24334 *)
shr d13_shr d13 19;
spl d7_h d7_l d7 45;
join d7_h d7_h 0@uint45;
or d7@uint64 d7_h d13_shr;
(* vsri.64	d12, d5, #58                            #! PC = 0x24338 *)
shr d5_shr d5 58;
spl d12_h d12_l d12 6;
join d12_h d12_h 0@uint6;
or d12@uint64 d12_h d5_shr;
(* vshl.s64	d18, d20, #18                          #! PC = 0x2433c *)
shl d18 d20 18;
(* vshl.s64	d23, d11, #41	; 0x29                   #! PC = 0x24340 *)
shl d23 d11 41;
(* vshl.s64	d13, d1, #36	; 0x24                    #! PC = 0x24344 *)
shl d13 d1 36;
(* vshl.s64	d5, d10, #3                            #! PC = 0x24348 *)
shl d5 d10 3;
(* vsri.64	d18, d20, #46                           #! PC = 0x2434c *)
shr d20_shr d20 46;
spl d18_h d18_l d18 18;
join d18_h d18_h 0@uint18;
or d18@uint64 d18_h d20_shr;
(* vsri.64	d23, d11, #23                           #! PC = 0x24350 *)
shr d11_shr d11 23;
spl d23_h d23_l d23 41;
join d23_h d23_h 0@uint41;
or d23@uint64 d23_h d11_shr;
(* vsri.64	d13, d1, #28                            #! PC = 0x24354 *)
shr d1_shr d1 28;
spl d13_h d13_l d13 36;
join d13_h d13_h 0@uint36;
or d13@uint64 d13_h d1_shr;
(* vsri.64	d5, d10, #61                            #! PC = 0x24358 *)
shr d10_shr d10 61;
spl d5_h d5_l d5 3;
join d5_h d5_h 0@uint3;
or d5@uint64 d5_h d10_shr;
(* vshl.s64	d20, d28, #62	; 0x3e                   #! PC = 0x2435c *)
shl d20 d28 62;
(* vshl.s64	d11, d25, #27                          #! PC = 0x24360 *)
shl d11 d25 27;
(* vshl.s64	d1, d29, #28                           #! PC = 0x24364 *)
shl d1 d29 28;
(* vshl.s64	d10, d27, #1                           #! PC = 0x24368 *)
shl d10 d27 1;
(* vsri.64	d20, d28, #2                            #! PC = 0x2436c *)
shr d28_shr d28 2;
spl d20_h d20_l d20 62;
join d20_h d20_h 0@uint62;
or d20@uint64 d20_h d28_shr;
(* vsri.64	d11, d25, #37                           #! PC = 0x24370 *)
shr d25_shr d25 37;
spl d11_h d11_l d11 27;
join d11_h d11_h 0@uint27;
or d11@uint64 d11_h d25_shr;
(* vsri.64	d1, d29, #36                            #! PC = 0x24374 *)
shr d29_shr d29 36;
spl d1_h d1_l d1 28;
join d1_h d1_h 0@uint28;
or d1@uint64 d1_h d29_shr;
(* vsri.64	d10, d27, #63                           #! PC = 0x24378 *)
shr d27_shr d27 63;
spl d10_h d10_l d10 1;
join d10_h d10_h 0@uint1;
or d10@uint64 d10_h d27_shr;
(* vorr	q13, q0, q0                                #! PC = 0x2437c *)
or d26@uint64 d0 d0;
or d27@uint64 d1 d1;
(* vbic	q15, q2, q1                                #! PC = 0x24380 *)
not d2_c@uint64 d2;
and d30@uint64 d4 d2_c;
not d3_c@uint64 d3;
and d31@uint64 d5 d3_c;
(* veor	q0, q0, q15                                #! PC = 0x24384 *)
xor d0@uint64 d0 d30;
xor d1@uint64 d1 d31;
(* vorr	q14, q1, q1                                #! PC = 0x24388 *)
or d28@uint64 d2 d2;
or d29@uint64 d3 d3;
(* vbic	q15, q3, q2                                #! PC = 0x2438c *)
not d4_c@uint64 d4;
and d30@uint64 d6 d4_c;
not d5_c@uint64 d5;
and d31@uint64 d7 d5_c;
(* veor	q1, q1, q15                                #! PC = 0x24390 *)
xor d2@uint64 d2 d30;
xor d3@uint64 d3 d31;
(* vbic	q15, q4, q3                                #! PC = 0x24394 *)
not d6_c@uint64 d6;
and d30@uint64 d8 d6_c;
not d7_c@uint64 d7;
and d31@uint64 d9 d7_c;
(* veor	q2, q2, q15                                #! PC = 0x24398 *)
xor d4@uint64 d4 d30;
xor d5@uint64 d5 d31;
(* vbic	q15, q13, q4                               #! PC = 0x2439c *)
not d8_c@uint64 d8;
and d30@uint64 d26 d8_c;
not d9_c@uint64 d9;
and d31@uint64 d27 d9_c;
(* vbic	q13, q14, q13                              #! PC = 0x243a0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q3, q3, q15                                #! PC = 0x243a4 *)
xor d6@uint64 d6 d30;
xor d7@uint64 d7 d31;
(* veor	q4, q4, q13                                #! PC = 0x243a8 *)
xor d8@uint64 d8 d26;
xor d9@uint64 d9 d27;
(* vorr	q13, q5, q5                                #! PC = 0x243ac *)
or d26@uint64 d10 d10;
or d27@uint64 d11 d11;
(* vbic	q15, q7, q6                                #! PC = 0x243b0 *)
not d12_c@uint64 d12;
and d30@uint64 d14 d12_c;
not d13_c@uint64 d13;
and d31@uint64 d15 d13_c;
(* veor	q5, q5, q15                                #! PC = 0x243b4 *)
xor d10@uint64 d10 d30;
xor d11@uint64 d11 d31;
(* vorr	q14, q6, q6                                #! PC = 0x243b8 *)
or d28@uint64 d12 d12;
or d29@uint64 d13 d13;
(* vbic	q15, q8, q7                                #! PC = 0x243bc *)
not d14_c@uint64 d14;
and d30@uint64 d16 d14_c;
not d15_c@uint64 d15;
and d31@uint64 d17 d15_c;
(* veor	q6, q6, q15                                #! PC = 0x243c0 *)
xor d12@uint64 d12 d30;
xor d13@uint64 d13 d31;
(* vbic	q15, q9, q8                                #! PC = 0x243c4 *)
not d16_c@uint64 d16;
and d30@uint64 d18 d16_c;
not d17_c@uint64 d17;
and d31@uint64 d19 d17_c;
(* veor	q7, q7, q15                                #! PC = 0x243c8 *)
xor d14@uint64 d14 d30;
xor d15@uint64 d15 d31;
(* vbic	q15, q13, q9                               #! PC = 0x243cc *)
not d18_c@uint64 d18;
and d30@uint64 d26 d18_c;
not d19_c@uint64 d19;
and d31@uint64 d27 d19_c;
(* vbic	q13, q14, q13                              #! PC = 0x243d0 *)
not d26_c@uint64 d26;
and d26@uint64 d28 d26_c;
not d27_c@uint64 d27;
and d27@uint64 d29 d27_c;
(* veor	q8, q8, q15                                #! PC = 0x243d4 *)
xor d16@uint64 d16 d30;
xor d17@uint64 d17 d31;
(* veor	q9, q9, q13                                #! PC = 0x243d8 *)
xor d18@uint64 d18 d26;
xor d19@uint64 d19 d27;
(* vorr	q13, q10, q10                              #! PC = 0x243dc *)
or d26@uint64 d20 d20;
or d27@uint64 d21 d21;
(* vbic	d30, d22, d21                              #! PC = 0x243e0 *)
not d21_c@uint64 d21;
and d30@uint64 d22 d21_c;
(* vbic	d31, d23, d22                              #! PC = 0x243e4 *)
not d22_c@uint64 d22;
and d31@uint64 d23 d22_c;
(* veor	q10, q10, q15                              #! PC = 0x243e8 *)
xor d20@uint64 d20 d30;
xor d21@uint64 d21 d31;
(* vbic	d30, d24, d23                              #! PC = 0x243ec *)
not d23_c@uint64 d23;
and d30@uint64 d24 d23_c;
(* vbic	d31, d26, d24                              #! PC = 0x243f0 *)
not d24_c@uint64 d24;
and d31@uint64 d26 d24_c;
(* vbic	d26, d27, d26                              #! PC = 0x243f4 *)
not d26_c@uint64 d26;
and d26@uint64 d27 d26_c;
(* veor	q11, q11, q15                              #! PC = 0x243f8 *)
xor d22@uint64 d22 d30;
xor d23@uint64 d23 d31;
(* vld1.64	{d30}, [r1 :64]!                        #! EA = L0x240b8; PC = 0x243fc *)
mov d30 L0x240b8;
(* veor	d24, d24, d26                              #! PC = 0x24400 *)
xor d24@uint64 d24 d26;
(* veor	d0, d0, d30                                #! PC = 0x24404 *)
xor d0@uint64 d0 d30;
(* subs	r2, r2, #1                                 #! PC = 0x24408 *)
subs carry r2 r2 1@uint32;
(* #bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! PC = 0x2440c *)
#bne	0x241cc <KeccakP1600_Permute_RoundLoop>    #! 0x2440c = 0x2440c;
(* #! <- SP = 0x7effebf8 *)
#! 0x7effebf8 = 0x7effebf8;
(* #bx	lr                                          #! PC = 0x24410 *)
#bx	%%lr                                          #! 0x24410 = 0x24410;
(* vst1.64	{d0}, [r0 :64]!                         #! EA = L0x7effec60; PC = 0x2456c *)
mov L0x7effec60 d0;
(* vst1.64	{d2}, [r0 :64]!                         #! EA = L0x7effec68; PC = 0x24570 *)
mov L0x7effec68 d2;
(* vst1.64	{d4}, [r0 :64]!                         #! EA = L0x7effec70; PC = 0x24574 *)
mov L0x7effec70 d4;
(* vst1.64	{d6}, [r0 :64]!                         #! EA = L0x7effec78; PC = 0x24578 *)
mov L0x7effec78 d6;
(* vst1.64	{d8}, [r0 :64]!                         #! EA = L0x7effec80; PC = 0x2457c *)
mov L0x7effec80 d8;
(* vst1.64	{d1}, [r0 :64]!                         #! EA = L0x7effec88; PC = 0x24580 *)
mov L0x7effec88 d1;
(* vst1.64	{d3}, [r0 :64]!                         #! EA = L0x7effec90; PC = 0x24584 *)
mov L0x7effec90 d3;
(* vst1.64	{d5}, [r0 :64]!                         #! EA = L0x7effec98; PC = 0x24588 *)
mov L0x7effec98 d5;
(* vst1.64	{d7}, [r0 :64]!                         #! EA = L0x7effeca0; PC = 0x2458c *)
mov L0x7effeca0 d7;
(* vst1.64	{d9}, [r0 :64]!                         #! EA = L0x7effeca8; PC = 0x24590 *)
mov L0x7effeca8 d9;
(* vst1.64	{d10}, [r0 :64]!                        #! EA = L0x7effecb0; PC = 0x24594 *)
mov L0x7effecb0 d10;
(* vst1.64	{d12}, [r0 :64]!                        #! EA = L0x7effecb8; PC = 0x24598 *)
mov L0x7effecb8 d12;
(* vst1.64	{d14}, [r0 :64]!                        #! EA = L0x7effecc0; PC = 0x2459c *)
mov L0x7effecc0 d14;
(* vst1.64	{d16}, [r0 :64]!                        #! EA = L0x7effecc8; PC = 0x245a0 *)
mov L0x7effecc8 d16;
(* vst1.64	{d18}, [r0 :64]!                        #! EA = L0x7effecd0; PC = 0x245a4 *)
mov L0x7effecd0 d18;
(* vst1.64	{d11}, [r0 :64]!                        #! EA = L0x7effecd8; PC = 0x245a8 *)
mov L0x7effecd8 d11;
(* vst1.64	{d13}, [r0 :64]!                        #! EA = L0x7effece0; PC = 0x245ac *)
mov L0x7effece0 d13;
(* vst1.64	{d15}, [r0 :64]!                        #! EA = L0x7effece8; PC = 0x245b0 *)
mov L0x7effece8 d15;
(* vst1.64	{d17}, [r0 :64]!                        #! EA = L0x7effecf0; PC = 0x245b4 *)
mov L0x7effecf0 d17;
(* vst1.64	{d19}, [r0 :64]!                        #! EA = L0x7effecf8; PC = 0x245b8 *)
mov L0x7effecf8 d19;
(* vst1.64	{d20-d21}, [r0 :128]!                   #! EA = L0x7effed00; PC = 0x245bc *)
mov L0x7effed00 d20;
mov L0x7effed08 d21;
(* vst1.64	{d22-d23}, [r0 :128]!                   #! EA = L0x7effed10; PC = 0x245c0 *)
mov L0x7effed10 d22;
mov L0x7effed18 d23;
(* vst1.64	{d24}, [r0 :64]                         #! EA = L0x7effed20; PC = 0x245c4 *)
mov L0x7effed20 d24;
(* #! <- SP = 0x7effec38 *)
#! 0x7effec38 = 0x7effec38;
(* #bx	r3                                          #! PC = 0x245cc *)
#bx	%%r3                                          #! 0x245cc = 0x245cc;

(* ===== Outputs ===== *)

mov a00 L0x7effec60;
mov a01 L0x7effec68;
mov a02 L0x7effec70;
mov a03 L0x7effec78;
mov a04 L0x7effec80;
mov a05 L0x7effec88;
mov a06 L0x7effec90;
mov a07 L0x7effec98;
mov a08 L0x7effeca0;
mov a09 L0x7effeca8;
mov a10 L0x7effecb0;
mov a11 L0x7effecb8;
mov a12 L0x7effecc0;
mov a13 L0x7effecc8;
mov a14 L0x7effecd0;
mov a15 L0x7effecd8;
mov a16 L0x7effece0;
mov a17 L0x7effece8;
mov a18 L0x7effecf0;
mov a19 L0x7effecf8;
mov a20 L0x7effed00;
mov a21 L0x7effed08;
mov a22 L0x7effed10;
mov a23 L0x7effed18;
mov a24 L0x7effed20;

{
  true
  &&
  true
}

