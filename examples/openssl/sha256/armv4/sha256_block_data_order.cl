(* quine: ~/Work/code/cryptoline/_build/default/cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../aarch64/sha256_block_data_order.cl
Parsing CryptoLine file:                [OK]            0.022563 seconds
Checking well-formedness:               [OK]            0.004878 seconds
Parsing CryptoLine file:                [OK]            0.025208 seconds
Checking well-formedness:               [OK]            0.005455 seconds
Equivalence of output group #0:         [OK]            7167.675516 seconds
Final result:                           [OK]            7168.423852 seconds
*)

proc main (
uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,
uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,
uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,
uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,
uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,
uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,
uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,
uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,
uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,
uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,
uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,
uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,
uint8 A60, uint8 A61, uint8 A62, uint8 A63,
uint32 A0, uint32 A1, uint32 A2, uint32 A3,
uint32 A4, uint32 A5, uint32 A6, uint32 A7
) =
{
  true
  &&
  true
}

(* nondets *)

nondet r1@uint32; nondet r2@uint32;
nondet L0x407ffd38@uint32;

(* inputs *)

cast L0x22074@uint32 A00; cast L0x22075@uint32 A01; cast L0x22076@uint32 A02;
cast L0x22077@uint32 A03; cast L0x22078@uint32 A04; cast L0x22079@uint32 A05;
cast L0x2207a@uint32 A06; cast L0x2207b@uint32 A07; cast L0x2207c@uint32 A08;
cast L0x2207d@uint32 A09; cast L0x2207e@uint32 A10; cast L0x2207f@uint32 A11;
cast L0x22080@uint32 A12; cast L0x22081@uint32 A13; cast L0x22082@uint32 A14;
cast L0x22083@uint32 A15; cast L0x22084@uint32 A16; cast L0x22085@uint32 A17;
cast L0x22086@uint32 A18; cast L0x22087@uint32 A19; cast L0x22088@uint32 A20;
cast L0x22089@uint32 A21; cast L0x2208a@uint32 A22; cast L0x2208b@uint32 A23;
cast L0x2208c@uint32 A24; cast L0x2208d@uint32 A25; cast L0x2208e@uint32 A26;
cast L0x2208f@uint32 A27; cast L0x22090@uint32 A28; cast L0x22091@uint32 A29;
cast L0x22092@uint32 A30; cast L0x22093@uint32 A31; cast L0x22094@uint32 A32;
cast L0x22095@uint32 A33; cast L0x22096@uint32 A34; cast L0x22097@uint32 A35;
cast L0x22098@uint32 A36; cast L0x22099@uint32 A37; cast L0x2209a@uint32 A38;
cast L0x2209b@uint32 A39; cast L0x2209c@uint32 A40; cast L0x2209d@uint32 A41;
cast L0x2209e@uint32 A42; cast L0x2209f@uint32 A43; cast L0x220a0@uint32 A44;
cast L0x220a1@uint32 A45; cast L0x220a2@uint32 A46; cast L0x220a3@uint32 A47;
cast L0x220a4@uint32 A48; cast L0x220a5@uint32 A49; cast L0x220a6@uint32 A50;
cast L0x220a7@uint32 A51; cast L0x220a8@uint32 A52; cast L0x220a9@uint32 A53;
cast L0x220aa@uint32 A54; cast L0x220ab@uint32 A55; cast L0x220ac@uint32 A56;
cast L0x220ad@uint32 A57; cast L0x220ae@uint32 A58; cast L0x220af@uint32 A59;
cast L0x220b0@uint32 A60; cast L0x220b1@uint32 A61; cast L0x220b2@uint32 A62;
cast L0x220b3@uint32 A63;

(* initial hash values *)

mov L0x2204c A0; mov L0x22050 A1;
mov L0x22054 A2; mov L0x22058 A3;
mov L0x2205c A4; mov L0x22060 A5;
mov L0x22064 A6; mov L0x22068 A7;
(*
mov L0x2204c 0x6a09e667@uint32; mov L0x22050 0xbb67ae85@uint32;
mov L0x22054 0x3c6ef372@uint32; mov L0x22058 0xa54ff53a@uint32;
mov L0x2205c 0x510e527f@uint32; mov L0x22060 0x9b05688c@uint32;
mov L0x22064 0x1f83d9ab@uint32; mov L0x22068 0x5be0cd19@uint32;
*)

(* constants *)

mov L0x10c60 0x428a2f98@uint32; mov L0x10c64 0x71374491@uint32;
mov L0x10c68 0xb5c0fbcf@uint32; mov L0x10c6c 0xe9b5dba5@uint32;
mov L0x10c70 0x3956c25b@uint32; mov L0x10c74 0x59f111f1@uint32;
mov L0x10c78 0x923f82a4@uint32; mov L0x10c7c 0xab1c5ed5@uint32;
mov L0x10c80 0xd807aa98@uint32; mov L0x10c84 0x12835b01@uint32;
mov L0x10c88 0x243185be@uint32; mov L0x10c8c 0x550c7dc3@uint32;
mov L0x10c90 0x72be5d74@uint32; mov L0x10c94 0x80deb1fe@uint32;
mov L0x10c98 0x9bdc06a7@uint32; mov L0x10c9c 0xc19bf174@uint32;
mov L0x10ca0 0xe49b69c1@uint32; mov L0x10ca4 0xefbe4786@uint32;
mov L0x10ca8 0x0fc19dc6@uint32; mov L0x10cac 0x240ca1cc@uint32;
mov L0x10cb0 0x2de92c6f@uint32; mov L0x10cb4 0x4a7484aa@uint32;
mov L0x10cb8 0x5cb0a9dc@uint32; mov L0x10cbc 0x76f988da@uint32;
mov L0x10cc0 0x983e5152@uint32; mov L0x10cc4 0xa831c66d@uint32;
mov L0x10cc8 0xb00327c8@uint32; mov L0x10ccc 0xbf597fc7@uint32;
mov L0x10cd0 0xc6e00bf3@uint32; mov L0x10cd4 0xd5a79147@uint32;
mov L0x10cd8 0x06ca6351@uint32; mov L0x10cdc 0x14292967@uint32;
mov L0x10ce0 0x27b70a85@uint32; mov L0x10ce4 0x2e1b2138@uint32;
mov L0x10ce8 0x4d2c6dfc@uint32; mov L0x10cec 0x53380d13@uint32;
mov L0x10cf0 0x650a7354@uint32; mov L0x10cf4 0x766a0abb@uint32;
mov L0x10cf8 0x81c2c92e@uint32; mov L0x10cfc 0x92722c85@uint32;
mov L0x10d00 0xa2bfe8a1@uint32; mov L0x10d04 0xa81a664b@uint32;
mov L0x10d08 0xc24b8b70@uint32; mov L0x10d0c 0xc76c51a3@uint32;
mov L0x10d10 0xd192e819@uint32; mov L0x10d14 0xd6990624@uint32;
mov L0x10d18 0xf40e3585@uint32; mov L0x10d1c 0x106aa070@uint32;
mov L0x10d20 0x19a4c116@uint32; mov L0x10d24 0x1e376c08@uint32;
mov L0x10d28 0x2748774c@uint32; mov L0x10d2c 0x34b0bcb5@uint32;
mov L0x10d30 0x391c0cb3@uint32; mov L0x10d34 0x4ed8aa4a@uint32;
mov L0x10d38 0x5b9cca4f@uint32; mov L0x10d3c 0x682e6ff3@uint32;
mov L0x10d40 0x748f82ee@uint32; mov L0x10d44 0x78a5636f@uint32;
mov L0x10d48 0x84c87814@uint32; mov L0x10d4c 0x8cc70208@uint32;
mov L0x10d50 0x90befffa@uint32; mov L0x10d54 0xa4506ceb@uint32;
mov L0x10d58 0xbef9a3f7@uint32; mov L0x10d5c 0xc67178f2@uint32;


(* #! -> SP = 0x407ffd60 *)
#! 0x407ffd60 = 0x407ffd60;
(* sub	r3, pc, #8                                  #! PC = 0x10d80 *)
(* sub r3, pc, 8 *)
nop;
(* add	r2, r1, r2, lsl #6                          #! PC = 0x10d84 *)
split dc r2_l r2 (32-6); shl r2_l r2_l 6; adds dc r2 r1 r2_l;
(* #push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, r10, r11, lr}#! PC = 0x10d88 *)
#push	{%%r0, %%r1, %%r2, %%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11, lr}#! 0x10d88 = 0x10d88;
(* ldm	[r0], {r4, r5, r6, r7, r8, r9, r10, r11}      #! EA = L0x2204c; Value = 0x6a09e667; PC = 0x10d8c *)
mov r4 L0x2204c; mov r5 L0x22050; mov r6 L0x22054; mov r7 L0x22058;
mov r8 L0x2205c; mov r9 L0x22060; mov r10 L0x22064; mov r11 L0x22068;
(* sub	lr, r3, #288	; 0x120                        #! PC = 0x10d90 *)
(* sub lr, r3, 288 *)
nop;
(* sub	sp, sp, #64	; 0x40                          #! PC = 0x10d94 *)
(* sub sp, sp, 64 *)
nop;
(* ldrb	r2, [r1, #3]                               #! EA = L0x22077; Value = 0x06050403; PC = 0x10d98 *)
mov r2 L0x22077;
(* eor	r3, r5, r6                                  #! PC = 0x10d9c *)
xor r3@uint32 r5 r6;
(* eor	r12, r12, r12                               #! PC = 0x10da0 *)
mov r12 0@uint32;
(* add	r4, r4, r12                                 #! PC = 0x10da4 *)
adds dc r4 r4 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x22076; Value = 0x05040302; PC = 0x10da8 *)
mov r12 L0x22076;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22075; Value = 0x04030201; PC = 0x10dac *)
mov r0 L0x22075;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x10db0 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x22074; Value = 0x03020100; PC = 0x10db4 *)
mov r12 L0x22074;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10db8 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x10dbc *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x10dc0 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x10dc4 *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c60; Value = 0x428a2f98; PC = 0x10dc8 *)
mov r12 L0x10c60;
(* add	r11, r11, r2                                #! PC = 0x10dcc *)
adds dc r11 r11 r2;
(* str	r2, [sp]                                    #! EA = L0x407ffcf0; PC = 0x10dd0 *)
mov L0x407ffcf0 r2;
(* eor	r2, r9, r10                                 #! PC = 0x10dd4 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x10dd8 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x10ddc *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x10de0 *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x10de4 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x10de8 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x10dec *)
adds dc r11 r11 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2207b; Value = 0x0a090807; PC = 0x10df0 *)
mov r2 L0x2207b;
(* eor	r12, r4, r5                                 #! PC = 0x10df4 *)
xor r12@uint32 r4 r5;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x10df8 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x10dfc *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x10e00 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x10e04 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x10e08 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* add	r11, r11, r3                                #! PC = 0x10e0c *)
adds dc r11 r11 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x2207a; Value = 0x09080706; PC = 0x10e10 *)
mov r3 L0x2207a;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22079; Value = 0x08070605; PC = 0x10e14 *)
mov r0 L0x22079;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x10e18 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x22078; Value = 0x07060504; PC = 0x10e1c *)
mov r3 L0x22078;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10e20 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x10e24 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x10e28 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x10e2c *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c64; Value = 0x71374491; PC = 0x10e30 *)
mov r3 L0x10c64;
(* add	r10, r10, r2                                #! PC = 0x10e34 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #4]                                #! EA = L0x407ffcf4; PC = 0x10e38 *)
mov L0x407ffcf4 r2;
(* eor	r2, r8, r9                                  #! PC = 0x10e3c *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x10e40 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x10e44 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x10e48 *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x10e4c *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x10e50 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x10e54 *)
adds dc r10 r10 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2207f; Value = 0x0e0d0c0b; PC = 0x10e58 *)
mov r2 L0x2207f;
(* eor	r3, r11, r4                                 #! PC = 0x10e5c *)
xor r3@uint32 r11 r4;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x10e60 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x10e64 *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x10e68 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x10e6c *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x10e70 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* add	r10, r10, r12                               #! PC = 0x10e74 *)
adds dc r10 r10 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x2207e; Value = 0x0d0c0b0a; PC = 0x10e78 *)
mov r12 L0x2207e;
(* ldrb	r0, [r1, #1]                               #! EA = L0x2207d; Value = 0x0c0b0a09; PC = 0x10e7c *)
mov r0 L0x2207d;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x10e80 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x2207c; Value = 0x0b0a0908; PC = 0x10e84 *)
mov r12 L0x2207c;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10e88 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x10e8c *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x10e90 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x10e94 *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c68; Value = 0xb5c0fbcf; PC = 0x10e98 *)
mov r12 L0x10c68;
(* add	r9, r9, r2                                  #! PC = 0x10e9c *)
adds dc r9 r9 r2;
(* str	r2, [sp, #8]                                #! EA = L0x407ffcf8; PC = 0x10ea0 *)
mov L0x407ffcf8 r2;
(* eor	r2, r7, r8                                  #! PC = 0x10ea4 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x10ea8 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x10eac *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x10eb0 *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x10eb4 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x10eb8 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x10ebc *)
adds dc r9 r9 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x22083; Value = 0x0000800f; PC = 0x10ec0 *)
mov r2 L0x22083;
(* eor	r12, r10, r11                               #! PC = 0x10ec4 *)
xor r12@uint32 r10 r11;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x10ec8 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x10ecc *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x10ed0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x10ed4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x10ed8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* add	r9, r9, r3                                  #! PC = 0x10edc *)
adds dc r9 r9 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x22082; Value = 0x00800f0e; PC = 0x10ee0 *)
mov r3 L0x22082;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22081; Value = 0x800f0e0d; PC = 0x10ee4 *)
mov r0 L0x22081;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x10ee8 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x22080; Value = 0x0f0e0d0c; PC = 0x10eec *)
mov r3 L0x22080;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10ef0 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x10ef4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x10ef8 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x10efc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c6c; Value = 0xe9b5dba5; PC = 0x10f00 *)
mov r3 L0x10c6c;
(* add	r8, r8, r2                                  #! PC = 0x10f04 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #12]                               #! EA = L0x407ffcfc; PC = 0x10f08 *)
mov L0x407ffcfc r2;
(* eor	r2, r6, r7                                  #! PC = 0x10f0c *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x10f10 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x10f14 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x10f18 *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x10f1c *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x10f20 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x10f24 *)
adds dc r8 r8 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x22087; Value = 0x00000000; PC = 0x10f28 *)
mov r2 L0x22087;
(* eor	r3, r9, r10                                 #! PC = 0x10f2c *)
xor r3@uint32 r9 r10;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x10f30 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x10f34 *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x10f38 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x10f3c *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x10f40 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* add	r8, r8, r12                                 #! PC = 0x10f44 *)
adds dc r8 r8 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x22086; Value = 0x00000000; PC = 0x10f48 *)
mov r12 L0x22086;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22085; Value = 0x00000000; PC = 0x10f4c *)
mov r0 L0x22085;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x10f50 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x22084; Value = 0x00000080; PC = 0x10f54 *)
mov r12 L0x22084;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10f58 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x10f5c *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x10f60 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x10f64 *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c70; Value = 0x3956c25b; PC = 0x10f68 *)
mov r12 L0x10c70;
(* add	r7, r7, r2                                  #! PC = 0x10f6c *)
adds dc r7 r7 r2;
(* str	r2, [sp, #16]                               #! EA = L0x407ffd00; PC = 0x10f70 *)
mov L0x407ffd00 r2;
(* eor	r2, r5, r6                                  #! PC = 0x10f74 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x10f78 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x10f7c *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x10f80 *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x10f84 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x10f88 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x10f8c *)
adds dc r7 r7 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2208b; Value = 0x00000000; PC = 0x10f90 *)
mov r2 L0x2208b;
(* eor	r12, r8, r9                                 #! PC = 0x10f94 *)
xor r12@uint32 r8 r9;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x10f98 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x10f9c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x10fa0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x10fa4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x10fa8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* add	r7, r7, r3                                  #! PC = 0x10fac *)
adds dc r7 r7 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x2208a; Value = 0x00000000; PC = 0x10fb0 *)
mov r3 L0x2208a;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22089; Value = 0x00000000; PC = 0x10fb4 *)
mov r0 L0x22089;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x10fb8 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x22088; Value = 0x00000000; PC = 0x10fbc *)
mov r3 L0x22088;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x10fc0 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x10fc4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x10fc8 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x10fcc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c74; Value = 0x59f111f1; PC = 0x10fd0 *)
mov r3 L0x10c74;
(* add	r6, r6, r2                                  #! PC = 0x10fd4 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #20]                               #! EA = L0x407ffd04; PC = 0x10fd8 *)
mov L0x407ffd04 r2;
(* eor	r2, r4, r5                                  #! PC = 0x10fdc *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x10fe0 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x10fe4 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x10fe8 *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x10fec *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x10ff0 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x10ff4 *)
adds dc r6 r6 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2208f; Value = 0x00000000; PC = 0x10ff8 *)
mov r2 L0x2208f;
(* eor	r3, r7, r8                                  #! PC = 0x10ffc *)
xor r3@uint32 r7 r8;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11000 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x11004 *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11008 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x1100c *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11010 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* add	r6, r6, r12                                 #! PC = 0x11014 *)
adds dc r6 r6 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x2208e; Value = 0x00000000; PC = 0x11018 *)
mov r12 L0x2208e;
(* ldrb	r0, [r1, #1]                               #! EA = L0x2208d; Value = 0x00000000; PC = 0x1101c *)
mov r0 L0x2208d;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x11020 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x2208c; Value = 0x00000000; PC = 0x11024 *)
mov r12 L0x2208c;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11028 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x1102c *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x11030 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x11034 *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c78; Value = 0x923f82a4; PC = 0x11038 *)
mov r12 L0x10c78;
(* add	r5, r5, r2                                  #! PC = 0x1103c *)
adds dc r5 r5 r2;
(* str	r2, [sp, #24]                               #! EA = L0x407ffd08; PC = 0x11040 *)
mov L0x407ffd08 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11044 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11048 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x1104c *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x11050 *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11054 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11058 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x1105c *)
adds dc r5 r5 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x22093; Value = 0x00000000; PC = 0x11060 *)
mov r2 L0x22093;
(* eor	r12, r6, r7                                 #! PC = 0x11064 *)
xor r12@uint32 r6 r7;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11068 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x1106c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x11070 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x11074 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x11078 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* add	r5, r5, r3                                  #! PC = 0x1107c *)
adds dc r5 r5 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x22092; Value = 0x00000000; PC = 0x11080 *)
mov r3 L0x22092;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22091; Value = 0x00000000; PC = 0x11084 *)
mov r0 L0x22091;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x11088 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x22090; Value = 0x00000000; PC = 0x1108c *)
mov r3 L0x22090;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11090 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x11094 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x11098 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x1109c *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c7c; Value = 0xab1c5ed5; PC = 0x110a0 *)
mov r3 L0x10c7c;
(* add	r4, r4, r2                                  #! PC = 0x110a4 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #28]                               #! EA = L0x407ffd0c; PC = 0x110a8 *)
mov L0x407ffd0c r2;
(* eor	r2, r10, r11                                #! PC = 0x110ac *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x110b0 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x110b4 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x110b8 *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x110bc *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x110c0 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x110c4 *)
adds dc r4 r4 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x22097; Value = 0x00000000; PC = 0x110c8 *)
mov r2 L0x22097;
(* eor	r3, r5, r6                                  #! PC = 0x110cc *)
xor r3@uint32 r5 r6;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x110d0 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x110d4 *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x110d8 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x110dc *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x110e0 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* add	r4, r4, r12                                 #! PC = 0x110e4 *)
adds dc r4 r4 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x22096; Value = 0x00000000; PC = 0x110e8 *)
mov r12 L0x22096;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22095; Value = 0x00000000; PC = 0x110ec *)
mov r0 L0x22095;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x110f0 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x22094; Value = 0x00000000; PC = 0x110f4 *)
mov r12 L0x22094;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x110f8 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x110fc *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x11100 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x11104 *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c80; Value = 0xd807aa98; PC = 0x11108 *)
mov r12 L0x10c80;
(* add	r11, r11, r2                                #! PC = 0x1110c *)
adds dc r11 r11 r2;
(* str	r2, [sp, #32]                               #! EA = L0x407ffd10; PC = 0x11110 *)
mov L0x407ffd10 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11114 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11118 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x1111c *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x11120 *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11124 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11128 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x1112c *)
adds dc r11 r11 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2209b; Value = 0x00000000; PC = 0x11130 *)
mov r2 L0x2209b;
(* eor	r12, r4, r5                                 #! PC = 0x11134 *)
xor r12@uint32 r4 r5;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11138 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1113c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x11140 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x11144 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x11148 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* add	r11, r11, r3                                #! PC = 0x1114c *)
adds dc r11 r11 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x2209a; Value = 0x00000000; PC = 0x11150 *)
mov r3 L0x2209a;
(* ldrb	r0, [r1, #1]                               #! EA = L0x22099; Value = 0x00000000; PC = 0x11154 *)
mov r0 L0x22099;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x11158 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x22098; Value = 0x00000000; PC = 0x1115c *)
mov r3 L0x22098;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11160 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x11164 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x11168 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x1116c *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c84; Value = 0x12835b01; PC = 0x11170 *)
mov r3 L0x10c84;
(* add	r10, r10, r2                                #! PC = 0x11174 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; PC = 0x11178 *)
mov L0x407ffd14 r2;
(* eor	r2, r8, r9                                  #! PC = 0x1117c *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x11180 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x11184 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x11188 *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x1118c *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11190 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11194 *)
adds dc r10 r10 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x2209f; Value = 0x00000000; PC = 0x11198 *)
mov r2 L0x2209f;
(* eor	r3, r11, r4                                 #! PC = 0x1119c *)
xor r3@uint32 r11 r4;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x111a0 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x111a4 *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x111a8 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x111ac *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x111b0 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* add	r10, r10, r12                               #! PC = 0x111b4 *)
adds dc r10 r10 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x2209e; Value = 0x00000000; PC = 0x111b8 *)
mov r12 L0x2209e;
(* ldrb	r0, [r1, #1]                               #! EA = L0x2209d; Value = 0x00000000; PC = 0x111bc *)
mov r0 L0x2209d;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x111c0 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x2209c; Value = 0x00000000; PC = 0x111c4 *)
mov r12 L0x2209c;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x111c8 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x111cc *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x111d0 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x111d4 *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c88; Value = 0x243185be; PC = 0x111d8 *)
mov r12 L0x10c88;
(* add	r9, r9, r2                                  #! PC = 0x111dc *)
adds dc r9 r9 r2;
(* str	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; PC = 0x111e0 *)
mov L0x407ffd18 r2;
(* eor	r2, r7, r8                                  #! PC = 0x111e4 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x111e8 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x111ec *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x111f0 *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x111f4 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x111f8 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x111fc *)
adds dc r9 r9 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x220a3; Value = 0x00000000; PC = 0x11200 *)
mov r2 L0x220a3;
(* eor	r12, r10, r11                               #! PC = 0x11204 *)
xor r12@uint32 r10 r11;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11208 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1120c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x11210 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x11214 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x11218 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* add	r9, r9, r3                                  #! PC = 0x1121c *)
adds dc r9 r9 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x220a2; Value = 0x00000000; PC = 0x11220 *)
mov r3 L0x220a2;
(* ldrb	r0, [r1, #1]                               #! EA = L0x220a1; Value = 0x00000000; PC = 0x11224 *)
mov r0 L0x220a1;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x11228 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x220a0; Value = 0x00000000; PC = 0x1122c *)
mov r3 L0x220a0;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11230 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x11234 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x11238 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x1123c *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c8c; Value = 0x550c7dc3; PC = 0x11240 *)
mov r3 L0x10c8c;
(* add	r8, r8, r2                                  #! PC = 0x11244 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; PC = 0x11248 *)
mov L0x407ffd1c r2;
(* eor	r2, r6, r7                                  #! PC = 0x1124c *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x11250 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x11254 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x11258 *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x1125c *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11260 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11264 *)
adds dc r8 r8 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x220a7; Value = 0x00000000; PC = 0x11268 *)
mov r2 L0x220a7;
(* eor	r3, r9, r10                                 #! PC = 0x1126c *)
xor r3@uint32 r9 r10;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11270 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x11274 *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11278 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x1127c *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11280 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* add	r8, r8, r12                                 #! PC = 0x11284 *)
adds dc r8 r8 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x220a6; Value = 0x00000000; PC = 0x11288 *)
mov r12 L0x220a6;
(* ldrb	r0, [r1, #1]                               #! EA = L0x220a5; Value = 0x00000000; PC = 0x1128c *)
mov r0 L0x220a5;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x11290 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x220a4; Value = 0x00000000; PC = 0x11294 *)
mov r12 L0x220a4;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11298 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x1129c *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x112a0 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x112a4 *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c90; Value = 0x72be5d74; PC = 0x112a8 *)
mov r12 L0x10c90;
(* add	r7, r7, r2                                  #! PC = 0x112ac *)
adds dc r7 r7 r2;
(* str	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; PC = 0x112b0 *)
mov L0x407ffd20 r2;
(* eor	r2, r5, r6                                  #! PC = 0x112b4 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x112b8 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x112bc *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x112c0 *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x112c4 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x112c8 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x112cc *)
adds dc r7 r7 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x220ab; Value = 0x00000000; PC = 0x112d0 *)
mov r2 L0x220ab;
(* eor	r12, r8, r9                                 #! PC = 0x112d4 *)
xor r12@uint32 r8 r9;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x112d8 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x112dc *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x112e0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x112e4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x112e8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* add	r7, r7, r3                                  #! PC = 0x112ec *)
adds dc r7 r7 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x220aa; Value = 0x00000000; PC = 0x112f0 *)
mov r3 L0x220aa;
(* ldrb	r0, [r1, #1]                               #! EA = L0x220a9; Value = 0x00000000; PC = 0x112f4 *)
mov r0 L0x220a9;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x112f8 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x220a8; Value = 0x00000000; PC = 0x112fc *)
mov r3 L0x220a8;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11300 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x11304 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x11308 *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x1130c *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c94; Value = 0x80deb1fe; PC = 0x11310 *)
mov r3 L0x10c94;
(* add	r6, r6, r2                                  #! PC = 0x11314 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; PC = 0x11318 *)
mov L0x407ffd24 r2;
(* eor	r2, r4, r5                                  #! PC = 0x1131c *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x11320 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x11324 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x11328 *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x1132c *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11330 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11334 *)
adds dc r6 r6 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x220af; Value = 0x00000000; PC = 0x11338 *)
mov r2 L0x220af;
(* eor	r3, r7, r8                                  #! PC = 0x1133c *)
xor r3@uint32 r7 r8;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11340 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x11344 *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11348 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x1134c *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11350 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* add	r6, r6, r12                                 #! PC = 0x11354 *)
adds dc r6 r6 r12;
(* ldrb	r12, [r1, #2]                              #! EA = L0x220ae; Value = 0x00000000; PC = 0x11358 *)
mov r12 L0x220ae;
(* ldrb	r0, [r1, #1]                               #! EA = L0x220ad; Value = 0x00000000; PC = 0x1135c *)
mov r0 L0x220ad;
(* orr	r2, r2, r12, lsl #8                         #! PC = 0x11360 *)
split dc r12_l r12 (32-8); shl r12_l r12_l 8; or r2@uint32 r2 r12_l;
(* ldrb	r12, [r1], #4                              #! EA = L0x220ac; Value = 0x00000000; PC = 0x11364 *)
mov r12 L0x220ac;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x11368 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x1136c *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* orr	r2, r2, r12, lsl #24                        #! PC = 0x11370 *)
split dc r12_l r12 (32-24); shl r12_l r12_l 24; or r2@uint32 r2 r12_l;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x11374 *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* ldr	r12, [lr], #4                               #! EA = L0x10c98; Value = 0x9bdc06a7; PC = 0x11378 *)
mov r12 L0x10c98;
(* add	r5, r5, r2                                  #! PC = 0x1137c *)
adds dc r5 r5 r2;
(* str	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; PC = 0x11380 *)
mov L0x407ffd28 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11384 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11388 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x1138c *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x11390 *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11394 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11398 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x1139c *)
adds dc r5 r5 r2;
(* ldrb	r2, [r1, #3]                               #! EA = L0x220b3; Value = 0x00001080; PC = 0x113a0 *)
mov r2 L0x220b3;
(* eor	r12, r6, r7                                 #! PC = 0x113a4 *)
xor r12@uint32 r6 r7;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x113a8 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x113ac *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x113b0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x113b4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x113b8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* add	r5, r5, r3                                  #! PC = 0x113bc *)
adds dc r5 r5 r3;
(* ldrb	r3, [r1, #2]                               #! EA = L0x220b2; Value = 0x00108000; PC = 0x113c0 *)
mov r3 L0x220b2;
(* ldrb	r0, [r1, #1]                               #! EA = L0x220b1; Value = 0x10800000; PC = 0x113c4 *)
mov r0 L0x220b1;
(* orr	r2, r2, r3, lsl #8                          #! PC = 0x113c8 *)
split dc r3_l r3 (32-8); shl r3_l r3_l 8; or r2@uint32 r2 r3_l;
(* ldrb	r3, [r1], #4                               #! EA = L0x220b0; Value = 0x80000000; PC = 0x113cc *)
mov r3 L0x220b0;
(* orr	r2, r2, r0, lsl #16                         #! PC = 0x113d0 *)
split dc r0_l r0 (32-16); shl r0_l r0_l 16; or r2@uint32 r2 r0_l;
(* str	r1, [sp, #68]	; 0x44                        #! EA = L0x407ffd34; PC = 0x113d4 *)
mov L0x407ffd34 r1;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x113d8 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* orr	r2, r2, r3, lsl #24                         #! PC = 0x113dc *)
split dc r3_l r3 (32-24); shl r3_l r3_l 24; or r2@uint32 r2 r3_l;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x113e0 *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* ldr	r3, [lr], #4                                #! EA = L0x10c9c; Value = 0xc19bf174; PC = 0x113e4 *)
mov r3 L0x10c9c;
(* add	r4, r4, r2                                  #! PC = 0x113e8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; PC = 0x113ec *)
mov L0x407ffd2c r2;
(* eor	r2, r10, r11                                #! PC = 0x113f0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x113f4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x113f8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x113fc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11400 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11404 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11408 *)
adds dc r4 r4 r2;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x04050607; PC = 0x1140c *)
mov r2 L0x407ffcf4;
(* eor	r3, r5, r6                                  #! PC = 0x11410 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x00000000; PC = 0x11414 *)
mov r1 L0x407ffd28;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11418 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x1141c *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11420 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11424 *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11428 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1142c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11430 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11434 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11438 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1143c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11440 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x00010203; PC = 0x11444 *)
mov r2 L0x407ffcf0;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11448 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x00000000; PC = 0x1144c *)
mov r1 L0x407ffd14;
(* add	r12, r12, r0                                #! PC = 0x11450 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11454 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11458 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1145c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11460 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10ca0; Value = 0xe49b69c1; PC = 0x11464 *)
mov r12 L0x10ca0;
(* add	r11, r11, r2                                #! PC = 0x11468 *)
adds dc r11 r11 r2;
(* str	r2, [sp]                                    #! EA = L0x407ffcf0; PC = 0x1146c *)
mov L0x407ffcf0 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11470 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11474 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11478 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1147c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11480 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11484 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11488 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x08090a0b; PC = 0x1148c *)
mov r2 L0x407ffcf8;
(* eor	r12, r4, r5                                 #! PC = 0x11490 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x00000080; PC = 0x11494 *)
mov r1 L0x407ffd2c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11498 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1149c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x114a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x114a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x114a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x114ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x114b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x114b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x114b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x114bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x114c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x04050607; PC = 0x114c4 *)
mov r2 L0x407ffcf4;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x114c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x00000000; PC = 0x114cc *)
mov r1 L0x407ffd18;
(* add	r3, r3, r0                                  #! PC = 0x114d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x114d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x114d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x114dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x114e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10ca4; Value = 0xefbe4786; PC = 0x114e4 *)
mov r3 L0x10ca4;
(* add	r10, r10, r2                                #! PC = 0x114e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #4]                                #! EA = L0x407ffcf4; PC = 0x114ec *)
mov L0x407ffcf4 r2;
(* eor	r2, r8, r9                                  #! PC = 0x114f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x114f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x114f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x114fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11500 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11504 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11508 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x0c0d0e0f; PC = 0x1150c *)
mov r2 L0x407ffcfc;
(* eor	r3, r11, r4                                 #! PC = 0x11510 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x4f0a6dd0; PC = 0x11514 *)
mov r1 L0x407ffcf0;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11518 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1151c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11520 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11524 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11528 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1152c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11530 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11534 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11538 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1153c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11540 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x08090a0b; PC = 0x11544 *)
mov r2 L0x407ffcf8;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11548 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0x00000000; PC = 0x1154c *)
mov r1 L0x407ffd1c;
(* add	r12, r12, r0                                #! PC = 0x11550 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11554 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11558 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1155c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11560 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10ca8; Value = 0x0fc19dc6; PC = 0x11564 *)
mov r12 L0x10ca8;
(* add	r9, r9, r2                                  #! PC = 0x11568 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #8]                                #! EA = L0x407ffcf8; PC = 0x1156c *)
mov L0x407ffcf8 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11570 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11574 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11578 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1157c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11580 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11584 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11588 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x80000000; PC = 0x1158c *)
mov r2 L0x407ffd00;
(* eor	r12, r10, r11                               #! PC = 0x11590 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x59e8f75e; PC = 0x11594 *)
mov r1 L0x407ffcf4;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11598 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1159c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x115a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x115a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x115a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x115ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x115b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x115b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x115b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x115bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x115c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x0c0d0e0f; PC = 0x115c4 *)
mov r2 L0x407ffcfc;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x115c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x00000000; PC = 0x115cc *)
mov r1 L0x407ffd20;
(* add	r3, r3, r0                                  #! PC = 0x115d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x115d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x115d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x115dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x115e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cac; Value = 0x240ca1cc; PC = 0x115e4 *)
mov r3 L0x10cac;
(* add	r8, r8, r2                                  #! PC = 0x115e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #12]                               #! EA = L0x407ffcfc; PC = 0x115ec *)
mov L0x407ffcfc r2;
(* eor	r2, r6, r7                                  #! PC = 0x115f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x115f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x115f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x115fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11600 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11604 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11608 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x00000000; PC = 0x1160c *)
mov r2 L0x407ffd04;
(* eor	r3, r9, r10                                 #! PC = 0x11610 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0xdf656fe8; PC = 0x11614 *)
mov r1 L0x407ffcf8;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11618 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x1161c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11620 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11624 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11628 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1162c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11630 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11634 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11638 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1163c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11640 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x80000000; PC = 0x11644 *)
mov r2 L0x407ffd00;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11648 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x00000000; PC = 0x1164c *)
mov r1 L0x407ffd24;
(* add	r12, r12, r0                                #! PC = 0x11650 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11654 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11658 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x1165c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11660 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cb0; Value = 0x2de92c6f; PC = 0x11664 *)
mov r12 L0x10cb0;
(* add	r7, r7, r2                                  #! PC = 0x11668 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #16]                               #! EA = L0x407ffd00; PC = 0x1166c *)
mov L0x407ffd00 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11670 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11674 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11678 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x1167c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11680 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11684 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11688 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x00000000; PC = 0x1168c *)
mov r2 L0x407ffd08;
(* eor	r12, r8, r9                                 #! PC = 0x11690 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x825fcc03; PC = 0x11694 *)
mov r1 L0x407ffcfc;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11698 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x1169c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x116a0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x116a4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x116a8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x116ac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x116b0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x116b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x116b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x116bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x116c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x00000000; PC = 0x116c4 *)
mov r2 L0x407ffd04;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x116c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x00000000; PC = 0x116cc *)
mov r1 L0x407ffd28;
(* add	r3, r3, r0                                  #! PC = 0x116d0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x116d4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x116d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x116dc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x116e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cb4; Value = 0x4a7484aa; PC = 0x116e4 *)
mov r3 L0x10cb4;
(* add	r6, r6, r2                                  #! PC = 0x116e8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #20]                               #! EA = L0x407ffd04; PC = 0x116ec *)
mov L0x407ffd04 r2;
(* eor	r2, r4, r5                                  #! PC = 0x116f0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x116f4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x116f8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x116fc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11700 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11704 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11708 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x00000000; PC = 0x1170c *)
mov r2 L0x407ffd0c;
(* eor	r3, r7, r8                                  #! PC = 0x11710 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x9a3ead05; PC = 0x11714 *)
mov r1 L0x407ffd00;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11718 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x1171c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11720 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11724 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11728 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1172c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11730 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11734 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11738 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1173c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11740 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x00000000; PC = 0x11744 *)
mov r2 L0x407ffd08;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11748 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x00000080; PC = 0x1174c *)
mov r1 L0x407ffd2c;
(* add	r12, r12, r0                                #! PC = 0x11750 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11754 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11758 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x1175c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11760 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cb8; Value = 0x5cb0a9dc; PC = 0x11764 *)
mov r12 L0x10cb8;
(* add	r5, r5, r2                                  #! PC = 0x11768 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #24]                               #! EA = L0x407ffd08; PC = 0x1176c *)
mov L0x407ffd08 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11770 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11774 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11778 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x1177c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11780 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11784 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11788 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x00000000; PC = 0x1178c *)
mov r2 L0x407ffd10;
(* eor	r12, r6, r7                                 #! PC = 0x11790 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x1fa12697; PC = 0x11794 *)
mov r1 L0x407ffd04;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11798 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x1179c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x117a0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x117a4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x117a8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x117ac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x117b0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x117b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x117b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x117bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x117c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x00000000; PC = 0x117c4 *)
mov r2 L0x407ffd0c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x117c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x4f0a6dd0; PC = 0x117cc *)
mov r1 L0x407ffcf0;
(* add	r3, r3, r0                                  #! PC = 0x117d0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x117d4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x117d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x117dc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x117e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cbc; Value = 0x76f988da; PC = 0x117e4 *)
mov r3 L0x10cbc;
(* add	r4, r4, r2                                  #! PC = 0x117e8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #28]                               #! EA = L0x407ffd0c; PC = 0x117ec *)
mov L0x407ffd0c r2;
(* eor	r2, r10, r11                                #! PC = 0x117f0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x117f4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x117f8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x117fc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11800 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11804 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11808 *)
adds dc r4 r4 r2;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x00000000; PC = 0x1180c *)
mov r2 L0x407ffd14;
(* eor	r3, r5, r6                                  #! PC = 0x11810 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x8304f273; PC = 0x11814 *)
mov r1 L0x407ffd08;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11818 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x1181c *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11820 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11824 *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11828 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1182c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11830 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11834 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11838 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1183c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11840 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x00000000; PC = 0x11844 *)
mov r2 L0x407ffd10;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11848 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x59e8f75e; PC = 0x1184c *)
mov r1 L0x407ffcf4;
(* add	r12, r12, r0                                #! PC = 0x11850 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11854 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11858 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1185c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11860 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cc0; Value = 0x983e5152; PC = 0x11864 *)
mov r12 L0x10cc0;
(* add	r11, r11, r2                                #! PC = 0x11868 *)
adds dc r11 r11 r2;
(* str	r2, [sp, #32]                               #! EA = L0x407ffd10; PC = 0x1186c *)
mov L0x407ffd10 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11870 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11874 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11878 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1187c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11880 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11884 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11888 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x00000000; PC = 0x1188c *)
mov r2 L0x407ffd18;
(* eor	r12, r4, r5                                 #! PC = 0x11890 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x06a8f23d; PC = 0x11894 *)
mov r1 L0x407ffd0c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11898 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1189c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x118a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x118a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x118a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x118ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x118b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x118b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x118b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x118bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x118c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x00000000; PC = 0x118c4 *)
mov r2 L0x407ffd14;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x118c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0xdf656fe8; PC = 0x118cc *)
mov r1 L0x407ffcf8;
(* add	r3, r3, r0                                  #! PC = 0x118d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x118d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x118d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x118dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x118e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cc4; Value = 0xa831c66d; PC = 0x118e4 *)
mov r3 L0x10cc4;
(* add	r10, r10, r2                                #! PC = 0x118e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; PC = 0x118ec *)
mov L0x407ffd14 r2;
(* eor	r2, r8, r9                                  #! PC = 0x118f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x118f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x118f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x118fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11900 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11904 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11908 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0x00000000; PC = 0x1190c *)
mov r2 L0x407ffd1c;
(* eor	r3, r11, r4                                 #! PC = 0x11910 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x4140683c; PC = 0x11914 *)
mov r1 L0x407ffd10;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11918 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1191c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11920 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11924 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11928 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1192c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11930 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11934 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11938 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1193c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11940 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x00000000; PC = 0x11944 *)
mov r2 L0x407ffd18;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11948 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x825fcc03; PC = 0x1194c *)
mov r1 L0x407ffcfc;
(* add	r12, r12, r0                                #! PC = 0x11950 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11954 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11958 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1195c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11960 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cc8; Value = 0xb00327c8; PC = 0x11964 *)
mov r12 L0x10cc8;
(* add	r9, r9, r2                                  #! PC = 0x11968 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; PC = 0x1196c *)
mov L0x407ffd18 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11970 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11974 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11978 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1197c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11980 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11984 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11988 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x00000000; PC = 0x1198c *)
mov r2 L0x407ffd20;
(* eor	r12, r10, r11                               #! PC = 0x11990 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x46bdf9a5; PC = 0x11994 *)
mov r1 L0x407ffd14;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11998 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1199c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x119a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x119a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x119a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x119ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x119b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x119b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x119b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x119bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x119c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0x00000000; PC = 0x119c4 *)
mov r2 L0x407ffd1c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x119c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x9a3ead05; PC = 0x119cc *)
mov r1 L0x407ffd00;
(* add	r3, r3, r0                                  #! PC = 0x119d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x119d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x119d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x119dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x119e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10ccc; Value = 0xbf597fc7; PC = 0x119e4 *)
mov r3 L0x10ccc;
(* add	r8, r8, r2                                  #! PC = 0x119e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; PC = 0x119ec *)
mov L0x407ffd1c r2;
(* eor	r2, r6, r7                                  #! PC = 0x119f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x119f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x119f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x119fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11a00 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11a04 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11a08 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x00000000; PC = 0x11a0c *)
mov r2 L0x407ffd24;
(* eor	r3, r9, r10                                 #! PC = 0x11a10 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0xbb69c495; PC = 0x11a14 *)
mov r1 L0x407ffd18;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11a18 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x11a1c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11a20 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11a24 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11a28 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11a2c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11a30 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11a34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11a38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11a3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11a40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x00000000; PC = 0x11a44 *)
mov r2 L0x407ffd20;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11a48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x1fa12697; PC = 0x11a4c *)
mov r1 L0x407ffd04;
(* add	r12, r12, r0                                #! PC = 0x11a50 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11a54 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11a58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x11a5c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11a60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cd0; Value = 0xc6e00bf3; PC = 0x11a64 *)
mov r12 L0x10cd0;
(* add	r7, r7, r2                                  #! PC = 0x11a68 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; PC = 0x11a6c *)
mov L0x407ffd20 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11a70 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11a74 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11a78 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x11a7c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11a80 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11a84 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11a88 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x00000000; PC = 0x11a8c *)
mov r2 L0x407ffd28;
(* eor	r12, r8, r9                                 #! PC = 0x11a90 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xde3651fc; PC = 0x11a94 *)
mov r1 L0x407ffd1c;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11a98 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x11a9c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x11aa0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x11aa4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x11aa8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11aac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x11ab0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11ab4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11ab8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11abc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11ac0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x00000000; PC = 0x11ac4 *)
mov r2 L0x407ffd24;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11ac8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x8304f273; PC = 0x11acc *)
mov r1 L0x407ffd08;
(* add	r3, r3, r0                                  #! PC = 0x11ad0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x11ad4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x11ad8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x11adc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x11ae0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cd4; Value = 0xd5a79147; PC = 0x11ae4 *)
mov r3 L0x10cd4;
(* add	r6, r6, r2                                  #! PC = 0x11ae8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; PC = 0x11aec *)
mov L0x407ffd24 r2;
(* eor	r2, r4, r5                                  #! PC = 0x11af0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x11af4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x11af8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x11afc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11b00 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11b04 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11b08 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x00000080; PC = 0x11b0c *)
mov r2 L0x407ffd2c;
(* eor	r3, r7, r8                                  #! PC = 0x11b10 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0xfa97d73f; PC = 0x11b14 *)
mov r1 L0x407ffd20;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11b18 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x11b1c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11b20 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11b24 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11b28 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11b2c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11b30 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11b34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11b38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11b3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11b40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x00000000; PC = 0x11b44 *)
mov r2 L0x407ffd28;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11b48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x06a8f23d; PC = 0x11b4c *)
mov r1 L0x407ffd0c;
(* add	r12, r12, r0                                #! PC = 0x11b50 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11b54 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11b58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x11b5c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11b60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cd8; Value = 0x06ca6351; PC = 0x11b64 *)
mov r12 L0x10cd8;
(* add	r5, r5, r2                                  #! PC = 0x11b68 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; PC = 0x11b6c *)
mov L0x407ffd28 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11b70 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11b74 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11b78 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x11b7c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11b80 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11b84 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11b88 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x4f0a6dd0; PC = 0x11b8c *)
mov r2 L0x407ffcf0;
(* eor	r12, r6, r7                                 #! PC = 0x11b90 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x65fb6bbc; PC = 0x11b94 *)
mov r1 L0x407ffd24;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11b98 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x11b9c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x11ba0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x11ba4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x11ba8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11bac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x11bb0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11bb4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11bb8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11bbc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11bc0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x00000080; PC = 0x11bc4 *)
mov r2 L0x407ffd2c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11bc8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x4140683c; PC = 0x11bcc *)
mov r1 L0x407ffd10;
(* add	r3, r3, r0                                  #! PC = 0x11bd0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x11bd4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x11bd8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x11bdc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x11be0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cdc; Value = 0x14292967; PC = 0x11be4 *)
mov r3 L0x10cdc;
(* add	r4, r4, r2                                  #! PC = 0x11be8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; PC = 0x11bec *)
mov L0x407ffd2c r2;
(* eor	r2, r10, r11                                #! PC = 0x11bf0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x11bf4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x11bf8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x11bfc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11c00 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11c04 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11c08 *)
adds dc r4 r4 r2;
(* and	r3, r3, #255	; 0xff                         #! PC = 0x11c0c *)
and r3@uint32 r3 255@uint32;
(* cmp	r3, #242	; 0xf2                             #! PC = 0x11c10 *)
(* cmp r3, 242 *)
nop;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x59e8f75e; PC = 0x11c14 *)
mov r2 L0x407ffcf4;
(* eor	r3, r5, r6                                  #! PC = 0x11c18 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x180f9a3a; PC = 0x11c1c *)
mov r1 L0x407ffd28;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11c20 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x11c24 *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11c28 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11c2c *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11c30 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ldreq	r3, [sp, #64]	; 0x40                      #! EA = L0x407ffd30; Value = 0x0002204c; PC = 0x11c34 *)
(* ldreq r3, L0x407ffd30 *)
nop;
(* #bne	0x1142c <sha256_block_data_order+1708>     #! PC = 0x11c38 *)
#bne	0x1142c <sha256_block_data_order+1708>     #! 0x11c38 = 0x11c38;
(* ror	r0, r2, #7                                  #! PC = 0x1142c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11430 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11434 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11438 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1143c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11440 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x4f0a6dd0; PC = 0x11444 *)
mov r2 L0x407ffcf0;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11448 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x46bdf9a5; PC = 0x1144c *)
mov r1 L0x407ffd14;
(* add	r12, r12, r0                                #! PC = 0x11450 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11454 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11458 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1145c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11460 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10ce0; Value = 0x27b70a85; PC = 0x11464 *)
mov r12 L0x10ce0;
(* add	r11, r11, r2                                #! PC = 0x11468 *)
adds dc r11 r11 r2;
(* str	r2, [sp]                                    #! EA = L0x407ffcf0; PC = 0x1146c *)
mov L0x407ffcf0 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11470 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11474 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11478 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1147c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11480 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11484 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11488 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0xdf656fe8; PC = 0x1148c *)
mov r2 L0x407ffcf8;
(* eor	r12, r4, r5                                 #! PC = 0x11490 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x4bfc73f7; PC = 0x11494 *)
mov r1 L0x407ffd2c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11498 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1149c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x114a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x114a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x114a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x114ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x114b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x114b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x114b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x114bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x114c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x59e8f75e; PC = 0x114c4 *)
mov r2 L0x407ffcf4;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x114c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0xbb69c495; PC = 0x114cc *)
mov r1 L0x407ffd18;
(* add	r3, r3, r0                                  #! PC = 0x114d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x114d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x114d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x114dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x114e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10ce4; Value = 0x2e1b2138; PC = 0x114e4 *)
mov r3 L0x10ce4;
(* add	r10, r10, r2                                #! PC = 0x114e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #4]                                #! EA = L0x407ffcf4; PC = 0x114ec *)
mov L0x407ffcf4 r2;
(* eor	r2, r8, r9                                  #! PC = 0x114f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x114f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x114f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x114fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11500 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11504 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11508 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x825fcc03; PC = 0x1150c *)
mov r2 L0x407ffcfc;
(* eor	r3, r11, r4                                 #! PC = 0x11510 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x5e7e0dd4; PC = 0x11514 *)
mov r1 L0x407ffcf0;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11518 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1151c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11520 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11524 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11528 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1152c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11530 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11534 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11538 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1153c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11540 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0xdf656fe8; PC = 0x11544 *)
mov r2 L0x407ffcf8;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11548 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xde3651fc; PC = 0x1154c *)
mov r1 L0x407ffd1c;
(* add	r12, r12, r0                                #! PC = 0x11550 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11554 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11558 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1155c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11560 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10ce8; Value = 0x4d2c6dfc; PC = 0x11564 *)
mov r12 L0x10ce8;
(* add	r9, r9, r2                                  #! PC = 0x11568 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #8]                                #! EA = L0x407ffcf8; PC = 0x1156c *)
mov L0x407ffcf8 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11570 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11574 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11578 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1157c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11580 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11584 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11588 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x9a3ead05; PC = 0x1158c *)
mov r2 L0x407ffd00;
(* eor	r12, r10, r11                               #! PC = 0x11590 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x5e92c08b; PC = 0x11594 *)
mov r1 L0x407ffcf4;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11598 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1159c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x115a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x115a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x115a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x115ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x115b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x115b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x115b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x115bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x115c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x825fcc03; PC = 0x115c4 *)
mov r2 L0x407ffcfc;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x115c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0xfa97d73f; PC = 0x115cc *)
mov r1 L0x407ffd20;
(* add	r3, r3, r0                                  #! PC = 0x115d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x115d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x115d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x115dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x115e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cec; Value = 0x53380d13; PC = 0x115e4 *)
mov r3 L0x10cec;
(* add	r8, r8, r2                                  #! PC = 0x115e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #12]                               #! EA = L0x407ffcfc; PC = 0x115ec *)
mov L0x407ffcfc r2;
(* eor	r2, r6, r7                                  #! PC = 0x115f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x115f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x115f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x115fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11600 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11604 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11608 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x1fa12697; PC = 0x1160c *)
mov r2 L0x407ffd04;
(* eor	r3, r9, r10                                 #! PC = 0x11610 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x6932a3e6; PC = 0x11614 *)
mov r1 L0x407ffcf8;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11618 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x1161c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11620 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11624 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11628 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1162c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11630 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11634 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11638 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1163c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11640 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x9a3ead05; PC = 0x11644 *)
mov r2 L0x407ffd00;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11648 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x65fb6bbc; PC = 0x1164c *)
mov r1 L0x407ffd24;
(* add	r12, r12, r0                                #! PC = 0x11650 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11654 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11658 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x1165c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11660 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cf0; Value = 0x650a7354; PC = 0x11664 *)
mov r12 L0x10cf0;
(* add	r7, r7, r2                                  #! PC = 0x11668 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #16]                               #! EA = L0x407ffd00; PC = 0x1166c *)
mov L0x407ffd00 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11670 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11674 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11678 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x1167c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11680 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11684 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11688 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x8304f273; PC = 0x1168c *)
mov r2 L0x407ffd08;
(* eor	r12, r8, r9                                 #! PC = 0x11690 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x686dd1e2; PC = 0x11694 *)
mov r1 L0x407ffcfc;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11698 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x1169c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x116a0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x116a4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x116a8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x116ac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x116b0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x116b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x116b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x116bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x116c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x1fa12697; PC = 0x116c4 *)
mov r2 L0x407ffd04;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x116c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x180f9a3a; PC = 0x116cc *)
mov r1 L0x407ffd28;
(* add	r3, r3, r0                                  #! PC = 0x116d0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x116d4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x116d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x116dc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x116e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cf4; Value = 0x766a0abb; PC = 0x116e4 *)
mov r3 L0x10cf4;
(* add	r6, r6, r2                                  #! PC = 0x116e8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #20]                               #! EA = L0x407ffd04; PC = 0x116ec *)
mov L0x407ffd04 r2;
(* eor	r2, r4, r5                                  #! PC = 0x116f0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x116f4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x116f8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x116fc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11700 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11704 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11708 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x06a8f23d; PC = 0x1170c *)
mov r2 L0x407ffd0c;
(* eor	r3, r7, r8                                  #! PC = 0x11710 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x6a3e6f4f; PC = 0x11714 *)
mov r1 L0x407ffd00;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11718 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x1171c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11720 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11724 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11728 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1172c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11730 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11734 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11738 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1173c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11740 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x8304f273; PC = 0x11744 *)
mov r2 L0x407ffd08;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11748 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x4bfc73f7; PC = 0x1174c *)
mov r1 L0x407ffd2c;
(* add	r12, r12, r0                                #! PC = 0x11750 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11754 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11758 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x1175c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11760 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10cf8; Value = 0x81c2c92e; PC = 0x11764 *)
mov r12 L0x10cf8;
(* add	r5, r5, r2                                  #! PC = 0x11768 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #24]                               #! EA = L0x407ffd08; PC = 0x1176c *)
mov L0x407ffd08 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11770 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11774 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11778 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x1177c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11780 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11784 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11788 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x4140683c; PC = 0x1178c *)
mov r2 L0x407ffd10;
(* eor	r12, r6, r7                                 #! PC = 0x11790 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x56829a8b; PC = 0x11794 *)
mov r1 L0x407ffd04;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11798 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x1179c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x117a0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x117a4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x117a8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x117ac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x117b0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x117b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x117b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x117bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x117c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x06a8f23d; PC = 0x117c4 *)
mov r2 L0x407ffd0c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x117c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x5e7e0dd4; PC = 0x117cc *)
mov r1 L0x407ffcf0;
(* add	r3, r3, r0                                  #! PC = 0x117d0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x117d4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x117d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x117dc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x117e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10cfc; Value = 0x92722c85; PC = 0x117e4 *)
mov r3 L0x10cfc;
(* add	r4, r4, r2                                  #! PC = 0x117e8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #28]                               #! EA = L0x407ffd0c; PC = 0x117ec *)
mov L0x407ffd0c r2;
(* eor	r2, r10, r11                                #! PC = 0x117f0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x117f4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x117f8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x117fc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11800 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11804 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11808 *)
adds dc r4 r4 r2;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x46bdf9a5; PC = 0x1180c *)
mov r2 L0x407ffd14;
(* eor	r3, r5, r6                                  #! PC = 0x11810 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x0fad4c36; PC = 0x11814 *)
mov r1 L0x407ffd08;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11818 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x1181c *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11820 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11824 *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11828 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1182c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11830 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11834 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11838 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1183c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11840 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x4140683c; PC = 0x11844 *)
mov r2 L0x407ffd10;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11848 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x5e92c08b; PC = 0x1184c *)
mov r1 L0x407ffcf4;
(* add	r12, r12, r0                                #! PC = 0x11850 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11854 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11858 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1185c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11860 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d00; Value = 0xa2bfe8a1; PC = 0x11864 *)
mov r12 L0x10d00;
(* add	r11, r11, r2                                #! PC = 0x11868 *)
adds dc r11 r11 r2;
(* str	r2, [sp, #32]                               #! EA = L0x407ffd10; PC = 0x1186c *)
mov L0x407ffd10 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11870 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11874 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11878 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1187c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11880 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11884 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11888 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0xbb69c495; PC = 0x1188c *)
mov r2 L0x407ffd18;
(* eor	r12, r4, r5                                 #! PC = 0x11890 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0xedcdfecf; PC = 0x11894 *)
mov r1 L0x407ffd0c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11898 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1189c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x118a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x118a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x118a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x118ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x118b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x118b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x118b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x118bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x118c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x46bdf9a5; PC = 0x118c4 *)
mov r2 L0x407ffd14;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x118c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x6932a3e6; PC = 0x118cc *)
mov r1 L0x407ffcf8;
(* add	r3, r3, r0                                  #! PC = 0x118d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x118d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x118d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x118dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x118e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d04; Value = 0xa81a664b; PC = 0x118e4 *)
mov r3 L0x10d04;
(* add	r10, r10, r2                                #! PC = 0x118e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; PC = 0x118ec *)
mov L0x407ffd14 r2;
(* eor	r2, r8, r9                                  #! PC = 0x118f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x118f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x118f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x118fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11900 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11904 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11908 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xde3651fc; PC = 0x1190c *)
mov r2 L0x407ffd1c;
(* eor	r3, r11, r4                                 #! PC = 0x11910 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0xeba4eb9f; PC = 0x11914 *)
mov r1 L0x407ffd10;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11918 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1191c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11920 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11924 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11928 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1192c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11930 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11934 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11938 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1193c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11940 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0xbb69c495; PC = 0x11944 *)
mov r2 L0x407ffd18;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11948 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x686dd1e2; PC = 0x1194c *)
mov r1 L0x407ffcfc;
(* add	r12, r12, r0                                #! PC = 0x11950 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11954 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11958 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1195c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11960 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d08; Value = 0xc24b8b70; PC = 0x11964 *)
mov r12 L0x10d08;
(* add	r9, r9, r2                                  #! PC = 0x11968 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; PC = 0x1196c *)
mov L0x407ffd18 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11970 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11974 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11978 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1197c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11980 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11984 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11988 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0xfa97d73f; PC = 0x1198c *)
mov r2 L0x407ffd20;
(* eor	r12, r10, r11                               #! PC = 0x11990 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x3db49b6c; PC = 0x11994 *)
mov r1 L0x407ffd14;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11998 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1199c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x119a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x119a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x119a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x119ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x119b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x119b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x119b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x119bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x119c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xde3651fc; PC = 0x119c4 *)
mov r2 L0x407ffd1c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x119c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x6a3e6f4f; PC = 0x119cc *)
mov r1 L0x407ffd00;
(* add	r3, r3, r0                                  #! PC = 0x119d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x119d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x119d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x119dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x119e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d0c; Value = 0xc76c51a3; PC = 0x119e4 *)
mov r3 L0x10d0c;
(* add	r8, r8, r2                                  #! PC = 0x119e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; PC = 0x119ec *)
mov L0x407ffd1c r2;
(* eor	r2, r6, r7                                  #! PC = 0x119f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x119f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x119f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x119fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11a00 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11a04 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11a08 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x65fb6bbc; PC = 0x11a0c *)
mov r2 L0x407ffd24;
(* eor	r3, r9, r10                                 #! PC = 0x11a10 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x82640924; PC = 0x11a14 *)
mov r1 L0x407ffd18;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11a18 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x11a1c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11a20 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11a24 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11a28 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11a2c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11a30 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11a34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11a38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11a3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11a40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0xfa97d73f; PC = 0x11a44 *)
mov r2 L0x407ffd20;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11a48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x56829a8b; PC = 0x11a4c *)
mov r1 L0x407ffd04;
(* add	r12, r12, r0                                #! PC = 0x11a50 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11a54 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11a58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x11a5c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11a60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d10; Value = 0xd192e819; PC = 0x11a64 *)
mov r12 L0x10d10;
(* add	r7, r7, r2                                  #! PC = 0x11a68 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; PC = 0x11a6c *)
mov L0x407ffd20 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11a70 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11a74 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11a78 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x11a7c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11a80 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11a84 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11a88 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x180f9a3a; PC = 0x11a8c *)
mov r2 L0x407ffd28;
(* eor	r12, r8, r9                                 #! PC = 0x11a90 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xbcb1e181; PC = 0x11a94 *)
mov r1 L0x407ffd1c;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11a98 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x11a9c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x11aa0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x11aa4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x11aa8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11aac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x11ab0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11ab4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11ab8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11abc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11ac0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x65fb6bbc; PC = 0x11ac4 *)
mov r2 L0x407ffd24;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11ac8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x0fad4c36; PC = 0x11acc *)
mov r1 L0x407ffd08;
(* add	r3, r3, r0                                  #! PC = 0x11ad0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x11ad4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x11ad8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x11adc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x11ae0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d14; Value = 0xd6990624; PC = 0x11ae4 *)
mov r3 L0x10d14;
(* add	r6, r6, r2                                  #! PC = 0x11ae8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; PC = 0x11aec *)
mov L0x407ffd24 r2;
(* eor	r2, r4, r5                                  #! PC = 0x11af0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x11af4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x11af8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x11afc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11b00 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11b04 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11b08 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x4bfc73f7; PC = 0x11b0c *)
mov r2 L0x407ffd2c;
(* eor	r3, r7, r8                                  #! PC = 0x11b10 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x854c3d24; PC = 0x11b14 *)
mov r1 L0x407ffd20;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11b18 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x11b1c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11b20 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11b24 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11b28 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11b2c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11b30 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11b34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11b38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11b3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11b40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x180f9a3a; PC = 0x11b44 *)
mov r2 L0x407ffd28;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11b48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0xedcdfecf; PC = 0x11b4c *)
mov r1 L0x407ffd0c;
(* add	r12, r12, r0                                #! PC = 0x11b50 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11b54 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11b58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x11b5c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11b60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d18; Value = 0xf40e3585; PC = 0x11b64 *)
mov r12 L0x10d18;
(* add	r5, r5, r2                                  #! PC = 0x11b68 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; PC = 0x11b6c *)
mov L0x407ffd28 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11b70 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11b74 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11b78 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x11b7c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11b80 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11b84 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11b88 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x5e7e0dd4; PC = 0x11b8c *)
mov r2 L0x407ffcf0;
(* eor	r12, r6, r7                                 #! PC = 0x11b90 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0xd447e818; PC = 0x11b94 *)
mov r1 L0x407ffd24;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11b98 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x11b9c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x11ba0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x11ba4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x11ba8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11bac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x11bb0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11bb4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11bb8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11bbc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11bc0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x4bfc73f7; PC = 0x11bc4 *)
mov r2 L0x407ffd2c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11bc8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0xeba4eb9f; PC = 0x11bcc *)
mov r1 L0x407ffd10;
(* add	r3, r3, r0                                  #! PC = 0x11bd0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x11bd4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x11bd8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x11bdc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x11be0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d1c; Value = 0x106aa070; PC = 0x11be4 *)
mov r3 L0x10d1c;
(* add	r4, r4, r2                                  #! PC = 0x11be8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; PC = 0x11bec *)
mov L0x407ffd2c r2;
(* eor	r2, r10, r11                                #! PC = 0x11bf0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x11bf4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x11bf8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x11bfc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11c00 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11c04 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11c08 *)
adds dc r4 r4 r2;
(* and	r3, r3, #255	; 0xff                         #! PC = 0x11c0c *)
and r3@uint32 r3 255@uint32;
(* cmp	r3, #242	; 0xf2                             #! PC = 0x11c10 *)
(* cmp r3, 242 *)
nop;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x5e92c08b; PC = 0x11c14 *)
mov r2 L0x407ffcf4;
(* eor	r3, r5, r6                                  #! PC = 0x11c18 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x9a0abe6f; PC = 0x11c1c *)
mov r1 L0x407ffd28;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11c20 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x11c24 *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11c28 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11c2c *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11c30 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ldreq	r3, [sp, #64]	; 0x40                      #! EA = L0x407ffd30; Value = 0x0002204c; PC = 0x11c34 *)
(* ldreq r3, L0x407ffd30 *)
nop;
(* #bne	0x1142c <sha256_block_data_order+1708>     #! PC = 0x11c38 *)
#bne	0x1142c <sha256_block_data_order+1708>     #! 0x11c38 = 0x11c38;
(* ror	r0, r2, #7                                  #! PC = 0x1142c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11430 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11434 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11438 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1143c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11440 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x5e7e0dd4; PC = 0x11444 *)
mov r2 L0x407ffcf0;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11448 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x3db49b6c; PC = 0x1144c *)
mov r1 L0x407ffd14;
(* add	r12, r12, r0                                #! PC = 0x11450 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11454 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11458 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1145c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11460 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d20; Value = 0x19a4c116; PC = 0x11464 *)
mov r12 L0x10d20;
(* add	r11, r11, r2                                #! PC = 0x11468 *)
adds dc r11 r11 r2;
(* str	r2, [sp]                                    #! EA = L0x407ffcf0; PC = 0x1146c *)
mov L0x407ffcf0 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11470 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11474 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11478 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1147c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11480 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11484 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11488 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x6932a3e6; PC = 0x1148c *)
mov r2 L0x407ffcf8;
(* eor	r12, r4, r5                                 #! PC = 0x11490 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x60e1eb25; PC = 0x11494 *)
mov r1 L0x407ffd2c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11498 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1149c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x114a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x114a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x114a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x114ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x114b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x114b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x114b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x114bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x114c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x5e92c08b; PC = 0x114c4 *)
mov r2 L0x407ffcf4;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x114c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x82640924; PC = 0x114cc *)
mov r1 L0x407ffd18;
(* add	r3, r3, r0                                  #! PC = 0x114d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x114d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x114d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x114dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x114e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d24; Value = 0x1e376c08; PC = 0x114e4 *)
mov r3 L0x10d24;
(* add	r10, r10, r2                                #! PC = 0x114e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #4]                                #! EA = L0x407ffcf4; PC = 0x114ec *)
mov L0x407ffcf4 r2;
(* eor	r2, r8, r9                                  #! PC = 0x114f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x114f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x114f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x114fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11500 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11504 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11508 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x686dd1e2; PC = 0x1150c *)
mov r2 L0x407ffcfc;
(* eor	r3, r11, r4                                 #! PC = 0x11510 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x525d105f; PC = 0x11514 *)
mov r1 L0x407ffcf0;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11518 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1151c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11520 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11524 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11528 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1152c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11530 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11534 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11538 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1153c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11540 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x6932a3e6; PC = 0x11544 *)
mov r2 L0x407ffcf8;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11548 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xbcb1e181; PC = 0x1154c *)
mov r1 L0x407ffd1c;
(* add	r12, r12, r0                                #! PC = 0x11550 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11554 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11558 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1155c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11560 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d28; Value = 0x2748774c; PC = 0x11564 *)
mov r12 L0x10d28;
(* add	r9, r9, r2                                  #! PC = 0x11568 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #8]                                #! EA = L0x407ffcf8; PC = 0x1156c *)
mov L0x407ffcf8 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11570 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11574 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11578 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1157c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11580 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11584 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11588 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x6a3e6f4f; PC = 0x1158c *)
mov r2 L0x407ffd00;
(* eor	r12, r10, r11                               #! PC = 0x11590 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x12f2993c; PC = 0x11594 *)
mov r1 L0x407ffcf4;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11598 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1159c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x115a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x115a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x115a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x115ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x115b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x115b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x115b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x115bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x115c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x686dd1e2; PC = 0x115c4 *)
mov r2 L0x407ffcfc;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x115c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x854c3d24; PC = 0x115cc *)
mov r1 L0x407ffd20;
(* add	r3, r3, r0                                  #! PC = 0x115d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x115d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x115d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x115dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x115e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d2c; Value = 0x34b0bcb5; PC = 0x115e4 *)
mov r3 L0x10d2c;
(* add	r8, r8, r2                                  #! PC = 0x115e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #12]                               #! EA = L0x407ffcfc; PC = 0x115ec *)
mov L0x407ffcfc r2;
(* eor	r2, r6, r7                                  #! PC = 0x115f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x115f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x115f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x115fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11600 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11604 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11608 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x56829a8b; PC = 0x1160c *)
mov r2 L0x407ffd04;
(* eor	r3, r9, r10                                 #! PC = 0x11610 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x0dbb550c; PC = 0x11614 *)
mov r1 L0x407ffcf8;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11618 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x1161c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11620 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11624 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11628 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1162c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11630 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11634 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11638 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1163c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11640 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #16]                               #! EA = L0x407ffd00; Value = 0x6a3e6f4f; PC = 0x11644 *)
mov r2 L0x407ffd00;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11648 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0xd447e818; PC = 0x1164c *)
mov r1 L0x407ffd24;
(* add	r12, r12, r0                                #! PC = 0x11650 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11654 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11658 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x1165c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11660 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d30; Value = 0x391c0cb3; PC = 0x11664 *)
mov r12 L0x10d30;
(* add	r7, r7, r2                                  #! PC = 0x11668 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #16]                               #! EA = L0x407ffd00; PC = 0x1166c *)
mov L0x407ffd00 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11670 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11674 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11678 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x1167c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11680 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11684 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11688 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x0fad4c36; PC = 0x1168c *)
mov r2 L0x407ffd08;
(* eor	r12, r8, r9                                 #! PC = 0x11690 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x15b7b23f; PC = 0x11694 *)
mov r1 L0x407ffcfc;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11698 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x1169c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x116a0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x116a4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x116a8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x116ac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x116b0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x116b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x116b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x116bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x116c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x56829a8b; PC = 0x116c4 *)
mov r2 L0x407ffd04;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x116c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x9a0abe6f; PC = 0x116cc *)
mov r1 L0x407ffd28;
(* add	r3, r3, r0                                  #! PC = 0x116d0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x116d4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x116d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x116dc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x116e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d34; Value = 0x4ed8aa4a; PC = 0x116e4 *)
mov r3 L0x10d34;
(* add	r6, r6, r2                                  #! PC = 0x116e8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #20]                               #! EA = L0x407ffd04; PC = 0x116ec *)
mov L0x407ffd04 r2;
(* eor	r2, r4, r5                                  #! PC = 0x116f0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x116f4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x116f8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x116fc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11700 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11704 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11708 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0xedcdfecf; PC = 0x1170c *)
mov r2 L0x407ffd0c;
(* eor	r3, r7, r8                                  #! PC = 0x11710 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0xb98ac4ea; PC = 0x11714 *)
mov r1 L0x407ffd00;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11718 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x1171c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11720 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11724 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11728 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1172c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11730 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11734 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11738 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1173c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11740 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #24]                               #! EA = L0x407ffd08; Value = 0x0fad4c36; PC = 0x11744 *)
mov r2 L0x407ffd08;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11748 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x60e1eb25; PC = 0x1174c *)
mov r1 L0x407ffd2c;
(* add	r12, r12, r0                                #! PC = 0x11750 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11754 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11758 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x1175c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11760 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d38; Value = 0x5b9cca4f; PC = 0x11764 *)
mov r12 L0x10d38;
(* add	r5, r5, r2                                  #! PC = 0x11768 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #24]                               #! EA = L0x407ffd08; PC = 0x1176c *)
mov L0x407ffd08 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11770 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11774 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11778 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x1177c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11780 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11784 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11788 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0xeba4eb9f; PC = 0x1178c *)
mov r2 L0x407ffd10;
(* eor	r12, r6, r7                                 #! PC = 0x11790 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x5ed1cf70; PC = 0x11794 *)
mov r1 L0x407ffd04;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11798 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x1179c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x117a0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x117a4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x117a8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x117ac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x117b0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x117b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x117b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x117bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x117c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0xedcdfecf; PC = 0x117c4 *)
mov r2 L0x407ffd0c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x117c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp]                                    #! EA = L0x407ffcf0; Value = 0x525d105f; PC = 0x117cc *)
mov r1 L0x407ffcf0;
(* add	r3, r3, r0                                  #! PC = 0x117d0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x117d4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x117d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x117dc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x117e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d3c; Value = 0x682e6ff3; PC = 0x117e4 *)
mov r3 L0x10d3c;
(* add	r4, r4, r2                                  #! PC = 0x117e8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #28]                               #! EA = L0x407ffd0c; PC = 0x117ec *)
mov L0x407ffd0c r2;
(* eor	r2, r10, r11                                #! PC = 0x117f0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x117f4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x117f8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x117fc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11800 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11804 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11808 *)
adds dc r4 r4 r2;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x3db49b6c; PC = 0x1180c *)
mov r2 L0x407ffd14;
(* eor	r3, r5, r6                                  #! PC = 0x11810 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0xa9277ff7; PC = 0x11814 *)
mov r1 L0x407ffd08;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11818 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x1181c *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11820 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11824 *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11828 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1182c *)
ror r0@uint32 r2 7;
(* add	r4, r4, r12                                 #! PC = 0x11830 *)
adds dc r4 r4 r12;
(* ror	r12, r1, #17                                #! PC = 0x11834 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11838 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1183c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11840 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #32]                               #! EA = L0x407ffd10; Value = 0xeba4eb9f; PC = 0x11844 *)
mov r2 L0x407ffd10;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11848 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x12f2993c; PC = 0x1184c *)
mov r1 L0x407ffcf4;
(* add	r12, r12, r0                                #! PC = 0x11850 *)
adds dc r12 r12 r0;
(* eor	r0, r8, r8, ror #5                          #! PC = 0x11854 *)
ror r8_r@uint32 r8 5; xor r0@uint32 r8 r8_r;
(* add	r2, r2, r12                                 #! PC = 0x11858 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r8, ror #19                         #! PC = 0x1185c *)
ror r8_r@uint32 r8 19; xor r0@uint32 r0 r8_r;
(* add	r2, r2, r1                                  #! PC = 0x11860 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d40; Value = 0x748f82ee; PC = 0x11864 *)
mov r12 L0x10d40;
(* add	r11, r11, r2                                #! PC = 0x11868 *)
adds dc r11 r11 r2;
(* str	r2, [sp, #32]                               #! EA = L0x407ffd10; PC = 0x1186c *)
mov L0x407ffd10 r2;
(* eor	r2, r9, r10                                 #! PC = 0x11870 *)
xor r2@uint32 r9 r10;
(* add	r11, r11, r0, ror #6                        #! PC = 0x11874 *)
ror r0_r r0 6; adds dc r11 r11 r0_r;
(* and	r2, r2, r8                                  #! PC = 0x11878 *)
and r2@uint32 r2 r8;
(* add	r11, r11, r12                               #! PC = 0x1187c *)
adds dc r11 r11 r12;
(* eor	r2, r2, r10                                 #! PC = 0x11880 *)
xor r2@uint32 r2 r10;
(* eor	r0, r4, r4, ror #11                         #! PC = 0x11884 *)
ror r4_r@uint32 r4 11; xor r0@uint32 r4 r4_r;
(* add	r11, r11, r2                                #! PC = 0x11888 *)
adds dc r11 r11 r2;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x82640924; PC = 0x1188c *)
mov r2 L0x407ffd18;
(* eor	r12, r4, r5                                 #! PC = 0x11890 *)
xor r12@uint32 r4 r5;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x36b0ce3c; PC = 0x11894 *)
mov r1 L0x407ffd0c;
(* eor	r0, r0, r4, ror #20                         #! PC = 0x11898 *)
ror r4_r@uint32 r4 20; xor r0@uint32 r0 r4_r;
(* and	r3, r3, r12                                 #! PC = 0x1189c *)
and r3@uint32 r3 r12;
(* add	r7, r7, r11                                 #! PC = 0x118a0 *)
adds dc r7 r7 r11;
(* eor	r3, r3, r5                                  #! PC = 0x118a4 *)
xor r3@uint32 r3 r5;
(* add	r11, r11, r0, ror #2                        #! PC = 0x118a8 *)
ror r0_r r0 2; adds dc r11 r11 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x118ac *)
ror r0@uint32 r2 7;
(* add	r11, r11, r3                                #! PC = 0x118b0 *)
adds dc r11 r11 r3;
(* ror	r3, r1, #17                                 #! PC = 0x118b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x118b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x118bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x118c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x3db49b6c; PC = 0x118c4 *)
mov r2 L0x407ffd14;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x118c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #8]                                #! EA = L0x407ffcf8; Value = 0x0dbb550c; PC = 0x118cc *)
mov r1 L0x407ffcf8;
(* add	r3, r3, r0                                  #! PC = 0x118d0 *)
adds dc r3 r3 r0;
(* eor	r0, r7, r7, ror #5                          #! PC = 0x118d4 *)
ror r7_r@uint32 r7 5; xor r0@uint32 r7 r7_r;
(* add	r2, r2, r3                                  #! PC = 0x118d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r7, ror #19                         #! PC = 0x118dc *)
ror r7_r@uint32 r7 19; xor r0@uint32 r0 r7_r;
(* add	r2, r2, r1                                  #! PC = 0x118e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d44; Value = 0x78a5636f; PC = 0x118e4 *)
mov r3 L0x10d44;
(* add	r10, r10, r2                                #! PC = 0x118e8 *)
adds dc r10 r10 r2;
(* str	r2, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; PC = 0x118ec *)
mov L0x407ffd14 r2;
(* eor	r2, r8, r9                                  #! PC = 0x118f0 *)
xor r2@uint32 r8 r9;
(* add	r10, r10, r0, ror #6                        #! PC = 0x118f4 *)
ror r0_r r0 6; adds dc r10 r10 r0_r;
(* and	r2, r2, r7                                  #! PC = 0x118f8 *)
and r2@uint32 r2 r7;
(* add	r10, r10, r3                                #! PC = 0x118fc *)
adds dc r10 r10 r3;
(* eor	r2, r2, r9                                  #! PC = 0x11900 *)
xor r2@uint32 r2 r9;
(* eor	r0, r11, r11, ror #11                       #! PC = 0x11904 *)
ror r11_r@uint32 r11 11; xor r0@uint32 r11 r11_r;
(* add	r10, r10, r2                                #! PC = 0x11908 *)
adds dc r10 r10 r2;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xbcb1e181; PC = 0x1190c *)
mov r2 L0x407ffd1c;
(* eor	r3, r11, r4                                 #! PC = 0x11910 *)
xor r3@uint32 r11 r4;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x47dde279; PC = 0x11914 *)
mov r1 L0x407ffd10;
(* eor	r0, r0, r11, ror #20                        #! PC = 0x11918 *)
ror r11_r@uint32 r11 20; xor r0@uint32 r0 r11_r;
(* and	r12, r12, r3                                #! PC = 0x1191c *)
and r12@uint32 r12 r3;
(* add	r6, r6, r10                                 #! PC = 0x11920 *)
adds dc r6 r6 r10;
(* eor	r12, r12, r4                                #! PC = 0x11924 *)
xor r12@uint32 r12 r4;
(* add	r10, r10, r0, ror #2                        #! PC = 0x11928 *)
ror r0_r r0 2; adds dc r10 r10 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x1192c *)
ror r0@uint32 r2 7;
(* add	r10, r10, r12                               #! PC = 0x11930 *)
adds dc r10 r10 r12;
(* ror	r12, r1, #17                                #! PC = 0x11934 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11938 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x1193c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11940 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x82640924; PC = 0x11944 *)
mov r2 L0x407ffd18;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11948 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #12]                               #! EA = L0x407ffcfc; Value = 0x15b7b23f; PC = 0x1194c *)
mov r1 L0x407ffcfc;
(* add	r12, r12, r0                                #! PC = 0x11950 *)
adds dc r12 r12 r0;
(* eor	r0, r6, r6, ror #5                          #! PC = 0x11954 *)
ror r6_r@uint32 r6 5; xor r0@uint32 r6 r6_r;
(* add	r2, r2, r12                                 #! PC = 0x11958 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r6, ror #19                         #! PC = 0x1195c *)
ror r6_r@uint32 r6 19; xor r0@uint32 r0 r6_r;
(* add	r2, r2, r1                                  #! PC = 0x11960 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d48; Value = 0x84c87814; PC = 0x11964 *)
mov r12 L0x10d48;
(* add	r9, r9, r2                                  #! PC = 0x11968 *)
adds dc r9 r9 r2;
(* str	r2, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; PC = 0x1196c *)
mov L0x407ffd18 r2;
(* eor	r2, r7, r8                                  #! PC = 0x11970 *)
xor r2@uint32 r7 r8;
(* add	r9, r9, r0, ror #6                          #! PC = 0x11974 *)
ror r0_r r0 6; adds dc r9 r9 r0_r;
(* and	r2, r2, r6                                  #! PC = 0x11978 *)
and r2@uint32 r2 r6;
(* add	r9, r9, r12                                 #! PC = 0x1197c *)
adds dc r9 r9 r12;
(* eor	r2, r2, r8                                  #! PC = 0x11980 *)
xor r2@uint32 r2 r8;
(* eor	r0, r10, r10, ror #11                       #! PC = 0x11984 *)
ror r10_r@uint32 r10 11; xor r0@uint32 r10 r10_r;
(* add	r9, r9, r2                                  #! PC = 0x11988 *)
adds dc r9 r9 r2;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x854c3d24; PC = 0x1198c *)
mov r2 L0x407ffd20;
(* eor	r12, r10, r11                               #! PC = 0x11990 *)
xor r12@uint32 r10 r11;
(* ldr	r1, [sp, #36]	; 0x24                        #! EA = L0x407ffd14; Value = 0x25458be4; PC = 0x11994 *)
mov r1 L0x407ffd14;
(* eor	r0, r0, r10, ror #20                        #! PC = 0x11998 *)
ror r10_r@uint32 r10 20; xor r0@uint32 r0 r10_r;
(* and	r3, r3, r12                                 #! PC = 0x1199c *)
and r3@uint32 r3 r12;
(* add	r5, r5, r9                                  #! PC = 0x119a0 *)
adds dc r5 r5 r9;
(* eor	r3, r3, r11                                 #! PC = 0x119a4 *)
xor r3@uint32 r3 r11;
(* add	r9, r9, r0, ror #2                          #! PC = 0x119a8 *)
ror r0_r r0 2; adds dc r9 r9 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x119ac *)
ror r0@uint32 r2 7;
(* add	r9, r9, r3                                  #! PC = 0x119b0 *)
adds dc r9 r9 r3;
(* ror	r3, r1, #17                                 #! PC = 0x119b4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x119b8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x119bc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x119c0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0xbcb1e181; PC = 0x119c4 *)
mov r2 L0x407ffd1c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x119c8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #16]                               #! EA = L0x407ffd00; Value = 0xb98ac4ea; PC = 0x119cc *)
mov r1 L0x407ffd00;
(* add	r3, r3, r0                                  #! PC = 0x119d0 *)
adds dc r3 r3 r0;
(* eor	r0, r5, r5, ror #5                          #! PC = 0x119d4 *)
ror r5_r@uint32 r5 5; xor r0@uint32 r5 r5_r;
(* add	r2, r2, r3                                  #! PC = 0x119d8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r5, ror #19                         #! PC = 0x119dc *)
ror r5_r@uint32 r5 19; xor r0@uint32 r0 r5_r;
(* add	r2, r2, r1                                  #! PC = 0x119e0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d4c; Value = 0x8cc70208; PC = 0x119e4 *)
mov r3 L0x10d4c;
(* add	r8, r8, r2                                  #! PC = 0x119e8 *)
adds dc r8 r8 r2;
(* str	r2, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; PC = 0x119ec *)
mov L0x407ffd1c r2;
(* eor	r2, r6, r7                                  #! PC = 0x119f0 *)
xor r2@uint32 r6 r7;
(* add	r8, r8, r0, ror #6                          #! PC = 0x119f4 *)
ror r0_r r0 6; adds dc r8 r8 r0_r;
(* and	r2, r2, r5                                  #! PC = 0x119f8 *)
and r2@uint32 r2 r5;
(* add	r8, r8, r3                                  #! PC = 0x119fc *)
adds dc r8 r8 r3;
(* eor	r2, r2, r7                                  #! PC = 0x11a00 *)
xor r2@uint32 r2 r7;
(* eor	r0, r9, r9, ror #11                         #! PC = 0x11a04 *)
ror r9_r@uint32 r9 11; xor r0@uint32 r9 r9_r;
(* add	r8, r8, r2                                  #! PC = 0x11a08 *)
adds dc r8 r8 r2;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0xd447e818; PC = 0x11a0c *)
mov r2 L0x407ffd24;
(* eor	r3, r9, r10                                 #! PC = 0x11a10 *)
xor r3@uint32 r9 r10;
(* ldr	r1, [sp, #40]	; 0x28                        #! EA = L0x407ffd18; Value = 0x520d68af; PC = 0x11a14 *)
mov r1 L0x407ffd18;
(* eor	r0, r0, r9, ror #20                         #! PC = 0x11a18 *)
ror r9_r@uint32 r9 20; xor r0@uint32 r0 r9_r;
(* and	r12, r12, r3                                #! PC = 0x11a1c *)
and r12@uint32 r12 r3;
(* add	r4, r4, r8                                  #! PC = 0x11a20 *)
adds dc r4 r4 r8;
(* eor	r12, r12, r10                               #! PC = 0x11a24 *)
xor r12@uint32 r12 r10;
(* add	r8, r8, r0, ror #2                          #! PC = 0x11a28 *)
ror r0_r r0 2; adds dc r8 r8 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11a2c *)
ror r0@uint32 r2 7;
(* add	r8, r8, r12                                 #! PC = 0x11a30 *)
adds dc r8 r8 r12;
(* ror	r12, r1, #17                                #! PC = 0x11a34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11a38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11a3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11a40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0x854c3d24; PC = 0x11a44 *)
mov r2 L0x407ffd20;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11a48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #20]                               #! EA = L0x407ffd04; Value = 0x5ed1cf70; PC = 0x11a4c *)
mov r1 L0x407ffd04;
(* add	r12, r12, r0                                #! PC = 0x11a50 *)
adds dc r12 r12 r0;
(* eor	r0, r4, r4, ror #5                          #! PC = 0x11a54 *)
ror r4_r@uint32 r4 5; xor r0@uint32 r4 r4_r;
(* add	r2, r2, r12                                 #! PC = 0x11a58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r4, ror #19                         #! PC = 0x11a5c *)
ror r4_r@uint32 r4 19; xor r0@uint32 r0 r4_r;
(* add	r2, r2, r1                                  #! PC = 0x11a60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d50; Value = 0x90befffa; PC = 0x11a64 *)
mov r12 L0x10d50;
(* add	r7, r7, r2                                  #! PC = 0x11a68 *)
adds dc r7 r7 r2;
(* str	r2, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; PC = 0x11a6c *)
mov L0x407ffd20 r2;
(* eor	r2, r5, r6                                  #! PC = 0x11a70 *)
xor r2@uint32 r5 r6;
(* add	r7, r7, r0, ror #6                          #! PC = 0x11a74 *)
ror r0_r r0 6; adds dc r7 r7 r0_r;
(* and	r2, r2, r4                                  #! PC = 0x11a78 *)
and r2@uint32 r2 r4;
(* add	r7, r7, r12                                 #! PC = 0x11a7c *)
adds dc r7 r7 r12;
(* eor	r2, r2, r6                                  #! PC = 0x11a80 *)
xor r2@uint32 r2 r6;
(* eor	r0, r8, r8, ror #11                         #! PC = 0x11a84 *)
ror r8_r@uint32 r8 11; xor r0@uint32 r8 r8_r;
(* add	r7, r7, r2                                  #! PC = 0x11a88 *)
adds dc r7 r7 r2;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x9a0abe6f; PC = 0x11a8c *)
mov r2 L0x407ffd28;
(* eor	r12, r8, r9                                 #! PC = 0x11a90 *)
xor r12@uint32 r8 r9;
(* ldr	r1, [sp, #44]	; 0x2c                        #! EA = L0x407ffd1c; Value = 0x41aeac60; PC = 0x11a94 *)
mov r1 L0x407ffd1c;
(* eor	r0, r0, r8, ror #20                         #! PC = 0x11a98 *)
ror r8_r@uint32 r8 20; xor r0@uint32 r0 r8_r;
(* and	r3, r3, r12                                 #! PC = 0x11a9c *)
and r3@uint32 r3 r12;
(* add	r11, r11, r7                                #! PC = 0x11aa0 *)
adds dc r11 r11 r7;
(* eor	r3, r3, r9                                  #! PC = 0x11aa4 *)
xor r3@uint32 r3 r9;
(* add	r7, r7, r0, ror #2                          #! PC = 0x11aa8 *)
ror r0_r r0 2; adds dc r7 r7 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11aac *)
ror r0@uint32 r2 7;
(* add	r7, r7, r3                                  #! PC = 0x11ab0 *)
adds dc r7 r7 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11ab4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11ab8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11abc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11ac0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0xd447e818; PC = 0x11ac4 *)
mov r2 L0x407ffd24;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11ac8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #24]                               #! EA = L0x407ffd08; Value = 0xa9277ff7; PC = 0x11acc *)
mov r1 L0x407ffd08;
(* add	r3, r3, r0                                  #! PC = 0x11ad0 *)
adds dc r3 r3 r0;
(* eor	r0, r11, r11, ror #5                        #! PC = 0x11ad4 *)
ror r11_r@uint32 r11 5; xor r0@uint32 r11 r11_r;
(* add	r2, r2, r3                                  #! PC = 0x11ad8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r11, ror #19                        #! PC = 0x11adc *)
ror r11_r@uint32 r11 19; xor r0@uint32 r0 r11_r;
(* add	r2, r2, r1                                  #! PC = 0x11ae0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d54; Value = 0xa4506ceb; PC = 0x11ae4 *)
mov r3 L0x10d54;
(* add	r6, r6, r2                                  #! PC = 0x11ae8 *)
adds dc r6 r6 r2;
(* str	r2, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; PC = 0x11aec *)
mov L0x407ffd24 r2;
(* eor	r2, r4, r5                                  #! PC = 0x11af0 *)
xor r2@uint32 r4 r5;
(* add	r6, r6, r0, ror #6                          #! PC = 0x11af4 *)
ror r0_r r0 6; adds dc r6 r6 r0_r;
(* and	r2, r2, r11                                 #! PC = 0x11af8 *)
and r2@uint32 r2 r11;
(* add	r6, r6, r3                                  #! PC = 0x11afc *)
adds dc r6 r6 r3;
(* eor	r2, r2, r5                                  #! PC = 0x11b00 *)
xor r2@uint32 r2 r5;
(* eor	r0, r7, r7, ror #11                         #! PC = 0x11b04 *)
ror r7_r@uint32 r7 11; xor r0@uint32 r7 r7_r;
(* add	r6, r6, r2                                  #! PC = 0x11b08 *)
adds dc r6 r6 r2;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x60e1eb25; PC = 0x11b0c *)
mov r2 L0x407ffd2c;
(* eor	r3, r7, r8                                  #! PC = 0x11b10 *)
xor r3@uint32 r7 r8;
(* ldr	r1, [sp, #48]	; 0x30                        #! EA = L0x407ffd20; Value = 0xce9b1473; PC = 0x11b14 *)
mov r1 L0x407ffd20;
(* eor	r0, r0, r7, ror #20                         #! PC = 0x11b18 *)
ror r7_r@uint32 r7 20; xor r0@uint32 r0 r7_r;
(* and	r12, r12, r3                                #! PC = 0x11b1c *)
and r12@uint32 r12 r3;
(* add	r10, r10, r6                                #! PC = 0x11b20 *)
adds dc r10 r10 r6;
(* eor	r12, r12, r8                                #! PC = 0x11b24 *)
xor r12@uint32 r12 r8;
(* add	r6, r6, r0, ror #2                          #! PC = 0x11b28 *)
ror r0_r r0 2; adds dc r6 r6 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11b2c *)
ror r0@uint32 r2 7;
(* add	r6, r6, r12                                 #! PC = 0x11b30 *)
adds dc r6 r6 r12;
(* ror	r12, r1, #17                                #! PC = 0x11b34 *)
ror r12@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11b38 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r12, r12, r1, ror #19                       #! PC = 0x11b3c *)
ror r1_r@uint32 r1 19; xor r12@uint32 r12 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11b40 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0x9a0abe6f; PC = 0x11b44 *)
mov r2 L0x407ffd28;
(* eor	r12, r12, r1, lsr #10                       #! PC = 0x11b48 *)
split r1_r dc r1 10; xor r12@uint32 r12 r1_r;
(* ldr	r1, [sp, #28]                               #! EA = L0x407ffd0c; Value = 0x36b0ce3c; PC = 0x11b4c *)
mov r1 L0x407ffd0c;
(* add	r12, r12, r0                                #! PC = 0x11b50 *)
adds dc r12 r12 r0;
(* eor	r0, r10, r10, ror #5                        #! PC = 0x11b54 *)
ror r10_r@uint32 r10 5; xor r0@uint32 r10 r10_r;
(* add	r2, r2, r12                                 #! PC = 0x11b58 *)
adds dc r2 r2 r12;
(* eor	r0, r0, r10, ror #19                        #! PC = 0x11b5c *)
ror r10_r@uint32 r10 19; xor r0@uint32 r0 r10_r;
(* add	r2, r2, r1                                  #! PC = 0x11b60 *)
adds dc r2 r2 r1;
(* ldr	r12, [lr], #4                               #! EA = L0x10d58; Value = 0xbef9a3f7; PC = 0x11b64 *)
mov r12 L0x10d58;
(* add	r5, r5, r2                                  #! PC = 0x11b68 *)
adds dc r5 r5 r2;
(* str	r2, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; PC = 0x11b6c *)
mov L0x407ffd28 r2;
(* eor	r2, r11, r4                                 #! PC = 0x11b70 *)
xor r2@uint32 r11 r4;
(* add	r5, r5, r0, ror #6                          #! PC = 0x11b74 *)
ror r0_r r0 6; adds dc r5 r5 r0_r;
(* and	r2, r2, r10                                 #! PC = 0x11b78 *)
and r2@uint32 r2 r10;
(* add	r5, r5, r12                                 #! PC = 0x11b7c *)
adds dc r5 r5 r12;
(* eor	r2, r2, r4                                  #! PC = 0x11b80 *)
xor r2@uint32 r2 r4;
(* eor	r0, r6, r6, ror #11                         #! PC = 0x11b84 *)
ror r6_r@uint32 r6 11; xor r0@uint32 r6 r6_r;
(* add	r5, r5, r2                                  #! PC = 0x11b88 *)
adds dc r5 r5 r2;
(* ldr	r2, [sp]                                    #! EA = L0x407ffcf0; Value = 0x525d105f; PC = 0x11b8c *)
mov r2 L0x407ffcf0;
(* eor	r12, r6, r7                                 #! PC = 0x11b90 *)
xor r12@uint32 r6 r7;
(* ldr	r1, [sp, #52]	; 0x34                        #! EA = L0x407ffd24; Value = 0x650a4f8b; PC = 0x11b94 *)
mov r1 L0x407ffd24;
(* eor	r0, r0, r6, ror #20                         #! PC = 0x11b98 *)
ror r6_r@uint32 r6 20; xor r0@uint32 r0 r6_r;
(* and	r3, r3, r12                                 #! PC = 0x11b9c *)
and r3@uint32 r3 r12;
(* add	r9, r9, r5                                  #! PC = 0x11ba0 *)
adds dc r9 r9 r5;
(* eor	r3, r3, r7                                  #! PC = 0x11ba4 *)
xor r3@uint32 r3 r7;
(* add	r5, r5, r0, ror #2                          #! PC = 0x11ba8 *)
ror r0_r r0 2; adds dc r5 r5 r0_r;
(* ror	r0, r2, #7                                  #! PC = 0x11bac *)
ror r0@uint32 r2 7;
(* add	r5, r5, r3                                  #! PC = 0x11bb0 *)
adds dc r5 r5 r3;
(* ror	r3, r1, #17                                 #! PC = 0x11bb4 *)
ror r3@uint32 r1 17;
(* eor	r0, r0, r2, ror #18                         #! PC = 0x11bb8 *)
ror r2_r@uint32 r2 18; xor r0@uint32 r0 r2_r;
(* eor	r3, r3, r1, ror #19                         #! PC = 0x11bbc *)
ror r1_r@uint32 r1 19; xor r3@uint32 r3 r1_r;
(* eor	r0, r0, r2, lsr #3                          #! PC = 0x11bc0 *)
split r2_r dc r2 3; xor r0@uint32 r0 r2_r;
(* ldr	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; Value = 0x60e1eb25; PC = 0x11bc4 *)
mov r2 L0x407ffd2c;
(* eor	r3, r3, r1, lsr #10                         #! PC = 0x11bc8 *)
split r1_r dc r1 10; xor r3@uint32 r3 r1_r;
(* ldr	r1, [sp, #32]                               #! EA = L0x407ffd10; Value = 0x47dde279; PC = 0x11bcc *)
mov r1 L0x407ffd10;
(* add	r3, r3, r0                                  #! PC = 0x11bd0 *)
adds dc r3 r3 r0;
(* eor	r0, r9, r9, ror #5                          #! PC = 0x11bd4 *)
ror r9_r@uint32 r9 5; xor r0@uint32 r9 r9_r;
(* add	r2, r2, r3                                  #! PC = 0x11bd8 *)
adds dc r2 r2 r3;
(* eor	r0, r0, r9, ror #19                         #! PC = 0x11bdc *)
ror r9_r@uint32 r9 19; xor r0@uint32 r0 r9_r;
(* add	r2, r2, r1                                  #! PC = 0x11be0 *)
adds dc r2 r2 r1;
(* ldr	r3, [lr], #4                                #! EA = L0x10d5c; Value = 0xc67178f2; PC = 0x11be4 *)
mov r3 L0x10d5c;
(* add	r4, r4, r2                                  #! PC = 0x11be8 *)
adds dc r4 r4 r2;
(* str	r2, [sp, #60]	; 0x3c                        #! EA = L0x407ffd2c; PC = 0x11bec *)
mov L0x407ffd2c r2;
(* eor	r2, r10, r11                                #! PC = 0x11bf0 *)
xor r2@uint32 r10 r11;
(* add	r4, r4, r0, ror #6                          #! PC = 0x11bf4 *)
ror r0_r r0 6; adds dc r4 r4 r0_r;
(* and	r2, r2, r9                                  #! PC = 0x11bf8 *)
and r2@uint32 r2 r9;
(* add	r4, r4, r3                                  #! PC = 0x11bfc *)
adds dc r4 r4 r3;
(* eor	r2, r2, r11                                 #! PC = 0x11c00 *)
xor r2@uint32 r2 r11;
(* eor	r0, r5, r5, ror #11                         #! PC = 0x11c04 *)
ror r5_r@uint32 r5 11; xor r0@uint32 r5 r5_r;
(* add	r4, r4, r2                                  #! PC = 0x11c08 *)
adds dc r4 r4 r2;
(* and	r3, r3, #255	; 0xff                         #! PC = 0x11c0c *)
and r3@uint32 r3 255@uint32;
(* cmp	r3, #242	; 0xf2                             #! PC = 0x11c10 *)
(* cmp r3, 242 *)
nop;
(* ldr	r2, [sp, #4]                                #! EA = L0x407ffcf4; Value = 0x12f2993c; PC = 0x11c14 *)
mov r2 L0x407ffcf4;
(* eor	r3, r5, r6                                  #! PC = 0x11c18 *)
xor r3@uint32 r5 r6;
(* ldr	r1, [sp, #56]	; 0x38                        #! EA = L0x407ffd28; Value = 0xf5546b90; PC = 0x11c1c *)
mov r1 L0x407ffd28;
(* eor	r0, r0, r5, ror #20                         #! PC = 0x11c20 *)
ror r5_r@uint32 r5 20; xor r0@uint32 r0 r5_r;
(* and	r12, r12, r3                                #! PC = 0x11c24 *)
and r12@uint32 r12 r3;
(* add	r8, r8, r4                                  #! PC = 0x11c28 *)
adds dc r8 r8 r4;
(* eor	r12, r12, r6                                #! PC = 0x11c2c *)
xor r12@uint32 r12 r6;
(* add	r4, r4, r0, ror #2                          #! PC = 0x11c30 *)
ror r0_r r0 2; adds dc r4 r4 r0_r;
(* ldreq	r3, [sp, #64]	; 0x40                      #! EA = L0x407ffd30; Value = 0x0002204c; PC = 0x11c34 *)
(* ldreq r3, L0x407ffd30 *)
nop;
(* #bne	0x1142c <sha256_block_data_order+1708>     #! PC = 0x11c38 *)
#bne	0x1142c <sha256_block_data_order+1708>     #! 0x11c38 = 0x11c38;
(* add	r4, r4, r12                                 #! PC = 0x11c3c *)
adds dc r4 r4 r12;
(* ldr	r0, [r3]                                    #! EA = L0x2204c; Value = 0x6a09e667; PC = 0x11c40 *)
mov r0 L0x2204c;
(* ldr	r2, [r3, #4]                                #! EA = L0x22050; Value = 0xbb67ae85; PC = 0x11c44 *)
mov r2 L0x22050;
(* ldr	r12, [r3, #8]                               #! EA = L0x22054; Value = 0x3c6ef372; PC = 0x11c48 *)
mov r12 L0x22054;
(* add	r4, r4, r0                                  #! PC = 0x11c4c *)
adds dc r4 r4 r0;
(* ldr	r0, [r3, #12]                               #! EA = L0x22058; Value = 0xa54ff53a; PC = 0x11c50 *)
mov r0 L0x22058;
(* add	r5, r5, r2                                  #! PC = 0x11c54 *)
adds dc r5 r5 r2;
(* ldr	r2, [r3, #16]                               #! EA = L0x2205c; Value = 0x510e527f; PC = 0x11c58 *)
mov r2 L0x2205c;
(* add	r6, r6, r12                                 #! PC = 0x11c5c *)
adds dc r6 r6 r12;
(* ldr	r12, [r3, #20]                              #! EA = L0x22060; Value = 0x9b05688c; PC = 0x11c60 *)
mov r12 L0x22060;
(* add	r7, r7, r0                                  #! PC = 0x11c64 *)
adds dc r7 r7 r0;
(* ldr	r0, [r3, #24]                               #! EA = L0x22064; Value = 0x1f83d9ab; PC = 0x11c68 *)
mov r0 L0x22064;
(* add	r8, r8, r2                                  #! PC = 0x11c6c *)
adds dc r8 r8 r2;
(* ldr	r2, [r3, #28]                               #! EA = L0x22068; Value = 0x5be0cd19; PC = 0x11c70 *)
mov r2 L0x22068;
(* add	r9, r9, r12                                 #! PC = 0x11c74 *)
adds dc r9 r9 r12;
(* ldr	r1, [sp, #68]	; 0x44                        #! EA = L0x407ffd34; Value = 0x000220b4; PC = 0x11c78 *)
mov r1 L0x407ffd34;
(* ldr	r12, [sp, #72]	; 0x48                       #! EA = L0x407ffd38; Value = 0x000220b4; PC = 0x11c7c *)
mov r12 L0x407ffd38;
(* add	r10, r10, r0                                #! PC = 0x11c80 *)
adds dc r10 r10 r0;
(* add	r11, r11, r2                                #! PC = 0x11c84 *)
adds dc r11 r11 r2;
(* stm	[r3], {r4, r5, r6, r7, r8, r9, r10, r11}      #! EA = L0x2204c; PC = 0x11c88 *)
mov L0x2204c r4; mov L0x22050 r5; mov L0x22054 r6; mov L0x22058 r7;
mov L0x2205c r8; mov L0x22060 r9; mov L0x22064 r10; mov L0x22068 r11;
(* cmp	r1, r12                                     #! PC = 0x11c8c *)
(* cmp r1, r12 *)
nop;
(* sub	lr, lr, #256	; 0x100                        #! PC = 0x11c90 *)
(* sub lr, lr, 256 *)
nop;
(* #bne	0x10d98 <sha256_block_data_order+24>       #! PC = 0x11c94 *)
#bne	0x10d98 <sha256_block_data_order+24>       #! 0x11c94 = 0x11c94;
(* add	sp, sp, #76	; 0x4c                          #! PC = 0x11c98 *)
(* add sp, sp, 76 *)
nop;
(* #pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}      #! PC = 0x11c9c *)
#pop	{%%r4, %%r5, %%r6, %%r7, %%r8, %%r9, %%r10, %%r11, pc}      #! 0x11c9c = 0x11c9c;

(* outputs *)

mov a0 L0x2204c; mov a1 L0x22050; mov a2 L0x22054; mov a3 L0x22058;
mov a4 L0x2205c; mov a5 L0x22060; mov a6 L0x22064; mov a7 L0x22068;

{
  true
  &&
  true
}

