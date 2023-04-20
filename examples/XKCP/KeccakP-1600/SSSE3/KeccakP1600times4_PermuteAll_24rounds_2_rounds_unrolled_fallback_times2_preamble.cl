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
mov L0x55555559a440 $rho8_0@uint64;
mov L0x55555559a448 $rho8_1@uint64;
mov L0x55555559a450 $rho56_0@uint64;
mov L0x55555559a458 $rho56_1@uint64;

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

mov L0x7fffffffda30 A00;
mov L0x7fffffffda38 B00;
mov L0x7fffffffda40 A01;
mov L0x7fffffffda48 B01;
mov L0x7fffffffda50 A02;
mov L0x7fffffffda58 B02;
mov L0x7fffffffda60 A03;
mov L0x7fffffffda68 B03;
mov L0x7fffffffda70 A04;
mov L0x7fffffffda78 B04;
mov L0x7fffffffda80 A05;
mov L0x7fffffffda88 B05;
mov L0x7fffffffda90 A06;
mov L0x7fffffffda98 B06;
mov L0x7fffffffdaa0 A07;
mov L0x7fffffffdaa8 B07;
mov L0x7fffffffdab0 A08;
mov L0x7fffffffdab8 B08;
mov L0x7fffffffdac0 A09;
mov L0x7fffffffdac8 B09;
mov L0x7fffffffdad0 A10;
mov L0x7fffffffdad8 B10;
mov L0x7fffffffdae0 A11;
mov L0x7fffffffdae8 B11;
mov L0x7fffffffdaf0 A12;
mov L0x7fffffffdaf8 B12;
mov L0x7fffffffdb00 A13;
mov L0x7fffffffdb08 B13;
mov L0x7fffffffdb10 A14;
mov L0x7fffffffdb18 B14;
mov L0x7fffffffdb20 A15;
mov L0x7fffffffdb28 B15;
mov L0x7fffffffdb30 A16;
mov L0x7fffffffdb38 B16;
mov L0x7fffffffdb40 A17;
mov L0x7fffffffdb48 B17;
mov L0x7fffffffdb50 A18;
mov L0x7fffffffdb58 B18;
mov L0x7fffffffdb60 A19;
mov L0x7fffffffdb68 B19;
mov L0x7fffffffdb70 A20;
mov L0x7fffffffdb78 B20;
mov L0x7fffffffdb80 A21;
mov L0x7fffffffdb88 B21;
mov L0x7fffffffdb90 A22;
mov L0x7fffffffdb98 B22;
mov L0x7fffffffdba0 A23;
mov L0x7fffffffdba8 B23;
mov L0x7fffffffdbb0 A24;
mov L0x7fffffffdbb8 B24;

mov L0x7fffffffdbc0 C00;
mov L0x7fffffffdbc8 D00;
mov L0x7fffffffdbd0 C01;
mov L0x7fffffffdbd8 D01;
mov L0x7fffffffdbe0 C02;
mov L0x7fffffffdbe8 D02;
mov L0x7fffffffdbf0 C03;
mov L0x7fffffffdbf8 D03;
mov L0x7fffffffdc00 C04;
mov L0x7fffffffdc08 D04;
mov L0x7fffffffdc10 C05;
mov L0x7fffffffdc18 D05;
mov L0x7fffffffdc20 C06;
mov L0x7fffffffdc28 D06;
mov L0x7fffffffdc30 C07;
mov L0x7fffffffdc38 D07;
mov L0x7fffffffdc40 C08;
mov L0x7fffffffdc48 D08;
mov L0x7fffffffdc50 C09;
mov L0x7fffffffdc58 D09;
mov L0x7fffffffdc60 C10;
mov L0x7fffffffdc68 D10;
mov L0x7fffffffdc70 C11;
mov L0x7fffffffdc78 D11;
mov L0x7fffffffdc80 C12;
mov L0x7fffffffdc88 D12;
mov L0x7fffffffdc90 C13;
mov L0x7fffffffdc98 D13;
mov L0x7fffffffdca0 C14;
mov L0x7fffffffdca8 D14;
mov L0x7fffffffdcb0 C15;
mov L0x7fffffffdcb8 D15;
mov L0x7fffffffdcc0 C16;
mov L0x7fffffffdcc8 D16;
mov L0x7fffffffdcd0 C17;
mov L0x7fffffffdcd8 D17;
mov L0x7fffffffdce0 C18;
mov L0x7fffffffdce8 D18;
mov L0x7fffffffdcf0 C19;
mov L0x7fffffffdcf8 D19;
mov L0x7fffffffdd00 C20;
mov L0x7fffffffdd08 D20;
mov L0x7fffffffdd10 C21;
mov L0x7fffffffdd18 D21;
mov L0x7fffffffdd20 C22;
mov L0x7fffffffdd28 D22;
mov L0x7fffffffdd30 C23;
mov L0x7fffffffdd38 D23;
mov L0x7fffffffdd40 C24;
mov L0x7fffffffdd48 D24;

nondet rax@uint64;
nondet rdi@uint64;
nondet rsp@uint64;
*)


(* ===== Outputs ===== *)
(*
mov a00 L0x7fffffffda30;
mov b00 L0x7fffffffda38;
mov a01 L0x7fffffffda40;
mov b01 L0x7fffffffda48;
mov a02 L0x7fffffffda50;
mov b02 L0x7fffffffda58;
mov a03 L0x7fffffffda60;
mov b03 L0x7fffffffda68;
mov a04 L0x7fffffffda70;
mov b04 L0x7fffffffda78;
mov a05 L0x7fffffffda80;
mov b05 L0x7fffffffda88;
mov a06 L0x7fffffffda90;
mov b06 L0x7fffffffda98;
mov a07 L0x7fffffffdaa0;
mov b07 L0x7fffffffdaa8;
mov a08 L0x7fffffffdab0;
mov b08 L0x7fffffffdab8;
mov a09 L0x7fffffffdac0;
mov b09 L0x7fffffffdac8;
mov a10 L0x7fffffffdad0;
mov b10 L0x7fffffffdad8;
mov a11 L0x7fffffffdae0;
mov b11 L0x7fffffffdae8;
mov a12 L0x7fffffffdaf0;
mov b12 L0x7fffffffdaf8;
mov a13 L0x7fffffffdb00;
mov b13 L0x7fffffffdb08;
mov a14 L0x7fffffffdb10;
mov b14 L0x7fffffffdb18;
mov a15 L0x7fffffffdb20;
mov b15 L0x7fffffffdb28;
mov a16 L0x7fffffffdb30;
mov b16 L0x7fffffffdb38;
mov a17 L0x7fffffffdb40;
mov b17 L0x7fffffffdb48;
mov a18 L0x7fffffffdb50;
mov b18 L0x7fffffffdb58;
mov a19 L0x7fffffffdb60;
mov b19 L0x7fffffffdb68;
mov a20 L0x7fffffffdb70;
mov b20 L0x7fffffffdb78;
mov a21 L0x7fffffffdb80;
mov b21 L0x7fffffffdb88;
mov a22 L0x7fffffffdb90;
mov b22 L0x7fffffffdb98;
mov a23 L0x7fffffffdba0;
mov b23 L0x7fffffffdba8;
mov a24 L0x7fffffffdbb0;
mov b24 L0x7fffffffdbb8;

mov c00 L0x7fffffffdbc0;
mov d00 L0x7fffffffdbc8;
mov c01 L0x7fffffffdbd0;
mov d01 L0x7fffffffdbd8;
mov c02 L0x7fffffffdbe0;
mov d02 L0x7fffffffdbe8;
mov c03 L0x7fffffffdbf0;
mov d03 L0x7fffffffdbf8;
mov c04 L0x7fffffffdc00;
mov d04 L0x7fffffffdc08;
mov c05 L0x7fffffffdc10;
mov d05 L0x7fffffffdc18;
mov c06 L0x7fffffffdc20;
mov d06 L0x7fffffffdc28;
mov c07 L0x7fffffffdc30;
mov d07 L0x7fffffffdc38;
mov c08 L0x7fffffffdc40;
mov d08 L0x7fffffffdc48;
mov c09 L0x7fffffffdc50;
mov d09 L0x7fffffffdc58;
mov c10 L0x7fffffffdc60;
mov d10 L0x7fffffffdc68;
mov c11 L0x7fffffffdc70;
mov d11 L0x7fffffffdc78;
mov c12 L0x7fffffffdc80;
mov d12 L0x7fffffffdc88;
mov c13 L0x7fffffffdc90;
mov d13 L0x7fffffffdc98;
mov c14 L0x7fffffffdca0;
mov d14 L0x7fffffffdca8;
mov c15 L0x7fffffffdcb0;
mov d15 L0x7fffffffdcb8;
mov c16 L0x7fffffffdcc0;
mov d16 L0x7fffffffdcc8;
mov c17 L0x7fffffffdcd0;
mov d17 L0x7fffffffdcd8;
mov c18 L0x7fffffffdce0;
mov d18 L0x7fffffffdce8;
mov c19 L0x7fffffffdcf0;
mov d19 L0x7fffffffdcf8;
mov c20 L0x7fffffffdd00;
mov d20 L0x7fffffffdd08;
mov c21 L0x7fffffffdd10;
mov d21 L0x7fffffffdd18;
mov c22 L0x7fffffffdd20;
mov d22 L0x7fffffffdd28;
mov c23 L0x7fffffffdd30;
mov d23 L0x7fffffffdd38;
mov c24 L0x7fffffffdd40;
mov d24 L0x7fffffffdd48;
*)
