(* popper: cv_cec.exe -v -ov a0,a1,a2,a3#a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016288 seconds
Checking well-formedness:               [OK]            0.005441 seconds
Parsing CryptoLine file:                [OK]            0.022098 seconds
Checking well-formedness:               [OK]            0.009105 seconds
Equivalence of output group #1:         [OK]            3525.931085 seconds
Equivalence of output group #0:         [OK]            3591.440498 seconds
Final result:                           [OK]            3591.846819 seconds
*)
(* popper: cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016373 seconds
Checking well-formedness:               [OK]            0.005504 seconds
Parsing CryptoLine file:                [OK]            0.022374 seconds
Checking well-formedness:               [OK]            0.009199 seconds
Equivalence of output group #0:         [OK]            3811.434139 seconds
Final result:                           [OK]            3811.840828 seconds
*)
(* csweep popper: v_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016513 seconds
Checking well-formedness:               [OK]            0.005518 seconds
Parsing CryptoLine file:                [OK]            0.022474 seconds
Checking well-formedness:               [OK]            0.009261 seconds
Equivalence of output group #0:         [OK]            3853.852998 seconds
Final result:                           [OK]            3854.261641 seconds
*)
(* iprove popper: cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016705 seconds
Checking well-formedness:               [OK]            0.005426 seconds
Parsing CryptoLine file:                [OK]            0.022907 seconds
Checking well-formedness:               [OK]            0.009266 seconds
Equivalence of output group #0:         [OK]            4015.350250 seconds
Final result:                           [OK]            4015.759787 seconds
*)
(* cec popper: cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016575 seconds
Checking well-formedness:               [OK]            0.005468 seconds
Parsing CryptoLine file:                [OK]            0.022936 seconds
Checking well-formedness:               [OK]            0.009297 seconds
Equivalence of output group #0:         [OK]            3871.597355 seconds
Final result:                           [OK]            3872.001250 seconds
*)
(* quine: ~/Work/code/cryptoline/_build/default/cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../cc/sha256_block_data_order.cl
Parsing CryptoLine file:                [OK]            0.029272 seconds
Checking well-formedness:               [OK]            0.008203 seconds
Parsing CryptoLine file:                [OK]            0.025219 seconds
Checking well-formedness:               [OK]            0.004453 seconds
Equivalence of output group #0:         [OK]            4615.367428 seconds
Final result:                           [OK]            4616.078062 seconds
*)

proc main (
uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04, uint8 A05, uint8 A06,
uint8 A07, uint8 A08, uint8 A09, uint8 A10, uint8 A11, uint8 A12, uint8 A13,
uint8 A14, uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19, uint8 A20,
uint8 A21, uint8 A22, uint8 A23, uint8 A24, uint8 A25, uint8 A26, uint8 A27,
uint8 A28, uint8 A29, uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,
uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39, uint8 A40, uint8 A41,
uint8 A42, uint8 A43, uint8 A44, uint8 A45, uint8 A46, uint8 A47, uint8 A48,
uint8 A49, uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54, uint8 A55,
uint8 A56, uint8 A57, uint8 A58, uint8 A59, uint8 A60, uint8 A61, uint8 A62,
uint8 A63,
uint32 A0, uint32 A1, uint32 A2, uint32 A3,
uint32 A4, uint32 A5, uint32 A6, uint32 A7
) =
{
  true
  &&
  true
}

join H A03 A02; join L A01 A00; join L0x55555640d0 H L;
join H A07 A06; join L A05 A04; join L0x55555640d4 H L;
join H A11 A10; join L A09 A08; join L0x55555640d8 H L;
join H A15 A14; join L A13 A12; join L0x55555640dc H L;
join H A19 A18; join L A17 A16; join L0x55555640e0 H L;
join H A23 A22; join L A21 A20; join L0x55555640e4 H L;
join H A27 A26; join L A25 A24; join L0x55555640e8 H L;
join H A31 A30; join L A29 A28; join L0x55555640ec H L;
join H A35 A34; join L A33 A32; join L0x55555640f0 H L;
join H A39 A38; join L A37 A36; join L0x55555640f4 H L;
join H A43 A42; join L A41 A40; join L0x55555640f8 H L;
join H A47 A46; join L A45 A44; join L0x55555640fc H L;
join H A51 A50; join L A49 A48; join L0x5555564100 H L;
join H A55 A54; join L A53 A52; join L0x5555564104 H L;
join H A59 A58; join L A57 A56; join L0x5555564108 H L;
join H A63 A62; join L A61 A60; join L0x555556410c H L;


nondet x29@uint32; nondet x30@uint32; 
nondet L0x5555564308@uint32; nondet L0x5555552580@uint32;

mov L0x55555640a8 A0; mov L0x55555640ac A1;
mov L0x55555640b0 A2; mov L0x55555640b4 A3;
mov L0x55555640b8 A4; mov L0x55555640bc A5;
mov L0x55555640c0 A6; mov L0x55555640c4 A7;
(*
mov L0x55555640a8 0x6a09e667@uint32; mov L0x55555640ac 0xbb67ae85@uint32;
mov L0x55555640b0 0x3c6ef372@uint32; mov L0x55555640b4 0xa54ff53a@uint32;
mov L0x55555640b8 0x510e527f@uint32; mov L0x55555640bc 0x9b05688c@uint32;
mov L0x55555640c0 0x1f83d9ab@uint32; mov L0x55555640c4 0x5be0cd19@uint32;
*)

mov L0x5555552480 0x428a2f98@uint32; mov L0x5555552484 0x71374491@uint32;
mov L0x5555552488 0xb5c0fbcf@uint32; mov L0x555555248c 0xe9b5dba5@uint32;
mov L0x5555552490 0x3956c25b@uint32; mov L0x5555552494 0x59f111f1@uint32;
mov L0x5555552498 0x923f82a4@uint32; mov L0x555555249c 0xab1c5ed5@uint32;
mov L0x55555524a0 0xd807aa98@uint32; mov L0x55555524a4 0x12835b01@uint32;
mov L0x55555524a8 0x243185be@uint32; mov L0x55555524ac 0x550c7dc3@uint32;
mov L0x55555524b0 0x72be5d74@uint32; mov L0x55555524b4 0x80deb1fe@uint32;
mov L0x55555524b8 0x9bdc06a7@uint32; mov L0x55555524bc 0xc19bf174@uint32;
mov L0x55555524c0 0xe49b69c1@uint32; mov L0x55555524c4 0xefbe4786@uint32;
mov L0x55555524c8 0x0fc19dc6@uint32; mov L0x55555524cc 0x240ca1cc@uint32;
mov L0x55555524d0 0x2de92c6f@uint32; mov L0x55555524d4 0x4a7484aa@uint32;
mov L0x55555524d8 0x5cb0a9dc@uint32; mov L0x55555524dc 0x76f988da@uint32;
mov L0x55555524e0 0x983e5152@uint32; mov L0x55555524e4 0xa831c66d@uint32;
mov L0x55555524e8 0xb00327c8@uint32; mov L0x55555524ec 0xbf597fc7@uint32;
mov L0x55555524f0 0xc6e00bf3@uint32; mov L0x55555524f4 0xd5a79147@uint32;
mov L0x55555524f8 0x06ca6351@uint32; mov L0x55555524fc 0x14292967@uint32;
mov L0x5555552500 0x27b70a85@uint32; mov L0x5555552504 0x2e1b2138@uint32;
mov L0x5555552508 0x4d2c6dfc@uint32; mov L0x555555250c 0x53380d13@uint32;
mov L0x5555552510 0x650a7354@uint32; mov L0x5555552514 0x766a0abb@uint32;
mov L0x5555552518 0x81c2c92e@uint32; mov L0x555555251c 0x92722c85@uint32;
mov L0x5555552520 0xa2bfe8a1@uint32; mov L0x5555552524 0xa81a664b@uint32;
mov L0x5555552528 0xc24b8b70@uint32; mov L0x555555252c 0xc76c51a3@uint32;
mov L0x5555552530 0xd192e819@uint32; mov L0x5555552534 0xd6990624@uint32;
mov L0x5555552538 0xf40e3585@uint32; mov L0x555555253c 0x106aa070@uint32;
mov L0x5555552540 0x19a4c116@uint32; mov L0x5555552544 0x1e376c08@uint32;
mov L0x5555552548 0x2748774c@uint32; mov L0x555555254c 0x34b0bcb5@uint32;
mov L0x5555552550 0x391c0cb3@uint32; mov L0x5555552554 0x4ed8aa4a@uint32;
mov L0x5555552558 0x5b9cca4f@uint32; mov L0x555555255c 0x682e6ff3@uint32;
mov L0x5555552560 0x748f82ee@uint32; mov L0x5555552564 0x78a5636f@uint32;
mov L0x5555552568 0x84c87814@uint32; mov L0x555555256c 0x8cc70208@uint32;
mov L0x5555552570 0x90befffa@uint32; mov L0x5555552574 0xa4506ceb@uint32;
mov L0x5555552578 0xbef9a3f7@uint32; mov L0x555555257c 0xc67178f2@uint32;

(* #! -> SP = 0x7fffffeab0 *)
#! 0x7fffffeab0 = 0x7fffffeab0;
(* adrp	x16, 0x5555564000 <memcpy@got.plt>         #! PC = 0x5555551640 *)
(* adrp	x16, 0x5555564000 <memcpy@got.plt> *)
nop;
(* ldr	w16, [x16, #776]                            #! EA = L0x5555564308; Value = 0x0000000000000083; PC = 0x5555551644 *)
mov w16 L0x5555564308;
(* tst	w16, #0x10                                  #! PC = 0x5555551648 *)
(* tst w16, 0x10 *)
nop;
(* #b.ne	0x5555552600 <sha256_block_armv8>  // b.any#! PC = 0x555555164c *)
#b.ne	0x5555552600 <sha256_block_armv8>  // b.any#! 0x555555164c = 0x555555164c;
(* tst	w16, #0x1                                   #! PC = 0x5555551650 *)
(* tst w16, 0x1 *)
nop;
(* #b.ne	0x55555527f0 <sha256_block_neon>  // b.any#! PC = 0x5555551654 *)
#b.ne	0x55555527f0 <sha256_block_neon>  // b.any#! 0x5555551654 = 0x5555551654;
(* stp	x29, x30, [sp, #-16]!                       #! EA = L0x7fffffeaa0; PC = 0x55555527f0 *)
mov L0x7fffffeaa0 x29; mov L0x7fffffeaa8 x30;
(* mov	x29, sp                                     #! PC = 0x55555527f4 *)
(* mov x29, sp *)
nop;
(* sub	sp, sp, #0x40                               #! PC = 0x55555527f8 *)
(* sub sp, sp, 0x40 *)
nop;
(* adr	x16, 0x5555552480                           #! PC = 0x55555527fc *)
(* adr x16, 0x5555552480 *)
nop;
(* add	x2, x1, x2, lsl #6                          #! PC = 0x5555552800 *)
(* add x2, x1, x2, lsl #6 *)
nop;
(* ld1	{v0.16b}, [x1], #16                         #! EA = L0x55555640d0; Value = 0x0706050403020100; PC = 0x5555552804 *)
mov v0_0 L0x55555640d0; mov v0_1 L0x55555640d4;
mov v0_2 L0x55555640d8; mov v0_3 L0x55555640dc;
(* ld1	{v1.16b}, [x1], #16                         #! EA = L0x55555640e0; Value = 0x0000000000000080; PC = 0x5555552808 *)
mov v1_0 L0x55555640e0; mov v1_1 L0x55555640e4;
mov v1_2 L0x55555640e8; mov v1_3 L0x55555640ec;
(* ld1	{v2.16b}, [x1], #16                         #! EA = L0x55555640f0; Value = 0x0000000000000000; PC = 0x555555280c *)
mov v2_0 L0x55555640f0; mov v2_1 L0x55555640f4;
mov v2_2 L0x55555640f8; mov v2_3 L0x55555640fc;
(* ld1	{v3.16b}, [x1], #16                         #! EA = L0x5555564100; Value = 0x0000000000000000; PC = 0x5555552810 *)
mov v3_0 L0x5555564100; mov v3_1 L0x5555564104;
mov v3_2 L0x5555564108; mov v3_3 L0x555556410c;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552480; Value = 0x71374491428a2f98; PC = 0x5555552814 *)
mov v4_0 L0x5555552480; mov v4_1 L0x5555552484;
mov v4_2 L0x5555552488; mov v4_3 L0x555555248c;
(* ld1	{v5.4s}, [x16], #16                         #! EA = L0x5555552490; Value = 0x59f111f13956c25b; PC = 0x5555552818 *)
mov v5_0 L0x5555552490; mov v5_1 L0x5555552494;
mov v5_2 L0x5555552498; mov v5_3 L0x555555249c;
(* ld1	{v6.4s}, [x16], #16                         #! EA = L0x55555524a0; Value = 0x12835b01d807aa98; PC = 0x555555281c *)
mov v6_0 L0x55555524a0; mov v6_1 L0x55555524a4;
mov v6_2 L0x55555524a8; mov v6_3 L0x55555524ac;
(* ld1	{v7.4s}, [x16], #16                         #! EA = L0x55555524b0; Value = 0x80deb1fe72be5d74; PC = 0x5555552820 *)
mov v7_0 L0x55555524b0; mov v7_1 L0x55555524b4;
mov v7_2 L0x55555524b8; mov v7_3 L0x55555524bc;
(* rev32	v0.16b, v0.16b                            #! PC = 0x5555552824 *)
spl s10 s00 v0_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_0 t10 t00;
spl s10 s00 v0_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_1 t10 t00;
spl s10 s00 v0_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_2 t10 t00;
spl s10 s00 v0_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_3 t10 t00;
(* rev32	v1.16b, v1.16b                            #! PC = 0x5555552828 *)
spl s10 s00 v1_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_0 t10 t00;
spl s10 s00 v1_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_1 t10 t00;
spl s10 s00 v1_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_2 t10 t00;
spl s10 s00 v1_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_3 t10 t00;
(* rev32	v2.16b, v2.16b                            #! PC = 0x555555282c *)
spl s10 s00 v2_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_0 t10 t00;
spl s10 s00 v2_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_1 t10 t00;
spl s10 s00 v2_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_2 t10 t00;
spl s10 s00 v2_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_3 t10 t00;
(* rev32	v3.16b, v3.16b                            #! PC = 0x5555552830 *)
spl s10 s00 v3_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_0 t10 t00;
spl s10 s00 v3_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_1 t10 t00;
spl s10 s00 v3_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_2 t10 t00;
spl s10 s00 v3_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_3 t10 t00;
(* mov	x17, sp                                     #! PC = 0x5555552834 *)
(* mov x17, sp *)
nop;
(* add	v4.4s, v4.4s, v0.4s                         #! PC = 0x5555552838 *)
adds dc v4_0 v4_0 v0_0; adds dc v4_1 v4_1 v0_1;
adds dc v4_2 v4_2 v0_2; adds dc v4_3 v4_3 v0_3;
(* add	v5.4s, v5.4s, v1.4s                         #! PC = 0x555555283c *)
adds dc v5_0 v5_0 v1_0; adds dc v5_1 v5_1 v1_1;
adds dc v5_2 v5_2 v1_2; adds dc v5_3 v5_3 v1_3;
(* add	v6.4s, v6.4s, v2.4s                         #! PC = 0x5555552840 *)
adds dc v6_0 v6_0 v2_0; adds dc v6_1 v6_1 v2_1;
adds dc v6_2 v6_2 v2_2; adds dc v6_3 v6_3 v2_3;
(* st1	{v4.4s, v5.4s}, [x17], #32                  #! EA = L0x7fffffea60; PC = 0x5555552844 *)
mov L0x7fffffea60 v4_0; mov L0x7fffffea64 v4_1;
mov L0x7fffffea68 v4_2; mov L0x7fffffea6c v4_3;
mov L0x7fffffea70 v5_0; mov L0x7fffffea74 v5_1;
mov L0x7fffffea78 v5_2; mov L0x7fffffea7c v5_3;
(* add	v7.4s, v7.4s, v3.4s                         #! PC = 0x5555552848 *)
adds dc v7_0 v7_0 v3_0; adds dc v7_1 v7_1 v3_1;
adds dc v7_2 v7_2 v3_2; adds dc v7_3 v7_3 v3_3;
(* st1	{v6.4s, v7.4s}, [x17]                       #! EA = L0x7fffffea80; PC = 0x555555284c *)
mov L0x7fffffea80 v6_0; mov L0x7fffffea84 v6_1;
mov L0x7fffffea88 v6_2; mov L0x7fffffea8c v6_3;
mov L0x7fffffea90 v7_0; mov L0x7fffffea94 v7_1;
mov L0x7fffffea98 v7_2; mov L0x7fffffea9c v7_3;
(* sub	x17, x17, #0x20                             #! PC = 0x5555552850 *)
(* sub x17, x17, 0x20 *)
nop;
(* ldp	w3, w4, [x0]                                #! EA = L0x55555640a8; Value = 0xbb67ae856a09e667; PC = 0x5555552854 *)
mov w3 L0x55555640a8; mov w4 L0x55555640ac;
(* ldp	w5, w6, [x0, #8]                            #! EA = L0x55555640b0; Value = 0xa54ff53a3c6ef372; PC = 0x5555552858 *)
mov w5 L0x55555640b0; mov w6 L0x55555640b4;
(* ldp	w7, w8, [x0, #16]                           #! EA = L0x55555640b8; Value = 0x9b05688c510e527f; PC = 0x555555285c *)
mov w7 L0x55555640b8; mov w8 L0x55555640bc;
(* ldp	w9, w10, [x0, #24]                          #! EA = L0x55555640c0; Value = 0x5be0cd191f83d9ab; PC = 0x5555552860 *)
mov w9 L0x55555640c0; mov w10 L0x55555640c4;
(* ldr	w12, [sp]                                   #! EA = L0x7fffffea60; Value = 0x753c4a98428b319b; PC = 0x5555552864 *)
mov w12 L0x7fffffea60;
(* mov	w13, wzr                                    #! PC = 0x5555552868 *)
mov w13 0@uint32;
(* eor	w14, w4, w5                                 #! PC = 0x555555286c *)
xor w14@uint32 w4 w5;
(* mov	w15, wzr                                    #! PC = 0x5555552870 *)
mov w15 0@uint32;
(* #b	0x5555552880 <sha256_block_neon+144>         #! PC = 0x5555552874 *)
#b	0x5555552880 <sha256_block_neon+144>         #! 0x5555552874 = 0x5555552874;
(* ext	v4.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552880 *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552884 *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552888 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x555555288c *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552890 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552894 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552898 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x555555289c *)
adds dc w3 w3 w13;
(* mov	d19, v3.d[1]                                #! PC = 0x55555528a0 *)
mov v19_0 v3_2; mov v19_1 v3_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x55555528a4 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x55555528a8 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x55555528ac *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x55555528b0 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x55555528b4 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x55555528b8 *)
adds dc w10 w10 w12;
(* add	v0.4s, v0.4s, v7.4s                         #! PC = 0x55555528bc *)
adds dc v0_0 v0_0 v7_0; adds dc v0_1 v0_1 v7_1;
adds dc v0_2 v0_2 v7_2; adds dc v0_3 v0_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x55555528c0 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x55555528c4 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x55555528c8 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x55555528cc *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x55555528d0 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x55555528d4 *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #4]                               #! EA = L0x7fffffea64; Value = 0xbdca05da753c4a98; PC = 0x55555528d8 *)
mov w12 L0x7fffffea64;
(* and	w14, w14, w13                               #! PC = 0x55555528dc *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x55555528e0 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x55555528e4 *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x55555528e8 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x55555528ec *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x55555528f0 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x55555528f4 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x55555528f8 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x55555528fc *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552900 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552904 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552908 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x555555290c *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552910 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552914 *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552918 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x555555291c *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552920 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552924 *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552928 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x555555292c *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552930 *)
ror w11@uint32 w11 6;
(* add	v0.4s, v0.4s, v5.4s                         #! PC = 0x5555552934 *)
adds dc v0_0 v0_0 v5_0; adds dc v0_1 v0_1 v5_1;
adds dc v0_2 v0_2 v5_2; adds dc v0_3 v0_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552938 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x555555293c *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552940 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552944 *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #8]                               #! EA = L0x7fffffea68; Value = 0xf5c2e9b4bdca05da; PC = 0x5555552948 *)
mov w12 L0x7fffffea68;
(* and	w13, w13, w14                               #! PC = 0x555555294c *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552950 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552954 *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552958 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x555555295c *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552960 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552964 *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552968 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x555555296c *)
and w12@uint32 w6 w5;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x5555552970 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552974 *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552978 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x555555297c *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v0.4s, #17                         #! PC = 0x5555552980 *)
split v18_0 dc v0_0 17; split v18_1 dc v0_1 17;
split v18_2 dc v0_2 17; split v18_3 dc v0_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552984 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v0.4s, #10                         #! PC = 0x5555552988 *)
split v19_0 dc v0_0 10; split v19_1 dc v0_1 10;
split v19_2 dc v0_2 10; split v19_3 dc v0_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x555555298c *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552990 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v0.4s, #15                          #! PC = 0x5555552994 *)
split dc slil v0_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v0_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v0_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v0_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552998 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v0.4s, #19                         #! PC = 0x555555299c *)
split v17_0 dc v0_0 19; split v17_1 dc v0_1 19;
split v17_2 dc v0_2 19; split v17_3 dc v0_3 19;
(* ror	w11, w11, #6                                #! PC = 0x55555529a0 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x55555529a4 *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x55555529a8 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x55555529ac *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x55555529b0 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v0.4s, #13                          #! PC = 0x55555529b4 *)
split dc slil v0_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v0_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v0_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v0_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #12]                              #! EA = L0x7fffffea6c; Value = 0xb956c25bf5c2e9b4; PC = 0x55555529b8 *)
mov w12 L0x7fffffea6c;
(* and	w14, w14, w13                               #! PC = 0x55555529bc *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x55555529c0 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524c0; Value = 0xefbe4786e49b69c1; PC = 0x55555529c4 *)
mov v4_0 L0x55555524c0; mov v4_1 L0x55555524c4;
mov v4_2 L0x55555524c8; mov v4_3 L0x55555524cc;
(* add	w4, w4, w8                                  #! PC = 0x55555529c8 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x55555529cc *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x55555529d0 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x55555529d4 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x55555529d8 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x55555529dc *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x55555529e0 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x55555529e4 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x55555529e8 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x55555529ec *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x55555529f0 *)
adds dc w8 w8 w14;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x55555529f4 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x55555529f8 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x55555529fc *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552a00 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v0.4s                         #! PC = 0x5555552a04 *)
adds dc v4_0 v4_0 v0_0; adds dc v4_1 v4_1 v0_1;
adds dc v4_2 v4_2 v0_2; adds dc v4_3 v4_3 v0_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552a08 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552a0c *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552a10 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552a14 *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552a18 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #16]                              #! EA = L0x7fffffea70; Value = 0x59f111f1b956c25b; PC = 0x5555552a1c *)
mov w12 L0x7fffffea70;
(* and	w13, w13, w14                               #! PC = 0x5555552a20 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552a24 *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552a28 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552a2c *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea60; PC = 0x5555552a30 *)
mov L0x7fffffea60 v4_0; mov L0x7fffffea64 v4_1;
mov L0x7fffffea68 v4_2; mov L0x7fffffea6c v4_3;
(* ext	v4.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552a34 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a38 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552a3c *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552a40 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552a44 *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552a48 *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552a4c *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552a50 *)
adds dc w7 w7 w13;
(* mov	d19, v0.d[1]                                #! PC = 0x5555552a54 *)
mov v19_0 v0_2; mov v19_1 v0_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552a58 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552a5c *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552a60 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552a64 *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552a68 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a6c *)
adds dc w6 w6 w12;
(* add	v1.4s, v1.4s, v7.4s                         #! PC = 0x5555552a70 *)
adds dc v1_0 v1_0 v7_0; adds dc v1_1 v1_1 v7_1;
adds dc v1_2 v1_2 v7_2; adds dc v1_3 v1_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552a74 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552a78 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552a7c *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552a80 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552a84 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552a88 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #20]                              #! EA = L0x7fffffea74; Value = 0x923f82a459f111f1; PC = 0x5555552a8c *)
mov w12 L0x7fffffea74;
(* and	w14, w14, w13                               #! PC = 0x5555552a90 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552a94 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552a98 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552a9c *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552aa0 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552aa4 *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552aa8 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552aac *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552ab0 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552ab4 *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552ab8 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552abc *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552ac0 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552ac4 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552ac8 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552acc *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552ad0 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552ad4 *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552ad8 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552adc *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552ae0 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552ae4 *)
ror w11@uint32 w11 6;
(* add	v1.4s, v1.4s, v5.4s                         #! PC = 0x5555552ae8 *)
adds dc v1_0 v1_0 v5_0; adds dc v1_1 v1_1 v5_1;
adds dc v1_2 v1_2 v5_2; adds dc v1_3 v1_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552aec *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552af0 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552af4 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552af8 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #24]                              #! EA = L0x7fffffea78; Value = 0xab1c5ed5923f82a4; PC = 0x5555552afc *)
mov w12 L0x7fffffea78;
(* and	w13, w13, w14                               #! PC = 0x5555552b00 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552b04 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552b08 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552b0c *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552b10 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552b14 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b18 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552b1c *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552b20 *)
and w12@uint32 w10 w9;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552b24 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552b28 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552b2c *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552b30 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v1.4s, #17                         #! PC = 0x5555552b34 *)
split v18_0 dc v1_0 17; split v18_1 dc v1_1 17;
split v18_2 dc v1_2 17; split v18_3 dc v1_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552b38 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v1.4s, #10                         #! PC = 0x5555552b3c *)
split v19_0 dc v1_0 10; split v19_1 dc v1_1 10;
split v19_2 dc v1_2 10; split v19_3 dc v1_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552b40 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552b44 *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v1.4s, #15                          #! PC = 0x5555552b48 *)
split dc slil v1_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v1_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v1_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v1_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b4c *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v1.4s, #19                         #! PC = 0x5555552b50 *)
split v17_0 dc v1_0 19; split v17_1 dc v1_1 19;
split v17_2 dc v1_2 19; split v17_3 dc v1_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552b54 *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552b58 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552b5c *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552b60 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552b64 *)
adds dc w4 w4 w11;
(* sli	v17.4s, v1.4s, #13                          #! PC = 0x5555552b68 *)
split dc slil v1_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v1_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v1_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v1_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #28]                              #! EA = L0x7fffffea7c; Value = 0xd807aa98ab1c5ed5; PC = 0x5555552b6c *)
mov w12 L0x7fffffea7c;
(* and	w14, w14, w13                               #! PC = 0x5555552b70 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552b74 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524d0; Value = 0x4a7484aa2de92c6f; PC = 0x5555552b78 *)
mov v4_0 L0x55555524d0; mov v4_1 L0x55555524d4;
mov v4_2 L0x55555524d8; mov v4_3 L0x55555524dc;
(* add	w8, w8, w4                                  #! PC = 0x5555552b7c *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552b80 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552b84 *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552b88 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552b8c *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552b90 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552b94 *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552b98 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552b9c *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552ba0 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552ba4 *)
adds dc w4 w4 w14;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552ba8 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552bac *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552bb0 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552bb4 *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v1.4s                         #! PC = 0x5555552bb8 *)
adds dc v4_0 v4_0 v1_0; adds dc v4_1 v4_1 v1_1;
adds dc v4_2 v4_2 v1_2; adds dc v4_3 v4_3 v1_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552bbc *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552bc0 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552bc4 *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552bc8 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552bcc *)
adds dc w3 w3 w11;
(* ldr	w12, [sp, #32]                              #! EA = L0x7fffffea80; Value = 0x12835b01d807aa98; PC = 0x5555552bd0 *)
mov w12 L0x7fffffea80;
(* and	w13, w13, w14                               #! PC = 0x5555552bd4 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552bd8 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552bdc *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552be0 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea70; PC = 0x5555552be4 *)
mov L0x7fffffea70 v4_0; mov L0x7fffffea74 v4_1;
mov L0x7fffffea78 v4_2; mov L0x7fffffea7c v4_3;
(* ext	v4.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552be8 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552bec *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552bf0 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x5555552bf4 *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552bf8 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552bfc *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552c00 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x5555552c04 *)
adds dc w3 w3 w13;
(* mov	d19, v1.d[1]                                #! PC = 0x5555552c08 *)
mov v19_0 v1_2; mov v19_1 v1_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552c0c *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x5555552c10 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552c14 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x5555552c18 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552c1c *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x5555552c20 *)
adds dc w10 w10 w12;
(* add	v2.4s, v2.4s, v7.4s                         #! PC = 0x5555552c24 *)
adds dc v2_0 v2_0 v7_0; adds dc v2_1 v2_1 v7_1;
adds dc v2_2 v2_2 v7_2; adds dc v2_3 v2_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552c28 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552c2c *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x5555552c30 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x5555552c34 *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552c38 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x5555552c3c *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #36]                              #! EA = L0x7fffffea84; Value = 0x243185be12835b01; PC = 0x5555552c40 *)
mov w12 L0x7fffffea84;
(* and	w14, w14, w13                               #! PC = 0x5555552c44 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552c48 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552c4c *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x5555552c50 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552c54 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x5555552c58 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552c5c *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x5555552c60 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x5555552c64 *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552c68 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552c6c *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552c70 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x5555552c74 *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552c78 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552c7c *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552c80 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552c84 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552c88 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552c8c *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552c90 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x5555552c94 *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552c98 *)
ror w11@uint32 w11 6;
(* add	v2.4s, v2.4s, v5.4s                         #! PC = 0x5555552c9c *)
adds dc v2_0 v2_0 v5_0; adds dc v2_1 v2_1 v5_1;
adds dc v2_2 v2_2 v5_2; adds dc v2_3 v2_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552ca0 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x5555552ca4 *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552ca8 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552cac *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #40]                              #! EA = L0x7fffffea88; Value = 0x550c7dc3243185be; PC = 0x5555552cb0 *)
mov w12 L0x7fffffea88;
(* and	w13, w13, w14                               #! PC = 0x5555552cb4 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552cb8 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552cbc *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552cc0 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x5555552cc4 *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552cc8 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552ccc *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552cd0 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x5555552cd4 *)
and w12@uint32 w6 w5;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552cd8 *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552cdc *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552ce0 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x5555552ce4 *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v2.4s, #17                         #! PC = 0x5555552ce8 *)
split v18_0 dc v2_0 17; split v18_1 dc v2_1 17;
split v18_2 dc v2_2 17; split v18_3 dc v2_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552cec *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v2.4s, #10                         #! PC = 0x5555552cf0 *)
split v19_0 dc v2_0 10; split v19_1 dc v2_1 10;
split v19_2 dc v2_2 10; split v19_3 dc v2_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x5555552cf4 *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552cf8 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v2.4s, #15                          #! PC = 0x5555552cfc *)
split dc slil v2_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v2_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v2_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v2_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552d00 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v2.4s, #19                         #! PC = 0x5555552d04 *)
split v17_0 dc v2_0 19; split v17_1 dc v2_1 19;
split v17_2 dc v2_2 19; split v17_3 dc v2_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552d08 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x5555552d0c *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552d10 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x5555552d14 *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x5555552d18 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v2.4s, #13                          #! PC = 0x5555552d1c *)
split dc slil v2_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v2_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v2_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v2_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #44]                              #! EA = L0x7fffffea8c; Value = 0x72be5d74550c7dc3; PC = 0x5555552d20 *)
mov w12 L0x7fffffea8c;
(* and	w14, w14, w13                               #! PC = 0x5555552d24 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552d28 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524e0; Value = 0xa831c66d983e5152; PC = 0x5555552d2c *)
mov v4_0 L0x55555524e0; mov v4_1 L0x55555524e4;
mov v4_2 L0x55555524e8; mov v4_3 L0x55555524ec;
(* add	w4, w4, w8                                  #! PC = 0x5555552d30 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552d34 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x5555552d38 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552d3c *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d40 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x5555552d44 *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x5555552d48 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552d4c *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x5555552d50 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x5555552d54 *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x5555552d58 *)
adds dc w8 w8 w14;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552d5c *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552d60 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x5555552d64 *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552d68 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v2.4s                         #! PC = 0x5555552d6c *)
adds dc v4_0 v4_0 v2_0; adds dc v4_1 v4_1 v2_1;
adds dc v4_2 v4_2 v2_2; adds dc v4_3 v4_3 v2_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d70 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552d74 *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552d78 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552d7c *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552d80 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #48]                              #! EA = L0x7fffffea90; Value = 0x80deb1fe72be5d74; PC = 0x5555552d84 *)
mov w12 L0x7fffffea90;
(* and	w13, w13, w14                               #! PC = 0x5555552d88 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552d8c *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552d90 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552d94 *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea80; PC = 0x5555552d98 *)
mov L0x7fffffea80 v4_0; mov L0x7fffffea84 v4_1;
mov L0x7fffffea88 v4_2; mov L0x7fffffea8c v4_3;
(* ext	v4.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552d9c *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552da0 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552da4 *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552da8 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552dac *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552db0 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552db4 *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552db8 *)
adds dc w7 w7 w13;
(* mov	d19, v2.d[1]                                #! PC = 0x5555552dbc *)
mov v19_0 v2_2; mov v19_1 v2_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552dc0 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552dc4 *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552dc8 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552dcc *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552dd0 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552dd4 *)
adds dc w6 w6 w12;
(* add	v3.4s, v3.4s, v7.4s                         #! PC = 0x5555552dd8 *)
adds dc v3_0 v3_0 v7_0; adds dc v3_1 v3_1 v7_1;
adds dc v3_2 v3_2 v7_2; adds dc v3_3 v3_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552ddc *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552de0 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552de4 *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552de8 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552dec *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552df0 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #52]                              #! EA = L0x7fffffea94; Value = 0x9bdc06a780deb1fe; PC = 0x5555552df4 *)
mov w12 L0x7fffffea94;
(* and	w14, w14, w13                               #! PC = 0x5555552df8 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552dfc *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e00 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552e04 *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552e08 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552e0c *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552e10 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552e14 *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552e18 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552e1c *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552e20 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552e24 *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552e28 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552e2c *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552e30 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552e34 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552e38 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552e3c *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552e40 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552e44 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552e48 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552e4c *)
ror w11@uint32 w11 6;
(* add	v3.4s, v3.4s, v5.4s                         #! PC = 0x5555552e50 *)
adds dc v3_0 v3_0 v5_0; adds dc v3_1 v3_1 v5_1;
adds dc v3_2 v3_2 v5_2; adds dc v3_3 v3_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552e54 *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552e58 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552e5c *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552e60 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #56]                              #! EA = L0x7fffffea98; Value = 0xc19bf1f49bdc06a7; PC = 0x5555552e64 *)
mov w12 L0x7fffffea98;
(* and	w13, w13, w14                               #! PC = 0x5555552e68 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552e6c *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e70 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552e74 *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552e78 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552e7c *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552e80 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552e84 *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552e88 *)
and w12@uint32 w10 w9;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552e8c *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552e90 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552e94 *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552e98 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v3.4s, #17                         #! PC = 0x5555552e9c *)
split v18_0 dc v3_0 17; split v18_1 dc v3_1 17;
split v18_2 dc v3_2 17; split v18_3 dc v3_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552ea0 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v3.4s, #10                         #! PC = 0x5555552ea4 *)
split v19_0 dc v3_0 10; split v19_1 dc v3_1 10;
split v19_2 dc v3_2 10; split v19_3 dc v3_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552ea8 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552eac *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v3.4s, #15                          #! PC = 0x5555552eb0 *)
split dc slil v3_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v3_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v3_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v3_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552eb4 *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v3.4s, #19                         #! PC = 0x5555552eb8 *)
split v17_0 dc v3_0 19; split v17_1 dc v3_1 19;
split v17_2 dc v3_2 19; split v17_3 dc v3_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552ebc *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552ec0 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552ec4 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552ec8 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552ecc *)
adds dc w4 w4 w11;
(* sli	v17.4s, v3.4s, #13                          #! PC = 0x5555552ed0 *)
split dc slil v3_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v3_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v3_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v3_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #60]                              #! EA = L0x7fffffea9c; Value = 0xffffeab0c19bf1f4; PC = 0x5555552ed4 *)
mov w12 L0x7fffffea9c;
(* and	w14, w14, w13                               #! PC = 0x5555552ed8 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552edc *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524f0; Value = 0xd5a79147c6e00bf3; PC = 0x5555552ee0 *)
mov v4_0 L0x55555524f0; mov v4_1 L0x55555524f4;
mov v4_2 L0x55555524f8; mov v4_3 L0x55555524fc;
(* add	w8, w8, w4                                  #! PC = 0x5555552ee4 *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552ee8 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552eec *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552ef0 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552ef4 *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552ef8 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552efc *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552f00 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552f04 *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552f08 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552f0c *)
adds dc w4 w4 w14;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552f10 *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552f14 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552f18 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552f1c *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v3.4s                         #! PC = 0x5555552f20 *)
adds dc v4_0 v4_0 v3_0; adds dc v4_1 v4_1 v3_1;
adds dc v4_2 v4_2 v3_2; adds dc v4_3 v4_3 v3_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552f24 *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552f28 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552f2c *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552f30 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552f34 *)
adds dc w3 w3 w11;
(* ldr	w12, [x16]                                  #! EA = L0x5555552500; Value = 0x2e1b213827b70a85; PC = 0x5555552f38 *)
mov w12 L0x5555552500;
(* and	w13, w13, w14                               #! PC = 0x5555552f3c *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552f40 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552f44 *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552f48 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea90; PC = 0x5555552f4c *)
mov L0x7fffffea90 v4_0; mov L0x7fffffea94 v4_1;
mov L0x7fffffea98 v4_2; mov L0x7fffffea9c v4_3;
(* cmp	w12, #0x0                                   #! PC = 0x5555552f50 *)
(* cmp w12, 0x0 *)
nop;
(* ldr	w12, [sp]                                   #! EA = L0x7fffffea60; Value = 0x49a73ee433a5d791; PC = 0x5555552f54 *)
mov w12 L0x7fffffea60;
(* sub	x17, x17, #0x40                             #! PC = 0x5555552f58 *)
(* sub x17, x17, 0x40 *)
nop;
(* #b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! PC = 0x5555552f5c *)
#b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! 0x5555552f5c = 0x5555552f5c;
(* ext	v4.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552880 *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552884 *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552888 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x555555288c *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552890 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552894 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552898 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x555555289c *)
adds dc w3 w3 w13;
(* mov	d19, v3.d[1]                                #! PC = 0x55555528a0 *)
mov v19_0 v3_2; mov v19_1 v3_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x55555528a4 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x55555528a8 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x55555528ac *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x55555528b0 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x55555528b4 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x55555528b8 *)
adds dc w10 w10 w12;
(* add	v0.4s, v0.4s, v7.4s                         #! PC = 0x55555528bc *)
adds dc v0_0 v0_0 v7_0; adds dc v0_1 v0_1 v7_1;
adds dc v0_2 v0_2 v7_2; adds dc v0_3 v0_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x55555528c0 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x55555528c4 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x55555528c8 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x55555528cc *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x55555528d0 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x55555528d4 *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #4]                               #! EA = L0x7fffffea64; Value = 0xef270dae49a73ee4; PC = 0x55555528d8 *)
mov w12 L0x7fffffea64;
(* and	w14, w14, w13                               #! PC = 0x55555528dc *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x55555528e0 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x55555528e4 *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x55555528e8 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x55555528ec *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x55555528f0 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x55555528f4 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x55555528f8 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x55555528fc *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552900 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552904 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552908 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x555555290c *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552910 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552914 *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552918 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x555555291c *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552920 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552924 *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552928 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x555555292c *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552930 *)
ror w11@uint32 w11 6;
(* add	v0.4s, v0.4s, v5.4s                         #! PC = 0x5555552934 *)
adds dc v0_0 v0_0 v5_0; adds dc v0_1 v0_1 v5_1;
adds dc v0_2 v0_2 v5_2; adds dc v0_3 v0_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552938 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x555555293c *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552940 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552944 *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #8]                               #! EA = L0x7fffffea68; Value = 0xa66c6dcfef270dae; PC = 0x5555552948 *)
mov w12 L0x7fffffea68;
(* and	w13, w13, w14                               #! PC = 0x555555294c *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552950 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552954 *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552958 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x555555295c *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552960 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552964 *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552968 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x555555296c *)
and w12@uint32 w6 w5;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x5555552970 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552974 *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552978 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x555555297c *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v0.4s, #17                         #! PC = 0x5555552980 *)
split v18_0 dc v0_0 17; split v18_1 dc v0_1 17;
split v18_2 dc v0_2 17; split v18_3 dc v0_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552984 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v0.4s, #10                         #! PC = 0x5555552988 *)
split v19_0 dc v0_0 10; split v19_1 dc v0_1 10;
split v19_2 dc v0_2 10; split v19_3 dc v0_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x555555298c *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552990 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v0.4s, #15                          #! PC = 0x5555552994 *)
split dc slil v0_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v0_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v0_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v0_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552998 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v0.4s, #19                         #! PC = 0x555555299c *)
split v17_0 dc v0_0 19; split v17_1 dc v0_1 19;
split v17_2 dc v0_2 19; split v17_3 dc v0_3 19;
(* ror	w11, w11, #6                                #! PC = 0x55555529a0 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x55555529a4 *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x55555529a8 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x55555529ac *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x55555529b0 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v0.4s, #13                          #! PC = 0x55555529b4 *)
split dc slil v0_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v0_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v0_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v0_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #12]                              #! EA = L0x7fffffea6c; Value = 0xc827d974a66c6dcf; PC = 0x55555529b8 *)
mov w12 L0x7fffffea6c;
(* and	w14, w14, w13                               #! PC = 0x55555529bc *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x55555529c0 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552500; Value = 0x2e1b213827b70a85; PC = 0x55555529c4 *)
mov v4_0 L0x5555552500; mov v4_1 L0x5555552504;
mov v4_2 L0x5555552508; mov v4_3 L0x555555250c;
(* add	w4, w4, w8                                  #! PC = 0x55555529c8 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x55555529cc *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x55555529d0 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x55555529d4 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x55555529d8 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x55555529dc *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x55555529e0 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x55555529e4 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x55555529e8 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x55555529ec *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x55555529f0 *)
adds dc w8 w8 w14;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x55555529f4 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x55555529f8 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x55555529fc *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552a00 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v0.4s                         #! PC = 0x5555552a04 *)
adds dc v4_0 v4_0 v0_0; adds dc v4_1 v4_1 v0_1;
adds dc v4_2 v4_2 v0_2; adds dc v4_3 v4_3 v0_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552a08 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552a0c *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552a10 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552a14 *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552a18 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #16]                              #! EA = L0x7fffffea70; Value = 0x6a15ab41c827d974; PC = 0x5555552a1c *)
mov w12 L0x7fffffea70;
(* and	w13, w13, w14                               #! PC = 0x5555552a20 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552a24 *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552a28 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552a2c *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea60; PC = 0x5555552a30 *)
mov L0x7fffffea60 v4_0; mov L0x7fffffea64 v4_1;
mov L0x7fffffea68 v4_2; mov L0x7fffffea6c v4_3;
(* ext	v4.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552a34 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a38 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552a3c *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552a40 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552a44 *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552a48 *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552a4c *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552a50 *)
adds dc w7 w7 w13;
(* mov	d19, v0.d[1]                                #! PC = 0x5555552a54 *)
mov v19_0 v0_2; mov v19_1 v0_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552a58 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552a5c *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552a60 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552a64 *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552a68 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a6c *)
adds dc w6 w6 w12;
(* add	v1.4s, v1.4s, v7.4s                         #! PC = 0x5555552a70 *)
adds dc v1_0 v1_0 v7_0; adds dc v1_1 v1_1 v7_1;
adds dc v1_2 v1_2 v7_2; adds dc v1_3 v1_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552a74 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552a78 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552a7c *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552a80 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552a84 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552a88 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #20]                              #! EA = L0x7fffffea74; Value = 0xdfb59c4f6a15ab41; PC = 0x5555552a8c *)
mov w12 L0x7fffffea74;
(* and	w14, w14, w13                               #! PC = 0x5555552a90 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552a94 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552a98 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552a9c *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552aa0 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552aa4 *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552aa8 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552aac *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552ab0 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552ab4 *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552ab8 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552abc *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552ac0 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552ac4 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552ac8 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552acc *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552ad0 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552ad4 *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552ad8 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552adc *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552ae0 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552ae4 *)
ror w11@uint32 w11 6;
(* add	v1.4s, v1.4s, v5.4s                         #! PC = 0x5555552ae8 *)
adds dc v1_0 v1_0 v5_0; adds dc v1_1 v1_1 v5_1;
adds dc v1_2 v1_2 v5_2; adds dc v1_3 v1_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552aec *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552af0 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552af4 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552af8 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #24]                              #! EA = L0x7fffffea78; Value = 0x7da27b17dfb59c4f; PC = 0x5555552afc *)
mov w12 L0x7fffffea78;
(* and	w13, w13, w14                               #! PC = 0x5555552b00 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552b04 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552b08 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552b0c *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552b10 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552b14 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b18 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552b1c *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552b20 *)
and w12@uint32 w10 w9;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552b24 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552b28 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552b2c *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552b30 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v1.4s, #17                         #! PC = 0x5555552b34 *)
split v18_0 dc v1_0 17; split v18_1 dc v1_1 17;
split v18_2 dc v1_2 17; split v18_3 dc v1_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552b38 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v1.4s, #10                         #! PC = 0x5555552b3c *)
split v19_0 dc v1_0 10; split v19_1 dc v1_1 10;
split v19_2 dc v1_2 10; split v19_3 dc v1_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552b40 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552b44 *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v1.4s, #15                          #! PC = 0x5555552b48 *)
split dc slil v1_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v1_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v1_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v1_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b4c *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v1.4s, #19                         #! PC = 0x5555552b50 *)
split v17_0 dc v1_0 19; split v17_1 dc v1_1 19;
split v17_2 dc v1_2 19; split v17_3 dc v1_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552b54 *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552b58 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552b5c *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552b60 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552b64 *)
adds dc w4 w4 w11;
(* sli	v17.4s, v1.4s, #13                          #! PC = 0x5555552b68 *)
split dc slil v1_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v1_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v1_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v1_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #28]                              #! EA = L0x7fffffea7c; Value = 0xd97eb98e7da27b17; PC = 0x5555552b6c *)
mov w12 L0x7fffffea7c;
(* and	w14, w14, w13                               #! PC = 0x5555552b70 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552b74 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552510; Value = 0x766a0abb650a7354; PC = 0x5555552b78 *)
mov v4_0 L0x5555552510; mov v4_1 L0x5555552514;
mov v4_2 L0x5555552518; mov v4_3 L0x555555251c;
(* add	w8, w8, w4                                  #! PC = 0x5555552b7c *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552b80 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552b84 *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552b88 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552b8c *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552b90 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552b94 *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552b98 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552b9c *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552ba0 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552ba4 *)
adds dc w4 w4 w14;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552ba8 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552bac *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552bb0 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552bb4 *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v1.4s                         #! PC = 0x5555552bb8 *)
adds dc v4_0 v4_0 v1_0; adds dc v4_1 v4_1 v1_1;
adds dc v4_2 v4_2 v1_2; adds dc v4_3 v4_3 v1_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552bbc *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552bc0 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552bc4 *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552bc8 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552bcc *)
adds dc w3 w3 w11;
(* ldr	w12, [sp, #32]                              #! EA = L0x7fffffea80; Value = 0xeeefc012d97eb98e; PC = 0x5555552bd0 *)
mov w12 L0x7fffffea80;
(* and	w13, w13, w14                               #! PC = 0x5555552bd4 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552bd8 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552bdc *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552be0 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea70; PC = 0x5555552be4 *)
mov L0x7fffffea70 v4_0; mov L0x7fffffea74 v4_1;
mov L0x7fffffea78 v4_2; mov L0x7fffffea7c v4_3;
(* ext	v4.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552be8 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552bec *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552bf0 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x5555552bf4 *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552bf8 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552bfc *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552c00 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x5555552c04 *)
adds dc w3 w3 w13;
(* mov	d19, v1.d[1]                                #! PC = 0x5555552c08 *)
mov v19_0 v1_2; mov v19_1 v1_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552c0c *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x5555552c10 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552c14 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x5555552c18 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552c1c *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x5555552c20 *)
adds dc w10 w10 w12;
(* add	v2.4s, v2.4s, v7.4s                         #! PC = 0x5555552c24 *)
adds dc v2_0 v2_0 v7_0; adds dc v2_1 v2_1 v7_1;
adds dc v2_2 v2_2 v7_2; adds dc v2_3 v2_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552c28 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552c2c *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x5555552c30 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x5555552c34 *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552c38 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x5555552c3c *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #36]                              #! EA = L0x7fffffea84; Value = 0x6b6cec5deeefc012; PC = 0x5555552c40 *)
mov w12 L0x7fffffea84;
(* and	w14, w14, w13                               #! PC = 0x5555552c44 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552c48 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552c4c *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x5555552c50 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552c54 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x5555552c58 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552c5c *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x5555552c60 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x5555552c64 *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552c68 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552c6c *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552c70 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x5555552c74 *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552c78 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552c7c *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552c80 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552c84 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552c88 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552c8c *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552c90 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x5555552c94 *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552c98 *)
ror w11@uint32 w11 6;
(* add	v2.4s, v2.4s, v5.4s                         #! PC = 0x5555552c9c *)
adds dc v2_0 v2_0 v5_0; adds dc v2_1 v2_1 v5_1;
adds dc v2_2 v2_2 v5_2; adds dc v2_3 v2_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552ca0 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x5555552ca4 *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552ca8 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552cac *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #40]                              #! EA = L0x7fffffea88; Value = 0x9d8fd1c36b6cec5d; PC = 0x5555552cb0 *)
mov w12 L0x7fffffea88;
(* and	w13, w13, w14                               #! PC = 0x5555552cb4 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552cb8 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552cbc *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552cc0 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x5555552cc4 *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552cc8 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552ccc *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552cd0 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x5555552cd4 *)
and w12@uint32 w6 w5;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552cd8 *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552cdc *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552ce0 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x5555552ce4 *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v2.4s, #17                         #! PC = 0x5555552ce8 *)
split v18_0 dc v2_0 17; split v18_1 dc v2_1 17;
split v18_2 dc v2_2 17; split v18_3 dc v2_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552cec *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v2.4s, #10                         #! PC = 0x5555552cf0 *)
split v19_0 dc v2_0 10; split v19_1 dc v2_1 10;
split v19_2 dc v2_2 10; split v19_3 dc v2_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x5555552cf4 *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552cf8 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v2.4s, #15                          #! PC = 0x5555552cfc *)
split dc slil v2_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v2_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v2_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v2_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552d00 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v2.4s, #19                         #! PC = 0x5555552d04 *)
split v17_0 dc v2_0 19; split v17_1 dc v2_1 19;
split v17_2 dc v2_2 19; split v17_3 dc v2_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552d08 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x5555552d0c *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552d10 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x5555552d14 *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x5555552d18 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v2.4s, #13                          #! PC = 0x5555552d1c *)
split dc slil v2_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v2_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v2_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v2_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #44]                              #! EA = L0x7fffffea8c; Value = 0xc177e3329d8fd1c3; PC = 0x5555552d20 *)
mov w12 L0x7fffffea8c;
(* and	w14, w14, w13                               #! PC = 0x5555552d24 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552d28 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552520; Value = 0xa81a664ba2bfe8a1; PC = 0x5555552d2c *)
mov v4_0 L0x5555552520; mov v4_1 L0x5555552524;
mov v4_2 L0x5555552528; mov v4_3 L0x555555252c;
(* add	w4, w4, w8                                  #! PC = 0x5555552d30 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552d34 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x5555552d38 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552d3c *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d40 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x5555552d44 *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x5555552d48 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552d4c *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x5555552d50 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x5555552d54 *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x5555552d58 *)
adds dc w8 w8 w14;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552d5c *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552d60 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x5555552d64 *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552d68 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v2.4s                         #! PC = 0x5555552d6c *)
adds dc v4_0 v4_0 v2_0; adds dc v4_1 v4_1 v2_1;
adds dc v4_2 v4_2 v2_2; adds dc v4_3 v4_3 v2_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d70 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552d74 *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552d78 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552d7c *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552d80 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #48]                              #! EA = L0x7fffffea90; Value = 0x3ba2fd03c177e332; PC = 0x5555552d84 *)
mov w12 L0x7fffffea90;
(* and	w13, w13, w14                               #! PC = 0x5555552d88 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552d8c *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552d90 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552d94 *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea80; PC = 0x5555552d98 *)
mov L0x7fffffea80 v4_0; mov L0x7fffffea84 v4_1;
mov L0x7fffffea88 v4_2; mov L0x7fffffea8c v4_3;
(* ext	v4.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552d9c *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552da0 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552da4 *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552da8 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552dac *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552db0 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552db4 *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552db8 *)
adds dc w7 w7 w13;
(* mov	d19, v2.d[1]                                #! PC = 0x5555552dbc *)
mov v19_0 v2_2; mov v19_1 v2_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552dc0 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552dc4 *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552dc8 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552dcc *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552dd0 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552dd4 *)
adds dc w6 w6 w12;
(* add	v3.4s, v3.4s, v7.4s                         #! PC = 0x5555552dd8 *)
adds dc v3_0 v3_0 v7_0; adds dc v3_1 v3_1 v7_1;
adds dc v3_2 v3_2 v7_2; adds dc v3_3 v3_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552ddc *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552de0 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552de4 *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552de8 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552dec *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552df0 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #52]                              #! EA = L0x7fffffea94; Value = 0x1ed9fd8b3ba2fd03; PC = 0x5555552df4 *)
mov w12 L0x7fffffea94;
(* and	w14, w14, w13                               #! PC = 0x5555552df8 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552dfc *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e00 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552e04 *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552e08 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552e0c *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552e10 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552e14 *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552e18 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552e1c *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552e20 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552e24 *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552e28 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552e2c *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552e30 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552e34 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552e38 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552e3c *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552e40 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552e44 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552e48 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552e4c *)
ror w11@uint32 w11 6;
(* add	v3.4s, v3.4s, v5.4s                         #! PC = 0x5555552e50 *)
adds dc v3_0 v3_0 v5_0; adds dc v3_1 v3_1 v5_1;
adds dc v3_2 v3_2 v5_2; adds dc v3_3 v3_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552e54 *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552e58 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552e5c *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552e60 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #56]                              #! EA = L0x7fffffea98; Value = 0x60259d5e1ed9fd8b; PC = 0x5555552e64 *)
mov w12 L0x7fffffea98;
(* and	w13, w13, w14                               #! PC = 0x5555552e68 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552e6c *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e70 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552e74 *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552e78 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552e7c *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552e80 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552e84 *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552e88 *)
and w12@uint32 w10 w9;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552e8c *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552e90 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552e94 *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552e98 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v3.4s, #17                         #! PC = 0x5555552e9c *)
split v18_0 dc v3_0 17; split v18_1 dc v3_1 17;
split v18_2 dc v3_2 17; split v18_3 dc v3_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552ea0 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v3.4s, #10                         #! PC = 0x5555552ea4 *)
split v19_0 dc v3_0 10; split v19_1 dc v3_1 10;
split v19_2 dc v3_2 10; split v19_3 dc v3_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552ea8 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552eac *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v3.4s, #15                          #! PC = 0x5555552eb0 *)
split dc slil v3_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v3_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v3_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v3_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552eb4 *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v3.4s, #19                         #! PC = 0x5555552eb8 *)
split v17_0 dc v3_0 19; split v17_1 dc v3_1 19;
split v17_2 dc v3_2 19; split v17_3 dc v3_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552ebc *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552ec0 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552ec4 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552ec8 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552ecc *)
adds dc w4 w4 w11;
(* sli	v17.4s, v3.4s, #13                          #! PC = 0x5555552ed0 *)
split dc slil v3_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v3_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v3_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v3_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #60]                              #! EA = L0x7fffffea9c; Value = 0xffffeab060259d5e; PC = 0x5555552ed4 *)
mov w12 L0x7fffffea9c;
(* and	w14, w14, w13                               #! PC = 0x5555552ed8 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552edc *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552530; Value = 0xd6990624d192e819; PC = 0x5555552ee0 *)
mov v4_0 L0x5555552530; mov v4_1 L0x5555552534;
mov v4_2 L0x5555552538; mov v4_3 L0x555555253c;
(* add	w8, w8, w4                                  #! PC = 0x5555552ee4 *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552ee8 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552eec *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552ef0 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552ef4 *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552ef8 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552efc *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552f00 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552f04 *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552f08 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552f0c *)
adds dc w4 w4 w14;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552f10 *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552f14 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552f18 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552f1c *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v3.4s                         #! PC = 0x5555552f20 *)
adds dc v4_0 v4_0 v3_0; adds dc v4_1 v4_1 v3_1;
adds dc v4_2 v4_2 v3_2; adds dc v4_3 v4_3 v3_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552f24 *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552f28 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552f2c *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552f30 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552f34 *)
adds dc w3 w3 w11;
(* ldr	w12, [x16]                                  #! EA = L0x5555552540; Value = 0x1e376c0819a4c116; PC = 0x5555552f38 *)
mov w12 L0x5555552540;
(* and	w13, w13, w14                               #! PC = 0x5555552f3c *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552f40 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552f44 *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552f48 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea90; PC = 0x5555552f4c *)
mov L0x7fffffea90 v4_0; mov L0x7fffffea94 v4_1;
mov L0x7fffffea98 v4_2; mov L0x7fffffea9c v4_3;
(* cmp	w12, #0x0                                   #! PC = 0x5555552f50 *)
(* cmp w12, 0x0 *)
nop;
(* ldr	w12, [sp]                                   #! EA = L0x7fffffea60; Value = 0x8cade1c386351859; PC = 0x5555552f54 *)
mov w12 L0x7fffffea60;
(* sub	x17, x17, #0x40                             #! PC = 0x5555552f58 *)
(* sub x17, x17, 0x40 *)
nop;
(* #b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! PC = 0x5555552f5c *)
#b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! 0x5555552f5c = 0x5555552f5c;
(* ext	v4.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552880 *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552884 *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552888 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x555555288c *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552890 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552894 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552898 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x555555289c *)
adds dc w3 w3 w13;
(* mov	d19, v3.d[1]                                #! PC = 0x55555528a0 *)
mov v19_0 v3_2; mov v19_1 v3_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x55555528a4 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x55555528a8 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x55555528ac *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x55555528b0 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x55555528b4 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x55555528b8 *)
adds dc w10 w10 w12;
(* add	v0.4s, v0.4s, v7.4s                         #! PC = 0x55555528bc *)
adds dc v0_0 v0_0 v7_0; adds dc v0_1 v0_1 v7_1;
adds dc v0_2 v0_2 v7_2; adds dc v0_3 v0_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x55555528c0 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x55555528c4 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x55555528c8 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x55555528cc *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x55555528d0 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x55555528d4 *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #4]                               #! EA = L0x7fffffea64; Value = 0xb65f11e28cade1c3; PC = 0x55555528d8 *)
mov w12 L0x7fffffea64;
(* and	w14, w14, w13                               #! PC = 0x55555528dc *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x55555528e0 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x55555528e4 *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x55555528e8 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x55555528ec *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x55555528f0 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x55555528f4 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x55555528f8 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x55555528fc *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552900 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552904 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552908 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x555555290c *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552910 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552914 *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552918 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x555555291c *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552920 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552924 *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552928 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x555555292c *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552930 *)
ror w11@uint32 w11 6;
(* add	v0.4s, v0.4s, v5.4s                         #! PC = 0x5555552934 *)
adds dc v0_0 v0_0 v5_0; adds dc v0_1 v0_1 v5_1;
adds dc v0_2 v0_2 v5_2; adds dc v0_3 v0_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552938 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x555555293c *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552940 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552944 *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #8]                               #! EA = L0x7fffffea68; Value = 0xbba5def5b65f11e2; PC = 0x5555552948 *)
mov w12 L0x7fffffea68;
(* and	w13, w13, w14                               #! PC = 0x555555294c *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552950 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552954 *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552958 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x555555295c *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552960 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552964 *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552968 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x555555296c *)
and w12@uint32 w6 w5;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x5555552970 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552974 *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552978 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x555555297c *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v0.4s, #17                         #! PC = 0x5555552980 *)
split v18_0 dc v0_0 17; split v18_1 dc v0_1 17;
split v18_2 dc v0_2 17; split v18_3 dc v0_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552984 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v0.4s, #10                         #! PC = 0x5555552988 *)
split v19_0 dc v0_0 10; split v19_1 dc v0_1 10;
split v19_2 dc v0_2 10; split v19_3 dc v0_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x555555298c *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552990 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v0.4s, #15                          #! PC = 0x5555552994 *)
split dc slil v0_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v0_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v0_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v0_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552998 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v0.4s, #19                         #! PC = 0x555555299c *)
split v17_0 dc v0_0 19; split v17_1 dc v0_1 19;
split v17_2 dc v0_2 19; split v17_3 dc v0_3 19;
(* ror	w11, w11, #6                                #! PC = 0x55555529a0 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x55555529a4 *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x55555529a8 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x55555529ac *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x55555529b0 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v0.4s, #13                          #! PC = 0x55555529b4 *)
split dc slil v0_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v0_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v0_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v0_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #12]                              #! EA = L0x7fffffea6c; Value = 0xcf48e2a3bba5def5; PC = 0x55555529b8 *)
mov w12 L0x7fffffea6c;
(* and	w14, w14, w13                               #! PC = 0x55555529bc *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x55555529c0 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552540; Value = 0x1e376c0819a4c116; PC = 0x55555529c4 *)
mov v4_0 L0x5555552540; mov v4_1 L0x5555552544;
mov v4_2 L0x5555552548; mov v4_3 L0x555555254c;
(* add	w4, w4, w8                                  #! PC = 0x55555529c8 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x55555529cc *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x55555529d0 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x55555529d4 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x55555529d8 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x55555529dc *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x55555529e0 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x55555529e4 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x55555529e8 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x55555529ec *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x55555529f0 *)
adds dc w8 w8 w14;
(* add	v0.4s, v0.4s, v17.4s                        #! PC = 0x55555529f4 *)
adds dc v0_0 v0_0 v17_0; adds dc v0_1 v0_1 v17_1;
adds dc v0_2 v0_2 v17_2; adds dc v0_3 v0_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x55555529f8 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x55555529fc *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552a00 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v0.4s                         #! PC = 0x5555552a04 *)
adds dc v4_0 v4_0 v0_0; adds dc v4_1 v4_1 v0_1;
adds dc v4_2 v4_2 v0_2; adds dc v4_3 v4_3 v0_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552a08 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552a0c *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552a10 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552a14 *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552a18 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #16]                              #! EA = L0x7fffffea70; Value = 0xcceca546cf48e2a3; PC = 0x5555552a1c *)
mov w12 L0x7fffffea70;
(* and	w13, w13, w14                               #! PC = 0x5555552a20 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552a24 *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552a28 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552a2c *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea60; PC = 0x5555552a30 *)
mov L0x7fffffea60 v4_0; mov L0x7fffffea64 v4_1;
mov L0x7fffffea68 v4_2; mov L0x7fffffea6c v4_3;
(* ext	v4.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552a34 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a38 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552a3c *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552a40 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552a44 *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552a48 *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552a4c *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552a50 *)
adds dc w7 w7 w13;
(* mov	d19, v0.d[1]                                #! PC = 0x5555552a54 *)
mov v19_0 v0_2; mov v19_1 v0_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552a58 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552a5c *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552a60 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552a64 *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552a68 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552a6c *)
adds dc w6 w6 w12;
(* add	v1.4s, v1.4s, v7.4s                         #! PC = 0x5555552a70 *)
adds dc v1_0 v1_0 v7_0; adds dc v1_1 v1_1 v7_1;
adds dc v1_2 v1_2 v7_2; adds dc v1_3 v1_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552a74 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552a78 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552a7c *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552a80 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552a84 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552a88 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #20]                              #! EA = L0x7fffffea74; Value = 0x91701564cceca546; PC = 0x5555552a8c *)
mov w12 L0x7fffffea74;
(* and	w14, w14, w13                               #! PC = 0x5555552a90 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552a94 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552a98 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552a9c *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552aa0 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552aa4 *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552aa8 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552aac *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552ab0 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552ab4 *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552ab8 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552abc *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552ac0 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552ac4 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552ac8 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552acc *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552ad0 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552ad4 *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552ad8 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552adc *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552ae0 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552ae4 *)
ror w11@uint32 w11 6;
(* add	v1.4s, v1.4s, v5.4s                         #! PC = 0x5555552ae8 *)
adds dc v1_0 v1_0 v5_0; adds dc v1_1 v1_1 v5_1;
adds dc v1_2 v1_2 v5_2; adds dc v1_3 v1_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552aec *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552af0 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552af4 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552af8 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #24]                              #! EA = L0x7fffffea78; Value = 0x80402b5491701564; PC = 0x5555552afc *)
mov w12 L0x7fffffea78;
(* and	w13, w13, w14                               #! PC = 0x5555552b00 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552b04 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552b08 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552b0c *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552b10 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552b14 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b18 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552b1c *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552b20 *)
and w12@uint32 w10 w9;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552b24 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552b28 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552b2c *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552b30 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v1.4s, #17                         #! PC = 0x5555552b34 *)
split v18_0 dc v1_0 17; split v18_1 dc v1_1 17;
split v18_2 dc v1_2 17; split v18_3 dc v1_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552b38 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v1.4s, #10                         #! PC = 0x5555552b3c *)
split v19_0 dc v1_0 10; split v19_1 dc v1_1 10;
split v19_2 dc v1_2 10; split v19_3 dc v1_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552b40 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552b44 *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v1.4s, #15                          #! PC = 0x5555552b48 *)
split dc slil v1_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v1_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v1_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v1_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552b4c *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v1.4s, #19                         #! PC = 0x5555552b50 *)
split v17_0 dc v1_0 19; split v17_1 dc v1_1 19;
split v17_2 dc v1_2 19; split v17_3 dc v1_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552b54 *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552b58 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552b5c *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552b60 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552b64 *)
adds dc w4 w4 w11;
(* sli	v17.4s, v1.4s, #13                          #! PC = 0x5555552b68 *)
split dc slil v1_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v1_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v1_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v1_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #28]                              #! EA = L0x7fffffea7c; Value = 0x8e64d44080402b54; PC = 0x5555552b6c *)
mov w12 L0x7fffffea7c;
(* and	w14, w14, w13                               #! PC = 0x5555552b70 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552b74 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552550; Value = 0x4ed8aa4a391c0cb3; PC = 0x5555552b78 *)
mov v4_0 L0x5555552550; mov v4_1 L0x5555552554;
mov v4_2 L0x5555552558; mov v4_3 L0x555555255c;
(* add	w8, w8, w4                                  #! PC = 0x5555552b7c *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552b80 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552b84 *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552b88 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552b8c *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552b90 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552b94 *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552b98 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552b9c *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552ba0 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552ba4 *)
adds dc w4 w4 w14;
(* add	v1.4s, v1.4s, v17.4s                        #! PC = 0x5555552ba8 *)
adds dc v1_0 v1_0 v17_0; adds dc v1_1 v1_1 v17_1;
adds dc v1_2 v1_2 v17_2; adds dc v1_3 v1_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552bac *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552bb0 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552bb4 *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v1.4s                         #! PC = 0x5555552bb8 *)
adds dc v4_0 v4_0 v1_0; adds dc v4_1 v4_1 v1_1;
adds dc v4_2 v4_2 v1_2; adds dc v4_3 v4_3 v1_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552bbc *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552bc0 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552bc4 *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552bc8 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552bcc *)
adds dc w3 w3 w11;
(* ldr	w12, [sp, #32]                              #! EA = L0x7fffffea80; Value = 0xe5cf01b78e64d440; PC = 0x5555552bd0 *)
mov w12 L0x7fffffea80;
(* and	w13, w13, w14                               #! PC = 0x5555552bd4 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552bd8 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552bdc *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552be0 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea70; PC = 0x5555552be4 *)
mov L0x7fffffea70 v4_0; mov L0x7fffffea74 v4_1;
mov L0x7fffffea78 v4_2; mov L0x7fffffea7c v4_3;
(* ext	v4.16b, v2.16b, v3.16b, #4                  #! PC = 0x5555552be8 *)
mov ext_0 v2_1; mov ext_1 v2_2; mov ext_2 v2_3; mov ext_3 v3_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w10, w10, w12                               #! PC = 0x5555552bec *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552bf0 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x5555552bf4 *)
and w12@uint32 w8 w7;
(* bic	w15, w9, w7                                 #! PC = 0x5555552bf8 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* ext	v7.16b, v0.16b, v1.16b, #4                  #! PC = 0x5555552bfc *)
mov ext_0 v0_1; mov ext_1 v0_2; mov ext_2 v0_3; mov ext_3 v1_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552c00 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* add	w3, w3, w13                                 #! PC = 0x5555552c04 *)
adds dc w3 w3 w13;
(* mov	d19, v1.d[1]                                #! PC = 0x5555552c08 *)
mov v19_0 v1_2; mov v19_1 v1_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552c0c *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x5555552c10 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552c14 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x5555552c18 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552c1c *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w10, w10, w12                               #! PC = 0x5555552c20 *)
adds dc w10 w10 w12;
(* add	v2.4s, v2.4s, v7.4s                         #! PC = 0x5555552c24 *)
adds dc v2_0 v2_0 v7_0; adds dc v2_1 v2_1 v7_1;
adds dc v2_2 v2_2 v7_2; adds dc v2_3 v2_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552c28 *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552c2c *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w3, w4                                 #! PC = 0x5555552c30 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x5555552c34 *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552c38 *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w10, w10, w11                               #! PC = 0x5555552c3c *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #36]                              #! EA = L0x7fffffea84; Value = 0x44af9494e5cf01b7; PC = 0x5555552c40 *)
mov w12 L0x7fffffea84;
(* and	w14, w14, w13                               #! PC = 0x5555552c44 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552c48 *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552c4c *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x5555552c50 *)
adds dc w6 w6 w10;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552c54 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w4                                #! PC = 0x5555552c58 *)
xor w14@uint32 w14 w4;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552c5c *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w9, w9, w12                                 #! PC = 0x5555552c60 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x5555552c64 *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552c68 *)
and w12@uint32 w7 w6;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552c6c *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w8, w6                                 #! PC = 0x5555552c70 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x5555552c74 *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552c78 *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w10, w10, w14                               #! PC = 0x5555552c7c *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552c80 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552c84 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552c88 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552c8c *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552c90 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w9, w9, w12                                 #! PC = 0x5555552c94 *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552c98 *)
ror w11@uint32 w11 6;
(* add	v2.4s, v2.4s, v5.4s                         #! PC = 0x5555552c9c *)
adds dc v2_0 v2_0 v5_0; adds dc v2_1 v2_1 v5_1;
adds dc v2_2 v2_2 v5_2; adds dc v2_3 v2_3 v5_3;
(* eor	w14, w10, w3                                #! PC = 0x5555552ca0 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x5555552ca4 *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552ca8 *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w9, w9, w11                                 #! PC = 0x5555552cac *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #40]                              #! EA = L0x7fffffea88; Value = 0x841e332444af9494; PC = 0x5555552cb0 *)
mov w12 L0x7fffffea88;
(* and	w13, w13, w14                               #! PC = 0x5555552cb4 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552cb8 *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552cbc *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555552cc0 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x5555552cc4 *)
xor w13@uint32 w13 w3;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552cc8 *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552ccc *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555552cd0 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x5555552cd4 *)
and w12@uint32 w6 w5;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552cd8 *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* bic	w15, w7, w5                                 #! PC = 0x5555552cdc *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555552ce0 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x5555552ce4 *)
adds dc w9 w9 w13;
(* ushr	v18.4s, v2.4s, #17                         #! PC = 0x5555552ce8 *)
split v18_0 dc v2_0 17; split v18_1 dc v2_1 17;
split v18_2 dc v2_2 17; split v18_3 dc v2_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552cec *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v2.4s, #10                         #! PC = 0x5555552cf0 *)
split v19_0 dc v2_0 10; split v19_1 dc v2_1 10;
split v19_2 dc v2_2 10; split v19_3 dc v2_3 10;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x5555552cf4 *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555552cf8 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* sli	v18.4s, v2.4s, #15                          #! PC = 0x5555552cfc *)
split dc slil v2_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v2_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v2_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v2_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w8, w8, w12                                 #! PC = 0x5555552d00 *)
adds dc w8 w8 w12;
(* ushr	v17.4s, v2.4s, #19                         #! PC = 0x5555552d04 *)
split v17_0 dc v2_0 19; split v17_1 dc v2_1 19;
split v17_2 dc v2_2 19; split v17_3 dc v2_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552d08 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x5555552d0c *)
xor w13@uint32 w9 w10;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552d10 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x5555552d14 *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x5555552d18 *)
adds dc w8 w8 w11;
(* sli	v17.4s, v2.4s, #13                          #! PC = 0x5555552d1c *)
split dc slil v2_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v2_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v2_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v2_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #44]                              #! EA = L0x7fffffea8c; Value = 0x56df253d841e3324; PC = 0x5555552d20 *)
mov w12 L0x7fffffea8c;
(* and	w14, w14, w13                               #! PC = 0x5555552d24 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552d28 *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552560; Value = 0x78a5636f748f82ee; PC = 0x5555552d2c *)
mov v4_0 L0x5555552560; mov v4_1 L0x5555552564;
mov v4_2 L0x5555552568; mov v4_3 L0x555555256c;
(* add	w4, w4, w8                                  #! PC = 0x5555552d30 *)
adds dc w4 w4 w8;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552d34 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w10                               #! PC = 0x5555552d38 *)
xor w14@uint32 w14 w10;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552d3c *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d40 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x5555552d44 *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x5555552d48 *)
and w12@uint32 w5 w4;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552d4c *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w6, w4                                 #! PC = 0x5555552d50 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x5555552d54 *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x5555552d58 *)
adds dc w8 w8 w14;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555552d5c *)
adds dc v2_0 v2_0 v17_0; adds dc v2_1 v2_1 v17_1;
adds dc v2_2 v2_2 v17_2; adds dc v2_3 v2_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552d60 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x5555552d64 *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555552d68 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	v4.4s, v4.4s, v2.4s                         #! PC = 0x5555552d6c *)
adds dc v4_0 v4_0 v2_0; adds dc v4_1 v4_1 v2_1;
adds dc v4_2 v4_2 v2_2; adds dc v4_3 v4_3 v2_3;
(* add	w7, w7, w12                                 #! PC = 0x5555552d70 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552d74 *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555552d78 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555552d7c *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555552d80 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #48]                              #! EA = L0x7fffffea90; Value = 0xaae0ee3c56df253d; PC = 0x5555552d84 *)
mov w12 L0x7fffffea90;
(* and	w13, w13, w14                               #! PC = 0x5555552d88 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552d8c *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555552d90 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x5555552d94 *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea80; PC = 0x5555552d98 *)
mov L0x7fffffea80 v4_0; mov L0x7fffffea84 v4_1;
mov L0x7fffffea88 v4_2; mov L0x7fffffea8c v4_3;
(* ext	v4.16b, v3.16b, v0.16b, #4                  #! PC = 0x5555552d9c *)
mov ext_0 v3_1; mov ext_1 v3_2; mov ext_2 v3_3; mov ext_3 v0_0;
mov v4_0 ext_0; mov v4_1 ext_1; mov v4_2 ext_2; mov v4_3 ext_3;
(* add	w6, w6, w12                                 #! PC = 0x5555552da0 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555552da4 *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x5555552da8 *)
and w12@uint32 w4 w3;
(* bic	w15, w5, w3                                 #! PC = 0x5555552dac *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* ext	v7.16b, v1.16b, v2.16b, #4                  #! PC = 0x5555552db0 *)
mov ext_0 v1_1; mov ext_1 v1_2; mov ext_2 v1_3; mov ext_3 v2_0;
mov v7_0 ext_0; mov v7_1 ext_1; mov v7_2 ext_2; mov v7_3 ext_3;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555552db4 *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* add	w7, w7, w13                                 #! PC = 0x5555552db8 *)
adds dc w7 w7 w13;
(* mov	d19, v2.d[1]                                #! PC = 0x5555552dbc *)
mov v19_0 v2_2; mov v19_1 v2_3; mov v19_2 0@uint32; mov v19_3 0@uint32;
(* orr	w12, w12, w15                               #! PC = 0x5555552dc0 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555552dc4 *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* ushr	v6.4s, v4.4s, #7                           #! PC = 0x5555552dc8 *)
split v6_0 dc v4_0 7; split v6_1 dc v4_1 7;
split v6_2 dc v4_2 7; split v6_3 dc v4_3 7;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x5555552dcc *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* ushr	v5.4s, v4.4s, #3                           #! PC = 0x5555552dd0 *)
split v5_0 dc v4_0 3; split v5_1 dc v4_1 3;
split v5_2 dc v4_2 3; split v5_3 dc v4_3 3;
(* add	w6, w6, w12                                 #! PC = 0x5555552dd4 *)
adds dc w6 w6 w12;
(* add	v3.4s, v3.4s, v7.4s                         #! PC = 0x5555552dd8 *)
adds dc v3_0 v3_0 v7_0; adds dc v3_1 v3_1 v7_1;
adds dc v3_2 v3_2 v7_2; adds dc v3_3 v3_3 v7_3;
(* ror	w11, w11, #6                                #! PC = 0x5555552ddc *)
ror w11@uint32 w11 6;
(* sli	v6.4s, v4.4s, #25                           #! PC = 0x5555552de0 *)
split dc slil v4_0 (32-25); shl slih slil 25;
split dc v6_0 v6_0 25; or v6_0@uint32 slih v6_0;
split dc slil v4_1 (32-25); shl slih slil 25;
split dc v6_1 v6_1 25; or v6_1@uint32 slih v6_1;
split dc slil v4_2 (32-25); shl slih slil 25;
split dc v6_2 v6_2 25; or v6_2@uint32 slih v6_2;
split dc slil v4_3 (32-25); shl slih slil 25;
split dc v6_3 v6_3 25; or v6_3@uint32 slih v6_3;
(* eor	w13, w7, w8                                 #! PC = 0x5555552de4 *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555552de8 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* ushr	v7.4s, v4.4s, #18                          #! PC = 0x5555552dec *)
split v7_0 dc v4_0 18; split v7_1 dc v4_1 18;
split v7_2 dc v4_2 18; split v7_3 dc v4_3 18;
(* add	w6, w6, w11                                 #! PC = 0x5555552df0 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #52]                              #! EA = L0x7fffffea94; Value = 0x8e18f3f4aae0ee3c; PC = 0x5555552df4 *)
mov w12 L0x7fffffea94;
(* and	w14, w14, w13                               #! PC = 0x5555552df8 *)
and w14@uint32 w14 w13;
(* eor	v5.16b, v5.16b, v6.16b                      #! PC = 0x5555552dfc *)
xor v5_0@uint32 v5_0 v6_0; xor v5_1@uint32 v5_1 v6_1;
xor v5_2@uint32 v5_2 v6_2; xor v5_3@uint32 v5_3 v6_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e00 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555552e04 *)
adds dc w10 w10 w6;
(* sli	v7.4s, v4.4s, #14                           #! PC = 0x5555552e08 *)
split dc slil v4_0 (32-14); shl slih slil 14;
split dc v7_0 v7_0 14; or v7_0@uint32 slih v7_0;
split dc slil v4_1 (32-14); shl slih slil 14;
split dc v7_1 v7_1 14; or v7_1@uint32 slih v7_1;
split dc slil v4_2 (32-14); shl slih slil 14;
split dc v7_2 v7_2 14; or v7_2@uint32 slih v7_2;
split dc slil v4_3 (32-14); shl slih slil 14;
split dc v7_3 v7_3 14; or v7_3@uint32 slih v7_3;
(* eor	w14, w14, w8                                #! PC = 0x5555552e0c *)
xor w14@uint32 w14 w8;
(* ushr	v16.4s, v19.4s, #17                        #! PC = 0x5555552e10 *)
split v16_0 dc v19_0 17; split v16_1 dc v19_1 17;
split v16_2 dc v19_2 17; split v16_3 dc v19_3 17;
(* add	w5, w5, w12                                 #! PC = 0x5555552e14 *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x5555552e18 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555552e1c *)
and w12@uint32 w3 w10;
(* eor	v5.16b, v5.16b, v7.16b                      #! PC = 0x5555552e20 *)
xor v5_0@uint32 v5_0 v7_0; xor v5_1@uint32 v5_1 v7_1;
xor v5_2@uint32 v5_2 v7_2; xor v5_3@uint32 v5_3 v7_3;
(* bic	w15, w4, w10                                #! PC = 0x5555552e24 *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555552e28 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* sli	v16.4s, v19.4s, #15                         #! PC = 0x5555552e2c *)
split dc slil v19_0 (32-15); shl slih slil 15;
split dc v16_0 v16_0 15; or v16_0@uint32 slih v16_0;
split dc slil v19_1 (32-15); shl slih slil 15;
split dc v16_1 v16_1 15; or v16_1@uint32 slih v16_1;
split dc slil v19_2 (32-15); shl slih slil 15;
split dc v16_2 v16_2 15; or v16_2@uint32 slih v16_2;
split dc slil v19_3 (32-15); shl slih slil 15;
split dc v16_3 v16_3 15; or v16_3@uint32 slih v16_3;
(* add	w6, w6, w14                                 #! PC = 0x5555552e30 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552e34 *)
or w12@uint32 w12 w15;
(* ushr	v17.4s, v19.4s, #10                        #! PC = 0x5555552e38 *)
split v17_0 dc v19_0 10; split v17_1 dc v19_1 10;
split v17_2 dc v19_2 10; split v17_3 dc v19_3 10;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555552e3c *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555552e40 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* ushr	v7.4s, v19.4s, #19                         #! PC = 0x5555552e44 *)
split v7_0 dc v19_0 19; split v7_1 dc v19_1 19;
split v7_2 dc v19_2 19; split v7_3 dc v19_3 19;
(* add	w5, w5, w12                                 #! PC = 0x5555552e48 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552e4c *)
ror w11@uint32 w11 6;
(* add	v3.4s, v3.4s, v5.4s                         #! PC = 0x5555552e50 *)
adds dc v3_0 v3_0 v5_0; adds dc v3_1 v3_1 v5_1;
adds dc v3_2 v3_2 v5_2; adds dc v3_3 v3_3 v5_3;
(* eor	w14, w6, w7                                 #! PC = 0x5555552e54 *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555552e58 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* sli	v7.4s, v19.4s, #13                          #! PC = 0x5555552e5c *)
split dc slil v19_0 (32-13); shl slih slil 13;
split dc v7_0 v7_0 13; or v7_0@uint32 slih v7_0;
split dc slil v19_1 (32-13); shl slih slil 13;
split dc v7_1 v7_1 13; or v7_1@uint32 slih v7_1;
split dc slil v19_2 (32-13); shl slih slil 13;
split dc v7_2 v7_2 13; or v7_2@uint32 slih v7_2;
split dc slil v19_3 (32-13); shl slih slil 13;
split dc v7_3 v7_3 13; or v7_3@uint32 slih v7_3;
(* add	w5, w5, w11                                 #! PC = 0x5555552e60 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #56]                              #! EA = L0x7fffffea98; Value = 0x714c8b958e18f3f4; PC = 0x5555552e64 *)
mov w12 L0x7fffffea98;
(* and	w13, w13, w14                               #! PC = 0x5555552e68 *)
and w13@uint32 w13 w14;
(* eor	v17.16b, v17.16b, v16.16b                   #! PC = 0x5555552e6c *)
xor v17_0@uint32 v17_0 v16_0; xor v17_1@uint32 v17_1 v16_1;
xor v17_2@uint32 v17_2 v16_2; xor v17_3@uint32 v17_3 v16_3;
(* ror	w15, w15, #2                                #! PC = 0x5555552e70 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x5555552e74 *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555552e78 *)
xor w13@uint32 w13 w7;
(* eor	v17.16b, v17.16b, v7.16b                    #! PC = 0x5555552e7c *)
xor v17_0@uint32 v17_0 v7_0; xor v17_1@uint32 v17_1 v7_1;
xor v17_2@uint32 v17_2 v7_2; xor v17_3@uint32 v17_3 v7_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552e80 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555552e84 *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x5555552e88 *)
and w12@uint32 w10 w9;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552e8c *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* bic	w15, w3, w9                                 #! PC = 0x5555552e90 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555552e94 *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555552e98 *)
adds dc w5 w5 w13;
(* ushr	v18.4s, v3.4s, #17                         #! PC = 0x5555552e9c *)
split v18_0 dc v3_0 17; split v18_1 dc v3_1 17;
split v18_2 dc v3_2 17; split v18_3 dc v3_3 17;
(* orr	w12, w12, w15                               #! PC = 0x5555552ea0 *)
or w12@uint32 w12 w15;
(* ushr	v19.4s, v3.4s, #10                         #! PC = 0x5555552ea4 *)
split v19_0 dc v3_0 10; split v19_1 dc v3_1 10;
split v19_2 dc v3_2 10; split v19_3 dc v3_3 10;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555552ea8 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555552eac *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* sli	v18.4s, v3.4s, #15                          #! PC = 0x5555552eb0 *)
split dc slil v3_0 (32-15); shl slih slil 15;
split dc v18_0 v18_0 15; or v18_0@uint32 slih v18_0;
split dc slil v3_1 (32-15); shl slih slil 15;
split dc v18_1 v18_1 15; or v18_1@uint32 slih v18_1;
split dc slil v3_2 (32-15); shl slih slil 15;
split dc v18_2 v18_2 15; or v18_2@uint32 slih v18_2;
split dc slil v3_3 (32-15); shl slih slil 15;
split dc v18_3 v18_3 15; or v18_3@uint32 slih v18_3;
(* add	w4, w4, w12                                 #! PC = 0x5555552eb4 *)
adds dc w4 w4 w12;
(* ushr	v17.4s, v3.4s, #19                         #! PC = 0x5555552eb8 *)
split v17_0 dc v3_0 19; split v17_1 dc v3_1 19;
split v17_2 dc v3_2 19; split v17_3 dc v3_3 19;
(* ror	w11, w11, #6                                #! PC = 0x5555552ebc *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555552ec0 *)
xor w13@uint32 w5 w6;
(* eor	v19.16b, v19.16b, v18.16b                   #! PC = 0x5555552ec4 *)
xor v19_0@uint32 v19_0 v18_0; xor v19_1@uint32 v19_1 v18_1;
xor v19_2@uint32 v19_2 v18_2; xor v19_3@uint32 v19_3 v18_3;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555552ec8 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555552ecc *)
adds dc w4 w4 w11;
(* sli	v17.4s, v3.4s, #13                          #! PC = 0x5555552ed0 *)
split dc slil v3_0 (32-13); shl slih slil 13;
split dc v17_0 v17_0 13; or v17_0@uint32 slih v17_0;
split dc slil v3_1 (32-13); shl slih slil 13;
split dc v17_1 v17_1 13; or v17_1@uint32 slih v17_1;
split dc slil v3_2 (32-13); shl slih slil 13;
split dc v17_2 v17_2 13; or v17_2@uint32 slih v17_2;
split dc slil v3_3 (32-13); shl slih slil 13;
split dc v17_3 v17_3 13; or v17_3@uint32 slih v17_3;
(* ldr	w12, [sp, #60]                              #! EA = L0x7fffffea9c; Value = 0xffffeab0714c8b95; PC = 0x5555552ed4 *)
mov w12 L0x7fffffea9c;
(* and	w14, w14, w13                               #! PC = 0x5555552ed8 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552edc *)
ror w15@uint32 w15 2;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552570; Value = 0xa4506ceb90befffa; PC = 0x5555552ee0 *)
mov v4_0 L0x5555552570; mov v4_1 L0x5555552574;
mov v4_2 L0x5555552578; mov v4_3 L0x555555257c;
(* add	w8, w8, w4                                  #! PC = 0x5555552ee4 *)
adds dc w8 w8 w4;
(* eor	v19.16b, v19.16b, v17.16b                   #! PC = 0x5555552ee8 *)
xor v19_0@uint32 v19_0 v17_0; xor v19_1@uint32 v19_1 v17_1;
xor v19_2@uint32 v19_2 v17_2; xor v19_3@uint32 v19_3 v17_3;
(* eor	w14, w14, w6                                #! PC = 0x5555552eec *)
xor w14@uint32 w14 w6;
(* eor	v17.16b, v17.16b, v17.16b                   #! PC = 0x5555552ef0 *)
xor v17_0@uint32 v17_0 v17_0; xor v17_1@uint32 v17_1 v17_1;
xor v17_2@uint32 v17_2 v17_2; xor v17_3@uint32 v17_3 v17_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552ef4 *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x5555552ef8 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555552efc *)
and w12@uint32 w9 w8;
(* mov	v17.d[1], v19.d[0]                          #! PC = 0x5555552f00 *)
mov v17_2 v19_0; mov v17_3 v19_1;
(* bic	w15, w10, w8                                #! PC = 0x5555552f04 *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555552f08 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x5555552f0c *)
adds dc w4 w4 w14;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555552f10 *)
adds dc v3_0 v3_0 v17_0; adds dc v3_1 v3_1 v17_1;
adds dc v3_2 v3_2 v17_2; adds dc v3_3 v3_3 v17_3;
(* orr	w12, w12, w15                               #! PC = 0x5555552f14 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555552f18 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555552f1c *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	v4.4s, v4.4s, v3.4s                         #! PC = 0x5555552f20 *)
adds dc v4_0 v4_0 v3_0; adds dc v4_1 v4_1 v3_1;
adds dc v4_2 v4_2 v3_2; adds dc v4_3 v4_3 v3_3;
(* add	w3, w3, w12                                 #! PC = 0x5555552f24 *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552f28 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555552f2c *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555552f30 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x5555552f34 *)
adds dc w3 w3 w11;
(* ldr	w12, [x16]                                  #! EA = L0x5555552580; Value = 0x3241485300000000; PC = 0x5555552f38 *)
mov w12 L0x5555552580;
(* and	w13, w13, w14                               #! PC = 0x5555552f3c *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555552f40 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555552f44 *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x5555552f48 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea90; PC = 0x5555552f4c *)
mov L0x7fffffea90 v4_0; mov L0x7fffffea94 v4_1;
mov L0x7fffffea98 v4_2; mov L0x7fffffea9c v4_3;
(* cmp	w12, #0x0                                   #! PC = 0x5555552f50 *)
(* cmp w12, 0x0 *)
nop;
(* ldr	w12, [sp]                                   #! EA = L0x7fffffea60; Value = 0x312a05446c01d175; PC = 0x5555552f54 *)
mov w12 L0x7fffffea60;
(* sub	x17, x17, #0x40                             #! PC = 0x5555552f58 *)
(* sub x17, x17, 0x40 *)
nop;
(* #b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! PC = 0x5555552f5c *)
#b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! 0x5555552f5c = 0x5555552f5c;
(* sub	x16, x16, #0x100                            #! PC = 0x5555552f60 *)
(* sub x16, x16, 0x100 *)
nop;
(* cmp	x1, x2                                      #! PC = 0x5555552f64 *)
(* cmp x1, x2 *)
nop;
(* mov	x17, #0x40                  	// #64         #! PC = 0x5555552f68 *)
mov x17 0x40@uint32;
(* csel	x17, x17, xzr, eq  // eq = none            #! PC = 0x5555552f6c *)
(* csel	x17, x17, xzr, eq  // eq = none *)
nop;
(* sub	x1, x1, x17                                 #! PC = 0x5555552f70 *)
(* sub x1, x1, x17 *)
nop;
(* mov	x17, sp                                     #! PC = 0x5555552f74 *)
(* mov x17, sp *)
nop;
(* add	w10, w10, w12                               #! PC = 0x5555552f78 *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555552f7c *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x5555552f80 *)
and w12@uint32 w8 w7;
(* ld1	{v0.16b}, [x1], #16                         #! EA = L0x55555640d0; Value = 0x0706050403020100; PC = 0x5555552f84 *)
mov v0_0 L0x55555640d0; mov v0_1 L0x55555640d4;
mov v0_2 L0x55555640d8; mov v0_3 L0x55555640dc;
(* bic	w15, w9, w7                                 #! PC = 0x5555552f88 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555552f8c *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552480; Value = 0x71374491428a2f98; PC = 0x5555552f90 *)
mov v4_0 L0x5555552480; mov v4_1 L0x5555552484;
mov v4_2 L0x5555552488; mov v4_3 L0x555555248c;
(* add	w3, w3, w13                                 #! PC = 0x5555552f94 *)
adds dc w3 w3 w13;
(* orr	w12, w12, w15                               #! PC = 0x5555552f98 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x5555552f9c *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x5555552fa0 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* rev32	v0.16b, v0.16b                            #! PC = 0x5555552fa4 *)
spl s10 s00 v0_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_0 t10 t00;
spl s10 s00 v0_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_1 t10 t00;
spl s10 s00 v0_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_2 t10 t00;
spl s10 s00 v0_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v0_3 t10 t00;
(* add	w10, w10, w12                               #! PC = 0x5555552fa8 *)
adds dc w10 w10 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552fac *)
ror w11@uint32 w11 6;
(* eor	w13, w3, w4                                 #! PC = 0x5555552fb0 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x5555552fb4 *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* add	v4.4s, v4.4s, v0.4s                         #! PC = 0x5555552fb8 *)
adds dc v4_0 v4_0 v0_0; adds dc v4_1 v4_1 v0_1;
adds dc v4_2 v4_2 v0_2; adds dc v4_3 v4_3 v0_3;
(* add	w10, w10, w11                               #! PC = 0x5555552fbc *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #4]                               #! EA = L0x7fffffea64; Value = 0x3503cc58312a0544; PC = 0x5555552fc0 *)
mov w12 L0x7fffffea64;
(* and	w14, w14, w13                               #! PC = 0x5555552fc4 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555552fc8 *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x5555552fcc *)
adds dc w6 w6 w10;
(* eor	w14, w14, w4                                #! PC = 0x5555552fd0 *)
xor w14@uint32 w14 w4;
(* add	w9, w9, w12                                 #! PC = 0x5555552fd4 *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x5555552fd8 *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555552fdc *)
and w12@uint32 w7 w6;
(* bic	w15, w8, w6                                 #! PC = 0x5555552fe0 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x5555552fe4 *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* add	w10, w10, w14                               #! PC = 0x5555552fe8 *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555552fec *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555552ff0 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x5555552ff4 *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* add	w9, w9, w12                                 #! PC = 0x5555552ff8 *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555552ffc *)
ror w11@uint32 w11 6;
(* eor	w14, w10, w3                                #! PC = 0x5555553000 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x5555553004 *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* add	w9, w9, w11                                 #! PC = 0x5555553008 *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #8]                               #! EA = L0x7fffffea68; Value = 0x4a686ef43503cc58; PC = 0x555555300c *)
mov w12 L0x7fffffea68;
(* and	w13, w13, w14                               #! PC = 0x5555553010 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555553014 *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x5555553018 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x555555301c *)
xor w13@uint32 w13 w3;
(* add	w8, w8, w12                                 #! PC = 0x5555553020 *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x5555553024 *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x5555553028 *)
and w12@uint32 w6 w5;
(* bic	w15, w7, w5                                 #! PC = 0x555555302c *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x5555553030 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x5555553034 *)
adds dc w9 w9 w13;
(* orr	w12, w12, w15                               #! PC = 0x5555553038 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x555555303c *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x5555553040 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* add	w8, w8, w12                                 #! PC = 0x5555553044 *)
adds dc w8 w8 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553048 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x555555304c *)
xor w13@uint32 w9 w10;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x5555553050 *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x5555553054 *)
adds dc w8 w8 w11;
(* ldr	w12, [sp, #12]                              #! EA = L0x7fffffea6c; Value = 0xf2a6d19d4a686ef4; PC = 0x5555553058 *)
mov w12 L0x7fffffea6c;
(* and	w14, w14, w13                               #! PC = 0x555555305c *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555553060 *)
ror w15@uint32 w15 2;
(* add	w4, w4, w8                                  #! PC = 0x5555553064 *)
adds dc w4 w4 w8;
(* eor	w14, w14, w10                               #! PC = 0x5555553068 *)
xor w14@uint32 w14 w10;
(* add	w7, w7, w12                                 #! PC = 0x555555306c *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x5555553070 *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x5555553074 *)
and w12@uint32 w5 w4;
(* bic	w15, w6, w4                                 #! PC = 0x5555553078 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x555555307c *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x5555553080 *)
adds dc w8 w8 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555553084 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x5555553088 *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x555555308c *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	w7, w7, w12                                 #! PC = 0x5555553090 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553094 *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555553098 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x555555309c *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x55555530a0 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #16]                              #! EA = L0x7fffffea70; Value = 0xadaa79baf2a6d19d; PC = 0x55555530a4 *)
mov w12 L0x7fffffea70;
(* and	w13, w13, w14                               #! PC = 0x55555530a8 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x55555530ac *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x55555530b0 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x55555530b4 *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea60; PC = 0x55555530b8 *)
mov L0x7fffffea60 v4_0; mov L0x7fffffea64 v4_1;
mov L0x7fffffea68 v4_2; mov L0x7fffffea6c v4_3;
(* add	w6, w6, w12                                 #! PC = 0x55555530bc *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x55555530c0 *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x55555530c4 *)
and w12@uint32 w4 w3;
(* ld1	{v1.16b}, [x1], #16                         #! EA = L0x55555640e0; Value = 0x0000000000000080; PC = 0x55555530c8 *)
mov v1_0 L0x55555640e0; mov v1_1 L0x55555640e4;
mov v1_2 L0x55555640e8; mov v1_3 L0x55555640ec;
(* bic	w15, w5, w3                                 #! PC = 0x55555530cc *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x55555530d0 *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x5555552490; Value = 0x59f111f13956c25b; PC = 0x55555530d4 *)
mov v4_0 L0x5555552490; mov v4_1 L0x5555552494;
mov v4_2 L0x5555552498; mov v4_3 L0x555555249c;
(* add	w7, w7, w13                                 #! PC = 0x55555530d8 *)
adds dc w7 w7 w13;
(* orr	w12, w12, w15                               #! PC = 0x55555530dc *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x55555530e0 *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x55555530e4 *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* rev32	v1.16b, v1.16b                            #! PC = 0x55555530e8 *)
spl s10 s00 v1_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_0 t10 t00;
spl s10 s00 v1_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_1 t10 t00;
spl s10 s00 v1_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_2 t10 t00;
spl s10 s00 v1_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v1_3 t10 t00;
(* add	w6, w6, w12                                 #! PC = 0x55555530ec *)
adds dc w6 w6 w12;
(* ror	w11, w11, #6                                #! PC = 0x55555530f0 *)
ror w11@uint32 w11 6;
(* eor	w13, w7, w8                                 #! PC = 0x55555530f4 *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x55555530f8 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* add	v4.4s, v4.4s, v1.4s                         #! PC = 0x55555530fc *)
adds dc v4_0 v4_0 v1_0; adds dc v4_1 v4_1 v1_1;
adds dc v4_2 v4_2 v1_2; adds dc v4_3 v4_3 v1_3;
(* add	w6, w6, w11                                 #! PC = 0x5555553100 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #20]                              #! EA = L0x7fffffea74; Value = 0x04c44a46adaa79ba; PC = 0x5555553104 *)
mov w12 L0x7fffffea74;
(* and	w14, w14, w13                               #! PC = 0x5555553108 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x555555310c *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555553110 *)
adds dc w10 w10 w6;
(* eor	w14, w14, w8                                #! PC = 0x5555553114 *)
xor w14@uint32 w14 w8;
(* add	w5, w5, w12                                 #! PC = 0x5555553118 *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x555555311c *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x5555553120 *)
and w12@uint32 w3 w10;
(* bic	w15, w4, w10                                #! PC = 0x5555553124 *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x5555553128 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* add	w6, w6, w14                                 #! PC = 0x555555312c *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555553130 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x5555553134 *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x5555553138 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* add	w5, w5, w12                                 #! PC = 0x555555313c *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553140 *)
ror w11@uint32 w11 6;
(* eor	w14, w6, w7                                 #! PC = 0x5555553144 *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x5555553148 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* add	w5, w5, w11                                 #! PC = 0x555555314c *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #24]                              #! EA = L0x7fffffea78; Value = 0x9edf3e2f04c44a46; PC = 0x5555553150 *)
mov w12 L0x7fffffea78;
(* and	w13, w13, w14                               #! PC = 0x5555553154 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555553158 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x555555315c *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x5555553160 *)
xor w13@uint32 w13 w7;
(* add	w4, w4, w12                                 #! PC = 0x5555553164 *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x5555553168 *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x555555316c *)
and w12@uint32 w10 w9;
(* bic	w15, w3, w9                                 #! PC = 0x5555553170 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x5555553174 *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555553178 *)
adds dc w5 w5 w13;
(* orr	w12, w12, w15                               #! PC = 0x555555317c *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555553180 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x5555553184 *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* add	w4, w4, w12                                 #! PC = 0x5555553188 *)
adds dc w4 w4 w12;
(* ror	w11, w11, #6                                #! PC = 0x555555318c *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555553190 *)
xor w13@uint32 w5 w6;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x5555553194 *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555553198 *)
adds dc w4 w4 w11;
(* ldr	w12, [sp, #28]                              #! EA = L0x7fffffea7c; Value = 0xbc6d65679edf3e2f; PC = 0x555555319c *)
mov w12 L0x7fffffea7c;
(* and	w14, w14, w13                               #! PC = 0x55555531a0 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x55555531a4 *)
ror w15@uint32 w15 2;
(* add	w8, w8, w4                                  #! PC = 0x55555531a8 *)
adds dc w8 w8 w4;
(* eor	w14, w14, w6                                #! PC = 0x55555531ac *)
xor w14@uint32 w14 w6;
(* add	w3, w3, w12                                 #! PC = 0x55555531b0 *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x55555531b4 *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x55555531b8 *)
and w12@uint32 w9 w8;
(* bic	w15, w10, w8                                #! PC = 0x55555531bc *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x55555531c0 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x55555531c4 *)
adds dc w4 w4 w14;
(* orr	w12, w12, w15                               #! PC = 0x55555531c8 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x55555531cc *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x55555531d0 *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	w3, w3, w12                                 #! PC = 0x55555531d4 *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x55555531d8 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x55555531dc *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x55555531e0 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x55555531e4 *)
adds dc w3 w3 w11;
(* ldr	w12, [sp, #32]                              #! EA = L0x7fffffea80; Value = 0x9deaef53bc6d6567; PC = 0x55555531e8 *)
mov w12 L0x7fffffea80;
(* and	w13, w13, w14                               #! PC = 0x55555531ec *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x55555531f0 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x55555531f4 *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x55555531f8 *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea70; PC = 0x55555531fc *)
mov L0x7fffffea70 v4_0; mov L0x7fffffea74 v4_1;
mov L0x7fffffea78 v4_2; mov L0x7fffffea7c v4_3;
(* add	w10, w10, w12                               #! PC = 0x5555553200 *)
adds dc w10 w10 w12;
(* add	w3, w3, w15                                 #! PC = 0x5555553204 *)
adds dc w3 w3 w15;
(* and	w12, w8, w7                                 #! PC = 0x5555553208 *)
and w12@uint32 w8 w7;
(* ld1	{v2.16b}, [x1], #16                         #! EA = L0x55555640f0; Value = 0x0000000000000000; PC = 0x555555320c *)
mov v2_0 L0x55555640f0; mov v2_1 L0x55555640f4;
mov v2_2 L0x55555640f8; mov v2_3 L0x55555640fc;
(* bic	w15, w9, w7                                 #! PC = 0x5555553210 *)
not w7_n@uint32 w7; and w15@uint32 w9 w7_n;
(* eor	w11, w7, w7, ror #5                         #! PC = 0x5555553214 *)
ror w7_r@uint32 w7 5; xor w11@uint32 w7 w7_r;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524a0; Value = 0x12835b01d807aa98; PC = 0x5555553218 *)
mov v4_0 L0x55555524a0; mov v4_1 L0x55555524a4;
mov v4_2 L0x55555524a8; mov v4_3 L0x55555524ac;
(* add	w3, w3, w13                                 #! PC = 0x555555321c *)
adds dc w3 w3 w13;
(* orr	w12, w12, w15                               #! PC = 0x5555553220 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w7, ror #19                       #! PC = 0x5555553224 *)
ror w7_r@uint32 w7 19; xor w11@uint32 w11 w7_r;
(* eor	w15, w3, w3, ror #11                        #! PC = 0x5555553228 *)
ror w3_r@uint32 w3 11; xor w15@uint32 w3 w3_r;
(* rev32	v2.16b, v2.16b                            #! PC = 0x555555322c *)
spl s10 s00 v2_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_0 t10 t00;
spl s10 s00 v2_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_1 t10 t00;
spl s10 s00 v2_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_2 t10 t00;
spl s10 s00 v2_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v2_3 t10 t00;
(* add	w10, w10, w12                               #! PC = 0x5555553230 *)
adds dc w10 w10 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553234 *)
ror w11@uint32 w11 6;
(* eor	w13, w3, w4                                 #! PC = 0x5555553238 *)
xor w13@uint32 w3 w4;
(* eor	w15, w15, w3, ror #20                       #! PC = 0x555555323c *)
ror w3_r@uint32 w3 20; xor w15@uint32 w15 w3_r;
(* add	v4.4s, v4.4s, v2.4s                         #! PC = 0x5555553240 *)
adds dc v4_0 v4_0 v2_0; adds dc v4_1 v4_1 v2_1;
adds dc v4_2 v4_2 v2_2; adds dc v4_3 v4_3 v2_3;
(* add	w10, w10, w11                               #! PC = 0x5555553244 *)
adds dc w10 w10 w11;
(* ldr	w12, [sp, #36]                              #! EA = L0x7fffffea84; Value = 0xd6d5e0c39deaef53; PC = 0x5555553248 *)
mov w12 L0x7fffffea84;
(* and	w14, w14, w13                               #! PC = 0x555555324c *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555553250 *)
ror w15@uint32 w15 2;
(* add	w6, w6, w10                                 #! PC = 0x5555553254 *)
adds dc w6 w6 w10;
(* eor	w14, w14, w4                                #! PC = 0x5555553258 *)
xor w14@uint32 w14 w4;
(* add	w9, w9, w12                                 #! PC = 0x555555325c *)
adds dc w9 w9 w12;
(* add	w10, w10, w15                               #! PC = 0x5555553260 *)
adds dc w10 w10 w15;
(* and	w12, w7, w6                                 #! PC = 0x5555553264 *)
and w12@uint32 w7 w6;
(* bic	w15, w8, w6                                 #! PC = 0x5555553268 *)
not w6_n@uint32 w6; and w15@uint32 w8 w6_n;
(* eor	w11, w6, w6, ror #5                         #! PC = 0x555555326c *)
ror w6_r@uint32 w6 5; xor w11@uint32 w6 w6_r;
(* add	w10, w10, w14                               #! PC = 0x5555553270 *)
adds dc w10 w10 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555553274 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w6, ror #19                       #! PC = 0x5555553278 *)
ror w6_r@uint32 w6 19; xor w11@uint32 w11 w6_r;
(* eor	w15, w10, w10, ror #11                      #! PC = 0x555555327c *)
ror w10_r@uint32 w10 11; xor w15@uint32 w10 w10_r;
(* add	w9, w9, w12                                 #! PC = 0x5555553280 *)
adds dc w9 w9 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553284 *)
ror w11@uint32 w11 6;
(* eor	w14, w10, w3                                #! PC = 0x5555553288 *)
xor w14@uint32 w10 w3;
(* eor	w15, w15, w10, ror #20                      #! PC = 0x555555328c *)
ror w10_r@uint32 w10 20; xor w15@uint32 w15 w10_r;
(* add	w9, w9, w11                                 #! PC = 0x5555553290 *)
adds dc w9 w9 w11;
(* ldr	w12, [sp, #40]                              #! EA = L0x7fffffea88; Value = 0xce75ae68d6d5e0c3; PC = 0x5555553294 *)
mov w12 L0x7fffffea88;
(* and	w13, w13, w14                               #! PC = 0x5555553298 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x555555329c *)
ror w15@uint32 w15 2;
(* add	w5, w5, w9                                  #! PC = 0x55555532a0 *)
adds dc w5 w5 w9;
(* eor	w13, w13, w3                                #! PC = 0x55555532a4 *)
xor w13@uint32 w13 w3;
(* add	w8, w8, w12                                 #! PC = 0x55555532a8 *)
adds dc w8 w8 w12;
(* add	w9, w9, w15                                 #! PC = 0x55555532ac *)
adds dc w9 w9 w15;
(* and	w12, w6, w5                                 #! PC = 0x55555532b0 *)
and w12@uint32 w6 w5;
(* bic	w15, w7, w5                                 #! PC = 0x55555532b4 *)
not w5_n@uint32 w5; and w15@uint32 w7 w5_n;
(* eor	w11, w5, w5, ror #5                         #! PC = 0x55555532b8 *)
ror w5_r@uint32 w5 5; xor w11@uint32 w5 w5_r;
(* add	w9, w9, w13                                 #! PC = 0x55555532bc *)
adds dc w9 w9 w13;
(* orr	w12, w12, w15                               #! PC = 0x55555532c0 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w5, ror #19                       #! PC = 0x55555532c4 *)
ror w5_r@uint32 w5 19; xor w11@uint32 w11 w5_r;
(* eor	w15, w9, w9, ror #11                        #! PC = 0x55555532c8 *)
ror w9_r@uint32 w9 11; xor w15@uint32 w9 w9_r;
(* add	w8, w8, w12                                 #! PC = 0x55555532cc *)
adds dc w8 w8 w12;
(* ror	w11, w11, #6                                #! PC = 0x55555532d0 *)
ror w11@uint32 w11 6;
(* eor	w13, w9, w10                                #! PC = 0x55555532d4 *)
xor w13@uint32 w9 w10;
(* eor	w15, w15, w9, ror #20                       #! PC = 0x55555532d8 *)
ror w9_r@uint32 w9 20; xor w15@uint32 w15 w9_r;
(* add	w8, w8, w11                                 #! PC = 0x55555532dc *)
adds dc w8 w8 w11;
(* ldr	w12, [sp, #44]                              #! EA = L0x7fffffea8c; Value = 0x5f5a146dce75ae68; PC = 0x55555532e0 *)
mov w12 L0x7fffffea8c;
(* and	w14, w14, w13                               #! PC = 0x55555532e4 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x55555532e8 *)
ror w15@uint32 w15 2;
(* add	w4, w4, w8                                  #! PC = 0x55555532ec *)
adds dc w4 w4 w8;
(* eor	w14, w14, w10                               #! PC = 0x55555532f0 *)
xor w14@uint32 w14 w10;
(* add	w7, w7, w12                                 #! PC = 0x55555532f4 *)
adds dc w7 w7 w12;
(* add	w8, w8, w15                                 #! PC = 0x55555532f8 *)
adds dc w8 w8 w15;
(* and	w12, w5, w4                                 #! PC = 0x55555532fc *)
and w12@uint32 w5 w4;
(* bic	w15, w6, w4                                 #! PC = 0x5555553300 *)
not w4_n@uint32 w4; and w15@uint32 w6 w4_n;
(* eor	w11, w4, w4, ror #5                         #! PC = 0x5555553304 *)
ror w4_r@uint32 w4 5; xor w11@uint32 w4 w4_r;
(* add	w8, w8, w14                                 #! PC = 0x5555553308 *)
adds dc w8 w8 w14;
(* orr	w12, w12, w15                               #! PC = 0x555555330c *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w4, ror #19                       #! PC = 0x5555553310 *)
ror w4_r@uint32 w4 19; xor w11@uint32 w11 w4_r;
(* eor	w15, w8, w8, ror #11                        #! PC = 0x5555553314 *)
ror w8_r@uint32 w8 11; xor w15@uint32 w8 w8_r;
(* add	w7, w7, w12                                 #! PC = 0x5555553318 *)
adds dc w7 w7 w12;
(* ror	w11, w11, #6                                #! PC = 0x555555331c *)
ror w11@uint32 w11 6;
(* eor	w14, w8, w9                                 #! PC = 0x5555553320 *)
xor w14@uint32 w8 w9;
(* eor	w15, w15, w8, ror #20                       #! PC = 0x5555553324 *)
ror w8_r@uint32 w8 20; xor w15@uint32 w15 w8_r;
(* add	w7, w7, w11                                 #! PC = 0x5555553328 *)
adds dc w7 w7 w11;
(* ldr	w12, [sp, #48]                              #! EA = L0x7fffffea90; Value = 0x095abc765f5a146d; PC = 0x555555332c *)
mov w12 L0x7fffffea90;
(* and	w13, w13, w14                               #! PC = 0x5555553330 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555553334 *)
ror w15@uint32 w15 2;
(* add	w3, w3, w7                                  #! PC = 0x5555553338 *)
adds dc w3 w3 w7;
(* eor	w13, w13, w9                                #! PC = 0x555555333c *)
xor w13@uint32 w13 w9;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea80; PC = 0x5555553340 *)
mov L0x7fffffea80 v4_0; mov L0x7fffffea84 v4_1;
mov L0x7fffffea88 v4_2; mov L0x7fffffea8c v4_3;
(* add	w6, w6, w12                                 #! PC = 0x5555553344 *)
adds dc w6 w6 w12;
(* add	w7, w7, w15                                 #! PC = 0x5555553348 *)
adds dc w7 w7 w15;
(* and	w12, w4, w3                                 #! PC = 0x555555334c *)
and w12@uint32 w4 w3;
(* ld1	{v3.16b}, [x1], #16                         #! EA = L0x5555564100; Value = 0x0000000000000000; PC = 0x5555553350 *)
mov v3_0 L0x5555564100; mov v3_1 L0x5555564104;
mov v3_2 L0x5555564108; mov v3_3 L0x555556410c;
(* bic	w15, w5, w3                                 #! PC = 0x5555553354 *)
not w3_n@uint32 w3; and w15@uint32 w5 w3_n;
(* eor	w11, w3, w3, ror #5                         #! PC = 0x5555553358 *)
ror w3_r@uint32 w3 5; xor w11@uint32 w3 w3_r;
(* ld1	{v4.4s}, [x16], #16                         #! EA = L0x55555524b0; Value = 0x80deb1fe72be5d74; PC = 0x555555335c *)
mov v4_0 L0x55555524b0; mov v4_1 L0x55555524b4;
mov v4_2 L0x55555524b8; mov v4_3 L0x55555524bc;
(* add	w7, w7, w13                                 #! PC = 0x5555553360 *)
adds dc w7 w7 w13;
(* orr	w12, w12, w15                               #! PC = 0x5555553364 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w3, ror #19                       #! PC = 0x5555553368 *)
ror w3_r@uint32 w3 19; xor w11@uint32 w11 w3_r;
(* eor	w15, w7, w7, ror #11                        #! PC = 0x555555336c *)
ror w7_r@uint32 w7 11; xor w15@uint32 w7 w7_r;
(* rev32	v3.16b, v3.16b                            #! PC = 0x5555553370 *)
spl s10 s00 v3_0 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_0 t10 t00;
spl s10 s00 v3_1 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_1 t10 t00;
spl s10 s00 v3_2 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_2 t10 t00;
spl s10 s00 v3_3 16; spl s08 s00 s00 8; spl s18 s10 s10 8;
join t10 s00 s08; join t00 s10 s18; join v3_3 t10 t00;
(* add	w6, w6, w12                                 #! PC = 0x5555553374 *)
adds dc w6 w6 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553378 *)
ror w11@uint32 w11 6;
(* eor	w13, w7, w8                                 #! PC = 0x555555337c *)
xor w13@uint32 w7 w8;
(* eor	w15, w15, w7, ror #20                       #! PC = 0x5555553380 *)
ror w7_r@uint32 w7 20; xor w15@uint32 w15 w7_r;
(* add	v4.4s, v4.4s, v3.4s                         #! PC = 0x5555553384 *)
adds dc v4_0 v4_0 v3_0; adds dc v4_1 v4_1 v3_1;
adds dc v4_2 v4_2 v3_2; adds dc v4_3 v4_3 v3_3;
(* add	w6, w6, w11                                 #! PC = 0x5555553388 *)
adds dc w6 w6 w11;
(* ldr	w12, [sp, #52]                              #! EA = L0x7fffffea94; Value = 0xb44e0f87095abc76; PC = 0x555555338c *)
mov w12 L0x7fffffea94;
(* and	w14, w14, w13                               #! PC = 0x5555553390 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x5555553394 *)
ror w15@uint32 w15 2;
(* add	w10, w10, w6                                #! PC = 0x5555553398 *)
adds dc w10 w10 w6;
(* eor	w14, w14, w8                                #! PC = 0x555555339c *)
xor w14@uint32 w14 w8;
(* add	w5, w5, w12                                 #! PC = 0x55555533a0 *)
adds dc w5 w5 w12;
(* add	w6, w6, w15                                 #! PC = 0x55555533a4 *)
adds dc w6 w6 w15;
(* and	w12, w3, w10                                #! PC = 0x55555533a8 *)
and w12@uint32 w3 w10;
(* bic	w15, w4, w10                                #! PC = 0x55555533ac *)
not w10_n@uint32 w10; and w15@uint32 w4 w10_n;
(* eor	w11, w10, w10, ror #5                       #! PC = 0x55555533b0 *)
ror w10_r@uint32 w10 5; xor w11@uint32 w10 w10_r;
(* add	w6, w6, w14                                 #! PC = 0x55555533b4 *)
adds dc w6 w6 w14;
(* orr	w12, w12, w15                               #! PC = 0x55555533b8 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w10, ror #19                      #! PC = 0x55555533bc *)
ror w10_r@uint32 w10 19; xor w11@uint32 w11 w10_r;
(* eor	w15, w6, w6, ror #11                        #! PC = 0x55555533c0 *)
ror w6_r@uint32 w6 11; xor w15@uint32 w6 w6_r;
(* add	w5, w5, w12                                 #! PC = 0x55555533c4 *)
adds dc w5 w5 w12;
(* ror	w11, w11, #6                                #! PC = 0x55555533c8 *)
ror w11@uint32 w11 6;
(* eor	w14, w6, w7                                 #! PC = 0x55555533cc *)
xor w14@uint32 w6 w7;
(* eor	w15, w15, w6, ror #20                       #! PC = 0x55555533d0 *)
ror w6_r@uint32 w6 20; xor w15@uint32 w15 w6_r;
(* add	w5, w5, w11                                 #! PC = 0x55555533d4 *)
adds dc w5 w5 w11;
(* ldr	w12, [sp, #56]                              #! EA = L0x7fffffea98; Value = 0xce57b003b44e0f87; PC = 0x55555533d8 *)
mov w12 L0x7fffffea98;
(* and	w13, w13, w14                               #! PC = 0x55555533dc *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x55555533e0 *)
ror w15@uint32 w15 2;
(* add	w9, w9, w5                                  #! PC = 0x55555533e4 *)
adds dc w9 w9 w5;
(* eor	w13, w13, w7                                #! PC = 0x55555533e8 *)
xor w13@uint32 w13 w7;
(* add	w4, w4, w12                                 #! PC = 0x55555533ec *)
adds dc w4 w4 w12;
(* add	w5, w5, w15                                 #! PC = 0x55555533f0 *)
adds dc w5 w5 w15;
(* and	w12, w10, w9                                #! PC = 0x55555533f4 *)
and w12@uint32 w10 w9;
(* bic	w15, w3, w9                                 #! PC = 0x55555533f8 *)
not w9_n@uint32 w9; and w15@uint32 w3 w9_n;
(* eor	w11, w9, w9, ror #5                         #! PC = 0x55555533fc *)
ror w9_r@uint32 w9 5; xor w11@uint32 w9 w9_r;
(* add	w5, w5, w13                                 #! PC = 0x5555553400 *)
adds dc w5 w5 w13;
(* orr	w12, w12, w15                               #! PC = 0x5555553404 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w9, ror #19                       #! PC = 0x5555553408 *)
ror w9_r@uint32 w9 19; xor w11@uint32 w11 w9_r;
(* eor	w15, w5, w5, ror #11                        #! PC = 0x555555340c *)
ror w5_r@uint32 w5 11; xor w15@uint32 w5 w5_r;
(* add	w4, w4, w12                                 #! PC = 0x5555553410 *)
adds dc w4 w4 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553414 *)
ror w11@uint32 w11 6;
(* eor	w13, w5, w6                                 #! PC = 0x5555553418 *)
xor w13@uint32 w5 w6;
(* eor	w15, w15, w5, ror #20                       #! PC = 0x555555341c *)
ror w5_r@uint32 w5 20; xor w15@uint32 w15 w5_r;
(* add	w4, w4, w11                                 #! PC = 0x5555553420 *)
adds dc w4 w4 w11;
(* ldr	w12, [sp, #60]                              #! EA = L0x7fffffea9c; Value = 0xffffeab0ce57b003; PC = 0x5555553424 *)
mov w12 L0x7fffffea9c;
(* and	w14, w14, w13                               #! PC = 0x5555553428 *)
and w14@uint32 w14 w13;
(* ror	w15, w15, #2                                #! PC = 0x555555342c *)
ror w15@uint32 w15 2;
(* add	w8, w8, w4                                  #! PC = 0x5555553430 *)
adds dc w8 w8 w4;
(* eor	w14, w14, w6                                #! PC = 0x5555553434 *)
xor w14@uint32 w14 w6;
(* add	w3, w3, w12                                 #! PC = 0x5555553438 *)
adds dc w3 w3 w12;
(* add	w4, w4, w15                                 #! PC = 0x555555343c *)
adds dc w4 w4 w15;
(* and	w12, w9, w8                                 #! PC = 0x5555553440 *)
and w12@uint32 w9 w8;
(* bic	w15, w10, w8                                #! PC = 0x5555553444 *)
not w8_n@uint32 w8; and w15@uint32 w10 w8_n;
(* eor	w11, w8, w8, ror #5                         #! PC = 0x5555553448 *)
ror w8_r@uint32 w8 5; xor w11@uint32 w8 w8_r;
(* add	w4, w4, w14                                 #! PC = 0x555555344c *)
adds dc w4 w4 w14;
(* orr	w12, w12, w15                               #! PC = 0x5555553450 *)
or w12@uint32 w12 w15;
(* eor	w11, w11, w8, ror #19                       #! PC = 0x5555553454 *)
ror w8_r@uint32 w8 19; xor w11@uint32 w11 w8_r;
(* eor	w15, w4, w4, ror #11                        #! PC = 0x5555553458 *)
ror w4_r@uint32 w4 11; xor w15@uint32 w4 w4_r;
(* add	w3, w3, w12                                 #! PC = 0x555555345c *)
adds dc w3 w3 w12;
(* ror	w11, w11, #6                                #! PC = 0x5555553460 *)
ror w11@uint32 w11 6;
(* eor	w14, w4, w5                                 #! PC = 0x5555553464 *)
xor w14@uint32 w4 w5;
(* eor	w15, w15, w4, ror #20                       #! PC = 0x5555553468 *)
ror w4_r@uint32 w4 20; xor w15@uint32 w15 w4_r;
(* add	w3, w3, w11                                 #! PC = 0x555555346c *)
adds dc w3 w3 w11;
(* and	w13, w13, w14                               #! PC = 0x5555553470 *)
and w13@uint32 w13 w14;
(* ror	w15, w15, #2                                #! PC = 0x5555553474 *)
ror w15@uint32 w15 2;
(* add	w7, w7, w3                                  #! PC = 0x5555553478 *)
adds dc w7 w7 w3;
(* eor	w13, w13, w5                                #! PC = 0x555555347c *)
xor w13@uint32 w13 w5;
(* st1	{v4.4s}, [x17], #16                         #! EA = L0x7fffffea90; PC = 0x5555553480 *)
mov L0x7fffffea90 v4_0; mov L0x7fffffea94 v4_1;
mov L0x7fffffea98 v4_2; mov L0x7fffffea9c v4_3;
(* add	w3, w3, w15                                 #! PC = 0x5555553484 *)
adds dc w3 w3 w15;
(* ldp	w11, w12, [x0]                              #! EA = L0x55555640a8; Value = 0xbb67ae856a09e667; PC = 0x5555553488 *)
mov w11 L0x55555640a8; mov w12 L0x55555640ac;
(* add	w3, w3, w13                                 #! PC = 0x555555348c *)
adds dc w3 w3 w13;
(* ldp	w13, w14, [x0, #8]                          #! EA = L0x55555640b0; Value = 0xa54ff53a3c6ef372; PC = 0x5555553490 *)
mov w13 L0x55555640b0; mov w14 L0x55555640b4;
(* add	w3, w3, w11                                 #! PC = 0x5555553494 *)
adds dc w3 w3 w11;
(* add	w4, w4, w12                                 #! PC = 0x5555553498 *)
adds dc w4 w4 w12;
(* ldp	w11, w12, [x0, #16]                         #! EA = L0x55555640b8; Value = 0x9b05688c510e527f; PC = 0x555555349c *)
mov w11 L0x55555640b8; mov w12 L0x55555640bc;
(* add	w5, w5, w13                                 #! PC = 0x55555534a0 *)
adds dc w5 w5 w13;
(* add	w6, w6, w14                                 #! PC = 0x55555534a4 *)
adds dc w6 w6 w14;
(* ldp	w13, w14, [x0, #24]                         #! EA = L0x55555640c0; Value = 0x5be0cd191f83d9ab; PC = 0x55555534a8 *)
mov w13 L0x55555640c0; mov w14 L0x55555640c4;
(* add	w7, w7, w11                                 #! PC = 0x55555534ac *)
adds dc w7 w7 w11;
(* add	w8, w8, w12                                 #! PC = 0x55555534b0 *)
adds dc w8 w8 w12;
(* ldr	w12, [sp]                                   #! EA = L0x7fffffea60; Value = 0x753c4a98428b319b; PC = 0x55555534b4 *)
mov w12 L0x7fffffea60;
(* stp	w3, w4, [x0]                                #! EA = L0x55555640a8; PC = 0x55555534b8 *)
mov L0x55555640a8 w3; mov L0x55555640ac w4;
(* add	w9, w9, w13                                 #! PC = 0x55555534bc *)
adds dc w9 w9 w13;
(* mov	w13, wzr                                    #! PC = 0x55555534c0 *)
mov w13 0@uint32;
(* stp	w5, w6, [x0, #8]                            #! EA = L0x55555640b0; PC = 0x55555534c4 *)
mov L0x55555640b0 w5; mov L0x55555640b4 w6;
(* add	w10, w10, w14                               #! PC = 0x55555534c8 *)
adds dc w10 w10 w14;
(* stp	w7, w8, [x0, #16]                           #! EA = L0x55555640b8; PC = 0x55555534cc *)
mov L0x55555640b8 w7; mov L0x55555640bc w8;
(* eor	w14, w4, w5                                 #! PC = 0x55555534d0 *)
xor w14@uint32 w4 w5;
(* stp	w9, w10, [x0, #24]                          #! EA = L0x55555640c0; PC = 0x55555534d4 *)
mov L0x55555640c0 w9; mov L0x55555640c4 w10;
(* mov	w15, wzr                                    #! PC = 0x55555534d8 *)
mov w15 0@uint32;
(* mov	x17, sp                                     #! PC = 0x55555534dc *)
(* mov x17, sp *)
nop;
(* #b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! PC = 0x55555534e0 *)
#b.ne	0x5555552880 <sha256_block_neon+144>  // b.any#! 0x55555534e0 = 0x55555534e0;
(* ldr	x29, [x29]                                  #! EA = L0x7fffffeaa0; Value = 0x0000007fffffeab0; PC = 0x55555534e4 *)
mov x29 L0x7fffffeaa0;
(* add	sp, sp, #0x50                               #! PC = 0x55555534e8 *)
(* add sp, sp, 0x50 *)
nop;
(* #! <- SP = 0x7fffffeab0 *)
#! 0x7fffffeab0 = 0x7fffffeab0;
(* #ret                                            #! PC = 0x55555534ec *)
#ret                                            #! 0x55555534ec = 0x55555534ec;

mov a0 L0x55555640a8; mov a1 L0x55555640ac;
mov a2 L0x55555640b0; mov a3 L0x55555640b4;
mov a4 L0x55555640b8; mov a5 L0x55555640bc;
mov a6 L0x55555640c0; mov a7 L0x55555640c4;

{
  true
  &&
  true
}

