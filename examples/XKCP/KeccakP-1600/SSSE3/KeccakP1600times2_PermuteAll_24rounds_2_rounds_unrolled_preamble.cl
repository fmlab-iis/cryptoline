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
const rho56_0 = 0x0007060504030201
const rho56_1 = 0x080F0E0D0C0B0A09

proc stb64(uint64 x; uint8 x_0, uint8 x_1, uint8 x_2, uint8 x_3, uint8 x_4, uint8 x_5, uint8 x_6, uint8 x_7) =
{ true && true }
mov tmp x;
spl tmp x_0 tmp 8;
spl tmp x_1 tmp 8;
spl tmp x_2 tmp 8;
spl tmp x_3 tmp 8;
spl tmp x_4 tmp 8;
spl tmp x_5 tmp 8;
spl x_7 x_6 tmp 8;
{ true && true }

proc stb64x2(uint64 x_0, uint64 x_1;
             uint8 x_00, uint8 x_01, uint8 x_02, uint8 x_03, uint8 x_04, uint8 x_05, uint8 x_06, uint8 x_07,
             uint8 x_08, uint8 x_09, uint8 x_10, uint8 x_11, uint8 x_12, uint8 x_13, uint8 x_14, uint8 x_15) =
{ true && true }
call stb64(x_0, x_00, x_01, x_02, x_03, x_04, x_05, x_06, x_07);
call stb64(x_1, x_08, x_09, x_10, x_11, x_12, x_13, x_14, x_15);
{ true && true }

proc sel128(uint8 idx,
            uint8 src_00, uint8 src_01, uint8 src_02, uint8 src_03, uint8 src_04, uint8 src_05, uint8 src_06, uint8 src_07,
            uint8 src_08, uint8 src_09, uint8 src_10, uint8 src_11, uint8 src_12, uint8 src_13, uint8 src_14, uint8 src_15; uint8 dst) =
{ true && true }
spl idx_7 dontcare idx 7;
cast idx_7@bit idx_7;
spl dontcare idx_0t4 idx 4;
mov dst 0@uint8;
subb b dontcare idx_0t4 0@uint4;
cmov dst b dst src_00;
subb b dontcare idx_0t4 1@uint4;
cmov dst b dst src_01;
subb b dontcare idx_0t4 2@uint4;
cmov dst b dst src_02;
subb b dontcare idx_0t4 3@uint4;
cmov dst b dst src_03;
subb b dontcare idx_0t4 4@uint4;
cmov dst b dst src_04;
subb b dontcare idx_0t4 5@uint4;
cmov dst b dst src_05;
subb b dontcare idx_0t4 6@uint4;
cmov dst b dst src_06;
subb b dontcare idx_0t4 7@uint4;
cmov dst b dst src_07;
subb b dontcare idx_0t4 8@uint4;
cmov dst b dst src_08;
subb b dontcare idx_0t4 9@uint4;
cmov dst b dst src_09;
subb b dontcare idx_0t4 10@uint4;
cmov dst b dst src_10;
subb b dontcare idx_0t4 11@uint4;
cmov dst b dst src_11;
subb b dontcare idx_0t4 12@uint4;
cmov dst b dst src_12;
subb b dontcare idx_0t4 13@uint4;
cmov dst b dst src_13;
subb b dontcare idx_0t4 14@uint4;
cmov dst b dst src_14;
subb b dontcare idx_0t4 15@uint4;
cmov dst b dst src_15;
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
(* split into bytes *)
call stb64x2(idx_0, idx_1, idx_00, idx_01, idx_02, idx_03, idx_04, idx_05, idx_06, idx_07, idx_08, idx_09, idx_10, idx_11, idx_12, idx_13, idx_14, idx_15);
call stb64x2(src_0, src_1, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15);
call sel128(idx_00, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_00);
call sel128(idx_01, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_01);
call sel128(idx_02, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_02);
call sel128(idx_03, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_03);
call sel128(idx_04, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_04);
call sel128(idx_05, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_05);
call sel128(idx_06, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_06);
call sel128(idx_07, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_07);
call sel128(idx_08, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_08);
call sel128(idx_09, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_09);
call sel128(idx_10, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_10);
call sel128(idx_11, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_11);
call sel128(idx_12, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_12);
call sel128(idx_13, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_13);
call sel128(idx_14, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_14);
call sel128(idx_15, src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07, src_08, src_09, src_10, src_11, src_12, src_13, src_14, src_15, dst_15);
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
           uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24) =
*)

(* ===== Initialization ===== *)
(*
mov L0x55555559a440 $rho8_0@uint64;
mov L0x55555559a448 $rho8_1@uint64;
mov L0x55555559a450 $rho56_0@uint64;
mov L0x55555559a458 $rho56_1@uint64;

mov L0x7fffffffdbc0 A00;
mov L0x7fffffffdbc8 B00;
mov L0x7fffffffdbd0 A01;
mov L0x7fffffffdbd8 B01;
mov L0x7fffffffdbe0 A02;
mov L0x7fffffffdbe8 B02;
mov L0x7fffffffdbf0 A03;
mov L0x7fffffffdbf8 B03;
mov L0x7fffffffdc00 A04;
mov L0x7fffffffdc08 B04;
mov L0x7fffffffdc10 A05;
mov L0x7fffffffdc18 B05;
mov L0x7fffffffdc20 A06;
mov L0x7fffffffdc28 B06;
mov L0x7fffffffdc30 A07;
mov L0x7fffffffdc38 B07;
mov L0x7fffffffdc40 A08;
mov L0x7fffffffdc48 B08;
mov L0x7fffffffdc50 A09;
mov L0x7fffffffdc58 B09;
mov L0x7fffffffdc60 A10;
mov L0x7fffffffdc68 B10;
mov L0x7fffffffdc70 A11;
mov L0x7fffffffdc78 B11;
mov L0x7fffffffdc80 A12;
mov L0x7fffffffdc88 B12;
mov L0x7fffffffdc90 A13;
mov L0x7fffffffdc98 B13;
mov L0x7fffffffdca0 A14;
mov L0x7fffffffdca8 B14;
mov L0x7fffffffdcb0 A15;
mov L0x7fffffffdcb8 B15;
mov L0x7fffffffdcc0 A16;
mov L0x7fffffffdcc8 B16;
mov L0x7fffffffdcd0 A17;
mov L0x7fffffffdcd8 B17;
mov L0x7fffffffdce0 A18;
mov L0x7fffffffdce8 B18;
mov L0x7fffffffdcf0 A19;
mov L0x7fffffffdcf8 B19;
mov L0x7fffffffdd00 A20;
mov L0x7fffffffdd08 B20;
mov L0x7fffffffdd10 A21;
mov L0x7fffffffdd18 B21;
mov L0x7fffffffdd20 A22;
mov L0x7fffffffdd28 B22;
mov L0x7fffffffdd30 A23;
mov L0x7fffffffdd38 B23;
mov L0x7fffffffdd40 A24;
mov L0x7fffffffdd48 B24;

mov L0x55555559a390 $KeccakF1600RoundConstants_02@uint64;
mov L0x55555559a398 $KeccakF1600RoundConstants_03@uint64;
mov L0x55555559a3a0 $KeccakF1600RoundConstants_04@uint64;
mov L0x55555559a3a8 $KeccakF1600RoundConstants_05@uint64;
mov L0x55555559a3b0 $KeccakF1600RoundConstants_06@uint64;
mov L0x55555559a3b8 $KeccakF1600RoundConstants_07@uint64;
mov L0x55555559a3c0 $KeccakF1600RoundConstants_08@uint64;
mov L0x55555559a3c8 $KeccakF1600RoundConstants_09@uint64;
mov L0x55555559a3d0 $KeccakF1600RoundConstants_10@uint64;
mov L0x55555559a3d8 $KeccakF1600RoundConstants_11@uint64;
mov L0x55555559a3e0 $KeccakF1600RoundConstants_12@uint64;
mov L0x55555559a3e8 $KeccakF1600RoundConstants_13@uint64;
mov L0x55555559a3f0 $KeccakF1600RoundConstants_14@uint64;
mov L0x55555559a3f8 $KeccakF1600RoundConstants_15@uint64;
mov L0x55555559a400 $KeccakF1600RoundConstants_16@uint64;
mov L0x55555559a408 $KeccakF1600RoundConstants_17@uint64;
mov L0x55555559a410 $KeccakF1600RoundConstants_18@uint64;
mov L0x55555559a418 $KeccakF1600RoundConstants_19@uint64;
mov L0x55555559a420 $KeccakF1600RoundConstants_20@uint64;
mov L0x55555559a428 $KeccakF1600RoundConstants_21@uint64;
mov L0x55555559a430 $KeccakF1600RoundConstants_22@uint64;
mov L0x55555559a438 $KeccakF1600RoundConstants_23@uint64;

nondet rax@uint64;
nondet rsp@uint64;
*)

(* ===== Outputs ===== *)
(*
mov a00 L0x7fffffffdbc0;
mov b00 L0x7fffffffdbc8;
mov a01 L0x7fffffffdbd0;
mov b01 L0x7fffffffdbd8;
mov a02 L0x7fffffffdbe0;
mov b02 L0x7fffffffdbe8;
mov a03 L0x7fffffffdbf0;
mov b03 L0x7fffffffdbf8;
mov a04 L0x7fffffffdc00;
mov b04 L0x7fffffffdc08;
mov a05 L0x7fffffffdc10;
mov b05 L0x7fffffffdc18;
mov a06 L0x7fffffffdc20;
mov b06 L0x7fffffffdc28;
mov a07 L0x7fffffffdc30;
mov b07 L0x7fffffffdc38;
mov a08 L0x7fffffffdc40;
mov b08 L0x7fffffffdc48;
mov a09 L0x7fffffffdc50;
mov b09 L0x7fffffffdc58;
mov a10 L0x7fffffffdc60;
mov b10 L0x7fffffffdc68;
mov a11 L0x7fffffffdc70;
mov b11 L0x7fffffffdc78;
mov a12 L0x7fffffffdc80;
mov b12 L0x7fffffffdc88;
mov a13 L0x7fffffffdc90;
mov b13 L0x7fffffffdc98;
mov a14 L0x7fffffffdca0;
mov b14 L0x7fffffffdca8;
mov a15 L0x7fffffffdcb0;
mov b15 L0x7fffffffdcb8;
mov a16 L0x7fffffffdcc0;
mov b16 L0x7fffffffdcc8;
mov a17 L0x7fffffffdcd0;
mov b17 L0x7fffffffdcd8;
mov a18 L0x7fffffffdce0;
mov b18 L0x7fffffffdce8;
mov a19 L0x7fffffffdcf0;
mov b19 L0x7fffffffdcf8;
mov a20 L0x7fffffffdd00;
mov b20 L0x7fffffffdd08;
mov a21 L0x7fffffffdd10;
mov b21 L0x7fffffffdd18;
mov a22 L0x7fffffffdd20;
mov b22 L0x7fffffffdd28;
mov a23 L0x7fffffffdd30;
mov b23 L0x7fffffffdd38;
mov a24 L0x7fffffffdd40;
mov b24 L0x7fffffffdd48;
*)
