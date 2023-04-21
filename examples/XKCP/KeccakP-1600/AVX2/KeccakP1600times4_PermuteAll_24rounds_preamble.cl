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

const rho8_0 = 0x0605040302010007
const rho8_1 = 0x0E0D0C0B0A09080F
const rho8_2 = 0x1615141312111017
const rho8_3 = 0x1E1D1C1B1A19181F
const rho56_0 = 0x0007060504030201
const rho56_1 = 0x080F0E0D0C0B0A09
const rho56_2 = 0x1017161514131211
const rho56_3 = 0x181F1E1D1C1B1A19

proc stb64(uint64 x; uint8 x_0, uint8 x_1, uint8 x_2, uint8 x_3, uint8 x_4, uint8 x_5, uint8 x_6, uint8 x_7) =
{ true && true }
spl tmp x_0 x 8;
spl tmp x_1 tmp 8;
spl tmp x_2 tmp 8;
spl tmp x_3 tmp 8;
spl tmp x_4 tmp 8;
spl tmp x_5 tmp 8;
spl x_7 x_6 tmp 8;
{ true && true }

proc sel128(uint8 idx, uint128 src; uint8 dst) =
{ true && true }
spl idx_7 dontcare idx 7;
cast idx_7@bit idx_7;
spl dontcare idx_0t4 idx 4;
cast idx_0t4@uint128 idx_0t4;
shr tmp src idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
spl dontcare dst tmp 8;
cmov dst idx_7 0@uint8 dst;
{ true && true }

proc jb64(uint8 src_0, uint8 src_1, uint8 src_2, uint8 src_3, uint8 src_4, uint8 src_5, uint8 src_6, uint8 src_7; uint8 dst) =
{ true && true }
join tmp src_1 src_0;
join tmp src_2 tmp;
join tmp src_3 tmp;
join tmp src_4 tmp;
join tmp src_5 tmp;
join tmp src_6 tmp;
join dst src_7 tmp;
{ true && true }

proc vpshufb128(uint64 idx_0, uint64 idx_1, uint64 src_0, uint64 src_1; uint64 dst_0, uint64 dst_1) =
{ true && true }
call stb64(idx_0, idx_00, idx_01, idx_02, idx_03, idx_04, idx_05, idx_06, idx_07);
call stb64(idx_1, idx_08, idx_09, idx_10, idx_11, idx_12, idx_13, idx_14, idx_15);
join src src_1 src_0;
call sel128(idx_00, src, dst_00);
call sel128(idx_01, src, dst_01);
call sel128(idx_02, src, dst_02);
call sel128(idx_03, src, dst_03);
call sel128(idx_04, src, dst_04);
call sel128(idx_05, src, dst_05);
call sel128(idx_06, src, dst_06);
call sel128(idx_07, src, dst_07);
call sel128(idx_08, src, dst_08);
call sel128(idx_09, src, dst_09);
call sel128(idx_10, src, dst_10);
call sel128(idx_11, src, dst_11);
call sel128(idx_12, src, dst_12);
call sel128(idx_13, src, dst_13);
call sel128(idx_14, src, dst_14);
call sel128(idx_15, src, dst_15);
call jb64(dst_00, dst_01, dst_02, dst_03, dst_04, dst_05, dst_06, dst_07, dst_0);
call jb64(dst_08, dst_09, dst_10, dst_11, dst_12, dst_13, dst_14, dst_15, dst_1);
{ true && true }


(* ===== Main ===== *)
(*
proc main (uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
           uint64 A05, uint64 A06, uint64 A07, uint64 A08, uint64 A09,
           uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
           uint64 A15, uint64 A16, uint64 A17, uint64 A18, uint64 A19,
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
           uint64 B00, uint64 B01, uint64 B02, uint64 B03, uint64 B04,
           uint64 B05, uint64 B06, uint64 B07, uint64 B08, uint64 B09,
           uint64 B10, uint64 B11, uint64 B12, uint64 B13, uint64 B14,
           uint64 B15, uint64 B16, uint64 B17, uint64 B18, uint64 B19,
           uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24,
           uint64 C00, uint64 C01, uint64 C02, uint64 C03, uint64 C04,
           uint64 C05, uint64 C06, uint64 C07, uint64 C08, uint64 C09,
           uint64 C10, uint64 C11, uint64 C12, uint64 C13, uint64 C14,
           uint64 C15, uint64 C16, uint64 C17, uint64 C18, uint64 C19,
           uint64 C20, uint64 C21, uint64 C22, uint64 C23, uint64 C24,
           uint64 D00, uint64 D01, uint64 D02, uint64 D03, uint64 D04,
           uint64 D05, uint64 D06, uint64 D07, uint64 D08, uint64 D09,
           uint64 D10, uint64 D11, uint64 D12, uint64 D13, uint64 D14,
           uint64 D15, uint64 D16, uint64 D17, uint64 D18, uint64 D19,
           uint64 D20, uint64 D21, uint64 D22, uint64 D23, uint64 D24) =
*)

(* ===== Initialization ===== *)
(*
mov L0x5555555cdf00 $rho8_0@uint64;
mov L0x5555555cdf08 $rho8_1@uint64;
mov L0x5555555cdf10 $rho8_2@uint64;
mov L0x5555555cdf18 $rho8_3@uint64;
mov L0x5555555cdee0 $rho56_0@uint64;
mov L0x5555555cdee8 $rho56_1@uint64;
mov L0x5555555cdef0 $rho56_2@uint64;
mov L0x5555555cdef8 $rho56_3@uint64;

mov L0x5555555cde80 $KeccakF1600RoundConstants_12@uint64;
mov L0x5555555cde88 $KeccakF1600RoundConstants_13@uint64;
mov L0x5555555cde90 $KeccakF1600RoundConstants_14@uint64;
mov L0x5555555cde98 $KeccakF1600RoundConstants_15@uint64;
mov L0x5555555cdea0 $KeccakF1600RoundConstants_16@uint64;
mov L0x5555555cdea8 $KeccakF1600RoundConstants_17@uint64;
mov L0x5555555cdeb0 $KeccakF1600RoundConstants_18@uint64;
mov L0x5555555cdeb8 $KeccakF1600RoundConstants_19@uint64;
mov L0x5555555cdec0 $KeccakF1600RoundConstants_20@uint64;
mov L0x5555555cdec8 $KeccakF1600RoundConstants_21@uint64;
mov L0x5555555cded0 $KeccakF1600RoundConstants_22@uint64;
mov L0x5555555cded8 $KeccakF1600RoundConstants_23@uint64;

mov L0x7fffffffc320 A00;
mov L0x7fffffffc328 B00;
mov L0x7fffffffc330 C00;
mov L0x7fffffffc338 D00;
mov L0x7fffffffc340 A01;
mov L0x7fffffffc348 B01;
mov L0x7fffffffc350 C01;
mov L0x7fffffffc358 D01;
mov L0x7fffffffc360 A02;
mov L0x7fffffffc368 B02;
mov L0x7fffffffc370 C02;
mov L0x7fffffffc378 D02;
mov L0x7fffffffc380 A03;
mov L0x7fffffffc388 B03;
mov L0x7fffffffc390 C03;
mov L0x7fffffffc398 D03;
mov L0x7fffffffc3a0 A04;
mov L0x7fffffffc3a8 B04;
mov L0x7fffffffc3b0 C04;
mov L0x7fffffffc3b8 D04;
mov L0x7fffffffc3c0 A05;
mov L0x7fffffffc3c8 B05;
mov L0x7fffffffc3d0 C05;
mov L0x7fffffffc3d8 D05;
mov L0x7fffffffc3e0 A06;
mov L0x7fffffffc3e8 B06;
mov L0x7fffffffc3f0 C06;
mov L0x7fffffffc3f8 D06;
mov L0x7fffffffc400 A07;
mov L0x7fffffffc408 B07;
mov L0x7fffffffc410 C07;
mov L0x7fffffffc418 D07;
mov L0x7fffffffc420 A08;
mov L0x7fffffffc428 B08;
mov L0x7fffffffc430 C08;
mov L0x7fffffffc438 D08;
mov L0x7fffffffc440 A09;
mov L0x7fffffffc448 B09;
mov L0x7fffffffc450 C09;
mov L0x7fffffffc458 D09;
mov L0x7fffffffc460 A10;
mov L0x7fffffffc468 B10;
mov L0x7fffffffc470 C10;
mov L0x7fffffffc478 D10;
mov L0x7fffffffc480 A11;
mov L0x7fffffffc488 B11;
mov L0x7fffffffc490 C11;
mov L0x7fffffffc498 D11;
mov L0x7fffffffc4a0 A12;
mov L0x7fffffffc4a8 B12;
mov L0x7fffffffc4b0 C12;
mov L0x7fffffffc4b8 D12;
mov L0x7fffffffc4c0 A13;
mov L0x7fffffffc4c8 B13;
mov L0x7fffffffc4d0 C13;
mov L0x7fffffffc4d8 D13;
mov L0x7fffffffc4e0 A14;
mov L0x7fffffffc4e8 B14;
mov L0x7fffffffc4f0 C14;
mov L0x7fffffffc4f8 D14;
mov L0x7fffffffc500 A15;
mov L0x7fffffffc508 B15;
mov L0x7fffffffc510 C15;
mov L0x7fffffffc518 D15;
mov L0x7fffffffc520 A16;
mov L0x7fffffffc528 B16;
mov L0x7fffffffc530 C16;
mov L0x7fffffffc538 D16;
mov L0x7fffffffc540 A17;
mov L0x7fffffffc548 B17;
mov L0x7fffffffc550 C17;
mov L0x7fffffffc558 D17;
mov L0x7fffffffc560 A18;
mov L0x7fffffffc568 B18;
mov L0x7fffffffc570 C18;
mov L0x7fffffffc578 D18;
mov L0x7fffffffc580 A19;
mov L0x7fffffffc588 B19;
mov L0x7fffffffc590 C19;
mov L0x7fffffffc598 D19;
mov L0x7fffffffc5a0 A20;
mov L0x7fffffffc5a8 B20;
mov L0x7fffffffc5b0 C20;
mov L0x7fffffffc5b8 D20;
mov L0x7fffffffc5c0 A21;
mov L0x7fffffffc5c8 B21;
mov L0x7fffffffc5d0 C21;
mov L0x7fffffffc5d8 D21;
mov L0x7fffffffc5e0 A22;
mov L0x7fffffffc5e8 B22;
mov L0x7fffffffc5f0 C22;
mov L0x7fffffffc5f8 D22;
mov L0x7fffffffc600 A23;
mov L0x7fffffffc608 B23;
mov L0x7fffffffc610 C23;
mov L0x7fffffffc618 D23;
mov L0x7fffffffc620 A24;
mov L0x7fffffffc628 B24;
mov L0x7fffffffc630 C24;
mov L0x7fffffffc638 D24;

nondet rax@uint64;
nondet rsp@uint64;
*)

(* ===== Outputs ===== *)
(*
mov a00 L0x7fffffffc320;
mov b00 L0x7fffffffc328;
mov c00 L0x7fffffffc330;
mov d00 L0x7fffffffc338;
mov a01 L0x7fffffffc340;
mov b01 L0x7fffffffc348;
mov c01 L0x7fffffffc350;
mov d01 L0x7fffffffc358;
mov a02 L0x7fffffffc360;
mov b02 L0x7fffffffc368;
mov c02 L0x7fffffffc370;
mov d02 L0x7fffffffc378;
mov a03 L0x7fffffffc380;
mov b03 L0x7fffffffc388;
mov c03 L0x7fffffffc390;
mov d03 L0x7fffffffc398;
mov a04 L0x7fffffffc3a0;
mov b04 L0x7fffffffc3a8;
mov c04 L0x7fffffffc3b0;
mov d04 L0x7fffffffc3b8;
mov a05 L0x7fffffffc3c0;
mov b05 L0x7fffffffc3c8;
mov c05 L0x7fffffffc3d0;
mov d05 L0x7fffffffc3d8;
mov a06 L0x7fffffffc3e0;
mov b06 L0x7fffffffc3e8;
mov c06 L0x7fffffffc3f0;
mov d06 L0x7fffffffc3f8;
mov a07 L0x7fffffffc400;
mov b07 L0x7fffffffc408;
mov c07 L0x7fffffffc410;
mov d07 L0x7fffffffc418;
mov a08 L0x7fffffffc420;
mov b08 L0x7fffffffc428;
mov c08 L0x7fffffffc430;
mov d08 L0x7fffffffc438;
mov a09 L0x7fffffffc440;
mov b09 L0x7fffffffc448;
mov c09 L0x7fffffffc450;
mov d09 L0x7fffffffc458;
mov a10 L0x7fffffffc460;
mov b10 L0x7fffffffc468;
mov c10 L0x7fffffffc470;
mov d10 L0x7fffffffc478;
mov a11 L0x7fffffffc480;
mov b11 L0x7fffffffc488;
mov c11 L0x7fffffffc490;
mov d11 L0x7fffffffc498;
mov a12 L0x7fffffffc4a0;
mov b12 L0x7fffffffc4a8;
mov c12 L0x7fffffffc4b0;
mov d12 L0x7fffffffc4b8;
mov a13 L0x7fffffffc4c0;
mov b13 L0x7fffffffc4c8;
mov c13 L0x7fffffffc4d0;
mov d13 L0x7fffffffc4d8;
mov a14 L0x7fffffffc4e0;
mov b14 L0x7fffffffc4e8;
mov c14 L0x7fffffffc4f0;
mov d14 L0x7fffffffc4f8;
mov a15 L0x7fffffffc500;
mov b15 L0x7fffffffc508;
mov c15 L0x7fffffffc510;
mov d15 L0x7fffffffc518;
mov a16 L0x7fffffffc520;
mov b16 L0x7fffffffc528;
mov c16 L0x7fffffffc530;
mov d16 L0x7fffffffc538;
mov a17 L0x7fffffffc540;
mov b17 L0x7fffffffc548;
mov c17 L0x7fffffffc550;
mov d17 L0x7fffffffc558;
mov a18 L0x7fffffffc560;
mov b18 L0x7fffffffc568;
mov c18 L0x7fffffffc570;
mov d18 L0x7fffffffc578;
mov a19 L0x7fffffffc580;
mov b19 L0x7fffffffc588;
mov c19 L0x7fffffffc590;
mov d19 L0x7fffffffc598;
mov a20 L0x7fffffffc5a0;
mov b20 L0x7fffffffc5a8;
mov c20 L0x7fffffffc5b0;
mov d20 L0x7fffffffc5b8;
mov a21 L0x7fffffffc5c0;
mov b21 L0x7fffffffc5c8;
mov c21 L0x7fffffffc5d0;
mov d21 L0x7fffffffc5d8;
mov a22 L0x7fffffffc5e0;
mov b22 L0x7fffffffc5e8;
mov c22 L0x7fffffffc5f0;
mov d22 L0x7fffffffc5f8;
mov a23 L0x7fffffffc600;
mov b23 L0x7fffffffc608;
mov c23 L0x7fffffffc610;
mov d23 L0x7fffffffc618;
mov a24 L0x7fffffffc620;
mov b24 L0x7fffffffc628;
mov c24 L0x7fffffffc630;
mov d24 L0x7fffffffc638;
*)
