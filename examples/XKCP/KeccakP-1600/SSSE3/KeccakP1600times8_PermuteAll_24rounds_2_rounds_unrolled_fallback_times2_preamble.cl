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
           uint64 D20, uint64 D21, uint64 D22, uint64 D23, uint64 D24,
           uint64 E00, uint64 E01, uint64 E02, uint64 E03, uint64 E04,
           uint64 E05, uint64 E06, uint64 E07, uint64 E08, uint64 E09,
           uint64 E10, uint64 E11, uint64 E12, uint64 E13, uint64 E14,
           uint64 E15, uint64 E16, uint64 E17, uint64 E18, uint64 E19,
           uint64 E20, uint64 E21, uint64 E22, uint64 E23, uint64 E24,
           uint64 F00, uint64 F01, uint64 F02, uint64 F03, uint64 F04,
           uint64 F05, uint64 F06, uint64 F07, uint64 F08, uint64 F09,
           uint64 F10, uint64 F11, uint64 F12, uint64 F13, uint64 F14,
           uint64 F15, uint64 F16, uint64 F17, uint64 F18, uint64 F19,
           uint64 F20, uint64 F21, uint64 F22, uint64 F23, uint64 F24,
           uint64 G00, uint64 G01, uint64 G02, uint64 G03, uint64 G04,
           uint64 G05, uint64 G06, uint64 G07, uint64 G08, uint64 G09,
           uint64 G10, uint64 G11, uint64 G12, uint64 G13, uint64 G14,
           uint64 G15, uint64 G16, uint64 G17, uint64 G18, uint64 G19,
           uint64 G20, uint64 G21, uint64 G22, uint64 G23, uint64 G24,
           uint64 H00, uint64 H01, uint64 H02, uint64 H03, uint64 H04,
           uint64 H05, uint64 H06, uint64 H07, uint64 H08, uint64 H09,
           uint64 H10, uint64 H11, uint64 H12, uint64 H13, uint64 H14,
           uint64 H15, uint64 H16, uint64 H17, uint64 H18, uint64 H19,
           uint64 H20, uint64 H21, uint64 H22, uint64 H23, uint64 H24) =
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

mov L0x7fffffffd710 A00;
mov L0x7fffffffd718 B00;
mov L0x7fffffffd720 A01;
mov L0x7fffffffd728 B01;
mov L0x7fffffffd730 A02;
mov L0x7fffffffd738 B02;
mov L0x7fffffffd740 A03;
mov L0x7fffffffd748 B03;
mov L0x7fffffffd750 A04;
mov L0x7fffffffd758 B04;
mov L0x7fffffffd760 A05;
mov L0x7fffffffd768 B05;
mov L0x7fffffffd770 A06;
mov L0x7fffffffd778 B06;
mov L0x7fffffffd780 A07;
mov L0x7fffffffd788 B07;
mov L0x7fffffffd790 A08;
mov L0x7fffffffd798 B08;
mov L0x7fffffffd7a0 A09;
mov L0x7fffffffd7a8 B09;
mov L0x7fffffffd7b0 A10;
mov L0x7fffffffd7b8 B10;
mov L0x7fffffffd7c0 A11;
mov L0x7fffffffd7c8 B11;
mov L0x7fffffffd7d0 A12;
mov L0x7fffffffd7d8 B12;
mov L0x7fffffffd7e0 A13;
mov L0x7fffffffd7e8 B13;
mov L0x7fffffffd7f0 A14;
mov L0x7fffffffd7f8 B14;
mov L0x7fffffffd800 A15;
mov L0x7fffffffd808 B15;
mov L0x7fffffffd810 A16;
mov L0x7fffffffd818 B16;
mov L0x7fffffffd820 A17;
mov L0x7fffffffd828 B17;
mov L0x7fffffffd830 A18;
mov L0x7fffffffd838 B18;
mov L0x7fffffffd840 A19;
mov L0x7fffffffd848 B19;
mov L0x7fffffffd850 A20;
mov L0x7fffffffd858 B20;
mov L0x7fffffffd860 A21;
mov L0x7fffffffd868 B21;
mov L0x7fffffffd870 A22;
mov L0x7fffffffd878 B22;
mov L0x7fffffffd880 A23;
mov L0x7fffffffd888 B23;
mov L0x7fffffffd890 A24;
mov L0x7fffffffd898 B24;

mov L0x7fffffffd8a0 C00;
mov L0x7fffffffd8a8 D00;
mov L0x7fffffffd8b0 C01;
mov L0x7fffffffd8b8 D01;
mov L0x7fffffffd8c0 C02;
mov L0x7fffffffd8c8 D02;
mov L0x7fffffffd8d0 C03;
mov L0x7fffffffd8d8 D03;
mov L0x7fffffffd8e0 C04;
mov L0x7fffffffd8e8 D04;
mov L0x7fffffffd8f0 C05;
mov L0x7fffffffd8f8 D05;
mov L0x7fffffffd900 C06;
mov L0x7fffffffd908 D06;
mov L0x7fffffffd910 C07;
mov L0x7fffffffd918 D07;
mov L0x7fffffffd920 C08;
mov L0x7fffffffd928 D08;
mov L0x7fffffffd930 C09;
mov L0x7fffffffd938 D09;
mov L0x7fffffffd940 C10;
mov L0x7fffffffd948 D10;
mov L0x7fffffffd950 C11;
mov L0x7fffffffd958 D11;
mov L0x7fffffffd960 C12;
mov L0x7fffffffd968 D12;
mov L0x7fffffffd970 C13;
mov L0x7fffffffd978 D13;
mov L0x7fffffffd980 C14;
mov L0x7fffffffd988 D14;
mov L0x7fffffffd990 C15;
mov L0x7fffffffd998 D15;
mov L0x7fffffffd9a0 C16;
mov L0x7fffffffd9a8 D16;
mov L0x7fffffffd9b0 C17;
mov L0x7fffffffd9b8 D17;
mov L0x7fffffffd9c0 C18;
mov L0x7fffffffd9c8 D18;
mov L0x7fffffffd9d0 C19;
mov L0x7fffffffd9d8 D19;
mov L0x7fffffffd9e0 C20;
mov L0x7fffffffd9e8 D20;
mov L0x7fffffffd9f0 C21;
mov L0x7fffffffd9f8 D21;
mov L0x7fffffffda00 C22;
mov L0x7fffffffda08 D22;
mov L0x7fffffffda10 C23;
mov L0x7fffffffda18 D23;
mov L0x7fffffffda20 C24;
mov L0x7fffffffda28 D24;

mov L0x7fffffffda30 E00;
mov L0x7fffffffda38 F00;
mov L0x7fffffffda40 E01;
mov L0x7fffffffda48 F01;
mov L0x7fffffffda50 E02;
mov L0x7fffffffda58 F02;
mov L0x7fffffffda60 E03;
mov L0x7fffffffda68 F03;
mov L0x7fffffffda70 E04;
mov L0x7fffffffda78 F04;
mov L0x7fffffffda80 E05;
mov L0x7fffffffda88 F05;
mov L0x7fffffffda90 E06;
mov L0x7fffffffda98 F06;
mov L0x7fffffffdaa0 E07;
mov L0x7fffffffdaa8 F07;
mov L0x7fffffffdab0 E08;
mov L0x7fffffffdab8 F08;
mov L0x7fffffffdac0 E09;
mov L0x7fffffffdac8 F09;
mov L0x7fffffffdad0 E10;
mov L0x7fffffffdad8 F10;
mov L0x7fffffffdae0 E11;
mov L0x7fffffffdae8 F11;
mov L0x7fffffffdaf0 E12;
mov L0x7fffffffdaf8 F12;
mov L0x7fffffffdb00 E13;
mov L0x7fffffffdb08 F13;
mov L0x7fffffffdb10 E14;
mov L0x7fffffffdb18 F14;
mov L0x7fffffffdb20 E15;
mov L0x7fffffffdb28 F15;
mov L0x7fffffffdb30 E16;
mov L0x7fffffffdb38 F16;
mov L0x7fffffffdb40 E17;
mov L0x7fffffffdb48 F17;
mov L0x7fffffffdb50 E18;
mov L0x7fffffffdb58 F18;
mov L0x7fffffffdb60 E19;
mov L0x7fffffffdb68 F19;
mov L0x7fffffffdb70 E20;
mov L0x7fffffffdb78 F20;
mov L0x7fffffffdb80 E21;
mov L0x7fffffffdb88 F21;
mov L0x7fffffffdb90 E22;
mov L0x7fffffffdb98 F22;
mov L0x7fffffffdba0 E23;
mov L0x7fffffffdba8 F23;
mov L0x7fffffffdbb0 E24;
mov L0x7fffffffdbb8 F24;

mov L0x7fffffffdbc0 G00;
mov L0x7fffffffdbc8 H00;
mov L0x7fffffffdbd0 G01;
mov L0x7fffffffdbd8 H01;
mov L0x7fffffffdbe0 G02;
mov L0x7fffffffdbe8 H02;
mov L0x7fffffffdbf0 G03;
mov L0x7fffffffdbf8 H03;
mov L0x7fffffffdc00 G04;
mov L0x7fffffffdc08 H04;
mov L0x7fffffffdc10 G05;
mov L0x7fffffffdc18 H05;
mov L0x7fffffffdc20 G06;
mov L0x7fffffffdc28 H06;
mov L0x7fffffffdc30 G07;
mov L0x7fffffffdc38 H07;
mov L0x7fffffffdc40 G08;
mov L0x7fffffffdc48 H08;
mov L0x7fffffffdc50 G09;
mov L0x7fffffffdc58 H09;
mov L0x7fffffffdc60 G10;
mov L0x7fffffffdc68 H10;
mov L0x7fffffffdc70 G11;
mov L0x7fffffffdc78 H11;
mov L0x7fffffffdc80 G12;
mov L0x7fffffffdc88 H12;
mov L0x7fffffffdc90 G13;
mov L0x7fffffffdc98 H13;
mov L0x7fffffffdca0 G14;
mov L0x7fffffffdca8 H14;
mov L0x7fffffffdcb0 G15;
mov L0x7fffffffdcb8 H15;
mov L0x7fffffffdcc0 G16;
mov L0x7fffffffdcc8 H16;
mov L0x7fffffffdcd0 G17;
mov L0x7fffffffdcd8 H17;
mov L0x7fffffffdce0 G18;
mov L0x7fffffffdce8 H18;
mov L0x7fffffffdcf0 G19;
mov L0x7fffffffdcf8 H19;
mov L0x7fffffffdd00 G20;
mov L0x7fffffffdd08 H20;
mov L0x7fffffffdd10 G21;
mov L0x7fffffffdd18 H21;
mov L0x7fffffffdd20 G22;
mov L0x7fffffffdd28 H22;
mov L0x7fffffffdd30 G23;
mov L0x7fffffffdd38 H23;
mov L0x7fffffffdd40 G24;
mov L0x7fffffffdd48 H24;

nondet rax@uint64;
nondet rdi@uint64;
nondet rsp@uint64;
*)


(* ===== Outputs ===== *)
(*
mov a00 L0x7fffffffd710;
mov b00 L0x7fffffffd718;
mov a01 L0x7fffffffd720;
mov b01 L0x7fffffffd728;
mov a02 L0x7fffffffd730;
mov b02 L0x7fffffffd738;
mov a03 L0x7fffffffd740;
mov b03 L0x7fffffffd748;
mov a04 L0x7fffffffd750;
mov b04 L0x7fffffffd758;
mov a05 L0x7fffffffd760;
mov b05 L0x7fffffffd768;
mov a06 L0x7fffffffd770;
mov b06 L0x7fffffffd778;
mov a07 L0x7fffffffd780;
mov b07 L0x7fffffffd788;
mov a08 L0x7fffffffd790;
mov b08 L0x7fffffffd798;
mov a09 L0x7fffffffd7a0;
mov b09 L0x7fffffffd7a8;
mov a10 L0x7fffffffd7b0;
mov b10 L0x7fffffffd7b8;
mov a11 L0x7fffffffd7c0;
mov b11 L0x7fffffffd7c8;
mov a12 L0x7fffffffd7d0;
mov b12 L0x7fffffffd7d8;
mov a13 L0x7fffffffd7e0;
mov b13 L0x7fffffffd7e8;
mov a14 L0x7fffffffd7f0;
mov b14 L0x7fffffffd7f8;
mov a15 L0x7fffffffd800;
mov b15 L0x7fffffffd808;
mov a16 L0x7fffffffd810;
mov b16 L0x7fffffffd818;
mov a17 L0x7fffffffd820;
mov b17 L0x7fffffffd828;
mov a18 L0x7fffffffd830;
mov b18 L0x7fffffffd838;
mov a19 L0x7fffffffd840;
mov b19 L0x7fffffffd848;
mov a20 L0x7fffffffd850;
mov b20 L0x7fffffffd858;
mov a21 L0x7fffffffd860;
mov b21 L0x7fffffffd868;
mov a22 L0x7fffffffd870;
mov b22 L0x7fffffffd878;
mov a23 L0x7fffffffd880;
mov b23 L0x7fffffffd888;
mov a24 L0x7fffffffd890;
mov b24 L0x7fffffffd898;

mov c00 L0x7fffffffd8a0;
mov d00 L0x7fffffffd8a8;
mov c01 L0x7fffffffd8b0;
mov d01 L0x7fffffffd8b8;
mov c02 L0x7fffffffd8c0;
mov d02 L0x7fffffffd8c8;
mov c03 L0x7fffffffd8d0;
mov d03 L0x7fffffffd8d8;
mov c04 L0x7fffffffd8e0;
mov d04 L0x7fffffffd8e8;
mov c05 L0x7fffffffd8f0;
mov d05 L0x7fffffffd8f8;
mov c06 L0x7fffffffd900;
mov d06 L0x7fffffffd908;
mov c07 L0x7fffffffd910;
mov d07 L0x7fffffffd918;
mov c08 L0x7fffffffd920;
mov d08 L0x7fffffffd928;
mov c09 L0x7fffffffd930;
mov d09 L0x7fffffffd938;
mov c10 L0x7fffffffd940;
mov d10 L0x7fffffffd948;
mov c11 L0x7fffffffd950;
mov d11 L0x7fffffffd958;
mov c12 L0x7fffffffd960;
mov d12 L0x7fffffffd968;
mov c13 L0x7fffffffd970;
mov d13 L0x7fffffffd978;
mov c14 L0x7fffffffd980;
mov d14 L0x7fffffffd988;
mov c15 L0x7fffffffd990;
mov d15 L0x7fffffffd998;
mov c16 L0x7fffffffd9a0;
mov d16 L0x7fffffffd9a8;
mov c17 L0x7fffffffd9b0;
mov d17 L0x7fffffffd9b8;
mov c18 L0x7fffffffd9c0;
mov d18 L0x7fffffffd9c8;
mov c19 L0x7fffffffd9d0;
mov d19 L0x7fffffffd9d8;
mov c20 L0x7fffffffd9e0;
mov d20 L0x7fffffffd9e8;
mov c21 L0x7fffffffd9f0;
mov d21 L0x7fffffffd9f8;
mov c22 L0x7fffffffda00;
mov d22 L0x7fffffffda08;
mov c23 L0x7fffffffda10;
mov d23 L0x7fffffffda18;
mov c24 L0x7fffffffda20;
mov d24 L0x7fffffffda28;

mov e00 L0x7fffffffda30;
mov f00 L0x7fffffffda38;
mov e01 L0x7fffffffda40;
mov f01 L0x7fffffffda48;
mov e02 L0x7fffffffda50;
mov f02 L0x7fffffffda58;
mov e03 L0x7fffffffda60;
mov f03 L0x7fffffffda68;
mov e04 L0x7fffffffda70;
mov f04 L0x7fffffffda78;
mov e05 L0x7fffffffda80;
mov f05 L0x7fffffffda88;
mov e06 L0x7fffffffda90;
mov f06 L0x7fffffffda98;
mov e07 L0x7fffffffdaa0;
mov f07 L0x7fffffffdaa8;
mov e08 L0x7fffffffdab0;
mov f08 L0x7fffffffdab8;
mov e09 L0x7fffffffdac0;
mov f09 L0x7fffffffdac8;
mov e10 L0x7fffffffdad0;
mov f10 L0x7fffffffdad8;
mov e11 L0x7fffffffdae0;
mov f11 L0x7fffffffdae8;
mov e12 L0x7fffffffdaf0;
mov f12 L0x7fffffffdaf8;
mov e13 L0x7fffffffdb00;
mov f13 L0x7fffffffdb08;
mov e14 L0x7fffffffdb10;
mov f14 L0x7fffffffdb18;
mov e15 L0x7fffffffdb20;
mov f15 L0x7fffffffdb28;
mov e16 L0x7fffffffdb30;
mov f16 L0x7fffffffdb38;
mov e17 L0x7fffffffdb40;
mov f17 L0x7fffffffdb48;
mov e18 L0x7fffffffdb50;
mov f18 L0x7fffffffdb58;
mov e19 L0x7fffffffdb60;
mov f19 L0x7fffffffdb68;
mov e20 L0x7fffffffdb70;
mov f20 L0x7fffffffdb78;
mov e21 L0x7fffffffdb80;
mov f21 L0x7fffffffdb88;
mov e22 L0x7fffffffdb90;
mov f22 L0x7fffffffdb98;
mov e23 L0x7fffffffdba0;
mov f23 L0x7fffffffdba8;
mov e24 L0x7fffffffdbb0;
mov f24 L0x7fffffffdbb8;

mov g00 L0x7fffffffdbc0;
mov h00 L0x7fffffffdbc8;
mov g01 L0x7fffffffdbd0;
mov h01 L0x7fffffffdbd8;
mov g02 L0x7fffffffdbe0;
mov h02 L0x7fffffffdbe8;
mov g03 L0x7fffffffdbf0;
mov h03 L0x7fffffffdbf8;
mov g04 L0x7fffffffdc00;
mov h04 L0x7fffffffdc08;
mov g05 L0x7fffffffdc10;
mov h05 L0x7fffffffdc18;
mov g06 L0x7fffffffdc20;
mov h06 L0x7fffffffdc28;
mov g07 L0x7fffffffdc30;
mov h07 L0x7fffffffdc38;
mov g08 L0x7fffffffdc40;
mov h08 L0x7fffffffdc48;
mov g09 L0x7fffffffdc50;
mov h09 L0x7fffffffdc58;
mov g10 L0x7fffffffdc60;
mov h10 L0x7fffffffdc68;
mov g11 L0x7fffffffdc70;
mov h11 L0x7fffffffdc78;
mov g12 L0x7fffffffdc80;
mov h12 L0x7fffffffdc88;
mov g13 L0x7fffffffdc90;
mov h13 L0x7fffffffdc98;
mov g14 L0x7fffffffdca0;
mov h14 L0x7fffffffdca8;
mov g15 L0x7fffffffdcb0;
mov h15 L0x7fffffffdcb8;
mov g16 L0x7fffffffdcc0;
mov h16 L0x7fffffffdcc8;
mov g17 L0x7fffffffdcd0;
mov h17 L0x7fffffffdcd8;
mov g18 L0x7fffffffdce0;
mov h18 L0x7fffffffdce8;
mov g19 L0x7fffffffdcf0;
mov h19 L0x7fffffffdcf8;
mov g20 L0x7fffffffdd00;
mov h20 L0x7fffffffdd08;
mov g21 L0x7fffffffdd10;
mov h21 L0x7fffffffdd18;
mov g22 L0x7fffffffdd20;
mov h22 L0x7fffffffdd28;
mov g23 L0x7fffffffdd30;
mov h23 L0x7fffffffdd38;
mov g24 L0x7fffffffdd40;
mov h24 L0x7fffffffdd48;
*)
