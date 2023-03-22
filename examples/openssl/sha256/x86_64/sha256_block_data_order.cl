(* csweep popper: cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../sha256_sha256_block_data_order_while.body.cl
Parsing CryptoLine file:                [OK]            0.016300 seconds
Checking well-formedness:               [OK]            0.003656 seconds
Parsing CryptoLine file:                [OK]            0.021329 seconds
Checking well-formedness:               [OK]            0.009020 seconds
Equivalence of output group #0:         [OK]            3980.453200 seconds
Final result:                           [OK]            3980.856954 seconds
*)
proc sigma0 (uint32 x; uint32 o) =
{ true && true }
ror x07@uint32 x  7;
ror x18@uint32 x 18;
split x03 dc x  3;
xor xx@uint32 x07 x18;
xor o@uint32 xx x03;
{ true && true }

proc sigma1 (uint32 x; uint32 o) =
{ true && true }
ror x17@uint32 x 17;
ror x19@uint32 x 19;
split x10 dc x 10;
xor xx@uint32 x17 x19;
xor o@uint32 xx x10;
{ true && true }

proc sha256msg1 (uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                 uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                 uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov w4 src2_0; mov w3 src1_3; mov w2 src1_2; mov w1 src1_1; mov w0 src1_0;
call sigma0 (w4, o4); call sigma0 (w3, o3);
call sigma0 (w2, o2); call sigma0 (w1, o1);
adds dc dst_3 w3 o4; adds dc dst_2 w2 o3;
adds dc dst_1 w1 o2; adds dc dst_0 w0 o1;
{ true && true }

proc sha256msg2 (uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                 uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                 uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov w14 src2_2; mov w15 src2_3;
mov t16 src1_0; mov t17 src1_1; mov t18 src1_2; mov t19 src1_3;
call sigma1 (w14, o14); adds dc w16 t16 o14;
call sigma1 (w15, o15); adds dc w17 t17 o15;
call sigma1 (w16, o16); adds dc w18 t18 o16;
call sigma1 (w17, o17); adds dc w19 t19 o17;
mov dst_3 w19; mov dst_2 w18; mov dst_1 w17; mov dst_0 w16;
{ true && true }



proc Ch (uint32 x, uint32 y, uint32 z; uint32 o) =
{ true && true }
and xy@uint32 x y;
not nx@uint32 x;
and nxz@uint32 nx z;
xor o@uint32 xy nxz;
{ true && true }

proc Maj (uint32 x, uint32 y, uint32 z; uint32 o) =
{ true && true }
and xy@uint32 x y;
and xz@uint32 x z;
and yz@uint32 y z;
xor xyz@uint32 xy xz;
xor o@uint32 xyz yz;
{ true && true }

proc Sigma0 (uint32 x; uint32 o) =
{ true && true }
ror x02@uint32 x  2;
ror x13@uint32 x 13;
ror x22@uint32 x 22;
xor xr@uint32 x02 x13;
xor o@uint32 xr x22;
{ true && true }

proc Sigma1 (uint32 x; uint32 o) =
{ true && true }
ror x06@uint32 x  6;
ror x11@uint32 x 11;
ror x25@uint32 x 25;
xor xr@uint32 x06 x11;
xor o@uint32 xr x25;
{ true && true }


proc sha256rnds2 (uint32 xmm0_0, uint32 xmm0_1,
                  uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                  uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                  uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov a0 src2_3; mov b0 src2_2; mov c0 src1_3; mov d0 src1_2;
mov e0 src2_1; mov f0 src2_0; mov g0 src1_1; mov h0 src1_0;
mov wk0 xmm0_0; mov wk1 xmm0_1;

(* round 1 *)
call Ch (e0, f0, g0, Ch);
call Sigma1 (e0, S1);
call Maj (a0, b0, c0, Maj);
call Sigma0 (a0, S0);
adds dc s0 Ch S1;
adds dc t0 wk0 h0;
adds dc u0 Maj S0;
adds dc st0 s0 t0;
adds dc a1 st0 u0;
mov b1 a0; mov c1 b0; mov d1 c0;
adds dc e1 st0 d0;
mov f1 e0; mov g1 f0; mov h1 g0;

(* round 2 *)
call Ch (e1, f1, g1, Ch);
call Sigma1 (e1, S1);
call Maj (a1, b1, c1, Maj);
call Sigma0 (a1, S0);
adds dc s1 Ch S1;
adds dc t1 wk1 h1;
adds dc u1 Maj S0;
adds dc st1 s1 t1;
adds dc a2 st1 u1;
mov b2 a1; mov c2 b1; mov d2 c1;
adds dc e2 st1 d1;
mov f2 e1; mov g2 f1; mov h2 g1;

mov dst_0 f2; mov dst_1 e2; mov dst_2 b2; mov dst_3 a2;
{ true && true }


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

(* inputs *)

join H A03 A02; join L A01 A00; join L0x55555555d068 H L;
join H A07 A06; join L A05 A04; join L0x55555555d06c H L;
join H A11 A10; join L A09 A08; join L0x55555555d070 H L;
join H A15 A14; join L A13 A12; join L0x55555555d074 H L;
join H A19 A18; join L A17 A16; join L0x55555555d078 H L;
join H A23 A22; join L A21 A20; join L0x55555555d07c H L;
join H A27 A26; join L A25 A24; join L0x55555555d080 H L;
join H A31 A30; join L A29 A28; join L0x55555555d084 H L;
join H A35 A34; join L A33 A32; join L0x55555555d088 H L;
join H A39 A38; join L A37 A36; join L0x55555555d08c H L;
join H A43 A42; join L A41 A40; join L0x55555555d090 H L;
join H A47 A46; join L A45 A44; join L0x55555555d094 H L;
join H A51 A50; join L A49 A48; join L0x55555555d098 H L;
join H A55 A54; join L A53 A52; join L0x55555555d09c H L;
join H A59 A58; join L A57 A56; join L0x55555555d0a0 H L;
join H A63 A62; join L A61 A60; join L0x55555555d0a4 H L;

(* hash values *)

mov L0x55555555d040 A0; mov L0x55555555d044 A1;
mov L0x55555555d048 A2; mov L0x55555555d04c A3;
mov L0x55555555d050 A4; mov L0x55555555d054 A5;
mov L0x55555555d058 A6; mov L0x55555555d05c A7;

(* nondets *)


nondet L0x55555555d0e4@uint32; nondet L0x55555555d0e8@uint32;
nondet L0x55555555d0ec@uint32; 

(* constants *)

mov L0x555555557000 0x00010203@uint32; mov L0x555555557004 0x04050607@uint32;
mov L0x555555557008 0x08090a0b@uint32; mov L0x55555555700c 0x0c0d0e0f@uint32;


(* k256 *)

mov L0x555555556e00 0x428a2f98@uint32; mov L0x555555556e04 0x71374491@uint32;
mov L0x555555556e08 0xb5c0fbcf@uint32; mov L0x555555556e0c 0xe9b5dba5@uint32;
mov L0x555555556e10 0x428a2f98@uint32; mov L0x555555556e14 0x71374491@uint32;
mov L0x555555556e18 0xb5c0fbcf@uint32; mov L0x555555556e1c 0xe9b5dba5@uint32;
mov L0x555555556e20 0x3956c25b@uint32; mov L0x555555556e24 0x59f111f1@uint32;
mov L0x555555556e28 0x923f82a4@uint32; mov L0x555555556e2c 0xab1c5ed5@uint32;
mov L0x555555556e30 0x3956c25b@uint32; mov L0x555555556e34 0x59f111f1@uint32;
mov L0x555555556e38 0x923f82a4@uint32; mov L0x555555556e3c 0xab1c5ed5@uint32;
mov L0x555555556e40 0xd807aa98@uint32; mov L0x555555556e44 0x12835b01@uint32;
mov L0x555555556e48 0x243185be@uint32; mov L0x555555556e4c 0x550c7dc3@uint32;
mov L0x555555556e50 0xd807aa98@uint32; mov L0x555555556e54 0x12835b01@uint32;
mov L0x555555556e58 0x243185be@uint32; mov L0x555555556e5c 0x550c7dc3@uint32;
mov L0x555555556e60 0x72be5d74@uint32; mov L0x555555556e64 0x80deb1fe@uint32;
mov L0x555555556e68 0x9bdc06a7@uint32; mov L0x555555556e6c 0xc19bf174@uint32;
mov L0x555555556e70 0x72be5d74@uint32; mov L0x555555556e74 0x80deb1fe@uint32;
mov L0x555555556e78 0x9bdc06a7@uint32; mov L0x555555556e7c 0xc19bf174@uint32;
mov L0x555555556e80 0xe49b69c1@uint32; mov L0x555555556e84 0xefbe4786@uint32;
mov L0x555555556e88 0x0fc19dc6@uint32; mov L0x555555556e8c 0x240ca1cc@uint32;
mov L0x555555556e90 0xe49b69c1@uint32; mov L0x555555556e94 0xefbe4786@uint32;
mov L0x555555556e98 0x0fc19dc6@uint32; mov L0x555555556e9c 0x240ca1cc@uint32;
mov L0x555555556ea0 0x2de92c6f@uint32; mov L0x555555556ea4 0x4a7484aa@uint32;
mov L0x555555556ea8 0x5cb0a9dc@uint32; mov L0x555555556eac 0x76f988da@uint32;
mov L0x555555556eb0 0x2de92c6f@uint32; mov L0x555555556eb4 0x4a7484aa@uint32;
mov L0x555555556eb8 0x5cb0a9dc@uint32; mov L0x555555556ebc 0x76f988da@uint32;
mov L0x555555556ec0 0x983e5152@uint32; mov L0x555555556ec4 0xa831c66d@uint32;
mov L0x555555556ec8 0xb00327c8@uint32; mov L0x555555556ecc 0xbf597fc7@uint32;
mov L0x555555556ed0 0x983e5152@uint32; mov L0x555555556ed4 0xa831c66d@uint32;
mov L0x555555556ed8 0xb00327c8@uint32; mov L0x555555556edc 0xbf597fc7@uint32;
mov L0x555555556ee0 0xc6e00bf3@uint32; mov L0x555555556ee4 0xd5a79147@uint32;
mov L0x555555556ee8 0x06ca6351@uint32; mov L0x555555556eec 0x14292967@uint32;
mov L0x555555556ef0 0xc6e00bf3@uint32; mov L0x555555556ef4 0xd5a79147@uint32;
mov L0x555555556ef8 0x06ca6351@uint32; mov L0x555555556efc 0x14292967@uint32;
mov L0x555555556f00 0x27b70a85@uint32; mov L0x555555556f04 0x2e1b2138@uint32;
mov L0x555555556f08 0x4d2c6dfc@uint32; mov L0x555555556f0c 0x53380d13@uint32;
mov L0x555555556f10 0x27b70a85@uint32; mov L0x555555556f14 0x2e1b2138@uint32;
mov L0x555555556f18 0x4d2c6dfc@uint32; mov L0x555555556f1c 0x53380d13@uint32;
mov L0x555555556f20 0x650a7354@uint32; mov L0x555555556f24 0x766a0abb@uint32;
mov L0x555555556f28 0x81c2c92e@uint32; mov L0x555555556f2c 0x92722c85@uint32;
mov L0x555555556f30 0x650a7354@uint32; mov L0x555555556f34 0x766a0abb@uint32;
mov L0x555555556f38 0x81c2c92e@uint32; mov L0x555555556f3c 0x92722c85@uint32;
mov L0x555555556f40 0xa2bfe8a1@uint32; mov L0x555555556f44 0xa81a664b@uint32;
mov L0x555555556f48 0xc24b8b70@uint32; mov L0x555555556f4c 0xc76c51a3@uint32;
mov L0x555555556f50 0xa2bfe8a1@uint32; mov L0x555555556f54 0xa81a664b@uint32;
mov L0x555555556f58 0xc24b8b70@uint32; mov L0x555555556f5c 0xc76c51a3@uint32;
mov L0x555555556f60 0xd192e819@uint32; mov L0x555555556f64 0xd6990624@uint32;
mov L0x555555556f68 0xf40e3585@uint32; mov L0x555555556f6c 0x106aa070@uint32;
mov L0x555555556f70 0xd192e819@uint32; mov L0x555555556f74 0xd6990624@uint32;
mov L0x555555556f78 0xf40e3585@uint32; mov L0x555555556f7c 0x106aa070@uint32;
mov L0x555555556f80 0x19a4c116@uint32; mov L0x555555556f84 0x1e376c08@uint32;
mov L0x555555556f88 0x2748774c@uint32; mov L0x555555556f8c 0x34b0bcb5@uint32;
mov L0x555555556f90 0x19a4c116@uint32; mov L0x555555556f94 0x1e376c08@uint32;
mov L0x555555556f98 0x2748774c@uint32; mov L0x555555556f9c 0x34b0bcb5@uint32;
mov L0x555555556fa0 0x391c0cb3@uint32; mov L0x555555556fa4 0x4ed8aa4a@uint32;
mov L0x555555556fa8 0x5b9cca4f@uint32; mov L0x555555556fac 0x682e6ff3@uint32;
mov L0x555555556fb0 0x391c0cb3@uint32; mov L0x555555556fb4 0x4ed8aa4a@uint32;
mov L0x555555556fb8 0x5b9cca4f@uint32; mov L0x555555556fbc 0x682e6ff3@uint32;
mov L0x555555556fc0 0x748f82ee@uint32; mov L0x555555556fc4 0x78a5636f@uint32;
mov L0x555555556fc8 0x84c87814@uint32; mov L0x555555556fcc 0x8cc70208@uint32;
mov L0x555555556fd0 0x748f82ee@uint32; mov L0x555555556fd4 0x78a5636f@uint32;
mov L0x555555556fd8 0x84c87814@uint32; mov L0x555555556fdc 0x8cc70208@uint32;
mov L0x555555556fe0 0x90befffa@uint32; mov L0x555555556fe4 0xa4506ceb@uint32;
mov L0x555555556fe8 0xbef9a3f7@uint32; mov L0x555555556fec 0xc67178f2@uint32;
mov L0x555555556ff0 0x90befffa@uint32; mov L0x555555556ff4 0xa4506ceb@uint32;
mov L0x555555556ff8 0xbef9a3f7@uint32; mov L0x555555556ffc 0xc67178f2@uint32;


(* #! -> SP = 0x7fffffffd728 *)
#! 0x7fffffffd728 = 0x7fffffffd728;
(* lea    0x74dd(%rip),%r11        # 0x55555555d0e4 <OPENSSL_ia32cap_P>#! PC = 0x555555555c00 *)
(* lea 0x74dd(%rip), %r11 *)
nop;
(* mov    (%r11),%r9d                              #! EA = L0x55555555d0e4; Value = 0x4ff8e3bfefebffff; PC = 0x555555555c07 *)
mov r9d L0x55555555d0e4;
(* mov    0x4(%r11),%r10d                          #! EA = L0x55555555d0e8; Value = 0x2294e2874ff8e3bf; PC = 0x555555555c0a *)
mov r10d L0x55555555d0e8;
(* mov    0x8(%r11),%r11d                          #! EA = L0x55555555d0ec; Value = 0x404000042294e287; PC = 0x555555555c0e *)
mov r11d L0x55555555d0ec;
(* test   $0x20000000,%r11d                        #! PC = 0x555555555c12 *)
(* test 0x20000000, r11d *)
nop;
(* #jne    0x5555555570c0 <sha256_block_data_order_shaext>#! PC = 0x555555555c19 *)
#jne    0x5555555570c0 <sha256_block_data_order_shaext>#! 0x555555555c19 = 0x555555555c19;
(* lea    -0x247(%rip),%rcx        # 0x555555556e80 <K256+128>#! PC = 0x5555555570c0 *)
(* lea -0x247(%rip), %rcx *)
nop;
(* movdqu (%rdi),%xmm1                             #! EA = L0x55555555d040; Value = 0xbb67ae856a09e667; PC = 0x5555555570c7 *)
mov xmm1_0 L0x55555555d040; mov xmm1_1 L0x55555555d044;
mov xmm1_2 L0x55555555d048; mov xmm1_3 L0x55555555d04c;
(* movdqu 0x10(%rdi),%xmm2                         #! EA = L0x55555555d050; Value = 0x9b05688c510e527f; PC = 0x5555555570cb *)
mov xmm2_0 L0x55555555d050; mov xmm2_1 L0x55555555d054;
mov xmm2_2 L0x55555555d058; mov xmm2_3 L0x55555555d05c;
(* movdqa 0x180(%rcx),%xmm7                        #! EA = L0x555555557000; Value = 0x0405060700010203; PC = 0x5555555570d0 *)
mov xmm7_0 L0x555555557000; mov xmm7_1 L0x555555557004;
mov xmm7_2 L0x555555557008; mov xmm7_3 L0x55555555700c;
(* pshufd $0x1b,%xmm1,%xmm0                        #! PC = 0x5555555570d8 *)
mov sh0 xmm1_3; mov sh1 xmm1_2; mov sh2 xmm1_1; mov sh3 xmm1_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x5555555570dd *)
mov sh0 xmm1_1; mov sh1 xmm1_0; mov sh2 xmm1_3; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* pshufd $0x1b,%xmm2,%xmm2                        #! PC = 0x5555555570e2 *)
mov sh0 xmm2_3; mov sh1 xmm2_2; mov sh2 xmm2_1; mov sh3 xmm2_0;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* movdqa %xmm7,%xmm8                              #! PC = 0x5555555570e7 *)
mov xmm8_0 xmm7_0; mov xmm8_1 xmm7_1;
mov xmm8_2 xmm7_2; mov xmm8_3 xmm7_3;
(* palignr $0x8,%xmm2,%xmm1                        #! PC = 0x5555555570ec *)
mov a0 xmm2_2; mov a1 xmm2_3; mov a2 xmm1_0; mov a3 xmm1_1;
mov xmm1_0 a0; mov xmm1_1 a1; mov xmm1_2 a2; mov xmm1_3 a3;
(* punpcklqdq %xmm0,%xmm2                          #! PC = 0x5555555570f2 *)
mov p0 xmm2_0; mov p1 xmm2_1; mov p2 xmm0_0; mov p3 xmm0_1;
mov xmm2_0 p0; mov xmm2_1 p1; mov xmm2_2 p2; mov xmm2_3 p3;
(* #jmp    0x555555557100 <sha256_block_data_order_shaext+64>#! PC = 0x5555555570f6 *)
#jmp    0x555555557100 <sha256_block_data_order_shaext+64>#! 0x5555555570f6 = 0x5555555570f6;
(* movdqu (%rsi),%xmm3                             #! EA = L0x55555555d068; Value = 0x0706050403020100; PC = 0x555555557100 *)
mov xmm3_0 L0x55555555d068; mov xmm3_1 L0x55555555d06c;
mov xmm3_2 L0x55555555d070; mov xmm3_3 L0x55555555d074;
(* movdqu 0x10(%rsi),%xmm4                         #! EA = L0x55555555d078; Value = 0x0000000000000080; PC = 0x555555557104 *)
mov xmm4_0 L0x55555555d078; mov xmm4_1 L0x55555555d07c;
mov xmm4_2 L0x55555555d080; mov xmm4_3 L0x55555555d084;
(* movdqu 0x20(%rsi),%xmm5                         #! EA = L0x55555555d088; Value = 0x0000000000000000; PC = 0x555555557109 *)
mov xmm5_0 L0x55555555d088; mov xmm5_1 L0x55555555d08c;
mov xmm5_2 L0x55555555d090; mov xmm5_3 L0x55555555d094;
(* pshufb %xmm7,%xmm3                              #! PC = 0x55555555710e *)
assert true &&
       and [xmm7_0 = 0x00010203@32, xmm7_1 = 0x04050607@32,
            xmm7_2 = 0x08090a0b@32, xmm7_3 = 0x0c0d0e0f@32];
spl xfe xdc xmm3_3 16;spl xba x98 xmm3_2 16;spl x76 x54 xmm3_1 16;spl x32 x10 xmm3_0 16;
spl xf xe xfe 8; spl xd xc xdc 8; spl xb xa xba 8; spl x9 x8 x98 8;
spl x7 x6 x76 8; spl x5 x4 x54 8; spl x3 x2 x32 8; spl x1 x0 x10 8;
join sfe xc xd; join sdc xe xf; join sba x8 x9; join s98 xa xb;
join s76 x4 x5; join s54 x6 x7; join s32 x0 x1; join s10 x2 x3;
join xmm3_3 sfe sdc; join xmm3_2 sba s98; join xmm3_1 s76 s54; join xmm3_0 s32 s10;
(* movdqu 0x30(%rsi),%xmm6                         #! EA = L0x55555555d098; Value = 0x0000000000000000; PC = 0x555555557113 *)
mov xmm6_0 L0x55555555d098; mov xmm6_1 L0x55555555d09c;
mov xmm6_2 L0x55555555d0a0; mov xmm6_3 L0x55555555d0a4;
(* movdqa -0x80(%rcx),%xmm0                        #! EA = L0x555555556e00; Value = 0x71374491428a2f98; PC = 0x555555557118 *)
mov xmm0_0 L0x555555556e00; mov xmm0_1 L0x555555556e04;
mov xmm0_2 L0x555555556e08; mov xmm0_3 L0x555555556e0c;
(* paddd  %xmm3,%xmm0                              #! PC = 0x55555555711d *)
adds dc xmm0_0 xmm0_0 xmm3_0; adds dc xmm0_1 xmm0_1 xmm3_1;
adds dc xmm0_2 xmm0_2 xmm3_2; adds dc xmm0_3 xmm0_3 xmm3_3;
(* pshufb %xmm7,%xmm4                              #! PC = 0x555555557121 *)
assert true &&
       and [xmm7_0 = 0x00010203@32, xmm7_1 = 0x04050607@32,
            xmm7_2 = 0x08090a0b@32, xmm7_3 = 0x0c0d0e0f@32];
spl xfe xdc xmm4_3 16;spl xba x98 xmm4_2 16;spl x76 x54 xmm4_1 16;spl x32 x10 xmm4_0 16;
spl xf xe xfe 8; spl xd xc xdc 8; spl xb xa xba 8; spl x9 x8 x98 8;
spl x7 x6 x76 8; spl x5 x4 x54 8; spl x3 x2 x32 8; spl x1 x0 x10 8;
join sfe xc xd; join sdc xe xf; join sba x8 x9; join s98 xa xb;
join s76 x4 x5; join s54 x6 x7; join s32 x0 x1; join s10 x2 x3;
join xmm4_3 sfe sdc; join xmm4_2 sba s98; join xmm4_1 s76 s54; join xmm4_0 s32 s10;
(* movdqa %xmm2,%xmm10                             #! PC = 0x555555557126 *)
mov xmm10_0 xmm2_0; mov xmm10_1 xmm2_1;
mov xmm10_2 xmm2_2; mov xmm10_3 xmm2_3;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555712b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x55555555712f *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm1,%xmm9                              #! PC = 0x555555557135 *)
mov xmm9_0 xmm1_0; mov xmm9_1 xmm1_1;
mov xmm9_2 xmm1_2; mov xmm9_3 xmm1_3;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555713a *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa -0x60(%rcx),%xmm0                        #! EA = L0x555555556e20; Value = 0x59f111f13956c25b; PC = 0x55555555713e *)
mov xmm0_0 L0x555555556e20; mov xmm0_1 L0x555555556e24;
mov xmm0_2 L0x555555556e28; mov xmm0_3 L0x555555556e2c;
(* paddd  %xmm4,%xmm0                              #! PC = 0x555555557143 *)
adds dc xmm0_0 xmm0_0 xmm4_0; adds dc xmm0_1 xmm0_1 xmm4_1;
adds dc xmm0_2 xmm0_2 xmm4_2; adds dc xmm0_3 xmm0_3 xmm4_3;
(* pshufb %xmm7,%xmm5                              #! PC = 0x555555557147 *)
assert true &&
       and [xmm7_0 = 0x00010203@32, xmm7_1 = 0x04050607@32,
            xmm7_2 = 0x08090a0b@32, xmm7_3 = 0x0c0d0e0f@32];
spl xfe xdc xmm5_3 16;spl xba x98 xmm5_2 16;spl x76 x54 xmm5_1 16;spl x32 x10 xmm5_0 16;
spl xf xe xfe 8; spl xd xc xdc 8; spl xb xa xba 8; spl x9 x8 x98 8;
spl x7 x6 x76 8; spl x5 x4 x54 8; spl x3 x2 x32 8; spl x1 x0 x10 8;
join sfe xc xd; join sdc xe xf; join sba x8 x9; join s98 xa xb;
join s76 x4 x5; join s54 x6 x7; join s32 x0 x1; join s10 x2 x3;
join xmm5_3 sfe sdc; join xmm5_2 sba s98; join xmm5_1 s76 s54; join xmm5_0 s32 s10;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555714c *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557150 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x555555557155 *)
(* lea $1c(%rip), %rsi *)
nop;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x555555557159 *)
call sha256msg1 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555715d *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa -0x40(%rcx),%xmm0                        #! EA = L0x555555556e40; Value = 0x12835b01d807aa98; PC = 0x555555557161 *)
mov xmm0_0 L0x555555556e40; mov xmm0_1 L0x555555556e44;
mov xmm0_2 L0x555555556e48; mov xmm0_3 L0x555555556e4c;
(* paddd  %xmm5,%xmm0                              #! PC = 0x555555557166 *)
adds dc xmm0_0 xmm0_0 xmm5_0; adds dc xmm0_1 xmm0_1 xmm5_1;
adds dc xmm0_2 xmm0_2 xmm5_2; adds dc xmm0_3 xmm0_3 xmm5_3;
(* pshufb %xmm7,%xmm6                              #! PC = 0x55555555716a *)
assert true &&
       and [xmm7_0 = 0x00010203@32, xmm7_1 = 0x04050607@32,
            xmm7_2 = 0x08090a0b@32, xmm7_3 = 0x0c0d0e0f@32];
spl xfe xdc xmm6_3 16;spl xba x98 xmm6_2 16;spl x76 x54 xmm6_1 16;spl x32 x10 xmm6_0 16;
spl xf xe xfe 8; spl xd xc xdc 8; spl xb xa xba 8; spl x9 x8 x98 8;
spl x7 x6 x76 8; spl x5 x4 x54 8; spl x3 x2 x32 8; spl x1 x0 x10 8;
join sfe xc xd; join sdc xe xf; join sba x8 x9; join s98 xa xb;
join s76 x4 x5; join s54 x6 x7; join s32 x0 x1; join s10 x2 x3;
join xmm6_3 sfe sdc; join xmm6_2 sba s98; join xmm6_1 s76 s54; join xmm6_0 s32 s10;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555716f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557173 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm6,%xmm7                              #! PC = 0x555555557178 *)
mov xmm7_0 xmm6_0; mov xmm7_1 xmm6_1;
mov xmm7_2 xmm6_2; mov xmm7_3 xmm6_3;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x55555555717c *)
mov a0 xmm5_1; mov a1 xmm5_2; mov a2 xmm5_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm3                              #! PC = 0x555555557183 *)
adds dc xmm3_0 xmm3_0 xmm7_0; adds dc xmm3_1 xmm3_1 xmm7_1;
adds dc xmm3_2 xmm3_2 xmm7_2; adds dc xmm3_3 xmm3_3 xmm7_3;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x555555557187 *)
call sha256msg1 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555718b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa -0x20(%rcx),%xmm0                        #! EA = L0x555555556e60; Value = 0x80deb1fe72be5d74; PC = 0x55555555718f *)
mov xmm0_0 L0x555555556e60; mov xmm0_1 L0x555555556e64;
mov xmm0_2 L0x555555556e68; mov xmm0_3 L0x555555556e6c;
(* paddd  %xmm6,%xmm0                              #! PC = 0x555555557194 *)
adds dc xmm0_0 xmm0_0 xmm6_0; adds dc xmm0_1 xmm0_1 xmm6_1;
adds dc xmm0_2 xmm0_2 xmm6_2; adds dc xmm0_3 xmm0_3 xmm6_3;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x555555557198 *)
call sha256msg2 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555719c *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555571a0 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm3,%xmm7                              #! PC = 0x5555555571a5 *)
mov xmm7_0 xmm3_0; mov xmm7_1 xmm3_1;
mov xmm7_2 xmm3_2; mov xmm7_3 xmm3_3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x5555555571a9 *)
mov a0 xmm6_1; mov a1 xmm6_2; mov a2 xmm6_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm4                              #! PC = 0x5555555571b0 *)
adds dc xmm4_0 xmm4_0 xmm7_0; adds dc xmm4_1 xmm4_1 xmm7_1;
adds dc xmm4_2 xmm4_2 xmm7_2; adds dc xmm4_3 xmm4_3 xmm7_3;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x5555555571b4 *)
call sha256msg1 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555571b8 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa (%rcx),%xmm0                             #! EA = L0x555555556e80; Value = 0xefbe4786e49b69c1; PC = 0x5555555571bc *)
mov xmm0_0 L0x555555556e80; mov xmm0_1 L0x555555556e84;
mov xmm0_2 L0x555555556e88; mov xmm0_3 L0x555555556e8c;
(* paddd  %xmm3,%xmm0                              #! PC = 0x5555555571c0 *)
adds dc xmm0_0 xmm0_0 xmm3_0; adds dc xmm0_1 xmm0_1 xmm3_1;
adds dc xmm0_2 xmm0_2 xmm3_2; adds dc xmm0_3 xmm0_3 xmm3_3;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x5555555571c4 *)
call sha256msg2 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x5555555571c8 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555571cc *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm4,%xmm7                              #! PC = 0x5555555571d1 *)
mov xmm7_0 xmm4_0; mov xmm7_1 xmm4_1;
mov xmm7_2 xmm4_2; mov xmm7_3 xmm4_3;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x5555555571d5 *)
mov a0 xmm3_1; mov a1 xmm3_2; mov a2 xmm3_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm5                              #! PC = 0x5555555571dc *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x5555555571e0 *)
call sha256msg1 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555571e4 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x20(%rcx),%xmm0                         #! EA = L0x555555556ea0; Value = 0x4a7484aa2de92c6f; PC = 0x5555555571e8 *)
mov xmm0_0 L0x555555556ea0; mov xmm0_1 L0x555555556ea4;
mov xmm0_2 L0x555555556ea8; mov xmm0_3 L0x555555556eac;
(* paddd  %xmm4,%xmm0                              #! PC = 0x5555555571ed *)
adds dc xmm0_0 xmm0_0 xmm4_0; adds dc xmm0_1 xmm0_1 xmm4_1;
adds dc xmm0_2 xmm0_2 xmm4_2; adds dc xmm0_3 xmm0_3 xmm4_3;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x5555555571f1 *)
call sha256msg2 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x5555555571f5 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555571f9 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm5,%xmm7                              #! PC = 0x5555555571fe *)
mov xmm7_0 xmm5_0; mov xmm7_1 xmm5_1;
mov xmm7_2 xmm5_2; mov xmm7_3 xmm5_3;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x555555557202 *)
mov a0 xmm4_1; mov a1 xmm4_2; mov a2 xmm4_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm6                              #! PC = 0x555555557209 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x55555555720d *)
call sha256msg1 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x555555557211 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x40(%rcx),%xmm0                         #! EA = L0x555555556ec0; Value = 0xa831c66d983e5152; PC = 0x555555557215 *)
mov xmm0_0 L0x555555556ec0; mov xmm0_1 L0x555555556ec4;
mov xmm0_2 L0x555555556ec8; mov xmm0_3 L0x555555556ecc;
(* paddd  %xmm5,%xmm0                              #! PC = 0x55555555721a *)
adds dc xmm0_0 xmm0_0 xmm5_0; adds dc xmm0_1 xmm0_1 xmm5_1;
adds dc xmm0_2 xmm0_2 xmm5_2; adds dc xmm0_3 xmm0_3 xmm5_3;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x55555555721e *)
call sha256msg2 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x555555557222 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557226 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm6,%xmm7                              #! PC = 0x55555555722b *)
mov xmm7_0 xmm6_0; mov xmm7_1 xmm6_1;
mov xmm7_2 xmm6_2; mov xmm7_3 xmm6_3;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x55555555722f *)
mov a0 xmm5_1; mov a1 xmm5_2; mov a2 xmm5_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm3                              #! PC = 0x555555557236 *)
adds dc xmm3_0 xmm3_0 xmm7_0; adds dc xmm3_1 xmm3_1 xmm7_1;
adds dc xmm3_2 xmm3_2 xmm7_2; adds dc xmm3_3 xmm3_3 xmm7_3;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x55555555723a *)
call sha256msg1 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555723e *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x60(%rcx),%xmm0                         #! EA = L0x555555556ee0; Value = 0xd5a79147c6e00bf3; PC = 0x555555557242 *)
mov xmm0_0 L0x555555556ee0; mov xmm0_1 L0x555555556ee4;
mov xmm0_2 L0x555555556ee8; mov xmm0_3 L0x555555556eec;
(* paddd  %xmm6,%xmm0                              #! PC = 0x555555557247 *)
adds dc xmm0_0 xmm0_0 xmm6_0; adds dc xmm0_1 xmm0_1 xmm6_1;
adds dc xmm0_2 xmm0_2 xmm6_2; adds dc xmm0_3 xmm0_3 xmm6_3;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x55555555724b *)
call sha256msg2 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555724f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557253 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm3,%xmm7                              #! PC = 0x555555557258 *)
mov xmm7_0 xmm3_0; mov xmm7_1 xmm3_1;
mov xmm7_2 xmm3_2; mov xmm7_3 xmm3_3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x55555555725c *)
mov a0 xmm6_1; mov a1 xmm6_2; mov a2 xmm6_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm4                              #! PC = 0x555555557263 *)
adds dc xmm4_0 xmm4_0 xmm7_0; adds dc xmm4_1 xmm4_1 xmm7_1;
adds dc xmm4_2 xmm4_2 xmm7_2; adds dc xmm4_3 xmm4_3 xmm7_3;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x555555557267 *)
call sha256msg1 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555726b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x80(%rcx),%xmm0                         #! EA = L0x555555556f00; Value = 0x2e1b213827b70a85; PC = 0x55555555726f *)
mov xmm0_0 L0x555555556f00; mov xmm0_1 L0x555555556f04;
mov xmm0_2 L0x555555556f08; mov xmm0_3 L0x555555556f0c;
(* paddd  %xmm3,%xmm0                              #! PC = 0x555555557277 *)
adds dc xmm0_0 xmm0_0 xmm3_0; adds dc xmm0_1 xmm0_1 xmm3_1;
adds dc xmm0_2 xmm0_2 xmm3_2; adds dc xmm0_3 xmm0_3 xmm3_3;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x55555555727b *)
call sha256msg2 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555727f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557283 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm4,%xmm7                              #! PC = 0x555555557288 *)
mov xmm7_0 xmm4_0; mov xmm7_1 xmm4_1;
mov xmm7_2 xmm4_2; mov xmm7_3 xmm4_3;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x55555555728c *)
mov a0 xmm3_1; mov a1 xmm3_2; mov a2 xmm3_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm5                              #! PC = 0x555555557293 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x555555557297 *)
call sha256msg1 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555729b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0xa0(%rcx),%xmm0                         #! EA = L0x555555556f20; Value = 0x766a0abb650a7354; PC = 0x55555555729f *)
mov xmm0_0 L0x555555556f20; mov xmm0_1 L0x555555556f24;
mov xmm0_2 L0x555555556f28; mov xmm0_3 L0x555555556f2c;
(* paddd  %xmm4,%xmm0                              #! PC = 0x5555555572a7 *)
adds dc xmm0_0 xmm0_0 xmm4_0; adds dc xmm0_1 xmm0_1 xmm4_1;
adds dc xmm0_2 xmm0_2 xmm4_2; adds dc xmm0_3 xmm0_3 xmm4_3;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x5555555572ab *)
call sha256msg2 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x5555555572af *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555572b3 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm5,%xmm7                              #! PC = 0x5555555572b8 *)
mov xmm7_0 xmm5_0; mov xmm7_1 xmm5_1;
mov xmm7_2 xmm5_2; mov xmm7_3 xmm5_3;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x5555555572bc *)
mov a0 xmm4_1; mov a1 xmm4_2; mov a2 xmm4_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm6                              #! PC = 0x5555555572c3 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* sha256msg1 %xmm4,%xmm3                          #! PC = 0x5555555572c7 *)
call sha256msg1 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555572cb *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0xc0(%rcx),%xmm0                         #! EA = L0x555555556f40; Value = 0xa81a664ba2bfe8a1; PC = 0x5555555572cf *)
mov xmm0_0 L0x555555556f40; mov xmm0_1 L0x555555556f44;
mov xmm0_2 L0x555555556f48; mov xmm0_3 L0x555555556f4c;
(* paddd  %xmm5,%xmm0                              #! PC = 0x5555555572d7 *)
adds dc xmm0_0 xmm0_0 xmm5_0; adds dc xmm0_1 xmm0_1 xmm5_1;
adds dc xmm0_2 xmm0_2 xmm5_2; adds dc xmm0_3 xmm0_3 xmm5_3;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x5555555572db *)
call sha256msg2 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x5555555572df *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555572e3 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm6,%xmm7                              #! PC = 0x5555555572e8 *)
mov xmm7_0 xmm6_0; mov xmm7_1 xmm6_1;
mov xmm7_2 xmm6_2; mov xmm7_3 xmm6_3;
(* palignr $0x4,%xmm5,%xmm7                        #! PC = 0x5555555572ec *)
mov a0 xmm5_1; mov a1 xmm5_2; mov a2 xmm5_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm3                              #! PC = 0x5555555572f3 *)
adds dc xmm3_0 xmm3_0 xmm7_0; adds dc xmm3_1 xmm3_1 xmm7_1;
adds dc xmm3_2 xmm3_2 xmm7_2; adds dc xmm3_3 xmm3_3 xmm7_3;
(* sha256msg1 %xmm5,%xmm4                          #! PC = 0x5555555572f7 *)
call sha256msg1 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555572fb *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0xe0(%rcx),%xmm0                         #! EA = L0x555555556f60; Value = 0xd6990624d192e819; PC = 0x5555555572ff *)
mov xmm0_0 L0x555555556f60; mov xmm0_1 L0x555555556f64;
mov xmm0_2 L0x555555556f68; mov xmm0_3 L0x555555556f6c;
(* paddd  %xmm6,%xmm0                              #! PC = 0x555555557307 *)
adds dc xmm0_0 xmm0_0 xmm6_0; adds dc xmm0_1 xmm0_1 xmm6_1;
adds dc xmm0_2 xmm0_2 xmm6_2; adds dc xmm0_3 xmm0_3 xmm6_3;
(* sha256msg2 %xmm6,%xmm3                          #! PC = 0x55555555730b *)
call sha256msg2 (xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555730f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557313 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm3,%xmm7                              #! PC = 0x555555557318 *)
mov xmm7_0 xmm3_0; mov xmm7_1 xmm3_1;
mov xmm7_2 xmm3_2; mov xmm7_3 xmm3_3;
(* palignr $0x4,%xmm6,%xmm7                        #! PC = 0x55555555731c *)
mov a0 xmm6_1; mov a1 xmm6_2; mov a2 xmm6_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm4                              #! PC = 0x555555557323 *)
adds dc xmm4_0 xmm4_0 xmm7_0; adds dc xmm4_1 xmm4_1 xmm7_1;
adds dc xmm4_2 xmm4_2 xmm7_2; adds dc xmm4_3 xmm4_3 xmm7_3;
(* sha256msg1 %xmm6,%xmm5                          #! PC = 0x555555557327 *)
call sha256msg1 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555732b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x100(%rcx),%xmm0                        #! EA = L0x555555556f80; Value = 0x1e376c0819a4c116; PC = 0x55555555732f *)
mov xmm0_0 L0x555555556f80; mov xmm0_1 L0x555555556f84;
mov xmm0_2 L0x555555556f88; mov xmm0_3 L0x555555556f8c;
(* paddd  %xmm3,%xmm0                              #! PC = 0x555555557337 *)
adds dc xmm0_0 xmm0_0 xmm3_0; adds dc xmm0_1 xmm0_1 xmm3_1;
adds dc xmm0_2 xmm0_2 xmm3_2; adds dc xmm0_3 xmm0_3 xmm3_3;
(* sha256msg2 %xmm3,%xmm4                          #! PC = 0x55555555733b *)
call sha256msg2 (xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555733f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557343 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm4,%xmm7                              #! PC = 0x555555557348 *)
mov xmm7_0 xmm4_0; mov xmm7_1 xmm4_1;
mov xmm7_2 xmm4_2; mov xmm7_3 xmm4_3;
(* palignr $0x4,%xmm3,%xmm7                        #! PC = 0x55555555734c *)
mov a0 xmm3_1; mov a1 xmm3_2; mov a2 xmm3_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* paddd  %xmm7,%xmm5                              #! PC = 0x555555557353 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* sha256msg1 %xmm3,%xmm6                          #! PC = 0x555555557357 *)
call sha256msg1 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm3_0, xmm3_1, xmm3_2, xmm3_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x55555555735b *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x120(%rcx),%xmm0                        #! EA = L0x555555556fa0; Value = 0x4ed8aa4a391c0cb3; PC = 0x55555555735f *)
mov xmm0_0 L0x555555556fa0; mov xmm0_1 L0x555555556fa4;
mov xmm0_2 L0x555555556fa8; mov xmm0_3 L0x555555556fac;
(* paddd  %xmm4,%xmm0                              #! PC = 0x555555557367 *)
adds dc xmm0_0 xmm0_0 xmm4_0; adds dc xmm0_1 xmm0_1 xmm4_1;
adds dc xmm0_2 xmm0_2 xmm4_2; adds dc xmm0_3 xmm0_3 xmm4_3;
(* sha256msg2 %xmm4,%xmm5                          #! PC = 0x55555555736b *)
call sha256msg2 (xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm4_0, xmm4_1, xmm4_2, xmm4_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3);
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x55555555736f *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x555555557373 *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* movdqa %xmm5,%xmm7                              #! PC = 0x555555557378 *)
mov xmm7_0 xmm5_0; mov xmm7_1 xmm5_1;
mov xmm7_2 xmm5_2; mov xmm7_3 xmm5_3;
(* palignr $0x4,%xmm4,%xmm7                        #! PC = 0x55555555737c *)
mov a0 xmm4_1; mov a1 xmm4_2; mov a2 xmm4_3; mov a3 xmm7_0;
mov xmm7_0 a0; mov xmm7_1 a1; mov xmm7_2 a2; mov xmm7_3 a3;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x555555557382 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* paddd  %xmm7,%xmm6                              #! PC = 0x555555557386 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* movdqa 0x140(%rcx),%xmm0                        #! EA = L0x555555556fc0; Value = 0x78a5636f748f82ee; PC = 0x55555555738a *)
mov xmm0_0 L0x555555556fc0; mov xmm0_1 L0x555555556fc4;
mov xmm0_2 L0x555555556fc8; mov xmm0_3 L0x555555556fcc;
(* paddd  %xmm5,%xmm0                              #! PC = 0x555555557392 *)
adds dc xmm0_0 xmm0_0 xmm5_0; adds dc xmm0_1 xmm0_1 xmm5_1;
adds dc xmm0_2 xmm0_2 xmm5_2; adds dc xmm0_3 xmm0_3 xmm5_3;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x555555557396 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x55555555739a *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* sha256msg2 %xmm5,%xmm6                          #! PC = 0x55555555739f *)
call sha256msg2 (xmm6_0, xmm6_1, xmm6_2, xmm6_3,
                 xmm5_0, xmm5_1, xmm5_2, xmm5_3,
                 xmm6_0, xmm6_1, xmm6_2, xmm6_3);
(* movdqa %xmm8,%xmm7                              #! PC = 0x5555555573a3 *)
mov xmm7_0 xmm8_0; mov xmm7_1 xmm8_1;
mov xmm7_2 xmm8_2; mov xmm7_3 xmm8_3;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555573a8 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* movdqa 0x160(%rcx),%xmm0                        #! EA = L0x555555556fe0; Value = 0xa4506ceb90befffa; PC = 0x5555555573ac *)
mov xmm0_0 L0x555555556fe0; mov xmm0_1 L0x555555556fe4;
mov xmm0_2 L0x555555556fe8; mov xmm0_3 L0x555555556fec;
(* paddd  %xmm6,%xmm0                              #! PC = 0x5555555573b4 *)
adds dc xmm0_0 xmm0_0 xmm6_0; adds dc xmm0_1 xmm0_1 xmm6_1;
adds dc xmm0_2 xmm0_2 xmm6_2; adds dc xmm0_3 xmm0_3 xmm6_3;
(* sha256rnds2 %xmm0,%xmm1,%xmm2                   #! PC = 0x5555555573b9 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3);
(* pshufd $0xe,%xmm0,%xmm0                         #! PC = 0x5555555573bd *)
mov sh0 xmm0_2; mov sh1 xmm0_3; mov sh2 xmm0_0; mov sh3 xmm0_0;
mov xmm0_0 sh0; mov xmm0_1 sh1; mov xmm0_2 sh2; mov xmm0_3 sh3;
(* dec    %rdx                                     #! PC = 0x5555555573c2 *)
(* dec %rdx *)
nop;
(* sha256rnds2 %xmm0,%xmm2,%xmm1                   #! PC = 0x5555555573c6 *)
call sha256rnds2 (xmm0_0, xmm0_1,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3,
                  xmm2_0, xmm2_1, xmm2_2, xmm2_3,
                  xmm1_0, xmm1_1, xmm1_2, xmm1_3);
(* paddd  %xmm10,%xmm2                             #! PC = 0x5555555573ca *)
adds dc xmm2_0 xmm2_0 xmm10_0; adds dc xmm2_1 xmm2_1 xmm10_1;
adds dc xmm2_2 xmm2_2 xmm10_2; adds dc xmm2_3 xmm2_3 xmm10_3;
(* paddd  %xmm9,%xmm1                              #! PC = 0x5555555573cf *)
adds dc xmm1_0 xmm1_0 xmm9_0; adds dc xmm1_1 xmm1_1 xmm9_1;
adds dc xmm1_2 xmm1_2 xmm9_2; adds dc xmm1_3 xmm1_3 xmm9_3;
(* #jne    0x555555557100 <sha256_block_data_order_shaext+64>#! PC = 0x5555555573d4 *)
#jne    0x555555557100 <sha256_block_data_order_shaext+64>#! 0x5555555573d4 = 0x5555555573d4;
(* pshufd $0xb1,%xmm2,%xmm2                        #! PC = 0x5555555573da *)
mov sh0 xmm2_1; mov sh1 xmm2_0; mov sh2 xmm2_3; mov sh3 xmm2_2;
mov xmm2_0 sh0; mov xmm2_1 sh1; mov xmm2_2 sh2; mov xmm2_3 sh3;
(* pshufd $0x1b,%xmm1,%xmm7                        #! PC = 0x5555555573df *)
mov sh0 xmm1_3; mov sh1 xmm1_2; mov sh2 xmm1_1; mov sh3 xmm1_0;
mov xmm7_0 sh0; mov xmm7_1 sh1; mov xmm7_2 sh2; mov xmm7_3 sh3;
(* pshufd $0xb1,%xmm1,%xmm1                        #! PC = 0x5555555573e4 *)
mov sh0 xmm1_1; mov sh1 xmm1_0; mov sh2 xmm1_3; mov sh3 xmm1_2;
mov xmm1_0 sh0; mov xmm1_1 sh1; mov xmm1_2 sh2; mov xmm1_3 sh3;
(* punpckhqdq %xmm2,%xmm1                          #! PC = 0x5555555573e9 *)
mov p0 xmm1_2; mov p1 xmm1_3; mov p2 xmm2_2; mov p3 xmm2_3;
mov xmm1_0 p0; mov xmm1_1 p1; mov xmm1_2 p2; mov xmm1_3 p3;
(* palignr $0x8,%xmm7,%xmm2                        #! PC = 0x5555555573ed *)
mov a0 xmm7_2; mov a1 xmm7_3; mov a2 xmm2_0; mov a3 xmm2_1;
mov xmm2_0 a0; mov xmm2_1 a1; mov xmm2_2 a2; mov xmm2_3 a3;
(* movdqu %xmm1,(%rdi)                             #! EA = L0x55555555d040; PC = 0x5555555573f3 *)
mov L0x55555555d040 xmm1_0; mov L0x55555555d044 xmm1_1;
mov L0x55555555d048 xmm1_2; mov L0x55555555d04c xmm1_3;
(* movdqu %xmm2,0x10(%rdi)                         #! EA = L0x55555555d050; PC = 0x5555555573f7 *)
mov L0x55555555d050 xmm2_0; mov L0x55555555d054 xmm2_1;
mov L0x55555555d058 xmm2_2; mov L0x55555555d05c xmm2_3;
(* #! <- SP = 0x7fffffffd728 *)
#! 0x7fffffffd728 = 0x7fffffffd728;
(* #repz ret                                       #! PC = 0x5555555573fc *)
#repz ret                                       #! 0x5555555573fc = 0x5555555573fc;

(* outputs *)

mov a0 L0x55555555d040; mov a1 L0x55555555d044;
mov a2 L0x55555555d048; mov a3 L0x55555555d04c;
mov a4 L0x55555555d050; mov a5 L0x55555555d054;
mov a6 L0x55555555d058; mov a7 L0x55555555d05c;

{
  true
  &&
  true
}

