(* macbook: cv -v -jobs 8 -slicing -isafety p256PointAddAsm.cl
Parsing CryptoLine file:                  [OK]        0.0217 seconds
Checking well-formedness:                 [OK]        0.0157 seconds

Procedure main
--------------
Transforming to SSA form:                 [OK]        0.0031 seconds
Normalizing specification:                [OK]        0.0058 seconds
Rewriting assignments:                    [OK]        0.0046 seconds
Verifying program safety:                 
      Overall                             [OK]        0.1803 seconds
Verifying range assertions:               [OK]        1492.7370 seconds
Verifying range specification:                  [OK]        12.0208 seconds
Rewriting value-preserved casting:        [OK]        0.0013 seconds
Verifying algebraic assertions:                 [OK]        0.0070 seconds
Verifying algebraic specification:        [OK]        167.1162 seconds
Procedure verification:                   [OK]        1672.0779 seconds

Summary
-------
Verification result:                      [OK]        1672.1156 seconds
*)


const P256_0 = 0xffffffffffffffff
const P256_1 = 0x00000000ffffffff
const P256_2 = 0x0000000000000000
const P256_3 = 0xffffffff00000001

proc main (uint64 x1R_0, uint64 x1R_1, uint64 x1R_2, uint64 x1R_3,
           uint64 y1R_0, uint64 y1R_1, uint64 y1R_2, uint64 y1R_3,
           uint64 z1R_0, uint64 z1R_1, uint64 z1R_2, uint64 z1R_3,
           uint64 x2R_0, uint64 x2R_1, uint64 x2R_2, uint64 x2R_3,
           uint64 y2R_0, uint64 y2R_1, uint64 y2R_2, uint64 y2R_3,
           uint64 z2R_0, uint64 z2R_1, uint64 z2R_2, uint64 z2R_3) =
{
  true
  &&
  and [limbs 64 [x1R_0,x1R_1,x1R_2,x1R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y1R_0,y1R_1,y1R_2,y1R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [z1R_0,z1R_1,z1R_2,z1R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [x2R_0,x2R_1,x2R_2,x2R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [y2R_0,y2R_1,y2R_2,y2R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64],
       limbs 64 [z2R_0,z2R_1,z2R_2,z2R_3] <u
         limbs 64 [$P256_0@64,$P256_1@64,$P256_2@64,$P256_3@64]
  ]
}

ghost x1_0@uint64, x1_1@uint64, x1_2@uint64, x1_3@uint64,
      y1_0@uint64, y1_1@uint64, y1_2@uint64, y1_3@uint64,
      z1_0@uint64, z1_1@uint64, z1_2@uint64, z1_3@uint64,
      x2_0@uint64, x2_1@uint64, x2_2@uint64, x2_3@uint64,
      y2_0@uint64, y2_1@uint64, y2_2@uint64, y2_3@uint64,
      z2_0@uint64, z2_1@uint64, z2_2@uint64, z2_3@uint64 :
  and [eqmod (limbs 64 [x1R_0,x1R_1,x1R_2,x1R_3])
             (2**256 * limbs 64 [x1_0,x1_1,x1_2,x1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [y1R_0,y1R_1,y1R_2,y1R_3])
             (2**256 * limbs 64 [y1_0,y1_1,y1_2,y1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [z1R_0,z1R_1,z1R_2,z1R_3])
             (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [x2R_0,x2R_1,x2R_2,x2R_3])
             (2**256 * limbs 64 [x2_0,x2_1,x2_2,x2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [y2R_0,y2R_1,y2R_2,y2R_3])
             (2**256 * limbs 64 [y2_0,y2_1,y2_2,y2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3]),
       eqmod (limbs 64 [z2R_0,z2R_1,z2R_2,z2R_3])
             (2**256 * limbs 64 [z2_0,z2_1,z2_2,z2_3])
             (limbs 64 [$P256_0,$P256_1,$P256_2,$P256_3])
  ]
  && true;
   
mov L0xc0000b1670 x1R_0; mov L0xc0000b1678 x1R_1;
mov L0xc0000b1680 x1R_2; mov L0xc0000b1688 x1R_3;
mov L0xc0000b1690 y1R_0; mov L0xc0000b1698 y1R_1;
mov L0xc0000b16a0 y1R_2; mov L0xc0000b16a8 y1R_3;
mov L0xc0000b16b0 z1R_0; mov L0xc0000b16b8 z1R_1;
mov L0xc0000b16c0 z1R_2; mov L0xc0000b16c8 z1R_3;

mov L0xc0000b1d48 x2R_0; mov L0xc0000b1d50 x2R_1;
mov L0xc0000b1d58 x2R_2; mov L0xc0000b1d60 x2R_3;
mov L0xc0000b1d68 y2R_0; mov L0xc0000b1d70 y2R_1;
mov L0xc0000b1d78 y2R_2; mov L0xc0000b1d80 y2R_3;
mov L0xc0000b1d88 z2R_0; mov L0xc0000b1d90 z2R_1;
mov L0xc0000b1d98 z2R_2; mov L0xc0000b1da0 z2R_3;

mov L0x539af8 $P256_1@uint64;
mov L0x539b00 $P256_3@uint64;

(* crypto/elliptic.p256PointAddAsm.abi0: *)
#crypto/elliptic.p256PointAddAsm.abi0:;
(* sub    $0x2b0,%rsp                              #! PC = 0x4c8c5b *)
#subb carry rsp rsp 0x2b0@uint64;
(* mov    %rbp,0x2a8(%rsp)                         #! EA = L0xc0000b14c8; PC = 0x4c8c62 *)
#mov L0xc0000b14c8 rbp;
(* lea    0x2a8(%rsp),%rbp                         #! PC = 0x4c8c6a *)
#lea    %%EA,%%rbp                         #! 0x4c8c6a = 0x4c8c6a;
(* mov    0x2b8(%rsp),%rax                         #! EA = L0xc0000b14d8; Value = 0x000000c0000b1670; PC = 0x4c8c72 *)
#mov rax L0xc0000b14d8;
(* mov    0x2d0(%rsp),%rbx                         #! EA = L0xc0000b14f0; Value = 0x000000c0000b1670; PC = 0x4c8c7a *)
#mov rbx L0xc0000b14f0;
(* mov    0x2e8(%rsp),%rcx                         #! EA = L0xc0000b1508; Value = 0x000000c0000b1d48; PC = 0x4c8c82 *)
#mov rcx L0xc0000b1508;
(* movdqu (%rbx),%xmm0                             #! EA = L0xc0000b1670; Value = 0xe38f0c2aca4ff8c7; PC = 0x4c8c8a *)
mov xmm0_0 L0xc0000b1670; #mov xmm0_1 L0xc0000b1674;
mov xmm0_2 L0xc0000b1678; #mov xmm0_3 L0xc0000b167c;
(* movdqu 0x10(%rbx),%xmm1                         #! EA = L0xc0000b1680; Value = 0xf91ed42c92dec954; PC = 0x4c8c8e *)
mov xmm1_0 L0xc0000b1680; #mov xmm1_1 L0xc0000b1684;
mov xmm1_2 L0xc0000b1688; #mov xmm1_3 L0xc0000b168c;
(* movdqu 0x20(%rbx),%xmm2                         #! EA = L0xc0000b1690; Value = 0x3c5b8eb5f026046a; PC = 0x4c8c93 *)
mov xmm2_0 L0xc0000b1690; #mov xmm2_1 L0xc0000b1694;
mov xmm2_2 L0xc0000b1698; #mov xmm2_3 L0xc0000b169c;
(* movdqu 0x30(%rbx),%xmm3                         #! EA = L0xc0000b16a0; Value = 0xa29c45b058fdf952; PC = 0x4c8c98 *)
mov xmm3_0 L0xc0000b16a0; #mov xmm3_1 L0xc0000b16a4;
mov xmm3_2 L0xc0000b16a8; #mov xmm3_3 L0xc0000b16ac;
(* movdqu 0x40(%rbx),%xmm4                         #! EA = L0xc0000b16b0; Value = 0x745e50642253ec0c; PC = 0x4c8c9d *)
mov xmm4_0 L0xc0000b16b0; #mov xmm4_1 L0xc0000b16b4;
mov xmm4_2 L0xc0000b16b8; #mov xmm4_3 L0xc0000b16bc;
(* movdqu 0x50(%rbx),%xmm5                         #! EA = L0xc0000b16c0; Value = 0xea9b99470d61820e; PC = 0x4c8ca2 *)
mov xmm5_0 L0xc0000b16c0; #mov xmm5_1 L0xc0000b16c4;
mov xmm5_2 L0xc0000b16c8; #mov xmm5_3 L0xc0000b16cc;
(* movdqu %xmm0,(%rsp)                             #! EA = L0xc0000b1220; PC = 0x4c8ca7 *)
mov L0xc0000b1220 xmm0_0; #mov L0xc0000b1224 xmm0_1;
mov L0xc0000b1228 xmm0_2; #mov L0xc0000b122c xmm0_3;
(* movdqu %xmm1,0x10(%rsp)                         #! EA = L0xc0000b1230; PC = 0x4c8cac *)
mov L0xc0000b1230 xmm1_0; #mov L0xc0000b1234 xmm1_1;
mov L0xc0000b1238 xmm1_2; #mov L0xc0000b123c xmm1_3;
(* movdqu %xmm2,0x20(%rsp)                         #! EA = L0xc0000b1240; PC = 0x4c8cb2 *)
mov L0xc0000b1240 xmm2_0; #mov L0xc0000b1244 xmm2_1;
mov L0xc0000b1248 xmm2_2; #mov L0xc0000b124c xmm2_3;
(* movdqu %xmm3,0x30(%rsp)                         #! EA = L0xc0000b1250; PC = 0x4c8cb8 *)
mov L0xc0000b1250 xmm3_0; #mov L0xc0000b1254 xmm3_1;
mov L0xc0000b1258 xmm3_2; #mov L0xc0000b125c xmm3_3;
(* movdqu %xmm4,0x40(%rsp)                         #! EA = L0xc0000b1260; PC = 0x4c8cbe *)
mov L0xc0000b1260 xmm4_0; #mov L0xc0000b1264 xmm4_1;
mov L0xc0000b1268 xmm4_2; #mov L0xc0000b126c xmm4_3;
(* movdqu %xmm5,0x50(%rsp)                         #! EA = L0xc0000b1270; PC = 0x4c8cc4 *)
mov L0xc0000b1270 xmm5_0; #mov L0xc0000b1274 xmm5_1;
mov L0xc0000b1278 xmm5_2; #mov L0xc0000b127c xmm5_3;
(* movdqu (%rcx),%xmm0                             #! EA = L0xc0000b1d48; Value = 0x6973133158542699; PC = 0x4c8cca *)
mov xmm0_0 L0xc0000b1d48; #mov xmm0_1 L0xc0000b1d4c;
mov xmm0_2 L0xc0000b1d50; #mov xmm0_3 L0xc0000b1d54;
(* movdqu 0x10(%rcx),%xmm1                         #! EA = L0xc0000b1d58; Value = 0x0e8e5237bd361c0b; PC = 0x4c8cce *)
mov xmm1_0 L0xc0000b1d58; #mov xmm1_1 L0xc0000b1d5c;
mov xmm1_2 L0xc0000b1d60; #mov xmm1_3 L0xc0000b1d64;
(* movdqu 0x20(%rcx),%xmm2                         #! EA = L0xc0000b1d68; Value = 0xba2f28321129f606; PC = 0x4c8cd3 *)
mov xmm2_0 L0xc0000b1d68; #mov xmm2_1 L0xc0000b1d6c;
mov xmm2_2 L0xc0000b1d70; #mov xmm2_3 L0xc0000b1d74;
(* movdqu 0x30(%rcx),%xmm3                         #! EA = L0xc0000b1d78; Value = 0xf54dcca386b0c107; PC = 0x4c8cd8 *)
mov xmm3_0 L0xc0000b1d78; #mov xmm3_1 L0xc0000b1d7c;
mov xmm3_2 L0xc0000b1d80; #mov xmm3_3 L0xc0000b1d84;
(* movdqu 0x40(%rcx),%xmm4                         #! EA = L0xc0000b1d88; Value = 0x0000000000000001; PC = 0x4c8cdd *)
mov xmm4_0 L0xc0000b1d88; #mov xmm4_1 L0xc0000b1d8c;
mov xmm4_2 L0xc0000b1d90; #mov xmm4_3 L0xc0000b1d94;
(* movdqu 0x50(%rcx),%xmm5                         #! EA = L0xc0000b1d98; Value = 0xffffffffffffffff; PC = 0x4c8ce2 *)
mov xmm5_0 L0xc0000b1d98; #mov xmm5_1 L0xc0000b1d9c;
mov xmm5_2 L0xc0000b1da0; #mov xmm5_3 L0xc0000b1da4;
(* movdqu %xmm0,0x60(%rsp)                         #! EA = L0xc0000b1280; PC = 0x4c8ce7 *)
mov L0xc0000b1280 xmm0_0; #mov L0xc0000b1284 xmm0_1;
mov L0xc0000b1288 xmm0_2; #mov L0xc0000b128c xmm0_3;
(* movdqu %xmm1,0x70(%rsp)                         #! EA = L0xc0000b1290; PC = 0x4c8ced *)
mov L0xc0000b1290 xmm1_0; #mov L0xc0000b1294 xmm1_1;
mov L0xc0000b1298 xmm1_2; #mov L0xc0000b129c xmm1_3;
(* movdqu %xmm2,0x80(%rsp)                         #! EA = L0xc0000b12a0; PC = 0x4c8cf3 *)
mov L0xc0000b12a0 xmm2_0; #mov L0xc0000b12a4 xmm2_1;
mov L0xc0000b12a8 xmm2_2; #mov L0xc0000b12ac xmm2_3;
(* movdqu %xmm3,0x90(%rsp)                         #! EA = L0xc0000b12b0; PC = 0x4c8cfc *)
mov L0xc0000b12b0 xmm3_0; #mov L0xc0000b12b4 xmm3_1;
mov L0xc0000b12b8 xmm3_2; #mov L0xc0000b12bc xmm3_3;
(* movdqu %xmm4,0xa0(%rsp)                         #! EA = L0xc0000b12c0; PC = 0x4c8d05 *)
mov L0xc0000b12c0 xmm4_0; #mov L0xc0000b12c4 xmm4_1;
mov L0xc0000b12c8 xmm4_2; #mov L0xc0000b12cc xmm4_3;
(* movdqu %xmm5,0xb0(%rsp)                         #! EA = L0xc0000b12d0; PC = 0x4c8d0e *)
mov L0xc0000b12d0 xmm5_0; #mov L0xc0000b12d4 xmm5_1;
mov L0xc0000b12d8 xmm5_2; #mov L0xc0000b12dc xmm5_3;
(* mov    %rax,0x280(%rsp)                         #! EA = L0xc0000b14a0; PC = 0x4c8d17 *)
#mov L0xc0000b14a0 rax;
(* mov    0xa0(%rsp),%r10                          #! EA = L0xc0000b12c0; Value = 0x0000000000000001; PC = 0x4c8d1f *)
mov r10 L0xc0000b12c0;
(* mov    0xa8(%rsp),%r11                          #! EA = L0xc0000b12c8; Value = 0xffffffff00000000; PC = 0x4c8d27 *)
mov r11 L0xc0000b12c8;
(* mov    0xb0(%rsp),%r12                          #! EA = L0xc0000b12d0; Value = 0xffffffffffffffff; PC = 0x4c8d2f *)
mov r12 L0xc0000b12d0;
(* mov    0xb8(%rsp),%r13                          #! EA = L0xc0000b12d8; Value = 0x00000000fffffffe; PC = 0x4c8d37 *)
mov r13 L0xc0000b12d8;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c8d3f *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c8d3f = 0x4c8d3f;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c82e4 *)
#mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;
ghost r10a@uint64, r11a@uint64, r12a@uint64, r13a@uint64, rbpa@uint64 :
      and [r10a=r10, r11a=r11, r12a=r12, r13a=r13, rbpa=rbp]
   && and [r10a=r10, r11a=r11, r12a=r12, r13a=r13, rbpa=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;

(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10a, r11a, r12a, r13a, rbpa])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10a, r11a, r12a, r13a, rbpa])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
#mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b1218 *)
(* 0 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [z2_0, z2_1, z2_2, z2_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [ precondition, all ghosts ]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [ precondition ];
    #! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0x1c0(%rsp)                         #! EA = L0xc0000b13e0; PC = 0x4c8d44 *)
mov L0xc0000b13e0 r10;
(* mov    %r11,0x1c8(%rsp)                         #! EA = L0xc0000b13e8; PC = 0x4c8d4c *)
mov L0xc0000b13e8 r11;
(* mov    %r12,0x1d0(%rsp)                         #! EA = L0xc0000b13f0; PC = 0x4c8d54 *)
mov L0xc0000b13f0 r12;
(* mov    %r13,0x1d8(%rsp)                         #! EA = L0xc0000b13f8; PC = 0x4c8d5c *)
mov L0xc0000b13f8 r13;
(* mov    0xa0(%rsp),%r14                          #! EA = L0xc0000b12c0; Value = 0x0000000000000001; PC = 0x4c8d64 *)
mov r14 L0xc0000b12c0;
(* mov    0xa8(%rsp),%r15                          #! EA = L0xc0000b12c8; Value = 0xffffffff00000000; PC = 0x4c8d6c *)
mov r15 L0xc0000b12c8;
(* mov    0xb0(%rsp),%rdi                          #! EA = L0xc0000b12d0; Value = 0xffffffffffffffff; PC = 0x4c8d74 *)
mov rdi L0xc0000b12d0;
(* mov    0xb8(%rsp),%rsi                          #! EA = L0xc0000b12d8; Value = 0x00000000fffffffe; PC = 0x4c8d7c *)
mov rsi L0xc0000b12d8;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8d84 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8d84 = 0x4c8d84;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10b@uint64, r11b@uint64, r12b@uint64, r13b@uint64, rbpb@uint64 :
      and [r10b=r10, r11b=r11, r12b=r12, r13b=r13, rbpb=rbp]
   && and [r10b=r10, r11b=r11, r12b=r12, r13b=r13, rbpb=rbp];

(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;

(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10b, r11b, r12b, r13b, rbpb])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10b, r11b, r12b, r13b, rbpb])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 1 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [z2_0, z2_1, z2_2, z2_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    0x20(%rsp),%r14                          #! EA = L0xc0000b1240; Value = 0x3c5b8eb5f026046a; PC = 0x4c8d89 *)
mov r14 L0xc0000b1240;
(* mov    0x28(%rsp),%r15                          #! EA = L0xc0000b1248; Value = 0xe6acb4f86800755b; PC = 0x4c8d8e *)
mov r15 L0xc0000b1248;
(* mov    0x30(%rsp),%rdi                          #! EA = L0xc0000b1250; Value = 0xa29c45b058fdf952; PC = 0x4c8d93 *)
mov rdi L0xc0000b1250;
(* mov    0x38(%rsp),%rsi                          #! EA = L0xc0000b1258; Value = 0x16b524522414e767; PC = 0x4c8d98 *)
mov rsi L0xc0000b1258;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8d9d *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8d9d = 0x4c8d9d;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10c@uint64, r11c@uint64, r12c@uint64, r13c@uint64, rbpc@uint64 :
      and [r10c=r10, r11c=r11, r12c=r12, r13c=r13, rbpc=rbp]
   && and [r10c=r10, r11c=r11, r12c=r12, r13c=r13, rbpc=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10c, r11c, r12c, r13c, rbpc])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10c, r11c, r12c, r13c, rbpc])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 2 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x160(%rsp)                         #! EA = L0xc0000b1380; PC = 0x4c8da2 *)
mov L0xc0000b1380 r10;
(* mov    %r11,0x168(%rsp)                         #! EA = L0xc0000b1388; PC = 0x4c8daa *)
mov L0xc0000b1388 r11;
(* mov    %r12,0x170(%rsp)                         #! EA = L0xc0000b1390; PC = 0x4c8db2 *)
mov L0xc0000b1390 r12;
(* mov    %r13,0x178(%rsp)                         #! EA = L0xc0000b1398; PC = 0x4c8dba *)
mov L0xc0000b1398 r13;
(* mov    0x40(%rsp),%r10                          #! EA = L0xc0000b1260; Value = 0x745e50642253ec0c; PC = 0x4c8dc2 *)
mov r10 L0xc0000b1260;
(* mov    0x48(%rsp),%r11                          #! EA = L0xc0000b1268; Value = 0x41a7fb0ba3439cff; PC = 0x4c8dc7 *)
mov r11 L0xc0000b1268;
(* mov    0x50(%rsp),%r12                          #! EA = L0xc0000b1270; Value = 0xea9b99470d61820e; PC = 0x4c8dcc *)
mov r12 L0xc0000b1270;
(* mov    0x58(%rsp),%r13                          #! EA = L0xc0000b1278; Value = 0x55c379af15a52bbf; PC = 0x4c8dd1 *)
mov r13 L0xc0000b1278;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c8dd6 *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c8dd6 = 0x4c8dd6;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c82e4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;
ghost r10d@uint64, r11d@uint64, r12d@uint64, r13d@uint64, rbpd@uint64 :
      and [r10d=r10, r11d=r11, r12d=r12, r13d=r13, rbpd=rbp]
   && and [r10d=r10, r11d=r11, r12d=r12, r13d=r13, rbpd=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10d, r11d, r12d, r13d, rbpd])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10d, r11d, r12d, r13d, rbpd])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;

(* 3 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0x1a0(%rsp)                         #! EA = L0xc0000b13c0; PC = 0x4c8ddb *)
mov L0xc0000b13c0 r10;
(* mov    %r11,0x1a8(%rsp)                         #! EA = L0xc0000b13c8; PC = 0x4c8de3 *)
mov L0xc0000b13c8 r11;
(* mov    %r12,0x1b0(%rsp)                         #! EA = L0xc0000b13d0; PC = 0x4c8deb *)
mov L0xc0000b13d0 r12;
(* mov    %r13,0x1b8(%rsp)                         #! EA = L0xc0000b13d8; PC = 0x4c8df3 *)
mov L0xc0000b13d8 r13;
(* mov    0x40(%rsp),%r14                          #! EA = L0xc0000b1260; Value = 0x745e50642253ec0c; PC = 0x4c8dfb *)
mov r14 L0xc0000b1260;
(* mov    0x48(%rsp),%r15                          #! EA = L0xc0000b1268; Value = 0x41a7fb0ba3439cff; PC = 0x4c8e00 *)
mov r15 L0xc0000b1268;
(* mov    0x50(%rsp),%rdi                          #! EA = L0xc0000b1270; Value = 0xea9b99470d61820e; PC = 0x4c8e05 *)
mov rdi L0xc0000b1270;
(* mov    0x58(%rsp),%rsi                          #! EA = L0xc0000b1278; Value = 0x55c379af15a52bbf; PC = 0x4c8e0a *)
mov rsi L0xc0000b1278;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8e0f *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8e0f = 0x4c8e0f;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10e@uint64, r11e@uint64, r12e@uint64, r13e@uint64, rbpe@uint64 :
      and [r10e=r10, r11e=r11, r12e=r12, r13e=r13, rbpe=rbp]
   && and [r10e=r10, r11e=r11, r12e=r12, r13e=r13, rbpe=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10e, r11e, r12e, r13e, rbpe])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10e, r11e, r12e, r13e, rbpe])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 4 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    0x80(%rsp),%r14                          #! EA = L0xc0000b12a0; Value = 0xba2f28321129f606; PC = 0x4c8e14 *)
mov r14 L0xc0000b12a0;
(* mov    0x88(%rsp),%r15                          #! EA = L0xc0000b12a8; Value = 0x20d3fd85d1a1ce7f; PC = 0x4c8e1c *)
mov r15 L0xc0000b12a8;
(* mov    0x90(%rsp),%rdi                          #! EA = L0xc0000b12b0; Value = 0xf54dcca386b0c107; PC = 0x4c8e24 *)
mov rdi L0xc0000b12b0;
(* mov    0x98(%rsp),%rsi                          #! EA = L0xc0000b12b8; Value = 0x2ae1bcd78ad295df; PC = 0x4c8e2c *)
mov rsi L0xc0000b12b8;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8e34 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8e34 = 0x4c8e34;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10f@uint64, r11f@uint64, r12f@uint64, r13f@uint64, rbpf@uint64 :
      and [r10f=r10, r11f=r11, r12f=r12, r13f=r13, rbpf=rbp]
   && and [r10f=r10, r11f=r11, r12f=r12, r13f=r13, rbpf=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10f, r11f, r12f, r13f, rbpf])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10f, r11f, r12f, r13f, rbpf])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* 5 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x180(%rsp)                         #! EA = L0xc0000b13a0; PC = 0x4c8e39 *)
mov L0xc0000b13a0 r10;
(* mov    %r11,0x188(%rsp)                         #! EA = L0xc0000b13a8; PC = 0x4c8e41 *)
mov L0xc0000b13a8 r11;
(* mov    %r12,0x190(%rsp)                         #! EA = L0xc0000b13b0; PC = 0x4c8e49 *)
mov L0xc0000b13b0 r12;
(* mov    %r13,0x198(%rsp)                         #! EA = L0xc0000b13b8; PC = 0x4c8e51 *)
mov L0xc0000b13b8 r13;
(* mov    0x160(%rsp),%r14                         #! EA = L0xc0000b1380; Value = 0x3c5b8eb5f026046a; PC = 0x4c8e59 *)
mov r14 L0xc0000b1380;
(* mov    0x168(%rsp),%r15                         #! EA = L0xc0000b1388; Value = 0xe6acb4f86800755b; PC = 0x4c8e61 *)
mov r15 L0xc0000b1388;
(* mov    0x170(%rsp),%rdi                         #! EA = L0xc0000b1390; Value = 0xa29c45b058fdf952; PC = 0x4c8e69 *)
mov rdi L0xc0000b1390;
(* mov    0x178(%rsp),%rsi                         #! EA = L0xc0000b1398; Value = 0x16b524522414e767; PC = 0x4c8e71 *)
mov rsi L0xc0000b1398;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c8e79 *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c8e79 = 0x4c8e79;

(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    %r10,0x200(%rsp)                         #! EA = L0xc0000b1420; PC = 0x4c8e7e *)
mov L0xc0000b1420 r10;
(* mov    %r11,0x208(%rsp)                         #! EA = L0xc0000b1428; PC = 0x4c8e86 *)
mov L0xc0000b1428 r11;
(* mov    %r12,0x210(%rsp)                         #! EA = L0xc0000b1430; PC = 0x4c8e8e *)
mov L0xc0000b1430 r12;
(* mov    %r13,0x218(%rsp)                         #! EA = L0xc0000b1438; PC = 0x4c8e96 *)
mov L0xc0000b1438 r13;
(* #call   0x4c8c00 <p256IsZero>                   #! PC = 0x4c8e9e *)
#call   0x4c8c00 <p256IsZero>                   #! 0x4c8e9e = 0x4c8e9e;

(* 6 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [2]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [2]];
    (* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8c00 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    $0x1,%r15                                #! PC = 0x4c8c03 *)
mov r15 0x1@uint64;
(* mov    %r10,%r14                                #! PC = 0x4c8c0a *)
mov r14 r10;
(* or     %r11,%r14                                #! PC = 0x4c8c0d *)
#or     %%r11,%%r14                                #! 0x4c8c0d = 0x4c8c0d;
or r14@uint64 r11 r14;
(* or     %r12,%r14                                #! PC = 0x4c8c10 *)
#or     %%r12,%%r14                                #! 0x4c8c10 = 0x4c8c10;
or r14@uint64 r12 r14;
(* or     %r13,%r14                                #! PC = 0x4c8c13 *)
#or     %%r13,%%r14                                #! 0x4c8c13 = 0x4c8c13;
or r14@uint64 r13 r14;
(* cmove  %r15,%rax                                #! PC = 0x4c8c16 *)
subc zero dc 0@uint64 r14;
cmov rax zero r15 rax;
(* xor    $0xffffffffffffffff,%r10                 #! PC = 0x4c8c1a *)
#xor    $0xffffffffffffffff,%%r10                 #! 0x4c8c1a = 0x4c8c1a;
xor r10@uint64 $P256_0@uint64 r10;
(* xor    0x70ed3(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8c1e *)
#xor    %%L0x539af8,%%r11        # 0x539af8 <p256const0>#! L0x539af8 = L0x539af8; 0x00000000ffffffff = 0x00000000ffffffff; 0x4c8c1e = 0x4c8c1e;
xor r11@uint64 L0x539af8 r11;
(* xor    0x70ed4(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8c25 *)
#xor    %%L0x539b00,%%r13        # 0x539b00 <p256const1>#! L0x539b00 = L0x539b00; 0xffffffff00000001 = 0xffffffff00000001; 0x4c8c25 = 0x4c8c25;
xor r13@uint64 L0x539b00 r13;
(* or     %r11,%r10                                #! PC = 0x4c8c2c *)
or r10@uint64 r11 r10; 
(* or     %r12,%r10                                #! PC = 0x4c8c2f *)
or r10@uint64 r12 r10; 
(* or     %r13,%r10                                #! PC = 0x4c8c32 *)
or r10@uint64 r13 r10; 
(* cmove  %r15,%rax                                #! PC = 0x4c8c35 *)
subc zero dc 0@uint64 r10;
cmov rax zero r15 rax;
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8c39 *)
#ret                                            #! 0x4c8c39 = 0x4c8c39;
(* mov    %rax,0x288(%rsp)                         #! EA = L0xc0000b14a8; PC = 0x4c8ea3 *)
mov L0xc0000b14a8 rax;
(* mov    0x1c0(%rsp),%r10                         #! EA = L0xc0000b13e0; Value = 0x0000000000000001; PC = 0x4c8eab *)
mov r10 L0xc0000b13e0;
(* mov    0x1c8(%rsp),%r11                         #! EA = L0xc0000b13e8; Value = 0xffffffff00000000; PC = 0x4c8eb3 *)
mov r11 L0xc0000b13e8;
(* mov    0x1d0(%rsp),%r12                         #! EA = L0xc0000b13f0; Value = 0xffffffffffffffff; PC = 0x4c8ebb *)
mov r12 L0xc0000b13f0;
(* mov    0x1d8(%rsp),%r13                         #! EA = L0xc0000b13f8; Value = 0x00000000fffffffe; PC = 0x4c8ec3 *)
mov r13 L0xc0000b13f8;
(* mov    (%rsp),%r14                              #! EA = L0xc0000b1220; Value = 0xe38f0c2aca4ff8c7; PC = 0x4c8ecb *)
mov r14 L0xc0000b1220;
(* mov    0x8(%rsp),%r15                           #! EA = L0xc0000b1228; Value = 0x52c21cd597e574cf; PC = 0x4c8ecf *)
mov r15 L0xc0000b1228;
(* mov    0x10(%rsp),%rdi                          #! EA = L0xc0000b1230; Value = 0xf91ed42c92dec954; PC = 0x4c8ed4 *)
mov rdi L0xc0000b1230;
(* mov    0x18(%rsp),%rsi                          #! EA = L0xc0000b1238; Value = 0x23b2d1e37a22ffcb; PC = 0x4c8ed9 *)
mov rsi L0xc0000b1238;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8ede *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8ede = 0x4c8ede;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10g@uint64, r11g@uint64, r12g@uint64, r13g@uint64, rbpg@uint64 :
      and [r10g=r10, r11g=r11, r12g=r12, r13g=r13, rbpg=rbp]
   && and [r10g=r10, r11g=r11, r12g=r12, r13g=r13, rbpg=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10g, r11g, r12g, r13g, rbpg])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10g, r11g, r12g, r13g, rbpg])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;

(* 7 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [0]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [0]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x120(%rsp)                         #! EA = L0xc0000b1340; PC = 0x4c8ee3 *)
mov L0xc0000b1340 r10;
(* mov    %r11,0x128(%rsp)                         #! EA = L0xc0000b1348; PC = 0x4c8eeb *)
mov L0xc0000b1348 r11;
(* mov    %r12,0x130(%rsp)                         #! EA = L0xc0000b1350; PC = 0x4c8ef3 *)
mov L0xc0000b1350 r12;
(* mov    %r13,0x138(%rsp)                         #! EA = L0xc0000b1358; PC = 0x4c8efb *)
mov L0xc0000b1358 r13;
(* mov    0x1a0(%rsp),%r10                         #! EA = L0xc0000b13c0; Value = 0x5394bcb445691cbc; PC = 0x4c8f03 *)
mov r10 L0xc0000b13c0;
(* mov    0x1a8(%rsp),%r11                         #! EA = L0xc0000b13c8; Value = 0x515c42d120468db1; PC = 0x4c8f0b *)
mov r11 L0xc0000b13c8;
(* mov    0x1b0(%rsp),%r12                         #! EA = L0xc0000b13d0; Value = 0x858dc0f06f4b7975; PC = 0x4c8f13 *)
mov r12 L0xc0000b13d0;
(* mov    0x1b8(%rsp),%r13                         #! EA = L0xc0000b13d8; Value = 0xa7c3f3f3e258dc9c; PC = 0x4c8f1b *)
mov r13 L0xc0000b13d8;
(* mov    0x60(%rsp),%r14                          #! EA = L0xc0000b1280; Value = 0x6973133158542699; PC = 0x4c8f23 *)
mov r14 L0xc0000b1280;
(* mov    0x68(%rsp),%r15                          #! EA = L0xc0000b1288; Value = 0xbd19f36dc1f6753a; PC = 0x4c8f28 *)
mov r15 L0xc0000b1288;
(* mov    0x70(%rsp),%rdi                          #! EA = L0xc0000b1290; Value = 0x0e8e5237bd361c0b; PC = 0x4c8f2d *)
mov rdi L0xc0000b1290;
(* mov    0x78(%rsp),%rsi                          #! EA = L0xc0000b1298; Value = 0xfb49eb701c5a1ccc; PC = 0x4c8f32 *)
mov rsi L0xc0000b1298;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c8f37 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c8f37 = 0x4c8f37;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10h@uint64, r11h@uint64, r12h@uint64, r13h@uint64, rbph@uint64 :
      and [r10h=r10, r11h=r11, r12h=r12, r13h=r13, rbph=rbp]
   && and [r10h=r10, r11h=r11, r12h=r12, r13h=r13, rbph=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10h, r11h, r12h, r13h, rbph])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10h, r11h, r12h, r13h, rbph])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 8 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [3]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [3]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x140(%rsp)                         #! EA = L0xc0000b1360; PC = 0x4c8f3c *)
mov L0xc0000b1360 r10;
(* mov    %r11,0x148(%rsp)                         #! EA = L0xc0000b1368; PC = 0x4c8f44 *)
mov L0xc0000b1368 r11;
(* mov    %r12,0x150(%rsp)                         #! EA = L0xc0000b1370; PC = 0x4c8f4c *)
mov L0xc0000b1370 r12;
(* mov    %r13,0x158(%rsp)                         #! EA = L0xc0000b1378; PC = 0x4c8f54 *)
mov L0xc0000b1378 r13;
(* mov    0x120(%rsp),%r14                         #! EA = L0xc0000b1340; Value = 0xe38f0c2aca4ff8c7; PC = 0x4c8f5c *)
mov r14 L0xc0000b1340;
(* mov    0x128(%rsp),%r15                         #! EA = L0xc0000b1348; Value = 0x52c21cd597e574cf; PC = 0x4c8f64 *)
mov r15 L0xc0000b1348;
(* mov    0x130(%rsp),%rdi                         #! EA = L0xc0000b1350; Value = 0xf91ed42c92dec954; PC = 0x4c8f6c *)
mov rdi L0xc0000b1350;
(* mov    0x138(%rsp),%rsi                         #! EA = L0xc0000b1358; Value = 0x23b2d1e37a22ffcb; PC = 0x4c8f74 *)
mov rsi L0xc0000b1358;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c8f7c *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c8f7c = 0x4c8f7c;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* 9 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [7]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [7]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    %r10,0x1e0(%rsp)                         #! EA = L0xc0000b1400; PC = 0x4c8f81 *)
mov L0xc0000b1400 r10;
(* mov    %r11,0x1e8(%rsp)                         #! EA = L0xc0000b1408; PC = 0x4c8f89 *)
mov L0xc0000b1408 r11;
(* mov    %r12,0x1f0(%rsp)                         #! EA = L0xc0000b1410; PC = 0x4c8f91 *)
mov L0xc0000b1410 r12;
(* mov    %r13,0x1f8(%rsp)                         #! EA = L0xc0000b1418; PC = 0x4c8f99 *)
mov L0xc0000b1418 r13;
(* #call   0x4c8c00 <p256IsZero>                   #! PC = 0x4c8fa1 *)
#call   0x4c8c00 <p256IsZero>                   #! 0x4c8fa1 = 0x4c8fa1;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8c00 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    $0x1,%r15                                #! PC = 0x4c8c03 *)
mov r15 0x1@uint64;
(* mov    %r10,%r14                                #! PC = 0x4c8c0a *)
mov r14 r10;
(* or     %r11,%r14                                #! PC = 0x4c8c0d *)
or r14@uint64 r11 r14;  
(* or     %r12,%r14                                #! PC = 0x4c8c10 *)
or r14@uint64 r12 r14; 
(* or     %r13,%r14                                #! PC = 0x4c8c13 *)
or r14@uint64 r13 r14; 
(* cmove  %r15,%rax                                #! PC = 0x4c8c16 *)
subc zero dc 0@uint64 r14;
cmov rax zero r15 rax;
(* xor    $0xffffffffffffffff,%r10                 #! PC = 0x4c8c1a *)
xor r10@uint64 $P256_0@uint64 r10;
(* xor    0x70ed3(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8c1e *)
xor r11@uint64 L0x539af8 r11;
(* xor    0x70ed4(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8c25 *)
xor r11@uint64 L0x539b00 r13;
(* or     %r11,%r10                                #! PC = 0x4c8c2c *)
or r10@uint64 r11 r10; 
(* or     %r12,%r10                                #! PC = 0x4c8c2f *)
or r10@uint64 r12 r10; 
(* or     %r13,%r10                                #! PC = 0x4c8c32 *)
or r10@uint64 r13 r10; 
(* cmove  %r15,%rax                                #! PC = 0x4c8c35 *)
subc zero dc 0@uint64 r10;
cmov rax zero r15 rax;
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8c39 *)
#ret                                            #! 0x4c8c39 = 0x4c8c39;
(* and    0x288(%rsp),%rax                         #! EA = L0xc0000b14a8; Value = 0x0000000000000000; PC = 0x4c8fa6 *)
and rax@uint64 rax L0xc0000b14a8;
(* mov    %rax,0x288(%rsp)                         #! EA = L0xc0000b14a8; PC = 0x4c8fae *)
mov L0xc0000b14a8 rax;
(* mov    0x200(%rsp),%r10                         #! EA = L0xc0000b1420; Value = 0x634734bf5d4f0f3d; PC = 0x4c8fb6 *)
mov r10 L0xc0000b1420;
(* mov    0x208(%rsp),%r11                         #! EA = L0xc0000b1428; Value = 0x56f9287432cdd636; PC = 0x4c8fbe *)
mov r11 L0xc0000b1428;
(* mov    0x210(%rsp),%r12                         #! EA = L0xc0000b1430; Value = 0x76e7f3f3b78f1f5b; PC = 0x4c8fc6 *)
mov r12 L0xc0000b1430;
(* mov    0x218(%rsp),%r13                         #! EA = L0xc0000b1438; Value = 0x162c376c5c794e12; PC = 0x4c8fce *)
mov r13 L0xc0000b1438;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c8fd6 *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c8fd6 = 0x4c8fd6;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c82e4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;
ghost r10i@uint64, r11i@uint64, r12i@uint64, r13i@uint64, rbpi@uint64 :
      and [r10i=r10, r11i=r11, r12i=r12, r13i=r13, rbpi=rbp]
   && and [r10i=r10, r11i=r11, r12i=r12, r13i=r13, rbpi=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10i, r11i, r12i, r13i, rbpi])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10i, r11i, r12i, r13i, rbpi])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;


(* 10 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [6]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [6]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0x240(%rsp)                         #! EA = L0xc0000b1460; PC = 0x4c8fdb *)
mov L0xc0000b1460 r10;
(* mov    %r11,0x248(%rsp)                         #! EA = L0xc0000b1468; PC = 0x4c8fe3 *)
mov L0xc0000b1468 r11;
(* mov    %r12,0x250(%rsp)                         #! EA = L0xc0000b1470; PC = 0x4c8feb *)
mov L0xc0000b1470 r12;
(* mov    %r13,0x258(%rsp)                         #! EA = L0xc0000b1478; PC = 0x4c8ff3 *)
mov L0xc0000b1478 r13;
(* mov    0x1e0(%rsp),%r10                         #! EA = L0xc0000b1400; Value = 0xc6dcfb02a135fbff; PC = 0x4c8ffb *)
mov r10 L0xc0000b1400;
(* mov    0x1e8(%rsp),%r11                         #! EA = L0xc0000b1408; Value = 0xfc282889e2401ae8; PC = 0x4c9003 *)
mov r11 L0xc0000b1408;
(* mov    0x1f0(%rsp),%r12                         #! EA = L0xc0000b1410; Value = 0xa47278af7fba2825; PC = 0x4c900b *)
mov r12 L0xc0000b1410;
(* mov    0x1f8(%rsp),%r13                         #! EA = L0xc0000b1418; Value = 0x6e3bc39c7933aee6; PC = 0x4c9013 *)
mov r13 L0xc0000b1418;
(* #call   0x4c82e0 <p256SqrInternal>              #! PC = 0x4c901b *)
#call   0x4c82e0 <p256SqrInternal>              #! 0x4c901b = 0x4c901b;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c82e0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c82e4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c82e9 *)
#lea    %%EA,%%rbp                           #! 0x4c82e9 = 0x4c82e9;
(* mov    %r10,%rax                                #! PC = 0x4c82ee *)
mov rax r10;
(* mul    %r11                                     #! PC = 0x4c82f1 *)
mull rdx rax rax r11;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rcx                                #! PC = 0x4c82f4 *)
mov rcx rax;
(* mov    %rdx,%r8                                 #! PC = 0x4c82f7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c82fa *)
mov rax r10;
(* mul    %r12                                     #! PC = 0x4c82fd *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8300 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8303 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c8307 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c830a *)
mov rax r10;
(* mul    %r13                                     #! PC = 0x4c830d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8310 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8313 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r14                                #! PC = 0x4c8317 *)
mov r14 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c831a *)
mov rax r11;
(* mul    %r12                                     #! PC = 0x4c831d *)
mull rdx rax rax r12;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c8320 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8323 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8327 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c832a *)
mov rax r11;
(* mul    %r13                                     #! PC = 0x4c832d *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r14                                #! PC = 0x4c8330 *)
adds carry r14 r14 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8333 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r14                                #! PC = 0x4c8337 *)
adds carry r14 r14 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c833a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r15                                #! PC = 0x4c833e *)
mov r15 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8341 *)
mov rax r12;
(* mul    %r13                                     #! PC = 0x4c8344 *)
mull rdx rax rax r13;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r15                                #! PC = 0x4c8347 *)
adds carry r15 r15 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c834a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rdi                                #! PC = 0x4c834e *)
mov rdi rdx;
(* xor    %rsi,%rsi                                #! PC = 0x4c8351 *)
mov rsi 0@uint64;
clear carry;
clear overflow;
(* add    %rcx,%rcx                                #! PC = 0x4c8354 *)
adds carry rcx rcx rcx;
(* adc    %r8,%r8                                  #! PC = 0x4c8357 *)
adcs carry r8 r8 r8 carry;
(* adc    %r9,%r9                                  #! PC = 0x4c835a *)
adcs carry r9 r9 r9 carry;
(* adc    %r14,%r14                                #! PC = 0x4c835d *)
adcs carry r14 r14 r14 carry;
(* adc    %r15,%r15                                #! PC = 0x4c8360 *)
adcs carry r15 r15 r15 carry;
(* adc    %rdi,%rdi                                #! PC = 0x4c8363 *)
adcs carry rdi rdi rdi carry;
(* adc    $0x0,%rsi                                #! PC = 0x4c8366 *)
adcs carry rsi rsi 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rax                                #! PC = 0x4c836a *)
mov rax r10;
(* mul    %rax                                     #! PC = 0x4c836d *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c8370 *)
mov rbx rax;
(* mov    %rdx,%r10                                #! PC = 0x4c8373 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8376 *)
mov rax r11;
(* mul    %rax                                     #! PC = 0x4c8379 *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%rcx                                #! PC = 0x4c837c *)
adds carry rcx rcx r10;
(* adc    %rax,%r8                                 #! PC = 0x4c837f *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8382 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8386 *)
mov r10 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8389 *)
mov rax r12;
(* mul    %rax                                     #! PC = 0x4c838c *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r9                                 #! PC = 0x4c838f *)
adds carry r9 r9 r10;
(* adc    %rax,%r14                                #! PC = 0x4c8392 *)
adcs carry r14 r14 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8395 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c8399 *)
mov r10 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c839c *)
mov rax r13;
(* mul    %rax                                     #! PC = 0x4c839f *)
mull rdx rax rax rax;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %r10,%r15                                #! PC = 0x4c83a2 *)
adds carry r15 r15 r10;
(* adc    %rax,%rdi                                #! PC = 0x4c83a5 *)
adcs carry rdi rdi rax carry;
(* adc    %rdx,%rsi                                #! PC = 0x4c83a8 *)
adcs carry rsi rsi rdx carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rbx,%rax                                #! PC = 0x4c83ab *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c83ae *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c83b1 *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71744(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83b5 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83bc *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c83c0 *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c83c3 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c83c6 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83c9 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c83cd *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c83d0 *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c83d3 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c83d6 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x7171f(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83da *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c83e1 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c83e5 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c83e8 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c83eb *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c83ee *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c83f2 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c83f5 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c83f8 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c83fb *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x716fa(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c83ff *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8406 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c840a *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c840d *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c8410 *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8413 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8417 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c841a *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c841d *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c8420 *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x716d5(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8424 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c842b *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c842f *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8432 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8435 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8438 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c843c *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c843f *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r14                                #! PC = 0x4c8446 *)
adcs carry r14 r14 rbx carry;
(* adc    %rcx,%r15                                #! PC = 0x4c8449 *)
adcs carry r15 r15 rcx carry;
(* adc    %r8,%rdi                                 #! PC = 0x4c844c *)
adcs carry rdi rdi r8 carry;
(* adc    %r9,%rsi                                 #! PC = 0x4c844f *)
adcs carry rsi rsi r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8452 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r14,%r10                                #! PC = 0x4c8456 *)
mov r10 r14;
(* mov    %r15,%r11                                #! PC = 0x4c8459 *)
mov r11 r15;
(* mov    %rdi,%r12                                #! PC = 0x4c845c *)
mov r12 rdi;
(* mov    %rsi,%r13                                #! PC = 0x4c845f *)
mov r13 rsi;
ghost r10j@uint64, r11j@uint64, r12j@uint64, r13j@uint64, rbpj@uint64 :
      and [r10j=r10, r11j=r11, r12j=r12, r13j=r13, rbpj=rbp]
   && and [r10j=r10, r11j=r11, r12j=r12, r13j=r13, rbpj=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c8462 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7168b(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8466 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c846d *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x71688(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c8471 *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c8478 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %r14,%r10                                #! PC = 0x4c847c *)
cmov r10 carry r14 r10;
(* cmovb  %r15,%r11                                #! PC = 0x4c8480 *)
cmov r11 carry r15 r11;
(* cmovb  %rdi,%r12                                #! PC = 0x4c8484 *)
cmov r12 carry rdi r12;
(* cmovb  %rsi,%r13                                #! PC = 0x4c8488 *)
cmov r13 carry rsi r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10j, r11j, r12j, r13j, rbpj])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10j, r11j, r12j, r13j, rbpj])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c848c *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c8491 *)
#adds carry rsp rsp 0x10@uint64;
(* 11 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8495 *)
#ret                                            #! 0x4c8495 = 0x4c8495;
(* mov    %r10,0x220(%rsp)                         #! EA = L0xc0000b1440; PC = 0x4c9020 *)
mov L0xc0000b1440 r10;
(* mov    %r11,0x228(%rsp)                         #! EA = L0xc0000b1448; PC = 0x4c9028 *)
mov L0xc0000b1448 r11;
(* mov    %r12,0x230(%rsp)                         #! EA = L0xc0000b1450; PC = 0x4c9030 *)
mov L0xc0000b1450 r12;
(* mov    %r13,0x238(%rsp)                         #! EA = L0xc0000b1458; PC = 0x4c9038 *)
mov L0xc0000b1458 r13;
(* mov    0x1e0(%rsp),%r14                         #! EA = L0xc0000b1400; Value = 0xc6dcfb02a135fbff; PC = 0x4c9040 *)
mov r14 L0xc0000b1400;
(* mov    0x1e8(%rsp),%r15                         #! EA = L0xc0000b1408; Value = 0xfc282889e2401ae8; PC = 0x4c9048 *)
mov r15 L0xc0000b1408;
(* mov    0x1f0(%rsp),%rdi                         #! EA = L0xc0000b1410; Value = 0xa47278af7fba2825; PC = 0x4c9050 *)
mov rdi L0xc0000b1410;
(* mov    0x1f8(%rsp),%rsi                         #! EA = L0xc0000b1418; Value = 0x6e3bc39c7933aee6; PC = 0x4c9058 *)
mov rsi L0xc0000b1418;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c9060 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c9060 = 0x4c9060;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10k@uint64, r11k@uint64, r12k@uint64, r13k@uint64, rbpk@uint64 :
      and [r10k=r10, r11k=r11, r12k=r12, r13k=r13, rbpk=rbp]
   && and [r10k=r10, r11k=r11, r12k=r12, r13k=r13, rbpk=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10k, r11k, r12k, r13k, rbpk])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10k, r11k, r12k, r13k, rbpk])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 12 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x260(%rsp)                         #! EA = L0xc0000b1480; PC = 0x4c9065 *)
mov L0xc0000b1480 r10;
(* mov    %r11,0x268(%rsp)                         #! EA = L0xc0000b1488; PC = 0x4c906d *)
mov L0xc0000b1488 r11;
(* mov    %r12,0x270(%rsp)                         #! EA = L0xc0000b1490; PC = 0x4c9075 *)
mov L0xc0000b1490 r12;
(* mov    %r13,0x278(%rsp)                         #! EA = L0xc0000b1498; PC = 0x4c907d *)
mov L0xc0000b1498 r13;
(* mov    0x160(%rsp),%r14                         #! EA = L0xc0000b1380; Value = 0x3c5b8eb5f026046a; PC = 0x4c9085 *)
mov r14 L0xc0000b1380;
(* mov    0x168(%rsp),%r15                         #! EA = L0xc0000b1388; Value = 0xe6acb4f86800755b; PC = 0x4c908d *)
mov r15 L0xc0000b1388;
(* mov    0x170(%rsp),%rdi                         #! EA = L0xc0000b1390; Value = 0xa29c45b058fdf952; PC = 0x4c9095 *)
mov rdi L0xc0000b1390;
(* mov    0x178(%rsp),%rsi                         #! EA = L0xc0000b1398; Value = 0x16b524522414e767; PC = 0x4c909d *)
mov rsi L0xc0000b1398;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c90a5 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c90a5 = 0x4c90a5;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10l@uint64, r11l@uint64, r12l@uint64, r13l@uint64, rbpl@uint64 :
      and [r10l=r10, r11l=r11, r12l=r12, r13l=r13, rbpl=rbp]
   && and [r10l=r10, r11l=r11, r12l=r12, r13l=r13, rbpl=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10l, r11l, r12l, r13l, rbpl])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10l, r11l, r12l, r13l, rbpl])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;

(* 13 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [2]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [2]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x180(%rsp)                         #! EA = L0xc0000b13a0; PC = 0x4c90aa *)
mov L0xc0000b13a0 r10;
(* mov    %r11,0x188(%rsp)                         #! EA = L0xc0000b13a8; PC = 0x4c90b2 *)
mov L0xc0000b13a8 r11;
(* mov    %r12,0x190(%rsp)                         #! EA = L0xc0000b13b0; PC = 0x4c90ba *)
mov L0xc0000b13b0 r12;
(* mov    %r13,0x198(%rsp)                         #! EA = L0xc0000b13b8; PC = 0x4c90c2 *)
mov L0xc0000b13b8 r13;
(* mov    0x40(%rsp),%r10                          #! EA = L0xc0000b1260; Value = 0x745e50642253ec0c; PC = 0x4c90ca *)
mov r10 L0xc0000b1260;
(* mov    0x48(%rsp),%r11                          #! EA = L0xc0000b1268; Value = 0x41a7fb0ba3439cff; PC = 0x4c90cf *)
mov r11 L0xc0000b1268;
(* mov    0x50(%rsp),%r12                          #! EA = L0xc0000b1270; Value = 0xea9b99470d61820e; PC = 0x4c90d4 *)
mov r12 L0xc0000b1270;
(* mov    0x58(%rsp),%r13                          #! EA = L0xc0000b1278; Value = 0x55c379af15a52bbf; PC = 0x4c90d9 *)
mov r13 L0xc0000b1278;
(* mov    0xa0(%rsp),%r14                          #! EA = L0xc0000b12c0; Value = 0x0000000000000001; PC = 0x4c90de *)
mov r14 L0xc0000b12c0;
(* mov    0xa8(%rsp),%r15                          #! EA = L0xc0000b12c8; Value = 0xffffffff00000000; PC = 0x4c90e6 *)
mov r15 L0xc0000b12c8;
(* mov    0xb0(%rsp),%rdi                          #! EA = L0xc0000b12d0; Value = 0xffffffffffffffff; PC = 0x4c90ee *)
mov rdi L0xc0000b12d0;
(* mov    0xb8(%rsp),%rsi                          #! EA = L0xc0000b12d8; Value = 0x00000000fffffffe; PC = 0x4c90f6 *)
mov rsi L0xc0000b12d8;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c90fe *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c90fe = 0x4c90fe;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10m@uint64, r11m@uint64, r12m@uint64, r13m@uint64, rbpm@uint64 :
      and [r10m=r10, r11m=r11, r12m=r12, r13m=r13, rbpm=rbp]
   && and [r10m=r10, r11m=r11, r12m=r12, r13m=r13, rbpm=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10m, r11m, r12m, r13m, rbpm])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10m, r11m, r12m, r13m, rbpm])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 14 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 * limbs 64 [z1_0,z1_1,z1_2,z1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3])
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    0x1e0(%rsp),%r14                         #! EA = L0xc0000b1400; Value = 0xc6dcfb02a135fbff; PC = 0x4c9103 *)
mov r14 L0xc0000b1400;
(* mov    0x1e8(%rsp),%r15                         #! EA = L0xc0000b1408; Value = 0xfc282889e2401ae8; PC = 0x4c910b *)
mov r15 L0xc0000b1408;
(* mov    0x1f0(%rsp),%rdi                         #! EA = L0xc0000b1410; Value = 0xa47278af7fba2825; PC = 0x4c9113 *)
mov rdi L0xc0000b1410;
(* mov    0x1f8(%rsp),%rsi                         #! EA = L0xc0000b1418; Value = 0x6e3bc39c7933aee6; PC = 0x4c911b *)
mov rsi L0xc0000b1418;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c9123 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c9123 = 0x4c9123;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;

ghost r10n@uint64, r11n@uint64, r12n@uint64, r13n@uint64, rbpn@uint64 :
      and [r10n=r10, r11n=r11, r12n=r12, r13n=r13, rbpn=rbp]
   && and [r10n=r10, r11n=r11, r12n=r12, r13n=r13, rbpn=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10n, r11n, r12n, r13n, rbpn])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10n, r11n, r12n, r13n, rbpn])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 15 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [z1_0,z1_1,z1_2,z1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3])
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [9]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [9]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x100(%rsp)                         #! EA = L0xc0000b1320; PC = 0x4c9128 *)
mov L0xc0000b1320 r10;
(* mov    %r11,0x108(%rsp)                         #! EA = L0xc0000b1328; PC = 0x4c9130 *)
mov L0xc0000b1328 r11;
(* mov    %r12,0x110(%rsp)                         #! EA = L0xc0000b1330; PC = 0x4c9138 *)
mov L0xc0000b1330 r12;
(* mov    %r13,0x118(%rsp)                         #! EA = L0xc0000b1338; PC = 0x4c9140 *)
mov L0xc0000b1338 r13;
(* mov    0x220(%rsp),%r10                         #! EA = L0xc0000b1440; Value = 0x349e276cc5ac7b3e; PC = 0x4c9148 *)
mov r10 L0xc0000b1440;
(* mov    0x228(%rsp),%r11                         #! EA = L0xc0000b1448; Value = 0xd3f0e1697fd6afd1; PC = 0x4c9150 *)
mov r11 L0xc0000b1448;
(* mov    0x230(%rsp),%r12                         #! EA = L0xc0000b1450; Value = 0xd4e38a8e616aef60; PC = 0x4c9158 *)
mov r12 L0xc0000b1450;
(* mov    0x238(%rsp),%r13                         #! EA = L0xc0000b1458; Value = 0x77409c57765928fc; PC = 0x4c9160 *)
mov r13 L0xc0000b1458;
(* mov    0x120(%rsp),%r14                         #! EA = L0xc0000b1340; Value = 0xe38f0c2aca4ff8c7; PC = 0x4c9168 *)
mov r14 L0xc0000b1340;
(* mov    0x128(%rsp),%r15                         #! EA = L0xc0000b1348; Value = 0x52c21cd597e574cf; PC = 0x4c9170 *)
mov r15 L0xc0000b1348;
(* mov    0x130(%rsp),%rdi                         #! EA = L0xc0000b1350; Value = 0xf91ed42c92dec954; PC = 0x4c9178 *)
mov rdi L0xc0000b1350;
(* mov    0x138(%rsp),%rsi                         #! EA = L0xc0000b1358; Value = 0x23b2d1e37a22ffcb; PC = 0x4c9180 *)
mov rsi L0xc0000b1358;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c9188 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c9188 = 0x4c9188;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10p@uint64, r11p@uint64, r12p@uint64, r13p@uint64, rbpp@uint64 :
      and [r10p=r10, r11p=r11, r12p=r12, r13p=r13, rbpp=rbp]
   && and [r10p=r10, r11p=r11, r12p=r12, r13p=r13, rbpp=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;

assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10p, r11p, r12p, r13p, rbpp])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10p, r11p, r12p, r13p, rbpp])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 16 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [7, 11]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [7, 11]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    %r10,0x140(%rsp)                         #! EA = L0xc0000b1360; PC = 0x4c918d *)
mov L0xc0000b1360 r10;
(* mov    %r11,0x148(%rsp)                         #! EA = L0xc0000b1368; PC = 0x4c9195 *)
mov L0xc0000b1368 r11;
(* mov    %r12,0x150(%rsp)                         #! EA = L0xc0000b1370; PC = 0x4c919d *)
mov L0xc0000b1370 r12;
(* mov    %r13,0x158(%rsp)                         #! EA = L0xc0000b1378; PC = 0x4c91a5 *)
mov L0xc0000b1378 r13;
(* xor    %rax,%rax                                #! PC = 0x4c91ad *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* add    %r10,%r10                                #! PC = 0x4c91b0 *)
adds carry r10 r10 r10;
(* adc    %r11,%r11                                #! PC = 0x4c91b3 *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12                                #! PC = 0x4c91b6 *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13                                #! PC = 0x4c91b9 *)
adcs carry r13 r13 r13 carry;
(* adc    $0x0,%rax                                #! PC = 0x4c91bc *)
adcs carry rax rax 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%r14                                #! PC = 0x4c91c0 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c91c3 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c91c6 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c91c9 *)
mov rsi r13;
ghost r14q@uint64, r15q@uint64, rdiq@uint64, rsiq@uint64, raxq@uint64 :
      and [r14q=r14, r15q=r15, rdiq=rdi, rsiq=rsi, raxq=rax]
   && and [r14q=r14, r15q=r15, rdiq=rdi, rsiq=rsi, raxq=rax];
(* sub    $0xffffffffffffffff,%r14                 #! PC = 0x4c91cc *)
subb carry r14 r14 0xffffffffffffffff@uint64;
(* sbb    0x70921(%rip),%r15        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c91d0 *)
sbbs carry r15 r15 L0x539af8 carry;
(* sbb    $0x0,%rdi                                #! PC = 0x4c91d7 *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    0x7091e(%rip),%rsi        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c91db *)
sbbs carry rsi rsi L0x539b00 carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c91e2 *)
sbbs carry rax rax 0x0@uint64 carry;
(* cmovb  %r10,%r14                                #! PC = 0x4c91e6 *)
cmov r14 carry r10 r14;
(* cmovb  %r11,%r15                                #! PC = 0x4c91ea *)
cmov r15 carry r11 r15;
(* cmovb  %r12,%rdi                                #! PC = 0x4c91ee *)
cmov rdi carry r12 rdi;
(* cmovb  %r13,%rsi                                #! PC = 0x4c91f2 *)
cmov rsi carry r13 rsi;
assert true &&
       eqmod (limbs 64 [r14, r15, rdi, rsi, 0@64])
             (limbs 64 [r14q, r15q, rdiq, rsiq, raxq])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r14, r15, rdi, rsi, 0])
             (limbs 64 [r14q, r15q, rdiq, rsiq, raxq])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* 17 *)
cut eqmod (limbs 64 [r14, r15, rdi, rsi])
          (2**256 *
          2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
          *
          (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
           limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts]
 && limbs 64 [r14, r15, rdi, rsi] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition];
(* mov    0x240(%rsp),%r10                         #! EA = L0xc0000b1460; Value = 0xe1126ec72f1e8b41; PC = 0x4c91f6 *)
mov r10 L0xc0000b1460;
(* mov    0x248(%rsp),%r11                         #! EA = L0xc0000b1468; Value = 0xa502f5734878541e; PC = 0x4c91fe *)
mov r11 L0xc0000b1468;
(* mov    0x250(%rsp),%r12                         #! EA = L0xc0000b1470; Value = 0x6c777ae26c5b7e75; PC = 0x4c9206 *)
mov r12 L0xc0000b1470;
(* mov    0x258(%rsp),%r13                         #! EA = L0xc0000b1478; Value = 0x64ea5267a43b7a1b; PC = 0x4c920e *)
mov r13 L0xc0000b1478;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c9216 *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c9216 = 0x4c9216;

(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
#and    $0x1,%%rax                                #! 0x4c8075 = 0x4c8075;
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* 18 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          ((limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           -
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [10]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [10]];

(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    0x260(%rsp),%r14                         #! EA = L0xc0000b1480; Value = 0xda650feb992c29c8; PC = 0x4c921b *)
mov r14 L0xc0000b1480;
(* mov    0x268(%rsp),%r15                         #! EA = L0xc0000b1488; Value = 0xb090244d31620552; PC = 0x4c9223 *)
mov r15 L0xc0000b1488;
(* mov    0x270(%rsp),%rdi                         #! EA = L0xc0000b1490; Value = 0x237624d111df1ae1; PC = 0x4c922b *)
mov rdi L0xc0000b1490;
(* mov    0x278(%rsp),%rsi                         #! EA = L0xc0000b1498; Value = 0xb94d2cce85da2a03; PC = 0x4c9233 *)
mov rsi L0xc0000b1498;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c923b *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c923b = 0x4c923b;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
#and    $0x1,%%rax                                #! 0x4c8075 = 0x4c8075;
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;
(* 19 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          ((limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           -
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [12]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [12]];

(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    %r10,0xc0(%rsp)                          #! EA = L0xc0000b12e0; PC = 0x4c9240 *)
mov L0xc0000b12e0 r10;
(* mov    %r11,0xc8(%rsp)                          #! EA = L0xc0000b12e8; PC = 0x4c9248 *)
mov L0xc0000b12e8 r11;
(* mov    %r12,0xd0(%rsp)                          #! EA = L0xc0000b12f0; PC = 0x4c9250 *)
mov L0xc0000b12f0 r12;
(* mov    %r13,0xd8(%rsp)                          #! EA = L0xc0000b12f8; PC = 0x4c9258 *)
mov L0xc0000b12f8 r13;
(* mov    %r10,%r14                                #! PC = 0x4c9260 *)
mov r14 r10;
(* mov    %r11,%r15                                #! PC = 0x4c9263 *)
mov r15 r11;
(* mov    %r12,%rdi                                #! PC = 0x4c9266 *)
mov rdi r12;
(* mov    %r13,%rsi                                #! PC = 0x4c9269 *)
mov rsi r13;
(* mov    0x140(%rsp),%r10                         #! EA = L0xc0000b1360; Value = 0xf89f2e49f27108e4; PC = 0x4c926c *)
mov r10 L0xc0000b1360;
(* mov    0x148(%rsp),%r11                         #! EA = L0xc0000b1368; Value = 0x28b1c7e2b6a2fa20; PC = 0x4c9274 *)
mov r11 L0xc0000b1368;
(* mov    0x150(%rsp),%r12                         #! EA = L0xc0000b1370; Value = 0x2c51e8b8837c1622; PC = 0x4c927c *)
mov r12 L0xc0000b1370;
(* mov    0x158(%rsp),%r13                         #! EA = L0xc0000b1378; Value = 0x55c135b4225d6dce; PC = 0x4c9284 *)
mov r13 L0xc0000b1378;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c928c *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c928c = 0x4c928c;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
#and    $0x1,%%rax                                #! 0x4c8075 = 0x4c8075;
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;

(* 20 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          ((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           +
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           +
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [16]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [16]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    0x200(%rsp),%r14                         #! EA = L0xc0000b1420; Value = 0x634734bf5d4f0f3d; PC = 0x4c9291 *)
mov r14 L0xc0000b1420;
(* mov    0x208(%rsp),%r15                         #! EA = L0xc0000b1428; Value = 0x56f9287432cdd636; PC = 0x4c9299 *)
mov r15 L0xc0000b1428;
(* mov    0x210(%rsp),%rdi                         #! EA = L0xc0000b1430; Value = 0x76e7f3f3b78f1f5b; PC = 0x4c92a1 *)
mov rdi L0xc0000b1430;
(* mov    0x218(%rsp),%rsi                         #! EA = L0xc0000b1438; Value = 0x162c376c5c794e12; PC = 0x4c92a9 *)
mov rsi L0xc0000b1438;
(* #call   0x4c80a0 <p256MulInternal>              #! PC = 0x4c92b1 *)
#call   0x4c80a0 <p256MulInternal>              #! 0x4c92b1 = 0x4c92b1;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* sub    $0x10,%rsp                               #! PC = 0x4c80a0 *)
#subb carry rsp rsp 0x10@uint64;
(* mov    %rbp,0x8(%rsp)                           #! EA = L0xc0000b1210; PC = 0x4c80a4 *)
mov L0xc0000b1210 rbp;
(* lea    0x8(%rsp),%rbp                           #! PC = 0x4c80a9 *)
#lea    %%EA,%%rbp                           #! 0x4c80a9 = 0x4c80a9;
(* mov    %r10,%rax                                #! PC = 0x4c80ae *)
mov rax r10;
(* mul    %r14                                     #! PC = 0x4c80b1 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* mov    %rax,%rbx                                #! PC = 0x4c80b4 *)
mov rbx rax;
(* mov    %rdx,%rcx                                #! PC = 0x4c80b7 *)
mov rcx rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ba *)
mov rax r10;
(* mul    %r15                                     #! PC = 0x4c80bd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80c0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80c3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c80c7 *)
mov r8 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80ca *)
mov rax r10;
(* mul    %rdi                                     #! PC = 0x4c80cd *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c80d0 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80d3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c80d7 *)
mov r9 rdx;
(* mov    %r10,%rax                                #! PC = 0x4c80da *)
mov rax r10;
(* mul    %rsi                                     #! PC = 0x4c80dd *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c80e0 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80e3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r10                                #! PC = 0x4c80e7 *)
mov r10 rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80ea *)
mov rax r11;
(* mul    %r14                                     #! PC = 0x4c80ed *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%rcx                                #! PC = 0x4c80f0 *)
adds carry rcx rcx rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c80f3 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c80f7 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c80fa *)
mov rax r11;
(* mul    %r15                                     #! PC = 0x4c80fd *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r8                                 #! PC = 0x4c8100 *)
adds carry r8 r8 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8103 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r8                                 #! PC = 0x4c8107 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c810a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c810e *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8111 *)
mov rax r11;
(* mul    %rdi                                     #! PC = 0x4c8114 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8117 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c811a *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c811e *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8121 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8125 *)
mov rbp rdx;
(* mov    %r11,%rax                                #! PC = 0x4c8128 *)
mov rax r11;
(* mul    %rsi                                     #! PC = 0x4c812b *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c812e *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8131 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8135 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8138 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r11                                #! PC = 0x4c813c *)
mov r11 rdx;
(* mov    %r12,%rax                                #! PC = 0x4c813f *)
mov rax r12;
(* mul    %r14                                     #! PC = 0x4c8142 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r8                                 #! PC = 0x4c8145 *)
adds carry r8 r8 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8148 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c814c *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c814f *)
mov rax r12;
(* mul    %r15                                     #! PC = 0x4c8152 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r9                                 #! PC = 0x4c8155 *)
adds carry r9 r9 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8158 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r9                                 #! PC = 0x4c815c *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c815f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c8163 *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c8166 *)
mov rax r12;
(* mul    %rdi                                     #! PC = 0x4c8169 *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c816c *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c816f *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c8173 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c8176 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c817a *)
mov rbp rdx;
(* mov    %r12,%rax                                #! PC = 0x4c817d *)
mov rax r12;
(* mul    %rsi                                     #! PC = 0x4c8180 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c8183 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c8186 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c818a *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c818d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r12                                #! PC = 0x4c8191 *)
mov r12 rdx;
(* mov    %r13,%rax                                #! PC = 0x4c8194 *)
mov rax r13;
(* mul    %r14                                     #! PC = 0x4c8197 *)
mull rdx rax rax r14;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rax,%r9                                 #! PC = 0x4c819a *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c819d *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81a1 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81a4 *)
mov rax r13;
(* mul    %r15                                     #! PC = 0x4c81a7 *)
mull rdx rax rax r15;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r10                                #! PC = 0x4c81aa *)
adds carry r10 r10 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81ad *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r10                                #! PC = 0x4c81b1 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81b4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81b8 *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81bb *)
mov rax r13;
(* mul    %rdi                                     #! PC = 0x4c81be *)
mull rdx rax rax rdi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r11                                #! PC = 0x4c81c1 *)
adds carry r11 r11 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81c4 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r11                                #! PC = 0x4c81c8 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81cb *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbp                                #! PC = 0x4c81cf *)
mov rbp rdx;
(* mov    %r13,%rax                                #! PC = 0x4c81d2 *)
mov rax r13;
(* mul    %rsi                                     #! PC = 0x4c81d5 *)
mull rdx rax rax rsi;
subc carry dc rdx 1@uint64; mov overflow carry;
(* add    %rbp,%r12                                #! PC = 0x4c81d8 *)
adds carry r12 r12 rbp;
(* adc    $0x0,%rdx                                #! PC = 0x4c81db *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* add    %rax,%r12                                #! PC = 0x4c81df *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x4c81e2 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r13                                #! PC = 0x4c81e6 *)
mov r13 rdx;
(* mov    %rbx,%rax                                #! PC = 0x4c81e9 *)
mov rax rbx;
(* mov    %rbx,%rbp                                #! PC = 0x4c81ec *)
mov rbp rbx;
(* shl    $0x20,%rbx                               #! PC = 0x4c81ef *)
split ddc rbx rbx (64-0x20);
shl rbx rbx 0x20@uint64;
(* mulq   0x71906(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c81f3 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c81fa *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rbx,%rcx                                #! PC = 0x4c81fe *)
adds carry rcx rcx rbx;
(* adc    %rbp,%r8                                 #! PC = 0x4c8201 *)
adcs carry r8 r8 rbp carry;
(* adc    %rax,%r9                                 #! PC = 0x4c8204 *)
adcs carry r9 r9 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8207 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rbx                                #! PC = 0x4c820b *)
mov rbx rdx;
(* mov    %rcx,%rax                                #! PC = 0x4c820e *)
mov rax rcx;
(* mov    %rcx,%rbp                                #! PC = 0x4c8211 *)
mov rbp rcx;
(* shl    $0x20,%rcx                               #! PC = 0x4c8214 *)
split ddc rcx rcx (64-0x20);
shl rcx rcx 0x20@uint64;
(* mulq   0x718e1(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8218 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c821f *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %rcx,%r8                                 #! PC = 0x4c8223 *)
adds carry r8 r8 rcx;
(* adc    %rbp,%r9                                 #! PC = 0x4c8226 *)
adcs carry r9 r9 rbp carry;
(* adc    %rax,%rbx                                #! PC = 0x4c8229 *)
adcs carry rbx rbx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c822c *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%rcx                                #! PC = 0x4c8230 *)
mov rcx rdx;
(* mov    %r8,%rax                                 #! PC = 0x4c8233 *)
mov rax r8;
(* mov    %r8,%rbp                                 #! PC = 0x4c8236 *)
mov rbp r8;
(* shl    $0x20,%r8                                #! PC = 0x4c8239 *)
split ddc r8 r8 (64-0x20);
shl r8 r8 0x20@uint64;
(* mulq   0x718bc(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c823d *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8244 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r8,%r9                                  #! PC = 0x4c8248 *)
adds carry r9 r9 r8;
(* adc    %rbp,%rbx                                #! PC = 0x4c824b *)
adcs carry rbx rbx rbp carry;
(* adc    %rax,%rcx                                #! PC = 0x4c824e *)
adcs carry rcx rcx rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8251 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r8                                 #! PC = 0x4c8255 *)
mov r8 rdx;
(* mov    %r9,%rax                                 #! PC = 0x4c8258 *)
mov rax r9;
(* mov    %r9,%rbp                                 #! PC = 0x4c825b *)
mov rbp r9;
(* shl    $0x20,%r9                                #! PC = 0x4c825e *)
split ddc r9 r9 (64-0x20);
shl r9 r9 0x20@uint64;
(* mulq   0x71897(%rip)        # 0x539b00 <p256const1>#! EA = L0x539b00; PC = 0x4c8262 *)
mull rdx rax rax L0x539b00;
(* shr    $0x20,%rbp                               #! PC = 0x4c8269 *)
split rbp dc rbp 0x20;
assert true && ddc = rbp;
assume ddc = rbp && true;
(* add    %r9,%rbx                                 #! PC = 0x4c826d *)
adds carry rbx rbx r9;
(* adc    %rbp,%rcx                                #! PC = 0x4c8270 *)
adcs carry rcx rcx rbp carry;
(* adc    %rax,%r8                                 #! PC = 0x4c8273 *)
adcs carry r8 r8 rax carry;
(* adc    $0x0,%rdx                                #! PC = 0x4c8276 *)
adcs carry rdx rdx 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %rdx,%r9                                 #! PC = 0x4c827a *)
mov r9 rdx;
(* mov    $0x0,%rbp                                #! PC = 0x4c827d *)
mov rbp 0x0@uint64;
(* adc    %rbx,%r10                                #! PC = 0x4c8284 *)
adcs carry r10 r10 rbx carry;
(* adc    %rcx,%r11                                #! PC = 0x4c8287 *)
adcs carry r11 r11 rcx carry;
(* adc    %r8,%r12                                 #! PC = 0x4c828a *)
adcs carry r12 r12 r8 carry;
(* adc    %r9,%r13                                 #! PC = 0x4c828d *)
adcs carry r13 r13 r9 carry;
(* adc    $0x0,%rbp                                #! PC = 0x4c8290 *)
adcs carry rbp rbp 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry=0 && true;
(* mov    %r10,%rbx                                #! PC = 0x4c8294 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8297 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c829a *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c829d *)
mov r9 r13;
ghost r10r@uint64, r11r@uint64, r12r@uint64, r13r@uint64, rbpr@uint64 :
      and [r10r=r10, r11r=r11, r12r=r12, r13r=r13, rbpr=rbp]
   && and [r10r=r10, r11r=r11, r12r=r12, r13r=r13, rbpr=rbp];
(* sub    $0xffffffffffffffff,%r10                 #! PC = 0x4c82a0 *)
subb carry r10 r10 0xffffffffffffffff@uint64;
(* sbb    0x7184d(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c82a4 *)
sbbs carry r11 r11 L0x539af8 carry;
(* sbb    $0x0,%r12                                #! PC = 0x4c82ab *)
sbbs carry r12 r12 0x0@uint64 carry;
(* sbb    0x7184a(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c82af *)
sbbs carry r13 r13 L0x539b00 carry;
(* sbb    $0x0,%rbp                                #! PC = 0x4c82b6 *)
sbbs carry rbp rbp 0x0@uint64 carry;
(* cmovb  %rbx,%r10                                #! PC = 0x4c82ba *)
cmov r10 carry rbx r10;
(* cmovb  %rcx,%r11                                #! PC = 0x4c82be *)
cmov r11 carry rcx r11;
(* cmovb  %r8,%r12                                 #! PC = 0x4c82c2 *)
cmov r12 carry r8 r12;
(* cmovb  %r9,%r13                                 #! PC = 0x4c82c6 *)
cmov r13 carry r9 r13;
assert true &&
       eqmod (limbs 64 [r10, r11, r12, r13, 0@64])
             (limbs 64 [r10r, r11r, r12r, r13r, rbpr])
             (limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64, 0@64]);
assume eqmod (limbs 64 [r10, r11, r12, r13, 0])
             (limbs 64 [r10r, r11r, r12r, r13r, rbpr])
             (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3, 0]) && true;
(* mov    0x8(%rsp),%rbp                           #! EA = L0xc0000b1210; Value = 0x000000c0000b14c8; PC = 0x4c82ca *)
mov rbp L0xc0000b1210;
(* add    $0x10,%rsp                               #! PC = 0x4c82cf *)
#adds carry rsp rsp 0x10@uint64;
(* 21 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          ((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           -
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
           +
           2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
           +
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)*
          (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [6]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [6]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c82d3 *)
#ret                                            #! 0x4c82d3 = 0x4c82d3;
(* mov    0x180(%rsp),%r14                         #! EA = L0xc0000b13a0; Value = 0xf8745c81be8e2c64; PC = 0x4c92b6 *)
mov r14 L0xc0000b13a0;
(* mov    0x188(%rsp),%r15                         #! EA = L0xc0000b13a8; Value = 0x14eee2ae1155e369; PC = 0x4c92be *)
mov r15 L0xc0000b13a8;
(* mov    0x190(%rsp),%rdi                         #! EA = L0xc0000b13b0; Value = 0x1976c8574d7a6d82; PC = 0x4c92c6 *)
mov rdi L0xc0000b13b0;
(* mov    0x198(%rsp),%rsi                         #! EA = L0xc0000b13b8; Value = 0xd0497c8fdab1b202; PC = 0x4c92ce *)
mov rsi L0xc0000b13b8;
(* #call   0x4c8040 <p256SubInternal>              #! PC = 0x4c92d6 *)
#call   0x4c8040 <p256SubInternal>              #! 0x4c92d6 = 0x4c92d6;
(* #! -> SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* xor    %rax,%rax                                #! PC = 0x4c8040 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* sub    %r14,%r10                                #! PC = 0x4c8043 *)
subb carry r10 r10 r14;
(* sbb    %r15,%r11                                #! PC = 0x4c8046 *)
sbbs carry r11 r11 r15 carry;
(* sbb    %rdi,%r12                                #! PC = 0x4c8049 *)
sbbs carry r12 r12 rdi carry;
(* sbb    %rsi,%r13                                #! PC = 0x4c804c *)
sbbs carry0 r13 r13 rsi carry;
(* sbb    $0x0,%rax                                #! PC = 0x4c804f *)
sbbs carry rax rax 0x0@uint64 carry0;
(* mov    %r10,%rbx                                #! PC = 0x4c8053 *)
mov rbx r10;
(* mov    %r11,%rcx                                #! PC = 0x4c8056 *)
mov rcx r11;
(* mov    %r12,%r8                                 #! PC = 0x4c8059 *)
mov r8 r12;
(* mov    %r13,%r9                                 #! PC = 0x4c805c *)
mov r9 r13;
(* add    $0xffffffffffffffff,%r10                 #! PC = 0x4c805f *)
adds carry r10 r10 0xffffffffffffffff@uint64;
(* adc    0x71a8e(%rip),%r11        # 0x539af8 <p256const0>#! EA = L0x539af8; Value = 0x00000000ffffffff; PC = 0x4c8063 *)
adcs carry r11 r11 L0x539af8 carry;
(* adc    $0x0,%r12                                #! PC = 0x4c806a *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    0x71a8b(%rip),%r13        # 0x539b00 <p256const1>#! EA = L0x539b00; Value = 0xffffffff00000001; PC = 0x4c806e *)
adcs dc0 r13 r13 L0x539b00 carry;
(* and    $0x1,%rax                                #! PC = 0x4c8075 *)
#and    $0x1,%%rax                                #! 0x4c8075 = 0x4c8075;
and rax@uint64 rax 0x1@uint64;
subc zero dc 0@uint64 rax;

#assert true && (zero + 1@1)*(carry0)+(zero)*(carry0+1@1) = 1@1;
#assume zero=carry0+1  && true;
assert true && zero = 1@1 - carry0;
assume zero = 1 - carry0 && true;

#assert true && (dc0 - 1@1)*(carry0 - 0@1) = 0@1;
#assume (dc0- 1)*(carry0 - 0)= 0 && true;
assert true && (1@1 - dc0) * carry0 = 0@1;
assume (1 - dc0) * carry0 = 0 && true;
(* cmove  %rbx,%r10                                #! PC = 0x4c8079 *)
cmov r10 zero rbx r10;
(* cmove  %rcx,%r11                                #! PC = 0x4c807d *)
cmov r11 zero rcx r11;
(* cmove  %r8,%r12                                 #! PC = 0x4c8081 *)
cmov r12 zero r8 r12;
(* cmove  %r9,%r13                                 #! PC = 0x4c8085 *)
cmov r13 zero r9 r13;

(* 22 *)
cut eqmod (limbs 64 [r10, r11, r12, r13])
          (2**256 *
          (((limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)
            *
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
            -
            (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
             limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3)**2
            +
            2* limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2
            *
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**2
            +
            (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
             limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3)
           *
           (limbs 64 [y2_0,y2_1,y2_2,y2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**3 -
            limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3) -
           limbs 64 [y1_0,y1_1,y1_2,y1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**3
           *
           (limbs 64 [x2_0,x2_1,x2_2,x2_3] * limbs 64 [z1_0,z1_1,z1_2,z1_3]**2 -
            limbs 64 [x1_0,x1_1,x1_2,x1_3] * limbs 64 [z2_0,z2_1,z2_2,z2_3]**2)**3))
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
    prove with [precondition, all ghosts, cuts [13]]
 && limbs 64 [r10, r11, r12, r13] <u
    limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
    prove with [precondition, cuts [13]];
(* #! <- SP = 0xc0000b1218 *)
#! 0xc0000b1218 = 0xc0000b1218;
(* #ret                                            #! PC = 0x4c8089 *)
#ret                                            #! 0x4c8089 = 0x4c8089;
(* mov    %r10,0xe0(%rsp)                          #! EA = L0xc0000b1300; PC = 0x4c92db *)
mov L0xc0000b1300 r10;
(* mov    %r11,0xe8(%rsp)                          #! EA = L0xc0000b1308; PC = 0x4c92e3 *)
mov L0xc0000b1308 r11;
(* mov    %r12,0xf0(%rsp)                          #! EA = L0xc0000b1310; PC = 0x4c92eb *)
mov L0xc0000b1310 r12;
(* mov    %r13,0xf8(%rsp)                          #! EA = L0xc0000b1318; PC = 0x4c92f3 *)
mov L0xc0000b1318 r13;
(* movdqu 0xc0(%rsp),%xmm0                         #! EA = L0xc0000b12e0; Value = 0x156f0247b1104fb0; PC = 0x4c92fb *)
mov xmm0_0 L0xc0000b12e0; #mov xmm0_1 L0xc0000b12e4;
mov xmm0_2 L0xc0000b12e8; #mov xmm0_3 L0xc0000b12ec;
(* movdqu 0xd0(%rsp),%xmm1                         #! EA = L0xc0000b12f0; Value = 0xf05d84a05384374f; PC = 0x4c9304 *)
mov xmm1_0 L0xc0000b12f0; #mov xmm1_1 L0xc0000b12f4;
mov xmm1_2 L0xc0000b12f8; #mov xmm1_3 L0xc0000b12fc;
(* movdqu 0xe0(%rsp),%xmm2                         #! EA = L0xc0000b1300; Value = 0xf2d47601b55284dd; PC = 0x4c930d *)
mov xmm2_0 L0xc0000b1300; #mov xmm2_1 L0xc0000b1304;
mov xmm2_2 L0xc0000b1308; #mov xmm2_3 L0xc0000b130c;
(* movdqu 0xf0(%rsp),%xmm3                         #! EA = L0xc0000b1310; Value = 0xa8faf7dfc8d328ce; PC = 0x4c9316 *)
mov xmm3_0 L0xc0000b1310; #mov xmm3_1 L0xc0000b1314;
mov xmm3_2 L0xc0000b1318; #mov xmm3_3 L0xc0000b131c;
(* movdqu 0x100(%rsp),%xmm4                        #! EA = L0xc0000b1320; Value = 0x9272db78396048d8; PC = 0x4c931f *)
mov xmm4_0 L0xc0000b1320; #mov xmm4_1 L0xc0000b1324;
mov xmm4_2 L0xc0000b1328; #mov xmm4_3 L0xc0000b132c;
(* movdqu 0x110(%rsp),%xmm5                        #! EA = L0xc0000b1330; Value = 0x954997338a0459ac; PC = 0x4c9328 *)
mov xmm5_0 L0xc0000b1330; #mov xmm5_1 L0xc0000b1334;
mov xmm5_2 L0xc0000b1338; #mov xmm5_3 L0xc0000b133c;
(* mov    0x280(%rsp),%rax                         #! EA = L0xc0000b14a0; Value = 0x000000c0000b1670; PC = 0x4c9331 *)
#mov rax L0xc0000b14a0;
(* movq   $0x0,0x280(%rsp)                         #! EA = L0xc0000b14a0; PC = 0x4c9339 *)
#movq   $0x0,%%L0xc0000b14a0                         #! L0xc0000b14a0 = L0xc0000b14a0; 0x4c9339 = 0x4c9339;
(* movdqu %xmm0,(%rax)                             #! EA = L0xc0000b1670; PC = 0x4c9345 *)
mov L0xc0000b1670 xmm0_0; #mov L0xc0000b1674 xmm0_1;
mov L0xc0000b1678 xmm0_2; #mov L0xc0000b167c xmm0_3;
(* movdqu %xmm1,0x10(%rax)                         #! EA = L0xc0000b1680; PC = 0x4c9349 *)
mov L0xc0000b1680 xmm1_0; #mov L0xc0000b1684 xmm1_1;
mov L0xc0000b1688 xmm1_2; #mov L0xc0000b168c xmm1_3;
(* movdqu %xmm2,0x20(%rax)                         #! EA = L0xc0000b1690; PC = 0x4c934e *)
mov L0xc0000b1690 xmm2_0; #mov L0xc0000b1694 xmm2_1;
mov L0xc0000b1698 xmm2_2; #mov L0xc0000b169c xmm2_3;
(* movdqu %xmm3,0x30(%rax)                         #! EA = L0xc0000b16a0; PC = 0x4c9353 *)
mov L0xc0000b16a0 xmm3_0; #mov L0xc0000b16a4 xmm3_1;
mov L0xc0000b16a8 xmm3_2; #mov L0xc0000b16ac xmm3_3;
(* movdqu %xmm4,0x40(%rax)                         #! EA = L0xc0000b16b0; PC = 0x4c9358 *)
mov L0xc0000b16b0 xmm4_0; #mov L0xc0000b16b4 xmm4_1;
mov L0xc0000b16b8 xmm4_2; #mov L0xc0000b16bc xmm4_3;
(* movdqu %xmm5,0x50(%rax)                         #! EA = L0xc0000b16c0; PC = 0x4c935d *)
mov L0xc0000b16c0 xmm5_0; #mov L0xc0000b16c4 xmm5_1;
mov L0xc0000b16c8 xmm5_2; #mov L0xc0000b16cc xmm5_3;
(* mov    0x288(%rsp),%rax                         #! EA = L0xc0000b14a8; Value = 0x0000000000000000; PC = 0x4c9362 *)
mov rax L0xc0000b14a8;
(* mov    %rax,0x300(%rsp)                         #! EA = L0xc0000b1520; PC = 0x4c936a *)
mov L0xc0000b1520 rax;
(* mov    0x2a8(%rsp),%rbp                         #! EA = L0xc0000b14c8; Value = 0x000000c0000b1cd0; PC = 0x4c9372 *)
#mov rbp L0xc0000b14c8;
(* add    $0x2b0,%rsp                              #! PC = 0x4c937a *)
#adds carry rsp rsp 0x2b0@uint64;
(* #! <- SP = 0xc0000b14d0 *)
#! 0xc0000b14d0 = 0xc0000b14d0;
(* #ret                                            #! PC = 0x4c9381 *)
#ret                                            #! 0x4c9381 = 0x4c9381;

mov x3R_0 L0xc0000b1670; mov x3R_1 L0xc0000b1678;
mov x3R_2 L0xc0000b1680; mov x3R_3 L0xc0000b1688;
mov y3R_0 L0xc0000b1690; mov y3R_1 L0xc0000b1698;
mov y3R_2 L0xc0000b16a0; mov y3R_3 L0xc0000b16a8;
mov z3R_0 L0xc0000b16b0; mov z3R_1 L0xc0000b16b8;
mov z3R_2 L0xc0000b16c0; mov z3R_3 L0xc0000b16c8;

ghost X1@uint256, Y1@uint256, Z1@uint256,
      X2@uint256, Y2@uint256, Z2@uint256:
  and [
    X1 = limbs 64 [x1_0, x1_1, x1_2, x1_3],
    Y1 = limbs 64 [y1_0, y1_1, y1_2, y1_3],
    Z1 = limbs 64 [z1_0, z1_1, z1_2, z1_3],
    X2 = limbs 64 [x2_0, x2_1, x2_2, x2_3],
    Y2 = limbs 64 [y2_0, y2_1, y2_2, y2_3],
    Z2 = limbs 64 [z2_0, z2_1, z2_2, z2_3]
  ]
  &&
  true;

ghost Z1Z1@uint256, Z2Z2@uint256, U1@uint256, U2@uint256, 
      S1@uint256, S2@uint256, H@uint256, HH@uint256, HHH@uint256, 
      r@uint256, V@uint256, X3@uint256, Y3@uint256, Z3@uint256:
  and [
    Z1Z1 = Z1 * Z1,
    Z2Z2 = Z2 * Z2,
    U1 = X1 * Z2Z2,
    U2 = X2 * Z1Z1,
    S1 = Y1 * Z2 * Z2Z2,
    S2 = Y2 * Z1 * Z1Z1,
    H = U2 - U1,
    HH = H * H,
    HHH = H * HH,
    r = S2 - S1,
    V = U1 * HH,
    X3 = r * r - HHH - 2 * V,
    Y3 = r * (V - X3) - S1 * HHH,
    Z3 = Z1 * Z2 * H
  ]
  && 
  true;

{
  and [
    eqmod (limbs 64 [x3R_0, x3R_1, x3R_2, x3R_3])
          (2**256 * X3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [y3R_0, y3R_1, y3R_2, y3R_3])
          (2**256 * Y3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3]),
    eqmod (limbs 64 [z3R_0, z3R_1, z3R_2, z3R_3])
          (2**256 * Z3)
          (limbs 64 [$P256_0, $P256_1, $P256_2, $P256_3])
  ] prove with [ cuts [15, 19, 22] ]
&&
  and [limbs 64 [x3R_0, x3R_1, x3R_2, x3R_3] <u
         limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [y3R_0, y3R_1, y3R_2, y3R_3] <u
         limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64],
       limbs 64 [z3R_0, z3R_1, z3R_2, z3R_3] <u
         limbs 64 [$P256_0@64, $P256_1@64, $P256_2@64, $P256_3@64]
  ] prove with [ cuts [15, 19, 22] ]
}
