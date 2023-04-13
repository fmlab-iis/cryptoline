(* popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.042743 seconds
Checking well-formedness:               [OK]            0.016107 seconds
Parsing CryptoLine file:                [OK]            0.013517 seconds
Checking well-formedness:               [OK]            0.006557 seconds
Equivalence of output group #0:         [OK]            256.871849 seconds
Final result:                           [OK]            257.736944 seconds
*)
(* csweep popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.043567 seconds
Checking well-formedness:               [OK]            0.015743 seconds
Parsing CryptoLine file:                [OK]            0.013428 seconds
Checking well-formedness:               [OK]            0.006505 seconds
Equivalence of output group #0:         [OK]            241.804268 seconds
Final result:                           [OK]            242.726270 seconds
*)

(* cv_cec.exe -v -ov1 a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 -ov2 output00,output01,output02,output03,output04,output05,output06,output07,output08,output09,output10,output11,output12,output13,output14,output15,output16,output17,output18,output19,output20,output21,output22,output23,output24 KeccakF1600.cl ../../../../../llvm2cryptoline/examples/XKCP/ref-64bits-fc23735/KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.073003 seconds
Checking well-formedness:               [OK]            0.023198 seconds
Parsing CryptoLine file:                [OK]            0.016888 seconds
Checking well-formedness:               [OK]            0.007423 seconds
Equivalence of output group #0:         [OK]            466.888512 seconds
Final result:                           [OK]            468.813283 seconds
*)

(* quine: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../x86_64/KeccakF1600.cl
Parsing CryptoLine file:                [OK]            0.074636 seconds
Checking well-formedness:               [OK]            0.023671 seconds
Parsing CryptoLine file:                [OK]            0.037113 seconds
Checking well-formedness:               [OK]            0.006185 seconds
Equivalence of output group #0:         [OK]            9089.871444 seconds
Final result:                           [OK]            9091.762337 seconds
*)

proc main (
uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44
) =
{ true && true }

(* from keccak1600-avx2.pl
my ($A00,   # [0][0] [0][0] [0][0] [0][0]           # %ymm0
    $A01,   # [0][4] [0][3] [0][2] [0][1]           # %ymm1
    $A20,   # [3][0] [1][0] [4][0] [2][0]           # %ymm2
    $A31,   # [2][4] [4][3] [1][2] [3][1]           # %ymm3
    $A21,   # [3][4] [1][3] [4][2] [2][1]           # %ymm4
    $A41,   # [1][4] [2][3] [3][2] [4][1]           # %ymm5
    $A11) = # [4][4] [3][3] [2][2] [1][1]           # %ymm6
*)

mov ymm0_0 A00; mov ymm0_1 A00; mov ymm0_2 A00; mov ymm0_3 A00;
mov ymm1_0 A01; mov ymm1_1 A02; mov ymm1_2 A03; mov ymm1_3 A04;
mov ymm2_0 A20; mov ymm2_1 A40; mov ymm2_2 A10; mov ymm2_3 A30;
mov ymm3_0 A31; mov ymm3_1 A12; mov ymm3_2 A43; mov ymm3_3 A24;
mov ymm4_0 A21; mov ymm4_1 A42; mov ymm4_2 A13; mov ymm4_3 A34;
mov ymm5_0 A41; mov ymm5_1 A32; mov ymm5_2 A23; mov ymm5_3 A14;
mov ymm6_0 A11; mov ymm6_1 A22; mov ymm6_2 A33; mov ymm6_3 A44;

nondet r10@uint64;

mov L0x555555555a80 0x0000000000000003@uint64; mov L0x555555555a88 0x0000000000000012@uint64;
mov L0x555555555a90 0x0000000000000024@uint64; mov L0x555555555a98 0x0000000000000029@uint64;
mov L0x555555555aa0 0x0000000000000001@uint64; mov L0x555555555aa8 0x000000000000003e@uint64;
mov L0x555555555ab0 0x000000000000001c@uint64; mov L0x555555555ab8 0x000000000000001b@uint64;
mov L0x555555555ac0 0x000000000000002d@uint64; mov L0x555555555ac8 0x0000000000000006@uint64;
mov L0x555555555ad0 0x0000000000000038@uint64; mov L0x555555555ad8 0x0000000000000027@uint64;
mov L0x555555555ae0 0x000000000000000a@uint64; mov L0x555555555ae8 0x000000000000003d@uint64;
mov L0x555555555af0 0x0000000000000037@uint64; mov L0x555555555af8 0x0000000000000008@uint64;
mov L0x555555555b00 0x0000000000000002@uint64; mov L0x555555555b08 0x000000000000000f@uint64;
mov L0x555555555b10 0x0000000000000019@uint64; mov L0x555555555b18 0x0000000000000014@uint64;
mov L0x555555555b20 0x000000000000002c@uint64; mov L0x555555555b28 0x000000000000002b@uint64;
mov L0x555555555b30 0x0000000000000015@uint64; mov L0x555555555b38 0x000000000000000e@uint64;
mov L0x555555555b40 0x000000000000003d@uint64; mov L0x555555555b48 0x000000000000002e@uint64;
mov L0x555555555b50 0x000000000000001c@uint64; mov L0x555555555b58 0x0000000000000017@uint64;
mov L0x555555555b60 0x000000000000003f@uint64; mov L0x555555555b68 0x0000000000000002@uint64;
mov L0x555555555b70 0x0000000000000024@uint64; mov L0x555555555b78 0x0000000000000025@uint64;
mov L0x555555555b80 0x0000000000000013@uint64; mov L0x555555555b88 0x000000000000003a@uint64;
mov L0x555555555b90 0x0000000000000008@uint64; mov L0x555555555b98 0x0000000000000019@uint64;
mov L0x555555555ba0 0x0000000000000036@uint64; mov L0x555555555ba8 0x0000000000000003@uint64;
mov L0x555555555bb0 0x0000000000000009@uint64; mov L0x555555555bb8 0x0000000000000038@uint64;
mov L0x555555555bc0 0x000000000000003e@uint64; mov L0x555555555bc8 0x0000000000000031@uint64;
mov L0x555555555bd0 0x0000000000000027@uint64; mov L0x555555555bd8 0x000000000000002c@uint64;
mov L0x555555555be0 0x0000000000000014@uint64; mov L0x555555555be8 0x0000000000000015@uint64;
mov L0x555555555bf0 0x000000000000002b@uint64; mov L0x555555555bf8 0x0000000000000032@uint64;
mov L0x555555555c00 0x0000000000000001@uint64; mov L0x555555555c08 0x0000000000000001@uint64;
mov L0x555555555c10 0x0000000000000001@uint64; mov L0x555555555c18 0x0000000000000001@uint64;
mov L0x555555555c20 0x0000000000008082@uint64; mov L0x555555555c28 0x0000000000008082@uint64;
mov L0x555555555c30 0x0000000000008082@uint64; mov L0x555555555c38 0x0000000000008082@uint64;
mov L0x555555555c40 0x800000000000808a@uint64; mov L0x555555555c48 0x800000000000808a@uint64;
mov L0x555555555c50 0x800000000000808a@uint64; mov L0x555555555c58 0x800000000000808a@uint64;
mov L0x555555555c60 0x8000000080008000@uint64; mov L0x555555555c68 0x8000000080008000@uint64;
mov L0x555555555c70 0x8000000080008000@uint64; mov L0x555555555c78 0x8000000080008000@uint64;
mov L0x555555555c80 0x000000000000808b@uint64; mov L0x555555555c88 0x000000000000808b@uint64;
mov L0x555555555c90 0x000000000000808b@uint64; mov L0x555555555c98 0x000000000000808b@uint64;
mov L0x555555555ca0 0x0000000080000001@uint64; mov L0x555555555ca8 0x0000000080000001@uint64;
mov L0x555555555cb0 0x0000000080000001@uint64; mov L0x555555555cb8 0x0000000080000001@uint64;
mov L0x555555555cc0 0x8000000080008081@uint64; mov L0x555555555cc8 0x8000000080008081@uint64;
mov L0x555555555cd0 0x8000000080008081@uint64; mov L0x555555555cd8 0x8000000080008081@uint64;
mov L0x555555555ce0 0x8000000000008009@uint64; mov L0x555555555ce8 0x8000000000008009@uint64;
mov L0x555555555cf0 0x8000000000008009@uint64; mov L0x555555555cf8 0x8000000000008009@uint64;
mov L0x555555555d00 0x000000000000008a@uint64; mov L0x555555555d08 0x000000000000008a@uint64;
mov L0x555555555d10 0x000000000000008a@uint64; mov L0x555555555d18 0x000000000000008a@uint64;
mov L0x555555555d20 0x0000000000000088@uint64; mov L0x555555555d28 0x0000000000000088@uint64;
mov L0x555555555d30 0x0000000000000088@uint64; mov L0x555555555d38 0x0000000000000088@uint64;
mov L0x555555555d40 0x0000000080008009@uint64; mov L0x555555555d48 0x0000000080008009@uint64;
mov L0x555555555d50 0x0000000080008009@uint64; mov L0x555555555d58 0x0000000080008009@uint64;
mov L0x555555555d60 0x000000008000000a@uint64; mov L0x555555555d68 0x000000008000000a@uint64;
mov L0x555555555d70 0x000000008000000a@uint64; mov L0x555555555d78 0x000000008000000a@uint64;
mov L0x555555555d80 0x000000008000808b@uint64; mov L0x555555555d88 0x000000008000808b@uint64;
mov L0x555555555d90 0x000000008000808b@uint64; mov L0x555555555d98 0x000000008000808b@uint64;
mov L0x555555555da0 0x800000000000008b@uint64; mov L0x555555555da8 0x800000000000008b@uint64;
mov L0x555555555db0 0x800000000000008b@uint64; mov L0x555555555db8 0x800000000000008b@uint64;
mov L0x555555555dc0 0x8000000000008089@uint64; mov L0x555555555dc8 0x8000000000008089@uint64;
mov L0x555555555dd0 0x8000000000008089@uint64; mov L0x555555555dd8 0x8000000000008089@uint64;
mov L0x555555555de0 0x8000000000008003@uint64; mov L0x555555555de8 0x8000000000008003@uint64;
mov L0x555555555df0 0x8000000000008003@uint64; mov L0x555555555df8 0x8000000000008003@uint64;
mov L0x555555555e00 0x8000000000008002@uint64; mov L0x555555555e08 0x8000000000008002@uint64;
mov L0x555555555e10 0x8000000000008002@uint64; mov L0x555555555e18 0x8000000000008002@uint64;
mov L0x555555555e20 0x8000000000000080@uint64; mov L0x555555555e28 0x8000000000000080@uint64;
mov L0x555555555e30 0x8000000000000080@uint64; mov L0x555555555e38 0x8000000000000080@uint64;
mov L0x555555555e40 0x000000000000800a@uint64; mov L0x555555555e48 0x000000000000800a@uint64;
mov L0x555555555e50 0x000000000000800a@uint64; mov L0x555555555e58 0x000000000000800a@uint64;
mov L0x555555555e60 0x800000008000000a@uint64; mov L0x555555555e68 0x800000008000000a@uint64;
mov L0x555555555e70 0x800000008000000a@uint64; mov L0x555555555e78 0x800000008000000a@uint64;
mov L0x555555555e80 0x8000000080008081@uint64; mov L0x555555555e88 0x8000000080008081@uint64;
mov L0x555555555e90 0x8000000080008081@uint64; mov L0x555555555e98 0x8000000080008081@uint64;
mov L0x555555555ea0 0x8000000000008080@uint64; mov L0x555555555ea8 0x8000000000008080@uint64;
mov L0x555555555eb0 0x8000000000008080@uint64; mov L0x555555555eb8 0x8000000000008080@uint64;
mov L0x555555555ec0 0x0000000080000001@uint64; mov L0x555555555ec8 0x0000000080000001@uint64;
mov L0x555555555ed0 0x0000000080000001@uint64; mov L0x555555555ed8 0x0000000080000001@uint64;
mov L0x555555555ee0 0x8000000080008008@uint64; mov L0x555555555ee8 0x8000000080008008@uint64;
mov L0x555555555ef0 0x8000000080008008@uint64; mov L0x555555555ef8 0x8000000080008008@uint64;


(* #! -> SP = 0x7fffffffd960 *)
#! 0x7fffffffd960 = 0x7fffffffd960;
(* #lea    0x8d9(%rip),%r8        # 0x555555555ae0 <rhotates_left+96>#! PC = 0x555555555200 *)
#lea    0x8d9(%rip),%r8        # 0x555555555ae0 <rhotates_left+96>#! 0x555555555200 = 0x555555555200;
(* #lea    0x992(%rip),%r9        # 0x555555555ba0 <rhotates_right+96>#! PC = 0x555555555207 *)
#lea    0x992(%rip),%r9        # 0x555555555ba0 <rhotates_right+96>#! 0x555555555207 = 0x555555555207;
(* #lea    0x9eb(%rip),%r10        # 0x555555555c00 <iotas>#! PC = 0x55555555520e *)
#lea    0x9eb(%rip),%r10        # 0x555555555c00 <iotas>#! 0x55555555520e = 0x55555555520e;
(* mov    $0x18,%eax                               #! PC = 0x555555555215 *)
mov eax 0x18@uint64;
(* #jmp    0x555555555220 <__KeccakF1600+32>       #! PC = 0x55555555521a *)
#jmp    0x555555555220 <__KeccakF1600+32>       #! 0x55555555521a = 0x55555555521a;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555c00; Value = 0x0000000000000001; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555c00; xor ymm0_1@uint64 ymm0_1 L0x555555555c08;
xor ymm0_2@uint64 ymm0_2 L0x555555555c10; xor ymm0_3@uint64 ymm0_3 L0x555555555c18;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555c20; Value = 0x0000000000008082; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555c20; xor ymm0_1@uint64 ymm0_1 L0x555555555c28;
xor ymm0_2@uint64 ymm0_2 L0x555555555c30; xor ymm0_3@uint64 ymm0_3 L0x555555555c38;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555c40; Value = 0x800000000000808a; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555c40; xor ymm0_1@uint64 ymm0_1 L0x555555555c48;
xor ymm0_2@uint64 ymm0_2 L0x555555555c50; xor ymm0_3@uint64 ymm0_3 L0x555555555c58;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555c60; Value = 0x8000000080008000; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555c60; xor ymm0_1@uint64 ymm0_1 L0x555555555c68;
xor ymm0_2@uint64 ymm0_2 L0x555555555c70; xor ymm0_3@uint64 ymm0_3 L0x555555555c78;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555c80; Value = 0x000000000000808b; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555c80; xor ymm0_1@uint64 ymm0_1 L0x555555555c88;
xor ymm0_2@uint64 ymm0_2 L0x555555555c90; xor ymm0_3@uint64 ymm0_3 L0x555555555c98;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555ca0; Value = 0x0000000080000001; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555ca0; xor ymm0_1@uint64 ymm0_1 L0x555555555ca8;
xor ymm0_2@uint64 ymm0_2 L0x555555555cb0; xor ymm0_3@uint64 ymm0_3 L0x555555555cb8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555cc0; Value = 0x8000000080008081; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555cc0; xor ymm0_1@uint64 ymm0_1 L0x555555555cc8;
xor ymm0_2@uint64 ymm0_2 L0x555555555cd0; xor ymm0_3@uint64 ymm0_3 L0x555555555cd8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555ce0; Value = 0x8000000000008009; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555ce0; xor ymm0_1@uint64 ymm0_1 L0x555555555ce8;
xor ymm0_2@uint64 ymm0_2 L0x555555555cf0; xor ymm0_3@uint64 ymm0_3 L0x555555555cf8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555d00; Value = 0x000000000000008a; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555d00; xor ymm0_1@uint64 ymm0_1 L0x555555555d08;
xor ymm0_2@uint64 ymm0_2 L0x555555555d10; xor ymm0_3@uint64 ymm0_3 L0x555555555d18;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555d20; Value = 0x0000000000000088; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555d20; xor ymm0_1@uint64 ymm0_1 L0x555555555d28;
xor ymm0_2@uint64 ymm0_2 L0x555555555d30; xor ymm0_3@uint64 ymm0_3 L0x555555555d38;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555d40; Value = 0x0000000080008009; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555d40; xor ymm0_1@uint64 ymm0_1 L0x555555555d48;
xor ymm0_2@uint64 ymm0_2 L0x555555555d50; xor ymm0_3@uint64 ymm0_3 L0x555555555d58;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555d60; Value = 0x000000008000000a; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555d60; xor ymm0_1@uint64 ymm0_1 L0x555555555d68;
xor ymm0_2@uint64 ymm0_2 L0x555555555d70; xor ymm0_3@uint64 ymm0_3 L0x555555555d78;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555d80; Value = 0x000000008000808b; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555d80; xor ymm0_1@uint64 ymm0_1 L0x555555555d88;
xor ymm0_2@uint64 ymm0_2 L0x555555555d90; xor ymm0_3@uint64 ymm0_3 L0x555555555d98;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555da0; Value = 0x800000000000008b; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555da0; xor ymm0_1@uint64 ymm0_1 L0x555555555da8;
xor ymm0_2@uint64 ymm0_2 L0x555555555db0; xor ymm0_3@uint64 ymm0_3 L0x555555555db8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555dc0; Value = 0x8000000000008089; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555dc0; xor ymm0_1@uint64 ymm0_1 L0x555555555dc8;
xor ymm0_2@uint64 ymm0_2 L0x555555555dd0; xor ymm0_3@uint64 ymm0_3 L0x555555555dd8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555de0; Value = 0x8000000000008003; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555de0; xor ymm0_1@uint64 ymm0_1 L0x555555555de8;
xor ymm0_2@uint64 ymm0_2 L0x555555555df0; xor ymm0_3@uint64 ymm0_3 L0x555555555df8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555e00; Value = 0x8000000000008002; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555e00; xor ymm0_1@uint64 ymm0_1 L0x555555555e08;
xor ymm0_2@uint64 ymm0_2 L0x555555555e10; xor ymm0_3@uint64 ymm0_3 L0x555555555e18;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555e20; Value = 0x8000000000000080; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555e20; xor ymm0_1@uint64 ymm0_1 L0x555555555e28;
xor ymm0_2@uint64 ymm0_2 L0x555555555e30; xor ymm0_3@uint64 ymm0_3 L0x555555555e38;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555e40; Value = 0x000000000000800a; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555e40; xor ymm0_1@uint64 ymm0_1 L0x555555555e48;
xor ymm0_2@uint64 ymm0_2 L0x555555555e50; xor ymm0_3@uint64 ymm0_3 L0x555555555e58;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555e60; Value = 0x800000008000000a; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555e60; xor ymm0_1@uint64 ymm0_1 L0x555555555e68;
xor ymm0_2@uint64 ymm0_2 L0x555555555e70; xor ymm0_3@uint64 ymm0_3 L0x555555555e78;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555e80; Value = 0x8000000080008081; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555e80; xor ymm0_1@uint64 ymm0_1 L0x555555555e88;
xor ymm0_2@uint64 ymm0_2 L0x555555555e90; xor ymm0_3@uint64 ymm0_3 L0x555555555e98;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555ea0; Value = 0x8000000000008080; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555ea0; xor ymm0_1@uint64 ymm0_1 L0x555555555ea8;
xor ymm0_2@uint64 ymm0_2 L0x555555555eb0; xor ymm0_3@uint64 ymm0_3 L0x555555555eb8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555ec0; Value = 0x0000000080000001; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555ec0; xor ymm0_1@uint64 ymm0_1 L0x555555555ec8;
xor ymm0_2@uint64 ymm0_2 L0x555555555ed0; xor ymm0_3@uint64 ymm0_3 L0x555555555ed8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* vpshufd $0x4e,%ymm2,%ymm13                      #! PC = 0x555555555220 *)
mov shuf_0 ymm2_1; mov shuf_1 ymm2_0;
mov shuf_2 ymm2_3; mov shuf_3 ymm2_2;
mov ymm13_0 shuf_0; mov ymm13_1 shuf_1;
mov ymm13_2 shuf_2; mov ymm13_3 shuf_3;
(* vpxor  %ymm3,%ymm5,%ymm12                       #! PC = 0x555555555225 *)
xor ymm12_0@uint64 ymm5_0 ymm3_0; xor ymm12_1@uint64 ymm5_1 ymm3_1;
xor ymm12_2@uint64 ymm5_2 ymm3_2; xor ymm12_3@uint64 ymm5_3 ymm3_3;
(* vpxor  %ymm6,%ymm4,%ymm9                        #! PC = 0x555555555229 *)
xor ymm9_0@uint64 ymm4_0 ymm6_0; xor ymm9_1@uint64 ymm4_1 ymm6_1;
xor ymm9_2@uint64 ymm4_2 ymm6_2; xor ymm9_3@uint64 ymm4_3 ymm6_3;
(* vpxor  %ymm1,%ymm12,%ymm12                      #! PC = 0x55555555522d *)
xor ymm12_0@uint64 ymm12_0 ymm1_0; xor ymm12_1@uint64 ymm12_1 ymm1_1;
xor ymm12_2@uint64 ymm12_2 ymm1_2; xor ymm12_3@uint64 ymm12_3 ymm1_3;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x555555555231 *)
xor ymm12_0@uint64 ymm12_0 ymm9_0; xor ymm12_1@uint64 ymm12_1 ymm9_1;
xor ymm12_2@uint64 ymm12_2 ymm9_2; xor ymm12_3@uint64 ymm12_3 ymm9_3;
(* vpermq $0x93,%ymm12,%ymm11                      #! PC = 0x555555555236 *)
mov perm_0 ymm12_3; mov perm_1 ymm12_0;
mov perm_2 ymm12_1; mov perm_3 ymm12_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpxor  %ymm2,%ymm13,%ymm13                      #! PC = 0x55555555523c *)
xor ymm13_0@uint64 ymm13_0 ymm2_0; xor ymm13_1@uint64 ymm13_1 ymm2_1;
xor ymm13_2@uint64 ymm13_2 ymm2_2; xor ymm13_3@uint64 ymm13_3 ymm2_3;
(* vpermq $0x4e,%ymm13,%ymm7                       #! PC = 0x555555555240 *)
mov perm_0 ymm13_2; mov perm_1 ymm13_3;
mov perm_2 ymm13_0; mov perm_3 ymm13_1;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpsrlq $0x3f,%ymm12,%ymm8                       #! PC = 0x555555555246 *)
shr ymm8_0 ymm12_0 0x3f@uint64; shr ymm8_1 ymm12_1 0x3f@uint64;
shr ymm8_2 ymm12_2 0x3f@uint64; shr ymm8_3 ymm12_3 0x3f@uint64;
(* vpaddq %ymm12,%ymm12,%ymm9                      #! PC = 0x55555555524c *)
adds dc ymm9_0 ymm12_0 ymm12_0; adds dc ymm9_1 ymm12_1 ymm12_1;
adds dc ymm9_2 ymm12_2 ymm12_2; adds dc ymm9_3 ymm12_3 ymm12_3;
(* vpor   %ymm9,%ymm8,%ymm8                        #! PC = 0x555555555251 *)
or ymm8_0@uint64 ymm8_0 ymm9_0; or ymm8_1@uint64 ymm8_1 ymm9_1;
or ymm8_2@uint64 ymm8_2 ymm9_2; or ymm8_3@uint64 ymm8_3 ymm9_3;
(* vpermq $0x39,%ymm8,%ymm15                       #! PC = 0x555555555256 *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm15_0 perm_0; mov ymm15_1 perm_1;
mov ymm15_2 perm_2; mov ymm15_3 perm_3;
(* vpxor  %ymm11,%ymm8,%ymm14                      #! PC = 0x55555555525c *)
xor ymm14_0@uint64 ymm8_0 ymm11_0; xor ymm14_1@uint64 ymm8_1 ymm11_1;
xor ymm14_2@uint64 ymm8_2 ymm11_2; xor ymm14_3@uint64 ymm8_3 ymm11_3;
(* vpermq $0x0,%ymm14,%ymm14                       #! PC = 0x555555555261 *)
mov perm_0 ymm14_0; mov perm_1 ymm14_0;
mov perm_2 ymm14_0; mov perm_3 ymm14_0;
mov ymm14_0 perm_0; mov ymm14_1 perm_1;
mov ymm14_2 perm_2; mov ymm14_3 perm_3;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x555555555267 *)
xor ymm13_0@uint64 ymm13_0 ymm0_0; xor ymm13_1@uint64 ymm13_1 ymm0_1;
xor ymm13_2@uint64 ymm13_2 ymm0_2; xor ymm13_3@uint64 ymm13_3 ymm0_3;
(* vpxor  %ymm7,%ymm13,%ymm13                      #! PC = 0x55555555526b *)
xor ymm13_0@uint64 ymm13_0 ymm7_0; xor ymm13_1@uint64 ymm13_1 ymm7_1;
xor ymm13_2@uint64 ymm13_2 ymm7_2; xor ymm13_3@uint64 ymm13_3 ymm7_3;
(* vpsrlq $0x3f,%ymm13,%ymm7                       #! PC = 0x55555555526f *)
shr ymm7_0 ymm13_0 0x3f@uint64; shr ymm7_1 ymm13_1 0x3f@uint64;
shr ymm7_2 ymm13_2 0x3f@uint64; shr ymm7_3 ymm13_3 0x3f@uint64;
(* vpaddq %ymm13,%ymm13,%ymm8                      #! PC = 0x555555555275 *)
adds dc ymm8_0 ymm13_0 ymm13_0; adds dc ymm8_1 ymm13_1 ymm13_1;
adds dc ymm8_2 ymm13_2 ymm13_2; adds dc ymm8_3 ymm13_3 ymm13_3;
(* vpor   %ymm7,%ymm8,%ymm8                        #! PC = 0x55555555527a *)
or ymm8_0@uint64 ymm8_0 ymm7_0; or ymm8_1@uint64 ymm8_1 ymm7_1;
or ymm8_2@uint64 ymm8_2 ymm7_2; or ymm8_3@uint64 ymm8_3 ymm7_3;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555555527e *)
xor ymm2_0@uint64 ymm2_0 ymm14_0; xor ymm2_1@uint64 ymm2_1 ymm14_1;
xor ymm2_2@uint64 ymm2_2 ymm14_2; xor ymm2_3@uint64 ymm2_3 ymm14_3;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x555555555283 *)
xor ymm0_0@uint64 ymm0_0 ymm14_0; xor ymm0_1@uint64 ymm0_1 ymm14_1;
xor ymm0_2@uint64 ymm0_2 ymm14_2; xor ymm0_3@uint64 ymm0_3 ymm14_3;
(* vpblendd $0xc0,%ymm8,%ymm15,%ymm15              #! PC = 0x555555555288 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm8_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x3,%ymm13,%ymm11,%ymm11              #! PC = 0x55555555528e *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm11_0 blen_0; mov ymm11_1 blen_1;
mov ymm11_2 blen_2; mov ymm11_3 blen_3;
(* vpxor  %ymm11,%ymm15,%ymm15                     #! PC = 0x555555555294 *)
xor ymm15_0@uint64 ymm15_0 ymm11_0; xor ymm15_1@uint64 ymm15_1 ymm11_1;
xor ymm15_2@uint64 ymm15_2 ymm11_2; xor ymm15_3@uint64 ymm15_3 ymm11_3;
(* vpsllvq -0x60(%r8),%ymm2,%ymm10                 #! EA = L0x555555555a80; Value = 0x0000000000000003; PC = 0x555555555299 *)
shl ymm10_0 ymm2_0 L0x555555555a80; shl ymm10_1 ymm2_1 L0x555555555a88;
shl ymm10_2 ymm2_2 L0x555555555a90; shl ymm10_3 ymm2_3 L0x555555555a98;
(* vpsrlvq -0x60(%r9),%ymm2,%ymm2                  #! EA = L0x555555555b40; Value = 0x000000000000003d; PC = 0x55555555529f *)
shr ymm2_0 ymm2_0 L0x555555555b40; shr ymm2_1 ymm2_1 L0x555555555b48;
shr ymm2_2 ymm2_2 L0x555555555b50; shr ymm2_3 ymm2_3 L0x555555555b58;
(* vpor   %ymm10,%ymm2,%ymm2                       #! PC = 0x5555555552a5 *)
or ymm2_0@uint64 ymm2_0 ymm10_0; or ymm2_1@uint64 ymm2_1 ymm10_1;
or ymm2_2@uint64 ymm2_2 ymm10_2; or ymm2_3@uint64 ymm2_3 ymm10_3;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x5555555552aa *)
xor ymm3_0@uint64 ymm3_0 ymm15_0; xor ymm3_1@uint64 ymm3_1 ymm15_1;
xor ymm3_2@uint64 ymm3_2 ymm15_2; xor ymm3_3@uint64 ymm3_3 ymm15_3;
(* vpsllvq -0x20(%r8),%ymm3,%ymm11                 #! EA = L0x555555555ac0; Value = 0x000000000000002d; PC = 0x5555555552af *)
shl ymm11_0 ymm3_0 L0x555555555ac0; shl ymm11_1 ymm3_1 L0x555555555ac8;
shl ymm11_2 ymm3_2 L0x555555555ad0; shl ymm11_3 ymm3_3 L0x555555555ad8;
(* vpsrlvq -0x20(%r9),%ymm3,%ymm3                  #! EA = L0x555555555b80; Value = 0x0000000000000013; PC = 0x5555555552b5 *)
shr ymm3_0 ymm3_0 L0x555555555b80; shr ymm3_1 ymm3_1 L0x555555555b88;
shr ymm3_2 ymm3_2 L0x555555555b90; shr ymm3_3 ymm3_3 L0x555555555b98;
(* vpor   %ymm11,%ymm3,%ymm3                       #! PC = 0x5555555552bb *)
or ymm3_0@uint64 ymm3_0 ymm11_0; or ymm3_1@uint64 ymm3_1 ymm11_1;
or ymm3_2@uint64 ymm3_2 ymm11_2; or ymm3_3@uint64 ymm3_3 ymm11_3;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x5555555552c0 *)
xor ymm4_0@uint64 ymm4_0 ymm15_0; xor ymm4_1@uint64 ymm4_1 ymm15_1;
xor ymm4_2@uint64 ymm4_2 ymm15_2; xor ymm4_3@uint64 ymm4_3 ymm15_3;
(* vpsllvq (%r8),%ymm4,%ymm12                      #! EA = L0x555555555ae0; Value = 0x000000000000000a; PC = 0x5555555552c5 *)
shl ymm12_0 ymm4_0 L0x555555555ae0; shl ymm12_1 ymm4_1 L0x555555555ae8;
shl ymm12_2 ymm4_2 L0x555555555af0; shl ymm12_3 ymm4_3 L0x555555555af8;
(* vpsrlvq (%r9),%ymm4,%ymm4                       #! EA = L0x555555555ba0; Value = 0x0000000000000036; PC = 0x5555555552ca *)
shr ymm4_0 ymm4_0 L0x555555555ba0; shr ymm4_1 ymm4_1 L0x555555555ba8;
shr ymm4_2 ymm4_2 L0x555555555bb0; shr ymm4_3 ymm4_3 L0x555555555bb8;
(* vpor   %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555552cf *)
or ymm4_0@uint64 ymm4_0 ymm12_0; or ymm4_1@uint64 ymm4_1 ymm12_1;
or ymm4_2@uint64 ymm4_2 ymm12_2; or ymm4_3@uint64 ymm4_3 ymm12_3;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x5555555552d4 *)
xor ymm5_0@uint64 ymm5_0 ymm15_0; xor ymm5_1@uint64 ymm5_1 ymm15_1;
xor ymm5_2@uint64 ymm5_2 ymm15_2; xor ymm5_3@uint64 ymm5_3 ymm15_3;
(* vpsllvq 0x20(%r8),%ymm5,%ymm13                  #! EA = L0x555555555b00; Value = 0x0000000000000002; PC = 0x5555555552d9 *)
shl ymm13_0 ymm5_0 L0x555555555b00; shl ymm13_1 ymm5_1 L0x555555555b08;
shl ymm13_2 ymm5_2 L0x555555555b10; shl ymm13_3 ymm5_3 L0x555555555b18;
(* vpsrlvq 0x20(%r9),%ymm5,%ymm5                   #! EA = L0x555555555bc0; Value = 0x000000000000003e; PC = 0x5555555552df *)
shr ymm5_0 ymm5_0 L0x555555555bc0; shr ymm5_1 ymm5_1 L0x555555555bc8;
shr ymm5_2 ymm5_2 L0x555555555bd0; shr ymm5_3 ymm5_3 L0x555555555bd8;
(* vpor   %ymm13,%ymm5,%ymm5                       #! PC = 0x5555555552e5 *)
or ymm5_0@uint64 ymm5_0 ymm13_0; or ymm5_1@uint64 ymm5_1 ymm13_1;
or ymm5_2@uint64 ymm5_2 ymm13_2; or ymm5_3@uint64 ymm5_3 ymm13_3;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555552ea *)
xor ymm6_0@uint64 ymm6_0 ymm15_0; xor ymm6_1@uint64 ymm6_1 ymm15_1;
xor ymm6_2@uint64 ymm6_2 ymm15_2; xor ymm6_3@uint64 ymm6_3 ymm15_3;
(* vpermq $0x8d,%ymm2,%ymm10                       #! PC = 0x5555555552ef *)
mov perm_0 ymm2_1; mov perm_1 ymm2_3;
mov perm_2 ymm2_0; mov perm_3 ymm2_2;
mov ymm10_0 perm_0; mov ymm10_1 perm_1;
mov ymm10_2 perm_2; mov ymm10_3 perm_3;
(* vpermq $0x8d,%ymm3,%ymm11                       #! PC = 0x5555555552f5 *)
mov perm_0 ymm3_1; mov perm_1 ymm3_3;
mov perm_2 ymm3_0; mov perm_3 ymm3_2;
mov ymm11_0 perm_0; mov ymm11_1 perm_1;
mov ymm11_2 perm_2; mov ymm11_3 perm_3;
(* vpsllvq 0x40(%r8),%ymm6,%ymm14                  #! EA = L0x555555555b20; Value = 0x000000000000002c; PC = 0x5555555552fb *)
shl ymm14_0 ymm6_0 L0x555555555b20; shl ymm14_1 ymm6_1 L0x555555555b28;
shl ymm14_2 ymm6_2 L0x555555555b30; shl ymm14_3 ymm6_3 L0x555555555b38;
(* vpsrlvq 0x40(%r9),%ymm6,%ymm8                   #! EA = L0x555555555be0; Value = 0x0000000000000014; PC = 0x555555555301 *)
shr ymm8_0 ymm6_0 L0x555555555be0; shr ymm8_1 ymm6_1 L0x555555555be8;
shr ymm8_2 ymm6_2 L0x555555555bf0; shr ymm8_3 ymm6_3 L0x555555555bf8;
(* vpor   %ymm14,%ymm8,%ymm8                       #! PC = 0x555555555307 *)
or ymm8_0@uint64 ymm8_0 ymm14_0; or ymm8_1@uint64 ymm8_1 ymm14_1;
or ymm8_2@uint64 ymm8_2 ymm14_2; or ymm8_3@uint64 ymm8_3 ymm14_3;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555555530c *)
xor ymm1_0@uint64 ymm1_0 ymm15_0; xor ymm1_1@uint64 ymm1_1 ymm15_1;
xor ymm1_2@uint64 ymm1_2 ymm15_2; xor ymm1_3@uint64 ymm1_3 ymm15_3;
(* vpermq $0x1b,%ymm4,%ymm12                       #! PC = 0x555555555311 *)
mov perm_0 ymm4_3; mov perm_1 ymm4_2;
mov perm_2 ymm4_1; mov perm_3 ymm4_0;
mov ymm12_0 perm_0; mov ymm12_1 perm_1;
mov ymm12_2 perm_2; mov ymm12_3 perm_3;
(* vpermq $0x72,%ymm5,%ymm13                       #! PC = 0x555555555317 *)
mov perm_0 ymm5_2; mov perm_1 ymm5_0;
mov perm_2 ymm5_3; mov perm_3 ymm5_1;
mov ymm13_0 perm_0; mov ymm13_1 perm_1;
mov ymm13_2 perm_2; mov ymm13_3 perm_3;
(* vpsllvq -0x40(%r8),%ymm1,%ymm15                 #! EA = L0x555555555aa0; Value = 0x0000000000000001; PC = 0x55555555531d *)
shl ymm15_0 ymm1_0 L0x555555555aa0; shl ymm15_1 ymm1_1 L0x555555555aa8;
shl ymm15_2 ymm1_2 L0x555555555ab0; shl ymm15_3 ymm1_3 L0x555555555ab8;
(* vpsrlvq -0x40(%r9),%ymm1,%ymm9                  #! EA = L0x555555555b60; Value = 0x000000000000003f; PC = 0x555555555323 *)
shr ymm9_0 ymm1_0 L0x555555555b60; shr ymm9_1 ymm1_1 L0x555555555b68;
shr ymm9_2 ymm1_2 L0x555555555b70; shr ymm9_3 ymm1_3 L0x555555555b78;
(* vpor   %ymm15,%ymm9,%ymm9                       #! PC = 0x555555555329 *)
or ymm9_0@uint64 ymm9_0 ymm15_0; or ymm9_1@uint64 ymm9_1 ymm15_1;
or ymm9_2@uint64 ymm9_2 ymm15_2; or ymm9_3@uint64 ymm9_3 ymm15_3;
(* vpsrldq $0x8,%ymm8,%ymm14                       #! PC = 0x55555555532e *)
mov ymm14_0 ymm8_1; mov ymm14_1 0@uint64;
mov ymm14_2 ymm8_3; mov ymm14_3 0@uint64;
(* vpandn %ymm14,%ymm8,%ymm7                       #! PC = 0x555555555334 *)
not andn_0@uint64 ymm8_0; and ymm7_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm8_1; and ymm7_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm8_2; and ymm7_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm8_3; and ymm7_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm13,%ymm9,%ymm3                #! PC = 0x555555555339 *)
mov blen_0 ymm9_0; mov blen_1 ymm13_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc,%ymm9,%ymm11,%ymm15               #! PC = 0x55555555533f *)
mov blen_0 ymm11_0; mov blen_1 ymm9_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm10,%ymm5               #! PC = 0x555555555345 *)
mov blen_0 ymm10_0; mov blen_1 ymm11_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc,%ymm10,%ymm9,%ymm14               #! PC = 0x55555555534b *)
mov blen_0 ymm9_0; mov blen_1 ymm10_1;
mov blen_2 ymm9_2; mov blen_3 ymm9_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm3,%ymm3               #! PC = 0x555555555351 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm11_2; mov blen_3 ymm3_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm15,%ymm15             #! PC = 0x555555555357 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm12_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm5,%ymm5                #! PC = 0x55555555535d *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm9_2; mov blen_3 ymm5_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm14,%ymm14             #! PC = 0x555555555363 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm13_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm3,%ymm3               #! PC = 0x555555555369 *)
mov blen_0 ymm3_0; mov blen_1 ymm3_1;
mov blen_2 ymm3_2; mov blen_3 ymm12_3;
mov ymm3_0 blen_0; mov ymm3_1 blen_1;
mov ymm3_2 blen_2; mov ymm3_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm15,%ymm15             #! PC = 0x55555555536f *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm13_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpblendd $0xc0,%ymm13,%ymm5,%ymm5               #! PC = 0x555555555375 *)
mov blen_0 ymm5_0; mov blen_1 ymm5_1;
mov blen_2 ymm5_2; mov blen_3 ymm13_3;
mov ymm5_0 blen_0; mov ymm5_1 blen_1;
mov ymm5_2 blen_2; mov ymm5_3 blen_3;
(* vpblendd $0xc0,%ymm11,%ymm14,%ymm14             #! PC = 0x55555555537b *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm11_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm15,%ymm3,%ymm3                       #! PC = 0x555555555381 *)
not andn_0@uint64 ymm3_0; and ymm3_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm3_1; and ymm3_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm3_2; and ymm3_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm3_3; and ymm3_3@uint64 andn_3 ymm15_3;
(* vpandn %ymm14,%ymm5,%ymm5                       #! PC = 0x555555555386 *)
not andn_0@uint64 ymm5_0; and ymm5_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm5_1; and ymm5_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm5_2; and ymm5_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm5_3; and ymm5_3@uint64 andn_3 ymm14_3;
(* vpblendd $0xc,%ymm9,%ymm12,%ymm6                #! PC = 0x55555555538b *)
mov blen_0 ymm12_0; mov blen_1 ymm9_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc,%ymm12,%ymm10,%ymm15              #! PC = 0x555555555391 *)
mov blen_0 ymm10_0; mov blen_1 ymm12_1;
mov blen_2 ymm10_2; mov blen_3 ymm10_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm10,%ymm3,%ymm3                       #! PC = 0x555555555397 *)
xor ymm3_0@uint64 ymm3_0 ymm10_0; xor ymm3_1@uint64 ymm3_1 ymm10_1;
xor ymm3_2@uint64 ymm3_2 ymm10_2; xor ymm3_3@uint64 ymm3_3 ymm10_3;
(* vpblendd $0x30,%ymm10,%ymm6,%ymm6               #! PC = 0x55555555539c *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm10_2; mov blen_3 ymm6_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0x30,%ymm11,%ymm15,%ymm15             #! PC = 0x5555555553a2 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm11_2; mov blen_3 ymm15_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555553a8 *)
xor ymm5_0@uint64 ymm5_0 ymm12_0; xor ymm5_1@uint64 ymm5_1 ymm12_1;
xor ymm5_2@uint64 ymm5_2 ymm12_2; xor ymm5_3@uint64 ymm5_3 ymm12_3;
(* vpblendd $0xc0,%ymm11,%ymm6,%ymm6               #! PC = 0x5555555553ad *)
mov blen_0 ymm6_0; mov blen_1 ymm6_1;
mov blen_2 ymm6_2; mov blen_3 ymm11_3;
mov ymm6_0 blen_0; mov ymm6_1 blen_1;
mov ymm6_2 blen_2; mov ymm6_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm15,%ymm15              #! PC = 0x5555555553b3 *)
mov blen_0 ymm15_0; mov blen_1 ymm15_1;
mov blen_2 ymm15_2; mov blen_3 ymm9_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpandn %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555553b9 *)
not andn_0@uint64 ymm6_0; and ymm6_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm6_1; and ymm6_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm6_2; and ymm6_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm6_3; and ymm6_3@uint64 andn_3 ymm15_3;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555553be *)
xor ymm6_0@uint64 ymm6_0 ymm13_0; xor ymm6_1@uint64 ymm6_1 ymm13_1;
xor ymm6_2@uint64 ymm6_2 ymm13_2; xor ymm6_3@uint64 ymm6_3 ymm13_3;
(* vpermq $0x1e,%ymm8,%ymm4                        #! PC = 0x5555555553c3 *)
mov perm_0 ymm8_2; mov perm_1 ymm8_3;
mov perm_2 ymm8_1; mov perm_3 ymm8_0;
mov ymm4_0 perm_0; mov ymm4_1 perm_1;
mov ymm4_2 perm_2; mov ymm4_3 perm_3;
(* vpblendd $0x30,%ymm0,%ymm4,%ymm15               #! PC = 0x5555555553c9 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm0_2; mov blen_3 ymm4_3;
mov ymm15_0 blen_0; mov ymm15_1 blen_1;
mov ymm15_2 blen_2; mov ymm15_3 blen_3;
(* vpermq $0x39,%ymm8,%ymm1                        #! PC = 0x5555555553cf *)
mov perm_0 ymm8_1; mov perm_1 ymm8_2;
mov perm_2 ymm8_3; mov perm_3 ymm8_0;
mov ymm1_0 perm_0; mov ymm1_1 perm_1;
mov ymm1_2 perm_2; mov ymm1_3 perm_3;
(* vpblendd $0xc0,%ymm0,%ymm1,%ymm1                #! PC = 0x5555555553d5 *)
mov blen_0 ymm1_0; mov blen_1 ymm1_1;
mov blen_2 ymm1_2; mov blen_3 ymm0_3;
mov ymm1_0 blen_0; mov ymm1_1 blen_1;
mov ymm1_2 blen_2; mov ymm1_3 blen_3;
(* vpandn %ymm15,%ymm1,%ymm1                       #! PC = 0x5555555553db *)
not andn_0@uint64 ymm1_0; and ymm1_0@uint64 andn_0 ymm15_0;
not andn_1@uint64 ymm1_1; and ymm1_1@uint64 andn_1 ymm15_1;
not andn_2@uint64 ymm1_2; and ymm1_2@uint64 andn_2 ymm15_2;
not andn_3@uint64 ymm1_3; and ymm1_3@uint64 andn_3 ymm15_3;
(* vpblendd $0xc,%ymm12,%ymm11,%ymm2               #! PC = 0x5555555553e0 *)
mov blen_0 ymm11_0; mov blen_1 ymm12_1;
mov blen_2 ymm11_2; mov blen_3 ymm11_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc,%ymm11,%ymm13,%ymm14              #! PC = 0x5555555553e6 *)
mov blen_0 ymm13_0; mov blen_1 ymm11_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm13,%ymm2,%ymm2               #! PC = 0x5555555553ec *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm13_2; mov blen_3 ymm2_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0x30,%ymm10,%ymm14,%ymm14             #! PC = 0x5555555553f2 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm10_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm2,%ymm2               #! PC = 0x5555555553f8 *)
mov blen_0 ymm2_0; mov blen_1 ymm2_1;
mov blen_2 ymm2_2; mov blen_3 ymm10_3;
mov ymm2_0 blen_0; mov ymm2_1 blen_1;
mov ymm2_2 blen_2; mov ymm2_3 blen_3;
(* vpblendd $0xc0,%ymm12,%ymm14,%ymm14             #! PC = 0x5555555553fe *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm2,%ymm2                       #! PC = 0x555555555404 *)
not andn_0@uint64 ymm2_0; and ymm2_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm2_1; and ymm2_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm2_2; and ymm2_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm2_3; and ymm2_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm9,%ymm2,%ymm2                        #! PC = 0x555555555409 *)
xor ymm2_0@uint64 ymm2_0 ymm9_0; xor ymm2_1@uint64 ymm2_1 ymm9_1;
xor ymm2_2@uint64 ymm2_2 ymm9_2; xor ymm2_3@uint64 ymm2_3 ymm9_3;
(* vpermq $0x0,%ymm7,%ymm7                         #! PC = 0x55555555540e *)
mov perm_0 ymm7_0; mov perm_1 ymm7_0;
mov perm_2 ymm7_0; mov perm_3 ymm7_0;
mov ymm7_0 perm_0; mov ymm7_1 perm_1;
mov ymm7_2 perm_2; mov ymm7_3 perm_3;
(* vpermq $0x1b,%ymm3,%ymm3                        #! PC = 0x555555555414 *)
mov perm_0 ymm3_3; mov perm_1 ymm3_2;
mov perm_2 ymm3_1; mov perm_3 ymm3_0;
mov ymm3_0 perm_0; mov ymm3_1 perm_1;
mov ymm3_2 perm_2; mov ymm3_3 perm_3;
(* vpermq $0x8d,%ymm5,%ymm5                        #! PC = 0x55555555541a *)
mov perm_0 ymm5_1; mov perm_1 ymm5_3;
mov perm_2 ymm5_0; mov perm_3 ymm5_2;
mov ymm5_0 perm_0; mov ymm5_1 perm_1;
mov ymm5_2 perm_2; mov ymm5_3 perm_3;
(* vpermq $0x72,%ymm6,%ymm6                        #! PC = 0x555555555420 *)
mov perm_0 ymm6_2; mov perm_1 ymm6_0;
mov perm_2 ymm6_3; mov perm_3 ymm6_1;
mov ymm6_0 perm_0; mov ymm6_1 perm_1;
mov ymm6_2 perm_2; mov ymm6_3 perm_3;
(* vpblendd $0xc,%ymm10,%ymm13,%ymm4               #! PC = 0x555555555426 *)
mov blen_0 ymm13_0; mov blen_1 ymm10_1;
mov blen_2 ymm13_2; mov blen_3 ymm13_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc,%ymm13,%ymm12,%ymm14              #! PC = 0x55555555542c *)
mov blen_0 ymm12_0; mov blen_1 ymm13_1;
mov blen_2 ymm12_2; mov blen_3 ymm12_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0x30,%ymm12,%ymm4,%ymm4               #! PC = 0x555555555432 *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm12_2; mov blen_3 ymm4_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0x30,%ymm9,%ymm14,%ymm14              #! PC = 0x555555555438 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm9_2; mov blen_3 ymm14_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpblendd $0xc0,%ymm9,%ymm4,%ymm4                #! PC = 0x55555555543e *)
mov blen_0 ymm4_0; mov blen_1 ymm4_1;
mov blen_2 ymm4_2; mov blen_3 ymm9_3;
mov ymm4_0 blen_0; mov ymm4_1 blen_1;
mov ymm4_2 blen_2; mov ymm4_3 blen_3;
(* vpblendd $0xc0,%ymm10,%ymm14,%ymm14             #! PC = 0x555555555444 *)
mov blen_0 ymm14_0; mov blen_1 ymm14_1;
mov blen_2 ymm14_2; mov blen_3 ymm10_3;
mov ymm14_0 blen_0; mov ymm14_1 blen_1;
mov ymm14_2 blen_2; mov ymm14_3 blen_3;
(* vpandn %ymm14,%ymm4,%ymm4                       #! PC = 0x55555555544a *)
not andn_0@uint64 ymm4_0; and ymm4_0@uint64 andn_0 ymm14_0;
not andn_1@uint64 ymm4_1; and ymm4_1@uint64 andn_1 ymm14_1;
not andn_2@uint64 ymm4_2; and ymm4_2@uint64 andn_2 ymm14_2;
not andn_3@uint64 ymm4_3; and ymm4_3@uint64 andn_3 ymm14_3;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555544f *)
xor ymm0_0@uint64 ymm0_0 ymm7_0; xor ymm0_1@uint64 ymm0_1 ymm7_1;
xor ymm0_2@uint64 ymm0_2 ymm7_2; xor ymm0_3@uint64 ymm0_3 ymm7_3;
(* vpxor  %ymm8,%ymm1,%ymm1                        #! PC = 0x555555555453 *)
xor ymm1_0@uint64 ymm1_0 ymm8_0; xor ymm1_1@uint64 ymm1_1 ymm8_1;
xor ymm1_2@uint64 ymm1_2 ymm8_2; xor ymm1_3@uint64 ymm1_3 ymm8_3;
(* vpxor  %ymm11,%ymm4,%ymm4                       #! PC = 0x555555555458 *)
xor ymm4_0@uint64 ymm4_0 ymm11_0; xor ymm4_1@uint64 ymm4_1 ymm11_1;
xor ymm4_2@uint64 ymm4_2 ymm11_2; xor ymm4_3@uint64 ymm4_3 ymm11_3;
(* vpxor  (%r10),%ymm0,%ymm0                       #! EA = L0x555555555ee0; Value = 0x8000000080008008; PC = 0x55555555545d *)
xor ymm0_0@uint64 ymm0_0 L0x555555555ee0; xor ymm0_1@uint64 ymm0_1 L0x555555555ee8;
xor ymm0_2@uint64 ymm0_2 L0x555555555ef0; xor ymm0_3@uint64 ymm0_3 L0x555555555ef8;
(* lea    0x20(%r10),%r10                          #! PC = 0x555555555462 *)
adds dc r10 r10 0x20@uint64;
(* dec    %eax                                     #! PC = 0x555555555466 *)
subs dc eax eax 1@uint64;
(* #jne    0x555555555220 <__KeccakF1600+32>       #! PC = 0x555555555468 *)
#jne    0x555555555220 <__KeccakF1600+32>       #! 0x555555555468 = 0x555555555468;
(* #! <- SP = 0x7fffffffd960 *)
#! 0x7fffffffd960 = 0x7fffffffd960;
(* #ret                                            #! PC = 0x55555555546e *)
#ret                                            #! 0x55555555546e = 0x55555555546e;

mov a00 ymm0_0; mov a00 ymm0_1; mov a00 ymm0_2; mov a00 ymm0_3;
mov a01 ymm1_0; mov a02 ymm1_1; mov a03 ymm1_2; mov a04 ymm1_3;
mov a20 ymm2_0; mov a40 ymm2_1; mov a10 ymm2_2; mov a30 ymm2_3;
mov a31 ymm3_0; mov a12 ymm3_1; mov a43 ymm3_2; mov a24 ymm3_3;
mov a21 ymm4_0; mov a42 ymm4_1; mov a13 ymm4_2; mov a34 ymm4_3;
mov a41 ymm5_0; mov a32 ymm5_1; mov a23 ymm5_2; mov a14 ymm5_3;
mov a11 ymm6_0; mov a22 ymm6_1; mov a33 ymm6_2; mov a44 ymm6_3;

{
  true
  &&
  true
}

