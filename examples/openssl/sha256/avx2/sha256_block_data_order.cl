(* quine: ~/Work/code/cryptoline/_build/default/cv_cec.exe -v -ov a0,a1,a2,a3,a4,a5,a6,a7 sha256_block_data_order.cl ../cc/sha256_block_data_order.cl
Parsing CryptoLine file:                [OK]            0.038075 seconds
Checking well-formedness:               [OK]            0.014155 seconds
Parsing CryptoLine file:                [OK]            0.025318 seconds
Checking well-formedness:               [OK]            0.003951 seconds
Equivalence of output group #0:         [OK]            3085.058037 seconds
Final result:                           [OK]            3085.741340 seconds
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
uint8 A60, uint8 A61, uint8 A62, uint8 A63
) =
{
  true
  &&
  true
}

(* nondet *)

nondet rax@uint32; nondet rdx@uint32; nondet rdi@uint32; nondet rsi@uint32;

nondet L0x7fffffffddc0@uint32; nondet L0x7fffffffddc4@uint32;
nondet L0x7fffffffddc8@uint32; nondet L0x7fffffffddcc@uint32;
nondet L0x7fffffffddd0@uint32; nondet L0x7fffffffddd4@uint32;
nondet L0x7fffffffddd8@uint32; nondet L0x7fffffffdddc@uint32;
nondet L0x7fffffffdde0@uint32; nondet L0x7fffffffdde4@uint32;
nondet L0x7fffffffdde8@uint32; nondet L0x7fffffffddec@uint32;
nondet L0x7fffffffddf0@uint32; nondet L0x7fffffffddf4@uint32;
nondet L0x7fffffffddf8@uint32; nondet L0x7fffffffddfc@uint32;
nondet L0x7fffffffdf98@uint32; nondet L0x7fffffffdfa0@uint32;
nondet L0x7fffffffdfa8@uint32; nondet L0x7fffffffdfb0@uint32;
nondet L0x7fffffffdfb8@uint32; nondet L0x7fffffffdfc0@uint32;

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

(* initial hash *)

mov L0x55555555d040 0x6a09e667@uint32; mov L0x55555555d044 0xbb67ae85@uint32;
mov L0x55555555d048 0x3c6ef372@uint32; mov L0x55555555d04c 0xa54ff53a@uint32;
mov L0x55555555d050 0x510e527f@uint32; mov L0x55555555d054 0x9b05688c@uint32;
mov L0x55555555d058 0x1f83d9ab@uint32; mov L0x55555555d05c 0x5be0cd19@uint32;

(* k256 table *)

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

(* shuffle table *)

mov L0x555555557000 0x00010203@uint32; mov L0x555555557004 0x04050607@uint32;
mov L0x555555557008 0x08090a0b@uint32; mov L0x55555555700c 0x0c0d0e0f@uint32;
mov L0x555555557010 0x00010203@uint32; mov L0x555555557014 0x04050607@uint32;
mov L0x555555557018 0x08090a0b@uint32; mov L0x55555555701c 0x0c0d0e0f@uint32;
mov L0x555555557020 0x03020100@uint32; mov L0x555555557024 0x0b0a0908@uint32;
mov L0x555555557028 0xffffffff@uint32; mov L0x55555555702c 0xffffffff@uint32;
mov L0x555555557030 0x03020100@uint32; mov L0x555555557034 0x0b0a0908@uint32;
mov L0x555555557038 0xffffffff@uint32; mov L0x55555555703c 0xffffffff@uint32;
mov L0x555555557040 0xffffffff@uint32; mov L0x555555557044 0xffffffff@uint32;
mov L0x555555557048 0x03020100@uint32; mov L0x55555555704c 0x0b0a0908@uint32;
mov L0x555555557050 0xffffffff@uint32; mov L0x555555557054 0xffffffff@uint32;
mov L0x555555557058 0x03020100@uint32; mov L0x55555555705c 0x0b0a0908@uint32;

(* #! -> SP = 0x7fffffffdfc8 *)
#! 0x7fffffffdfc8 = 0x7fffffffdfc8;
(* #lea    0x74dd(%rip),%r11        # 0x55555555d0e4 <OPENSSL_ia32cap_P>#! PC = 0x555555555c00 *)
#lea    %%EA,%%r11        # 0x55555555d0e4 <OPENSSL_ia32cap_P>#! 0x555555555c00 = 0x555555555c00;
(* #mov    (%r11),%r9d                              #! EA = L0x55555555d0e4; Value = 0x7ffef3ffffebffff; PC = 0x555555555c07 *)
#mov    (%%r11),%%r9d                              #! L0x55555555d0e4 = L0x55555555d0e4; 0x7ffef3ffffebffff = 0x7ffef3ffffebffff; 0x555555555c07 = 0x555555555c07;
(* #mov    0x4(%r11),%r10d                          #! EA = L0x55555555d0e8; Value = 0xd39efffb7ffef3ff; PC = 0x555555555c0a *)
#mov    0x4(%%r11),%%r10d                          #! L0x55555555d0e8 = L0x55555555d0e8; 0xd39efffb7ffef3ff = 0xd39efffb7ffef3ff; 0x555555555c0a = 0x555555555c0a;
(* #mov    0x8(%r11),%r11d                          #! EA = L0x55555555d0ec; Value = 0x00000018d39efffb; PC = 0x555555555c0e *)
#mov    0x8(%%r11),%%r11d                          #! L0x55555555d0ec = L0x55555555d0ec; 0x00000018d39efffb = 0x00000018d39efffb; 0x555555555c0e = 0x555555555c0e;
(* #test   $0x20000000,%r11d                        #! PC = 0x555555555c12 *)
#test   $0x20000000,%%r11d                        #! 0x555555555c12 = 0x555555555c12;
(* #jne    0x5555555570c0 <sha256_block_data_order_shaext>#! PC = 0x555555555c19 *)
#jne    0x5555555570c0 <sha256_block_data_order_shaext>#! 0x555555555c19 = 0x555555555c19;
(* #and    $0x128,%r11d                             #! PC = 0x555555555c1f *)
#and    $0x128,%%r11d                             #! 0x555555555c1f = 0x555555555c1f;
(* #cmp    $0x128,%r11d                             #! PC = 0x555555555c26 *)
#cmp    $0x128,%%r11d                             #! 0x555555555c26 = 0x555555555c26;
(* #je     0x5555555591c0 <sha256_block_data_order_avx2>#! PC = 0x555555555c2d *)
#je     0x5555555591c0 <sha256_block_data_order_avx2>#! 0x555555555c2d = 0x555555555c2d;
(* #mov    %rsp,%rax                                #! PC = 0x5555555591c0 *)
#mov    %rsp,%rax                                #! 0x5555555591c0 = 0x5555555591c0;
(* push   %rbx                                     #! EA = L0x7fffffffdfc0; PC = 0x5555555591c3 *)
(* push %rbx *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffdfb8; PC = 0x5555555591c4 *)
(* push %rbp *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffdfb0; PC = 0x5555555591c5 *)
(* push r12 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffdfa8; PC = 0x5555555591c7 *)
(* push r13 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffdfa0; PC = 0x5555555591c9 *)
(* push r14 *)
nop;
(* push   %r15                                     #! EA = L0x7fffffffdf98; PC = 0x5555555591cb *)
(* push r15 *)
nop;
(* #sub    $0x220,%rsp                              #! PC = 0x5555555591cd *)
#sub    $0x220,%rsp                              #! 0x5555555591cd = 0x5555555591cd;
(* #shl    $0x4,%rdx                                #! PC = 0x5555555591d4 *)
#shl    $0x4,%rdx                                #! 0x5555555591d4 = 0x5555555591d4;
(* #and    $0xfffffffffffffc00,%rsp                 #! PC = 0x5555555591d8 *)
#and    $0xfffffffffffffc00,%rsp                 #! 0x5555555591d8 = 0x5555555591d8;
(* #lea    (%rsi,%rdx,4),%rdx                       #! PC = 0x5555555591df *)
#lea    (%rsi,%rdx,4),%rdx                       #! 0x5555555591df = 0x5555555591df;
(* #add    $0x1c0,%rsp                              #! PC = 0x5555555591e3 *)
#add    $0x1c0,%rsp                              #! 0x5555555591e3 = 0x5555555591e3;
(* mov    %rdi,0x40(%rsp)                          #! EA = L0x7fffffffde00; PC = 0x5555555591ea *)
mov L0x7fffffffde00 rdi;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffde08; PC = 0x5555555591ef *)
mov L0x7fffffffde08 rsi;
(* mov    %rdx,0x50(%rsp)                          #! EA = L0x7fffffffde10; PC = 0x5555555591f4 *)
mov L0x7fffffffde10 rdx;
(* mov    %rax,0x58(%rsp)                          #! EA = L0x7fffffffde18; PC = 0x5555555591f9 *)
mov L0x7fffffffde18 rax;
(* #vzeroupper                                      #! PC = 0x5555555591fe *)
#vzeroupper                                      #! 0x5555555591fe = 0x5555555591fe;
(* #sub    $0xffffffffffffffc0,%rsi                 #! PC = 0x555555559201 *)
#sub    $0xffffffffffffffc0,%rsi                 #! 0x555555559201 = 0x555555559201;
(* mov    (%rdi),%eax                              #! EA = L0x55555555d040; Value = 0xbb67ae856a09e667; PC = 0x555555559205 *)
mov eax L0x55555555d040;
(* #mov    %rsi,%r12                                #! PC = 0x555555559207 *)
#mov    %rsi,%%r12                                #! 0x555555559207 = 0x555555559207;
(* mov    0x4(%rdi),%ebx                           #! EA = L0x55555555d044; Value = 0x3c6ef372bb67ae85; PC = 0x55555555920a *)
mov ebx L0x55555555d044;
(* cmp    %rdx,%rsi                                #! PC = 0x55555555920d *)
(* cmp %rdx %rsi *)
nop;
(* mov    0x8(%rdi),%ecx                           #! EA = L0x55555555d048; Value = 0xa54ff53a3c6ef372; PC = 0x555555559210 *)
mov ecx L0x55555555d048;
(* #cmove  %rsp,%r12                                #! PC = 0x555555559213 *)
#cmove  %rsp,%%r12                                #! 0x555555559213 = 0x555555559213;
(* mov    0xc(%rdi),%edx                           #! EA = L0x55555555d04c; Value = 0x510e527fa54ff53a; PC = 0x555555559217 *)
mov edx L0x55555555d04c;
(* mov    0x10(%rdi),%r8d                          #! EA = L0x55555555d050; Value = 0x9b05688c510e527f; PC = 0x55555555921a *)
mov r8d L0x55555555d050;
(* mov    0x14(%rdi),%r9d                          #! EA = L0x55555555d054; Value = 0x1f83d9ab9b05688c; PC = 0x55555555921e *)
mov r9d L0x55555555d054;
(* mov    0x18(%rdi),%r10d                         #! EA = L0x55555555d058; Value = 0x5be0cd191f83d9ab; PC = 0x555555559222 *)
mov r10d L0x55555555d058;
(* mov    0x1c(%rdi),%r11d                         #! EA = L0x55555555d05c; Value = 0x000000805be0cd19; PC = 0x555555559226 *)
mov r11d L0x55555555d05c;
(* vmovdqa -0x2212(%rip),%ymm8        # 0x555555557020 <K256+544>#! EA = L0x555555557020; Value = 0x0b0a090803020100; PC = 0x55555555922a *)
mov ymm8_0 L0x555555557020; mov ymm8_1 L0x555555557024;
mov ymm8_2 L0x555555557028; mov ymm8_3 L0x55555555702c;
mov ymm8_4 L0x555555557030; mov ymm8_5 L0x555555557034;
mov ymm8_6 L0x555555557038; mov ymm8_7 L0x55555555703c;
(* vmovdqa -0x21fa(%rip),%ymm9        # 0x555555557040 <K256+576>#! EA = L0x555555557040; Value = 0xffffffffffffffff; PC = 0x555555559232 *)
mov ymm9_0 L0x555555557040; mov ymm9_1 L0x555555557044;
mov ymm9_2 L0x555555557048; mov ymm9_3 L0x55555555704c;
mov ymm9_4 L0x555555557050; mov ymm9_5 L0x555555557054;
mov ymm9_6 L0x555555557058; mov ymm9_7 L0x55555555705c;
(* #jmp    0x555555559240 <sha256_block_data_order_avx2+128>#! PC = 0x55555555923a *)
#jmp    0x555555559240 <sha256_block_data_order_avx2+128>#! 0x55555555923a = 0x55555555923a;
(* vmovdqa -0x2248(%rip),%ymm7        # 0x555555557000 <K256+512>#! EA = L0x555555557000; Value = 0x0405060700010203; PC = 0x555555559240 *)
mov ymm7_0 L0x555555557000; mov ymm7_1 L0x555555557004;
mov ymm7_2 L0x555555557008; mov ymm7_3 L0x55555555700c;
mov ymm7_4 L0x555555557010; mov ymm7_5 L0x555555557014;
mov ymm7_6 L0x555555557018; mov ymm7_7 L0x55555555701c;
(* vmovdqu -0x40(%rsi),%xmm0                       #! EA = L0x55555555d068; Value = 0x0706050403020100; PC = 0x555555559248 *)
mov ymm0_0 L0x55555555d068; mov ymm0_1 L0x55555555d06c;
mov ymm0_2 L0x55555555d070; mov ymm0_3 L0x55555555d074;
mov ymm0_4 0@uint32; mov ymm0_5 0@uint32;
mov ymm0_6 0@uint32; mov ymm0_7 0@uint32;
(* vmovdqu -0x30(%rsi),%xmm1                       #! EA = L0x55555555d078; Value = 0x0000000000000080; PC = 0x55555555924d *)
mov ymm1_0 L0x55555555d078; mov ymm1_1 L0x55555555d07c;
mov ymm1_2 L0x55555555d080; mov ymm1_3 L0x55555555d084;
mov ymm1_4 0@uint32; mov ymm1_5 0@uint32;
mov ymm1_6 0@uint32; mov ymm1_7 0@uint32;
(* vmovdqu -0x20(%rsi),%xmm2                       #! EA = L0x55555555d088; Value = 0x0000000000000000; PC = 0x555555559252 *)
mov ymm2_0 L0x55555555d088; mov ymm2_1 L0x55555555d08c;
mov ymm2_2 L0x55555555d090; mov ymm2_3 L0x55555555d094;
mov ymm2_4 0@uint32; mov ymm2_5 0@uint32;
mov ymm2_6 0@uint32; mov ymm2_7 0@uint32;
(* vmovdqu -0x10(%rsi),%xmm3                       #! EA = L0x55555555d098; Value = 0x0000000000000000; PC = 0x555555559257 *)
mov ymm3_0 L0x55555555d098; mov ymm3_1 L0x55555555d09c;
mov ymm3_2 L0x55555555d0a0; mov ymm3_3 L0x55555555d0a4;
mov ymm3_4 0@uint32; mov ymm3_5 0@uint32;
mov ymm3_6 0@uint32; mov ymm3_7 0@uint32;
(* vinserti128 $0x1,(%r12),%ymm0,%ymm0             #! EA = L0x7fffffffddc0; Value = 0x0000000000000000; PC = 0x55555555925c *)
mov ymm0_0 ymm0_0; mov ymm0_1 ymm0_1; mov ymm0_2 ymm0_2; mov ymm0_3 ymm0_3;
mov ymm0_4 L0x7fffffffddc0; mov ymm0_5 L0x7fffffffddc4;
mov ymm0_6 L0x7fffffffddc8; mov ymm0_7 L0x7fffffffddcc;
(* vinserti128 $0x1,0x10(%r12),%ymm1,%ymm1         #! EA = L0x7fffffffddd0; Value = 0x0000000000000000; PC = 0x555555559263 *)
mov ymm1_0 ymm1_0; mov ymm1_1 ymm1_1; mov ymm1_2 ymm1_2; mov ymm1_3 ymm1_3;
mov ymm1_4 L0x7fffffffddd0; mov ymm1_5 L0x7fffffffddd4;
mov ymm1_6 L0x7fffffffddd8; mov ymm1_7 L0x7fffffffdddc;
(* vpshufb %ymm7,%ymm0,%ymm0                       #! PC = 0x55555555926b *)
assert true
   && and [ymm7_0=0x00010203@32, ymm7_1=0x04050607@32, ymm7_2=0x08090a0b@32, ymm7_3=0x0c0d0e0f@32,ymm7_4=0x00010203@32, ymm7_5=0x04050607@32, ymm7_6=0x08090a0b@32, ymm7_7=0x0c0d0e0f@32];
spl s1 s0 ymm0_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_0 t1 t0;
spl s1 s0 ymm0_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_1 t1 t0;
spl s1 s0 ymm0_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_2 t1 t0;
spl s1 s0 ymm0_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_3 t1 t0;
spl s1 s0 ymm0_4 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_4 t1 t0;
spl s1 s0 ymm0_5 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_5 t1 t0;
spl s1 s0 ymm0_6 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_6 t1 t0;
spl s1 s0 ymm0_7 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm0_7 t1 t0;
(* vinserti128 $0x1,0x20(%r12),%ymm2,%ymm2         #! EA = L0x7fffffffdde0; Value = 0x0000000000000000; PC = 0x555555559270 *)
mov ymm2_0 ymm2_0; mov ymm2_1 ymm2_1; mov ymm2_2 ymm2_2; mov ymm2_3 ymm2_3;
mov ymm2_4 L0x7fffffffdde0; mov ymm2_5 L0x7fffffffdde4;
mov ymm2_6 L0x7fffffffdde8; mov ymm2_7 L0x7fffffffddec;
(* vpshufb %ymm7,%ymm1,%ymm1                       #! PC = 0x555555559278 *)
assert true
   && and [ymm7_0=0x00010203@32, ymm7_1=0x04050607@32, ymm7_2=0x08090a0b@32, ymm7_3=0x0c0d0e0f@32,ymm7_4=0x00010203@32, ymm7_5=0x04050607@32, ymm7_6=0x08090a0b@32, ymm7_7=0x0c0d0e0f@32];
spl s1 s0 ymm1_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_0 t1 t0;
spl s1 s0 ymm1_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_1 t1 t0;
spl s1 s0 ymm1_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_2 t1 t0;
spl s1 s0 ymm1_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_3 t1 t0;
spl s1 s0 ymm1_4 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_4 t1 t0;
spl s1 s0 ymm1_5 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_5 t1 t0;
spl s1 s0 ymm1_6 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_6 t1 t0;
spl s1 s0 ymm1_7 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm1_7 t1 t0;
(* vinserti128 $0x1,0x30(%r12),%ymm3,%ymm3         #! EA = L0x7fffffffddf0; Value = 0x0000000000000000; PC = 0x55555555927d *)
mov ymm3_0 ymm3_0; mov ymm3_1 ymm3_1; mov ymm3_2 ymm3_2; mov ymm3_3 ymm3_3;
mov ymm3_4 L0x7fffffffddf0; mov ymm3_5 L0x7fffffffddf4;
mov ymm3_6 L0x7fffffffddf8; mov ymm3_7 L0x7fffffffddfc;
(* lea    -0x248c(%rip),%rbp        # 0x555555556e00 <K256>#! PC = 0x555555559285 *)
(* lea %%EA %rbp *)
nop;
(* vpshufb %ymm7,%ymm2,%ymm2                       #! PC = 0x55555555928c *)
assert true
   && and [ymm7_0=0x00010203@32, ymm7_1=0x04050607@32, ymm7_2=0x08090a0b@32, ymm7_3=0x0c0d0e0f@32,ymm7_4=0x00010203@32, ymm7_5=0x04050607@32, ymm7_6=0x08090a0b@32, ymm7_7=0x0c0d0e0f@32];
spl s1 s0 ymm2_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_0 t1 t0;
spl s1 s0 ymm2_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_1 t1 t0;
spl s1 s0 ymm2_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_2 t1 t0;
spl s1 s0 ymm2_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_3 t1 t0;
spl s1 s0 ymm2_4 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_4 t1 t0;
spl s1 s0 ymm2_5 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_5 t1 t0;
spl s1 s0 ymm2_6 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_6 t1 t0;
spl s1 s0 ymm2_7 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm2_7 t1 t0;
(* vpaddd 0x0(%rbp),%ymm0,%ymm4                    #! EA = L0x555555556e00; Value = 0x71374491428a2f98; PC = 0x555555559291 *)
adds dc ymm4_0 ymm0_0 L0x555555556e00; adds dc ymm4_1 ymm0_1 L0x555555556e04;
adds dc ymm4_2 ymm0_2 L0x555555556e08; adds dc ymm4_3 ymm0_3 L0x555555556e0c;
adds dc ymm4_4 ymm0_4 L0x555555556e10; adds dc ymm4_5 ymm0_5 L0x555555556e14;
adds dc ymm4_6 ymm0_6 L0x555555556e18; adds dc ymm4_7 ymm0_7 L0x555555556e1c;
(* vpshufb %ymm7,%ymm3,%ymm3                       #! PC = 0x555555559296 *)
assert true
   && and [ymm7_0=0x00010203@32, ymm7_1=0x04050607@32, ymm7_2=0x08090a0b@32, ymm7_3=0x0c0d0e0f@32,ymm7_4=0x00010203@32, ymm7_5=0x04050607@32, ymm7_6=0x08090a0b@32, ymm7_7=0x0c0d0e0f@32];
spl s1 s0 ymm3_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_0 t1 t0;
spl s1 s0 ymm3_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_1 t1 t0;
spl s1 s0 ymm3_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_2 t1 t0;
spl s1 s0 ymm3_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_3 t1 t0;
spl s1 s0 ymm3_4 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_4 t1 t0;
spl s1 s0 ymm3_5 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_5 t1 t0;
spl s1 s0 ymm3_6 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_6 t1 t0;
spl s1 s0 ymm3_7 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join ymm3_7 t1 t0;
(* vpaddd 0x20(%rbp),%ymm1,%ymm5                   #! EA = L0x555555556e20; Value = 0x59f111f13956c25b; PC = 0x55555555929b *)
adds dc ymm5_0 ymm1_0 L0x555555556e20; adds dc ymm5_1 ymm1_1 L0x555555556e24;
adds dc ymm5_2 ymm1_2 L0x555555556e28; adds dc ymm5_3 ymm1_3 L0x555555556e2c;
adds dc ymm5_4 ymm1_4 L0x555555556e30; adds dc ymm5_5 ymm1_5 L0x555555556e34;
adds dc ymm5_6 ymm1_6 L0x555555556e38; adds dc ymm5_7 ymm1_7 L0x555555556e3c;
(* vpaddd 0x40(%rbp),%ymm2,%ymm6                   #! EA = L0x555555556e40; Value = 0x12835b01d807aa98; PC = 0x5555555592a0 *)
adds dc ymm6_0 ymm2_0 L0x555555556e40; adds dc ymm6_1 ymm2_1 L0x555555556e44;
adds dc ymm6_2 ymm2_2 L0x555555556e48; adds dc ymm6_3 ymm2_3 L0x555555556e4c;
adds dc ymm6_4 ymm2_4 L0x555555556e50; adds dc ymm6_5 ymm2_5 L0x555555556e54;
adds dc ymm6_6 ymm2_6 L0x555555556e58; adds dc ymm6_7 ymm2_7 L0x555555556e5c;
(* vpaddd 0x60(%rbp),%ymm3,%ymm7                   #! EA = L0x555555556e60; Value = 0x80deb1fe72be5d74; PC = 0x5555555592a5 *)
adds dc ymm7_0 ymm3_0 L0x555555556e60; adds dc ymm7_1 ymm3_1 L0x555555556e64;
adds dc ymm7_2 ymm3_2 L0x555555556e68; adds dc ymm7_3 ymm3_3 L0x555555556e6c;
adds dc ymm7_4 ymm3_4 L0x555555556e70; adds dc ymm7_5 ymm3_5 L0x555555556e74;
adds dc ymm7_6 ymm3_6 L0x555555556e78; adds dc ymm7_7 ymm3_7 L0x555555556e7c;
(* vmovdqa %ymm4,(%rsp)                            #! EA = L0x7fffffffddc0; PC = 0x5555555592aa *)
mov L0x7fffffffddc0 ymm4_0; mov L0x7fffffffddc4 ymm4_1;
mov L0x7fffffffddc8 ymm4_2; mov L0x7fffffffddcc ymm4_3;
mov L0x7fffffffddd0 ymm4_4; mov L0x7fffffffddd4 ymm4_5;
mov L0x7fffffffddd8 ymm4_6; mov L0x7fffffffdddc ymm4_7;
(* xor    %r14d,%r14d                              #! PC = 0x5555555592af *)
mov r14d 0@uint32;
(* vmovdqa %ymm5,0x20(%rsp)                        #! EA = L0x7fffffffdde0; PC = 0x5555555592b2 *)
mov L0x7fffffffdde0 ymm5_0; mov L0x7fffffffdde4 ymm5_1;
mov L0x7fffffffdde8 ymm5_2; mov L0x7fffffffddec ymm5_3;
mov L0x7fffffffddf0 ymm5_4; mov L0x7fffffffddf4 ymm5_5;
mov L0x7fffffffddf8 ymm5_6; mov L0x7fffffffddfc ymm5_7;
(* mov    0x58(%rsp),%rdi                          #! EA = L0x7fffffffde18; Value = 0x00007fffffffdfc8; PC = 0x5555555592b8 *)
mov rdi L0x7fffffffde18;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x5555555592bd *)
(* lea %%EA %rsp *)
nop;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffdd78; PC = 0x5555555592c2 *)
mov L0x7fffffffdd78 rdi;
(* mov    %ebx,%edi                                #! PC = 0x5555555592c7 *)
mov edi ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdd80; PC = 0x5555555592c9 *)
mov L0x7fffffffdd80 ymm6_0; mov L0x7fffffffdd84 ymm6_1;
mov L0x7fffffffdd88 ymm6_2; mov L0x7fffffffdd8c ymm6_3;
mov L0x7fffffffdd90 ymm6_4; mov L0x7fffffffdd94 ymm6_5;
mov L0x7fffffffdd98 ymm6_6; mov L0x7fffffffdd9c ymm6_7;
(* xor    %ecx,%edi                                #! PC = 0x5555555592ce *)
xor edi@uint32 edi ecx;
(* vmovdqa %ymm7,0x20(%rsp)                        #! EA = L0x7fffffffdda0; PC = 0x5555555592d0 *)
mov L0x7fffffffdda0 ymm7_0; mov L0x7fffffffdda4 ymm7_1;
mov L0x7fffffffdda8 ymm7_2; mov L0x7fffffffddac ymm7_3;
mov L0x7fffffffddb0 ymm7_4; mov L0x7fffffffddb4 ymm7_5;
mov L0x7fffffffddb8 ymm7_6; mov L0x7fffffffddbc ymm7_7;
(* mov    %r9d,%r12d                               #! PC = 0x5555555592d6 *)
mov r12d r9d;
(* sub    $0xffffffffffffff80,%rbp                 #! PC = 0x5555555592d9 *)
(* sub 0xffffffffffffff80 %rbp *)
nop;
(* #jmp    0x5555555592e0 <sha256_block_data_order_avx2+288>#! PC = 0x5555555592dd *)
#jmp    0x5555555592e0 <sha256_block_data_order_avx2+288>#! 0x5555555592dd = 0x5555555592dd;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x5555555592e0 *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdd38; PC = 0x5555555592e5 *)
(* push L0x7fffffffdd38 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x5555555592e9 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm4                 #! PC = 0x5555555592ee *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffddc0; Value = 0x753c4a98428b319b; PC = 0x5555555592f4 *)
adds dc r11d r11d L0x7fffffffddc0;
(* and    %r8d,%r12d                               #! PC = 0x5555555592fc *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x5555555592ff *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm7                 #! PC = 0x555555559305 *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x55555555930b *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x555555559311 *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559315 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559319 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555931e *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559323 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559326 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555932c *)
adds dc ymm0_0 ymm0_0 ymm7_0; adds dc ymm0_1 ymm0_1 ymm7_1;
adds dc ymm0_2 ymm0_2 ymm7_2; adds dc ymm0_3 ymm0_3 ymm7_3;
adds dc ymm0_4 ymm0_4 ymm7_4; adds dc ymm0_5 ymm0_5 ymm7_5;
adds dc ymm0_6 ymm0_6 ymm7_6; adds dc ymm0_7 ymm0_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559330 *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559334 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559337 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x55555555933a *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555933f *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x555555559345 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x555555559349 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x55555555934c *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x555555559351 *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x555555559357 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x55555555935d *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x555555559361 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x555555559365 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559368 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x55555555936b *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm3,%ymm7                       #! PC = 0x55555555936d *)
mov sh_0 ymm3_2; mov sh_1 ymm3_2; mov sh_2 ymm3_3; mov sh_3 ymm3_3;
mov sh_4 ymm3_6; mov sh_5 ymm3_6; mov sh_6 ymm3_7; mov sh_7 ymm3_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559372 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x555555559375 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x555555559379 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x55555555937c *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffddc4; Value = 0xbdca05da753c4a98; PC = 0x555555559381 *)
adds dc r10d r10d L0x7fffffffddc4;
(* and    %edx,%r12d                               #! PC = 0x555555559389 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x55555555938c *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559392 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x555555559396 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x55555555939c *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593a0 *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555593a4 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x5555555593a9 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x5555555593ae *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x5555555593b1 *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555593b7 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593bb *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555593bf *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x5555555593c2 *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555593c5 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x5555555593ca *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x5555555593d0 *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x5555555593d4 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555593d6 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x5555555593da *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x5555555593e0 *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x5555555593e6 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555593ea *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x5555555593ef *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x5555555593f2 *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x5555555593f5 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm0,%ymm0                        #! PC = 0x5555555593f8 *)
adds dc ymm0_0 ymm0_0 ymm4_0; adds dc ymm0_1 ymm0_1 ymm4_1;
adds dc ymm0_2 ymm0_2 ymm4_2; adds dc ymm0_3 ymm0_3 ymm4_3;
adds dc ymm0_4 ymm0_4 ymm4_4; adds dc ymm0_5 ymm0_5 ymm4_5;
adds dc ymm0_6 ymm0_6 ymm4_6; adds dc ymm0_7 ymm0_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555593fc *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x5555555593ff *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559403 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559406 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffddc8; Value = 0xf5c2e9b4bdca05da; PC = 0x55555555940a *)
adds dc r9d r9d L0x7fffffffddc8;
(* and    %ecx,%r12d                               #! PC = 0x555555559412 *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559415 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x55555555941b *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x555555559420 *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559426 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x55555555942a *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555942e *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x555555559432 *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559437 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x55555555943a *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559440 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559445 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559449 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x55555555944c *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x55555555944f *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x555555559453 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x555555559459 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x55555555945d *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm0,%ymm7                       #! PC = 0x555555559460 *)
mov sh_0 ymm0_0; mov sh_1 ymm0_0; mov sh_2 ymm0_1; mov sh_3 ymm0_1;
mov sh_4 ymm0_4; mov sh_5 ymm0_4; mov sh_6 ymm0_5; mov sh_7 ymm0_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x555555559465 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x55555555946b *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x555555559471 *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559475 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x55555555947a *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x55555555947d *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x555555559480 *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559483 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559488 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x55555555948b *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x55555555948f *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559492 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffddcc; Value = 0x428a2f98f5c2e9b4; PC = 0x555555559496 *)
adds dc r8d r8d L0x7fffffffddcc;
(* and    %ebx,%r12d                               #! PC = 0x55555555949e *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555594a1 *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555594a7 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x5555555594ac *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x5555555594b2 *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594b6 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555594ba *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x5555555594be *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x5555555594c3 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x5555555594c6 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555594cc *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594d1 *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555594d5 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x5555555594d8 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x5555555594db *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x5555555594df *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x5555555594e5 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x5555555594e9 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x0(%rbp),%ymm0,%ymm6                    #! EA = L0x555555556e80; Value = 0xefbe4786e49b69c1; PC = 0x5555555594ec *)
adds dc ymm6_0 ymm0_0 L0x555555556e80; adds dc ymm6_1 ymm0_1 L0x555555556e84;
adds dc ymm6_2 ymm0_2 L0x555555556e88; adds dc ymm6_3 ymm0_3 L0x555555556e8c;
adds dc ymm6_4 ymm0_4 L0x555555556e90; adds dc ymm6_5 ymm0_5 L0x555555556e94;
adds dc ymm6_6 ymm0_6 L0x555555556e98; adds dc ymm6_7 ymm0_7 L0x555555556e9c;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x5555555594f1 *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x5555555594f7 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x5555555594fd *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x555555559501 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559504 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559507 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555950a *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555950d *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x555555559511 *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdd40; PC = 0x555555559514 *)
mov L0x7fffffffdd40 ymm6_0; mov L0x7fffffffdd44 ymm6_1;
mov L0x7fffffffdd48 ymm6_2; mov L0x7fffffffdd4c ymm6_3;
mov L0x7fffffffdd50 ymm6_4; mov L0x7fffffffdd54 ymm6_5;
mov L0x7fffffffdd58 ymm6_6; mov L0x7fffffffdd5c ymm6_7;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm4                 #! PC = 0x555555559519 *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdde0; Value = 0x59f111f1b956c25b; PC = 0x55555555951f *)
adds dc edx edx L0x7fffffffdde0;
(* and    %eax,%r12d                               #! PC = 0x555555559526 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559529 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm7                 #! PC = 0x55555555952f *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559535 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x55555555953b *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555953f *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559543 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x555555559548 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x55555555954d *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x555555559550 *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm1,%ymm1                        #! PC = 0x555555559556 *)
adds dc ymm1_0 ymm1_0 ymm7_0; adds dc ymm1_1 ymm1_1 ymm7_1;
adds dc ymm1_2 ymm1_2 ymm7_2; adds dc ymm1_3 ymm1_3 ymm7_3;
adds dc ymm1_4 ymm1_4 ymm7_4; adds dc ymm1_5 ymm1_5 ymm7_5;
adds dc ymm1_6 ymm1_6 ymm7_6; adds dc ymm1_7 ymm1_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555955a *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555955e *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x555555559561 *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559564 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x555555559569 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x55555555956f *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x555555559573 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x555555559576 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x55555555957b *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x555555559581 *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x555555559587 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x55555555958b *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x55555555958f *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559592 *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x555555559595 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm0,%ymm7                       #! PC = 0x555555559598 *)
mov sh_0 ymm0_2; mov sh_1 ymm0_2; mov sh_2 ymm0_3; mov sh_3 ymm0_3;
mov sh_4 ymm0_6; mov sh_5 ymm0_6; mov sh_6 ymm0_7; mov sh_7 ymm0_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x55555555959d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555595a0 *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x5555555595a3 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555595a6 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdde4; Value = 0x923f82a459f111f1; PC = 0x5555555595ab *)
adds dc ecx ecx L0x7fffffffdde4;
(* and    %r11d,%r12d                              #! PC = 0x5555555595b2 *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x5555555595b5 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595bb *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x5555555595bf *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x5555555595c5 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595c9 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555595cd *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x5555555595d2 *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x5555555595d7 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x5555555595da *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555595e0 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595e4 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555595e8 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x5555555595eb *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555595ed *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x5555555595f2 *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x5555555595f8 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x5555555595fc *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595ff *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559603 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559609 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x55555555960f *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559613 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559618 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555961b *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x55555555961e *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm1,%ymm1                        #! PC = 0x555555559621 *)
adds dc ymm1_0 ymm1_0 ymm4_0; adds dc ymm1_1 ymm1_1 ymm4_1;
adds dc ymm1_2 ymm1_2 ymm4_2; adds dc ymm1_3 ymm1_3 ymm4_3;
adds dc ymm1_4 ymm1_4 ymm4_4; adds dc ymm1_5 ymm1_5 ymm4_5;
adds dc ymm1_6 ymm1_6 ymm4_6; adds dc ymm1_7 ymm1_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559625 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559628 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x55555555962c *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555962f *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdde8; Value = 0xab1c5ed5923f82a4; PC = 0x555555559633 *)
adds dc ebx ebx L0x7fffffffdde8;
(* and    %r10d,%r12d                              #! PC = 0x55555555963a *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x55555555963d *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559643 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559648 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x55555555964e *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559652 *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559656 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x55555555965a *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x55555555965f *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559662 *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559668 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x55555555966d *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559671 *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559674 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x555555559677 *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x55555555967b *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559681 *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559685 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm1,%ymm7                       #! PC = 0x555555559688 *)
mov sh_0 ymm1_0; mov sh_1 ymm1_0; mov sh_2 ymm1_1; mov sh_3 ymm1_1;
mov sh_4 ymm1_4; mov sh_5 ymm1_4; mov sh_6 ymm1_5; mov sh_7 ymm1_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x55555555968d *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559693 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559699 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x55555555969d *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555596a2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555596a5 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x5555555596a8 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555596aa *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555596af *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x5555555596b2 *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x5555555596b5 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596b8 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffddec; Value = 0x3956c25bab1c5ed5; PC = 0x5555555596bc *)
adds dc eax eax L0x7fffffffddec;
(* and    %r9d,%r12d                               #! PC = 0x5555555596c3 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x5555555596c6 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555596cc *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x5555555596d1 *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x5555555596d7 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596db *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596df *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x5555555596e3 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x5555555596e8 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x5555555596eb *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555596f1 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596f6 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555596fa *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x5555555596fd *)
mov edi ebx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x5555555596ff *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559703 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559709 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x55555555970d *)
xor edi@uint32 edi ecx;
(* vpaddd 0x20(%rbp),%ymm1,%ymm6                   #! EA = L0x555555556ea0; Value = 0x4a7484aa2de92c6f; PC = 0x55555555970f *)
adds dc ymm6_0 ymm1_0 L0x555555556ea0; adds dc ymm6_1 ymm1_1 L0x555555556ea4;
adds dc ymm6_2 ymm1_2 L0x555555556ea8; adds dc ymm6_3 ymm1_3 L0x555555556eac;
adds dc ymm6_4 ymm1_4 L0x555555556eb0; adds dc ymm6_5 ymm1_5 L0x555555556eb4;
adds dc ymm6_6 ymm1_6 L0x555555556eb8; adds dc ymm6_7 ymm1_7 L0x555555556ebc;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559714 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x55555555971a *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559720 *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559724 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559727 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x55555555972a *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x55555555972d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559730 *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559734 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdd60; PC = 0x555555559737 *)
mov L0x7fffffffdd60 ymm6_0; mov L0x7fffffffdd64 ymm6_1;
mov L0x7fffffffdd68 ymm6_2; mov L0x7fffffffdd6c ymm6_3;
mov L0x7fffffffdd70 ymm6_4; mov L0x7fffffffdd74 ymm6_5;
mov L0x7fffffffdd78 ymm6_6; mov L0x7fffffffdd7c ymm6_7;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x55555555973d *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdcf8; PC = 0x555555559742 *)
(* push L0x7fffffffdcf8 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x555555559746 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm4                 #! PC = 0x55555555974b *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffdd80; Value = 0x12835b01d807aa98; PC = 0x555555559751 *)
adds dc r11d r11d L0x7fffffffdd80;
(* and    %r8d,%r12d                               #! PC = 0x555555559759 *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x55555555975c *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm7                 #! PC = 0x555555559762 *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x555555559768 *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x55555555976e *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559772 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559776 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555977b *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559780 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559783 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm2,%ymm2                        #! PC = 0x555555559789 *)
adds dc ymm2_0 ymm2_0 ymm7_0; adds dc ymm2_1 ymm2_1 ymm7_1;
adds dc ymm2_2 ymm2_2 ymm7_2; adds dc ymm2_3 ymm2_3 ymm7_3;
adds dc ymm2_4 ymm2_4 ymm7_4; adds dc ymm2_5 ymm2_5 ymm7_5;
adds dc ymm2_6 ymm2_6 ymm7_6; adds dc ymm2_7 ymm2_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x55555555978d *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559791 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559794 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559797 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555979c *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x5555555597a2 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x5555555597a6 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555597a9 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x5555555597ae *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x5555555597b4 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x5555555597ba *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555597be *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555597c2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555597c5 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x5555555597c8 *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm1,%ymm7                       #! PC = 0x5555555597ca *)
mov sh_0 ymm1_2; mov sh_1 ymm1_2; mov sh_2 ymm1_3; mov sh_3 ymm1_3;
mov sh_4 ymm1_6; mov sh_5 ymm1_6; mov sh_6 ymm1_7; mov sh_7 ymm1_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555597cf *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x5555555597d2 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x5555555597d6 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555597d9 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffdd84; Value = 0x243185be12835b01; PC = 0x5555555597de *)
adds dc r10d r10d L0x7fffffffdd84;
(* and    %edx,%r12d                               #! PC = 0x5555555597e6 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x5555555597e9 *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555597ef *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x5555555597f3 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x5555555597f9 *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555597fd *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559801 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x555555559806 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x55555555980b *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x55555555980e *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559814 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559818 *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555981c *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x55555555981f *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559822 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x555555559827 *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x55555555982d *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x555555559831 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559833 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x555555559837 *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x55555555983d *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x555555559843 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559847 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x55555555984c *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555984f *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x555555559852 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm2,%ymm2                        #! PC = 0x555555559855 *)
adds dc ymm2_0 ymm2_0 ymm4_0; adds dc ymm2_1 ymm2_1 ymm4_1;
adds dc ymm2_2 ymm2_2 ymm4_2; adds dc ymm2_3 ymm2_3 ymm4_3;
adds dc ymm2_4 ymm2_4 ymm4_4; adds dc ymm2_5 ymm2_5 ymm4_5;
adds dc ymm2_6 ymm2_6 ymm4_6; adds dc ymm2_7 ymm2_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559859 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x55555555985c *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559860 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559863 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffdd88; Value = 0x550c7dc3243185be; PC = 0x555555559867 *)
adds dc r9d r9d L0x7fffffffdd88;
(* and    %ecx,%r12d                               #! PC = 0x55555555986f *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559872 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559878 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x55555555987d *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559883 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559887 *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555988b *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x55555555988f *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559894 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x555555559897 *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555989d *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x5555555598a2 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555598a6 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x5555555598a9 *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x5555555598ac *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x5555555598b0 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x5555555598b6 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x5555555598ba *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm2,%ymm7                       #! PC = 0x5555555598bd *)
mov sh_0 ymm2_0; mov sh_1 ymm2_0; mov sh_2 ymm2_1; mov sh_3 ymm2_1;
mov sh_4 ymm2_4; mov sh_5 ymm2_4; mov sh_6 ymm2_5; mov sh_7 ymm2_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x5555555598c2 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x5555555598c8 *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x5555555598ce *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555598d2 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555598d7 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555598da *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x5555555598dd *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555598e0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555598e5 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x5555555598e8 *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x5555555598ec *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555598ef *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffdd8c; Value = 0xd807aa98550c7dc3; PC = 0x5555555598f3 *)
adds dc r8d r8d L0x7fffffffdd8c;
(* and    %ebx,%r12d                               #! PC = 0x5555555598fb *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555598fe *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559904 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x555555559909 *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x55555555990f *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x555555559913 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559917 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x55555555991b *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x555555559920 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x555555559923 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559929 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x55555555992e *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559932 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x555555559935 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x555555559938 *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x55555555993c *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x555555559942 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x555555559946 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x40(%rbp),%ymm2,%ymm6                   #! EA = L0x555555556ec0; Value = 0xa831c66d983e5152; PC = 0x555555559949 *)
adds dc ymm6_0 ymm2_0 L0x555555556ec0; adds dc ymm6_1 ymm2_1 L0x555555556ec4;
adds dc ymm6_2 ymm2_2 L0x555555556ec8; adds dc ymm6_3 ymm2_3 L0x555555556ecc;
adds dc ymm6_4 ymm2_4 L0x555555556ed0; adds dc ymm6_5 ymm2_5 L0x555555556ed4;
adds dc ymm6_6 ymm2_6 L0x555555556ed8; adds dc ymm6_7 ymm2_7 L0x555555556edc;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x55555555994e *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x555555559954 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x55555555995a *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x55555555995e *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559961 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559964 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559967 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555996a *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x55555555996e *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdd00; PC = 0x555555559971 *)
mov L0x7fffffffdd00 ymm6_0; mov L0x7fffffffdd04 ymm6_1;
mov L0x7fffffffdd08 ymm6_2; mov L0x7fffffffdd0c ymm6_3;
mov L0x7fffffffdd10 ymm6_4; mov L0x7fffffffdd14 ymm6_5;
mov L0x7fffffffdd18 ymm6_6; mov L0x7fffffffdd1c ymm6_7;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm4                 #! PC = 0x555555559976 *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdda0; Value = 0x80deb1fe72be5d74; PC = 0x55555555997c *)
adds dc edx edx L0x7fffffffdda0;
(* and    %eax,%r12d                               #! PC = 0x555555559983 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559986 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm7                 #! PC = 0x55555555998c *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559992 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x555555559998 *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555999c *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x5555555599a0 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x5555555599a5 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x5555555599aa *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x5555555599ad *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm3,%ymm3                        #! PC = 0x5555555599b3 *)
adds dc ymm3_0 ymm3_0 ymm7_0; adds dc ymm3_1 ymm3_1 ymm7_1;
adds dc ymm3_2 ymm3_2 ymm7_2; adds dc ymm3_3 ymm3_3 ymm7_3;
adds dc ymm3_4 ymm3_4 ymm7_4; adds dc ymm3_5 ymm3_5 ymm7_5;
adds dc ymm3_6 ymm3_6 ymm7_6; adds dc ymm3_7 ymm3_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x5555555599b7 *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555599bb *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x5555555599be *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x5555555599c1 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x5555555599c6 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x5555555599cc *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x5555555599d0 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555599d3 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x5555555599d8 *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x5555555599de *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x5555555599e4 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555599e8 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555599ec *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555599ef *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x5555555599f2 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm2,%ymm7                       #! PC = 0x5555555599f5 *)
mov sh_0 ymm2_2; mov sh_1 ymm2_2; mov sh_2 ymm2_3; mov sh_3 ymm2_3;
mov sh_4 ymm2_6; mov sh_5 ymm2_6; mov sh_6 ymm2_7; mov sh_7 ymm2_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555599fa *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555599fd *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x555555559a00 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x555555559a03 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdda4; Value = 0x9bdc06a780deb1fe; PC = 0x555555559a08 *)
adds dc ecx ecx L0x7fffffffdda4;
(* and    %r11d,%r12d                              #! PC = 0x555555559a0f *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x555555559a12 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a18 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x555555559a1c *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x555555559a22 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a26 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559a2a *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x555555559a2f *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x555555559a34 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x555555559a37 *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559a3d *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a41 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559a45 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x555555559a48 *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559a4a *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x555555559a4f *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x555555559a55 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x555555559a59 *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a5c *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559a60 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559a66 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x555555559a6c *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559a70 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559a75 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559a78 *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x555555559a7b *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm3,%ymm3                        #! PC = 0x555555559a7e *)
adds dc ymm3_0 ymm3_0 ymm4_0; adds dc ymm3_1 ymm3_1 ymm4_1;
adds dc ymm3_2 ymm3_2 ymm4_2; adds dc ymm3_3 ymm3_3 ymm4_3;
adds dc ymm3_4 ymm3_4 ymm4_4; adds dc ymm3_5 ymm3_5 ymm4_5;
adds dc ymm3_6 ymm3_6 ymm4_6; adds dc ymm3_7 ymm3_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559a82 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559a85 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x555555559a89 *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559a8c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdda8; Value = 0xc19bf1f49bdc06a7; PC = 0x555555559a90 *)
adds dc ebx ebx L0x7fffffffdda8;
(* and    %r10d,%r12d                              #! PC = 0x555555559a97 *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x555555559a9a *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559aa0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559aa5 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x555555559aab *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aaf *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559ab3 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x555555559ab7 *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x555555559abc *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559abf *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559ac5 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aca *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559ace *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559ad1 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559ad4 *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x555555559ad8 *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559ade *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559ae2 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm3,%ymm7                       #! PC = 0x555555559ae5 *)
mov sh_0 ymm3_0; mov sh_1 ymm3_0; mov sh_2 ymm3_1; mov sh_3 ymm3_1;
mov sh_4 ymm3_4; mov sh_5 ymm3_4; mov sh_6 ymm3_5; mov sh_7 ymm3_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x555555559aea *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559af0 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559af6 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559afa *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x555555559aff *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b02 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x555555559b05 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559b07 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b0c *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x555555559b0f *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x555555559b12 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b15 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffddac; Value = 0x72be5d74c19bf1f4; PC = 0x555555559b19 *)
adds dc eax eax L0x7fffffffddac;
(* and    %r9d,%r12d                               #! PC = 0x555555559b20 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x555555559b23 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559b29 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x555555559b2e *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x555555559b34 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b38 *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b3c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x555555559b40 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x555555559b45 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x555555559b48 *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559b4e *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b53 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559b57 *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x555555559b5a *)
mov edi ebx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559b5c *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559b60 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559b66 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x555555559b6a *)
xor edi@uint32 edi ecx;
(* vpaddd 0x60(%rbp),%ymm3,%ymm6                   #! EA = L0x555555556ee0; Value = 0xd5a79147c6e00bf3; PC = 0x555555559b6c *)
adds dc ymm6_0 ymm3_0 L0x555555556ee0; adds dc ymm6_1 ymm3_1 L0x555555556ee4;
adds dc ymm6_2 ymm3_2 L0x555555556ee8; adds dc ymm6_3 ymm3_3 L0x555555556eec;
adds dc ymm6_4 ymm3_4 L0x555555556ef0; adds dc ymm6_5 ymm3_5 L0x555555556ef4;
adds dc ymm6_6 ymm3_6 L0x555555556ef8; adds dc ymm6_7 ymm3_7 L0x555555556efc;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559b71 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x555555559b77 *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559b7d *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559b81 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b84 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x555555559b87 *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b8a *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559b8d *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559b91 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdd20; PC = 0x555555559b94 *)
mov L0x7fffffffdd20 ymm6_0; mov L0x7fffffffdd24 ymm6_1;
mov L0x7fffffffdd28 ymm6_2; mov L0x7fffffffdd2c ymm6_3;
mov L0x7fffffffdd30 ymm6_4; mov L0x7fffffffdd34 ymm6_5;
mov L0x7fffffffdd38 ymm6_6; mov L0x7fffffffdd3c ymm6_7;
(* lea    0x80(%rbp),%rbp                          #! PC = 0x555555559b9a *)
(* lea %%EA %rbp *)
nop;
(* cmpb   $0x0,0x3(%rbp)                           #! EA = L0x555555556f03; PC = 0x555555559ba1 *)
(* cmpb 0x0 L0x555555556f03 *)
nop;
(* #jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! PC = 0x555555559ba5 *)
#jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! 0x555555559ba5 = 0x555555559ba5;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x5555555592e0 *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdcb8; PC = 0x5555555592e5 *)
(* push L0x7fffffffdcb8 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x5555555592e9 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm4                 #! PC = 0x5555555592ee *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffdd40; Value = 0x49a73ee433a5d791; PC = 0x5555555592f4 *)
adds dc r11d r11d L0x7fffffffdd40;
(* and    %r8d,%r12d                               #! PC = 0x5555555592fc *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x5555555592ff *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm7                 #! PC = 0x555555559305 *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x55555555930b *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x555555559311 *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559315 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559319 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555931e *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559323 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559326 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555932c *)
adds dc ymm0_0 ymm0_0 ymm7_0; adds dc ymm0_1 ymm0_1 ymm7_1;
adds dc ymm0_2 ymm0_2 ymm7_2; adds dc ymm0_3 ymm0_3 ymm7_3;
adds dc ymm0_4 ymm0_4 ymm7_4; adds dc ymm0_5 ymm0_5 ymm7_5;
adds dc ymm0_6 ymm0_6 ymm7_6; adds dc ymm0_7 ymm0_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559330 *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559334 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559337 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x55555555933a *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555933f *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x555555559345 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x555555559349 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x55555555934c *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x555555559351 *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x555555559357 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x55555555935d *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x555555559361 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x555555559365 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559368 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x55555555936b *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm3,%ymm7                       #! PC = 0x55555555936d *)
mov sh_0 ymm3_2; mov sh_1 ymm3_2; mov sh_2 ymm3_3; mov sh_3 ymm3_3;
mov sh_4 ymm3_6; mov sh_5 ymm3_6; mov sh_6 ymm3_7; mov sh_7 ymm3_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559372 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x555555559375 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x555555559379 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x55555555937c *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffdd44; Value = 0xef270dae49a73ee4; PC = 0x555555559381 *)
adds dc r10d r10d L0x7fffffffdd44;
(* and    %edx,%r12d                               #! PC = 0x555555559389 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x55555555938c *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559392 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x555555559396 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x55555555939c *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593a0 *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555593a4 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x5555555593a9 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x5555555593ae *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x5555555593b1 *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555593b7 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593bb *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555593bf *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x5555555593c2 *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555593c5 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x5555555593ca *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x5555555593d0 *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x5555555593d4 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555593d6 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x5555555593da *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x5555555593e0 *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x5555555593e6 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555593ea *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x5555555593ef *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x5555555593f2 *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x5555555593f5 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm0,%ymm0                        #! PC = 0x5555555593f8 *)
adds dc ymm0_0 ymm0_0 ymm4_0; adds dc ymm0_1 ymm0_1 ymm4_1;
adds dc ymm0_2 ymm0_2 ymm4_2; adds dc ymm0_3 ymm0_3 ymm4_3;
adds dc ymm0_4 ymm0_4 ymm4_4; adds dc ymm0_5 ymm0_5 ymm4_5;
adds dc ymm0_6 ymm0_6 ymm4_6; adds dc ymm0_7 ymm0_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555593fc *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x5555555593ff *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559403 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559406 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffdd48; Value = 0xa66c6dcfef270dae; PC = 0x55555555940a *)
adds dc r9d r9d L0x7fffffffdd48;
(* and    %ecx,%r12d                               #! PC = 0x555555559412 *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559415 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x55555555941b *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x555555559420 *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559426 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x55555555942a *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555942e *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x555555559432 *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559437 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x55555555943a *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559440 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559445 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559449 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x55555555944c *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x55555555944f *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x555555559453 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x555555559459 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x55555555945d *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm0,%ymm7                       #! PC = 0x555555559460 *)
mov sh_0 ymm0_0; mov sh_1 ymm0_0; mov sh_2 ymm0_1; mov sh_3 ymm0_1;
mov sh_4 ymm0_4; mov sh_5 ymm0_4; mov sh_6 ymm0_5; mov sh_7 ymm0_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x555555559465 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x55555555946b *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x555555559471 *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559475 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x55555555947a *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x55555555947d *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x555555559480 *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559483 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559488 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x55555555948b *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x55555555948f *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559492 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffdd4c; Value = 0xe49b69c1a66c6dcf; PC = 0x555555559496 *)
adds dc r8d r8d L0x7fffffffdd4c;
(* and    %ebx,%r12d                               #! PC = 0x55555555949e *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555594a1 *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555594a7 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x5555555594ac *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x5555555594b2 *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594b6 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555594ba *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x5555555594be *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x5555555594c3 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x5555555594c6 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555594cc *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594d1 *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555594d5 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x5555555594d8 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x5555555594db *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x5555555594df *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x5555555594e5 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x5555555594e9 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x0(%rbp),%ymm0,%ymm6                    #! EA = L0x555555556f00; Value = 0x2e1b213827b70a85; PC = 0x5555555594ec *)
adds dc ymm6_0 ymm0_0 L0x555555556f00; adds dc ymm6_1 ymm0_1 L0x555555556f04;
adds dc ymm6_2 ymm0_2 L0x555555556f08; adds dc ymm6_3 ymm0_3 L0x555555556f0c;
adds dc ymm6_4 ymm0_4 L0x555555556f10; adds dc ymm6_5 ymm0_5 L0x555555556f14;
adds dc ymm6_6 ymm0_6 L0x555555556f18; adds dc ymm6_7 ymm0_7 L0x555555556f1c;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x5555555594f1 *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x5555555594f7 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x5555555594fd *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x555555559501 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559504 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559507 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555950a *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555950d *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x555555559511 *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdcc0; PC = 0x555555559514 *)
mov L0x7fffffffdcc0 ymm6_0; mov L0x7fffffffdcc4 ymm6_1;
mov L0x7fffffffdcc8 ymm6_2; mov L0x7fffffffdccc ymm6_3;
mov L0x7fffffffdcd0 ymm6_4; mov L0x7fffffffdcd4 ymm6_5;
mov L0x7fffffffdcd8 ymm6_6; mov L0x7fffffffdcdc ymm6_7;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm4                 #! PC = 0x555555559519 *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdd60; Value = 0x6a15ab41c827d974; PC = 0x55555555951f *)
adds dc edx edx L0x7fffffffdd60;
(* and    %eax,%r12d                               #! PC = 0x555555559526 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559529 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm7                 #! PC = 0x55555555952f *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559535 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x55555555953b *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555953f *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559543 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x555555559548 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x55555555954d *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x555555559550 *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm1,%ymm1                        #! PC = 0x555555559556 *)
adds dc ymm1_0 ymm1_0 ymm7_0; adds dc ymm1_1 ymm1_1 ymm7_1;
adds dc ymm1_2 ymm1_2 ymm7_2; adds dc ymm1_3 ymm1_3 ymm7_3;
adds dc ymm1_4 ymm1_4 ymm7_4; adds dc ymm1_5 ymm1_5 ymm7_5;
adds dc ymm1_6 ymm1_6 ymm7_6; adds dc ymm1_7 ymm1_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555955a *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555955e *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x555555559561 *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559564 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x555555559569 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x55555555956f *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x555555559573 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x555555559576 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x55555555957b *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x555555559581 *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x555555559587 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x55555555958b *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x55555555958f *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559592 *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x555555559595 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm0,%ymm7                       #! PC = 0x555555559598 *)
mov sh_0 ymm0_2; mov sh_1 ymm0_2; mov sh_2 ymm0_3; mov sh_3 ymm0_3;
mov sh_4 ymm0_6; mov sh_5 ymm0_6; mov sh_6 ymm0_7; mov sh_7 ymm0_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x55555555959d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555595a0 *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x5555555595a3 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555595a6 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdd64; Value = 0xdfb59c4f6a15ab41; PC = 0x5555555595ab *)
adds dc ecx ecx L0x7fffffffdd64;
(* and    %r11d,%r12d                              #! PC = 0x5555555595b2 *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x5555555595b5 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595bb *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x5555555595bf *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x5555555595c5 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595c9 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555595cd *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x5555555595d2 *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x5555555595d7 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x5555555595da *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555595e0 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595e4 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555595e8 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x5555555595eb *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555595ed *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x5555555595f2 *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x5555555595f8 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x5555555595fc *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595ff *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559603 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559609 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x55555555960f *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559613 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559618 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555961b *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x55555555961e *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm1,%ymm1                        #! PC = 0x555555559621 *)
adds dc ymm1_0 ymm1_0 ymm4_0; adds dc ymm1_1 ymm1_1 ymm4_1;
adds dc ymm1_2 ymm1_2 ymm4_2; adds dc ymm1_3 ymm1_3 ymm4_3;
adds dc ymm1_4 ymm1_4 ymm4_4; adds dc ymm1_5 ymm1_5 ymm4_5;
adds dc ymm1_6 ymm1_6 ymm4_6; adds dc ymm1_7 ymm1_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559625 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559628 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x55555555962c *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555962f *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdd68; Value = 0x7da27b17dfb59c4f; PC = 0x555555559633 *)
adds dc ebx ebx L0x7fffffffdd68;
(* and    %r10d,%r12d                              #! PC = 0x55555555963a *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x55555555963d *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559643 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559648 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x55555555964e *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559652 *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559656 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x55555555965a *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x55555555965f *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559662 *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559668 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x55555555966d *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559671 *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559674 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x555555559677 *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x55555555967b *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559681 *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559685 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm1,%ymm7                       #! PC = 0x555555559688 *)
mov sh_0 ymm1_0; mov sh_1 ymm1_0; mov sh_2 ymm1_1; mov sh_3 ymm1_1;
mov sh_4 ymm1_4; mov sh_5 ymm1_4; mov sh_6 ymm1_5; mov sh_7 ymm1_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x55555555968d *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559693 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559699 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x55555555969d *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555596a2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555596a5 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x5555555596a8 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555596aa *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555596af *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x5555555596b2 *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x5555555596b5 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596b8 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffdd6c; Value = 0x2de92c6f7da27b17; PC = 0x5555555596bc *)
adds dc eax eax L0x7fffffffdd6c;
(* and    %r9d,%r12d                               #! PC = 0x5555555596c3 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x5555555596c6 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555596cc *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x5555555596d1 *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x5555555596d7 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596db *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596df *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x5555555596e3 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x5555555596e8 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x5555555596eb *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555596f1 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596f6 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555596fa *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x5555555596fd *)
mov edi ebx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x5555555596ff *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559703 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559709 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x55555555970d *)
xor edi@uint32 edi ecx;
(* vpaddd 0x20(%rbp),%ymm1,%ymm6                   #! EA = L0x555555556f20; Value = 0x766a0abb650a7354; PC = 0x55555555970f *)
adds dc ymm6_0 ymm1_0 L0x555555556f20; adds dc ymm6_1 ymm1_1 L0x555555556f24;
adds dc ymm6_2 ymm1_2 L0x555555556f28; adds dc ymm6_3 ymm1_3 L0x555555556f2c;
adds dc ymm6_4 ymm1_4 L0x555555556f30; adds dc ymm6_5 ymm1_5 L0x555555556f34;
adds dc ymm6_6 ymm1_6 L0x555555556f38; adds dc ymm6_7 ymm1_7 L0x555555556f3c;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559714 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x55555555971a *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559720 *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559724 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559727 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x55555555972a *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x55555555972d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559730 *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559734 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdce0; PC = 0x555555559737 *)
mov L0x7fffffffdce0 ymm6_0; mov L0x7fffffffdce4 ymm6_1;
mov L0x7fffffffdce8 ymm6_2; mov L0x7fffffffdcec ymm6_3;
mov L0x7fffffffdcf0 ymm6_4; mov L0x7fffffffdcf4 ymm6_5;
mov L0x7fffffffdcf8 ymm6_6; mov L0x7fffffffdcfc ymm6_7;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x55555555973d *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdc78; PC = 0x555555559742 *)
(* push L0x7fffffffdc78 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x555555559746 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm4                 #! PC = 0x55555555974b *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffdd00; Value = 0xeeefc012d97eb98e; PC = 0x555555559751 *)
adds dc r11d r11d L0x7fffffffdd00;
(* and    %r8d,%r12d                               #! PC = 0x555555559759 *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x55555555975c *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm7                 #! PC = 0x555555559762 *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x555555559768 *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x55555555976e *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559772 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559776 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555977b *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559780 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559783 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm2,%ymm2                        #! PC = 0x555555559789 *)
adds dc ymm2_0 ymm2_0 ymm7_0; adds dc ymm2_1 ymm2_1 ymm7_1;
adds dc ymm2_2 ymm2_2 ymm7_2; adds dc ymm2_3 ymm2_3 ymm7_3;
adds dc ymm2_4 ymm2_4 ymm7_4; adds dc ymm2_5 ymm2_5 ymm7_5;
adds dc ymm2_6 ymm2_6 ymm7_6; adds dc ymm2_7 ymm2_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x55555555978d *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559791 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559794 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559797 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555979c *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x5555555597a2 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x5555555597a6 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555597a9 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x5555555597ae *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x5555555597b4 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x5555555597ba *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555597be *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555597c2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555597c5 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x5555555597c8 *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm1,%ymm7                       #! PC = 0x5555555597ca *)
mov sh_0 ymm1_2; mov sh_1 ymm1_2; mov sh_2 ymm1_3; mov sh_3 ymm1_3;
mov sh_4 ymm1_6; mov sh_5 ymm1_6; mov sh_6 ymm1_7; mov sh_7 ymm1_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555597cf *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x5555555597d2 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x5555555597d6 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555597d9 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffdd04; Value = 0x6b6cec5deeefc012; PC = 0x5555555597de *)
adds dc r10d r10d L0x7fffffffdd04;
(* and    %edx,%r12d                               #! PC = 0x5555555597e6 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x5555555597e9 *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555597ef *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x5555555597f3 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x5555555597f9 *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555597fd *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559801 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x555555559806 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x55555555980b *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x55555555980e *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559814 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559818 *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555981c *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x55555555981f *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559822 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x555555559827 *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x55555555982d *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x555555559831 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559833 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x555555559837 *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x55555555983d *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x555555559843 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559847 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x55555555984c *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555984f *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x555555559852 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm2,%ymm2                        #! PC = 0x555555559855 *)
adds dc ymm2_0 ymm2_0 ymm4_0; adds dc ymm2_1 ymm2_1 ymm4_1;
adds dc ymm2_2 ymm2_2 ymm4_2; adds dc ymm2_3 ymm2_3 ymm4_3;
adds dc ymm2_4 ymm2_4 ymm4_4; adds dc ymm2_5 ymm2_5 ymm4_5;
adds dc ymm2_6 ymm2_6 ymm4_6; adds dc ymm2_7 ymm2_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559859 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x55555555985c *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559860 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559863 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffdd08; Value = 0x9d8fd1c36b6cec5d; PC = 0x555555559867 *)
adds dc r9d r9d L0x7fffffffdd08;
(* and    %ecx,%r12d                               #! PC = 0x55555555986f *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559872 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559878 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x55555555987d *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559883 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559887 *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555988b *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x55555555988f *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559894 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x555555559897 *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555989d *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x5555555598a2 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555598a6 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x5555555598a9 *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x5555555598ac *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x5555555598b0 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x5555555598b6 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x5555555598ba *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm2,%ymm7                       #! PC = 0x5555555598bd *)
mov sh_0 ymm2_0; mov sh_1 ymm2_0; mov sh_2 ymm2_1; mov sh_3 ymm2_1;
mov sh_4 ymm2_4; mov sh_5 ymm2_4; mov sh_6 ymm2_5; mov sh_7 ymm2_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x5555555598c2 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x5555555598c8 *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x5555555598ce *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555598d2 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555598d7 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555598da *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x5555555598dd *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555598e0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555598e5 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x5555555598e8 *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x5555555598ec *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555598ef *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffdd0c; Value = 0x983e51529d8fd1c3; PC = 0x5555555598f3 *)
adds dc r8d r8d L0x7fffffffdd0c;
(* and    %ebx,%r12d                               #! PC = 0x5555555598fb *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555598fe *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559904 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x555555559909 *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x55555555990f *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x555555559913 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559917 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x55555555991b *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x555555559920 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x555555559923 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559929 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x55555555992e *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559932 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x555555559935 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x555555559938 *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x55555555993c *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x555555559942 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x555555559946 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x40(%rbp),%ymm2,%ymm6                   #! EA = L0x555555556f40; Value = 0xa81a664ba2bfe8a1; PC = 0x555555559949 *)
adds dc ymm6_0 ymm2_0 L0x555555556f40; adds dc ymm6_1 ymm2_1 L0x555555556f44;
adds dc ymm6_2 ymm2_2 L0x555555556f48; adds dc ymm6_3 ymm2_3 L0x555555556f4c;
adds dc ymm6_4 ymm2_4 L0x555555556f50; adds dc ymm6_5 ymm2_5 L0x555555556f54;
adds dc ymm6_6 ymm2_6 L0x555555556f58; adds dc ymm6_7 ymm2_7 L0x555555556f5c;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x55555555994e *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x555555559954 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x55555555995a *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x55555555995e *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559961 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559964 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559967 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555996a *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x55555555996e *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdc80; PC = 0x555555559971 *)
mov L0x7fffffffdc80 ymm6_0; mov L0x7fffffffdc84 ymm6_1;
mov L0x7fffffffdc88 ymm6_2; mov L0x7fffffffdc8c ymm6_3;
mov L0x7fffffffdc90 ymm6_4; mov L0x7fffffffdc94 ymm6_5;
mov L0x7fffffffdc98 ymm6_6; mov L0x7fffffffdc9c ymm6_7;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm4                 #! PC = 0x555555559976 *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdd20; Value = 0x3ba2fd03c177e332; PC = 0x55555555997c *)
adds dc edx edx L0x7fffffffdd20;
(* and    %eax,%r12d                               #! PC = 0x555555559983 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559986 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm7                 #! PC = 0x55555555998c *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559992 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x555555559998 *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555999c *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x5555555599a0 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x5555555599a5 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x5555555599aa *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x5555555599ad *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm3,%ymm3                        #! PC = 0x5555555599b3 *)
adds dc ymm3_0 ymm3_0 ymm7_0; adds dc ymm3_1 ymm3_1 ymm7_1;
adds dc ymm3_2 ymm3_2 ymm7_2; adds dc ymm3_3 ymm3_3 ymm7_3;
adds dc ymm3_4 ymm3_4 ymm7_4; adds dc ymm3_5 ymm3_5 ymm7_5;
adds dc ymm3_6 ymm3_6 ymm7_6; adds dc ymm3_7 ymm3_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x5555555599b7 *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555599bb *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x5555555599be *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x5555555599c1 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x5555555599c6 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x5555555599cc *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x5555555599d0 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555599d3 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x5555555599d8 *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x5555555599de *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x5555555599e4 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555599e8 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555599ec *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555599ef *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x5555555599f2 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm2,%ymm7                       #! PC = 0x5555555599f5 *)
mov sh_0 ymm2_2; mov sh_1 ymm2_2; mov sh_2 ymm2_3; mov sh_3 ymm2_3;
mov sh_4 ymm2_6; mov sh_5 ymm2_6; mov sh_6 ymm2_7; mov sh_7 ymm2_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555599fa *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555599fd *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x555555559a00 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x555555559a03 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdd24; Value = 0x1ed9fd8b3ba2fd03; PC = 0x555555559a08 *)
adds dc ecx ecx L0x7fffffffdd24;
(* and    %r11d,%r12d                              #! PC = 0x555555559a0f *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x555555559a12 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a18 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x555555559a1c *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x555555559a22 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a26 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559a2a *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x555555559a2f *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x555555559a34 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x555555559a37 *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559a3d *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a41 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559a45 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x555555559a48 *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559a4a *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x555555559a4f *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x555555559a55 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x555555559a59 *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a5c *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559a60 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559a66 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x555555559a6c *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559a70 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559a75 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559a78 *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x555555559a7b *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm3,%ymm3                        #! PC = 0x555555559a7e *)
adds dc ymm3_0 ymm3_0 ymm4_0; adds dc ymm3_1 ymm3_1 ymm4_1;
adds dc ymm3_2 ymm3_2 ymm4_2; adds dc ymm3_3 ymm3_3 ymm4_3;
adds dc ymm3_4 ymm3_4 ymm4_4; adds dc ymm3_5 ymm3_5 ymm4_5;
adds dc ymm3_6 ymm3_6 ymm4_6; adds dc ymm3_7 ymm3_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559a82 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559a85 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x555555559a89 *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559a8c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdd28; Value = 0x60259d5e1ed9fd8b; PC = 0x555555559a90 *)
adds dc ebx ebx L0x7fffffffdd28;
(* and    %r10d,%r12d                              #! PC = 0x555555559a97 *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x555555559a9a *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559aa0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559aa5 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x555555559aab *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aaf *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559ab3 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x555555559ab7 *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x555555559abc *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559abf *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559ac5 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aca *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559ace *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559ad1 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559ad4 *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x555555559ad8 *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559ade *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559ae2 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm3,%ymm7                       #! PC = 0x555555559ae5 *)
mov sh_0 ymm3_0; mov sh_1 ymm3_0; mov sh_2 ymm3_1; mov sh_3 ymm3_1;
mov sh_4 ymm3_4; mov sh_5 ymm3_4; mov sh_6 ymm3_5; mov sh_7 ymm3_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x555555559aea *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559af0 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559af6 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559afa *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x555555559aff *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b02 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x555555559b05 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559b07 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b0c *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x555555559b0f *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x555555559b12 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b15 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffdd2c; Value = 0xc6e00bf360259d5e; PC = 0x555555559b19 *)
adds dc eax eax L0x7fffffffdd2c;
(* and    %r9d,%r12d                               #! PC = 0x555555559b20 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x555555559b23 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559b29 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x555555559b2e *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x555555559b34 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b38 *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b3c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x555555559b40 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x555555559b45 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x555555559b48 *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559b4e *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b53 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559b57 *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x555555559b5a *)
mov edi ebx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559b5c *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559b60 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559b66 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x555555559b6a *)
xor edi@uint32 edi ecx;
(* vpaddd 0x60(%rbp),%ymm3,%ymm6                   #! EA = L0x555555556f60; Value = 0xd6990624d192e819; PC = 0x555555559b6c *)
adds dc ymm6_0 ymm3_0 L0x555555556f60; adds dc ymm6_1 ymm3_1 L0x555555556f64;
adds dc ymm6_2 ymm3_2 L0x555555556f68; adds dc ymm6_3 ymm3_3 L0x555555556f6c;
adds dc ymm6_4 ymm3_4 L0x555555556f70; adds dc ymm6_5 ymm3_5 L0x555555556f74;
adds dc ymm6_6 ymm3_6 L0x555555556f78; adds dc ymm6_7 ymm3_7 L0x555555556f7c;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559b71 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x555555559b77 *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559b7d *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559b81 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b84 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x555555559b87 *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b8a *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559b8d *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559b91 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdca0; PC = 0x555555559b94 *)
mov L0x7fffffffdca0 ymm6_0; mov L0x7fffffffdca4 ymm6_1;
mov L0x7fffffffdca8 ymm6_2; mov L0x7fffffffdcac ymm6_3;
mov L0x7fffffffdcb0 ymm6_4; mov L0x7fffffffdcb4 ymm6_5;
mov L0x7fffffffdcb8 ymm6_6; mov L0x7fffffffdcbc ymm6_7;
(* lea    0x80(%rbp),%rbp                          #! PC = 0x555555559b9a *)
(* lea %%EA %rbp *)
nop;
(* cmpb   $0x0,0x3(%rbp)                           #! EA = L0x555555556f83; PC = 0x555555559ba1 *)
(* cmpb 0x0 L0x555555556f83 *)
nop;
(* #jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! PC = 0x555555559ba5 *)
#jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! 0x555555559ba5 = 0x555555559ba5;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x5555555592e0 *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdc38; PC = 0x5555555592e5 *)
(* push L0x7fffffffdc38 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x5555555592e9 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm4                 #! PC = 0x5555555592ee *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffdcc0; Value = 0x8cade1c386351859; PC = 0x5555555592f4 *)
adds dc r11d r11d L0x7fffffffdcc0;
(* and    %r8d,%r12d                               #! PC = 0x5555555592fc *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x5555555592ff *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm7                 #! PC = 0x555555559305 *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x55555555930b *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x555555559311 *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559315 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559319 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555931e *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559323 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559326 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm0,%ymm0                        #! PC = 0x55555555932c *)
adds dc ymm0_0 ymm0_0 ymm7_0; adds dc ymm0_1 ymm0_1 ymm7_1;
adds dc ymm0_2 ymm0_2 ymm7_2; adds dc ymm0_3 ymm0_3 ymm7_3;
adds dc ymm0_4 ymm0_4 ymm7_4; adds dc ymm0_5 ymm0_5 ymm7_5;
adds dc ymm0_6 ymm0_6 ymm7_6; adds dc ymm0_7 ymm0_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559330 *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559334 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559337 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x55555555933a *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555933f *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x555555559345 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x555555559349 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x55555555934c *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x555555559351 *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x555555559357 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x55555555935d *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x555555559361 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x555555559365 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559368 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x55555555936b *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm3,%ymm7                       #! PC = 0x55555555936d *)
mov sh_0 ymm3_2; mov sh_1 ymm3_2; mov sh_2 ymm3_3; mov sh_3 ymm3_3;
mov sh_4 ymm3_6; mov sh_5 ymm3_6; mov sh_6 ymm3_7; mov sh_7 ymm3_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559372 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x555555559375 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x555555559379 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x55555555937c *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffdcc4; Value = 0xb65f11e28cade1c3; PC = 0x555555559381 *)
adds dc r10d r10d L0x7fffffffdcc4;
(* and    %edx,%r12d                               #! PC = 0x555555559389 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x55555555938c *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559392 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x555555559396 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x55555555939c *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593a0 *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555593a4 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x5555555593a9 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x5555555593ae *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x5555555593b1 *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555593b7 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555593bb *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555593bf *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x5555555593c2 *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555593c5 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x5555555593ca *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x5555555593d0 *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x5555555593d4 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555593d6 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x5555555593da *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x5555555593e0 *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x5555555593e6 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555593ea *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x5555555593ef *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x5555555593f2 *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x5555555593f5 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm0,%ymm0                        #! PC = 0x5555555593f8 *)
adds dc ymm0_0 ymm0_0 ymm4_0; adds dc ymm0_1 ymm0_1 ymm4_1;
adds dc ymm0_2 ymm0_2 ymm4_2; adds dc ymm0_3 ymm0_3 ymm4_3;
adds dc ymm0_4 ymm0_4 ymm4_4; adds dc ymm0_5 ymm0_5 ymm4_5;
adds dc ymm0_6 ymm0_6 ymm4_6; adds dc ymm0_7 ymm0_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555593fc *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x5555555593ff *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559403 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559406 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffdcc8; Value = 0xbba5def5b65f11e2; PC = 0x55555555940a *)
adds dc r9d r9d L0x7fffffffdcc8;
(* and    %ecx,%r12d                               #! PC = 0x555555559412 *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559415 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x55555555941b *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x555555559420 *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559426 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x55555555942a *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555942e *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x555555559432 *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559437 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x55555555943a *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559440 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559445 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559449 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x55555555944c *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x55555555944f *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x555555559453 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x555555559459 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x55555555945d *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm0,%ymm7                       #! PC = 0x555555559460 *)
mov sh_0 ymm0_0; mov sh_1 ymm0_0; mov sh_2 ymm0_1; mov sh_3 ymm0_1;
mov sh_4 ymm0_4; mov sh_5 ymm0_4; mov sh_6 ymm0_5; mov sh_7 ymm0_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x555555559465 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x55555555946b *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x555555559471 *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559475 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x55555555947a *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x55555555947d *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x555555559480 *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559483 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559488 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x55555555948b *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x55555555948f *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559492 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffdccc; Value = 0x27b70a85bba5def5; PC = 0x555555559496 *)
adds dc r8d r8d L0x7fffffffdccc;
(* and    %ebx,%r12d                               #! PC = 0x55555555949e *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555594a1 *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555594a7 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x5555555594ac *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x5555555594b2 *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594b6 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555594ba *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x5555555594be *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x5555555594c3 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x5555555594c6 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555594cc *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x5555555594d1 *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555594d5 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x5555555594d8 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm0,%ymm0                        #! PC = 0x5555555594db *)
adds dc ymm0_0 ymm0_0 ymm6_0; adds dc ymm0_1 ymm0_1 ymm6_1;
adds dc ymm0_2 ymm0_2 ymm6_2; adds dc ymm0_3 ymm0_3 ymm6_3;
adds dc ymm0_4 ymm0_4 ymm6_4; adds dc ymm0_5 ymm0_5 ymm6_5;
adds dc ymm0_6 ymm0_6 ymm6_6; adds dc ymm0_7 ymm0_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x5555555594df *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x5555555594e5 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x5555555594e9 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x0(%rbp),%ymm0,%ymm6                    #! EA = L0x555555556f80; Value = 0x1e376c0819a4c116; PC = 0x5555555594ec *)
adds dc ymm6_0 ymm0_0 L0x555555556f80; adds dc ymm6_1 ymm0_1 L0x555555556f84;
adds dc ymm6_2 ymm0_2 L0x555555556f88; adds dc ymm6_3 ymm0_3 L0x555555556f8c;
adds dc ymm6_4 ymm0_4 L0x555555556f90; adds dc ymm6_5 ymm0_5 L0x555555556f94;
adds dc ymm6_6 ymm0_6 L0x555555556f98; adds dc ymm6_7 ymm0_7 L0x555555556f9c;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x5555555594f1 *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x5555555594f7 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x5555555594fd *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x555555559501 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559504 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559507 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555950a *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555950d *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x555555559511 *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdc40; PC = 0x555555559514 *)
mov L0x7fffffffdc40 ymm6_0; mov L0x7fffffffdc44 ymm6_1;
mov L0x7fffffffdc48 ymm6_2; mov L0x7fffffffdc4c ymm6_3;
mov L0x7fffffffdc50 ymm6_4; mov L0x7fffffffdc54 ymm6_5;
mov L0x7fffffffdc58 ymm6_6; mov L0x7fffffffdc5c ymm6_7;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm4                 #! PC = 0x555555559519 *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdce0; Value = 0xcceca546cf48e2a3; PC = 0x55555555951f *)
adds dc edx edx L0x7fffffffdce0;
(* and    %eax,%r12d                               #! PC = 0x555555559526 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559529 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm7                 #! PC = 0x55555555952f *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559535 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x55555555953b *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555953f *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559543 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x555555559548 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x55555555954d *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x555555559550 *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm1,%ymm1                        #! PC = 0x555555559556 *)
adds dc ymm1_0 ymm1_0 ymm7_0; adds dc ymm1_1 ymm1_1 ymm7_1;
adds dc ymm1_2 ymm1_2 ymm7_2; adds dc ymm1_3 ymm1_3 ymm7_3;
adds dc ymm1_4 ymm1_4 ymm7_4; adds dc ymm1_5 ymm1_5 ymm7_5;
adds dc ymm1_6 ymm1_6 ymm7_6; adds dc ymm1_7 ymm1_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555955a *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555955e *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x555555559561 *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559564 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x555555559569 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x55555555956f *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x555555559573 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x555555559576 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x55555555957b *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x555555559581 *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x555555559587 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x55555555958b *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x55555555958f *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559592 *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x555555559595 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm0,%ymm7                       #! PC = 0x555555559598 *)
mov sh_0 ymm0_2; mov sh_1 ymm0_2; mov sh_2 ymm0_3; mov sh_3 ymm0_3;
mov sh_4 ymm0_6; mov sh_5 ymm0_6; mov sh_6 ymm0_7; mov sh_7 ymm0_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x55555555959d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555595a0 *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x5555555595a3 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555595a6 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdce4; Value = 0x91701564cceca546; PC = 0x5555555595ab *)
adds dc ecx ecx L0x7fffffffdce4;
(* and    %r11d,%r12d                              #! PC = 0x5555555595b2 *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x5555555595b5 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595bb *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x5555555595bf *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x5555555595c5 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595c9 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x5555555595cd *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x5555555595d2 *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x5555555595d7 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x5555555595da *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x5555555595e0 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x5555555595e4 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555595e8 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x5555555595eb *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555595ed *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x5555555595f2 *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x5555555595f8 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x5555555595fc *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555595ff *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559603 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559609 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x55555555960f *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559613 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559618 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555961b *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x55555555961e *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm1,%ymm1                        #! PC = 0x555555559621 *)
adds dc ymm1_0 ymm1_0 ymm4_0; adds dc ymm1_1 ymm1_1 ymm4_1;
adds dc ymm1_2 ymm1_2 ymm4_2; adds dc ymm1_3 ymm1_3 ymm4_3;
adds dc ymm1_4 ymm1_4 ymm4_4; adds dc ymm1_5 ymm1_5 ymm4_5;
adds dc ymm1_6 ymm1_6 ymm4_6; adds dc ymm1_7 ymm1_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559625 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559628 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x55555555962c *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555962f *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdce8; Value = 0x80402b5491701564; PC = 0x555555559633 *)
adds dc ebx ebx L0x7fffffffdce8;
(* and    %r10d,%r12d                              #! PC = 0x55555555963a *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x55555555963d *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559643 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559648 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x55555555964e *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559652 *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559656 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x55555555965a *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x55555555965f *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559662 *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559668 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x55555555966d *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559671 *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559674 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x555555559677 *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x55555555967b *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559681 *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559685 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm1,%ymm7                       #! PC = 0x555555559688 *)
mov sh_0 ymm1_0; mov sh_1 ymm1_0; mov sh_2 ymm1_1; mov sh_3 ymm1_1;
mov sh_4 ymm1_4; mov sh_5 ymm1_4; mov sh_6 ymm1_5; mov sh_7 ymm1_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x55555555968d *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559693 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559699 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x55555555969d *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555596a2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555596a5 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x5555555596a8 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555596aa *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555596af *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x5555555596b2 *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x5555555596b5 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596b8 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffdcec; Value = 0x650a735480402b54; PC = 0x5555555596bc *)
adds dc eax eax L0x7fffffffdcec;
(* and    %r9d,%r12d                               #! PC = 0x5555555596c3 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x5555555596c6 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x5555555596cc *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x5555555596d1 *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x5555555596d7 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596db *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555596df *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x5555555596e3 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x5555555596e8 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x5555555596eb *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x5555555596f1 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x5555555596f6 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555596fa *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x5555555596fd *)
mov edi ebx;
(* vpaddd %ymm6,%ymm1,%ymm1                        #! PC = 0x5555555596ff *)
adds dc ymm1_0 ymm1_0 ymm6_0; adds dc ymm1_1 ymm1_1 ymm6_1;
adds dc ymm1_2 ymm1_2 ymm6_2; adds dc ymm1_3 ymm1_3 ymm6_3;
adds dc ymm1_4 ymm1_4 ymm6_4; adds dc ymm1_5 ymm1_5 ymm6_5;
adds dc ymm1_6 ymm1_6 ymm6_6; adds dc ymm1_7 ymm1_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559703 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559709 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x55555555970d *)
xor edi@uint32 edi ecx;
(* vpaddd 0x20(%rbp),%ymm1,%ymm6                   #! EA = L0x555555556fa0; Value = 0x4ed8aa4a391c0cb3; PC = 0x55555555970f *)
adds dc ymm6_0 ymm1_0 L0x555555556fa0; adds dc ymm6_1 ymm1_1 L0x555555556fa4;
adds dc ymm6_2 ymm1_2 L0x555555556fa8; adds dc ymm6_3 ymm1_3 L0x555555556fac;
adds dc ymm6_4 ymm1_4 L0x555555556fb0; adds dc ymm6_5 ymm1_5 L0x555555556fb4;
adds dc ymm6_6 ymm1_6 L0x555555556fb8; adds dc ymm6_7 ymm1_7 L0x555555556fbc;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559714 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x55555555971a *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559720 *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559724 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559727 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x55555555972a *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x55555555972d *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559730 *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559734 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdc60; PC = 0x555555559737 *)
mov L0x7fffffffdc60 ymm6_0; mov L0x7fffffffdc64 ymm6_1;
mov L0x7fffffffdc68 ymm6_2; mov L0x7fffffffdc6c ymm6_3;
mov L0x7fffffffdc70 ymm6_4; mov L0x7fffffffdc74 ymm6_5;
mov L0x7fffffffdc78 ymm6_6; mov L0x7fffffffdc7c ymm6_7;
(* lea    -0x40(%rsp),%rsp                         #! PC = 0x55555555973d *)
(* lea %%EA %rsp *)
nop;
(* push   0x38(%rsp)                               #! EA = L0x7fffffffdbf8; PC = 0x555555559742 *)
(* push L0x7fffffffdbf8 *)
nop;
(* lea    0x8(%rsp),%rsp                           #! PC = 0x555555559746 *)
(* lea %%EA %rsp *)
nop;
(* vpalignr $0x4,%ymm2,%ymm3,%ymm4                 #! PC = 0x55555555974b *)
mov al_0 ymm2_1; mov al_1 ymm2_2; mov al_2 ymm2_3; mov al_3 ymm3_0;
mov al_4 ymm2_5; mov al_5 ymm2_6; mov al_6 ymm2_7; mov al_7 ymm3_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0x80(%rsp),%r11d                         #! EA = L0x7fffffffdc80; Value = 0xe5cf01b78e64d440; PC = 0x555555559751 *)
adds dc r11d r11d L0x7fffffffdc80;
(* and    %r8d,%r12d                               #! PC = 0x555555559759 *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x55555555975c *)
ror r13d@uint32 r8d 0x19;
(* vpalignr $0x4,%ymm0,%ymm1,%ymm7                 #! PC = 0x555555559762 *)
mov al_0 ymm0_1; mov al_1 ymm0_2; mov al_2 ymm0_3; mov al_3 ymm1_0;
mov al_4 ymm0_5; mov al_5 ymm0_6; mov al_6 ymm0_7; mov al_7 ymm1_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x555555559768 *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x55555555976e *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559772 *)
adds dc r11d r11d r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x555555559776 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x55555555977b *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559780 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559783 *)
ror r14d@uint32 r8d 0x6;
(* vpaddd %ymm7,%ymm2,%ymm2                        #! PC = 0x555555559789 *)
adds dc ymm2_0 ymm2_0 ymm7_0; adds dc ymm2_1 ymm2_1 ymm7_1;
adds dc ymm2_2 ymm2_2 ymm7_2; adds dc ymm2_3 ymm2_3 ymm7_3;
adds dc ymm2_4 ymm2_4 ymm7_4; adds dc ymm2_5 ymm2_5 ymm7_5;
adds dc ymm2_6 ymm2_6 ymm7_6; adds dc ymm2_7 ymm2_7 ymm7_7;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x55555555978d *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559791 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559794 *)
mov r15d eax;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x555555559797 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x55555555979c *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x5555555597a2 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x5555555597a6 *)
xor r15d@uint32 r15d ebx;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555597a9 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x5555555597ae *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x5555555597b4 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x5555555597ba *)
adds dc edx edx r11d;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555597be *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555597c2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555597c5 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x5555555597c8 *)
xor edi@uint32 edi ebx;
(* vpshufd $0xfa,%ymm1,%ymm7                       #! PC = 0x5555555597ca *)
mov sh_0 ymm1_2; mov sh_1 ymm1_2; mov sh_2 ymm1_3; mov sh_3 ymm1_3;
mov sh_4 ymm1_6; mov sh_5 ymm1_6; mov sh_6 ymm1_7; mov sh_7 ymm1_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555597cf *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x5555555597d2 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x5555555597d6 *)
mov r12d r8d;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x5555555597d9 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0x84(%rsp),%r10d                         #! EA = L0x7fffffffdc84; Value = 0x44af9494e5cf01b7; PC = 0x5555555597de *)
adds dc r10d r10d L0x7fffffffdc84;
(* and    %edx,%r12d                               #! PC = 0x5555555597e6 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x5555555597e9 *)
ror r13d@uint32 edx 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x5555555597ef *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x5555555597f3 *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x5555555597f9 *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x5555555597fd *)
adds dc r10d r10d r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559801 *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x555555559806 *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x55555555980b *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x55555555980e *)
ror r14d@uint32 edx 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559814 *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559818 *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555981c *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x55555555981f *)
mov edi r11d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559822 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x555555559827 *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x55555555982d *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x555555559831 *)
xor edi@uint32 edi eax;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559833 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x555555559837 *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x55555555983d *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x555555559843 *)
adds dc ecx ecx r10d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559847 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x55555555984c *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555984f *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x555555559852 *)
xor r15d@uint32 r15d eax;
(* vpaddd %ymm4,%ymm2,%ymm2                        #! PC = 0x555555559855 *)
adds dc ymm2_0 ymm2_0 ymm4_0; adds dc ymm2_1 ymm2_1 ymm4_1;
adds dc ymm2_2 ymm2_2 ymm4_2; adds dc ymm2_3 ymm2_3 ymm4_3;
adds dc ymm2_4 ymm2_4 ymm4_4; adds dc ymm2_5 ymm2_5 ymm4_5;
adds dc ymm2_6 ymm2_6 ymm4_6; adds dc ymm2_7 ymm2_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559859 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x55555555985c *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559860 *)
mov r12d edx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559863 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x88(%rsp),%r9d                          #! EA = L0x7fffffffdc88; Value = 0x841e332444af9494; PC = 0x555555559867 *)
adds dc r9d r9d L0x7fffffffdc88;
(* and    %ecx,%r12d                               #! PC = 0x55555555986f *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559872 *)
ror r13d@uint32 ecx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559878 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x55555555987d *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559883 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559887 *)
adds dc r9d r9d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555555988b *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x55555555988f *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559894 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x555555559897 *)
ror r14d@uint32 ecx 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555989d *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x5555555598a2 *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555598a6 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x5555555598a9 *)
mov r15d r10d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x5555555598ac *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x5555555598b0 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x5555555598b6 *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x5555555598ba *)
xor r15d@uint32 r15d r11d;
(* vpshufd $0x50,%ymm2,%ymm7                       #! PC = 0x5555555598bd *)
mov sh_0 ymm2_0; mov sh_1 ymm2_0; mov sh_2 ymm2_1; mov sh_3 ymm2_1;
mov sh_4 ymm2_4; mov sh_5 ymm2_4; mov sh_6 ymm2_5; mov sh_7 ymm2_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x5555555598c2 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x5555555598c8 *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x5555555598ce *)
adds dc ebx ebx r9d;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x5555555598d2 *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x5555555598d7 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555598da *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x5555555598dd *)
xor edi@uint32 edi r11d;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x5555555598e0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x5555555598e5 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x5555555598e8 *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x5555555598ec *)
mov r12d ecx;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x5555555598ef *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0x8c(%rsp),%r8d                          #! EA = L0x7fffffffdc8c; Value = 0xa2bfe8a1841e3324; PC = 0x5555555598f3 *)
adds dc r8d r8d L0x7fffffffdc8c;
(* and    %ebx,%r12d                               #! PC = 0x5555555598fb *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x5555555598fe *)
ror r13d@uint32 ebx 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559904 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x555555559909 *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x55555555990f *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x555555559913 *)
adds dc r8d r8d r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559917 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x55555555991b *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x555555559920 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x555555559923 *)
ror r14d@uint32 ebx 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559929 *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x55555555992e *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559932 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x555555559935 *)
mov edi r9d;
(* vpaddd %ymm6,%ymm2,%ymm2                        #! PC = 0x555555559938 *)
adds dc ymm2_0 ymm2_0 ymm6_0; adds dc ymm2_1 ymm2_1 ymm6_1;
adds dc ymm2_2 ymm2_2 ymm6_2; adds dc ymm2_3 ymm2_3 ymm6_3;
adds dc ymm2_4 ymm2_4 ymm6_4; adds dc ymm2_5 ymm2_5 ymm6_5;
adds dc ymm2_6 ymm2_6 ymm6_6; adds dc ymm2_7 ymm2_7 ymm6_7;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x55555555993c *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x555555559942 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x555555559946 *)
xor edi@uint32 edi r10d;
(* vpaddd 0x40(%rbp),%ymm2,%ymm6                   #! EA = L0x555555556fc0; Value = 0x78a5636f748f82ee; PC = 0x555555559949 *)
adds dc ymm6_0 ymm2_0 L0x555555556fc0; adds dc ymm6_1 ymm2_1 L0x555555556fc4;
adds dc ymm6_2 ymm2_2 L0x555555556fc8; adds dc ymm6_3 ymm2_3 L0x555555556fcc;
adds dc ymm6_4 ymm2_4 L0x555555556fd0; adds dc ymm6_5 ymm2_5 L0x555555556fd4;
adds dc ymm6_6 ymm2_6 L0x555555556fd8; adds dc ymm6_7 ymm2_7 L0x555555556fdc;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x55555555994e *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x555555559954 *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x55555555995a *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x55555555995e *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559961 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559964 *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559967 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555996a *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x55555555996e *)
mov r12d ebx;
(* vmovdqa %ymm6,(%rsp)                            #! EA = L0x7fffffffdc00; PC = 0x555555559971 *)
mov L0x7fffffffdc00 ymm6_0; mov L0x7fffffffdc04 ymm6_1;
mov L0x7fffffffdc08 ymm6_2; mov L0x7fffffffdc0c ymm6_3;
mov L0x7fffffffdc10 ymm6_4; mov L0x7fffffffdc14 ymm6_5;
mov L0x7fffffffdc18 ymm6_6; mov L0x7fffffffdc1c ymm6_7;
(* vpalignr $0x4,%ymm3,%ymm0,%ymm4                 #! PC = 0x555555559976 *)
mov al_0 ymm3_1; mov al_1 ymm3_2; mov al_2 ymm3_3; mov al_3 ymm0_0;
mov al_4 ymm3_5; mov al_5 ymm3_6; mov al_6 ymm3_7; mov al_7 ymm0_4;
mov ymm4_0 al_0; mov ymm4_1 al_1; mov ymm4_2 al_2; mov ymm4_3 al_3;
mov ymm4_4 al_4; mov ymm4_5 al_5; mov ymm4_6 al_6; mov ymm4_7 al_7;
(* add    0xa0(%rsp),%edx                          #! EA = L0x7fffffffdca0; Value = 0xaae0ee3c56df253d; PC = 0x55555555997c *)
adds dc edx edx L0x7fffffffdca0;
(* and    %eax,%r12d                               #! PC = 0x555555559983 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559986 *)
ror r13d@uint32 eax 0x19;
(* vpalignr $0x4,%ymm1,%ymm2,%ymm7                 #! PC = 0x55555555998c *)
mov al_0 ymm1_1; mov al_1 ymm1_2; mov al_2 ymm1_3; mov al_3 ymm2_0;
mov al_4 ymm1_5; mov al_5 ymm1_6; mov al_6 ymm1_7; mov al_7 ymm2_4;
mov ymm7_0 al_0; mov ymm7_1 al_1; mov ymm7_2 al_2; mov ymm7_3 al_3;
mov ymm7_4 al_4; mov ymm7_5 al_5; mov ymm7_6 al_6; mov ymm7_7 al_7;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559992 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x555555559998 *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555999c *)
adds dc edx edx r12d;
(* vpsrld $0x7,%ymm4,%ymm6                         #! PC = 0x5555555599a0 *)
split ymm6_0 dc ymm4_0 0x7; split ymm6_1 dc ymm4_1 0x7;
split ymm6_2 dc ymm4_2 0x7; split ymm6_3 dc ymm4_3 0x7;
split ymm6_4 dc ymm4_4 0x7; split ymm6_5 dc ymm4_5 0x7;
split ymm6_6 dc ymm4_6 0x7; split ymm6_7 dc ymm4_7 0x7;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x5555555599a5 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x5555555599aa *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x5555555599ad *)
ror r14d@uint32 eax 0x6;
(* vpaddd %ymm7,%ymm3,%ymm3                        #! PC = 0x5555555599b3 *)
adds dc ymm3_0 ymm3_0 ymm7_0; adds dc ymm3_1 ymm3_1 ymm7_1;
adds dc ymm3_2 ymm3_2 ymm7_2; adds dc ymm3_3 ymm3_3 ymm7_3;
adds dc ymm3_4 ymm3_4 ymm7_4; adds dc ymm3_5 ymm3_5 ymm7_5;
adds dc ymm3_6 ymm3_6 ymm7_6; adds dc ymm3_7 ymm3_7 ymm7_7;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x5555555599b7 *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x5555555599bb *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x5555555599be *)
mov r15d r8d;
(* vpsrld $0x3,%ymm4,%ymm7                         #! PC = 0x5555555599c1 *)
split ymm7_0 dc ymm4_0 0x3; split ymm7_1 dc ymm4_1 0x3;
split ymm7_2 dc ymm4_2 0x3; split ymm7_3 dc ymm4_3 0x3;
split ymm7_4 dc ymm4_4 0x3; split ymm7_5 dc ymm4_5 0x3;
split ymm7_6 dc ymm4_6 0x3; split ymm7_7 dc ymm4_7 0x3;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x5555555599c6 *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x5555555599cc *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x5555555599d0 *)
xor r15d@uint32 r15d r9d;
(* vpslld $0xe,%ymm4,%ymm5                         #! PC = 0x5555555599d3 *)
split dc ymm5_0 ymm4_0 (32-0xe); shl ymm5_0 ymm5_0 0xe@uint32;
split dc ymm5_1 ymm4_1 (32-0xe); shl ymm5_1 ymm5_1 0xe@uint32;
split dc ymm5_2 ymm4_2 (32-0xe); shl ymm5_2 ymm5_2 0xe@uint32;
split dc ymm5_3 ymm4_3 (32-0xe); shl ymm5_3 ymm5_3 0xe@uint32;
split dc ymm5_4 ymm4_4 (32-0xe); shl ymm5_4 ymm5_4 0xe@uint32;
split dc ymm5_5 ymm4_5 (32-0xe); shl ymm5_5 ymm5_5 0xe@uint32;
split dc ymm5_6 ymm4_6 (32-0xe); shl ymm5_6 ymm5_6 0xe@uint32;
split dc ymm5_7 ymm4_7 (32-0xe); shl ymm5_7 ymm5_7 0xe@uint32;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x5555555599d8 *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x5555555599de *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x5555555599e4 *)
adds dc r11d r11d edx;
(* vpxor  %ymm6,%ymm7,%ymm4                        #! PC = 0x5555555599e8 *)
xor ymm4_0@uint32 ymm7_0 ymm6_0; xor ymm4_1@uint32 ymm7_1 ymm6_1;
xor ymm4_2@uint32 ymm7_2 ymm6_2; xor ymm4_3@uint32 ymm7_3 ymm6_3;
xor ymm4_4@uint32 ymm7_4 ymm6_4; xor ymm4_5@uint32 ymm7_5 ymm6_5;
xor ymm4_6@uint32 ymm7_6 ymm6_6; xor ymm4_7@uint32 ymm7_7 ymm6_7;
(* and    %r15d,%edi                               #! PC = 0x5555555599ec *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x5555555599ef *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x5555555599f2 *)
xor edi@uint32 edi r9d;
(* vpshufd $0xfa,%ymm2,%ymm7                       #! PC = 0x5555555599f5 *)
mov sh_0 ymm2_2; mov sh_1 ymm2_2; mov sh_2 ymm2_3; mov sh_3 ymm2_3;
mov sh_4 ymm2_6; mov sh_5 ymm2_6; mov sh_6 ymm2_7; mov sh_7 ymm2_7;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* xor    %r13d,%r14d                              #! PC = 0x5555555599fa *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x5555555599fd *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x555555559a00 *)
mov r12d eax;
(* vpsrld $0xb,%ymm6,%ymm6                         #! PC = 0x555555559a03 *)
split ymm6_0 dc ymm6_0 0xb; split ymm6_1 dc ymm6_1 0xb;
split ymm6_2 dc ymm6_2 0xb; split ymm6_3 dc ymm6_3 0xb;
split ymm6_4 dc ymm6_4 0xb; split ymm6_5 dc ymm6_5 0xb;
split ymm6_6 dc ymm6_6 0xb; split ymm6_7 dc ymm6_7 0xb;
(* add    0xa4(%rsp),%ecx                          #! EA = L0x7fffffffdca4; Value = 0x8e18f3f4aae0ee3c; PC = 0x555555559a08 *)
adds dc ecx ecx L0x7fffffffdca4;
(* and    %r11d,%r12d                              #! PC = 0x555555559a0f *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x555555559a12 *)
ror r13d@uint32 r11d 0x19;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a18 *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x555555559a1c *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x555555559a22 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a26 *)
adds dc ecx ecx r12d;
(* vpslld $0xb,%ymm5,%ymm5                         #! PC = 0x555555559a2a *)
split dc ymm5_0 ymm5_0 (32-0xb); shl ymm5_0 ymm5_0 0xb@uint32;
split dc ymm5_1 ymm5_1 (32-0xb); shl ymm5_1 ymm5_1 0xb@uint32;
split dc ymm5_2 ymm5_2 (32-0xb); shl ymm5_2 ymm5_2 0xb@uint32;
split dc ymm5_3 ymm5_3 (32-0xb); shl ymm5_3 ymm5_3 0xb@uint32;
split dc ymm5_4 ymm5_4 (32-0xb); shl ymm5_4 ymm5_4 0xb@uint32;
split dc ymm5_5 ymm5_5 (32-0xb); shl ymm5_5 ymm5_5 0xb@uint32;
split dc ymm5_6 ymm5_6 (32-0xb); shl ymm5_6 ymm5_6 0xb@uint32;
split dc ymm5_7 ymm5_7 (32-0xb); shl ymm5_7 ymm5_7 0xb@uint32;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x555555559a2f *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x555555559a34 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x555555559a37 *)
ror r14d@uint32 r11d 0x6;
(* vpxor  %ymm6,%ymm4,%ymm4                        #! PC = 0x555555559a3d *)
xor ymm4_0@uint32 ymm4_0 ymm6_0; xor ymm4_1@uint32 ymm4_1 ymm6_1;
xor ymm4_2@uint32 ymm4_2 ymm6_2; xor ymm4_3@uint32 ymm4_3 ymm6_3;
xor ymm4_4@uint32 ymm4_4 ymm6_4; xor ymm4_5@uint32 ymm4_5 ymm6_5;
xor ymm4_6@uint32 ymm4_6 ymm6_6; xor ymm4_7@uint32 ymm4_7 ymm6_7;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559a41 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559a45 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x555555559a48 *)
mov edi edx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559a4a *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x555555559a4f *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x555555559a55 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x555555559a59 *)
xor edi@uint32 edi r8d;
(* vpxor  %ymm5,%ymm4,%ymm4                        #! PC = 0x555555559a5c *)
xor ymm4_0@uint32 ymm4_0 ymm5_0; xor ymm4_1@uint32 ymm4_1 ymm5_1;
xor ymm4_2@uint32 ymm4_2 ymm5_2; xor ymm4_3@uint32 ymm4_3 ymm5_3;
xor ymm4_4@uint32 ymm4_4 ymm5_4; xor ymm4_5@uint32 ymm4_5 ymm5_5;
xor ymm4_6@uint32 ymm4_6 ymm5_6; xor ymm4_7@uint32 ymm4_7 ymm5_7;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559a60 *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559a66 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x555555559a6c *)
adds dc r10d r10d ecx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559a70 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* and    %edi,%r15d                               #! PC = 0x555555559a75 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559a78 *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x555555559a7b *)
xor r15d@uint32 r15d r8d;
(* vpaddd %ymm4,%ymm3,%ymm3                        #! PC = 0x555555559a7e *)
adds dc ymm3_0 ymm3_0 ymm4_0; adds dc ymm3_1 ymm3_1 ymm4_1;
adds dc ymm3_2 ymm3_2 ymm4_2; adds dc ymm3_3 ymm3_3 ymm4_3;
adds dc ymm3_4 ymm3_4 ymm4_4; adds dc ymm3_5 ymm3_5 ymm4_5;
adds dc ymm3_6 ymm3_6 ymm4_6; adds dc ymm3_7 ymm3_7 ymm4_7;
(* xor    %r13d,%r14d                              #! PC = 0x555555559a82 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559a85 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x555555559a89 *)
mov r12d r11d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559a8c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xa8(%rsp),%ebx                          #! EA = L0x7fffffffdca8; Value = 0x714c8b958e18f3f4; PC = 0x555555559a90 *)
adds dc ebx ebx L0x7fffffffdca8;
(* and    %r10d,%r12d                              #! PC = 0x555555559a97 *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x555555559a9a *)
ror r13d@uint32 r10d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559aa0 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559aa5 *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x555555559aab *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aaf *)
adds dc ebx ebx r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559ab3 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x555555559ab7 *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x555555559abc *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559abf *)
ror r14d@uint32 r10d 0x6;
(* vpshufb %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559ac5 *)
assert true
   && and [ymm8_0=0x03020100@32, ymm8_1=0x0b0a0908@32, ymm8_2=0xffffffff@32, ymm8_3=0xffffffff@32,ymm8_4=0x03020100@32, ymm8_5=0x0b0a0908@32, ymm8_6=0xffffffff@32, ymm8_7=0xffffffff@32];
mov ymm6_0 ymm6_0; mov ymm6_1 ymm6_2;
mov ymm6_2 0@uint32; mov ymm6_3 0@uint32;
mov ymm6_4 ymm6_4; mov ymm6_5 ymm6_6;
mov ymm6_6 0@uint32; mov ymm6_7 0@uint32;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559aca *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559ace *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559ad1 *)
mov r15d ecx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559ad4 *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x555555559ad8 *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559ade *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559ae2 *)
xor r15d@uint32 r15d edx;
(* vpshufd $0x50,%ymm3,%ymm7                       #! PC = 0x555555559ae5 *)
mov sh_0 ymm3_0; mov sh_1 ymm3_0; mov sh_2 ymm3_1; mov sh_3 ymm3_1;
mov sh_4 ymm3_4; mov sh_5 ymm3_4; mov sh_6 ymm3_5; mov sh_7 ymm3_5;
mov ymm7_0 sh_0; mov ymm7_1 sh_1; mov ymm7_2 sh_2; mov ymm7_3 sh_3;
mov ymm7_4 sh_4; mov ymm7_5 sh_5; mov ymm7_6 sh_6; mov ymm7_7 sh_7;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x555555559aea *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559af0 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559af6 *)
adds dc r9d r9d ebx;
(* vpsrld $0xa,%ymm7,%ymm6                         #! PC = 0x555555559afa *)
split ymm6_0 dc ymm7_0 0xa; split ymm6_1 dc ymm7_1 0xa;
split ymm6_2 dc ymm7_2 0xa; split ymm6_3 dc ymm7_3 0xa;
split ymm6_4 dc ymm7_4 0xa; split ymm6_5 dc ymm7_5 0xa;
split ymm6_6 dc ymm7_6 0xa; split ymm6_7 dc ymm7_7 0xa;
(* and    %r15d,%edi                               #! PC = 0x555555559aff *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b02 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x555555559b05 *)
xor edi@uint32 edi edx;
(* vpsrlq $0x11,%ymm7,%ymm7                        #! PC = 0x555555559b07 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x11; split sr_1 dc sr_1 0x11;
split sr_2 dc sr_2 0x11; split sr_3 dc sr_3 0x11;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b0c *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x555555559b0f *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x555555559b12 *)
mov r12d r10d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b15 *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* add    0xac(%rsp),%eax                          #! EA = L0x7fffffffdcac; Value = 0xd192e819714c8b95; PC = 0x555555559b19 *)
adds dc eax eax L0x7fffffffdcac;
(* and    %r9d,%r12d                               #! PC = 0x555555559b20 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x555555559b23 *)
ror r13d@uint32 r9d 0x19;
(* vpsrlq $0x2,%ymm7,%ymm7                         #! PC = 0x555555559b29 *)
join sr_0 ymm7_1 ymm7_0; join sr_1 ymm7_3 ymm7_2;
join sr_2 ymm7_5 ymm7_4; join sr_3 ymm7_7 ymm7_6;
split sr_0 dc sr_0 0x2; split sr_1 dc sr_1 0x2;
split sr_2 dc sr_2 0x2; split sr_3 dc sr_3 0x2;
spl ymm7_1 ymm7_0 sr_0 32; spl ymm7_3 ymm7_2 sr_1 32;
spl ymm7_5 ymm7_4 sr_2 32; spl ymm7_7 ymm7_6 sr_3 32;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x555555559b2e *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x555555559b34 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b38 *)
adds dc eax eax r12d;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x555555559b3c *)
xor ymm6_0@uint32 ymm6_0 ymm7_0; xor ymm6_1@uint32 ymm6_1 ymm7_1;
xor ymm6_2@uint32 ymm6_2 ymm7_2; xor ymm6_3@uint32 ymm6_3 ymm7_3;
xor ymm6_4@uint32 ymm6_4 ymm7_4; xor ymm6_5@uint32 ymm6_5 ymm7_5;
xor ymm6_6@uint32 ymm6_6 ymm7_6; xor ymm6_7@uint32 ymm6_7 ymm7_7;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x555555559b40 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x555555559b45 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x555555559b48 *)
ror r14d@uint32 r9d 0x6;
(* vpshufb %ymm9,%ymm6,%ymm6                       #! PC = 0x555555559b4e *)
assert true
   && and [ymm9_0=0xffffffff@32, ymm9_1=0xffffffff@32, ymm9_2=0x03020100@32, ymm9_3=0x0b0a0908@32,ymm9_4=0xffffffff@32, ymm9_5=0xffffffff@32, ymm9_6=0x03020100@32, ymm9_7=0x0b0a0908@32];
mov ymm6_3 ymm6_2; mov ymm6_2 ymm6_0;
mov ymm6_1 0@uint32; mov ymm6_0 0@uint32;
mov ymm6_7 ymm6_6; mov ymm6_6 ymm6_4;
mov ymm6_5 0@uint32; mov ymm6_4 0@uint32;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559b53 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559b57 *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x555555559b5a *)
mov edi ebx;
(* vpaddd %ymm6,%ymm3,%ymm3                        #! PC = 0x555555559b5c *)
adds dc ymm3_0 ymm3_0 ymm6_0; adds dc ymm3_1 ymm3_1 ymm6_1;
adds dc ymm3_2 ymm3_2 ymm6_2; adds dc ymm3_3 ymm3_3 ymm6_3;
adds dc ymm3_4 ymm3_4 ymm6_4; adds dc ymm3_5 ymm3_5 ymm6_5;
adds dc ymm3_6 ymm3_6 ymm6_6; adds dc ymm3_7 ymm3_7 ymm6_7;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559b60 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559b66 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x555555559b6a *)
xor edi@uint32 edi ecx;
(* vpaddd 0x60(%rbp),%ymm3,%ymm6                   #! EA = L0x555555556fe0; Value = 0xa4506ceb90befffa; PC = 0x555555559b6c *)
adds dc ymm6_0 ymm3_0 L0x555555556fe0; adds dc ymm6_1 ymm3_1 L0x555555556fe4;
adds dc ymm6_2 ymm3_2 L0x555555556fe8; adds dc ymm6_3 ymm3_3 L0x555555556fec;
adds dc ymm6_4 ymm3_4 L0x555555556ff0; adds dc ymm6_5 ymm3_5 L0x555555556ff4;
adds dc ymm6_6 ymm3_6 L0x555555556ff8; adds dc ymm6_7 ymm3_7 L0x555555556ffc;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559b71 *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x555555559b77 *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559b7d *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559b81 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559b84 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x555555559b87 *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559b8a *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559b8d *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559b91 *)
mov r12d r9d;
(* vmovdqa %ymm6,0x20(%rsp)                        #! EA = L0x7fffffffdc20; PC = 0x555555559b94 *)
mov L0x7fffffffdc20 ymm6_0; mov L0x7fffffffdc24 ymm6_1;
mov L0x7fffffffdc28 ymm6_2; mov L0x7fffffffdc2c ymm6_3;
mov L0x7fffffffdc30 ymm6_4; mov L0x7fffffffdc34 ymm6_5;
mov L0x7fffffffdc38 ymm6_6; mov L0x7fffffffdc3c ymm6_7;
(* lea    0x80(%rbp),%rbp                          #! PC = 0x555555559b9a *)
(* lea %%EA %rbp *)
nop;
(* cmpb   $0x0,0x3(%rbp)                           #! EA = L0x555555557003; PC = 0x555555559ba1 *)
(* cmpb 0x0 L0x555555557003 *)
nop;
(* #jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! PC = 0x555555559ba5 *)
#jne    0x5555555592e0 <sha256_block_data_order_avx2+288>#! 0x555555559ba5 = 0x555555559ba5;
(* add    0x40(%rsp),%r11d                         #! EA = L0x7fffffffdc40; Value = 0x312a05446c01d175; PC = 0x555555559bab *)
adds dc r11d r11d L0x7fffffffdc40;
(* and    %r8d,%r12d                               #! PC = 0x555555559bb0 *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x555555559bb3 *)
ror r13d@uint32 r8d 0x19;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x555555559bb9 *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x555555559bbf *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559bc3 *)
adds dc r11d r11d r12d;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x555555559bc7 *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559bcc *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559bcf *)
ror r14d@uint32 r8d 0x6;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559bd5 *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559bd9 *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559bdc *)
mov r15d eax;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x555555559bdf *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x555555559be5 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x555555559be9 *)
xor r15d@uint32 r15d ebx;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x555555559bec *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x555555559bf2 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x555555559bf8 *)
adds dc edx edx r11d;
(* and    %r15d,%edi                               #! PC = 0x555555559bfc *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559bff *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x555555559c02 *)
xor edi@uint32 edi ebx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559c04 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x555555559c07 *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x555555559c0b *)
mov r12d r8d;
(* add    0x44(%rsp),%r10d                         #! EA = L0x7fffffffdc44; Value = 0x3503cc58312a0544; PC = 0x555555559c0e *)
adds dc r10d r10d L0x7fffffffdc44;
(* and    %edx,%r12d                               #! PC = 0x555555559c13 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x555555559c16 *)
ror r13d@uint32 edx 0x19;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x555555559c1c *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x555555559c22 *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559c26 *)
adds dc r10d r10d r12d;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x555555559c2a *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x555555559c2f *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x555555559c32 *)
ror r14d@uint32 edx 0x6;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559c38 *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559c3c *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x555555559c3f *)
mov edi r11d;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x555555559c42 *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x555555559c48 *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x555555559c4c *)
xor edi@uint32 edi eax;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x555555559c4e *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x555555559c54 *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x555555559c5a *)
adds dc ecx ecx r10d;
(* and    %edi,%r15d                               #! PC = 0x555555559c5e *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559c61 *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x555555559c64 *)
xor r15d@uint32 r15d eax;
(* xor    %r13d,%r14d                              #! PC = 0x555555559c67 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x555555559c6a *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559c6e *)
mov r12d edx;
(* add    0x48(%rsp),%r9d                          #! EA = L0x7fffffffdc48; Value = 0x4a686ef43503cc58; PC = 0x555555559c71 *)
adds dc r9d r9d L0x7fffffffdc48;
(* and    %ecx,%r12d                               #! PC = 0x555555559c76 *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559c79 *)
ror r13d@uint32 ecx 0x19;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x555555559c7f *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559c85 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559c89 *)
adds dc r9d r9d r12d;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x555555559c8d *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559c92 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x555555559c95 *)
ror r14d@uint32 ecx 0x6;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559c9b *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559c9f *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x555555559ca2 *)
mov r15d r10d;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x555555559ca5 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x555555559cab *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x555555559caf *)
xor r15d@uint32 r15d r11d;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x555555559cb2 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x555555559cb8 *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x555555559cbe *)
adds dc ebx ebx r9d;
(* and    %r15d,%edi                               #! PC = 0x555555559cc2 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559cc5 *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x555555559cc8 *)
xor edi@uint32 edi r11d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559ccb *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x555555559cce *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x555555559cd2 *)
mov r12d ecx;
(* add    0x4c(%rsp),%r8d                          #! EA = L0x7fffffffdc4c; Value = 0x19a4c1164a686ef4; PC = 0x555555559cd5 *)
adds dc r8d r8d L0x7fffffffdc4c;
(* and    %ebx,%r12d                               #! PC = 0x555555559cda *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x555555559cdd *)
ror r13d@uint32 ebx 0x19;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x555555559ce3 *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x555555559ce9 *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x555555559ced *)
adds dc r8d r8d r12d;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x555555559cf1 *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x555555559cf6 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x555555559cf9 *)
ror r14d@uint32 ebx 0x6;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x555555559cff *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559d03 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x555555559d06 *)
mov edi r9d;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x555555559d09 *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x555555559d0f *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x555555559d13 *)
xor edi@uint32 edi r10d;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x555555559d16 *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x555555559d1c *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x555555559d22 *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x555555559d26 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559d29 *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x555555559d2c *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559d2f *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x555555559d32 *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x555555559d36 *)
mov r12d ebx;
(* add    0x60(%rsp),%edx                          #! EA = L0x7fffffffdc60; Value = 0xadaa79baf2a6d19d; PC = 0x555555559d39 *)
adds dc edx edx L0x7fffffffdc60;
(* and    %eax,%r12d                               #! PC = 0x555555559d3d *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x555555559d40 *)
ror r13d@uint32 eax 0x19;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x555555559d46 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x555555559d4c *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x555555559d50 *)
adds dc edx edx r12d;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x555555559d54 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x555555559d59 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x555555559d5c *)
ror r14d@uint32 eax 0x6;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x555555559d62 *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559d66 *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x555555559d69 *)
mov r15d r8d;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x555555559d6c *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x555555559d72 *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x555555559d76 *)
xor r15d@uint32 r15d r9d;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x555555559d79 *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x555555559d7f *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x555555559d85 *)
adds dc r11d r11d edx;
(* and    %r15d,%edi                               #! PC = 0x555555559d89 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559d8c *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x555555559d8f *)
xor edi@uint32 edi r9d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559d92 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x555555559d95 *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x555555559d98 *)
mov r12d eax;
(* add    0x64(%rsp),%ecx                          #! EA = L0x7fffffffdc64; Value = 0x04c44a46adaa79ba; PC = 0x555555559d9b *)
adds dc ecx ecx L0x7fffffffdc64;
(* and    %r11d,%r12d                              #! PC = 0x555555559d9f *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x555555559da2 *)
ror r13d@uint32 r11d 0x19;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x555555559da8 *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x555555559dae *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559db2 *)
adds dc ecx ecx r12d;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x555555559db6 *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x555555559dbb *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x555555559dbe *)
ror r14d@uint32 r11d 0x6;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x555555559dc4 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559dc8 *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x555555559dcb *)
mov edi edx;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x555555559dcd *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x555555559dd3 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x555555559dd7 *)
xor edi@uint32 edi r8d;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x555555559dda *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x555555559de0 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x555555559de6 *)
adds dc r10d r10d ecx;
(* and    %edi,%r15d                               #! PC = 0x555555559dea *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559ded *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x555555559df0 *)
xor r15d@uint32 r15d r8d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559df3 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x555555559df6 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x555555559dfa *)
mov r12d r11d;
(* add    0x68(%rsp),%ebx                          #! EA = L0x7fffffffdc68; Value = 0x9edf3e2f04c44a46; PC = 0x555555559dfd *)
adds dc ebx ebx L0x7fffffffdc68;
(* and    %r10d,%r12d                              #! PC = 0x555555559e01 *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x555555559e04 *)
ror r13d@uint32 r10d 0x19;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x555555559e0a *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x555555559e10 *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559e14 *)
adds dc ebx ebx r12d;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x555555559e18 *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x555555559e1d *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x555555559e20 *)
ror r14d@uint32 r10d 0x6;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x555555559e26 *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559e2a *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x555555559e2d *)
mov r15d ecx;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x555555559e30 *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x555555559e36 *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x555555559e3a *)
xor r15d@uint32 r15d edx;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x555555559e3d *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x555555559e43 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x555555559e49 *)
adds dc r9d r9d ebx;
(* and    %r15d,%edi                               #! PC = 0x555555559e4d *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559e50 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x555555559e53 *)
xor edi@uint32 edi edx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559e55 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x555555559e58 *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x555555559e5b *)
mov r12d r10d;
(* add    0x6c(%rsp),%eax                          #! EA = L0x7fffffffdc6c; Value = 0x391c0cb39edf3e2f; PC = 0x555555559e5e *)
adds dc eax eax L0x7fffffffdc6c;
(* and    %r9d,%r12d                               #! PC = 0x555555559e62 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x555555559e65 *)
ror r13d@uint32 r9d 0x19;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x555555559e6b *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x555555559e71 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559e75 *)
adds dc eax eax r12d;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x555555559e79 *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x555555559e7e *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x555555559e81 *)
ror r14d@uint32 r9d 0x6;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x555555559e87 *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559e8b *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x555555559e8e *)
mov edi ebx;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x555555559e90 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x555555559e96 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x555555559e9a *)
xor edi@uint32 edi ecx;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x555555559e9c *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x555555559ea2 *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x555555559ea8 *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x555555559eac *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559eaf *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x555555559eb2 *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559eb5 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x555555559eb8 *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x555555559ebc *)
mov r12d r9d;
(* add    (%rsp),%r11d                             #! EA = L0x7fffffffdc00; Value = 0x9deaef53bc6d6567; PC = 0x555555559ebf *)
adds dc r11d r11d L0x7fffffffdc00;
(* and    %r8d,%r12d                               #! PC = 0x555555559ec3 *)
and r12d@uint32 r12d r8d;
(* rorx   $0x19,%r8d,%r13d                         #! PC = 0x555555559ec6 *)
ror r13d@uint32 r8d 0x19;
(* rorx   $0xb,%r8d,%r15d                          #! PC = 0x555555559ecc *)
ror r15d@uint32 r8d 0xb;
(* lea    (%rax,%r14,1),%eax                       #! PC = 0x555555559ed2 *)
adds dc eax eax r14d;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559ed6 *)
adds dc r11d r11d r12d;
(* andn   %r10d,%r8d,%r12d                         #! PC = 0x555555559eda *)
not r8d_n@uint32 r8d; and r12d@uint32 r8d_n r10d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559edf *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r8d,%r14d                          #! PC = 0x555555559ee2 *)
ror r14d@uint32 r8d 0x6;
(* lea    (%r11,%r12,1),%r11d                      #! PC = 0x555555559ee8 *)
adds dc r11d r11d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559eec *)
xor r13d@uint32 r13d r14d;
(* mov    %eax,%r15d                               #! PC = 0x555555559eef *)
mov r15d eax;
(* rorx   $0x16,%eax,%r12d                         #! PC = 0x555555559ef2 *)
ror r12d@uint32 eax 0x16;
(* lea    (%r11,%r13,1),%r11d                      #! PC = 0x555555559ef8 *)
adds dc r11d r11d r13d;
(* xor    %ebx,%r15d                               #! PC = 0x555555559efc *)
xor r15d@uint32 r15d ebx;
(* rorx   $0xd,%eax,%r14d                          #! PC = 0x555555559eff *)
ror r14d@uint32 eax 0xd;
(* rorx   $0x2,%eax,%r13d                          #! PC = 0x555555559f05 *)
ror r13d@uint32 eax 0x2;
(* lea    (%rdx,%r11,1),%edx                       #! PC = 0x555555559f0b *)
adds dc edx edx r11d;
(* and    %r15d,%edi                               #! PC = 0x555555559f0f *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559f12 *)
xor r14d@uint32 r14d r12d;
(* xor    %ebx,%edi                                #! PC = 0x555555559f15 *)
xor edi@uint32 edi ebx;
(* xor    %r13d,%r14d                              #! PC = 0x555555559f17 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r11,%rdi,1),%r11d                      #! PC = 0x555555559f1a *)
adds dc r11d r11d edi;
(* mov    %r8d,%r12d                               #! PC = 0x555555559f1e *)
mov r12d r8d;
(* add    0x4(%rsp),%r10d                          #! EA = L0x7fffffffdc04; Value = 0xd6d5e0c39deaef53; PC = 0x555555559f21 *)
adds dc r10d r10d L0x7fffffffdc04;
(* and    %edx,%r12d                               #! PC = 0x555555559f26 *)
and r12d@uint32 r12d edx;
(* rorx   $0x19,%edx,%r13d                         #! PC = 0x555555559f29 *)
ror r13d@uint32 edx 0x19;
(* rorx   $0xb,%edx,%edi                           #! PC = 0x555555559f2f *)
ror edi@uint32 edx 0xb;
(* lea    (%r11,%r14,1),%r11d                      #! PC = 0x555555559f35 *)
adds dc r11d r11d r14d;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559f39 *)
adds dc r10d r10d r12d;
(* andn   %r9d,%edx,%r12d                          #! PC = 0x555555559f3d *)
not edx_n@uint32 edx; and r12d@uint32 edx_n r9d;
(* xor    %edi,%r13d                               #! PC = 0x555555559f42 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%edx,%r14d                          #! PC = 0x555555559f45 *)
ror r14d@uint32 edx 0x6;
(* lea    (%r10,%r12,1),%r10d                      #! PC = 0x555555559f4b *)
adds dc r10d r10d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559f4f *)
xor r13d@uint32 r13d r14d;
(* mov    %r11d,%edi                               #! PC = 0x555555559f52 *)
mov edi r11d;
(* rorx   $0x16,%r11d,%r12d                        #! PC = 0x555555559f55 *)
ror r12d@uint32 r11d 0x16;
(* lea    (%r10,%r13,1),%r10d                      #! PC = 0x555555559f5b *)
adds dc r10d r10d r13d;
(* xor    %eax,%edi                                #! PC = 0x555555559f5f *)
xor edi@uint32 edi eax;
(* rorx   $0xd,%r11d,%r14d                         #! PC = 0x555555559f61 *)
ror r14d@uint32 r11d 0xd;
(* rorx   $0x2,%r11d,%r13d                         #! PC = 0x555555559f67 *)
ror r13d@uint32 r11d 0x2;
(* lea    (%rcx,%r10,1),%ecx                       #! PC = 0x555555559f6d *)
adds dc ecx ecx r10d;
(* and    %edi,%r15d                               #! PC = 0x555555559f71 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x555555559f74 *)
xor r14d@uint32 r14d r12d;
(* xor    %eax,%r15d                               #! PC = 0x555555559f77 *)
xor r15d@uint32 r15d eax;
(* xor    %r13d,%r14d                              #! PC = 0x555555559f7a *)
xor r14d@uint32 r14d r13d;
(* lea    (%r10,%r15,1),%r10d                      #! PC = 0x555555559f7d *)
adds dc r10d r10d r15d;
(* mov    %edx,%r12d                               #! PC = 0x555555559f81 *)
mov r12d edx;
(* add    0x8(%rsp),%r9d                           #! EA = L0x7fffffffdc08; Value = 0xce75ae68d6d5e0c3; PC = 0x555555559f84 *)
adds dc r9d r9d L0x7fffffffdc08;
(* and    %ecx,%r12d                               #! PC = 0x555555559f89 *)
and r12d@uint32 r12d ecx;
(* rorx   $0x19,%ecx,%r13d                         #! PC = 0x555555559f8c *)
ror r13d@uint32 ecx 0x19;
(* rorx   $0xb,%ecx,%r15d                          #! PC = 0x555555559f92 *)
ror r15d@uint32 ecx 0xb;
(* lea    (%r10,%r14,1),%r10d                      #! PC = 0x555555559f98 *)
adds dc r10d r10d r14d;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559f9c *)
adds dc r9d r9d r12d;
(* andn   %r8d,%ecx,%r12d                          #! PC = 0x555555559fa0 *)
not ecx_n@uint32 ecx; and r12d@uint32 ecx_n r8d;
(* xor    %r15d,%r13d                              #! PC = 0x555555559fa5 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%ecx,%r14d                          #! PC = 0x555555559fa8 *)
ror r14d@uint32 ecx 0x6;
(* lea    (%r9,%r12,1),%r9d                        #! PC = 0x555555559fae *)
adds dc r9d r9d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x555555559fb2 *)
xor r13d@uint32 r13d r14d;
(* mov    %r10d,%r15d                              #! PC = 0x555555559fb5 *)
mov r15d r10d;
(* rorx   $0x16,%r10d,%r12d                        #! PC = 0x555555559fb8 *)
ror r12d@uint32 r10d 0x16;
(* lea    (%r9,%r13,1),%r9d                        #! PC = 0x555555559fbe *)
adds dc r9d r9d r13d;
(* xor    %r11d,%r15d                              #! PC = 0x555555559fc2 *)
xor r15d@uint32 r15d r11d;
(* rorx   $0xd,%r10d,%r14d                         #! PC = 0x555555559fc5 *)
ror r14d@uint32 r10d 0xd;
(* rorx   $0x2,%r10d,%r13d                         #! PC = 0x555555559fcb *)
ror r13d@uint32 r10d 0x2;
(* lea    (%rbx,%r9,1),%ebx                        #! PC = 0x555555559fd1 *)
adds dc ebx ebx r9d;
(* and    %r15d,%edi                               #! PC = 0x555555559fd5 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x555555559fd8 *)
xor r14d@uint32 r14d r12d;
(* xor    %r11d,%edi                               #! PC = 0x555555559fdb *)
xor edi@uint32 edi r11d;
(* xor    %r13d,%r14d                              #! PC = 0x555555559fde *)
xor r14d@uint32 r14d r13d;
(* lea    (%r9,%rdi,1),%r9d                        #! PC = 0x555555559fe1 *)
adds dc r9d r9d edi;
(* mov    %ecx,%r12d                               #! PC = 0x555555559fe5 *)
mov r12d ecx;
(* add    0xc(%rsp),%r8d                           #! EA = L0x7fffffffdc0c; Value = 0x748f82eece75ae68; PC = 0x555555559fe8 *)
adds dc r8d r8d L0x7fffffffdc0c;
(* and    %ebx,%r12d                               #! PC = 0x555555559fed *)
and r12d@uint32 r12d ebx;
(* rorx   $0x19,%ebx,%r13d                         #! PC = 0x555555559ff0 *)
ror r13d@uint32 ebx 0x19;
(* rorx   $0xb,%ebx,%edi                           #! PC = 0x555555559ff6 *)
ror edi@uint32 ebx 0xb;
(* lea    (%r9,%r14,1),%r9d                        #! PC = 0x555555559ffc *)
adds dc r9d r9d r14d;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x55555555a000 *)
adds dc r8d r8d r12d;
(* andn   %edx,%ebx,%r12d                          #! PC = 0x55555555a004 *)
not ebx_n@uint32 ebx; and r12d@uint32 ebx_n edx;
(* xor    %edi,%r13d                               #! PC = 0x55555555a009 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%ebx,%r14d                          #! PC = 0x55555555a00c *)
ror r14d@uint32 ebx 0x6;
(* lea    (%r8,%r12,1),%r8d                        #! PC = 0x55555555a012 *)
adds dc r8d r8d r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555a016 *)
xor r13d@uint32 r13d r14d;
(* mov    %r9d,%edi                                #! PC = 0x55555555a019 *)
mov edi r9d;
(* rorx   $0x16,%r9d,%r12d                         #! PC = 0x55555555a01c *)
ror r12d@uint32 r9d 0x16;
(* lea    (%r8,%r13,1),%r8d                        #! PC = 0x55555555a022 *)
adds dc r8d r8d r13d;
(* xor    %r10d,%edi                               #! PC = 0x55555555a026 *)
xor edi@uint32 edi r10d;
(* rorx   $0xd,%r9d,%r14d                          #! PC = 0x55555555a029 *)
ror r14d@uint32 r9d 0xd;
(* rorx   $0x2,%r9d,%r13d                          #! PC = 0x55555555a02f *)
ror r13d@uint32 r9d 0x2;
(* lea    (%rax,%r8,1),%eax                        #! PC = 0x55555555a035 *)
adds dc eax eax r8d;
(* and    %edi,%r15d                               #! PC = 0x55555555a039 *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555a03c *)
xor r14d@uint32 r14d r12d;
(* xor    %r10d,%r15d                              #! PC = 0x55555555a03f *)
xor r15d@uint32 r15d r10d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555a042 *)
xor r14d@uint32 r14d r13d;
(* lea    (%r8,%r15,1),%r8d                        #! PC = 0x55555555a045 *)
adds dc r8d r8d r15d;
(* mov    %ebx,%r12d                               #! PC = 0x55555555a049 *)
mov r12d ebx;
(* add    0x20(%rsp),%edx                          #! EA = L0x7fffffffdc20; Value = 0x095abc765f5a146d; PC = 0x55555555a04c *)
adds dc edx edx L0x7fffffffdc20;
(* and    %eax,%r12d                               #! PC = 0x55555555a050 *)
and r12d@uint32 r12d eax;
(* rorx   $0x19,%eax,%r13d                         #! PC = 0x55555555a053 *)
ror r13d@uint32 eax 0x19;
(* rorx   $0xb,%eax,%r15d                          #! PC = 0x55555555a059 *)
ror r15d@uint32 eax 0xb;
(* lea    (%r8,%r14,1),%r8d                        #! PC = 0x55555555a05f *)
adds dc r8d r8d r14d;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555a063 *)
adds dc edx edx r12d;
(* andn   %ecx,%eax,%r12d                          #! PC = 0x55555555a067 *)
not eax_n@uint32 eax; and r12d@uint32 eax_n ecx;
(* xor    %r15d,%r13d                              #! PC = 0x55555555a06c *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%eax,%r14d                          #! PC = 0x55555555a06f *)
ror r14d@uint32 eax 0x6;
(* lea    (%rdx,%r12,1),%edx                       #! PC = 0x55555555a075 *)
adds dc edx edx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555a079 *)
xor r13d@uint32 r13d r14d;
(* mov    %r8d,%r15d                               #! PC = 0x55555555a07c *)
mov r15d r8d;
(* rorx   $0x16,%r8d,%r12d                         #! PC = 0x55555555a07f *)
ror r12d@uint32 r8d 0x16;
(* lea    (%rdx,%r13,1),%edx                       #! PC = 0x55555555a085 *)
adds dc edx edx r13d;
(* xor    %r9d,%r15d                               #! PC = 0x55555555a089 *)
xor r15d@uint32 r15d r9d;
(* rorx   $0xd,%r8d,%r14d                          #! PC = 0x55555555a08c *)
ror r14d@uint32 r8d 0xd;
(* rorx   $0x2,%r8d,%r13d                          #! PC = 0x55555555a092 *)
ror r13d@uint32 r8d 0x2;
(* lea    (%r11,%rdx,1),%r11d                      #! PC = 0x55555555a098 *)
adds dc r11d r11d edx;
(* and    %r15d,%edi                               #! PC = 0x55555555a09c *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x55555555a09f *)
xor r14d@uint32 r14d r12d;
(* xor    %r9d,%edi                                #! PC = 0x55555555a0a2 *)
xor edi@uint32 edi r9d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555a0a5 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rdx,%rdi,1),%edx                       #! PC = 0x55555555a0a8 *)
adds dc edx edx edi;
(* mov    %eax,%r12d                               #! PC = 0x55555555a0ab *)
mov r12d eax;
(* add    0x24(%rsp),%ecx                          #! EA = L0x7fffffffdc24; Value = 0xb44e0f87095abc76; PC = 0x55555555a0ae *)
adds dc ecx ecx L0x7fffffffdc24;
(* and    %r11d,%r12d                              #! PC = 0x55555555a0b2 *)
and r12d@uint32 r12d r11d;
(* rorx   $0x19,%r11d,%r13d                        #! PC = 0x55555555a0b5 *)
ror r13d@uint32 r11d 0x19;
(* rorx   $0xb,%r11d,%edi                          #! PC = 0x55555555a0bb *)
ror edi@uint32 r11d 0xb;
(* lea    (%rdx,%r14,1),%edx                       #! PC = 0x55555555a0c1 *)
adds dc edx edx r14d;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x55555555a0c5 *)
adds dc ecx ecx r12d;
(* andn   %ebx,%r11d,%r12d                         #! PC = 0x55555555a0c9 *)
not r11d_n@uint32 r11d; and r12d@uint32 r11d_n ebx;
(* xor    %edi,%r13d                               #! PC = 0x55555555a0ce *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r11d,%r14d                         #! PC = 0x55555555a0d1 *)
ror r14d@uint32 r11d 0x6;
(* lea    (%rcx,%r12,1),%ecx                       #! PC = 0x55555555a0d7 *)
adds dc ecx ecx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555a0db *)
xor r13d@uint32 r13d r14d;
(* mov    %edx,%edi                                #! PC = 0x55555555a0de *)
mov edi edx;
(* rorx   $0x16,%edx,%r12d                         #! PC = 0x55555555a0e0 *)
ror r12d@uint32 edx 0x16;
(* lea    (%rcx,%r13,1),%ecx                       #! PC = 0x55555555a0e6 *)
adds dc ecx ecx r13d;
(* xor    %r8d,%edi                                #! PC = 0x55555555a0ea *)
xor edi@uint32 edi r8d;
(* rorx   $0xd,%edx,%r14d                          #! PC = 0x55555555a0ed *)
ror r14d@uint32 edx 0xd;
(* rorx   $0x2,%edx,%r13d                          #! PC = 0x55555555a0f3 *)
ror r13d@uint32 edx 0x2;
(* lea    (%r10,%rcx,1),%r10d                      #! PC = 0x55555555a0f9 *)
adds dc r10d r10d ecx;
(* and    %edi,%r15d                               #! PC = 0x55555555a0fd *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555a100 *)
xor r14d@uint32 r14d r12d;
(* xor    %r8d,%r15d                               #! PC = 0x55555555a103 *)
xor r15d@uint32 r15d r8d;
(* xor    %r13d,%r14d                              #! PC = 0x55555555a106 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rcx,%r15,1),%ecx                       #! PC = 0x55555555a109 *)
adds dc ecx ecx r15d;
(* mov    %r11d,%r12d                              #! PC = 0x55555555a10d *)
mov r12d r11d;
(* add    0x28(%rsp),%ebx                          #! EA = L0x7fffffffdc28; Value = 0xce57b003b44e0f87; PC = 0x55555555a110 *)
adds dc ebx ebx L0x7fffffffdc28;
(* and    %r10d,%r12d                              #! PC = 0x55555555a114 *)
and r12d@uint32 r12d r10d;
(* rorx   $0x19,%r10d,%r13d                        #! PC = 0x55555555a117 *)
ror r13d@uint32 r10d 0x19;
(* rorx   $0xb,%r10d,%r15d                         #! PC = 0x55555555a11d *)
ror r15d@uint32 r10d 0xb;
(* lea    (%rcx,%r14,1),%ecx                       #! PC = 0x55555555a123 *)
adds dc ecx ecx r14d;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x55555555a127 *)
adds dc ebx ebx r12d;
(* andn   %eax,%r10d,%r12d                         #! PC = 0x55555555a12b *)
not r10d_n@uint32 r10d; and r12d@uint32 r10d_n eax;
(* xor    %r15d,%r13d                              #! PC = 0x55555555a130 *)
xor r13d@uint32 r13d r15d;
(* rorx   $0x6,%r10d,%r14d                         #! PC = 0x55555555a133 *)
ror r14d@uint32 r10d 0x6;
(* lea    (%rbx,%r12,1),%ebx                       #! PC = 0x55555555a139 *)
adds dc ebx ebx r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555a13d *)
xor r13d@uint32 r13d r14d;
(* mov    %ecx,%r15d                               #! PC = 0x55555555a140 *)
mov r15d ecx;
(* rorx   $0x16,%ecx,%r12d                         #! PC = 0x55555555a143 *)
ror r12d@uint32 ecx 0x16;
(* lea    (%rbx,%r13,1),%ebx                       #! PC = 0x55555555a149 *)
adds dc ebx ebx r13d;
(* xor    %edx,%r15d                               #! PC = 0x55555555a14d *)
xor r15d@uint32 r15d edx;
(* rorx   $0xd,%ecx,%r14d                          #! PC = 0x55555555a150 *)
ror r14d@uint32 ecx 0xd;
(* rorx   $0x2,%ecx,%r13d                          #! PC = 0x55555555a156 *)
ror r13d@uint32 ecx 0x2;
(* lea    (%r9,%rbx,1),%r9d                        #! PC = 0x55555555a15c *)
adds dc r9d r9d ebx;
(* and    %r15d,%edi                               #! PC = 0x55555555a160 *)
and edi@uint32 edi r15d;
(* xor    %r12d,%r14d                              #! PC = 0x55555555a163 *)
xor r14d@uint32 r14d r12d;
(* xor    %edx,%edi                                #! PC = 0x55555555a166 *)
xor edi@uint32 edi edx;
(* xor    %r13d,%r14d                              #! PC = 0x55555555a168 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rbx,%rdi,1),%ebx                       #! PC = 0x55555555a16b *)
adds dc ebx ebx edi;
(* mov    %r10d,%r12d                              #! PC = 0x55555555a16e *)
mov r12d r10d;
(* add    0x2c(%rsp),%eax                          #! EA = L0x7fffffffdc2c; Value = 0x90beffface57b003; PC = 0x55555555a171 *)
adds dc eax eax L0x7fffffffdc2c;
(* and    %r9d,%r12d                               #! PC = 0x55555555a175 *)
and r12d@uint32 r12d r9d;
(* rorx   $0x19,%r9d,%r13d                         #! PC = 0x55555555a178 *)
ror r13d@uint32 r9d 0x19;
(* rorx   $0xb,%r9d,%edi                           #! PC = 0x55555555a17e *)
ror edi@uint32 r9d 0xb;
(* lea    (%rbx,%r14,1),%ebx                       #! PC = 0x55555555a184 *)
adds dc ebx ebx r14d;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x55555555a188 *)
adds dc eax eax r12d;
(* andn   %r11d,%r9d,%r12d                         #! PC = 0x55555555a18c *)
not r9d_n@uint32 r9d; and r12d@uint32 r9d_n r11d;
(* xor    %edi,%r13d                               #! PC = 0x55555555a191 *)
xor r13d@uint32 r13d edi;
(* rorx   $0x6,%r9d,%r14d                          #! PC = 0x55555555a194 *)
ror r14d@uint32 r9d 0x6;
(* lea    (%rax,%r12,1),%eax                       #! PC = 0x55555555a19a *)
adds dc eax eax r12d;
(* xor    %r14d,%r13d                              #! PC = 0x55555555a19e *)
xor r13d@uint32 r13d r14d;
(* mov    %ebx,%edi                                #! PC = 0x55555555a1a1 *)
mov edi ebx;
(* rorx   $0x16,%ebx,%r12d                         #! PC = 0x55555555a1a3 *)
ror r12d@uint32 ebx 0x16;
(* lea    (%rax,%r13,1),%eax                       #! PC = 0x55555555a1a9 *)
adds dc eax eax r13d;
(* xor    %ecx,%edi                                #! PC = 0x55555555a1ad *)
xor edi@uint32 edi ecx;
(* rorx   $0xd,%ebx,%r14d                          #! PC = 0x55555555a1af *)
ror r14d@uint32 ebx 0xd;
(* rorx   $0x2,%ebx,%r13d                          #! PC = 0x55555555a1b5 *)
ror r13d@uint32 ebx 0x2;
(* lea    (%r8,%rax,1),%r8d                        #! PC = 0x55555555a1bb *)
adds dc r8d r8d eax;
(* and    %edi,%r15d                               #! PC = 0x55555555a1bf *)
and r15d@uint32 r15d edi;
(* xor    %r12d,%r14d                              #! PC = 0x55555555a1c2 *)
xor r14d@uint32 r14d r12d;
(* xor    %ecx,%r15d                               #! PC = 0x55555555a1c5 *)
xor r15d@uint32 r15d ecx;
(* xor    %r13d,%r14d                              #! PC = 0x55555555a1c8 *)
xor r14d@uint32 r14d r13d;
(* lea    (%rax,%r15,1),%eax                       #! PC = 0x55555555a1cb *)
adds dc eax eax r15d;
(* mov    %r9d,%r12d                               #! PC = 0x55555555a1cf *)
mov r12d r9d;
(* mov    0x200(%rsp),%rdi                         #! EA = L0x7fffffffde00; Value = 0x000055555555d040; PC = 0x55555555a1d2 *)
mov rdi L0x7fffffffde00;
(* add    %r14d,%eax                               #! PC = 0x55555555a1da *)
adds dc eax eax r14d;
(* lea    0x1c0(%rsp),%rbp                         #! PC = 0x55555555a1dd *)
(* lea %%EA %rbp *)
nop;
(* add    (%rdi),%eax                              #! EA = L0x55555555d040; Value = 0xbb67ae856a09e667; PC = 0x55555555a1e5 *)
adds dc eax eax L0x55555555d040;
(* add    0x4(%rdi),%ebx                           #! EA = L0x55555555d044; Value = 0x3c6ef372bb67ae85; PC = 0x55555555a1e7 *)
adds dc ebx ebx L0x55555555d044;
(* add    0x8(%rdi),%ecx                           #! EA = L0x55555555d048; Value = 0xa54ff53a3c6ef372; PC = 0x55555555a1ea *)
adds dc ecx ecx L0x55555555d048;
(* add    0xc(%rdi),%edx                           #! EA = L0x55555555d04c; Value = 0x510e527fa54ff53a; PC = 0x55555555a1ed *)
adds dc edx edx L0x55555555d04c;
(* add    0x10(%rdi),%r8d                          #! EA = L0x55555555d050; Value = 0x9b05688c510e527f; PC = 0x55555555a1f0 *)
adds dc r8d r8d L0x55555555d050;
(* add    0x14(%rdi),%r9d                          #! EA = L0x55555555d054; Value = 0x1f83d9ab9b05688c; PC = 0x55555555a1f4 *)
adds dc r9d r9d L0x55555555d054;
(* add    0x18(%rdi),%r10d                         #! EA = L0x55555555d058; Value = 0x5be0cd191f83d9ab; PC = 0x55555555a1f8 *)
adds dc r10d r10d L0x55555555d058;
(* add    0x1c(%rdi),%r11d                         #! EA = L0x55555555d05c; Value = 0x000000805be0cd19; PC = 0x55555555a1fc *)
adds dc r11d r11d L0x55555555d05c;
(* mov    %eax,(%rdi)                              #! EA = L0x55555555d040; PC = 0x55555555a200 *)
mov L0x55555555d040 eax;
(* mov    %ebx,0x4(%rdi)                           #! EA = L0x55555555d044; PC = 0x55555555a202 *)
mov L0x55555555d044 ebx;
(* mov    %ecx,0x8(%rdi)                           #! EA = L0x55555555d048; PC = 0x55555555a205 *)
mov L0x55555555d048 ecx;
(* mov    %edx,0xc(%rdi)                           #! EA = L0x55555555d04c; PC = 0x55555555a208 *)
mov L0x55555555d04c edx;
(* mov    %r8d,0x10(%rdi)                          #! EA = L0x55555555d050; PC = 0x55555555a20b *)
mov L0x55555555d050 r8d;
(* mov    %r9d,0x14(%rdi)                          #! EA = L0x55555555d054; PC = 0x55555555a20f *)
mov L0x55555555d054 r9d;
(* mov    %r10d,0x18(%rdi)                         #! EA = L0x55555555d058; PC = 0x55555555a213 *)
mov L0x55555555d058 r10d;
(* mov    %r11d,0x1c(%rdi)                         #! EA = L0x55555555d05c; PC = 0x55555555a217 *)
mov L0x55555555d05c r11d;
(* cmp    0x50(%rbp),%rsi                          #! EA = L0x7fffffffde10; Value = 0x000055555555d0a8; PC = 0x55555555a21b *)
(* cmp L0x7fffffffde10 %rsi *)
nop;
(* #je     0x55555555a5bf <sha256_block_data_order_avx2+5119>#! PC = 0x55555555a21f *)
#je     0x55555555a5bf <sha256_block_data_order_avx2+5119>#! 0x55555555a21f = 0x55555555a21f;
(* mov    0x58(%rbp),%rsi                          #! EA = L0x7fffffffde18; Value = 0x00007fffffffdfc8; PC = 0x55555555a5bf *)
mov rdi L0x7fffffffde18;
(* vzeroupper                                      #! PC = 0x55555555a5c3 *)
(* vzeroupper *)
nop;
(* mov    -0x30(%rsi),%r15                         #! EA = L0x7fffffffdf98; Value = 0x00007ffff7ffd040; PC = 0x55555555a5c6 *)
mov r15 L0x7fffffffdf98;
(* mov    -0x28(%rsi),%r14                         #! EA = L0x7fffffffdfa0; Value = 0x000055555555cdb8; PC = 0x55555555a5ca *)
mov r14 L0x7fffffffdfa0;
(* mov    -0x20(%rsi),%r13                         #! EA = L0x7fffffffdfa8; Value = 0x0000555555555169; PC = 0x55555555a5ce *)
mov r13 L0x7fffffffdfa8;
(* mov    -0x18(%rsi),%r12                         #! EA = L0x7fffffffdfb0; Value = 0x000055555555d068; PC = 0x55555555a5d2 *)
mov r12 L0x7fffffffdfb0;
(* mov    -0x10(%rsi),%rbp                         #! EA = L0x7fffffffdfb8; Value = 0x000055555555d0c0; PC = 0x55555555a5d6 *)
mov rbp L0x7fffffffdfb8;
(* mov    -0x8(%rsi),%rbx                          #! EA = L0x7fffffffdfc0; Value = 0x000055555555d040; PC = 0x55555555a5da *)
mov rbx L0x7fffffffdfc0;
(* lea    (%rsi),%rsp                              #! PC = 0x55555555a5de *)
(* lea %%EA %rsp *)
nop;
(* #! <- SP = 0x7fffffffdfc8 *)
#! 0x7fffffffdfc8 = 0x7fffffffdfc8;
(* #repz ret                                       #! PC = 0x55555555a5e1 *)
#repz ret                                       #! 0x55555555a5e1 = 0x55555555a5e1;

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

