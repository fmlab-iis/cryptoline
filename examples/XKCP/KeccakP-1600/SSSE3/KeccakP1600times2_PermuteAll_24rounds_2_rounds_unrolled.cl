(*
on popper, equivalence against C reference implementation, outputs a's, 1 thread:
Parsing CryptoLine file:		[OK]		0.041621 seconds
Checking well-formedness:		[OK]		0.017193 seconds
Parsing CryptoLine file:		[OK]		0.012995 seconds
Checking well-formedness:		[OK]		0.006045 seconds
Output group #0:
  Converting programs to AIG:		[OK]		1.145413 seconds
  Checking equivalence:			[OK]		88.691309 seconds
Final result:				[OK]		89.836808 seconds

on popper, equivalence against C reference implementation, outputs b's (with inputs swapped), 1 thread:
Parsing CryptoLine file:		[OK]		0.041779 seconds
Checking well-formedness:		[OK]		0.017311 seconds
Parsing CryptoLine file:		[OK]		0.013135 seconds
Checking well-formedness:		[OK]		0.006237 seconds
Output group #0:
  Converting programs to AIG:		[OK]		1.138234 seconds
  Checking equivalence:			[OK]		105.979737 seconds
Final result:				[OK]		107.118064 seconds
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

(* ===== Initialization ===== *)

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

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* sub    $0x10,%rsp                               #! PC = 0x555555583ea4 *)
subb carry rsp rsp 0x10@uint64;
(* vmovdqa 0xf0(%rdi),%xmm3                        #! EA = L0x7fffffffdcb0; Value = 0x00007fffffffdff8; PC = 0x555555583ea8 *)
mov xmm3_0 L0x7fffffffdcb0;
mov xmm3_1 L0x7fffffffdcb8;
(* vmovdqa64 0x50(%rdi),%xmm29                     #! EA = L0x7fffffffdc10; Value = 0x0000006000000018; PC = 0x555555583eb0 *)
mov xmm29_0 L0x7fffffffdc10;
mov xmm29_1 L0x7fffffffdc18;
(* vmovdqa64 0xa0(%rdi),%xmm21                     #! EA = L0x7fffffffdc60; Value = 0x401d5f6d916872b1; PC = 0x555555583eb7 *)
mov xmm21_0 L0x7fffffffdc60;
mov xmm21_1 L0x7fffffffdc68;
(* vmovdqa64 0x140(%rdi),%xmm16                    #! EA = L0x7fffffffdd00; Value = 0x0000000000000000; PC = 0x555555583ebe *)
mov xmm16_0 L0x7fffffffdd00;
mov xmm16_1 L0x7fffffffdd08;
(* vmovdqa %xmm3,%xmm1                             #! PC = 0x555555583ec5 *)
mov xmm1_0 xmm3_0;
mov xmm1_1 xmm3_1;
(* vmovdqa 0x60(%rdi),%xmm9                        #! EA = L0x7fffffffdc20; Value = 0x00007fffffffdc30; PC = 0x555555583ec9 *)
mov xmm9_0 L0x7fffffffdc20;
mov xmm9_1 L0x7fffffffdc28;
(* vmovdqa64 0xb0(%rdi),%xmm28                     #! EA = L0x7fffffffdc70; Value = 0x401ba8f0f0f0f0f1; PC = 0x555555583ece *)
mov xmm28_0 L0x7fffffffdc70;
mov xmm28_1 L0x7fffffffdc78;
(* vmovdqa64 0x100(%rdi),%xmm19                    #! EA = L0x7fffffffdcc0; Value = 0x0000003000000018; PC = 0x555555583ed5 *)
mov xmm19_0 L0x7fffffffdcc0;
mov xmm19_1 L0x7fffffffdcc8;
(* vmovdqa64 0x150(%rdi),%xmm26                    #! EA = L0x7fffffffdd10; Value = 0x00007ffff7c95740; PC = 0x555555583edc *)
mov xmm26_0 L0x7fffffffdd10;
mov xmm26_1 L0x7fffffffdd18;
(* vpxorq %xmm1,%xmm16,%xmm0                       #! PC = 0x555555583ee3 *)
xor xmm0_0@uint64 xmm16_0 xmm1_0;
xor xmm0_1@uint64 xmm16_1 xmm1_1;
(* vmovdqa64 0x70(%rdi),%xmm22                     #! EA = L0x7fffffffdc30; Value = 0x0000000000029040; PC = 0x555555583ee9 *)
mov xmm22_0 L0x7fffffffdc30;
mov xmm22_1 L0x7fffffffdc38;
(* vmovdqa 0xc0(%rdi),%xmm8                        #! EA = L0x7fffffffdc80; Value = 0x401660d4fdf3b646; PC = 0x555555583ef0 *)
mov xmm8_0 L0x7fffffffdc80;
mov xmm8_1 L0x7fffffffdc88;
(* vmovdqa64 0x110(%rdi),%xmm18                    #! EA = L0x7fffffffdcd0; Value = 0x00007fffffffdce0; PC = 0x555555583ef8 *)
mov xmm18_0 L0x7fffffffdcd0;
mov xmm18_1 L0x7fffffffdcd8;
(* vmovdqa 0x160(%rdi),%xmm14                      #! EA = L0x7fffffffdd20; Value = 0x00007fffffffdff8; PC = 0x555555583eff *)
mov xmm14_0 L0x7fffffffdd20;
mov xmm14_1 L0x7fffffffdd28;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x555555583f07 *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vmovdqa 0x80(%rdi),%xmm6                        #! EA = L0x7fffffffdc40; Value = 0x000055555559c380; PC = 0x555555583f0d *)
mov xmm6_0 L0x7fffffffdc40;
mov xmm6_1 L0x7fffffffdc48;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x555555583f15 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm19,%xmm26,%xmm1                      #! PC = 0x555555583f19 *)
xor xmm1_0@uint64 xmm26_0 xmm19_0;
xor xmm1_1@uint64 xmm26_1 xmm19_1;
(* vmovdqa 0xd0(%rdi),%xmm7                        #! EA = L0x7fffffffdc90; Value = 0x000055555559bad0; PC = 0x555555583f1f *)
mov xmm7_0 L0x7fffffffdc90;
mov xmm7_1 L0x7fffffffdc98;
(* vmovdqa 0x120(%rdi),%xmm12                      #! EA = L0x7fffffffdce0; Value = 0x0000000000000d68; PC = 0x555555583f27 *)
mov xmm12_0 L0x7fffffffdce0;
mov xmm12_1 L0x7fffffffdce8;
(* vmovdqa %xmm3,-0x68(%rsp)                       #! EA = L0x7fffffffdb40; PC = 0x555555583f2f *)
mov L0x7fffffffdb40 xmm3_0;
mov L0x7fffffffdb48 xmm3_1;
(* vpxorq %xmm9,%xmm28,%xmm0                       #! PC = 0x555555583f35 *)
xor xmm0_0@uint64 xmm28_0 xmm9_0;
xor xmm0_1@uint64 xmm28_1 xmm9_1;
(* vmovdqa 0x170(%rdi),%xmm3                       #! EA = L0x7fffffffdd30; Value = 0x00007ffff7eb2780; PC = 0x555555583f3b *)
mov xmm3_0 L0x7fffffffdd30;
mov xmm3_1 L0x7fffffffdd38;
(* vmovdqa64 0xe0(%rdi),%xmm25                     #! EA = L0x7fffffffdca0; Value = 0x00007fffffffdda0; PC = 0x555555583f43 *)
mov xmm25_0 L0x7fffffffdca0;
mov xmm25_1 L0x7fffffffdca8;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x555555583f4a *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxorq %xmm18,%xmm14,%xmm2                      #! PC = 0x555555583f4e *)
xor xmm2_0@uint64 xmm14_0 xmm18_0;
xor xmm2_1@uint64 xmm14_1 xmm18_1;
(* vpxorq %xmm22,%xmm8,%xmm1                       #! PC = 0x555555583f54 *)
xor xmm1_0@uint64 xmm8_0 xmm22_0;
xor xmm1_1@uint64 xmm8_1 xmm22_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x555555583f5a *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpxorq %xmm6,%xmm7,%xmm17                       #! PC = 0x555555583f5e *)
xor xmm17_0@uint64 xmm7_0 xmm6_0;
xor xmm17_1@uint64 xmm7_1 xmm6_1;
(* vpxor  %xmm12,%xmm3,%xmm2                       #! PC = 0x555555583f64 *)
xor xmm2_0@uint64 xmm3_0 xmm12_0;
xor xmm2_1@uint64 xmm3_1 xmm12_1;
(* vmovdqa 0x90(%rdi),%xmm5                        #! EA = L0x7fffffffdc50; Value = 0x0000000000000000; PC = 0x555555583f69 *)
mov xmm5_0 L0x7fffffffdc50;
mov xmm5_1 L0x7fffffffdc58;
(* vmovdqa 0x130(%rdi),%xmm4                       #! EA = L0x7fffffffdcf0; Value = 0x000055555559ba98; PC = 0x555555583f71 *)
mov xmm4_0 L0x7fffffffdcf0;
mov xmm4_1 L0x7fffffffdcf8;
(* vmovdqa 0x180(%rdi),%xmm15                      #! EA = L0x7fffffffdd40; Value = 0x00007ffff7eb2868; PC = 0x555555583f79 *)
mov xmm15_0 L0x7fffffffdd40;
mov xmm15_1 L0x7fffffffdd48;
(* vmovdqa64 0x40(%rdi),%xmm31                     #! EA = L0x7fffffffdc00; Value = 0x00007fffffffdff8; PC = 0x555555583f81 *)
mov xmm31_0 L0x7fffffffdc00;
mov xmm31_1 L0x7fffffffdc08;
(* vpxorq %xmm2,%xmm17,%xmm17                      #! PC = 0x555555583f88 *)
xor xmm17_0@uint64 xmm17_0 xmm2_0;
xor xmm17_1@uint64 xmm17_1 xmm2_1;
(* vmovdqa64 0x30(%rdi),%xmm24                     #! EA = L0x7fffffffdbf0; Value = 0x0000000000000000; PC = 0x555555583f8e *)
mov xmm24_0 L0x7fffffffdbf0;
mov xmm24_1 L0x7fffffffdbf8;
(* vmovdqa64 %xmm25,%xmm2                          #! PC = 0x555555583f95 *)
mov xmm2_0 xmm25_0;
mov xmm2_1 xmm25_1;
(* vmovdqa 0x10(%rdi),%xmm11                       #! EA = L0x7fffffffdbd0; Value = 0x6b153a9a3d6be02b; PC = 0x555555583f9b *)
mov xmm11_0 L0x7fffffffdbd0;
mov xmm11_1 L0x7fffffffdbd8;
(* vmovdqa 0x20(%rdi),%xmm10                       #! EA = L0x7fffffffdbe0; Value = 0x00007fffffffdd10; PC = 0x555555583fa0 *)
mov xmm10_0 L0x7fffffffdbe0;
mov xmm10_1 L0x7fffffffdbe8;
(* vmovdqa64 (%rdi),%xmm27                         #! EA = L0x7fffffffdbc0; Value = 0x363138383339b218; PC = 0x555555583fa5 *)
mov xmm27_0 L0x7fffffffdbc0;
mov xmm27_1 L0x7fffffffdbc8;
(* vmovdqa %xmm6,-0x78(%rsp)                       #! EA = L0x7fffffffdb30; PC = 0x555555583fab *)
mov L0x7fffffffdb30 xmm6_0;
mov L0x7fffffffdb38 xmm6_1;
(* vpxor  %xmm2,%xmm5,%xmm2                        #! PC = 0x555555583fb1 *)
xor xmm2_0@uint64 xmm5_0 xmm2_0;
xor xmm2_1@uint64 xmm5_1 xmm2_1;
(* vpxor  %xmm4,%xmm15,%xmm6                       #! PC = 0x555555583fb5 *)
xor xmm6_0@uint64 xmm15_0 xmm4_0;
xor xmm6_1@uint64 xmm15_1 xmm4_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x555555583fb9 *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vpxorq %xmm24,%xmm17,%xmm17                     #! PC = 0x555555583fbd *)
xor xmm17_0@uint64 xmm17_0 xmm24_0;
xor xmm17_1@uint64 xmm17_1 xmm24_1;
(* vmovdqa64 %xmm31,%xmm6                          #! PC = 0x555555583fc3 *)
mov xmm6_0 xmm31_0;
mov xmm6_1 xmm31_1;
(* vmovdqa %xmm11,-0x48(%rsp)                      #! EA = L0x7fffffffdb60; PC = 0x555555583fd0 *)
mov L0x7fffffffdb60 xmm11_0;
mov L0x7fffffffdb68 xmm11_1;
(* vmovdqa %xmm10,-0x8(%rsp)                       #! EA = L0x7fffffffdba0; PC = 0x555555583fd6 *)
mov L0x7fffffffdba0 xmm10_0;
mov L0x7fffffffdba8 xmm10_1;
(* vmovdqa64 %xmm31,-0x58(%rsp)                    #! EA = L0x7fffffffdb50; PC = 0x555555583fdc *)
mov L0x7fffffffdb50 xmm31_0;
mov L0x7fffffffdb58 xmm31_1;
(* vmovdqa64 %xmm25,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x555555583fe7 *)
mov L0x7fffffffdb90 xmm25_0;
mov L0x7fffffffdb98 xmm25_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555583ff2 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxor  %xmm11,%xmm0,%xmm0                       #! PC = 0x555555583ff8 *)
xor xmm0_0@uint64 xmm0_0 xmm11_0;
xor xmm0_1@uint64 xmm0_1 xmm11_1;
(* vpxor  %xmm10,%xmm1,%xmm1                       #! PC = 0x555555583ffd *)
xor xmm1_0@uint64 xmm1_0 xmm10_0;
xor xmm1_1@uint64 xmm1_1 xmm10_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x555555584002 *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* mov    $0x8082,%ecx                             #! PC = 0x55555558400d *)
mov rcx 0x8082@uint64;
(* mov    $0x1,%edx                                #! PC = 0x555555584012 *)
mov rdx 0x1@uint64;
(* vmovdqa64 %xmm17,%xmm20                         #! PC = 0x555555584017 *)
mov xmm20_0 xmm17_0;
mov xmm20_1 xmm17_1;
(* #jmp    0x55555558402b <KeccakP1600times2_PermuteAll_24rounds+395>#! PC = 0x55555558401d *)
#jmp    0x55555558402b <KeccakP1600times2_PermuteAll_24rounds+395>#! 0x55555558401d = 0x55555558401d;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x6b153a9a3d6be02b; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x00007fffffffdff8; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x00007fffffffdda0; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x000055555559c380; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x00007fffffffdd10; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x00007fffffffdff8; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0x447121ddd17b37aa; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x8f77679714569136; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x8f77679714569136; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0x447121ddd17b37aa; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0xcd28ac77baadce6e; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0xe085e440e2ca5c33; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0xb5e30e45a5c1257e; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0xb543523835defe7a; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a390; Value = 0x800000000000808a; PC = 0x555555584020 *)
mov rdx L0x55555559a390;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a398; Value = 0x8000000080008000; PC = 0x555555584023 *)
mov rcx L0x55555559a398;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0xe085e440e2ca5c33; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0xb543523835defe7a; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x4c2dc1f4920f8981; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0xb5e30e45a5c1257e; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x1e9141c3d4d82866; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0xcd28ac77baadce6e; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xc0a80d2513e86045; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x17e546dad7e871fe; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x17e546dad7e871fe; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xc0a80d2513e86045; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0xef8ab2cc696bf05f; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0xd16fc9825ca67e01; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0xd05f0fa9dcd069d0; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0xcae30c6a0f05995f; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3a0; Value = 0x000000000000808b; PC = 0x555555584020 *)
mov rdx L0x55555559a3a0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3a8; Value = 0x0000000080000001; PC = 0x555555584023 *)
mov rcx L0x55555559a3a8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0xd16fc9825ca67e01; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0xcae30c6a0f05995f; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x16f280d8975bf466; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0xd05f0fa9dcd069d0; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x8798adb1902030ac; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0xef8ab2cc696bf05f; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xbc186ec3615a1dab; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x19a8fa01da5d6068; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x19a8fa01da5d6068; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xbc186ec3615a1dab; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x808a731b41963665; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0xeec17e94408b2d18; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x29936ab62723f748; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x49765284d395c9f5; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3b0; Value = 0x8000000080008081; PC = 0x555555584020 *)
mov rdx L0x55555559a3b0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3b8; Value = 0x8000000000008009; PC = 0x555555584023 *)
mov rcx L0x55555559a3b8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0xeec17e94408b2d18; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x49765284d395c9f5; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x9c16306ca70f21ac; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x29936ab62723f748; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0xe0434aed95055aa3; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x808a731b41963665; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xeebb34242eac56fd; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0xede63ef9162795a0; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0xede63ef9162795a0; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xeebb34242eac56fd; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x823a2847adcb1090; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0xcb9b5c10344c75f7; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0xa728aba2c21f4e76; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x4fa07de0350c541e; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3c0; Value = 0x000000000000008a; PC = 0x555555584020 *)
mov rdx L0x55555559a3c0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3c8; Value = 0x0000000000000088; PC = 0x555555584023 *)
mov rcx L0x55555559a3c8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0xcb9b5c10344c75f7; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x4fa07de0350c541e; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0xbc8174d23b331972; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0xa728aba2c21f4e76; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x25ec5aa7f2f2f7c3; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x823a2847adcb1090; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0x0786c0d7e65b4e5a; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0xb81b554b044605c3; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0xb81b554b044605c3; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0x0786c0d7e65b4e5a; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x28d9ac3a7dc6bdd9; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x9852aea2f617ad37; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x3d72e172516426e7; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0xe244d233a7385abe; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3d0; Value = 0x0000000080008009; PC = 0x555555584020 *)
mov rdx L0x55555559a3d0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3d8; Value = 0x000000008000000a; PC = 0x555555584023 *)
mov rcx L0x55555559a3d8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x9852aea2f617ad37; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0xe244d233a7385abe; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0xff88cd1aa887f8b3; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x3d72e172516426e7; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x2ace44f8d25e7afc; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x28d9ac3a7dc6bdd9; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0x805d4426da2fbeff; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x33bc26930c9f29b0; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x33bc26930c9f29b0; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0x805d4426da2fbeff; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x9311b6a0b0aea77e; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x540a09cc71f5e6b4; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0xbfcf9a2f0bdc4f13; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x9b31fed046abcd63; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3e0; Value = 0x000000008000808b; PC = 0x555555584020 *)
mov rdx L0x55555559a3e0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3e8; Value = 0x800000000000008b; PC = 0x555555584023 *)
mov rcx L0x55555559a3e8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x540a09cc71f5e6b4; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x9b31fed046abcd63; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x813242cd6af83bb2; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0xbfcf9a2f0bdc4f13; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0xbe7652bc3d0a2ca8; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x9311b6a0b0aea77e; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xe81f384d8f628568; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x9e16f58ecc45d782; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x9e16f58ecc45d782; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xe81f384d8f628568; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x9768f0f9b0ca7044; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x66c0bbebed4a7ce8; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x4f6fdd0523b977f3; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0xef5c9177a6f87d21; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a3f0; Value = 0x8000000000008089; PC = 0x555555584020 *)
mov rdx L0x55555559a3f0;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a3f8; Value = 0x8000000000008003; PC = 0x555555584023 *)
mov rcx L0x55555559a3f8;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x66c0bbebed4a7ce8; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0xef5c9177a6f87d21; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x7ab4d56c38ea5a18; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x4f6fdd0523b977f3; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x2b27cf73b5f554f6; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x9768f0f9b0ca7044; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xd490d26374523d56; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0xbfbc3ef5c239b6e9; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0xbfbc3ef5c239b6e9; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xd490d26374523d56; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0xd4d8b6b197ff6427; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x15eb9a0575e1a138; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x70377656ee170d88; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x79b6d8b5b4924711; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a400; Value = 0x8000000000008002; PC = 0x555555584020 *)
mov rdx L0x55555559a400;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a408; Value = 0x8000000000000080; PC = 0x555555584023 *)
mov rcx L0x55555559a408;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x15eb9a0575e1a138; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x79b6d8b5b4924711; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x364c831517d666f0; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x70377656ee170d88; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x57bf6ee3a97f6f77; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0xd4d8b6b197ff6427; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0x61f1dc7c9df5f389; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x36ae669897b7ae05; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x36ae669897b7ae05; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0x61f1dc7c9df5f389; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x63c050b7a8067b2b; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x65c42e0efdb66a51; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x2bc4363d927f2174; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0xe72f0594a2fb2f53; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a410; Value = 0x000000000000800a; PC = 0x555555584020 *)
mov rdx L0x55555559a410;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a418; Value = 0x800000008000000a; PC = 0x555555584023 *)
mov rcx L0x55555559a418;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x65c42e0efdb66a51; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0xe72f0594a2fb2f53; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0xf65aca31342787b7; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x2bc4363d927f2174; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x058db9ec8df2895e; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x63c050b7a8067b2b; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xffa7a03839c7797b; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x1d312db79ec7f57b; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x1d312db79ec7f57b; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xffa7a03839c7797b; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0xf5650e7c216bcdc9; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x872dbae69aaba4fe; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x330a6521cf8e52aa; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x59b6f9022d1911d9; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a420; Value = 0x8000000080008081; PC = 0x555555584020 *)
mov rdx L0x55555559a420;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a428; Value = 0x8000000000008080; PC = 0x555555584023 *)
mov rcx L0x55555559a428;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x872dbae69aaba4fe; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x59b6f9022d1911d9; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x41abaa0c7992ee79; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0x330a6521cf8e52aa; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0x0732462b46854379; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0xf5650e7c216bcdc9; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0x5544e41669596f81; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0x39c265a3d5a5d06c; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0x39c265a3d5a5d06c; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0x5544e41669596f81; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x4507cf2e50dc3701; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0x42ff565f736ffd48; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0xe74ea0329b7d0ff9; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x2bf9c9d7892fdc0d; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* mov    (%rax),%rdx                              #! EA = L0x55555559a430; Value = 0x0000000080000001; PC = 0x555555584020 *)
mov rdx L0x55555559a430;
(* mov    0x8(%rax),%rcx                           #! EA = L0x55555559a438; Value = 0x8000000080008008; PC = 0x555555584023 *)
mov rcx L0x55555559a438;
(* add    $0x10,%rax                               #! PC = 0x555555584027 *)
adds carry rax rax 0x10@uint64;
(* vprolq $0x1,%xmm0,%xmm11                        #! PC = 0x55555558402b *)
rol xmm11_0 xmm0_0 0x1;
rol xmm11_1 xmm0_1 0x1;
(* vprolq $0x1,%xmm1,%xmm10                        #! PC = 0x555555584032 *)
rol xmm10_0 xmm1_0 0x1;
rol xmm10_1 xmm1_1 0x1;
(* vprolq $0x1,%xmm20,%xmm6                        #! PC = 0x555555584039 *)
rol xmm6_0 xmm20_0 0x1;
rol xmm6_1 xmm20_1 0x1;
(* vprolq $0x1,%xmm13,%xmm17                       #! PC = 0x555555584040 *)
rol xmm17_0 xmm13_0 0x1;
rol xmm17_1 xmm13_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584047 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558404b *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxor  %xmm13,%xmm10,%xmm10                     #! PC = 0x555555584052 *)
xor xmm10_0@uint64 xmm10_0 xmm13_0;
xor xmm10_1@uint64 xmm10_1 xmm13_1;
(* vpxor  %xmm0,%xmm6,%xmm6                        #! PC = 0x555555584057 *)
xor xmm6_0@uint64 xmm6_0 xmm0_0;
xor xmm6_1@uint64 xmm6_1 xmm0_1;
(* vpxorq %xmm20,%xmm17,%xmm17                     #! PC = 0x55555558405b *)
xor xmm17_0@uint64 xmm17_0 xmm20_0;
xor xmm17_1@uint64 xmm17_1 xmm20_1;
(* vpxor  %xmm10,%xmm9,%xmm9                       #! PC = 0x555555584061 *)
xor xmm9_0@uint64 xmm9_0 xmm10_0;
xor xmm9_1@uint64 xmm9_1 xmm10_1;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x555555584066 *)
xor xmm8_0@uint64 xmm8_0 xmm6_0;
xor xmm8_1@uint64 xmm8_1 xmm6_1;
(* vpxor  %xmm1,%xmm2,%xmm1                        #! PC = 0x55555558406a *)
xor xmm1_0@uint64 xmm2_0 xmm1_0;
xor xmm1_1@uint64 xmm2_1 xmm1_1;
(* vprorq $0x15,%xmm8,%xmm8                        #! PC = 0x55555558406e *)
ror xmm8_0 xmm8_0 0x15;
ror xmm8_1 xmm8_1 0x15;
(* vprorq $0x14,%xmm9,%xmm2                        #! PC = 0x555555584075 *)
ror xmm2_0 xmm9_0 0x14;
ror xmm2_1 xmm9_1 0x14;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555558407c *)
xor xmm12_0@uint64 xmm12_0 xmm1_0;
xor xmm12_1@uint64 xmm12_1 xmm1_1;
(* vpxorq %xmm17,%xmm15,%xmm15                     #! PC = 0x555555584080 *)
xor xmm15_0@uint64 xmm15_0 xmm17_0;
xor xmm15_1@uint64 xmm15_1 xmm17_1;
(* vprolq $0x15,%xmm12,%xmm20                      #! PC = 0x555555584086 *)
rol xmm20_0 xmm12_0 0x15;
rol xmm20_1 xmm12_1 0x15;
(* vprolq $0xe,%xmm15,%xmm15                       #! PC = 0x55555558408d *)
rol xmm15_0 xmm15_0 0xe;
rol xmm15_1 xmm15_1 0xe;
(* vpbroadcastq %rdx,%xmm13                        #! PC = 0x555555584094 *)
mov xmm13_0 rdx;
mov xmm13_1 rdx;
(* vpandn %xmm8,%xmm2,%xmm0                        #! PC = 0x55555558409a *)
not xmm2_0n@uint64 xmm2_0;
and xmm0_0@uint64 xmm2_0n xmm8_0;
not xmm2_1n@uint64 xmm2_1;
and xmm0_1@uint64 xmm2_1n xmm8_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555558409f *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm10,%xmm19,%xmm19                     #! PC = 0x5555555840a3 *)
xor xmm19_0@uint64 xmm19_0 xmm10_0;
xor xmm19_1@uint64 xmm19_1 xmm10_1;
(* vpxor  %xmm6,%xmm14,%xmm14                      #! PC = 0x5555555840a9 *)
xor xmm14_0@uint64 xmm14_0 xmm6_0;
xor xmm14_1@uint64 xmm14_1 xmm6_1;
(* vpandnq %xmm15,%xmm20,%xmm0                     #! PC = 0x5555555840ad *)
not xmm20_0n@uint64 xmm20_0;
and xmm0_0@uint64 xmm20_0n xmm15_0;
not xmm20_1n@uint64 xmm20_1;
and xmm0_1@uint64 xmm20_1n xmm15_1;
(* vprorq $0x13,%xmm19,%xmm19                      #! PC = 0x5555555840b3 *)
ror xmm19_0 xmm19_0 0x13;
ror xmm19_1 xmm19_1 0x13;
(* vprorq $0x3,%xmm14,%xmm14                       #! PC = 0x5555555840ba *)
ror xmm14_0 xmm14_0 0x3;
ror xmm14_1 xmm14_1 0x3;
(* vpandnq %xmm20,%xmm8,%xmm12                     #! PC = 0x5555555840c1 *)
not xmm8_0n@uint64 xmm8_0;
and xmm12_0@uint64 xmm8_0n xmm20_0;
not xmm8_1n@uint64 xmm8_1;
and xmm12_1@uint64 xmm8_1n xmm20_1;
(* vpxor  %xmm8,%xmm0,%xmm0                        #! PC = 0x5555555840c7 *)
xor xmm0_0@uint64 xmm0_0 xmm8_0;
xor xmm0_1@uint64 xmm0_1 xmm8_1;
(* vpxorq %xmm11,%xmm21,%xmm21                     #! PC = 0x5555555840cc *)
xor xmm21_0@uint64 xmm21_0 xmm11_0;
xor xmm21_1@uint64 xmm21_1 xmm11_1;
(* vpxorq %xmm1,%xmm24,%xmm8                       #! PC = 0x5555555840d2 *)
xor xmm8_0@uint64 xmm24_0 xmm1_0;
xor xmm8_1@uint64 xmm24_1 xmm1_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555840d8 *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vprolq $0x14,%xmm5,%xmm5                        #! PC = 0x5555555840de *)
rol xmm5_0 xmm5_0 0x14;
rol xmm5_1 xmm5_1 0x14;
(* vprolq $0x1c,%xmm8,%xmm8                        #! PC = 0x5555555840e5 *)
rol xmm8_0 xmm8_0 0x1c;
rol xmm8_1 xmm8_1 0x1c;
(* vmovdqa %xmm0,-0x28(%rsp)                       #! EA = L0x7fffffffdb80; PC = 0x5555555840ec *)
mov L0x7fffffffdb80 xmm0_0;
mov L0x7fffffffdb88 xmm0_1;
(* vprolq $0x3,%xmm21,%xmm0                        #! PC = 0x5555555840f2 *)
rol xmm0_0 xmm21_0 0x3;
rol xmm0_1 xmm21_1 0x3;
(* vpxorq %xmm11,%xmm27,%xmm27                     #! PC = 0x5555555840f9 *)
xor xmm27_0@uint64 xmm27_0 xmm11_0;
xor xmm27_1@uint64 xmm27_1 xmm11_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x5555555840ff *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpandnq %xmm27,%xmm15,%xmm9                     #! PC = 0x555555584105 *)
not xmm15_0n@uint64 xmm15_0;
and xmm9_0@uint64 xmm15_0n xmm27_0;
not xmm15_1n@uint64 xmm15_1;
and xmm9_1@uint64 xmm15_1n xmm27_1;
(* vpandnq %xmm2,%xmm27,%xmm27                     #! PC = 0x55555558410b *)
not xmm27_0n@uint64 xmm27_0;
and xmm27_0@uint64 xmm27_0n xmm2_0;
not xmm27_1n@uint64 xmm27_1;
and xmm27_1@uint64 xmm27_1n xmm2_1;
(* vpxor  %xmm2,%xmm12,%xmm12                      #! PC = 0x555555584111 *)
xor xmm12_0@uint64 xmm12_0 xmm2_0;
xor xmm12_1@uint64 xmm12_1 xmm2_1;
(* vpandnq %xmm14,%xmm19,%xmm21                    #! PC = 0x555555584115 *)
not xmm19_0n@uint64 xmm19_0;
and xmm21_0@uint64 xmm19_0n xmm14_0;
not xmm19_1n@uint64 xmm19_1;
and xmm21_1@uint64 xmm19_1n xmm14_1;
(* vpxorq %xmm15,%xmm27,%xmm2                      #! PC = 0x55555558411b *)
xor xmm2_0@uint64 xmm27_0 xmm15_0;
xor xmm2_1@uint64 xmm27_1 xmm15_1;
(* vmovdqa %xmm2,-0x38(%rsp)                       #! EA = L0x7fffffffdb70; PC = 0x555555584121 *)
mov L0x7fffffffdb70 xmm2_0;
mov L0x7fffffffdb78 xmm2_1;
(* vpandnq %xmm19,%xmm0,%xmm24                     #! PC = 0x555555584127 *)
not xmm0_0n@uint64 xmm0_0;
and xmm24_0@uint64 xmm0_0n xmm19_0;
not xmm0_1n@uint64 xmm0_1;
and xmm24_1@uint64 xmm0_1n xmm19_1;
(* vpandn %xmm0,%xmm5,%xmm2                        #! PC = 0x55555558412d *)
not xmm5_0n@uint64 xmm5_0;
and xmm2_0@uint64 xmm5_0n xmm0_0;
not xmm5_1n@uint64 xmm5_1;
and xmm2_1@uint64 xmm5_1n xmm0_1;
(* vpxorq %xmm0,%xmm21,%xmm21                      #! PC = 0x555555584131 *)
xor xmm21_0@uint64 xmm21_0 xmm0_0;
xor xmm21_1@uint64 xmm21_1 xmm0_1;
(* vpxorq %xmm11,%xmm16,%xmm16                     #! PC = 0x555555584137 *)
xor xmm16_0@uint64 xmm16_0 xmm11_0;
xor xmm16_1@uint64 xmm16_1 xmm11_1;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555558413d *)
not xmm14_0n@uint64 xmm14_0;
and xmm0_0@uint64 xmm14_0n xmm8_0;
not xmm14_1n@uint64 xmm14_1;
and xmm0_1@uint64 xmm14_1n xmm8_1;
(* vpxorq %xmm19,%xmm0,%xmm31                      #! PC = 0x555555584142 *)
xor xmm31_0@uint64 xmm0_0 xmm19_0;
xor xmm31_1@uint64 xmm0_1 xmm19_1;
(* vpxorq %xmm6,%xmm22,%xmm22                      #! PC = 0x555555584148 *)
xor xmm22_0@uint64 xmm22_0 xmm6_0;
xor xmm22_1@uint64 xmm22_1 xmm6_1;
(* vprolq $0x12,%xmm16,%xmm0                       #! PC = 0x55555558414e *)
rol xmm0_0 xmm16_0 0x12;
rol xmm0_1 xmm16_1 0x12;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555584155 *)
xor xmm7_0@uint64 xmm7_0 xmm1_0;
xor xmm7_1@uint64 xmm7_1 xmm1_1;
(* vprolq $0x6,%xmm22,%xmm22                       #! PC = 0x555555584159 *)
rol xmm22_0 xmm22_0 0x6;
rol xmm22_1 xmm22_1 0x6;
(* vprolq $0x19,%xmm7,%xmm7                        #! PC = 0x555555584160 *)
rol xmm7_0 xmm7_0 0x19;
rol xmm7_1 xmm7_1 0x19;
(* vpxorq %xmm17,%xmm4,%xmm4                       #! PC = 0x555555584167 *)
xor xmm4_0@uint64 xmm4_0 xmm17_0;
xor xmm4_1@uint64 xmm4_1 xmm17_1;
(* vpshufb 0x162ca(%rip),%xmm4,%xmm4        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x55555558416d *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxorq %xmm8,%xmm2,%xmm30                       #! PC = 0x555555584176 *)
xor xmm30_0@uint64 xmm2_0 xmm8_0;
xor xmm30_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm0,%xmm4,%xmm27                      #! PC = 0x55555558417c *)
not xmm4_0n@uint64 xmm4_0;
and xmm27_0@uint64 xmm4_0n xmm0_0;
not xmm4_1n@uint64 xmm4_1;
and xmm27_1@uint64 xmm4_1n xmm0_1;
(* vpandn %xmm5,%xmm8,%xmm8                        #! PC = 0x555555584182 *)
not xmm8_0n@uint64 xmm8_0;
and xmm8_0@uint64 xmm8_0n xmm5_0;
not xmm8_1n@uint64 xmm8_1;
and xmm8_1@uint64 xmm8_1n xmm5_1;
(* vpxor  %xmm14,%xmm8,%xmm8                       #! PC = 0x555555584186 *)
xor xmm8_0@uint64 xmm8_0 xmm14_0;
xor xmm8_1@uint64 xmm8_1 xmm14_1;
(* vpandnq %xmm7,%xmm22,%xmm23                     #! PC = 0x55555558418b *)
not xmm22_0n@uint64 xmm22_0;
and xmm23_0@uint64 xmm22_0n xmm7_0;
not xmm22_1n@uint64 xmm22_1;
and xmm23_1@uint64 xmm22_1n xmm7_1;
(* vpxor  -0x48(%rsp),%xmm10,%xmm14                #! EA = L0x7fffffffdb60; Value = 0x42ff565f736ffd48; PC = 0x555555584191 *)
xor xmm14_0@uint64 xmm10_0 L0x7fffffffdb60;
xor xmm14_1@uint64 xmm10_1 L0x7fffffffdb68;
(* vpandnq %xmm4,%xmm7,%xmm19                      #! PC = 0x555555584197 *)
not xmm7_0n@uint64 xmm7_0;
and xmm19_0@uint64 xmm7_0n xmm4_0;
not xmm7_1n@uint64 xmm7_1;
and xmm19_1@uint64 xmm7_1n xmm4_1;
(* vpxorq %xmm7,%xmm27,%xmm27                      #! PC = 0x55555558419d *)
xor xmm27_0@uint64 xmm27_0 xmm7_0;
xor xmm27_1@uint64 xmm27_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x5555555841a3 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxorq -0x58(%rsp),%xmm17,%xmm7                 #! EA = L0x7fffffffdb50; Value = 0x2bf9c9d7892fdc0d; PC = 0x5555555841a9 *)
xor xmm7_0@uint64 xmm17_0 L0x7fffffffdb50;
xor xmm7_1@uint64 xmm17_1 L0x7fffffffdb58;
(* vprolq $0xf,%xmm18,%xmm18                       #! PC = 0x5555555841b4 *)
rol xmm18_0 xmm18_0 0xf;
rol xmm18_1 xmm18_1 0xf;
(* vpxorq -0x18(%rsp),%xmm17,%xmm17                #! EA = L0x7fffffffdb90; Value = 0x7bc0f24dc86e57eb; PC = 0x5555555841bb *)
xor xmm17_0@uint64 xmm17_0 L0x7fffffffdb90;
xor xmm17_1@uint64 xmm17_1 L0x7fffffffdb98;
(* vpxorq %xmm11,%xmm29,%xmm29                     #! PC = 0x5555555841c6 *)
xor xmm29_0@uint64 xmm29_0 xmm11_0;
xor xmm29_1@uint64 xmm29_1 xmm11_1;
(* vpxorq %xmm10,%xmm28,%xmm28                     #! PC = 0x5555555841cc *)
xor xmm28_0@uint64 xmm28_0 xmm10_0;
xor xmm28_1@uint64 xmm28_1 xmm10_1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x5555555841d2 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  -0x78(%rsp),%xmm1,%xmm1                  #! EA = L0x7fffffffdb30; Value = 0xe74ea0329b7d0ff9; PC = 0x5555555841d6 *)
xor xmm1_0@uint64 xmm1_0 L0x7fffffffdb30;
xor xmm1_1@uint64 xmm1_1 L0x7fffffffdb38;
(* vprorq $0x1c,%xmm29,%xmm29                      #! PC = 0x5555555841dc *)
ror xmm29_0 xmm29_0 0x1c;
ror xmm29_1 xmm29_1 0x1c;
(* vprolq $0xa,%xmm28,%xmm28                       #! PC = 0x5555555841e3 *)
rol xmm28_0 xmm28_0 0xa;
rol xmm28_1 xmm28_1 0xa;
(* vprolq $0x1,%xmm14,%xmm14                       #! PC = 0x5555555841ea *)
rol xmm14_0 xmm14_0 0x1;
rol xmm14_1 xmm14_1 0x1;
(* vprolq $0x1b,%xmm7,%xmm7                        #! PC = 0x5555555841f1 *)
rol xmm7_0 xmm7_0 0x1b;
rol xmm7_1 xmm7_1 0x1b;
(* vpxor  -0x8(%rsp),%xmm6,%xmm6                   #! EA = L0x7fffffffdba0; Value = 0xa8bb55606dd765bd; PC = 0x5555555841f8 *)
xor xmm6_0@uint64 xmm6_0 L0x7fffffffdba0;
xor xmm6_1@uint64 xmm6_1 L0x7fffffffdba8;
(* vprorq $0x9,%xmm1,%xmm1                         #! PC = 0x5555555841fe *)
ror xmm1_0 xmm1_0 0x9;
ror xmm1_1 xmm1_1 0x9;
(* vprorq $0x19,%xmm17,%xmm17                      #! PC = 0x555555584205 *)
ror xmm17_0 xmm17_0 0x19;
ror xmm17_1 xmm17_1 0x19;
(* vprorq $0x2,%xmm6,%xmm6                         #! PC = 0x55555558420c *)
ror xmm6_0 xmm6_0 0x2;
ror xmm6_1 xmm6_1 0x2;
(* vpxor  -0x68(%rsp),%xmm11,%xmm11                #! EA = L0x7fffffffdb40; Value = 0x4507cf2e50dc3701; PC = 0x555555584213 *)
xor xmm11_0@uint64 xmm11_0 L0x7fffffffdb40;
xor xmm11_1@uint64 xmm11_1 L0x7fffffffdb48;
(* vpshufb 0x1622e(%rip),%xmm3,%xmm3        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584219 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm3_0, xmm3_1, tmp_0, tmp_1);
mov xmm3_0 tmp_0;
mov xmm3_1 tmp_1;
(* vprorq $0x17,%xmm11,%xmm11                      #! PC = 0x555555584222 *)
ror xmm11_0 xmm11_0 0x17;
ror xmm11_1 xmm11_1 0x17;
(* vpxorq %xmm10,%xmm26,%xmm10                     #! PC = 0x555555584229 *)
xor xmm10_0@uint64 xmm26_0 xmm10_0;
xor xmm10_1@uint64 xmm26_1 xmm10_1;
(* vprolq $0x2,%xmm10,%xmm10                       #! PC = 0x55555558422f *)
rol xmm10_0 xmm10_0 0x2;
rol xmm10_1 xmm10_1 0x2;
(* vpandnq %xmm3,%xmm18,%xmm15                     #! PC = 0x555555584236 *)
not xmm18_0n@uint64 xmm18_0;
and xmm15_0@uint64 xmm18_0n xmm3_0;
not xmm18_1n@uint64 xmm18_1;
and xmm15_1@uint64 xmm18_1n xmm3_1;
(* vpxorq %xmm20,%xmm9,%xmm9                       #! PC = 0x55555558423c *)
xor xmm9_0@uint64 xmm9_0 xmm20_0;
xor xmm9_1@uint64 xmm9_1 xmm20_1;
(* vpxorq %xmm14,%xmm23,%xmm23                     #! PC = 0x555555584242 *)
xor xmm23_0@uint64 xmm23_0 xmm14_0;
xor xmm23_1@uint64 xmm23_1 xmm14_1;
(* vpxorq %xmm22,%xmm19,%xmm19                     #! PC = 0x555555584248 *)
xor xmm19_0@uint64 xmm19_0 xmm22_0;
xor xmm19_1@uint64 xmm19_1 xmm22_1;
(* vpandnq %xmm14,%xmm0,%xmm16                     #! PC = 0x55555558424e *)
not xmm0_0n@uint64 xmm0_0;
and xmm16_0@uint64 xmm0_0n xmm14_0;
not xmm0_1n@uint64 xmm0_1;
and xmm16_1@uint64 xmm0_1n xmm14_1;
(* vpandnq %xmm28,%xmm29,%xmm20                    #! PC = 0x555555584254 *)
not xmm29_0n@uint64 xmm29_0;
and xmm20_0@uint64 xmm29_0n xmm28_0;
not xmm29_1n@uint64 xmm29_1;
and xmm20_1@uint64 xmm29_1n xmm28_1;
(* vpxorq %xmm28,%xmm15,%xmm15                     #! PC = 0x55555558425a *)
xor xmm15_0@uint64 xmm15_0 xmm28_0;
xor xmm15_1@uint64 xmm15_1 xmm28_1;
(* vpandnq %xmm22,%xmm14,%xmm14                    #! PC = 0x555555584260 *)
not xmm14_0n@uint64 xmm14_0;
and xmm14_0@uint64 xmm14_0n xmm22_0;
not xmm14_1n@uint64 xmm14_1;
and xmm14_1@uint64 xmm14_1n xmm22_1;
(* vpandnq %xmm18,%xmm28,%xmm22                    #! PC = 0x555555584266 *)
not xmm28_0n@uint64 xmm28_0;
and xmm22_0@uint64 xmm28_0n xmm18_0;
not xmm28_1n@uint64 xmm28_1;
and xmm22_1@uint64 xmm28_1n xmm18_1;
(* vpandnq %xmm7,%xmm3,%xmm28                      #! PC = 0x55555558426c *)
not xmm3_0n@uint64 xmm3_0;
and xmm28_0@uint64 xmm3_0n xmm7_0;
not xmm3_1n@uint64 xmm3_1;
and xmm28_1@uint64 xmm3_1n xmm7_1;
(* vpxorq %xmm18,%xmm28,%xmm28                     #! PC = 0x555555584272 *)
xor xmm28_0@uint64 xmm28_0 xmm18_0;
xor xmm28_1@uint64 xmm28_1 xmm18_1;
(* vpandnq %xmm17,%xmm1,%xmm18                     #! PC = 0x555555584278 *)
not xmm1_0n@uint64 xmm1_0;
and xmm18_0@uint64 xmm1_0n xmm17_0;
not xmm1_1n@uint64 xmm1_1;
and xmm18_1@uint64 xmm1_1n xmm17_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x55555558427e *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxorq %xmm6,%xmm18,%xmm18                      #! PC = 0x555555584284 *)
xor xmm18_0@uint64 xmm18_0 xmm6_0;
xor xmm18_1@uint64 xmm18_1 xmm6_1;
(* vpxor  %xmm0,%xmm14,%xmm14                      #! PC = 0x55555558428a *)
xor xmm14_0@uint64 xmm14_0 xmm0_0;
xor xmm14_1@uint64 xmm14_1 xmm0_1;
(* vpxorq %xmm5,%xmm24,%xmm24                      #! PC = 0x55555558428e *)
xor xmm24_0@uint64 xmm24_0 xmm5_0;
xor xmm24_1@uint64 xmm24_1 xmm5_1;
(* vpxorq %xmm20,%xmm18,%xmm0                      #! PC = 0x555555584294 *)
xor xmm0_0@uint64 xmm18_0 xmm20_0;
xor xmm0_1@uint64 xmm18_1 xmm20_1;
(* vpxorq %xmm29,%xmm22,%xmm22                     #! PC = 0x55555558429a *)
xor xmm22_0@uint64 xmm22_0 xmm29_0;
xor xmm22_1@uint64 xmm22_1 xmm29_1;
(* vpxorq %xmm30,%xmm23,%xmm2                      #! PC = 0x5555555842a0 *)
xor xmm2_0@uint64 xmm23_0 xmm30_0;
xor xmm2_1@uint64 xmm23_1 xmm30_1;
(* vpandnq %xmm11,%xmm17,%xmm25                    #! PC = 0x5555555842a6 *)
not xmm17_0n@uint64 xmm17_0;
and xmm25_0@uint64 xmm17_0n xmm11_0;
not xmm17_1n@uint64 xmm17_1;
and xmm25_1@uint64 xmm17_1n xmm11_1;
(* vpxorq -0x28(%rsp),%xmm21,%xmm26                #! EA = L0x7fffffffdb80; Value = 0xae397629989709f9; PC = 0x5555555842ac *)
xor xmm26_0@uint64 xmm21_0 L0x7fffffffdb80;
xor xmm26_1@uint64 xmm21_1 L0x7fffffffdb88;
(* vpandnq %xmm29,%xmm7,%xmm7                      #! PC = 0x5555555842b7 *)
not xmm7_0n@uint64 xmm7_0;
and xmm7_0@uint64 xmm7_0n xmm29_0;
not xmm7_1n@uint64 xmm7_1;
and xmm7_1@uint64 xmm7_1n xmm29_1;
(* vpxor  %xmm0,%xmm2,%xmm2                        #! PC = 0x5555555842bd *)
xor xmm2_0@uint64 xmm2_0 xmm0_0;
xor xmm2_1@uint64 xmm2_1 xmm0_1;
(* vpxorq %xmm12,%xmm24,%xmm29                     #! PC = 0x5555555842c1 *)
xor xmm29_0@uint64 xmm24_0 xmm12_0;
xor xmm29_1@uint64 xmm24_1 xmm12_1;
(* vpxorq %xmm19,%xmm22,%xmm0                      #! PC = 0x5555555842c7 *)
xor xmm0_0@uint64 xmm22_0 xmm19_0;
xor xmm0_1@uint64 xmm22_1 xmm19_1;
(* vpxorq %xmm1,%xmm25,%xmm25                      #! PC = 0x5555555842cd *)
xor xmm25_0@uint64 xmm25_0 xmm1_0;
xor xmm25_1@uint64 xmm25_1 xmm1_1;
(* vpandn %xmm10,%xmm11,%xmm5                      #! PC = 0x5555555842d3 *)
not xmm11_0n@uint64 xmm11_0;
and xmm5_0@uint64 xmm11_0n xmm10_0;
not xmm11_1n@uint64 xmm11_1;
and xmm5_1@uint64 xmm11_1n xmm10_1;
(* vpxorq %xmm0,%xmm29,%xmm29                      #! PC = 0x5555555842d8 *)
xor xmm29_0@uint64 xmm29_0 xmm0_0;
xor xmm29_1@uint64 xmm29_1 xmm0_1;
(* vpxorq %xmm27,%xmm15,%xmm0                      #! PC = 0x5555555842de *)
xor xmm0_0@uint64 xmm15_0 xmm27_0;
xor xmm0_1@uint64 xmm15_1 xmm27_1;
(* vpxorq %xmm25,%xmm29,%xmm29                     #! PC = 0x5555555842e4 *)
xor xmm29_0@uint64 xmm29_0 xmm25_0;
xor xmm29_1@uint64 xmm29_1 xmm25_1;
(* vpxorq %xmm17,%xmm5,%xmm5                       #! PC = 0x5555555842ea *)
xor xmm5_0@uint64 xmm5_0 xmm17_0;
xor xmm5_1@uint64 xmm5_1 xmm17_1;
(* vpxorq %xmm0,%xmm26,%xmm26                      #! PC = 0x5555555842f0 *)
xor xmm26_0@uint64 xmm26_0 xmm0_0;
xor xmm26_1@uint64 xmm26_1 xmm0_1;
(* vpxorq %xmm5,%xmm26,%xmm26                      #! PC = 0x5555555842f6 *)
xor xmm26_0@uint64 xmm26_0 xmm5_0;
xor xmm26_1@uint64 xmm26_1 xmm5_1;
(* vpxorq %xmm4,%xmm16,%xmm16                      #! PC = 0x5555555842fc *)
xor xmm16_0@uint64 xmm16_0 xmm4_0;
xor xmm16_1@uint64 xmm16_1 xmm4_1;
(* vpxor  %xmm3,%xmm7,%xmm7                        #! PC = 0x555555584302 *)
xor xmm7_0@uint64 xmm7_0 xmm3_0;
xor xmm7_1@uint64 xmm7_1 xmm3_1;
(* vpandn %xmm6,%xmm10,%xmm4                       #! PC = 0x555555584306 *)
not xmm10_0n@uint64 xmm10_0;
and xmm4_0@uint64 xmm10_0n xmm6_0;
not xmm10_1n@uint64 xmm10_1;
and xmm4_1@uint64 xmm10_1n xmm6_1;
(* vprolq $0x1,%xmm29,%xmm3                        #! PC = 0x55555558430a *)
rol xmm3_0 xmm29_0 0x1;
rol xmm3_1 xmm29_1 0x1;
(* vpxor  %xmm11,%xmm4,%xmm4                       #! PC = 0x555555584311 *)
xor xmm4_0@uint64 xmm4_0 xmm11_0;
xor xmm4_1@uint64 xmm4_1 xmm11_1;
(* vpandn %xmm1,%xmm6,%xmm6                        #! PC = 0x555555584316 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm1_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm1_1;
(* vprolq $0x1,%xmm26,%xmm11                       #! PC = 0x55555558431a *)
rol xmm11_0 xmm26_0 0x1;
rol xmm11_1 xmm26_1 0x1;
(* vpxorq %xmm28,%xmm4,%xmm0                       #! PC = 0x555555584321 *)
xor xmm0_0@uint64 xmm4_0 xmm28_0;
xor xmm0_1@uint64 xmm4_1 xmm28_1;
(* vpxor  %xmm10,%xmm6,%xmm6                       #! PC = 0x555555584327 *)
xor xmm6_0@uint64 xmm6_0 xmm10_0;
xor xmm6_1@uint64 xmm6_1 xmm10_1;
(* vpxor  -0x38(%rsp),%xmm8,%xmm1                  #! EA = L0x7fffffffdb70; Value = 0xedd5f671ad52ebea; PC = 0x55555558432c *)
xor xmm1_0@uint64 xmm8_0 L0x7fffffffdb70;
xor xmm1_1@uint64 xmm8_1 L0x7fffffffdb78;
(* vpxorq %xmm9,%xmm31,%xmm17                      #! PC = 0x555555584332 *)
xor xmm17_0@uint64 xmm31_0 xmm9_0;
xor xmm17_1@uint64 xmm31_1 xmm9_1;
(* vpxorq %xmm0,%xmm17,%xmm17                      #! PC = 0x555555584338 *)
xor xmm17_0@uint64 xmm17_0 xmm0_0;
xor xmm17_1@uint64 xmm17_1 xmm0_1;
(* vpxor  %xmm14,%xmm6,%xmm0                       #! PC = 0x55555558433e *)
xor xmm0_0@uint64 xmm6_0 xmm14_0;
xor xmm0_1@uint64 xmm6_1 xmm14_1;
(* vpxorq %xmm16,%xmm17,%xmm17                     #! PC = 0x555555584343 *)
xor xmm17_0@uint64 xmm17_0 xmm16_0;
xor xmm17_1@uint64 xmm17_1 xmm16_1;
(* vpxor  %xmm0,%xmm1,%xmm1                        #! PC = 0x555555584349 *)
xor xmm1_0@uint64 xmm1_0 xmm0_0;
xor xmm1_1@uint64 xmm1_1 xmm0_1;
(* vpxor  %xmm7,%xmm1,%xmm1                        #! PC = 0x55555558434d *)
xor xmm1_0@uint64 xmm1_0 xmm7_0;
xor xmm1_1@uint64 xmm1_1 xmm7_1;
(* vprolq $0x1,%xmm17,%xmm0                        #! PC = 0x555555584351 *)
rol xmm0_0 xmm17_0 0x1;
rol xmm0_1 xmm17_1 0x1;
(* vpxor  %xmm1,%xmm3,%xmm3                        #! PC = 0x555555584358 *)
xor xmm3_0@uint64 xmm3_0 xmm1_0;
xor xmm3_1@uint64 xmm3_1 xmm1_1;
(* vpxor  %xmm13,%xmm2,%xmm2                       #! PC = 0x55555558435c *)
xor xmm2_0@uint64 xmm2_0 xmm13_0;
xor xmm2_1@uint64 xmm2_1 xmm13_1;
(* vprolq $0x1,%xmm1,%xmm1                         #! PC = 0x555555584361 *)
rol xmm1_0 xmm1_0 0x1;
rol xmm1_1 xmm1_1 0x1;
(* vpxor  %xmm2,%xmm11,%xmm11                      #! PC = 0x555555584368 *)
xor xmm11_0@uint64 xmm11_0 xmm2_0;
xor xmm11_1@uint64 xmm11_1 xmm2_1;
(* vprolq $0x1,%xmm2,%xmm2                         #! PC = 0x55555558436c *)
rol xmm2_0 xmm2_0 0x1;
rol xmm2_1 xmm2_1 0x1;
(* vpxorq %xmm29,%xmm0,%xmm0                       #! PC = 0x555555584373 *)
xor xmm0_0@uint64 xmm0_0 xmm29_0;
xor xmm0_1@uint64 xmm0_1 xmm29_1;
(* vpxorq %xmm24,%xmm11,%xmm24                     #! PC = 0x555555584379 *)
xor xmm24_0@uint64 xmm11_0 xmm24_0;
xor xmm24_1@uint64 xmm11_1 xmm24_1;
(* vpxorq %xmm27,%xmm0,%xmm27                      #! PC = 0x55555558437f *)
xor xmm27_0@uint64 xmm0_0 xmm27_0;
xor xmm27_1@uint64 xmm0_1 xmm27_1;
(* vpxorq %xmm26,%xmm1,%xmm1                       #! PC = 0x555555584385 *)
xor xmm1_0@uint64 xmm1_0 xmm26_0;
xor xmm1_1@uint64 xmm1_1 xmm26_1;
(* vprorq $0x14,%xmm24,%xmm10                      #! PC = 0x55555558438b *)
ror xmm10_0 xmm24_0 0x14;
ror xmm10_1 xmm24_1 0x14;
(* vpxorq %xmm17,%xmm2,%xmm2                       #! PC = 0x555555584392 *)
xor xmm2_0@uint64 xmm2_0 xmm17_0;
xor xmm2_1@uint64 xmm2_1 xmm17_1;
(* vpxorq %xmm28,%xmm1,%xmm28                      #! PC = 0x555555584398 *)
xor xmm28_0@uint64 xmm1_0 xmm28_0;
xor xmm28_1@uint64 xmm1_1 xmm28_1;
(* vprorq $0x15,%xmm27,%xmm17                      #! PC = 0x55555558439e *)
ror xmm17_0 xmm27_0 0x15;
ror xmm17_1 xmm27_1 0x15;
(* vprolq $0x15,%xmm28,%xmm28                      #! PC = 0x5555555843a5 *)
rol xmm28_0 xmm28_0 0x15;
rol xmm28_1 xmm28_1 0x15;
(* vpxor  %xmm6,%xmm2,%xmm6                        #! PC = 0x5555555843ac *)
xor xmm6_0@uint64 xmm2_0 xmm6_0;
xor xmm6_1@uint64 xmm2_1 xmm6_1;
(* vprolq $0xe,%xmm6,%xmm6                         #! PC = 0x5555555843b0 *)
rol xmm6_0 xmm6_0 0xe;
rol xmm6_1 xmm6_1 0xe;
(* vpbroadcastq %rcx,%xmm27                        #! PC = 0x5555555843b7 *)
mov xmm27_0 rcx;
mov xmm27_1 rcx;
(* vpxor  %xmm13,%xmm3,%xmm13                      #! PC = 0x5555555843bd *)
xor xmm13_0@uint64 xmm3_0 xmm13_0;
xor xmm13_1@uint64 xmm3_1 xmm13_1;
(* vpandnq %xmm17,%xmm10,%xmm24                    #! PC = 0x5555555843c2 *)
not xmm10_0n@uint64 xmm10_0;
and xmm24_0@uint64 xmm10_0n xmm17_0;
not xmm10_1n@uint64 xmm10_1;
and xmm24_1@uint64 xmm10_1n xmm17_1;
(* vpxorq %xmm24,%xmm27,%xmm27                     #! PC = 0x5555555843c8 *)
xor xmm27_0@uint64 xmm27_0 xmm24_0;
xor xmm27_1@uint64 xmm27_1 xmm24_1;
(* vpandnq %xmm28,%xmm17,%xmm24                    #! PC = 0x5555555843ce *)
not xmm17_0n@uint64 xmm17_0;
and xmm24_0@uint64 xmm17_0n xmm28_0;
not xmm17_1n@uint64 xmm17_1;
and xmm24_1@uint64 xmm17_1n xmm28_1;
(* vpxorq %xmm10,%xmm24,%xmm26                     #! PC = 0x5555555843d4 *)
xor xmm26_0@uint64 xmm24_0 xmm10_0;
xor xmm26_1@uint64 xmm24_1 xmm10_1;
(* vpxor  %xmm8,%xmm2,%xmm8                        #! PC = 0x5555555843da *)
xor xmm8_0@uint64 xmm2_0 xmm8_0;
xor xmm8_1@uint64 xmm2_1 xmm8_1;
(* vpandnq %xmm6,%xmm28,%xmm24                     #! PC = 0x5555555843df *)
not xmm28_0n@uint64 xmm28_0;
and xmm24_0@uint64 xmm28_0n xmm6_0;
not xmm28_1n@uint64 xmm28_1;
and xmm24_1@uint64 xmm28_1n xmm6_1;
(* vpxorq %xmm23,%xmm3,%xmm23                      #! PC = 0x5555555843e5 *)
xor xmm23_0@uint64 xmm3_0 xmm23_0;
xor xmm23_1@uint64 xmm3_1 xmm23_1;
(* vprolq $0x14,%xmm8,%xmm8                        #! PC = 0x5555555843eb *)
rol xmm8_0 xmm8_0 0x14;
rol xmm8_1 xmm8_1 0x14;
(* vprolq $0x3,%xmm23,%xmm23                       #! PC = 0x5555555843f2 *)
rol xmm23_0 xmm23_0 0x3;
rol xmm23_1 xmm23_1 0x3;
(* vpxorq %xmm17,%xmm24,%xmm17                     #! PC = 0x5555555843f9 *)
xor xmm17_0@uint64 xmm24_0 xmm17_0;
xor xmm17_1@uint64 xmm24_1 xmm17_1;
(* vpxor  %xmm9,%xmm1,%xmm9                        #! PC = 0x5555555843ff *)
xor xmm9_0@uint64 xmm1_0 xmm9_0;
xor xmm9_1@uint64 xmm1_1 xmm9_1;
(* vpandnq %xmm13,%xmm6,%xmm24                     #! PC = 0x555555584404 *)
not xmm6_0n@uint64 xmm6_0;
and xmm24_0@uint64 xmm6_0n xmm13_0;
not xmm6_1n@uint64 xmm6_1;
and xmm24_1@uint64 xmm6_1n xmm13_1;
(* vpxorq %xmm13,%xmm27,%xmm27                     #! PC = 0x55555558440a *)
xor xmm27_0@uint64 xmm27_0 xmm13_0;
xor xmm27_1@uint64 xmm27_1 xmm13_1;
(* vpxor  %xmm5,%xmm0,%xmm5                        #! PC = 0x555555584410 *)
xor xmm5_0@uint64 xmm0_0 xmm5_0;
xor xmm5_1@uint64 xmm0_1 xmm5_1;
(* vpandn %xmm10,%xmm13,%xmm13                     #! PC = 0x555555584414 *)
not xmm13_0n@uint64 xmm13_0;
and xmm13_0@uint64 xmm13_0n xmm10_0;
not xmm13_1n@uint64 xmm13_1;
and xmm13_1@uint64 xmm13_1n xmm10_1;
(* vprorq $0x3,%xmm5,%xmm5                         #! PC = 0x555555584419 *)
ror xmm5_0 xmm5_0 0x3;
ror xmm5_1 xmm5_1 0x3;
(* vpxor  %xmm6,%xmm13,%xmm13                      #! PC = 0x555555584420 *)
xor xmm13_0@uint64 xmm13_0 xmm6_0;
xor xmm13_1@uint64 xmm13_1 xmm6_1;
(* vpxorq %xmm22,%xmm11,%xmm22                     #! PC = 0x555555584424 *)
xor xmm22_0@uint64 xmm11_0 xmm22_0;
xor xmm22_1@uint64 xmm11_1 xmm22_1;
(* vprolq $0x1c,%xmm9,%xmm6                        #! PC = 0x55555558442a *)
rol xmm6_0 xmm9_0 0x1c;
rol xmm6_1 xmm9_1 0x1c;
(* vprorq $0x13,%xmm22,%xmm10                      #! PC = 0x555555584431 *)
ror xmm10_0 xmm22_0 0x13;
ror xmm10_1 xmm22_1 0x13;
(* vpandnq %xmm23,%xmm8,%xmm29                     #! PC = 0x555555584438 *)
not xmm8_0n@uint64 xmm8_0;
and xmm29_0@uint64 xmm8_0n xmm23_0;
not xmm8_1n@uint64 xmm8_1;
and xmm29_1@uint64 xmm8_1n xmm23_1;
(* vpxorq %xmm21,%xmm0,%xmm21                      #! PC = 0x55555558443e *)
xor xmm21_0@uint64 xmm0_0 xmm21_0;
xor xmm21_1@uint64 xmm0_1 xmm21_1;
(* vmovdqa %xmm13,-0x58(%rsp)                      #! EA = L0x7fffffffdb50; PC = 0x555555584444 *)
mov L0x7fffffffdb50 xmm13_0;
mov L0x7fffffffdb58 xmm13_1;
(* vpxorq %xmm16,%xmm1,%xmm16                      #! PC = 0x55555558444a *)
xor xmm16_0@uint64 xmm1_0 xmm16_0;
xor xmm16_1@uint64 xmm1_1 xmm16_1;
(* vpandn %xmm6,%xmm5,%xmm13                       #! PC = 0x555555584450 *)
not xmm5_0n@uint64 xmm5_0;
and xmm13_0@uint64 xmm5_0n xmm6_0;
not xmm5_1n@uint64 xmm5_1;
and xmm13_1@uint64 xmm5_1n xmm6_1;
(* vpxorq %xmm6,%xmm29,%xmm29                      #! PC = 0x555555584454 *)
xor xmm29_0@uint64 xmm29_0 xmm6_0;
xor xmm29_1@uint64 xmm29_1 xmm6_1;
(* vpandn %xmm8,%xmm6,%xmm6                        #! PC = 0x55555558445a *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm8_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm8_1;
(* vprolq $0x19,%xmm16,%xmm16                      #! PC = 0x55555558445f *)
rol xmm16_0 xmm16_0 0x19;
rol xmm16_1 xmm16_1 0x19;
(* vpandnq %xmm5,%xmm10,%xmm22                     #! PC = 0x555555584466 *)
not xmm10_0n@uint64 xmm10_0;
and xmm22_0@uint64 xmm10_0n xmm5_0;
not xmm10_1n@uint64 xmm10_1;
and xmm22_1@uint64 xmm10_1n xmm5_1;
(* vpxor  %xmm12,%xmm11,%xmm12                     #! PC = 0x55555558446c *)
xor xmm12_0@uint64 xmm11_0 xmm12_0;
xor xmm12_1@uint64 xmm11_1 xmm12_1;
(* vpxor  %xmm5,%xmm6,%xmm5                        #! PC = 0x555555584471 *)
xor xmm5_0@uint64 xmm6_0 xmm5_0;
xor xmm5_1@uint64 xmm6_1 xmm5_1;
(* vpxorq %xmm18,%xmm3,%xmm18                      #! PC = 0x555555584475 *)
xor xmm18_0@uint64 xmm3_0 xmm18_0;
xor xmm18_1@uint64 xmm3_1 xmm18_1;
(* vprolq $0x6,%xmm21,%xmm6                        #! PC = 0x55555558447b *)
rol xmm6_0 xmm21_0 0x6;
rol xmm6_1 xmm21_1 0x6;
(* vprolq $0x12,%xmm18,%xmm18                      #! PC = 0x555555584482 *)
rol xmm18_0 xmm18_0 0x12;
rol xmm18_1 xmm18_1 0x12;
(* vprolq $0x1,%xmm12,%xmm12                       #! PC = 0x555555584489 *)
rol xmm12_0 xmm12_0 0x1;
rol xmm12_1 xmm12_1 0x1;
(* vpandnq %xmm10,%xmm23,%xmm9                     #! PC = 0x555555584490 *)
not xmm23_0n@uint64 xmm23_0;
and xmm9_0@uint64 xmm23_0n xmm10_0;
not xmm23_1n@uint64 xmm23_1;
and xmm9_1@uint64 xmm23_1n xmm10_1;
(* vpxor  %xmm7,%xmm2,%xmm7                        #! PC = 0x555555584496 *)
xor xmm7_0@uint64 xmm2_0 xmm7_0;
xor xmm7_1@uint64 xmm2_1 xmm7_1;
(* vpxor  %xmm10,%xmm13,%xmm10                     #! PC = 0x55555558449a *)
xor xmm10_0@uint64 xmm13_0 xmm10_0;
xor xmm10_1@uint64 xmm13_1 xmm10_1;
(* vmovdqa %xmm10,-0x78(%rsp)                      #! EA = L0x7fffffffdb30; PC = 0x55555558449f *)
mov L0x7fffffffdb30 xmm10_0;
mov L0x7fffffffdb38 xmm10_1;
(* vpshufb 0x15f92(%rip),%xmm7,%xmm10        # 0x55555559a440#! EA = L0x55555559a440; Value = 0x0605040302010007; PC = 0x5555555844a5 *)
call vpshufb128(L0x55555559a440, L0x55555559a448, xmm7_0, xmm7_1, tmp_0, tmp_1);
mov xmm10_0 tmp_0;
mov xmm10_1 tmp_1;
(* vpandnq %xmm16,%xmm6,%xmm21                     #! PC = 0x5555555844ae *)
not xmm6_0n@uint64 xmm6_0;
and xmm21_0@uint64 xmm6_0n xmm16_0;
not xmm6_1n@uint64 xmm6_1;
and xmm21_1@uint64 xmm6_1n xmm16_1;
(* vpxorq %xmm28,%xmm24,%xmm24                     #! PC = 0x5555555844b4 *)
xor xmm24_0@uint64 xmm24_0 xmm28_0;
xor xmm24_1@uint64 xmm24_1 xmm28_1;
(* vpandnq %xmm10,%xmm16,%xmm28                    #! PC = 0x5555555844ba *)
not xmm16_0n@uint64 xmm16_0;
and xmm28_0@uint64 xmm16_0n xmm10_0;
not xmm16_1n@uint64 xmm16_1;
and xmm28_1@uint64 xmm16_1n xmm10_1;
(* vpandnq %xmm12,%xmm18,%xmm7                     #! PC = 0x5555555844c0 *)
not xmm18_0n@uint64 xmm18_0;
and xmm7_0@uint64 xmm18_0n xmm12_0;
not xmm18_1n@uint64 xmm18_1;
and xmm7_1@uint64 xmm18_1n xmm12_1;
(* vpxorq %xmm19,%xmm11,%xmm19                     #! PC = 0x5555555844c6 *)
xor xmm19_0@uint64 xmm11_0 xmm19_0;
xor xmm19_1@uint64 xmm11_1 xmm19_1;
(* vpxorq %xmm12,%xmm21,%xmm21                     #! PC = 0x5555555844cc *)
xor xmm21_0@uint64 xmm21_0 xmm12_0;
xor xmm21_1@uint64 xmm21_1 xmm12_1;
(* vpxorq %xmm6,%xmm28,%xmm28                      #! PC = 0x5555555844d2 *)
xor xmm28_0@uint64 xmm28_0 xmm6_0;
xor xmm28_1@uint64 xmm28_1 xmm6_1;
(* vpandn %xmm6,%xmm12,%xmm12                      #! PC = 0x5555555844d8 *)
not xmm12_0n@uint64 xmm12_0;
and xmm12_0@uint64 xmm12_0n xmm6_0;
not xmm12_1n@uint64 xmm12_1;
and xmm12_1@uint64 xmm12_1n xmm6_1;
(* vpxorq %xmm30,%xmm3,%xmm30                      #! PC = 0x5555555844dc *)
xor xmm30_0@uint64 xmm3_0 xmm30_0;
xor xmm30_1@uint64 xmm3_1 xmm30_1;
(* vpxor  -0x38(%rsp),%xmm2,%xmm6                  #! EA = L0x7fffffffdb70; Value = 0xedd5f671ad52ebea; PC = 0x5555555844e2 *)
xor xmm6_0@uint64 xmm2_0 L0x7fffffffdb70;
xor xmm6_1@uint64 xmm2_1 L0x7fffffffdb78;
(* vprorq $0x1c,%xmm30,%xmm30                      #! PC = 0x5555555844e8 *)
ror xmm30_0 xmm30_0 0x1c;
ror xmm30_1 xmm30_1 0x1c;
(* vpxor  %xmm8,%xmm9,%xmm9                        #! PC = 0x5555555844ef *)
xor xmm9_0@uint64 xmm9_0 xmm8_0;
xor xmm9_1@uint64 xmm9_1 xmm8_1;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x5555555844f4 *)
xor xmm7_0@uint64 xmm7_0 xmm10_0;
xor xmm7_1@uint64 xmm7_1 xmm10_1;
(* vpandnq %xmm18,%xmm10,%xmm8                     #! PC = 0x5555555844f9 *)
not xmm10_0n@uint64 xmm10_0;
and xmm8_0@uint64 xmm10_0n xmm18_0;
not xmm10_1n@uint64 xmm10_1;
and xmm8_1@uint64 xmm10_1n xmm18_1;
(* vprolq $0xa,%xmm19,%xmm10                       #! PC = 0x5555555844ff *)
rol xmm10_0 xmm19_0 0xa;
rol xmm10_1 xmm19_1 0xa;
(* vprolq $0x1b,%xmm6,%xmm6                        #! PC = 0x555555584506 *)
rol xmm6_0 xmm6_0 0x1b;
rol xmm6_1 xmm6_1 0x1b;
(* vpxor  %xmm15,%xmm0,%xmm15                      #! PC = 0x55555558450d *)
xor xmm15_0@uint64 xmm0_0 xmm15_0;
xor xmm15_1@uint64 xmm0_1 xmm15_1;
(* vprolq $0xf,%xmm15,%xmm15                       #! PC = 0x555555584512 *)
rol xmm15_0 xmm15_0 0xf;
rol xmm15_1 xmm15_1 0xf;
(* vpxorq %xmm23,%xmm22,%xmm22                     #! PC = 0x555555584519 *)
xor xmm22_0@uint64 xmm22_0 xmm23_0;
xor xmm22_1@uint64 xmm22_1 xmm23_1;
(* vpxor  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555558451f *)
xor xmm4_0@uint64 xmm1_0 xmm4_0;
xor xmm4_1@uint64 xmm1_1 xmm4_1;
(* vpxorq %xmm18,%xmm12,%xmm23                     #! PC = 0x555555584523 *)
xor xmm23_0@uint64 xmm12_0 xmm18_0;
xor xmm23_1@uint64 xmm12_1 xmm18_1;
(* vpandnq %xmm10,%xmm30,%xmm12                    #! PC = 0x555555584529 *)
not xmm30_0n@uint64 xmm30_0;
and xmm12_0@uint64 xmm30_0n xmm10_0;
not xmm30_1n@uint64 xmm30_1;
and xmm12_1@uint64 xmm30_1n xmm10_1;
(* vpxor  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555558452f *)
xor xmm12_0@uint64 xmm12_0 xmm6_0;
xor xmm12_1@uint64 xmm12_1 xmm6_1;
(* vpshufb 0x15f14(%rip),%xmm4,%xmm4        # 0x55555559a450#! EA = L0x55555559a450; Value = 0x0007060504030201; PC = 0x555555584533 *)
call vpshufb128(L0x55555559a450, L0x55555559a458, xmm4_0, xmm4_1, tmp_0, tmp_1);
mov xmm4_0 tmp_0;
mov xmm4_1 tmp_1;
(* vpxor  -0x28(%rsp),%xmm0,%xmm0                  #! EA = L0x7fffffffdb80; Value = 0xae397629989709f9; PC = 0x55555558453c *)
xor xmm0_0@uint64 xmm0_0 L0x7fffffffdb80;
xor xmm0_1@uint64 xmm0_1 L0x7fffffffdb88;
(* vmovdqa %xmm12,-0x68(%rsp)                      #! EA = L0x7fffffffdb40; PC = 0x555555584542 *)
mov L0x7fffffffdb40 xmm12_0;
mov L0x7fffffffdb48 xmm12_1;
(* vpxorq %xmm31,%xmm1,%xmm1                       #! PC = 0x555555584548 *)
xor xmm1_0@uint64 xmm1_0 xmm31_0;
xor xmm1_1@uint64 xmm1_1 xmm31_1;
(* vpandn %xmm6,%xmm4,%xmm12                       #! PC = 0x55555558454e *)
not xmm4_0n@uint64 xmm4_0;
and xmm12_0@uint64 xmm4_0n xmm6_0;
not xmm4_1n@uint64 xmm4_1;
and xmm12_1@uint64 xmm4_1n xmm6_1;
(* vpxor  %xmm14,%xmm2,%xmm2                       #! PC = 0x555555584552 *)
xor xmm2_0@uint64 xmm2_0 xmm14_0;
xor xmm2_1@uint64 xmm2_1 xmm14_1;
(* vprorq $0x19,%xmm2,%xmm2                        #! PC = 0x555555584557 *)
ror xmm2_0 xmm2_0 0x19;
ror xmm2_1 xmm2_1 0x19;
(* vpandnq %xmm15,%xmm10,%xmm19                    #! PC = 0x55555558455e *)
not xmm10_0n@uint64 xmm10_0;
and xmm19_0@uint64 xmm10_0n xmm15_0;
not xmm10_1n@uint64 xmm10_1;
and xmm19_1@uint64 xmm10_1n xmm15_1;
(* vpandnq %xmm4,%xmm15,%xmm18                     #! PC = 0x555555584564 *)
not xmm15_0n@uint64 xmm15_0;
and xmm18_0@uint64 xmm15_0n xmm4_0;
not xmm15_1n@uint64 xmm15_1;
and xmm18_1@uint64 xmm15_1n xmm4_1;
(* vpxor  %xmm15,%xmm12,%xmm12                     #! PC = 0x55555558456a *)
xor xmm12_0@uint64 xmm12_0 xmm15_0;
xor xmm12_1@uint64 xmm12_1 xmm15_1;
(* vpandnq %xmm30,%xmm6,%xmm6                      #! PC = 0x55555558456f *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm30_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm30_1;
(* vprorq $0x9,%xmm1,%xmm15                        #! PC = 0x555555584575 *)
ror xmm15_0 xmm1_0 0x9;
ror xmm15_1 xmm1_1 0x9;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555558457c *)
xor xmm4_0@uint64 xmm6_0 xmm4_0;
xor xmm4_1@uint64 xmm6_1 xmm4_1;
(* vprorq $0x2,%xmm0,%xmm6                         #! PC = 0x555555584580 *)
ror xmm6_0 xmm0_0 0x2;
ror xmm6_1 xmm0_1 0x2;
(* vpxorq %xmm20,%xmm3,%xmm3                       #! PC = 0x555555584587 *)
xor xmm3_0@uint64 xmm3_0 xmm20_0;
xor xmm3_1@uint64 xmm3_1 xmm20_1;
(* vpxorq %xmm25,%xmm11,%xmm11                     #! PC = 0x55555558458d *)
xor xmm11_0@uint64 xmm11_0 xmm25_0;
xor xmm11_1@uint64 xmm11_1 xmm25_1;
(* vprolq $0x2,%xmm11,%xmm11                       #! PC = 0x555555584593 *)
rol xmm11_0 xmm11_0 0x2;
rol xmm11_1 xmm11_1 0x2;
(* vpxorq %xmm10,%xmm18,%xmm18                     #! PC = 0x55555558459a *)
xor xmm18_0@uint64 xmm18_0 xmm10_0;
xor xmm18_1@uint64 xmm18_1 xmm10_1;
(* vprorq $0x17,%xmm3,%xmm10                       #! PC = 0x5555555845a0 *)
ror xmm10_0 xmm3_0 0x17;
ror xmm10_1 xmm3_1 0x17;
(* vpxorq %xmm16,%xmm8,%xmm8                       #! PC = 0x5555555845a7 *)
xor xmm8_0@uint64 xmm8_0 xmm16_0;
xor xmm8_1@uint64 xmm8_1 xmm16_1;
(* vpandnq %xmm2,%xmm15,%xmm16                     #! PC = 0x5555555845ad *)
not xmm15_0n@uint64 xmm15_0;
and xmm16_0@uint64 xmm15_0n xmm2_0;
not xmm15_1n@uint64 xmm15_1;
and xmm16_1@uint64 xmm15_1n xmm2_1;
(* vpxorq %xmm6,%xmm16,%xmm16                      #! PC = 0x5555555845b3 *)
xor xmm16_0@uint64 xmm16_0 xmm6_0;
xor xmm16_1@uint64 xmm16_1 xmm6_1;
(* vpxorq -0x68(%rsp),%xmm16,%xmm0                 #! EA = L0x7fffffffdb40; Value = 0x986ec46e7d6fbe2e; PC = 0x5555555845b9 *)
xor xmm0_0@uint64 xmm16_0 L0x7fffffffdb40;
xor xmm0_1@uint64 xmm16_1 L0x7fffffffdb48;
(* vmovdqa64 %xmm26,-0x48(%rsp)                    #! EA = L0x7fffffffdb60; PC = 0x5555555845c4 *)
mov L0x7fffffffdb60 xmm26_0;
mov L0x7fffffffdb68 xmm26_1;
(* vpxorq %xmm29,%xmm21,%xmm13                     #! PC = 0x5555555845cf *)
xor xmm13_0@uint64 xmm21_0 xmm29_0;
xor xmm13_1@uint64 xmm21_1 xmm29_1;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x5555555845d5 *)
xor xmm13_0@uint64 xmm13_0 xmm0_0;
xor xmm13_1@uint64 xmm13_1 xmm0_1;
(* vpxorq %xmm30,%xmm19,%xmm19                     #! PC = 0x5555555845d9 *)
xor xmm19_0@uint64 xmm19_0 xmm30_0;
xor xmm19_1@uint64 xmm19_1 xmm30_1;
(* vpxor  -0x48(%rsp),%xmm9,%xmm0                  #! EA = L0x7fffffffdb60; Value = 0xb36f81388084ea7c; PC = 0x5555555845df *)
xor xmm0_0@uint64 xmm9_0 L0x7fffffffdb60;
xor xmm0_1@uint64 xmm9_1 L0x7fffffffdb68;
(* vpxorq %xmm19,%xmm28,%xmm1                      #! PC = 0x5555555845e5 *)
xor xmm1_0@uint64 xmm28_0 xmm19_0;
xor xmm1_1@uint64 xmm28_1 xmm19_1;
(* vpandn %xmm6,%xmm11,%xmm3                       #! PC = 0x5555555845eb *)
not xmm11_0n@uint64 xmm11_0;
and xmm3_0@uint64 xmm11_0n xmm6_0;
not xmm11_1n@uint64 xmm11_1;
and xmm3_1@uint64 xmm11_1n xmm6_1;
(* vpandn %xmm11,%xmm10,%xmm14                     #! PC = 0x5555555845ef *)
not xmm10_0n@uint64 xmm10_0;
and xmm14_0@uint64 xmm10_0n xmm11_0;
not xmm10_1n@uint64 xmm10_1;
and xmm14_1@uint64 xmm10_1n xmm11_1;
(* vpandnq %xmm10,%xmm2,%xmm26                     #! PC = 0x5555555845f4 *)
not xmm2_0n@uint64 xmm2_0;
and xmm26_0@uint64 xmm2_0n xmm10_0;
not xmm2_1n@uint64 xmm2_1;
and xmm26_1@uint64 xmm2_1n xmm10_1;
(* vpxor  %xmm1,%xmm0,%xmm0                        #! PC = 0x5555555845fa *)
xor xmm0_0@uint64 xmm0_0 xmm1_0;
xor xmm0_1@uint64 xmm0_1 xmm1_1;
(* vpxor  %xmm2,%xmm14,%xmm14                      #! PC = 0x5555555845fe *)
xor xmm14_0@uint64 xmm14_0 xmm2_0;
xor xmm14_1@uint64 xmm14_1 xmm2_1;
(* vpxorq -0x78(%rsp),%xmm24,%xmm20                #! EA = L0x7fffffffdb30; Value = 0x19f30a52c3976518; PC = 0x555555584602 *)
xor xmm20_0@uint64 xmm24_0 L0x7fffffffdb30;
xor xmm20_1@uint64 xmm24_1 L0x7fffffffdb38;
(* vpxorq %xmm18,%xmm8,%xmm2                       #! PC = 0x55555558460d *)
xor xmm2_0@uint64 xmm8_0 xmm18_0;
xor xmm2_1@uint64 xmm8_1 xmm18_1;
(* vpxorq %xmm17,%xmm22,%xmm1                      #! PC = 0x555555584613 *)
xor xmm1_0@uint64 xmm22_0 xmm17_0;
xor xmm1_1@uint64 xmm22_1 xmm17_1;
(* vpxor  %xmm10,%xmm3,%xmm3                       #! PC = 0x555555584619 *)
xor xmm3_0@uint64 xmm3_0 xmm10_0;
xor xmm3_1@uint64 xmm3_1 xmm10_1;
(* vpxor  %xmm2,%xmm1,%xmm1                        #! PC = 0x55555558461e *)
xor xmm1_0@uint64 xmm1_0 xmm2_0;
xor xmm1_1@uint64 xmm1_1 xmm2_1;
(* vpandn %xmm15,%xmm6,%xmm6                       #! PC = 0x555555584622 *)
not xmm6_0n@uint64 xmm6_0;
and xmm6_0@uint64 xmm6_0n xmm15_0;
not xmm6_1n@uint64 xmm6_1;
and xmm6_1@uint64 xmm6_1n xmm15_1;
(* vpxor  %xmm3,%xmm12,%xmm2                       #! PC = 0x555555584627 *)
xor xmm2_0@uint64 xmm12_0 xmm3_0;
xor xmm2_1@uint64 xmm12_1 xmm3_1;
(* vpxorq %xmm15,%xmm26,%xmm26                     #! PC = 0x55555558462b *)
xor xmm26_0@uint64 xmm26_0 xmm15_0;
xor xmm26_1@uint64 xmm26_1 xmm15_1;
(* vpxorq %xmm2,%xmm20,%xmm20                      #! PC = 0x555555584631 *)
xor xmm20_0@uint64 xmm20_0 xmm2_0;
xor xmm20_1@uint64 xmm20_1 xmm2_1;
(* vpxor  %xmm11,%xmm6,%xmm15                      #! PC = 0x555555584637 *)
xor xmm15_0@uint64 xmm6_0 xmm11_0;
xor xmm15_1@uint64 xmm6_1 xmm11_1;
(* vpxor  -0x58(%rsp),%xmm5,%xmm2                  #! EA = L0x7fffffffdb50; Value = 0x80690591da7156c4; PC = 0x55555558463c *)
xor xmm2_0@uint64 xmm5_0 L0x7fffffffdb50;
xor xmm2_1@uint64 xmm5_1 L0x7fffffffdb58;
(* vmovdqa64 %xmm23,%xmm6                          #! PC = 0x555555584642 *)
mov xmm6_0 xmm23_0;
mov xmm6_1 xmm23_1;
(* vpxor  %xmm6,%xmm15,%xmm6                       #! PC = 0x555555584648 *)
xor xmm6_0@uint64 xmm15_0 xmm6_0;
xor xmm6_1@uint64 xmm15_1 xmm6_1;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555558464c *)
xor xmm2_0@uint64 xmm2_0 xmm6_0;
xor xmm2_1@uint64 xmm2_1 xmm6_1;
(* vmovdqa64 %xmm17,-0x8(%rsp)                     #! EA = L0x7fffffffdba0; PC = 0x555555584650 *)
mov L0x7fffffffdba0 xmm17_0;
mov L0x7fffffffdba8 xmm17_1;
(* vmovdqa64 %xmm23,-0x18(%rsp)                    #! EA = L0x7fffffffdb90; PC = 0x55555558465b *)
mov L0x7fffffffdb90 xmm23_0;
mov L0x7fffffffdb98 xmm23_1;
(* vpxorq %xmm27,%xmm13,%xmm13                     #! PC = 0x555555584666 *)
xor xmm13_0@uint64 xmm13_0 xmm27_0;
xor xmm13_1@uint64 xmm13_1 xmm27_1;
(* vpxorq %xmm26,%xmm0,%xmm0                       #! PC = 0x55555558466c *)
xor xmm0_0@uint64 xmm0_0 xmm26_0;
xor xmm0_1@uint64 xmm0_1 xmm26_1;
(* vpxor  %xmm14,%xmm1,%xmm1                       #! PC = 0x555555584672 *)
xor xmm1_0@uint64 xmm1_0 xmm14_0;
xor xmm1_1@uint64 xmm1_1 xmm14_1;
(* vpxorq %xmm7,%xmm20,%xmm20                      #! PC = 0x555555584677 *)
xor xmm20_0@uint64 xmm20_0 xmm7_0;
xor xmm20_1@uint64 xmm20_1 xmm7_1;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555558467d *)
xor xmm2_0@uint64 xmm2_0 xmm4_0;
xor xmm2_1@uint64 xmm2_1 xmm4_1;
(* #jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! PC = 0x555555584684 *)
#jne    0x555555584020 <KeccakP1600times2_PermuteAll_24rounds+384>#! 0x555555584684 = 0x555555584684;
(* vmovdqa -0x48(%rsp),%xmm1                       #! EA = L0x7fffffffdb60; Value = 0xb36f81388084ea7c; PC = 0x55555558468a *)
mov xmm1_0 L0x7fffffffdb60;
mov xmm1_1 L0x7fffffffdb68;
(* vmovdqa %xmm7,0xd0(%rdi)                        #! EA = L0x7fffffffdc90; PC = 0x555555584690 *)
mov L0x7fffffffdc90 xmm7_0;
mov L0x7fffffffdc98 xmm7_1;
(* vmovdqa %xmm1,0x10(%rdi)                        #! EA = L0x7fffffffdbd0; PC = 0x555555584698 *)
mov L0x7fffffffdbd0 xmm1_0;
mov L0x7fffffffdbd8 xmm1_1;
(* vmovdqa -0x8(%rsp),%xmm1                        #! EA = L0x7fffffffdba0; Value = 0xa0580a98eb7bbeb7; PC = 0x55555558469d *)
mov xmm1_0 L0x7fffffffdba0;
mov xmm1_1 L0x7fffffffdba8;
(* vmovdqa -0x18(%rsp),%xmm7                       #! EA = L0x7fffffffdb90; Value = 0xafef83d7831189c7; PC = 0x5555555846a3 *)
mov xmm7_0 L0x7fffffffdb90;
mov xmm7_1 L0x7fffffffdb98;
(* vmovdqa %xmm1,0x20(%rdi)                        #! EA = L0x7fffffffdbe0; PC = 0x5555555846a9 *)
mov L0x7fffffffdbe0 xmm1_0;
mov L0x7fffffffdbe8 xmm1_1;
(* vmovdqa -0x58(%rsp),%xmm1                       #! EA = L0x7fffffffdb50; Value = 0x80690591da7156c4; PC = 0x5555555846ae *)
mov xmm1_0 L0x7fffffffdb50;
mov xmm1_1 L0x7fffffffdb58;
(* vmovdqa %xmm7,0xe0(%rdi)                        #! EA = L0x7fffffffdca0; PC = 0x5555555846b4 *)
mov L0x7fffffffdca0 xmm7_0;
mov L0x7fffffffdca8 xmm7_1;
(* vmovdqa %xmm1,0x40(%rdi)                        #! EA = L0x7fffffffdc00; PC = 0x5555555846bc *)
mov L0x7fffffffdc00 xmm1_0;
mov L0x7fffffffdc08 xmm1_1;
(* vmovdqa -0x68(%rsp),%xmm7                       #! EA = L0x7fffffffdb40; Value = 0x986ec46e7d6fbe2e; PC = 0x5555555846c1 *)
mov xmm7_0 L0x7fffffffdb40;
mov xmm7_1 L0x7fffffffdb48;
(* vmovdqa -0x78(%rsp),%xmm1                       #! EA = L0x7fffffffdb30; Value = 0x19f30a52c3976518; PC = 0x5555555846c7 *)
mov xmm1_0 L0x7fffffffdb30;
mov xmm1_1 L0x7fffffffdb38;
(* vmovdqa64 %xmm27,(%rdi)                         #! EA = L0x7fffffffdbc0; PC = 0x5555555846cd *)
mov L0x7fffffffdbc0 xmm27_0;
mov L0x7fffffffdbc8 xmm27_1;
(* vmovdqa64 %xmm24,0x30(%rdi)                     #! EA = L0x7fffffffdbf0; PC = 0x5555555846d3 *)
mov L0x7fffffffdbf0 xmm24_0;
mov L0x7fffffffdbf8 xmm24_1;
(* vmovdqa64 %xmm29,0x50(%rdi)                     #! EA = L0x7fffffffdc10; PC = 0x5555555846da *)
mov L0x7fffffffdc10 xmm29_0;
mov L0x7fffffffdc18 xmm29_1;
(* vmovdqa %xmm9,0x60(%rdi)                        #! EA = L0x7fffffffdc20; PC = 0x5555555846e1 *)
mov L0x7fffffffdc20 xmm9_0;
mov L0x7fffffffdc28 xmm9_1;
(* vmovdqa64 %xmm22,0x70(%rdi)                     #! EA = L0x7fffffffdc30; PC = 0x5555555846e6 *)
mov L0x7fffffffdc30 xmm22_0;
mov L0x7fffffffdc38 xmm22_1;
(* vmovdqa %xmm1,0x80(%rdi)                        #! EA = L0x7fffffffdc40; PC = 0x5555555846ed *)
mov L0x7fffffffdc40 xmm1_0;
mov L0x7fffffffdc48 xmm1_1;
(* vmovdqa %xmm5,0x90(%rdi)                        #! EA = L0x7fffffffdc50; PC = 0x5555555846f5 *)
mov L0x7fffffffdc50 xmm5_0;
mov L0x7fffffffdc58 xmm5_1;
(* vmovdqa64 %xmm21,0xa0(%rdi)                     #! EA = L0x7fffffffdc60; PC = 0x5555555846fd *)
mov L0x7fffffffdc60 xmm21_0;
mov L0x7fffffffdc68 xmm21_1;
(* vmovdqa64 %xmm28,0xb0(%rdi)                     #! EA = L0x7fffffffdc70; PC = 0x555555584704 *)
mov L0x7fffffffdc70 xmm28_0;
mov L0x7fffffffdc78 xmm28_1;
(* vmovdqa %xmm8,0xc0(%rdi)                        #! EA = L0x7fffffffdc80; PC = 0x55555558470b *)
mov L0x7fffffffdc80 xmm8_0;
mov L0x7fffffffdc88 xmm8_1;
(* vmovdqa %xmm7,0xf0(%rdi)                        #! EA = L0x7fffffffdcb0; PC = 0x555555584713 *)
mov L0x7fffffffdcb0 xmm7_0;
mov L0x7fffffffdcb8 xmm7_1;
(* vmovdqa64 %xmm19,0x100(%rdi)                    #! EA = L0x7fffffffdcc0; PC = 0x55555558471b *)
mov L0x7fffffffdcc0 xmm19_0;
mov L0x7fffffffdcc8 xmm19_1;
(* vmovdqa64 %xmm18,0x110(%rdi)                    #! EA = L0x7fffffffdcd0; PC = 0x555555584722 *)
mov L0x7fffffffdcd0 xmm18_0;
mov L0x7fffffffdcd8 xmm18_1;
(* vmovdqa %xmm12,0x120(%rdi)                      #! EA = L0x7fffffffdce0; PC = 0x555555584729 *)
mov L0x7fffffffdce0 xmm12_0;
mov L0x7fffffffdce8 xmm12_1;
(* vmovdqa %xmm4,0x130(%rdi)                       #! EA = L0x7fffffffdcf0; PC = 0x555555584731 *)
mov L0x7fffffffdcf0 xmm4_0;
mov L0x7fffffffdcf8 xmm4_1;
(* vmovdqa64 %xmm16,0x140(%rdi)                    #! EA = L0x7fffffffdd00; PC = 0x555555584739 *)
mov L0x7fffffffdd00 xmm16_0;
mov L0x7fffffffdd08 xmm16_1;
(* vmovdqa64 %xmm26,0x150(%rdi)                    #! EA = L0x7fffffffdd10; PC = 0x555555584740 *)
mov L0x7fffffffdd10 xmm26_0;
mov L0x7fffffffdd18 xmm26_1;
(* vmovdqa %xmm14,0x160(%rdi)                      #! EA = L0x7fffffffdd20; PC = 0x555555584747 *)
mov L0x7fffffffdd20 xmm14_0;
mov L0x7fffffffdd28 xmm14_1;
(* vmovdqa %xmm3,0x170(%rdi)                       #! EA = L0x7fffffffdd30; PC = 0x55555558474f *)
mov L0x7fffffffdd30 xmm3_0;
mov L0x7fffffffdd38 xmm3_1;
(* vmovdqa %xmm15,0x180(%rdi)                      #! EA = L0x7fffffffdd40; PC = 0x555555584757 *)
mov L0x7fffffffdd40 xmm15_0;
mov L0x7fffffffdd48 xmm15_1;
(* add    $0x10,%rsp                               #! PC = 0x55555558475f *)
adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* #ret                                            #! PC = 0x555555584763 *)
#ret                                            #! 0x555555584763 = 0x555555584763;

(* ===== Outputs ===== *)

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

{
  true
  &&
  true
}

