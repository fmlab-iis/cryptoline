(* quine: cv.exe -v -isafety -jobs 22 -slicing -no_carry_constraint PQCLEAN_MCELIECE348864_AVX2_vec256_mul_asm.cl
Parsing CryptoLine file:                        [OK]            2.0370 seconds
Checking well-formedness:                       [OK]            0.3150 seconds

Procedure main
==============
Transforming to SSA form:                       [OK]            0.1817 seconds
Normalizing specification:                      [OK]            0.2532 seconds
Rewriting assignments:                          [OK]            0.1469 seconds
Verifying program safety:
*)
proc main (uint16 z,
           bit[256] %a0,bit[256] %a1,bit[256] %a2,bit[256] %a3,
           bit[256] %a4,bit[256] %a5,bit[256] %a6,bit[256] %a7,
           bit[256] %a8,bit[256] %a9,bit[256] %aa,bit[256] %ab,
           bit[256] %b0,bit[256] %b1,bit[256] %b2,bit[256] %b3,
           bit[256] %b4,bit[256] %b5,bit[256] %b6,bit[256] %b7,
           bit[256] %b8,bit[256] %b9,bit[256] %ba,bit[256] %bb) =
{
  true
  &&
  true
}

mov %L0x7ffffff4f1c0 %a0; mov %L0x7ffffff4f1e0 %a1; mov %L0x7ffffff4f200 %a2;
mov %L0x7ffffff4f220 %a3; mov %L0x7ffffff4f240 %a4; mov %L0x7ffffff4f260 %a5;
mov %L0x7ffffff4f280 %a6; mov %L0x7ffffff4f2a0 %a7; mov %L0x7ffffff4f2c0 %a8;
mov %L0x7ffffff4f2e0 %a9; mov %L0x7ffffff4f300 %aa; mov %L0x7ffffff4f320 %ab;
mov %L0x7ffffff533e0 %b0; mov %L0x7ffffff53400 %b1; mov %L0x7ffffff53420 %b2;
mov %L0x7ffffff53440 %b3; mov %L0x7ffffff53460 %b4; mov %L0x7ffffff53480 %b5;
mov %L0x7ffffff534a0 %b6; mov %L0x7ffffff534c0 %b7; mov %L0x7ffffff534e0 %b8;
mov %L0x7ffffff53500 %b9; mov %L0x7ffffff53520 %ba; mov %L0x7ffffff53540 %bb;

(* #! -> SP = 0x7ffffff4d4f8 *)
#! 0x7ffffff4d4f8 = 0x7ffffff4d4f8;
(* #mov    %rsp,%r11                                #! PC = 0x55555557be60 *)
#mov    %rsp,%r11                                #! 0x55555557be60 = 0x55555557be60;
(* #and    $0x1f,%r11                               #! PC = 0x55555557be63 *)
#and    $0x1f,%r11                               #! 0x55555557be63 = 0x55555557be63;
(* #add    $0x0,%r11                                #! PC = 0x55555557be67 *)
#add    $0x0,%r11                                #! 0x55555557be67 = 0x55555557be67;
(* #sub    %r11,%rsp                                #! PC = 0x55555557be6b *)
#sub    %r11,%rsp                                #! 0x55555557be6b = 0x55555557be6b;
(* vmovupd (%rdx),%ymm0                            #! EA = L0x7ffffff4f1c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557be6e *)
mov %ymm0 %L0x7ffffff4f1c0;
(* vmovupd 0x160(%rsi),%ymm1                       #! EA = L0x7ffffff53540; Value = 0xffffffffffffffff; PC = 0x55555557be72 *)
mov %ymm1 %L0x7ffffff53540;
(* vpand  %ymm1,%ymm0,%ymm2                        #! PC = 0x55555557be7a *)
mul %ymm2 %ymm0 %ymm1;
(* vpand  0x20(%rdx),%ymm1,%ymm3                   #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557be7e *)
mul %ymm3 %ymm1 %L0x7ffffff4f1e0;
(* vpand  0x40(%rdx),%ymm1,%ymm4                   #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557be83 *)
mul %ymm4 %ymm1 %L0x7ffffff4f200;
(* vpand  0x60(%rdx),%ymm1,%ymm5                   #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557be88 *)
mul %ymm5 %ymm1 %L0x7ffffff4f220;
(* vpand  0x80(%rdx),%ymm1,%ymm6                   #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557be8d *)
mul %ymm6 %ymm1 %L0x7ffffff4f240;
(* vpand  0xa0(%rdx),%ymm1,%ymm7                   #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557be95 *)
mul %ymm7 %ymm1 %L0x7ffffff4f260;
(* vpand  0xc0(%rdx),%ymm1,%ymm8                   #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557be9d *)
mul %ymm8 %ymm1 %L0x7ffffff4f280;
(* vpand  0xe0(%rdx),%ymm1,%ymm9                   #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557bea5 *)
mul %ymm9 %ymm1 %L0x7ffffff4f2a0;
(* vpand  0x100(%rdx),%ymm1,%ymm10                 #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557bead *)
mul %ymm10 %ymm1 %L0x7ffffff4f2c0;
(* vpand  0x120(%rdx),%ymm1,%ymm11                 #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557beb5 *)
mul %ymm11 %ymm1 %L0x7ffffff4f2e0;
(* vpand  0x140(%rdx),%ymm1,%ymm12                 #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557bebd *)
mul %ymm12 %ymm1 %L0x7ffffff4f300;
(* vpand  0x160(%rdx),%ymm1,%ymm1                  #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557bec5 *)
mul %ymm1 %ymm1 %L0x7ffffff4f320;
(* vpxor  %ymm1,%ymm4,%ymm4                        #! PC = 0x55555557becd *)
adds %dc %ymm4 %ymm4 %ymm1;
(* vmovapd %ymm1,%ymm1                             #! PC = 0x55555557bed1 *)
mov %ymm1 %ymm1;
(* vmovupd 0x140(%rsi),%ymm13                      #! EA = L0x7ffffff53520; Value = 0xffffffffffffffff; PC = 0x55555557bed5 *)
mov %ymm13 %L0x7ffffff53520;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557bedd *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557bee2 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557bee7 *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557beec *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557bef1 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557bef6 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557befb *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557bf00 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557bf05 *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557bf0d *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557bf12 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557bf1a *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557bf1f *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557bf27 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557bf2c *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557bf34 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557bf39 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557bf41 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557bf46 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557bf4e *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557bf53 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557bf5b *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557bf60 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm12,%ymm12                     #! PC = 0x55555557bf68 *)
adds %dc %ymm12 %ymm12 %ymm13;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557bf6d *)
adds %dc %ymm3 %ymm3 %ymm12;
(* vmovapd %ymm12,%ymm12                           #! PC = 0x55555557bf72 *)
mov %ymm12 %ymm12;
(* vmovupd 0x120(%rsi),%ymm13                      #! EA = L0x7ffffff53500; Value = 0xffffffffffffffff; PC = 0x55555557bf77 *)
mov %ymm13 %L0x7ffffff53500;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557bf7f *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557bf84 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557bf89 *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557bf8e *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557bf93 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557bf98 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557bf9d *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557bfa2 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557bfa7 *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557bfaf *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557bfb4 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557bfbc *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557bfc1 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557bfc9 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557bfce *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557bfd6 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557bfdb *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557bfe3 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557bfe8 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557bff0 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557bff5 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557bffd *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c002 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm11,%ymm11                     #! PC = 0x55555557c00a *)
adds %dc %ymm11 %ymm11 %ymm13;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557c00f *)
adds %dc %ymm2 %ymm2 %ymm11;
(* vmovapd %ymm11,%ymm11                           #! PC = 0x55555557c014 *)
mov %ymm11 %ymm11;
(* vmovupd 0x100(%rsi),%ymm13                      #! EA = L0x7ffffff534e0; Value = 0xffffffffffffffff; PC = 0x55555557c019 *)
mov %ymm13 %L0x7ffffff534e0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c021 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c026 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c02b *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c030 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c035 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c03a *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c03f *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c044 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c049 *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c051 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c056 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c05e *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c063 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c06b *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c070 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c078 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c07d *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c085 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c08a *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c092 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c097 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c09f *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c0a4 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm10,%ymm10                     #! PC = 0x55555557c0ac *)
adds %dc %ymm10 %ymm10 %ymm13;
(* vpxor  %ymm10,%ymm1,%ymm1                       #! PC = 0x55555557c0b1 *)
adds %dc %ymm1 %ymm1 %ymm10;
(* vmovapd %ymm10,%ymm10                           #! PC = 0x55555557c0b6 *)
mov %ymm10 %ymm10;
(* vmovupd 0xe0(%rsi),%ymm13                       #! EA = L0x7ffffff534c0; Value = 0xffffffffffffffff; PC = 0x55555557c0bb *)
mov %ymm13 %L0x7ffffff534c0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c0c3 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c0c8 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c0cd *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c0d2 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c0d7 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c0dc *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c0e1 *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c0e6 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c0eb *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c0f3 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c0f8 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c100 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c105 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c10d *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c112 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c11a *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c11f *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c127 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c12c *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c134 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c139 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c141 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c146 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm9,%ymm9                       #! PC = 0x55555557c14e *)
adds %dc %ymm9 %ymm9 %ymm13;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x55555557c153 *)
adds %dc %ymm12 %ymm12 %ymm9;
(* vmovapd %ymm9,%ymm9                             #! PC = 0x55555557c158 *)
mov %ymm9 %ymm9;
(* vmovupd 0xc0(%rsi),%ymm13                       #! EA = L0x7ffffff534a0; Value = 0x0000000000000000; PC = 0x55555557c15d *)
mov %ymm13 %L0x7ffffff534a0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c165 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c16a *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c16f *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c174 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c179 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c17e *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c183 *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c188 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c18d *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c195 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c19a *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c1a2 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c1a7 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c1af *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c1b4 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c1bc *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c1c1 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c1c9 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c1ce *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c1d6 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c1db *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c1e3 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c1e8 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm8,%ymm8                       #! PC = 0x55555557c1f0 *)
adds %dc %ymm8 %ymm8 %ymm13;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557c1f5 *)
adds %dc %ymm11 %ymm11 %ymm8;
(* vmovapd %ymm8,%ymm8                             #! PC = 0x55555557c1fa *)
mov %ymm8 %ymm8;
(* vmovupd 0xa0(%rsi),%ymm13                       #! EA = L0x7ffffff53480; Value = 0xffffffffffffffff; PC = 0x55555557c1ff *)
mov %ymm13 %L0x7ffffff53480;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c207 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c20c *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c211 *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c216 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c21b *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c220 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c225 *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c22a *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c22f *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c237 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c23c *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c244 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c249 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c251 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c256 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c25e *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c263 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c26b *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c270 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c278 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c27d *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c285 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c28a *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm7,%ymm7                       #! PC = 0x55555557c292 *)
adds %dc %ymm7 %ymm7 %ymm13;
(* vpxor  %ymm7,%ymm10,%ymm10                      #! PC = 0x55555557c297 *)
adds %dc %ymm10 %ymm10 %ymm7;
(* vmovapd %ymm7,%ymm7                             #! PC = 0x55555557c29b *)
mov %ymm7 %ymm7;
(* vmovupd 0x80(%rsi),%ymm13                       #! EA = L0x7ffffff53460; Value = 0xffffffffffffffff; PC = 0x55555557c29f *)
mov %ymm13 %L0x7ffffff53460;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c2a7 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c2ac *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c2b1 *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c2b6 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c2bb *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c2c0 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c2c5 *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c2ca *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c2cf *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c2d7 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c2dc *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c2e4 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c2e9 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c2f1 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c2f6 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c2fe *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c303 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c30b *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c310 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c318 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c31d *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c325 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c32a *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x55555557c332 *)
adds %dc %ymm6 %ymm6 %ymm13;
(* vpxor  %ymm6,%ymm9,%ymm9                        #! PC = 0x55555557c337 *)
adds %dc %ymm9 %ymm9 %ymm6;
(* vmovapd %ymm6,%ymm6                             #! PC = 0x55555557c33b *)
mov %ymm6 %ymm6;
(* vmovupd 0x60(%rsi),%ymm13                       #! EA = L0x7ffffff53440; Value = 0x0000000000000000; PC = 0x55555557c33f *)
mov %ymm13 %L0x7ffffff53440;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c344 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c349 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c34e *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c353 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c358 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c35d *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c362 *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c367 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c36c *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c374 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c379 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c381 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c386 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c38e *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c393 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c39b *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c3a0 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c3a8 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c3ad *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c3b5 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c3ba *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c3c2 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c3c7 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm5,%ymm5                       #! PC = 0x55555557c3cf *)
adds %dc %ymm5 %ymm5 %ymm13;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557c3d4 *)
adds %dc %ymm8 %ymm8 %ymm5;
(* vmovapd %ymm5,%ymm5                             #! PC = 0x55555557c3d8 *)
mov %ymm5 %ymm5;
(* vmovupd 0x40(%rsi),%ymm13                       #! EA = L0x7ffffff53420; Value = 0xffffffffffffffff; PC = 0x55555557c3dc *)
mov %ymm13 %L0x7ffffff53420;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c3e1 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c3e6 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c3eb *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c3f0 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c3f5 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c3fa *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c3ff *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c404 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c409 *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c411 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c416 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c41e *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c423 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c42b *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c430 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c438 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c43d *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c445 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c44a *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c452 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c457 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557c45f *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c464 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm4,%ymm4                       #! PC = 0x55555557c46c *)
adds %dc %ymm4 %ymm4 %ymm13;
(* vpxor  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555557c471 *)
adds %dc %ymm7 %ymm7 %ymm4;
(* vmovapd %ymm4,%ymm4                             #! PC = 0x55555557c475 *)
mov %ymm4 %ymm4;
(* vmovupd 0x20(%rsi),%ymm13                       #! EA = L0x7ffffff53400; Value = 0x0000000000000000; PC = 0x55555557c479 *)
mov %ymm13 %L0x7ffffff53400;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557c47e *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557c483 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c488 *)
mul %ymm14 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557c48d *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c492 *)
mul %ymm14 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557c497 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c49c *)
mul %ymm14 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557c4a1 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c4a6 *)
mul %ymm14 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c4ae *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c4b3 *)
mul %ymm14 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557c4bb *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c4c0 *)
mul %ymm14 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c4c8 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c4cd *)
mul %ymm14 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557c4d5 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c4da *)
mul %ymm14 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557c4e2 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c4e7 *)
mul %ymm14 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557c4ef *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c4f4 *)
mul %ymm14 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557c4fc *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c501 *)
mul %ymm13 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm13,%ymm3,%ymm3                       #! PC = 0x55555557c509 *)
adds %dc %ymm3 %ymm3 %ymm13;
(* vpxor  %ymm3,%ymm6,%ymm6                        #! PC = 0x55555557c50e *)
adds %dc %ymm6 %ymm6 %ymm3;
(* vmovapd %ymm3,%ymm3                             #! PC = 0x55555557c512 *)
mov %ymm3 %ymm3;
(* vmovupd (%rsi),%ymm13                           #! EA = L0x7ffffff533e0; Value = 0xffffffffffffffff; PC = 0x55555557c516 *)
mov %ymm13 %L0x7ffffff533e0;
(* vpand  %ymm13,%ymm0,%ymm0                       #! PC = 0x55555557c51a *)
mul %ymm0 %ymm0 %ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557c51f *)
adds %dc %ymm3 %ymm3 %ymm0;
(* vpand  0x20(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f1e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557c523 *)
mul %ymm0 %ymm13 %L0x7ffffff4f1e0;
(* vpxor  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557c528 *)
adds %dc %ymm4 %ymm4 %ymm0;
(* vpand  0x40(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f200; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557c52c *)
mul %ymm0 %ymm13 %L0x7ffffff4f200;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557c531 *)
adds %dc %ymm5 %ymm5 %ymm0;
(* vpand  0x60(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f220; Value = 0xaa5555aaaa5555aa; PC = 0x55555557c535 *)
mul %ymm0 %ymm13 %L0x7ffffff4f220;
(* vpxor  %ymm0,%ymm6,%ymm6                        #! PC = 0x55555557c53a *)
adds %dc %ymm6 %ymm6 %ymm0;
(* vpand  0x80(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f240; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c53e *)
mul %ymm0 %ymm13 %L0x7ffffff4f240;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557c546 *)
adds %dc %ymm7 %ymm7 %ymm0;
(* vpand  0xa0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f260; Value = 0x33cccc33cc3333cc; PC = 0x55555557c54a *)
mul %ymm0 %ymm13 %L0x7ffffff4f260;
(* vpxor  %ymm0,%ymm8,%ymm8                        #! PC = 0x55555557c552 *)
adds %dc %ymm8 %ymm8 %ymm0;
(* vpand  0xc0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f280; Value = 0xffff0000ffff0000; PC = 0x55555557c556 *)
mul %ymm0 %ymm13 %L0x7ffffff4f280;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557c55e *)
adds %dc %ymm9 %ymm9 %ymm0;
(* vpand  0xe0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff4f2a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557c562 *)
mul %ymm0 %ymm13 %L0x7ffffff4f2a0;
(* vpxor  %ymm0,%ymm10,%ymm10                      #! PC = 0x55555557c56a *)
adds %dc %ymm10 %ymm10 %ymm0;
(* vpand  0x100(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff4f2c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557c56e *)
mul %ymm0 %ymm13 %L0x7ffffff4f2c0;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555557c576 *)
adds %dc %ymm11 %ymm11 %ymm0;
(* vpand  0x120(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff4f2e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557c57a *)
mul %ymm0 %ymm13 %L0x7ffffff4f2e0;
(* vpxor  %ymm0,%ymm12,%ymm12                      #! PC = 0x55555557c582 *)
adds %dc %ymm12 %ymm12 %ymm0;
(* vpand  0x140(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff4f300; Value = 0xff00ff00ff00ff00; PC = 0x55555557c586 *)
mul %ymm0 %ymm13 %L0x7ffffff4f300;
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555557c58e *)
adds %dc %ymm1 %ymm1 %ymm0;
(* vpand  0x160(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff4f320; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557c592 *)
mul %ymm0 %ymm13 %L0x7ffffff4f320;
(* vpxor  %ymm0,%ymm2,%ymm2                        #! PC = 0x55555557c59a *)
adds %dc %ymm2 %ymm2 %ymm0;
(* vmovupd %ymm2,0x160(%rdi)                       #! EA = L0x7ffffff4d820; PC = 0x55555557c59e *)
mov %L0x7ffffff4d820 %ymm2;
(* vmovupd %ymm1,0x140(%rdi)                       #! EA = L0x7ffffff4d800; PC = 0x55555557c5a6 *)
mov %L0x7ffffff4d800 %ymm1;
(* vmovupd %ymm12,0x120(%rdi)                      #! EA = L0x7ffffff4d7e0; PC = 0x55555557c5ae *)
mov %L0x7ffffff4d7e0 %ymm12;
(* vmovupd %ymm11,0x100(%rdi)                      #! EA = L0x7ffffff4d7c0; PC = 0x55555557c5b6 *)
mov %L0x7ffffff4d7c0 %ymm11;
(* vmovupd %ymm10,0xe0(%rdi)                       #! EA = L0x7ffffff4d7a0; PC = 0x55555557c5be *)
mov %L0x7ffffff4d7a0 %ymm10;
(* vmovupd %ymm9,0xc0(%rdi)                        #! EA = L0x7ffffff4d780; PC = 0x55555557c5c6 *)
mov %L0x7ffffff4d780 %ymm9;
(* vmovupd %ymm8,0xa0(%rdi)                        #! EA = L0x7ffffff4d760; PC = 0x55555557c5ce *)
mov %L0x7ffffff4d760 %ymm8;
(* vmovupd %ymm7,0x80(%rdi)                        #! EA = L0x7ffffff4d740; PC = 0x55555557c5d6 *)
mov %L0x7ffffff4d740 %ymm7;
(* vmovupd %ymm6,0x60(%rdi)                        #! EA = L0x7ffffff4d720; PC = 0x55555557c5de *)
mov %L0x7ffffff4d720 %ymm6;
(* vmovupd %ymm5,0x40(%rdi)                        #! EA = L0x7ffffff4d700; PC = 0x55555557c5e3 *)
mov %L0x7ffffff4d700 %ymm5;
(* vmovupd %ymm4,0x20(%rdi)                        #! EA = L0x7ffffff4d6e0; PC = 0x55555557c5e8 *)
mov %L0x7ffffff4d6e0 %ymm4;
(* vmovupd %ymm3,(%rdi)                            #! EA = L0x7ffffff4d6c0; PC = 0x55555557c5ed *)
mov %L0x7ffffff4d6c0 %ymm3;
(* #add    %r11,%rsp                                #! PC = 0x55555557c5f1 *)
#add    %r11,%rsp                                #! 0x55555557c5f1 = 0x55555557c5f1;
(* #! <- SP = 0x7ffffff4d4f8 *)
#! 0x7ffffff4d4f8 = 0x7ffffff4d4f8;
(* #ret                                            #! PC = 0x55555557c5f4 *)
#ret                                            #! 0x55555557c5f4 = 0x55555557c5f4;

mov %c0 %L0x7ffffff4d6c0; mov %c1 %L0x7ffffff4d6e0; mov %c2 %L0x7ffffff4d700;
mov %c3 %L0x7ffffff4d720; mov %c4 %L0x7ffffff4d740; mov %c5 %L0x7ffffff4d760;
mov %c6 %L0x7ffffff4d780; mov %c7 %L0x7ffffff4d7a0; mov %c8 %L0x7ffffff4d7c0;
mov %c9 %L0x7ffffff4d7e0; mov %ca %L0x7ffffff4d800; mov %cb %L0x7ffffff4d820;

{
eqmod (poly z [%c0[  0]*z** 0,%c1[  0]*z** 1,%c2[  0]*z** 2,%c3[  0]*z** 3,
               %c4[  0]*z** 4,%c5[  0]*z** 5,%c6[  0]*z** 6,%c7[  0]*z** 7,
               %c8[  0]*z** 8,%c9[  0]*z** 9,%ca[  0]*z**10,%cb[  0]*z**11])
      (poly z [%a0[  0]*z** 0,%a1[  0]*z** 1,%a2[  0]*z** 2,%a3[  0]*z** 3,
               %a4[  0]*z** 4,%a5[  0]*z** 5,%a6[  0]*z** 6,%a7[  0]*z** 7,
               %a8[  0]*z** 8,%a9[  0]*z** 9,%aa[  0]*z**10,%ab[  0]*z**11] *
       poly z [%b0[  0]*z** 0,%b1[  0]*z** 1,%b2[  0]*z** 2,%b3[  0]*z** 3,
               %b4[  0]*z** 4,%b5[  0]*z** 5,%b6[  0]*z** 6,%b7[  0]*z** 7,
               %b8[  0]*z** 8,%b9[  0]*z** 9,%ba[  0]*z**10,%bb[  0]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  1]*z** 0,%c1[  1]*z** 1,%c2[  1]*z** 2,%c3[  1]*z** 3,
               %c4[  1]*z** 4,%c5[  1]*z** 5,%c6[  1]*z** 6,%c7[  1]*z** 7,
               %c8[  1]*z** 8,%c9[  1]*z** 9,%ca[  1]*z**10,%cb[  1]*z**11])
      (poly z [%a0[  1]*z** 0,%a1[  1]*z** 1,%a2[  1]*z** 2,%a3[  1]*z** 3,
               %a4[  1]*z** 4,%a5[  1]*z** 5,%a6[  1]*z** 6,%a7[  1]*z** 7,
               %a8[  1]*z** 8,%a9[  1]*z** 9,%aa[  1]*z**10,%ab[  1]*z**11] *
       poly z [%b0[  1]*z** 0,%b1[  1]*z** 1,%b2[  1]*z** 2,%b3[  1]*z** 3,
               %b4[  1]*z** 4,%b5[  1]*z** 5,%b6[  1]*z** 6,%b7[  1]*z** 7,
               %b8[  1]*z** 8,%b9[  1]*z** 9,%ba[  1]*z**10,%bb[  1]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  2]*z** 0,%c1[  2]*z** 1,%c2[  2]*z** 2,%c3[  2]*z** 3,
               %c4[  2]*z** 4,%c5[  2]*z** 5,%c6[  2]*z** 6,%c7[  2]*z** 7,
               %c8[  2]*z** 8,%c9[  2]*z** 9,%ca[  2]*z**10,%cb[  2]*z**11])
      (poly z [%a0[  2]*z** 0,%a1[  2]*z** 1,%a2[  2]*z** 2,%a3[  2]*z** 3,
               %a4[  2]*z** 4,%a5[  2]*z** 5,%a6[  2]*z** 6,%a7[  2]*z** 7,
               %a8[  2]*z** 8,%a9[  2]*z** 9,%aa[  2]*z**10,%ab[  2]*z**11] *
       poly z [%b0[  2]*z** 0,%b1[  2]*z** 1,%b2[  2]*z** 2,%b3[  2]*z** 3,
               %b4[  2]*z** 4,%b5[  2]*z** 5,%b6[  2]*z** 6,%b7[  2]*z** 7,
               %b8[  2]*z** 8,%b9[  2]*z** 9,%ba[  2]*z**10,%bb[  2]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  3]*z** 0,%c1[  3]*z** 1,%c2[  3]*z** 2,%c3[  3]*z** 3,
               %c4[  3]*z** 4,%c5[  3]*z** 5,%c6[  3]*z** 6,%c7[  3]*z** 7,
               %c8[  3]*z** 8,%c9[  3]*z** 9,%ca[  3]*z**10,%cb[  3]*z**11])
      (poly z [%a0[  3]*z** 0,%a1[  3]*z** 1,%a2[  3]*z** 2,%a3[  3]*z** 3,
               %a4[  3]*z** 4,%a5[  3]*z** 5,%a6[  3]*z** 6,%a7[  3]*z** 7,
               %a8[  3]*z** 8,%a9[  3]*z** 9,%aa[  3]*z**10,%ab[  3]*z**11] *
       poly z [%b0[  3]*z** 0,%b1[  3]*z** 1,%b2[  3]*z** 2,%b3[  3]*z** 3,
               %b4[  3]*z** 4,%b5[  3]*z** 5,%b6[  3]*z** 6,%b7[  3]*z** 7,
               %b8[  3]*z** 8,%b9[  3]*z** 9,%ba[  3]*z**10,%bb[  3]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  4]*z** 0,%c1[  4]*z** 1,%c2[  4]*z** 2,%c3[  4]*z** 3,
               %c4[  4]*z** 4,%c5[  4]*z** 5,%c6[  4]*z** 6,%c7[  4]*z** 7,
               %c8[  4]*z** 8,%c9[  4]*z** 9,%ca[  4]*z**10,%cb[  4]*z**11])
      (poly z [%a0[  4]*z** 0,%a1[  4]*z** 1,%a2[  4]*z** 2,%a3[  4]*z** 3,
               %a4[  4]*z** 4,%a5[  4]*z** 5,%a6[  4]*z** 6,%a7[  4]*z** 7,
               %a8[  4]*z** 8,%a9[  4]*z** 9,%aa[  4]*z**10,%ab[  4]*z**11] *
       poly z [%b0[  4]*z** 0,%b1[  4]*z** 1,%b2[  4]*z** 2,%b3[  4]*z** 3,
               %b4[  4]*z** 4,%b5[  4]*z** 5,%b6[  4]*z** 6,%b7[  4]*z** 7,
               %b8[  4]*z** 8,%b9[  4]*z** 9,%ba[  4]*z**10,%bb[  4]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  5]*z** 0,%c1[  5]*z** 1,%c2[  5]*z** 2,%c3[  5]*z** 3,
               %c4[  5]*z** 4,%c5[  5]*z** 5,%c6[  5]*z** 6,%c7[  5]*z** 7,
               %c8[  5]*z** 8,%c9[  5]*z** 9,%ca[  5]*z**10,%cb[  5]*z**11])
      (poly z [%a0[  5]*z** 0,%a1[  5]*z** 1,%a2[  5]*z** 2,%a3[  5]*z** 3,
               %a4[  5]*z** 4,%a5[  5]*z** 5,%a6[  5]*z** 6,%a7[  5]*z** 7,
               %a8[  5]*z** 8,%a9[  5]*z** 9,%aa[  5]*z**10,%ab[  5]*z**11] *
       poly z [%b0[  5]*z** 0,%b1[  5]*z** 1,%b2[  5]*z** 2,%b3[  5]*z** 3,
               %b4[  5]*z** 4,%b5[  5]*z** 5,%b6[  5]*z** 6,%b7[  5]*z** 7,
               %b8[  5]*z** 8,%b9[  5]*z** 9,%ba[  5]*z**10,%bb[  5]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  6]*z** 0,%c1[  6]*z** 1,%c2[  6]*z** 2,%c3[  6]*z** 3,
               %c4[  6]*z** 4,%c5[  6]*z** 5,%c6[  6]*z** 6,%c7[  6]*z** 7,
               %c8[  6]*z** 8,%c9[  6]*z** 9,%ca[  6]*z**10,%cb[  6]*z**11])
      (poly z [%a0[  6]*z** 0,%a1[  6]*z** 1,%a2[  6]*z** 2,%a3[  6]*z** 3,
               %a4[  6]*z** 4,%a5[  6]*z** 5,%a6[  6]*z** 6,%a7[  6]*z** 7,
               %a8[  6]*z** 8,%a9[  6]*z** 9,%aa[  6]*z**10,%ab[  6]*z**11] *
       poly z [%b0[  6]*z** 0,%b1[  6]*z** 1,%b2[  6]*z** 2,%b3[  6]*z** 3,
               %b4[  6]*z** 4,%b5[  6]*z** 5,%b6[  6]*z** 6,%b7[  6]*z** 7,
               %b8[  6]*z** 8,%b9[  6]*z** 9,%ba[  6]*z**10,%bb[  6]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  7]*z** 0,%c1[  7]*z** 1,%c2[  7]*z** 2,%c3[  7]*z** 3,
               %c4[  7]*z** 4,%c5[  7]*z** 5,%c6[  7]*z** 6,%c7[  7]*z** 7,
               %c8[  7]*z** 8,%c9[  7]*z** 9,%ca[  7]*z**10,%cb[  7]*z**11])
      (poly z [%a0[  7]*z** 0,%a1[  7]*z** 1,%a2[  7]*z** 2,%a3[  7]*z** 3,
               %a4[  7]*z** 4,%a5[  7]*z** 5,%a6[  7]*z** 6,%a7[  7]*z** 7,
               %a8[  7]*z** 8,%a9[  7]*z** 9,%aa[  7]*z**10,%ab[  7]*z**11] *
       poly z [%b0[  7]*z** 0,%b1[  7]*z** 1,%b2[  7]*z** 2,%b3[  7]*z** 3,
               %b4[  7]*z** 4,%b5[  7]*z** 5,%b6[  7]*z** 6,%b7[  7]*z** 7,
               %b8[  7]*z** 8,%b9[  7]*z** 9,%ba[  7]*z**10,%bb[  7]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  8]*z** 0,%c1[  8]*z** 1,%c2[  8]*z** 2,%c3[  8]*z** 3,
               %c4[  8]*z** 4,%c5[  8]*z** 5,%c6[  8]*z** 6,%c7[  8]*z** 7,
               %c8[  8]*z** 8,%c9[  8]*z** 9,%ca[  8]*z**10,%cb[  8]*z**11])
      (poly z [%a0[  8]*z** 0,%a1[  8]*z** 1,%a2[  8]*z** 2,%a3[  8]*z** 3,
               %a4[  8]*z** 4,%a5[  8]*z** 5,%a6[  8]*z** 6,%a7[  8]*z** 7,
               %a8[  8]*z** 8,%a9[  8]*z** 9,%aa[  8]*z**10,%ab[  8]*z**11] *
       poly z [%b0[  8]*z** 0,%b1[  8]*z** 1,%b2[  8]*z** 2,%b3[  8]*z** 3,
               %b4[  8]*z** 4,%b5[  8]*z** 5,%b6[  8]*z** 6,%b7[  8]*z** 7,
               %b8[  8]*z** 8,%b9[  8]*z** 9,%ba[  8]*z**10,%bb[  8]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  9]*z** 0,%c1[  9]*z** 1,%c2[  9]*z** 2,%c3[  9]*z** 3,
               %c4[  9]*z** 4,%c5[  9]*z** 5,%c6[  9]*z** 6,%c7[  9]*z** 7,
               %c8[  9]*z** 8,%c9[  9]*z** 9,%ca[  9]*z**10,%cb[  9]*z**11])
      (poly z [%a0[  9]*z** 0,%a1[  9]*z** 1,%a2[  9]*z** 2,%a3[  9]*z** 3,
               %a4[  9]*z** 4,%a5[  9]*z** 5,%a6[  9]*z** 6,%a7[  9]*z** 7,
               %a8[  9]*z** 8,%a9[  9]*z** 9,%aa[  9]*z**10,%ab[  9]*z**11] *
       poly z [%b0[  9]*z** 0,%b1[  9]*z** 1,%b2[  9]*z** 2,%b3[  9]*z** 3,
               %b4[  9]*z** 4,%b5[  9]*z** 5,%b6[  9]*z** 6,%b7[  9]*z** 7,
               %b8[  9]*z** 8,%b9[  9]*z** 9,%ba[  9]*z**10,%bb[  9]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 10]*z** 0,%c1[ 10]*z** 1,%c2[ 10]*z** 2,%c3[ 10]*z** 3,
               %c4[ 10]*z** 4,%c5[ 10]*z** 5,%c6[ 10]*z** 6,%c7[ 10]*z** 7,
               %c8[ 10]*z** 8,%c9[ 10]*z** 9,%ca[ 10]*z**10,%cb[ 10]*z**11])
      (poly z [%a0[ 10]*z** 0,%a1[ 10]*z** 1,%a2[ 10]*z** 2,%a3[ 10]*z** 3,
               %a4[ 10]*z** 4,%a5[ 10]*z** 5,%a6[ 10]*z** 6,%a7[ 10]*z** 7,
               %a8[ 10]*z** 8,%a9[ 10]*z** 9,%aa[ 10]*z**10,%ab[ 10]*z**11] *
       poly z [%b0[ 10]*z** 0,%b1[ 10]*z** 1,%b2[ 10]*z** 2,%b3[ 10]*z** 3,
               %b4[ 10]*z** 4,%b5[ 10]*z** 5,%b6[ 10]*z** 6,%b7[ 10]*z** 7,
               %b8[ 10]*z** 8,%b9[ 10]*z** 9,%ba[ 10]*z**10,%bb[ 10]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 11]*z** 0,%c1[ 11]*z** 1,%c2[ 11]*z** 2,%c3[ 11]*z** 3,
               %c4[ 11]*z** 4,%c5[ 11]*z** 5,%c6[ 11]*z** 6,%c7[ 11]*z** 7,
               %c8[ 11]*z** 8,%c9[ 11]*z** 9,%ca[ 11]*z**10,%cb[ 11]*z**11])
      (poly z [%a0[ 11]*z** 0,%a1[ 11]*z** 1,%a2[ 11]*z** 2,%a3[ 11]*z** 3,
               %a4[ 11]*z** 4,%a5[ 11]*z** 5,%a6[ 11]*z** 6,%a7[ 11]*z** 7,
               %a8[ 11]*z** 8,%a9[ 11]*z** 9,%aa[ 11]*z**10,%ab[ 11]*z**11] *
       poly z [%b0[ 11]*z** 0,%b1[ 11]*z** 1,%b2[ 11]*z** 2,%b3[ 11]*z** 3,
               %b4[ 11]*z** 4,%b5[ 11]*z** 5,%b6[ 11]*z** 6,%b7[ 11]*z** 7,
               %b8[ 11]*z** 8,%b9[ 11]*z** 9,%ba[ 11]*z**10,%bb[ 11]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 12]*z** 0,%c1[ 12]*z** 1,%c2[ 12]*z** 2,%c3[ 12]*z** 3,
               %c4[ 12]*z** 4,%c5[ 12]*z** 5,%c6[ 12]*z** 6,%c7[ 12]*z** 7,
               %c8[ 12]*z** 8,%c9[ 12]*z** 9,%ca[ 12]*z**10,%cb[ 12]*z**11])
      (poly z [%a0[ 12]*z** 0,%a1[ 12]*z** 1,%a2[ 12]*z** 2,%a3[ 12]*z** 3,
               %a4[ 12]*z** 4,%a5[ 12]*z** 5,%a6[ 12]*z** 6,%a7[ 12]*z** 7,
               %a8[ 12]*z** 8,%a9[ 12]*z** 9,%aa[ 12]*z**10,%ab[ 12]*z**11] *
       poly z [%b0[ 12]*z** 0,%b1[ 12]*z** 1,%b2[ 12]*z** 2,%b3[ 12]*z** 3,
               %b4[ 12]*z** 4,%b5[ 12]*z** 5,%b6[ 12]*z** 6,%b7[ 12]*z** 7,
               %b8[ 12]*z** 8,%b9[ 12]*z** 9,%ba[ 12]*z**10,%bb[ 12]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 13]*z** 0,%c1[ 13]*z** 1,%c2[ 13]*z** 2,%c3[ 13]*z** 3,
               %c4[ 13]*z** 4,%c5[ 13]*z** 5,%c6[ 13]*z** 6,%c7[ 13]*z** 7,
               %c8[ 13]*z** 8,%c9[ 13]*z** 9,%ca[ 13]*z**10,%cb[ 13]*z**11])
      (poly z [%a0[ 13]*z** 0,%a1[ 13]*z** 1,%a2[ 13]*z** 2,%a3[ 13]*z** 3,
               %a4[ 13]*z** 4,%a5[ 13]*z** 5,%a6[ 13]*z** 6,%a7[ 13]*z** 7,
               %a8[ 13]*z** 8,%a9[ 13]*z** 9,%aa[ 13]*z**10,%ab[ 13]*z**11] *
       poly z [%b0[ 13]*z** 0,%b1[ 13]*z** 1,%b2[ 13]*z** 2,%b3[ 13]*z** 3,
               %b4[ 13]*z** 4,%b5[ 13]*z** 5,%b6[ 13]*z** 6,%b7[ 13]*z** 7,
               %b8[ 13]*z** 8,%b9[ 13]*z** 9,%ba[ 13]*z**10,%bb[ 13]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 14]*z** 0,%c1[ 14]*z** 1,%c2[ 14]*z** 2,%c3[ 14]*z** 3,
               %c4[ 14]*z** 4,%c5[ 14]*z** 5,%c6[ 14]*z** 6,%c7[ 14]*z** 7,
               %c8[ 14]*z** 8,%c9[ 14]*z** 9,%ca[ 14]*z**10,%cb[ 14]*z**11])
      (poly z [%a0[ 14]*z** 0,%a1[ 14]*z** 1,%a2[ 14]*z** 2,%a3[ 14]*z** 3,
               %a4[ 14]*z** 4,%a5[ 14]*z** 5,%a6[ 14]*z** 6,%a7[ 14]*z** 7,
               %a8[ 14]*z** 8,%a9[ 14]*z** 9,%aa[ 14]*z**10,%ab[ 14]*z**11] *
       poly z [%b0[ 14]*z** 0,%b1[ 14]*z** 1,%b2[ 14]*z** 2,%b3[ 14]*z** 3,
               %b4[ 14]*z** 4,%b5[ 14]*z** 5,%b6[ 14]*z** 6,%b7[ 14]*z** 7,
               %b8[ 14]*z** 8,%b9[ 14]*z** 9,%ba[ 14]*z**10,%bb[ 14]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 15]*z** 0,%c1[ 15]*z** 1,%c2[ 15]*z** 2,%c3[ 15]*z** 3,
               %c4[ 15]*z** 4,%c5[ 15]*z** 5,%c6[ 15]*z** 6,%c7[ 15]*z** 7,
               %c8[ 15]*z** 8,%c9[ 15]*z** 9,%ca[ 15]*z**10,%cb[ 15]*z**11])
      (poly z [%a0[ 15]*z** 0,%a1[ 15]*z** 1,%a2[ 15]*z** 2,%a3[ 15]*z** 3,
               %a4[ 15]*z** 4,%a5[ 15]*z** 5,%a6[ 15]*z** 6,%a7[ 15]*z** 7,
               %a8[ 15]*z** 8,%a9[ 15]*z** 9,%aa[ 15]*z**10,%ab[ 15]*z**11] *
       poly z [%b0[ 15]*z** 0,%b1[ 15]*z** 1,%b2[ 15]*z** 2,%b3[ 15]*z** 3,
               %b4[ 15]*z** 4,%b5[ 15]*z** 5,%b6[ 15]*z** 6,%b7[ 15]*z** 7,
               %b8[ 15]*z** 8,%b9[ 15]*z** 9,%ba[ 15]*z**10,%bb[ 15]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 16]*z** 0,%c1[ 16]*z** 1,%c2[ 16]*z** 2,%c3[ 16]*z** 3,
               %c4[ 16]*z** 4,%c5[ 16]*z** 5,%c6[ 16]*z** 6,%c7[ 16]*z** 7,
               %c8[ 16]*z** 8,%c9[ 16]*z** 9,%ca[ 16]*z**10,%cb[ 16]*z**11])
      (poly z [%a0[ 16]*z** 0,%a1[ 16]*z** 1,%a2[ 16]*z** 2,%a3[ 16]*z** 3,
               %a4[ 16]*z** 4,%a5[ 16]*z** 5,%a6[ 16]*z** 6,%a7[ 16]*z** 7,
               %a8[ 16]*z** 8,%a9[ 16]*z** 9,%aa[ 16]*z**10,%ab[ 16]*z**11] *
       poly z [%b0[ 16]*z** 0,%b1[ 16]*z** 1,%b2[ 16]*z** 2,%b3[ 16]*z** 3,
               %b4[ 16]*z** 4,%b5[ 16]*z** 5,%b6[ 16]*z** 6,%b7[ 16]*z** 7,
               %b8[ 16]*z** 8,%b9[ 16]*z** 9,%ba[ 16]*z**10,%bb[ 16]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 17]*z** 0,%c1[ 17]*z** 1,%c2[ 17]*z** 2,%c3[ 17]*z** 3,
               %c4[ 17]*z** 4,%c5[ 17]*z** 5,%c6[ 17]*z** 6,%c7[ 17]*z** 7,
               %c8[ 17]*z** 8,%c9[ 17]*z** 9,%ca[ 17]*z**10,%cb[ 17]*z**11])
      (poly z [%a0[ 17]*z** 0,%a1[ 17]*z** 1,%a2[ 17]*z** 2,%a3[ 17]*z** 3,
               %a4[ 17]*z** 4,%a5[ 17]*z** 5,%a6[ 17]*z** 6,%a7[ 17]*z** 7,
               %a8[ 17]*z** 8,%a9[ 17]*z** 9,%aa[ 17]*z**10,%ab[ 17]*z**11] *
       poly z [%b0[ 17]*z** 0,%b1[ 17]*z** 1,%b2[ 17]*z** 2,%b3[ 17]*z** 3,
               %b4[ 17]*z** 4,%b5[ 17]*z** 5,%b6[ 17]*z** 6,%b7[ 17]*z** 7,
               %b8[ 17]*z** 8,%b9[ 17]*z** 9,%ba[ 17]*z**10,%bb[ 17]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 18]*z** 0,%c1[ 18]*z** 1,%c2[ 18]*z** 2,%c3[ 18]*z** 3,
               %c4[ 18]*z** 4,%c5[ 18]*z** 5,%c6[ 18]*z** 6,%c7[ 18]*z** 7,
               %c8[ 18]*z** 8,%c9[ 18]*z** 9,%ca[ 18]*z**10,%cb[ 18]*z**11])
      (poly z [%a0[ 18]*z** 0,%a1[ 18]*z** 1,%a2[ 18]*z** 2,%a3[ 18]*z** 3,
               %a4[ 18]*z** 4,%a5[ 18]*z** 5,%a6[ 18]*z** 6,%a7[ 18]*z** 7,
               %a8[ 18]*z** 8,%a9[ 18]*z** 9,%aa[ 18]*z**10,%ab[ 18]*z**11] *
       poly z [%b0[ 18]*z** 0,%b1[ 18]*z** 1,%b2[ 18]*z** 2,%b3[ 18]*z** 3,
               %b4[ 18]*z** 4,%b5[ 18]*z** 5,%b6[ 18]*z** 6,%b7[ 18]*z** 7,
               %b8[ 18]*z** 8,%b9[ 18]*z** 9,%ba[ 18]*z**10,%bb[ 18]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 19]*z** 0,%c1[ 19]*z** 1,%c2[ 19]*z** 2,%c3[ 19]*z** 3,
               %c4[ 19]*z** 4,%c5[ 19]*z** 5,%c6[ 19]*z** 6,%c7[ 19]*z** 7,
               %c8[ 19]*z** 8,%c9[ 19]*z** 9,%ca[ 19]*z**10,%cb[ 19]*z**11])
      (poly z [%a0[ 19]*z** 0,%a1[ 19]*z** 1,%a2[ 19]*z** 2,%a3[ 19]*z** 3,
               %a4[ 19]*z** 4,%a5[ 19]*z** 5,%a6[ 19]*z** 6,%a7[ 19]*z** 7,
               %a8[ 19]*z** 8,%a9[ 19]*z** 9,%aa[ 19]*z**10,%ab[ 19]*z**11] *
       poly z [%b0[ 19]*z** 0,%b1[ 19]*z** 1,%b2[ 19]*z** 2,%b3[ 19]*z** 3,
               %b4[ 19]*z** 4,%b5[ 19]*z** 5,%b6[ 19]*z** 6,%b7[ 19]*z** 7,
               %b8[ 19]*z** 8,%b9[ 19]*z** 9,%ba[ 19]*z**10,%bb[ 19]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 20]*z** 0,%c1[ 20]*z** 1,%c2[ 20]*z** 2,%c3[ 20]*z** 3,
               %c4[ 20]*z** 4,%c5[ 20]*z** 5,%c6[ 20]*z** 6,%c7[ 20]*z** 7,
               %c8[ 20]*z** 8,%c9[ 20]*z** 9,%ca[ 20]*z**10,%cb[ 20]*z**11])
      (poly z [%a0[ 20]*z** 0,%a1[ 20]*z** 1,%a2[ 20]*z** 2,%a3[ 20]*z** 3,
               %a4[ 20]*z** 4,%a5[ 20]*z** 5,%a6[ 20]*z** 6,%a7[ 20]*z** 7,
               %a8[ 20]*z** 8,%a9[ 20]*z** 9,%aa[ 20]*z**10,%ab[ 20]*z**11] *
       poly z [%b0[ 20]*z** 0,%b1[ 20]*z** 1,%b2[ 20]*z** 2,%b3[ 20]*z** 3,
               %b4[ 20]*z** 4,%b5[ 20]*z** 5,%b6[ 20]*z** 6,%b7[ 20]*z** 7,
               %b8[ 20]*z** 8,%b9[ 20]*z** 9,%ba[ 20]*z**10,%bb[ 20]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 21]*z** 0,%c1[ 21]*z** 1,%c2[ 21]*z** 2,%c3[ 21]*z** 3,
               %c4[ 21]*z** 4,%c5[ 21]*z** 5,%c6[ 21]*z** 6,%c7[ 21]*z** 7,
               %c8[ 21]*z** 8,%c9[ 21]*z** 9,%ca[ 21]*z**10,%cb[ 21]*z**11])
      (poly z [%a0[ 21]*z** 0,%a1[ 21]*z** 1,%a2[ 21]*z** 2,%a3[ 21]*z** 3,
               %a4[ 21]*z** 4,%a5[ 21]*z** 5,%a6[ 21]*z** 6,%a7[ 21]*z** 7,
               %a8[ 21]*z** 8,%a9[ 21]*z** 9,%aa[ 21]*z**10,%ab[ 21]*z**11] *
       poly z [%b0[ 21]*z** 0,%b1[ 21]*z** 1,%b2[ 21]*z** 2,%b3[ 21]*z** 3,
               %b4[ 21]*z** 4,%b5[ 21]*z** 5,%b6[ 21]*z** 6,%b7[ 21]*z** 7,
               %b8[ 21]*z** 8,%b9[ 21]*z** 9,%ba[ 21]*z**10,%bb[ 21]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 22]*z** 0,%c1[ 22]*z** 1,%c2[ 22]*z** 2,%c3[ 22]*z** 3,
               %c4[ 22]*z** 4,%c5[ 22]*z** 5,%c6[ 22]*z** 6,%c7[ 22]*z** 7,
               %c8[ 22]*z** 8,%c9[ 22]*z** 9,%ca[ 22]*z**10,%cb[ 22]*z**11])
      (poly z [%a0[ 22]*z** 0,%a1[ 22]*z** 1,%a2[ 22]*z** 2,%a3[ 22]*z** 3,
               %a4[ 22]*z** 4,%a5[ 22]*z** 5,%a6[ 22]*z** 6,%a7[ 22]*z** 7,
               %a8[ 22]*z** 8,%a9[ 22]*z** 9,%aa[ 22]*z**10,%ab[ 22]*z**11] *
       poly z [%b0[ 22]*z** 0,%b1[ 22]*z** 1,%b2[ 22]*z** 2,%b3[ 22]*z** 3,
               %b4[ 22]*z** 4,%b5[ 22]*z** 5,%b6[ 22]*z** 6,%b7[ 22]*z** 7,
               %b8[ 22]*z** 8,%b9[ 22]*z** 9,%ba[ 22]*z**10,%bb[ 22]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 23]*z** 0,%c1[ 23]*z** 1,%c2[ 23]*z** 2,%c3[ 23]*z** 3,
               %c4[ 23]*z** 4,%c5[ 23]*z** 5,%c6[ 23]*z** 6,%c7[ 23]*z** 7,
               %c8[ 23]*z** 8,%c9[ 23]*z** 9,%ca[ 23]*z**10,%cb[ 23]*z**11])
      (poly z [%a0[ 23]*z** 0,%a1[ 23]*z** 1,%a2[ 23]*z** 2,%a3[ 23]*z** 3,
               %a4[ 23]*z** 4,%a5[ 23]*z** 5,%a6[ 23]*z** 6,%a7[ 23]*z** 7,
               %a8[ 23]*z** 8,%a9[ 23]*z** 9,%aa[ 23]*z**10,%ab[ 23]*z**11] *
       poly z [%b0[ 23]*z** 0,%b1[ 23]*z** 1,%b2[ 23]*z** 2,%b3[ 23]*z** 3,
               %b4[ 23]*z** 4,%b5[ 23]*z** 5,%b6[ 23]*z** 6,%b7[ 23]*z** 7,
               %b8[ 23]*z** 8,%b9[ 23]*z** 9,%ba[ 23]*z**10,%bb[ 23]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 24]*z** 0,%c1[ 24]*z** 1,%c2[ 24]*z** 2,%c3[ 24]*z** 3,
               %c4[ 24]*z** 4,%c5[ 24]*z** 5,%c6[ 24]*z** 6,%c7[ 24]*z** 7,
               %c8[ 24]*z** 8,%c9[ 24]*z** 9,%ca[ 24]*z**10,%cb[ 24]*z**11])
      (poly z [%a0[ 24]*z** 0,%a1[ 24]*z** 1,%a2[ 24]*z** 2,%a3[ 24]*z** 3,
               %a4[ 24]*z** 4,%a5[ 24]*z** 5,%a6[ 24]*z** 6,%a7[ 24]*z** 7,
               %a8[ 24]*z** 8,%a9[ 24]*z** 9,%aa[ 24]*z**10,%ab[ 24]*z**11] *
       poly z [%b0[ 24]*z** 0,%b1[ 24]*z** 1,%b2[ 24]*z** 2,%b3[ 24]*z** 3,
               %b4[ 24]*z** 4,%b5[ 24]*z** 5,%b6[ 24]*z** 6,%b7[ 24]*z** 7,
               %b8[ 24]*z** 8,%b9[ 24]*z** 9,%ba[ 24]*z**10,%bb[ 24]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 25]*z** 0,%c1[ 25]*z** 1,%c2[ 25]*z** 2,%c3[ 25]*z** 3,
               %c4[ 25]*z** 4,%c5[ 25]*z** 5,%c6[ 25]*z** 6,%c7[ 25]*z** 7,
               %c8[ 25]*z** 8,%c9[ 25]*z** 9,%ca[ 25]*z**10,%cb[ 25]*z**11])
      (poly z [%a0[ 25]*z** 0,%a1[ 25]*z** 1,%a2[ 25]*z** 2,%a3[ 25]*z** 3,
               %a4[ 25]*z** 4,%a5[ 25]*z** 5,%a6[ 25]*z** 6,%a7[ 25]*z** 7,
               %a8[ 25]*z** 8,%a9[ 25]*z** 9,%aa[ 25]*z**10,%ab[ 25]*z**11] *
       poly z [%b0[ 25]*z** 0,%b1[ 25]*z** 1,%b2[ 25]*z** 2,%b3[ 25]*z** 3,
               %b4[ 25]*z** 4,%b5[ 25]*z** 5,%b6[ 25]*z** 6,%b7[ 25]*z** 7,
               %b8[ 25]*z** 8,%b9[ 25]*z** 9,%ba[ 25]*z**10,%bb[ 25]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 26]*z** 0,%c1[ 26]*z** 1,%c2[ 26]*z** 2,%c3[ 26]*z** 3,
               %c4[ 26]*z** 4,%c5[ 26]*z** 5,%c6[ 26]*z** 6,%c7[ 26]*z** 7,
               %c8[ 26]*z** 8,%c9[ 26]*z** 9,%ca[ 26]*z**10,%cb[ 26]*z**11])
      (poly z [%a0[ 26]*z** 0,%a1[ 26]*z** 1,%a2[ 26]*z** 2,%a3[ 26]*z** 3,
               %a4[ 26]*z** 4,%a5[ 26]*z** 5,%a6[ 26]*z** 6,%a7[ 26]*z** 7,
               %a8[ 26]*z** 8,%a9[ 26]*z** 9,%aa[ 26]*z**10,%ab[ 26]*z**11] *
       poly z [%b0[ 26]*z** 0,%b1[ 26]*z** 1,%b2[ 26]*z** 2,%b3[ 26]*z** 3,
               %b4[ 26]*z** 4,%b5[ 26]*z** 5,%b6[ 26]*z** 6,%b7[ 26]*z** 7,
               %b8[ 26]*z** 8,%b9[ 26]*z** 9,%ba[ 26]*z**10,%bb[ 26]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 27]*z** 0,%c1[ 27]*z** 1,%c2[ 27]*z** 2,%c3[ 27]*z** 3,
               %c4[ 27]*z** 4,%c5[ 27]*z** 5,%c6[ 27]*z** 6,%c7[ 27]*z** 7,
               %c8[ 27]*z** 8,%c9[ 27]*z** 9,%ca[ 27]*z**10,%cb[ 27]*z**11])
      (poly z [%a0[ 27]*z** 0,%a1[ 27]*z** 1,%a2[ 27]*z** 2,%a3[ 27]*z** 3,
               %a4[ 27]*z** 4,%a5[ 27]*z** 5,%a6[ 27]*z** 6,%a7[ 27]*z** 7,
               %a8[ 27]*z** 8,%a9[ 27]*z** 9,%aa[ 27]*z**10,%ab[ 27]*z**11] *
       poly z [%b0[ 27]*z** 0,%b1[ 27]*z** 1,%b2[ 27]*z** 2,%b3[ 27]*z** 3,
               %b4[ 27]*z** 4,%b5[ 27]*z** 5,%b6[ 27]*z** 6,%b7[ 27]*z** 7,
               %b8[ 27]*z** 8,%b9[ 27]*z** 9,%ba[ 27]*z**10,%bb[ 27]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 28]*z** 0,%c1[ 28]*z** 1,%c2[ 28]*z** 2,%c3[ 28]*z** 3,
               %c4[ 28]*z** 4,%c5[ 28]*z** 5,%c6[ 28]*z** 6,%c7[ 28]*z** 7,
               %c8[ 28]*z** 8,%c9[ 28]*z** 9,%ca[ 28]*z**10,%cb[ 28]*z**11])
      (poly z [%a0[ 28]*z** 0,%a1[ 28]*z** 1,%a2[ 28]*z** 2,%a3[ 28]*z** 3,
               %a4[ 28]*z** 4,%a5[ 28]*z** 5,%a6[ 28]*z** 6,%a7[ 28]*z** 7,
               %a8[ 28]*z** 8,%a9[ 28]*z** 9,%aa[ 28]*z**10,%ab[ 28]*z**11] *
       poly z [%b0[ 28]*z** 0,%b1[ 28]*z** 1,%b2[ 28]*z** 2,%b3[ 28]*z** 3,
               %b4[ 28]*z** 4,%b5[ 28]*z** 5,%b6[ 28]*z** 6,%b7[ 28]*z** 7,
               %b8[ 28]*z** 8,%b9[ 28]*z** 9,%ba[ 28]*z**10,%bb[ 28]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 29]*z** 0,%c1[ 29]*z** 1,%c2[ 29]*z** 2,%c3[ 29]*z** 3,
               %c4[ 29]*z** 4,%c5[ 29]*z** 5,%c6[ 29]*z** 6,%c7[ 29]*z** 7,
               %c8[ 29]*z** 8,%c9[ 29]*z** 9,%ca[ 29]*z**10,%cb[ 29]*z**11])
      (poly z [%a0[ 29]*z** 0,%a1[ 29]*z** 1,%a2[ 29]*z** 2,%a3[ 29]*z** 3,
               %a4[ 29]*z** 4,%a5[ 29]*z** 5,%a6[ 29]*z** 6,%a7[ 29]*z** 7,
               %a8[ 29]*z** 8,%a9[ 29]*z** 9,%aa[ 29]*z**10,%ab[ 29]*z**11] *
       poly z [%b0[ 29]*z** 0,%b1[ 29]*z** 1,%b2[ 29]*z** 2,%b3[ 29]*z** 3,
               %b4[ 29]*z** 4,%b5[ 29]*z** 5,%b6[ 29]*z** 6,%b7[ 29]*z** 7,
               %b8[ 29]*z** 8,%b9[ 29]*z** 9,%ba[ 29]*z**10,%bb[ 29]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 30]*z** 0,%c1[ 30]*z** 1,%c2[ 30]*z** 2,%c3[ 30]*z** 3,
               %c4[ 30]*z** 4,%c5[ 30]*z** 5,%c6[ 30]*z** 6,%c7[ 30]*z** 7,
               %c8[ 30]*z** 8,%c9[ 30]*z** 9,%ca[ 30]*z**10,%cb[ 30]*z**11])
      (poly z [%a0[ 30]*z** 0,%a1[ 30]*z** 1,%a2[ 30]*z** 2,%a3[ 30]*z** 3,
               %a4[ 30]*z** 4,%a5[ 30]*z** 5,%a6[ 30]*z** 6,%a7[ 30]*z** 7,
               %a8[ 30]*z** 8,%a9[ 30]*z** 9,%aa[ 30]*z**10,%ab[ 30]*z**11] *
       poly z [%b0[ 30]*z** 0,%b1[ 30]*z** 1,%b2[ 30]*z** 2,%b3[ 30]*z** 3,
               %b4[ 30]*z** 4,%b5[ 30]*z** 5,%b6[ 30]*z** 6,%b7[ 30]*z** 7,
               %b8[ 30]*z** 8,%b9[ 30]*z** 9,%ba[ 30]*z**10,%bb[ 30]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 31]*z** 0,%c1[ 31]*z** 1,%c2[ 31]*z** 2,%c3[ 31]*z** 3,
               %c4[ 31]*z** 4,%c5[ 31]*z** 5,%c6[ 31]*z** 6,%c7[ 31]*z** 7,
               %c8[ 31]*z** 8,%c9[ 31]*z** 9,%ca[ 31]*z**10,%cb[ 31]*z**11])
      (poly z [%a0[ 31]*z** 0,%a1[ 31]*z** 1,%a2[ 31]*z** 2,%a3[ 31]*z** 3,
               %a4[ 31]*z** 4,%a5[ 31]*z** 5,%a6[ 31]*z** 6,%a7[ 31]*z** 7,
               %a8[ 31]*z** 8,%a9[ 31]*z** 9,%aa[ 31]*z**10,%ab[ 31]*z**11] *
       poly z [%b0[ 31]*z** 0,%b1[ 31]*z** 1,%b2[ 31]*z** 2,%b3[ 31]*z** 3,
               %b4[ 31]*z** 4,%b5[ 31]*z** 5,%b6[ 31]*z** 6,%b7[ 31]*z** 7,
               %b8[ 31]*z** 8,%b9[ 31]*z** 9,%ba[ 31]*z**10,%bb[ 31]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 32]*z** 0,%c1[ 32]*z** 1,%c2[ 32]*z** 2,%c3[ 32]*z** 3,
               %c4[ 32]*z** 4,%c5[ 32]*z** 5,%c6[ 32]*z** 6,%c7[ 32]*z** 7,
               %c8[ 32]*z** 8,%c9[ 32]*z** 9,%ca[ 32]*z**10,%cb[ 32]*z**11])
      (poly z [%a0[ 32]*z** 0,%a1[ 32]*z** 1,%a2[ 32]*z** 2,%a3[ 32]*z** 3,
               %a4[ 32]*z** 4,%a5[ 32]*z** 5,%a6[ 32]*z** 6,%a7[ 32]*z** 7,
               %a8[ 32]*z** 8,%a9[ 32]*z** 9,%aa[ 32]*z**10,%ab[ 32]*z**11] *
       poly z [%b0[ 32]*z** 0,%b1[ 32]*z** 1,%b2[ 32]*z** 2,%b3[ 32]*z** 3,
               %b4[ 32]*z** 4,%b5[ 32]*z** 5,%b6[ 32]*z** 6,%b7[ 32]*z** 7,
               %b8[ 32]*z** 8,%b9[ 32]*z** 9,%ba[ 32]*z**10,%bb[ 32]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 33]*z** 0,%c1[ 33]*z** 1,%c2[ 33]*z** 2,%c3[ 33]*z** 3,
               %c4[ 33]*z** 4,%c5[ 33]*z** 5,%c6[ 33]*z** 6,%c7[ 33]*z** 7,
               %c8[ 33]*z** 8,%c9[ 33]*z** 9,%ca[ 33]*z**10,%cb[ 33]*z**11])
      (poly z [%a0[ 33]*z** 0,%a1[ 33]*z** 1,%a2[ 33]*z** 2,%a3[ 33]*z** 3,
               %a4[ 33]*z** 4,%a5[ 33]*z** 5,%a6[ 33]*z** 6,%a7[ 33]*z** 7,
               %a8[ 33]*z** 8,%a9[ 33]*z** 9,%aa[ 33]*z**10,%ab[ 33]*z**11] *
       poly z [%b0[ 33]*z** 0,%b1[ 33]*z** 1,%b2[ 33]*z** 2,%b3[ 33]*z** 3,
               %b4[ 33]*z** 4,%b5[ 33]*z** 5,%b6[ 33]*z** 6,%b7[ 33]*z** 7,
               %b8[ 33]*z** 8,%b9[ 33]*z** 9,%ba[ 33]*z**10,%bb[ 33]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 34]*z** 0,%c1[ 34]*z** 1,%c2[ 34]*z** 2,%c3[ 34]*z** 3,
               %c4[ 34]*z** 4,%c5[ 34]*z** 5,%c6[ 34]*z** 6,%c7[ 34]*z** 7,
               %c8[ 34]*z** 8,%c9[ 34]*z** 9,%ca[ 34]*z**10,%cb[ 34]*z**11])
      (poly z [%a0[ 34]*z** 0,%a1[ 34]*z** 1,%a2[ 34]*z** 2,%a3[ 34]*z** 3,
               %a4[ 34]*z** 4,%a5[ 34]*z** 5,%a6[ 34]*z** 6,%a7[ 34]*z** 7,
               %a8[ 34]*z** 8,%a9[ 34]*z** 9,%aa[ 34]*z**10,%ab[ 34]*z**11] *
       poly z [%b0[ 34]*z** 0,%b1[ 34]*z** 1,%b2[ 34]*z** 2,%b3[ 34]*z** 3,
               %b4[ 34]*z** 4,%b5[ 34]*z** 5,%b6[ 34]*z** 6,%b7[ 34]*z** 7,
               %b8[ 34]*z** 8,%b9[ 34]*z** 9,%ba[ 34]*z**10,%bb[ 34]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 35]*z** 0,%c1[ 35]*z** 1,%c2[ 35]*z** 2,%c3[ 35]*z** 3,
               %c4[ 35]*z** 4,%c5[ 35]*z** 5,%c6[ 35]*z** 6,%c7[ 35]*z** 7,
               %c8[ 35]*z** 8,%c9[ 35]*z** 9,%ca[ 35]*z**10,%cb[ 35]*z**11])
      (poly z [%a0[ 35]*z** 0,%a1[ 35]*z** 1,%a2[ 35]*z** 2,%a3[ 35]*z** 3,
               %a4[ 35]*z** 4,%a5[ 35]*z** 5,%a6[ 35]*z** 6,%a7[ 35]*z** 7,
               %a8[ 35]*z** 8,%a9[ 35]*z** 9,%aa[ 35]*z**10,%ab[ 35]*z**11] *
       poly z [%b0[ 35]*z** 0,%b1[ 35]*z** 1,%b2[ 35]*z** 2,%b3[ 35]*z** 3,
               %b4[ 35]*z** 4,%b5[ 35]*z** 5,%b6[ 35]*z** 6,%b7[ 35]*z** 7,
               %b8[ 35]*z** 8,%b9[ 35]*z** 9,%ba[ 35]*z**10,%bb[ 35]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 36]*z** 0,%c1[ 36]*z** 1,%c2[ 36]*z** 2,%c3[ 36]*z** 3,
               %c4[ 36]*z** 4,%c5[ 36]*z** 5,%c6[ 36]*z** 6,%c7[ 36]*z** 7,
               %c8[ 36]*z** 8,%c9[ 36]*z** 9,%ca[ 36]*z**10,%cb[ 36]*z**11])
      (poly z [%a0[ 36]*z** 0,%a1[ 36]*z** 1,%a2[ 36]*z** 2,%a3[ 36]*z** 3,
               %a4[ 36]*z** 4,%a5[ 36]*z** 5,%a6[ 36]*z** 6,%a7[ 36]*z** 7,
               %a8[ 36]*z** 8,%a9[ 36]*z** 9,%aa[ 36]*z**10,%ab[ 36]*z**11] *
       poly z [%b0[ 36]*z** 0,%b1[ 36]*z** 1,%b2[ 36]*z** 2,%b3[ 36]*z** 3,
               %b4[ 36]*z** 4,%b5[ 36]*z** 5,%b6[ 36]*z** 6,%b7[ 36]*z** 7,
               %b8[ 36]*z** 8,%b9[ 36]*z** 9,%ba[ 36]*z**10,%bb[ 36]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 37]*z** 0,%c1[ 37]*z** 1,%c2[ 37]*z** 2,%c3[ 37]*z** 3,
               %c4[ 37]*z** 4,%c5[ 37]*z** 5,%c6[ 37]*z** 6,%c7[ 37]*z** 7,
               %c8[ 37]*z** 8,%c9[ 37]*z** 9,%ca[ 37]*z**10,%cb[ 37]*z**11])
      (poly z [%a0[ 37]*z** 0,%a1[ 37]*z** 1,%a2[ 37]*z** 2,%a3[ 37]*z** 3,
               %a4[ 37]*z** 4,%a5[ 37]*z** 5,%a6[ 37]*z** 6,%a7[ 37]*z** 7,
               %a8[ 37]*z** 8,%a9[ 37]*z** 9,%aa[ 37]*z**10,%ab[ 37]*z**11] *
       poly z [%b0[ 37]*z** 0,%b1[ 37]*z** 1,%b2[ 37]*z** 2,%b3[ 37]*z** 3,
               %b4[ 37]*z** 4,%b5[ 37]*z** 5,%b6[ 37]*z** 6,%b7[ 37]*z** 7,
               %b8[ 37]*z** 8,%b9[ 37]*z** 9,%ba[ 37]*z**10,%bb[ 37]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 38]*z** 0,%c1[ 38]*z** 1,%c2[ 38]*z** 2,%c3[ 38]*z** 3,
               %c4[ 38]*z** 4,%c5[ 38]*z** 5,%c6[ 38]*z** 6,%c7[ 38]*z** 7,
               %c8[ 38]*z** 8,%c9[ 38]*z** 9,%ca[ 38]*z**10,%cb[ 38]*z**11])
      (poly z [%a0[ 38]*z** 0,%a1[ 38]*z** 1,%a2[ 38]*z** 2,%a3[ 38]*z** 3,
               %a4[ 38]*z** 4,%a5[ 38]*z** 5,%a6[ 38]*z** 6,%a7[ 38]*z** 7,
               %a8[ 38]*z** 8,%a9[ 38]*z** 9,%aa[ 38]*z**10,%ab[ 38]*z**11] *
       poly z [%b0[ 38]*z** 0,%b1[ 38]*z** 1,%b2[ 38]*z** 2,%b3[ 38]*z** 3,
               %b4[ 38]*z** 4,%b5[ 38]*z** 5,%b6[ 38]*z** 6,%b7[ 38]*z** 7,
               %b8[ 38]*z** 8,%b9[ 38]*z** 9,%ba[ 38]*z**10,%bb[ 38]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 39]*z** 0,%c1[ 39]*z** 1,%c2[ 39]*z** 2,%c3[ 39]*z** 3,
               %c4[ 39]*z** 4,%c5[ 39]*z** 5,%c6[ 39]*z** 6,%c7[ 39]*z** 7,
               %c8[ 39]*z** 8,%c9[ 39]*z** 9,%ca[ 39]*z**10,%cb[ 39]*z**11])
      (poly z [%a0[ 39]*z** 0,%a1[ 39]*z** 1,%a2[ 39]*z** 2,%a3[ 39]*z** 3,
               %a4[ 39]*z** 4,%a5[ 39]*z** 5,%a6[ 39]*z** 6,%a7[ 39]*z** 7,
               %a8[ 39]*z** 8,%a9[ 39]*z** 9,%aa[ 39]*z**10,%ab[ 39]*z**11] *
       poly z [%b0[ 39]*z** 0,%b1[ 39]*z** 1,%b2[ 39]*z** 2,%b3[ 39]*z** 3,
               %b4[ 39]*z** 4,%b5[ 39]*z** 5,%b6[ 39]*z** 6,%b7[ 39]*z** 7,
               %b8[ 39]*z** 8,%b9[ 39]*z** 9,%ba[ 39]*z**10,%bb[ 39]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 40]*z** 0,%c1[ 40]*z** 1,%c2[ 40]*z** 2,%c3[ 40]*z** 3,
               %c4[ 40]*z** 4,%c5[ 40]*z** 5,%c6[ 40]*z** 6,%c7[ 40]*z** 7,
               %c8[ 40]*z** 8,%c9[ 40]*z** 9,%ca[ 40]*z**10,%cb[ 40]*z**11])
      (poly z [%a0[ 40]*z** 0,%a1[ 40]*z** 1,%a2[ 40]*z** 2,%a3[ 40]*z** 3,
               %a4[ 40]*z** 4,%a5[ 40]*z** 5,%a6[ 40]*z** 6,%a7[ 40]*z** 7,
               %a8[ 40]*z** 8,%a9[ 40]*z** 9,%aa[ 40]*z**10,%ab[ 40]*z**11] *
       poly z [%b0[ 40]*z** 0,%b1[ 40]*z** 1,%b2[ 40]*z** 2,%b3[ 40]*z** 3,
               %b4[ 40]*z** 4,%b5[ 40]*z** 5,%b6[ 40]*z** 6,%b7[ 40]*z** 7,
               %b8[ 40]*z** 8,%b9[ 40]*z** 9,%ba[ 40]*z**10,%bb[ 40]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 41]*z** 0,%c1[ 41]*z** 1,%c2[ 41]*z** 2,%c3[ 41]*z** 3,
               %c4[ 41]*z** 4,%c5[ 41]*z** 5,%c6[ 41]*z** 6,%c7[ 41]*z** 7,
               %c8[ 41]*z** 8,%c9[ 41]*z** 9,%ca[ 41]*z**10,%cb[ 41]*z**11])
      (poly z [%a0[ 41]*z** 0,%a1[ 41]*z** 1,%a2[ 41]*z** 2,%a3[ 41]*z** 3,
               %a4[ 41]*z** 4,%a5[ 41]*z** 5,%a6[ 41]*z** 6,%a7[ 41]*z** 7,
               %a8[ 41]*z** 8,%a9[ 41]*z** 9,%aa[ 41]*z**10,%ab[ 41]*z**11] *
       poly z [%b0[ 41]*z** 0,%b1[ 41]*z** 1,%b2[ 41]*z** 2,%b3[ 41]*z** 3,
               %b4[ 41]*z** 4,%b5[ 41]*z** 5,%b6[ 41]*z** 6,%b7[ 41]*z** 7,
               %b8[ 41]*z** 8,%b9[ 41]*z** 9,%ba[ 41]*z**10,%bb[ 41]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 42]*z** 0,%c1[ 42]*z** 1,%c2[ 42]*z** 2,%c3[ 42]*z** 3,
               %c4[ 42]*z** 4,%c5[ 42]*z** 5,%c6[ 42]*z** 6,%c7[ 42]*z** 7,
               %c8[ 42]*z** 8,%c9[ 42]*z** 9,%ca[ 42]*z**10,%cb[ 42]*z**11])
      (poly z [%a0[ 42]*z** 0,%a1[ 42]*z** 1,%a2[ 42]*z** 2,%a3[ 42]*z** 3,
               %a4[ 42]*z** 4,%a5[ 42]*z** 5,%a6[ 42]*z** 6,%a7[ 42]*z** 7,
               %a8[ 42]*z** 8,%a9[ 42]*z** 9,%aa[ 42]*z**10,%ab[ 42]*z**11] *
       poly z [%b0[ 42]*z** 0,%b1[ 42]*z** 1,%b2[ 42]*z** 2,%b3[ 42]*z** 3,
               %b4[ 42]*z** 4,%b5[ 42]*z** 5,%b6[ 42]*z** 6,%b7[ 42]*z** 7,
               %b8[ 42]*z** 8,%b9[ 42]*z** 9,%ba[ 42]*z**10,%bb[ 42]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 43]*z** 0,%c1[ 43]*z** 1,%c2[ 43]*z** 2,%c3[ 43]*z** 3,
               %c4[ 43]*z** 4,%c5[ 43]*z** 5,%c6[ 43]*z** 6,%c7[ 43]*z** 7,
               %c8[ 43]*z** 8,%c9[ 43]*z** 9,%ca[ 43]*z**10,%cb[ 43]*z**11])
      (poly z [%a0[ 43]*z** 0,%a1[ 43]*z** 1,%a2[ 43]*z** 2,%a3[ 43]*z** 3,
               %a4[ 43]*z** 4,%a5[ 43]*z** 5,%a6[ 43]*z** 6,%a7[ 43]*z** 7,
               %a8[ 43]*z** 8,%a9[ 43]*z** 9,%aa[ 43]*z**10,%ab[ 43]*z**11] *
       poly z [%b0[ 43]*z** 0,%b1[ 43]*z** 1,%b2[ 43]*z** 2,%b3[ 43]*z** 3,
               %b4[ 43]*z** 4,%b5[ 43]*z** 5,%b6[ 43]*z** 6,%b7[ 43]*z** 7,
               %b8[ 43]*z** 8,%b9[ 43]*z** 9,%ba[ 43]*z**10,%bb[ 43]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 44]*z** 0,%c1[ 44]*z** 1,%c2[ 44]*z** 2,%c3[ 44]*z** 3,
               %c4[ 44]*z** 4,%c5[ 44]*z** 5,%c6[ 44]*z** 6,%c7[ 44]*z** 7,
               %c8[ 44]*z** 8,%c9[ 44]*z** 9,%ca[ 44]*z**10,%cb[ 44]*z**11])
      (poly z [%a0[ 44]*z** 0,%a1[ 44]*z** 1,%a2[ 44]*z** 2,%a3[ 44]*z** 3,
               %a4[ 44]*z** 4,%a5[ 44]*z** 5,%a6[ 44]*z** 6,%a7[ 44]*z** 7,
               %a8[ 44]*z** 8,%a9[ 44]*z** 9,%aa[ 44]*z**10,%ab[ 44]*z**11] *
       poly z [%b0[ 44]*z** 0,%b1[ 44]*z** 1,%b2[ 44]*z** 2,%b3[ 44]*z** 3,
               %b4[ 44]*z** 4,%b5[ 44]*z** 5,%b6[ 44]*z** 6,%b7[ 44]*z** 7,
               %b8[ 44]*z** 8,%b9[ 44]*z** 9,%ba[ 44]*z**10,%bb[ 44]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 45]*z** 0,%c1[ 45]*z** 1,%c2[ 45]*z** 2,%c3[ 45]*z** 3,
               %c4[ 45]*z** 4,%c5[ 45]*z** 5,%c6[ 45]*z** 6,%c7[ 45]*z** 7,
               %c8[ 45]*z** 8,%c9[ 45]*z** 9,%ca[ 45]*z**10,%cb[ 45]*z**11])
      (poly z [%a0[ 45]*z** 0,%a1[ 45]*z** 1,%a2[ 45]*z** 2,%a3[ 45]*z** 3,
               %a4[ 45]*z** 4,%a5[ 45]*z** 5,%a6[ 45]*z** 6,%a7[ 45]*z** 7,
               %a8[ 45]*z** 8,%a9[ 45]*z** 9,%aa[ 45]*z**10,%ab[ 45]*z**11] *
       poly z [%b0[ 45]*z** 0,%b1[ 45]*z** 1,%b2[ 45]*z** 2,%b3[ 45]*z** 3,
               %b4[ 45]*z** 4,%b5[ 45]*z** 5,%b6[ 45]*z** 6,%b7[ 45]*z** 7,
               %b8[ 45]*z** 8,%b9[ 45]*z** 9,%ba[ 45]*z**10,%bb[ 45]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 46]*z** 0,%c1[ 46]*z** 1,%c2[ 46]*z** 2,%c3[ 46]*z** 3,
               %c4[ 46]*z** 4,%c5[ 46]*z** 5,%c6[ 46]*z** 6,%c7[ 46]*z** 7,
               %c8[ 46]*z** 8,%c9[ 46]*z** 9,%ca[ 46]*z**10,%cb[ 46]*z**11])
      (poly z [%a0[ 46]*z** 0,%a1[ 46]*z** 1,%a2[ 46]*z** 2,%a3[ 46]*z** 3,
               %a4[ 46]*z** 4,%a5[ 46]*z** 5,%a6[ 46]*z** 6,%a7[ 46]*z** 7,
               %a8[ 46]*z** 8,%a9[ 46]*z** 9,%aa[ 46]*z**10,%ab[ 46]*z**11] *
       poly z [%b0[ 46]*z** 0,%b1[ 46]*z** 1,%b2[ 46]*z** 2,%b3[ 46]*z** 3,
               %b4[ 46]*z** 4,%b5[ 46]*z** 5,%b6[ 46]*z** 6,%b7[ 46]*z** 7,
               %b8[ 46]*z** 8,%b9[ 46]*z** 9,%ba[ 46]*z**10,%bb[ 46]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 47]*z** 0,%c1[ 47]*z** 1,%c2[ 47]*z** 2,%c3[ 47]*z** 3,
               %c4[ 47]*z** 4,%c5[ 47]*z** 5,%c6[ 47]*z** 6,%c7[ 47]*z** 7,
               %c8[ 47]*z** 8,%c9[ 47]*z** 9,%ca[ 47]*z**10,%cb[ 47]*z**11])
      (poly z [%a0[ 47]*z** 0,%a1[ 47]*z** 1,%a2[ 47]*z** 2,%a3[ 47]*z** 3,
               %a4[ 47]*z** 4,%a5[ 47]*z** 5,%a6[ 47]*z** 6,%a7[ 47]*z** 7,
               %a8[ 47]*z** 8,%a9[ 47]*z** 9,%aa[ 47]*z**10,%ab[ 47]*z**11] *
       poly z [%b0[ 47]*z** 0,%b1[ 47]*z** 1,%b2[ 47]*z** 2,%b3[ 47]*z** 3,
               %b4[ 47]*z** 4,%b5[ 47]*z** 5,%b6[ 47]*z** 6,%b7[ 47]*z** 7,
               %b8[ 47]*z** 8,%b9[ 47]*z** 9,%ba[ 47]*z**10,%bb[ 47]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 48]*z** 0,%c1[ 48]*z** 1,%c2[ 48]*z** 2,%c3[ 48]*z** 3,
               %c4[ 48]*z** 4,%c5[ 48]*z** 5,%c6[ 48]*z** 6,%c7[ 48]*z** 7,
               %c8[ 48]*z** 8,%c9[ 48]*z** 9,%ca[ 48]*z**10,%cb[ 48]*z**11])
      (poly z [%a0[ 48]*z** 0,%a1[ 48]*z** 1,%a2[ 48]*z** 2,%a3[ 48]*z** 3,
               %a4[ 48]*z** 4,%a5[ 48]*z** 5,%a6[ 48]*z** 6,%a7[ 48]*z** 7,
               %a8[ 48]*z** 8,%a9[ 48]*z** 9,%aa[ 48]*z**10,%ab[ 48]*z**11] *
       poly z [%b0[ 48]*z** 0,%b1[ 48]*z** 1,%b2[ 48]*z** 2,%b3[ 48]*z** 3,
               %b4[ 48]*z** 4,%b5[ 48]*z** 5,%b6[ 48]*z** 6,%b7[ 48]*z** 7,
               %b8[ 48]*z** 8,%b9[ 48]*z** 9,%ba[ 48]*z**10,%bb[ 48]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 49]*z** 0,%c1[ 49]*z** 1,%c2[ 49]*z** 2,%c3[ 49]*z** 3,
               %c4[ 49]*z** 4,%c5[ 49]*z** 5,%c6[ 49]*z** 6,%c7[ 49]*z** 7,
               %c8[ 49]*z** 8,%c9[ 49]*z** 9,%ca[ 49]*z**10,%cb[ 49]*z**11])
      (poly z [%a0[ 49]*z** 0,%a1[ 49]*z** 1,%a2[ 49]*z** 2,%a3[ 49]*z** 3,
               %a4[ 49]*z** 4,%a5[ 49]*z** 5,%a6[ 49]*z** 6,%a7[ 49]*z** 7,
               %a8[ 49]*z** 8,%a9[ 49]*z** 9,%aa[ 49]*z**10,%ab[ 49]*z**11] *
       poly z [%b0[ 49]*z** 0,%b1[ 49]*z** 1,%b2[ 49]*z** 2,%b3[ 49]*z** 3,
               %b4[ 49]*z** 4,%b5[ 49]*z** 5,%b6[ 49]*z** 6,%b7[ 49]*z** 7,
               %b8[ 49]*z** 8,%b9[ 49]*z** 9,%ba[ 49]*z**10,%bb[ 49]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 50]*z** 0,%c1[ 50]*z** 1,%c2[ 50]*z** 2,%c3[ 50]*z** 3,
               %c4[ 50]*z** 4,%c5[ 50]*z** 5,%c6[ 50]*z** 6,%c7[ 50]*z** 7,
               %c8[ 50]*z** 8,%c9[ 50]*z** 9,%ca[ 50]*z**10,%cb[ 50]*z**11])
      (poly z [%a0[ 50]*z** 0,%a1[ 50]*z** 1,%a2[ 50]*z** 2,%a3[ 50]*z** 3,
               %a4[ 50]*z** 4,%a5[ 50]*z** 5,%a6[ 50]*z** 6,%a7[ 50]*z** 7,
               %a8[ 50]*z** 8,%a9[ 50]*z** 9,%aa[ 50]*z**10,%ab[ 50]*z**11] *
       poly z [%b0[ 50]*z** 0,%b1[ 50]*z** 1,%b2[ 50]*z** 2,%b3[ 50]*z** 3,
               %b4[ 50]*z** 4,%b5[ 50]*z** 5,%b6[ 50]*z** 6,%b7[ 50]*z** 7,
               %b8[ 50]*z** 8,%b9[ 50]*z** 9,%ba[ 50]*z**10,%bb[ 50]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 51]*z** 0,%c1[ 51]*z** 1,%c2[ 51]*z** 2,%c3[ 51]*z** 3,
               %c4[ 51]*z** 4,%c5[ 51]*z** 5,%c6[ 51]*z** 6,%c7[ 51]*z** 7,
               %c8[ 51]*z** 8,%c9[ 51]*z** 9,%ca[ 51]*z**10,%cb[ 51]*z**11])
      (poly z [%a0[ 51]*z** 0,%a1[ 51]*z** 1,%a2[ 51]*z** 2,%a3[ 51]*z** 3,
               %a4[ 51]*z** 4,%a5[ 51]*z** 5,%a6[ 51]*z** 6,%a7[ 51]*z** 7,
               %a8[ 51]*z** 8,%a9[ 51]*z** 9,%aa[ 51]*z**10,%ab[ 51]*z**11] *
       poly z [%b0[ 51]*z** 0,%b1[ 51]*z** 1,%b2[ 51]*z** 2,%b3[ 51]*z** 3,
               %b4[ 51]*z** 4,%b5[ 51]*z** 5,%b6[ 51]*z** 6,%b7[ 51]*z** 7,
               %b8[ 51]*z** 8,%b9[ 51]*z** 9,%ba[ 51]*z**10,%bb[ 51]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 52]*z** 0,%c1[ 52]*z** 1,%c2[ 52]*z** 2,%c3[ 52]*z** 3,
               %c4[ 52]*z** 4,%c5[ 52]*z** 5,%c6[ 52]*z** 6,%c7[ 52]*z** 7,
               %c8[ 52]*z** 8,%c9[ 52]*z** 9,%ca[ 52]*z**10,%cb[ 52]*z**11])
      (poly z [%a0[ 52]*z** 0,%a1[ 52]*z** 1,%a2[ 52]*z** 2,%a3[ 52]*z** 3,
               %a4[ 52]*z** 4,%a5[ 52]*z** 5,%a6[ 52]*z** 6,%a7[ 52]*z** 7,
               %a8[ 52]*z** 8,%a9[ 52]*z** 9,%aa[ 52]*z**10,%ab[ 52]*z**11] *
       poly z [%b0[ 52]*z** 0,%b1[ 52]*z** 1,%b2[ 52]*z** 2,%b3[ 52]*z** 3,
               %b4[ 52]*z** 4,%b5[ 52]*z** 5,%b6[ 52]*z** 6,%b7[ 52]*z** 7,
               %b8[ 52]*z** 8,%b9[ 52]*z** 9,%ba[ 52]*z**10,%bb[ 52]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 53]*z** 0,%c1[ 53]*z** 1,%c2[ 53]*z** 2,%c3[ 53]*z** 3,
               %c4[ 53]*z** 4,%c5[ 53]*z** 5,%c6[ 53]*z** 6,%c7[ 53]*z** 7,
               %c8[ 53]*z** 8,%c9[ 53]*z** 9,%ca[ 53]*z**10,%cb[ 53]*z**11])
      (poly z [%a0[ 53]*z** 0,%a1[ 53]*z** 1,%a2[ 53]*z** 2,%a3[ 53]*z** 3,
               %a4[ 53]*z** 4,%a5[ 53]*z** 5,%a6[ 53]*z** 6,%a7[ 53]*z** 7,
               %a8[ 53]*z** 8,%a9[ 53]*z** 9,%aa[ 53]*z**10,%ab[ 53]*z**11] *
       poly z [%b0[ 53]*z** 0,%b1[ 53]*z** 1,%b2[ 53]*z** 2,%b3[ 53]*z** 3,
               %b4[ 53]*z** 4,%b5[ 53]*z** 5,%b6[ 53]*z** 6,%b7[ 53]*z** 7,
               %b8[ 53]*z** 8,%b9[ 53]*z** 9,%ba[ 53]*z**10,%bb[ 53]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 54]*z** 0,%c1[ 54]*z** 1,%c2[ 54]*z** 2,%c3[ 54]*z** 3,
               %c4[ 54]*z** 4,%c5[ 54]*z** 5,%c6[ 54]*z** 6,%c7[ 54]*z** 7,
               %c8[ 54]*z** 8,%c9[ 54]*z** 9,%ca[ 54]*z**10,%cb[ 54]*z**11])
      (poly z [%a0[ 54]*z** 0,%a1[ 54]*z** 1,%a2[ 54]*z** 2,%a3[ 54]*z** 3,
               %a4[ 54]*z** 4,%a5[ 54]*z** 5,%a6[ 54]*z** 6,%a7[ 54]*z** 7,
               %a8[ 54]*z** 8,%a9[ 54]*z** 9,%aa[ 54]*z**10,%ab[ 54]*z**11] *
       poly z [%b0[ 54]*z** 0,%b1[ 54]*z** 1,%b2[ 54]*z** 2,%b3[ 54]*z** 3,
               %b4[ 54]*z** 4,%b5[ 54]*z** 5,%b6[ 54]*z** 6,%b7[ 54]*z** 7,
               %b8[ 54]*z** 8,%b9[ 54]*z** 9,%ba[ 54]*z**10,%bb[ 54]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 55]*z** 0,%c1[ 55]*z** 1,%c2[ 55]*z** 2,%c3[ 55]*z** 3,
               %c4[ 55]*z** 4,%c5[ 55]*z** 5,%c6[ 55]*z** 6,%c7[ 55]*z** 7,
               %c8[ 55]*z** 8,%c9[ 55]*z** 9,%ca[ 55]*z**10,%cb[ 55]*z**11])
      (poly z [%a0[ 55]*z** 0,%a1[ 55]*z** 1,%a2[ 55]*z** 2,%a3[ 55]*z** 3,
               %a4[ 55]*z** 4,%a5[ 55]*z** 5,%a6[ 55]*z** 6,%a7[ 55]*z** 7,
               %a8[ 55]*z** 8,%a9[ 55]*z** 9,%aa[ 55]*z**10,%ab[ 55]*z**11] *
       poly z [%b0[ 55]*z** 0,%b1[ 55]*z** 1,%b2[ 55]*z** 2,%b3[ 55]*z** 3,
               %b4[ 55]*z** 4,%b5[ 55]*z** 5,%b6[ 55]*z** 6,%b7[ 55]*z** 7,
               %b8[ 55]*z** 8,%b9[ 55]*z** 9,%ba[ 55]*z**10,%bb[ 55]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 56]*z** 0,%c1[ 56]*z** 1,%c2[ 56]*z** 2,%c3[ 56]*z** 3,
               %c4[ 56]*z** 4,%c5[ 56]*z** 5,%c6[ 56]*z** 6,%c7[ 56]*z** 7,
               %c8[ 56]*z** 8,%c9[ 56]*z** 9,%ca[ 56]*z**10,%cb[ 56]*z**11])
      (poly z [%a0[ 56]*z** 0,%a1[ 56]*z** 1,%a2[ 56]*z** 2,%a3[ 56]*z** 3,
               %a4[ 56]*z** 4,%a5[ 56]*z** 5,%a6[ 56]*z** 6,%a7[ 56]*z** 7,
               %a8[ 56]*z** 8,%a9[ 56]*z** 9,%aa[ 56]*z**10,%ab[ 56]*z**11] *
       poly z [%b0[ 56]*z** 0,%b1[ 56]*z** 1,%b2[ 56]*z** 2,%b3[ 56]*z** 3,
               %b4[ 56]*z** 4,%b5[ 56]*z** 5,%b6[ 56]*z** 6,%b7[ 56]*z** 7,
               %b8[ 56]*z** 8,%b9[ 56]*z** 9,%ba[ 56]*z**10,%bb[ 56]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 57]*z** 0,%c1[ 57]*z** 1,%c2[ 57]*z** 2,%c3[ 57]*z** 3,
               %c4[ 57]*z** 4,%c5[ 57]*z** 5,%c6[ 57]*z** 6,%c7[ 57]*z** 7,
               %c8[ 57]*z** 8,%c9[ 57]*z** 9,%ca[ 57]*z**10,%cb[ 57]*z**11])
      (poly z [%a0[ 57]*z** 0,%a1[ 57]*z** 1,%a2[ 57]*z** 2,%a3[ 57]*z** 3,
               %a4[ 57]*z** 4,%a5[ 57]*z** 5,%a6[ 57]*z** 6,%a7[ 57]*z** 7,
               %a8[ 57]*z** 8,%a9[ 57]*z** 9,%aa[ 57]*z**10,%ab[ 57]*z**11] *
       poly z [%b0[ 57]*z** 0,%b1[ 57]*z** 1,%b2[ 57]*z** 2,%b3[ 57]*z** 3,
               %b4[ 57]*z** 4,%b5[ 57]*z** 5,%b6[ 57]*z** 6,%b7[ 57]*z** 7,
               %b8[ 57]*z** 8,%b9[ 57]*z** 9,%ba[ 57]*z**10,%bb[ 57]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 58]*z** 0,%c1[ 58]*z** 1,%c2[ 58]*z** 2,%c3[ 58]*z** 3,
               %c4[ 58]*z** 4,%c5[ 58]*z** 5,%c6[ 58]*z** 6,%c7[ 58]*z** 7,
               %c8[ 58]*z** 8,%c9[ 58]*z** 9,%ca[ 58]*z**10,%cb[ 58]*z**11])
      (poly z [%a0[ 58]*z** 0,%a1[ 58]*z** 1,%a2[ 58]*z** 2,%a3[ 58]*z** 3,
               %a4[ 58]*z** 4,%a5[ 58]*z** 5,%a6[ 58]*z** 6,%a7[ 58]*z** 7,
               %a8[ 58]*z** 8,%a9[ 58]*z** 9,%aa[ 58]*z**10,%ab[ 58]*z**11] *
       poly z [%b0[ 58]*z** 0,%b1[ 58]*z** 1,%b2[ 58]*z** 2,%b3[ 58]*z** 3,
               %b4[ 58]*z** 4,%b5[ 58]*z** 5,%b6[ 58]*z** 6,%b7[ 58]*z** 7,
               %b8[ 58]*z** 8,%b9[ 58]*z** 9,%ba[ 58]*z**10,%bb[ 58]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 59]*z** 0,%c1[ 59]*z** 1,%c2[ 59]*z** 2,%c3[ 59]*z** 3,
               %c4[ 59]*z** 4,%c5[ 59]*z** 5,%c6[ 59]*z** 6,%c7[ 59]*z** 7,
               %c8[ 59]*z** 8,%c9[ 59]*z** 9,%ca[ 59]*z**10,%cb[ 59]*z**11])
      (poly z [%a0[ 59]*z** 0,%a1[ 59]*z** 1,%a2[ 59]*z** 2,%a3[ 59]*z** 3,
               %a4[ 59]*z** 4,%a5[ 59]*z** 5,%a6[ 59]*z** 6,%a7[ 59]*z** 7,
               %a8[ 59]*z** 8,%a9[ 59]*z** 9,%aa[ 59]*z**10,%ab[ 59]*z**11] *
       poly z [%b0[ 59]*z** 0,%b1[ 59]*z** 1,%b2[ 59]*z** 2,%b3[ 59]*z** 3,
               %b4[ 59]*z** 4,%b5[ 59]*z** 5,%b6[ 59]*z** 6,%b7[ 59]*z** 7,
               %b8[ 59]*z** 8,%b9[ 59]*z** 9,%ba[ 59]*z**10,%bb[ 59]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 60]*z** 0,%c1[ 60]*z** 1,%c2[ 60]*z** 2,%c3[ 60]*z** 3,
               %c4[ 60]*z** 4,%c5[ 60]*z** 5,%c6[ 60]*z** 6,%c7[ 60]*z** 7,
               %c8[ 60]*z** 8,%c9[ 60]*z** 9,%ca[ 60]*z**10,%cb[ 60]*z**11])
      (poly z [%a0[ 60]*z** 0,%a1[ 60]*z** 1,%a2[ 60]*z** 2,%a3[ 60]*z** 3,
               %a4[ 60]*z** 4,%a5[ 60]*z** 5,%a6[ 60]*z** 6,%a7[ 60]*z** 7,
               %a8[ 60]*z** 8,%a9[ 60]*z** 9,%aa[ 60]*z**10,%ab[ 60]*z**11] *
       poly z [%b0[ 60]*z** 0,%b1[ 60]*z** 1,%b2[ 60]*z** 2,%b3[ 60]*z** 3,
               %b4[ 60]*z** 4,%b5[ 60]*z** 5,%b6[ 60]*z** 6,%b7[ 60]*z** 7,
               %b8[ 60]*z** 8,%b9[ 60]*z** 9,%ba[ 60]*z**10,%bb[ 60]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 61]*z** 0,%c1[ 61]*z** 1,%c2[ 61]*z** 2,%c3[ 61]*z** 3,
               %c4[ 61]*z** 4,%c5[ 61]*z** 5,%c6[ 61]*z** 6,%c7[ 61]*z** 7,
               %c8[ 61]*z** 8,%c9[ 61]*z** 9,%ca[ 61]*z**10,%cb[ 61]*z**11])
      (poly z [%a0[ 61]*z** 0,%a1[ 61]*z** 1,%a2[ 61]*z** 2,%a3[ 61]*z** 3,
               %a4[ 61]*z** 4,%a5[ 61]*z** 5,%a6[ 61]*z** 6,%a7[ 61]*z** 7,
               %a8[ 61]*z** 8,%a9[ 61]*z** 9,%aa[ 61]*z**10,%ab[ 61]*z**11] *
       poly z [%b0[ 61]*z** 0,%b1[ 61]*z** 1,%b2[ 61]*z** 2,%b3[ 61]*z** 3,
               %b4[ 61]*z** 4,%b5[ 61]*z** 5,%b6[ 61]*z** 6,%b7[ 61]*z** 7,
               %b8[ 61]*z** 8,%b9[ 61]*z** 9,%ba[ 61]*z**10,%bb[ 61]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 62]*z** 0,%c1[ 62]*z** 1,%c2[ 62]*z** 2,%c3[ 62]*z** 3,
               %c4[ 62]*z** 4,%c5[ 62]*z** 5,%c6[ 62]*z** 6,%c7[ 62]*z** 7,
               %c8[ 62]*z** 8,%c9[ 62]*z** 9,%ca[ 62]*z**10,%cb[ 62]*z**11])
      (poly z [%a0[ 62]*z** 0,%a1[ 62]*z** 1,%a2[ 62]*z** 2,%a3[ 62]*z** 3,
               %a4[ 62]*z** 4,%a5[ 62]*z** 5,%a6[ 62]*z** 6,%a7[ 62]*z** 7,
               %a8[ 62]*z** 8,%a9[ 62]*z** 9,%aa[ 62]*z**10,%ab[ 62]*z**11] *
       poly z [%b0[ 62]*z** 0,%b1[ 62]*z** 1,%b2[ 62]*z** 2,%b3[ 62]*z** 3,
               %b4[ 62]*z** 4,%b5[ 62]*z** 5,%b6[ 62]*z** 6,%b7[ 62]*z** 7,
               %b8[ 62]*z** 8,%b9[ 62]*z** 9,%ba[ 62]*z**10,%bb[ 62]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 63]*z** 0,%c1[ 63]*z** 1,%c2[ 63]*z** 2,%c3[ 63]*z** 3,
               %c4[ 63]*z** 4,%c5[ 63]*z** 5,%c6[ 63]*z** 6,%c7[ 63]*z** 7,
               %c8[ 63]*z** 8,%c9[ 63]*z** 9,%ca[ 63]*z**10,%cb[ 63]*z**11])
      (poly z [%a0[ 63]*z** 0,%a1[ 63]*z** 1,%a2[ 63]*z** 2,%a3[ 63]*z** 3,
               %a4[ 63]*z** 4,%a5[ 63]*z** 5,%a6[ 63]*z** 6,%a7[ 63]*z** 7,
               %a8[ 63]*z** 8,%a9[ 63]*z** 9,%aa[ 63]*z**10,%ab[ 63]*z**11] *
       poly z [%b0[ 63]*z** 0,%b1[ 63]*z** 1,%b2[ 63]*z** 2,%b3[ 63]*z** 3,
               %b4[ 63]*z** 4,%b5[ 63]*z** 5,%b6[ 63]*z** 6,%b7[ 63]*z** 7,
               %b8[ 63]*z** 8,%b9[ 63]*z** 9,%ba[ 63]*z**10,%bb[ 63]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 64]*z** 0,%c1[ 64]*z** 1,%c2[ 64]*z** 2,%c3[ 64]*z** 3,
               %c4[ 64]*z** 4,%c5[ 64]*z** 5,%c6[ 64]*z** 6,%c7[ 64]*z** 7,
               %c8[ 64]*z** 8,%c9[ 64]*z** 9,%ca[ 64]*z**10,%cb[ 64]*z**11])
      (poly z [%a0[ 64]*z** 0,%a1[ 64]*z** 1,%a2[ 64]*z** 2,%a3[ 64]*z** 3,
               %a4[ 64]*z** 4,%a5[ 64]*z** 5,%a6[ 64]*z** 6,%a7[ 64]*z** 7,
               %a8[ 64]*z** 8,%a9[ 64]*z** 9,%aa[ 64]*z**10,%ab[ 64]*z**11] *
       poly z [%b0[ 64]*z** 0,%b1[ 64]*z** 1,%b2[ 64]*z** 2,%b3[ 64]*z** 3,
               %b4[ 64]*z** 4,%b5[ 64]*z** 5,%b6[ 64]*z** 6,%b7[ 64]*z** 7,
               %b8[ 64]*z** 8,%b9[ 64]*z** 9,%ba[ 64]*z**10,%bb[ 64]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 65]*z** 0,%c1[ 65]*z** 1,%c2[ 65]*z** 2,%c3[ 65]*z** 3,
               %c4[ 65]*z** 4,%c5[ 65]*z** 5,%c6[ 65]*z** 6,%c7[ 65]*z** 7,
               %c8[ 65]*z** 8,%c9[ 65]*z** 9,%ca[ 65]*z**10,%cb[ 65]*z**11])
      (poly z [%a0[ 65]*z** 0,%a1[ 65]*z** 1,%a2[ 65]*z** 2,%a3[ 65]*z** 3,
               %a4[ 65]*z** 4,%a5[ 65]*z** 5,%a6[ 65]*z** 6,%a7[ 65]*z** 7,
               %a8[ 65]*z** 8,%a9[ 65]*z** 9,%aa[ 65]*z**10,%ab[ 65]*z**11] *
       poly z [%b0[ 65]*z** 0,%b1[ 65]*z** 1,%b2[ 65]*z** 2,%b3[ 65]*z** 3,
               %b4[ 65]*z** 4,%b5[ 65]*z** 5,%b6[ 65]*z** 6,%b7[ 65]*z** 7,
               %b8[ 65]*z** 8,%b9[ 65]*z** 9,%ba[ 65]*z**10,%bb[ 65]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 66]*z** 0,%c1[ 66]*z** 1,%c2[ 66]*z** 2,%c3[ 66]*z** 3,
               %c4[ 66]*z** 4,%c5[ 66]*z** 5,%c6[ 66]*z** 6,%c7[ 66]*z** 7,
               %c8[ 66]*z** 8,%c9[ 66]*z** 9,%ca[ 66]*z**10,%cb[ 66]*z**11])
      (poly z [%a0[ 66]*z** 0,%a1[ 66]*z** 1,%a2[ 66]*z** 2,%a3[ 66]*z** 3,
               %a4[ 66]*z** 4,%a5[ 66]*z** 5,%a6[ 66]*z** 6,%a7[ 66]*z** 7,
               %a8[ 66]*z** 8,%a9[ 66]*z** 9,%aa[ 66]*z**10,%ab[ 66]*z**11] *
       poly z [%b0[ 66]*z** 0,%b1[ 66]*z** 1,%b2[ 66]*z** 2,%b3[ 66]*z** 3,
               %b4[ 66]*z** 4,%b5[ 66]*z** 5,%b6[ 66]*z** 6,%b7[ 66]*z** 7,
               %b8[ 66]*z** 8,%b9[ 66]*z** 9,%ba[ 66]*z**10,%bb[ 66]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 67]*z** 0,%c1[ 67]*z** 1,%c2[ 67]*z** 2,%c3[ 67]*z** 3,
               %c4[ 67]*z** 4,%c5[ 67]*z** 5,%c6[ 67]*z** 6,%c7[ 67]*z** 7,
               %c8[ 67]*z** 8,%c9[ 67]*z** 9,%ca[ 67]*z**10,%cb[ 67]*z**11])
      (poly z [%a0[ 67]*z** 0,%a1[ 67]*z** 1,%a2[ 67]*z** 2,%a3[ 67]*z** 3,
               %a4[ 67]*z** 4,%a5[ 67]*z** 5,%a6[ 67]*z** 6,%a7[ 67]*z** 7,
               %a8[ 67]*z** 8,%a9[ 67]*z** 9,%aa[ 67]*z**10,%ab[ 67]*z**11] *
       poly z [%b0[ 67]*z** 0,%b1[ 67]*z** 1,%b2[ 67]*z** 2,%b3[ 67]*z** 3,
               %b4[ 67]*z** 4,%b5[ 67]*z** 5,%b6[ 67]*z** 6,%b7[ 67]*z** 7,
               %b8[ 67]*z** 8,%b9[ 67]*z** 9,%ba[ 67]*z**10,%bb[ 67]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 68]*z** 0,%c1[ 68]*z** 1,%c2[ 68]*z** 2,%c3[ 68]*z** 3,
               %c4[ 68]*z** 4,%c5[ 68]*z** 5,%c6[ 68]*z** 6,%c7[ 68]*z** 7,
               %c8[ 68]*z** 8,%c9[ 68]*z** 9,%ca[ 68]*z**10,%cb[ 68]*z**11])
      (poly z [%a0[ 68]*z** 0,%a1[ 68]*z** 1,%a2[ 68]*z** 2,%a3[ 68]*z** 3,
               %a4[ 68]*z** 4,%a5[ 68]*z** 5,%a6[ 68]*z** 6,%a7[ 68]*z** 7,
               %a8[ 68]*z** 8,%a9[ 68]*z** 9,%aa[ 68]*z**10,%ab[ 68]*z**11] *
       poly z [%b0[ 68]*z** 0,%b1[ 68]*z** 1,%b2[ 68]*z** 2,%b3[ 68]*z** 3,
               %b4[ 68]*z** 4,%b5[ 68]*z** 5,%b6[ 68]*z** 6,%b7[ 68]*z** 7,
               %b8[ 68]*z** 8,%b9[ 68]*z** 9,%ba[ 68]*z**10,%bb[ 68]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 69]*z** 0,%c1[ 69]*z** 1,%c2[ 69]*z** 2,%c3[ 69]*z** 3,
               %c4[ 69]*z** 4,%c5[ 69]*z** 5,%c6[ 69]*z** 6,%c7[ 69]*z** 7,
               %c8[ 69]*z** 8,%c9[ 69]*z** 9,%ca[ 69]*z**10,%cb[ 69]*z**11])
      (poly z [%a0[ 69]*z** 0,%a1[ 69]*z** 1,%a2[ 69]*z** 2,%a3[ 69]*z** 3,
               %a4[ 69]*z** 4,%a5[ 69]*z** 5,%a6[ 69]*z** 6,%a7[ 69]*z** 7,
               %a8[ 69]*z** 8,%a9[ 69]*z** 9,%aa[ 69]*z**10,%ab[ 69]*z**11] *
       poly z [%b0[ 69]*z** 0,%b1[ 69]*z** 1,%b2[ 69]*z** 2,%b3[ 69]*z** 3,
               %b4[ 69]*z** 4,%b5[ 69]*z** 5,%b6[ 69]*z** 6,%b7[ 69]*z** 7,
               %b8[ 69]*z** 8,%b9[ 69]*z** 9,%ba[ 69]*z**10,%bb[ 69]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 70]*z** 0,%c1[ 70]*z** 1,%c2[ 70]*z** 2,%c3[ 70]*z** 3,
               %c4[ 70]*z** 4,%c5[ 70]*z** 5,%c6[ 70]*z** 6,%c7[ 70]*z** 7,
               %c8[ 70]*z** 8,%c9[ 70]*z** 9,%ca[ 70]*z**10,%cb[ 70]*z**11])
      (poly z [%a0[ 70]*z** 0,%a1[ 70]*z** 1,%a2[ 70]*z** 2,%a3[ 70]*z** 3,
               %a4[ 70]*z** 4,%a5[ 70]*z** 5,%a6[ 70]*z** 6,%a7[ 70]*z** 7,
               %a8[ 70]*z** 8,%a9[ 70]*z** 9,%aa[ 70]*z**10,%ab[ 70]*z**11] *
       poly z [%b0[ 70]*z** 0,%b1[ 70]*z** 1,%b2[ 70]*z** 2,%b3[ 70]*z** 3,
               %b4[ 70]*z** 4,%b5[ 70]*z** 5,%b6[ 70]*z** 6,%b7[ 70]*z** 7,
               %b8[ 70]*z** 8,%b9[ 70]*z** 9,%ba[ 70]*z**10,%bb[ 70]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 71]*z** 0,%c1[ 71]*z** 1,%c2[ 71]*z** 2,%c3[ 71]*z** 3,
               %c4[ 71]*z** 4,%c5[ 71]*z** 5,%c6[ 71]*z** 6,%c7[ 71]*z** 7,
               %c8[ 71]*z** 8,%c9[ 71]*z** 9,%ca[ 71]*z**10,%cb[ 71]*z**11])
      (poly z [%a0[ 71]*z** 0,%a1[ 71]*z** 1,%a2[ 71]*z** 2,%a3[ 71]*z** 3,
               %a4[ 71]*z** 4,%a5[ 71]*z** 5,%a6[ 71]*z** 6,%a7[ 71]*z** 7,
               %a8[ 71]*z** 8,%a9[ 71]*z** 9,%aa[ 71]*z**10,%ab[ 71]*z**11] *
       poly z [%b0[ 71]*z** 0,%b1[ 71]*z** 1,%b2[ 71]*z** 2,%b3[ 71]*z** 3,
               %b4[ 71]*z** 4,%b5[ 71]*z** 5,%b6[ 71]*z** 6,%b7[ 71]*z** 7,
               %b8[ 71]*z** 8,%b9[ 71]*z** 9,%ba[ 71]*z**10,%bb[ 71]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 72]*z** 0,%c1[ 72]*z** 1,%c2[ 72]*z** 2,%c3[ 72]*z** 3,
               %c4[ 72]*z** 4,%c5[ 72]*z** 5,%c6[ 72]*z** 6,%c7[ 72]*z** 7,
               %c8[ 72]*z** 8,%c9[ 72]*z** 9,%ca[ 72]*z**10,%cb[ 72]*z**11])
      (poly z [%a0[ 72]*z** 0,%a1[ 72]*z** 1,%a2[ 72]*z** 2,%a3[ 72]*z** 3,
               %a4[ 72]*z** 4,%a5[ 72]*z** 5,%a6[ 72]*z** 6,%a7[ 72]*z** 7,
               %a8[ 72]*z** 8,%a9[ 72]*z** 9,%aa[ 72]*z**10,%ab[ 72]*z**11] *
       poly z [%b0[ 72]*z** 0,%b1[ 72]*z** 1,%b2[ 72]*z** 2,%b3[ 72]*z** 3,
               %b4[ 72]*z** 4,%b5[ 72]*z** 5,%b6[ 72]*z** 6,%b7[ 72]*z** 7,
               %b8[ 72]*z** 8,%b9[ 72]*z** 9,%ba[ 72]*z**10,%bb[ 72]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 73]*z** 0,%c1[ 73]*z** 1,%c2[ 73]*z** 2,%c3[ 73]*z** 3,
               %c4[ 73]*z** 4,%c5[ 73]*z** 5,%c6[ 73]*z** 6,%c7[ 73]*z** 7,
               %c8[ 73]*z** 8,%c9[ 73]*z** 9,%ca[ 73]*z**10,%cb[ 73]*z**11])
      (poly z [%a0[ 73]*z** 0,%a1[ 73]*z** 1,%a2[ 73]*z** 2,%a3[ 73]*z** 3,
               %a4[ 73]*z** 4,%a5[ 73]*z** 5,%a6[ 73]*z** 6,%a7[ 73]*z** 7,
               %a8[ 73]*z** 8,%a9[ 73]*z** 9,%aa[ 73]*z**10,%ab[ 73]*z**11] *
       poly z [%b0[ 73]*z** 0,%b1[ 73]*z** 1,%b2[ 73]*z** 2,%b3[ 73]*z** 3,
               %b4[ 73]*z** 4,%b5[ 73]*z** 5,%b6[ 73]*z** 6,%b7[ 73]*z** 7,
               %b8[ 73]*z** 8,%b9[ 73]*z** 9,%ba[ 73]*z**10,%bb[ 73]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 74]*z** 0,%c1[ 74]*z** 1,%c2[ 74]*z** 2,%c3[ 74]*z** 3,
               %c4[ 74]*z** 4,%c5[ 74]*z** 5,%c6[ 74]*z** 6,%c7[ 74]*z** 7,
               %c8[ 74]*z** 8,%c9[ 74]*z** 9,%ca[ 74]*z**10,%cb[ 74]*z**11])
      (poly z [%a0[ 74]*z** 0,%a1[ 74]*z** 1,%a2[ 74]*z** 2,%a3[ 74]*z** 3,
               %a4[ 74]*z** 4,%a5[ 74]*z** 5,%a6[ 74]*z** 6,%a7[ 74]*z** 7,
               %a8[ 74]*z** 8,%a9[ 74]*z** 9,%aa[ 74]*z**10,%ab[ 74]*z**11] *
       poly z [%b0[ 74]*z** 0,%b1[ 74]*z** 1,%b2[ 74]*z** 2,%b3[ 74]*z** 3,
               %b4[ 74]*z** 4,%b5[ 74]*z** 5,%b6[ 74]*z** 6,%b7[ 74]*z** 7,
               %b8[ 74]*z** 8,%b9[ 74]*z** 9,%ba[ 74]*z**10,%bb[ 74]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 75]*z** 0,%c1[ 75]*z** 1,%c2[ 75]*z** 2,%c3[ 75]*z** 3,
               %c4[ 75]*z** 4,%c5[ 75]*z** 5,%c6[ 75]*z** 6,%c7[ 75]*z** 7,
               %c8[ 75]*z** 8,%c9[ 75]*z** 9,%ca[ 75]*z**10,%cb[ 75]*z**11])
      (poly z [%a0[ 75]*z** 0,%a1[ 75]*z** 1,%a2[ 75]*z** 2,%a3[ 75]*z** 3,
               %a4[ 75]*z** 4,%a5[ 75]*z** 5,%a6[ 75]*z** 6,%a7[ 75]*z** 7,
               %a8[ 75]*z** 8,%a9[ 75]*z** 9,%aa[ 75]*z**10,%ab[ 75]*z**11] *
       poly z [%b0[ 75]*z** 0,%b1[ 75]*z** 1,%b2[ 75]*z** 2,%b3[ 75]*z** 3,
               %b4[ 75]*z** 4,%b5[ 75]*z** 5,%b6[ 75]*z** 6,%b7[ 75]*z** 7,
               %b8[ 75]*z** 8,%b9[ 75]*z** 9,%ba[ 75]*z**10,%bb[ 75]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 76]*z** 0,%c1[ 76]*z** 1,%c2[ 76]*z** 2,%c3[ 76]*z** 3,
               %c4[ 76]*z** 4,%c5[ 76]*z** 5,%c6[ 76]*z** 6,%c7[ 76]*z** 7,
               %c8[ 76]*z** 8,%c9[ 76]*z** 9,%ca[ 76]*z**10,%cb[ 76]*z**11])
      (poly z [%a0[ 76]*z** 0,%a1[ 76]*z** 1,%a2[ 76]*z** 2,%a3[ 76]*z** 3,
               %a4[ 76]*z** 4,%a5[ 76]*z** 5,%a6[ 76]*z** 6,%a7[ 76]*z** 7,
               %a8[ 76]*z** 8,%a9[ 76]*z** 9,%aa[ 76]*z**10,%ab[ 76]*z**11] *
       poly z [%b0[ 76]*z** 0,%b1[ 76]*z** 1,%b2[ 76]*z** 2,%b3[ 76]*z** 3,
               %b4[ 76]*z** 4,%b5[ 76]*z** 5,%b6[ 76]*z** 6,%b7[ 76]*z** 7,
               %b8[ 76]*z** 8,%b9[ 76]*z** 9,%ba[ 76]*z**10,%bb[ 76]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 77]*z** 0,%c1[ 77]*z** 1,%c2[ 77]*z** 2,%c3[ 77]*z** 3,
               %c4[ 77]*z** 4,%c5[ 77]*z** 5,%c6[ 77]*z** 6,%c7[ 77]*z** 7,
               %c8[ 77]*z** 8,%c9[ 77]*z** 9,%ca[ 77]*z**10,%cb[ 77]*z**11])
      (poly z [%a0[ 77]*z** 0,%a1[ 77]*z** 1,%a2[ 77]*z** 2,%a3[ 77]*z** 3,
               %a4[ 77]*z** 4,%a5[ 77]*z** 5,%a6[ 77]*z** 6,%a7[ 77]*z** 7,
               %a8[ 77]*z** 8,%a9[ 77]*z** 9,%aa[ 77]*z**10,%ab[ 77]*z**11] *
       poly z [%b0[ 77]*z** 0,%b1[ 77]*z** 1,%b2[ 77]*z** 2,%b3[ 77]*z** 3,
               %b4[ 77]*z** 4,%b5[ 77]*z** 5,%b6[ 77]*z** 6,%b7[ 77]*z** 7,
               %b8[ 77]*z** 8,%b9[ 77]*z** 9,%ba[ 77]*z**10,%bb[ 77]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 78]*z** 0,%c1[ 78]*z** 1,%c2[ 78]*z** 2,%c3[ 78]*z** 3,
               %c4[ 78]*z** 4,%c5[ 78]*z** 5,%c6[ 78]*z** 6,%c7[ 78]*z** 7,
               %c8[ 78]*z** 8,%c9[ 78]*z** 9,%ca[ 78]*z**10,%cb[ 78]*z**11])
      (poly z [%a0[ 78]*z** 0,%a1[ 78]*z** 1,%a2[ 78]*z** 2,%a3[ 78]*z** 3,
               %a4[ 78]*z** 4,%a5[ 78]*z** 5,%a6[ 78]*z** 6,%a7[ 78]*z** 7,
               %a8[ 78]*z** 8,%a9[ 78]*z** 9,%aa[ 78]*z**10,%ab[ 78]*z**11] *
       poly z [%b0[ 78]*z** 0,%b1[ 78]*z** 1,%b2[ 78]*z** 2,%b3[ 78]*z** 3,
               %b4[ 78]*z** 4,%b5[ 78]*z** 5,%b6[ 78]*z** 6,%b7[ 78]*z** 7,
               %b8[ 78]*z** 8,%b9[ 78]*z** 9,%ba[ 78]*z**10,%bb[ 78]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 79]*z** 0,%c1[ 79]*z** 1,%c2[ 79]*z** 2,%c3[ 79]*z** 3,
               %c4[ 79]*z** 4,%c5[ 79]*z** 5,%c6[ 79]*z** 6,%c7[ 79]*z** 7,
               %c8[ 79]*z** 8,%c9[ 79]*z** 9,%ca[ 79]*z**10,%cb[ 79]*z**11])
      (poly z [%a0[ 79]*z** 0,%a1[ 79]*z** 1,%a2[ 79]*z** 2,%a3[ 79]*z** 3,
               %a4[ 79]*z** 4,%a5[ 79]*z** 5,%a6[ 79]*z** 6,%a7[ 79]*z** 7,
               %a8[ 79]*z** 8,%a9[ 79]*z** 9,%aa[ 79]*z**10,%ab[ 79]*z**11] *
       poly z [%b0[ 79]*z** 0,%b1[ 79]*z** 1,%b2[ 79]*z** 2,%b3[ 79]*z** 3,
               %b4[ 79]*z** 4,%b5[ 79]*z** 5,%b6[ 79]*z** 6,%b7[ 79]*z** 7,
               %b8[ 79]*z** 8,%b9[ 79]*z** 9,%ba[ 79]*z**10,%bb[ 79]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 80]*z** 0,%c1[ 80]*z** 1,%c2[ 80]*z** 2,%c3[ 80]*z** 3,
               %c4[ 80]*z** 4,%c5[ 80]*z** 5,%c6[ 80]*z** 6,%c7[ 80]*z** 7,
               %c8[ 80]*z** 8,%c9[ 80]*z** 9,%ca[ 80]*z**10,%cb[ 80]*z**11])
      (poly z [%a0[ 80]*z** 0,%a1[ 80]*z** 1,%a2[ 80]*z** 2,%a3[ 80]*z** 3,
               %a4[ 80]*z** 4,%a5[ 80]*z** 5,%a6[ 80]*z** 6,%a7[ 80]*z** 7,
               %a8[ 80]*z** 8,%a9[ 80]*z** 9,%aa[ 80]*z**10,%ab[ 80]*z**11] *
       poly z [%b0[ 80]*z** 0,%b1[ 80]*z** 1,%b2[ 80]*z** 2,%b3[ 80]*z** 3,
               %b4[ 80]*z** 4,%b5[ 80]*z** 5,%b6[ 80]*z** 6,%b7[ 80]*z** 7,
               %b8[ 80]*z** 8,%b9[ 80]*z** 9,%ba[ 80]*z**10,%bb[ 80]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 81]*z** 0,%c1[ 81]*z** 1,%c2[ 81]*z** 2,%c3[ 81]*z** 3,
               %c4[ 81]*z** 4,%c5[ 81]*z** 5,%c6[ 81]*z** 6,%c7[ 81]*z** 7,
               %c8[ 81]*z** 8,%c9[ 81]*z** 9,%ca[ 81]*z**10,%cb[ 81]*z**11])
      (poly z [%a0[ 81]*z** 0,%a1[ 81]*z** 1,%a2[ 81]*z** 2,%a3[ 81]*z** 3,
               %a4[ 81]*z** 4,%a5[ 81]*z** 5,%a6[ 81]*z** 6,%a7[ 81]*z** 7,
               %a8[ 81]*z** 8,%a9[ 81]*z** 9,%aa[ 81]*z**10,%ab[ 81]*z**11] *
       poly z [%b0[ 81]*z** 0,%b1[ 81]*z** 1,%b2[ 81]*z** 2,%b3[ 81]*z** 3,
               %b4[ 81]*z** 4,%b5[ 81]*z** 5,%b6[ 81]*z** 6,%b7[ 81]*z** 7,
               %b8[ 81]*z** 8,%b9[ 81]*z** 9,%ba[ 81]*z**10,%bb[ 81]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 82]*z** 0,%c1[ 82]*z** 1,%c2[ 82]*z** 2,%c3[ 82]*z** 3,
               %c4[ 82]*z** 4,%c5[ 82]*z** 5,%c6[ 82]*z** 6,%c7[ 82]*z** 7,
               %c8[ 82]*z** 8,%c9[ 82]*z** 9,%ca[ 82]*z**10,%cb[ 82]*z**11])
      (poly z [%a0[ 82]*z** 0,%a1[ 82]*z** 1,%a2[ 82]*z** 2,%a3[ 82]*z** 3,
               %a4[ 82]*z** 4,%a5[ 82]*z** 5,%a6[ 82]*z** 6,%a7[ 82]*z** 7,
               %a8[ 82]*z** 8,%a9[ 82]*z** 9,%aa[ 82]*z**10,%ab[ 82]*z**11] *
       poly z [%b0[ 82]*z** 0,%b1[ 82]*z** 1,%b2[ 82]*z** 2,%b3[ 82]*z** 3,
               %b4[ 82]*z** 4,%b5[ 82]*z** 5,%b6[ 82]*z** 6,%b7[ 82]*z** 7,
               %b8[ 82]*z** 8,%b9[ 82]*z** 9,%ba[ 82]*z**10,%bb[ 82]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 83]*z** 0,%c1[ 83]*z** 1,%c2[ 83]*z** 2,%c3[ 83]*z** 3,
               %c4[ 83]*z** 4,%c5[ 83]*z** 5,%c6[ 83]*z** 6,%c7[ 83]*z** 7,
               %c8[ 83]*z** 8,%c9[ 83]*z** 9,%ca[ 83]*z**10,%cb[ 83]*z**11])
      (poly z [%a0[ 83]*z** 0,%a1[ 83]*z** 1,%a2[ 83]*z** 2,%a3[ 83]*z** 3,
               %a4[ 83]*z** 4,%a5[ 83]*z** 5,%a6[ 83]*z** 6,%a7[ 83]*z** 7,
               %a8[ 83]*z** 8,%a9[ 83]*z** 9,%aa[ 83]*z**10,%ab[ 83]*z**11] *
       poly z [%b0[ 83]*z** 0,%b1[ 83]*z** 1,%b2[ 83]*z** 2,%b3[ 83]*z** 3,
               %b4[ 83]*z** 4,%b5[ 83]*z** 5,%b6[ 83]*z** 6,%b7[ 83]*z** 7,
               %b8[ 83]*z** 8,%b9[ 83]*z** 9,%ba[ 83]*z**10,%bb[ 83]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 84]*z** 0,%c1[ 84]*z** 1,%c2[ 84]*z** 2,%c3[ 84]*z** 3,
               %c4[ 84]*z** 4,%c5[ 84]*z** 5,%c6[ 84]*z** 6,%c7[ 84]*z** 7,
               %c8[ 84]*z** 8,%c9[ 84]*z** 9,%ca[ 84]*z**10,%cb[ 84]*z**11])
      (poly z [%a0[ 84]*z** 0,%a1[ 84]*z** 1,%a2[ 84]*z** 2,%a3[ 84]*z** 3,
               %a4[ 84]*z** 4,%a5[ 84]*z** 5,%a6[ 84]*z** 6,%a7[ 84]*z** 7,
               %a8[ 84]*z** 8,%a9[ 84]*z** 9,%aa[ 84]*z**10,%ab[ 84]*z**11] *
       poly z [%b0[ 84]*z** 0,%b1[ 84]*z** 1,%b2[ 84]*z** 2,%b3[ 84]*z** 3,
               %b4[ 84]*z** 4,%b5[ 84]*z** 5,%b6[ 84]*z** 6,%b7[ 84]*z** 7,
               %b8[ 84]*z** 8,%b9[ 84]*z** 9,%ba[ 84]*z**10,%bb[ 84]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 85]*z** 0,%c1[ 85]*z** 1,%c2[ 85]*z** 2,%c3[ 85]*z** 3,
               %c4[ 85]*z** 4,%c5[ 85]*z** 5,%c6[ 85]*z** 6,%c7[ 85]*z** 7,
               %c8[ 85]*z** 8,%c9[ 85]*z** 9,%ca[ 85]*z**10,%cb[ 85]*z**11])
      (poly z [%a0[ 85]*z** 0,%a1[ 85]*z** 1,%a2[ 85]*z** 2,%a3[ 85]*z** 3,
               %a4[ 85]*z** 4,%a5[ 85]*z** 5,%a6[ 85]*z** 6,%a7[ 85]*z** 7,
               %a8[ 85]*z** 8,%a9[ 85]*z** 9,%aa[ 85]*z**10,%ab[ 85]*z**11] *
       poly z [%b0[ 85]*z** 0,%b1[ 85]*z** 1,%b2[ 85]*z** 2,%b3[ 85]*z** 3,
               %b4[ 85]*z** 4,%b5[ 85]*z** 5,%b6[ 85]*z** 6,%b7[ 85]*z** 7,
               %b8[ 85]*z** 8,%b9[ 85]*z** 9,%ba[ 85]*z**10,%bb[ 85]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 86]*z** 0,%c1[ 86]*z** 1,%c2[ 86]*z** 2,%c3[ 86]*z** 3,
               %c4[ 86]*z** 4,%c5[ 86]*z** 5,%c6[ 86]*z** 6,%c7[ 86]*z** 7,
               %c8[ 86]*z** 8,%c9[ 86]*z** 9,%ca[ 86]*z**10,%cb[ 86]*z**11])
      (poly z [%a0[ 86]*z** 0,%a1[ 86]*z** 1,%a2[ 86]*z** 2,%a3[ 86]*z** 3,
               %a4[ 86]*z** 4,%a5[ 86]*z** 5,%a6[ 86]*z** 6,%a7[ 86]*z** 7,
               %a8[ 86]*z** 8,%a9[ 86]*z** 9,%aa[ 86]*z**10,%ab[ 86]*z**11] *
       poly z [%b0[ 86]*z** 0,%b1[ 86]*z** 1,%b2[ 86]*z** 2,%b3[ 86]*z** 3,
               %b4[ 86]*z** 4,%b5[ 86]*z** 5,%b6[ 86]*z** 6,%b7[ 86]*z** 7,
               %b8[ 86]*z** 8,%b9[ 86]*z** 9,%ba[ 86]*z**10,%bb[ 86]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 87]*z** 0,%c1[ 87]*z** 1,%c2[ 87]*z** 2,%c3[ 87]*z** 3,
               %c4[ 87]*z** 4,%c5[ 87]*z** 5,%c6[ 87]*z** 6,%c7[ 87]*z** 7,
               %c8[ 87]*z** 8,%c9[ 87]*z** 9,%ca[ 87]*z**10,%cb[ 87]*z**11])
      (poly z [%a0[ 87]*z** 0,%a1[ 87]*z** 1,%a2[ 87]*z** 2,%a3[ 87]*z** 3,
               %a4[ 87]*z** 4,%a5[ 87]*z** 5,%a6[ 87]*z** 6,%a7[ 87]*z** 7,
               %a8[ 87]*z** 8,%a9[ 87]*z** 9,%aa[ 87]*z**10,%ab[ 87]*z**11] *
       poly z [%b0[ 87]*z** 0,%b1[ 87]*z** 1,%b2[ 87]*z** 2,%b3[ 87]*z** 3,
               %b4[ 87]*z** 4,%b5[ 87]*z** 5,%b6[ 87]*z** 6,%b7[ 87]*z** 7,
               %b8[ 87]*z** 8,%b9[ 87]*z** 9,%ba[ 87]*z**10,%bb[ 87]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 88]*z** 0,%c1[ 88]*z** 1,%c2[ 88]*z** 2,%c3[ 88]*z** 3,
               %c4[ 88]*z** 4,%c5[ 88]*z** 5,%c6[ 88]*z** 6,%c7[ 88]*z** 7,
               %c8[ 88]*z** 8,%c9[ 88]*z** 9,%ca[ 88]*z**10,%cb[ 88]*z**11])
      (poly z [%a0[ 88]*z** 0,%a1[ 88]*z** 1,%a2[ 88]*z** 2,%a3[ 88]*z** 3,
               %a4[ 88]*z** 4,%a5[ 88]*z** 5,%a6[ 88]*z** 6,%a7[ 88]*z** 7,
               %a8[ 88]*z** 8,%a9[ 88]*z** 9,%aa[ 88]*z**10,%ab[ 88]*z**11] *
       poly z [%b0[ 88]*z** 0,%b1[ 88]*z** 1,%b2[ 88]*z** 2,%b3[ 88]*z** 3,
               %b4[ 88]*z** 4,%b5[ 88]*z** 5,%b6[ 88]*z** 6,%b7[ 88]*z** 7,
               %b8[ 88]*z** 8,%b9[ 88]*z** 9,%ba[ 88]*z**10,%bb[ 88]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 89]*z** 0,%c1[ 89]*z** 1,%c2[ 89]*z** 2,%c3[ 89]*z** 3,
               %c4[ 89]*z** 4,%c5[ 89]*z** 5,%c6[ 89]*z** 6,%c7[ 89]*z** 7,
               %c8[ 89]*z** 8,%c9[ 89]*z** 9,%ca[ 89]*z**10,%cb[ 89]*z**11])
      (poly z [%a0[ 89]*z** 0,%a1[ 89]*z** 1,%a2[ 89]*z** 2,%a3[ 89]*z** 3,
               %a4[ 89]*z** 4,%a5[ 89]*z** 5,%a6[ 89]*z** 6,%a7[ 89]*z** 7,
               %a8[ 89]*z** 8,%a9[ 89]*z** 9,%aa[ 89]*z**10,%ab[ 89]*z**11] *
       poly z [%b0[ 89]*z** 0,%b1[ 89]*z** 1,%b2[ 89]*z** 2,%b3[ 89]*z** 3,
               %b4[ 89]*z** 4,%b5[ 89]*z** 5,%b6[ 89]*z** 6,%b7[ 89]*z** 7,
               %b8[ 89]*z** 8,%b9[ 89]*z** 9,%ba[ 89]*z**10,%bb[ 89]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 90]*z** 0,%c1[ 90]*z** 1,%c2[ 90]*z** 2,%c3[ 90]*z** 3,
               %c4[ 90]*z** 4,%c5[ 90]*z** 5,%c6[ 90]*z** 6,%c7[ 90]*z** 7,
               %c8[ 90]*z** 8,%c9[ 90]*z** 9,%ca[ 90]*z**10,%cb[ 90]*z**11])
      (poly z [%a0[ 90]*z** 0,%a1[ 90]*z** 1,%a2[ 90]*z** 2,%a3[ 90]*z** 3,
               %a4[ 90]*z** 4,%a5[ 90]*z** 5,%a6[ 90]*z** 6,%a7[ 90]*z** 7,
               %a8[ 90]*z** 8,%a9[ 90]*z** 9,%aa[ 90]*z**10,%ab[ 90]*z**11] *
       poly z [%b0[ 90]*z** 0,%b1[ 90]*z** 1,%b2[ 90]*z** 2,%b3[ 90]*z** 3,
               %b4[ 90]*z** 4,%b5[ 90]*z** 5,%b6[ 90]*z** 6,%b7[ 90]*z** 7,
               %b8[ 90]*z** 8,%b9[ 90]*z** 9,%ba[ 90]*z**10,%bb[ 90]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 91]*z** 0,%c1[ 91]*z** 1,%c2[ 91]*z** 2,%c3[ 91]*z** 3,
               %c4[ 91]*z** 4,%c5[ 91]*z** 5,%c6[ 91]*z** 6,%c7[ 91]*z** 7,
               %c8[ 91]*z** 8,%c9[ 91]*z** 9,%ca[ 91]*z**10,%cb[ 91]*z**11])
      (poly z [%a0[ 91]*z** 0,%a1[ 91]*z** 1,%a2[ 91]*z** 2,%a3[ 91]*z** 3,
               %a4[ 91]*z** 4,%a5[ 91]*z** 5,%a6[ 91]*z** 6,%a7[ 91]*z** 7,
               %a8[ 91]*z** 8,%a9[ 91]*z** 9,%aa[ 91]*z**10,%ab[ 91]*z**11] *
       poly z [%b0[ 91]*z** 0,%b1[ 91]*z** 1,%b2[ 91]*z** 2,%b3[ 91]*z** 3,
               %b4[ 91]*z** 4,%b5[ 91]*z** 5,%b6[ 91]*z** 6,%b7[ 91]*z** 7,
               %b8[ 91]*z** 8,%b9[ 91]*z** 9,%ba[ 91]*z**10,%bb[ 91]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 92]*z** 0,%c1[ 92]*z** 1,%c2[ 92]*z** 2,%c3[ 92]*z** 3,
               %c4[ 92]*z** 4,%c5[ 92]*z** 5,%c6[ 92]*z** 6,%c7[ 92]*z** 7,
               %c8[ 92]*z** 8,%c9[ 92]*z** 9,%ca[ 92]*z**10,%cb[ 92]*z**11])
      (poly z [%a0[ 92]*z** 0,%a1[ 92]*z** 1,%a2[ 92]*z** 2,%a3[ 92]*z** 3,
               %a4[ 92]*z** 4,%a5[ 92]*z** 5,%a6[ 92]*z** 6,%a7[ 92]*z** 7,
               %a8[ 92]*z** 8,%a9[ 92]*z** 9,%aa[ 92]*z**10,%ab[ 92]*z**11] *
       poly z [%b0[ 92]*z** 0,%b1[ 92]*z** 1,%b2[ 92]*z** 2,%b3[ 92]*z** 3,
               %b4[ 92]*z** 4,%b5[ 92]*z** 5,%b6[ 92]*z** 6,%b7[ 92]*z** 7,
               %b8[ 92]*z** 8,%b9[ 92]*z** 9,%ba[ 92]*z**10,%bb[ 92]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 93]*z** 0,%c1[ 93]*z** 1,%c2[ 93]*z** 2,%c3[ 93]*z** 3,
               %c4[ 93]*z** 4,%c5[ 93]*z** 5,%c6[ 93]*z** 6,%c7[ 93]*z** 7,
               %c8[ 93]*z** 8,%c9[ 93]*z** 9,%ca[ 93]*z**10,%cb[ 93]*z**11])
      (poly z [%a0[ 93]*z** 0,%a1[ 93]*z** 1,%a2[ 93]*z** 2,%a3[ 93]*z** 3,
               %a4[ 93]*z** 4,%a5[ 93]*z** 5,%a6[ 93]*z** 6,%a7[ 93]*z** 7,
               %a8[ 93]*z** 8,%a9[ 93]*z** 9,%aa[ 93]*z**10,%ab[ 93]*z**11] *
       poly z [%b0[ 93]*z** 0,%b1[ 93]*z** 1,%b2[ 93]*z** 2,%b3[ 93]*z** 3,
               %b4[ 93]*z** 4,%b5[ 93]*z** 5,%b6[ 93]*z** 6,%b7[ 93]*z** 7,
               %b8[ 93]*z** 8,%b9[ 93]*z** 9,%ba[ 93]*z**10,%bb[ 93]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 94]*z** 0,%c1[ 94]*z** 1,%c2[ 94]*z** 2,%c3[ 94]*z** 3,
               %c4[ 94]*z** 4,%c5[ 94]*z** 5,%c6[ 94]*z** 6,%c7[ 94]*z** 7,
               %c8[ 94]*z** 8,%c9[ 94]*z** 9,%ca[ 94]*z**10,%cb[ 94]*z**11])
      (poly z [%a0[ 94]*z** 0,%a1[ 94]*z** 1,%a2[ 94]*z** 2,%a3[ 94]*z** 3,
               %a4[ 94]*z** 4,%a5[ 94]*z** 5,%a6[ 94]*z** 6,%a7[ 94]*z** 7,
               %a8[ 94]*z** 8,%a9[ 94]*z** 9,%aa[ 94]*z**10,%ab[ 94]*z**11] *
       poly z [%b0[ 94]*z** 0,%b1[ 94]*z** 1,%b2[ 94]*z** 2,%b3[ 94]*z** 3,
               %b4[ 94]*z** 4,%b5[ 94]*z** 5,%b6[ 94]*z** 6,%b7[ 94]*z** 7,
               %b8[ 94]*z** 8,%b9[ 94]*z** 9,%ba[ 94]*z**10,%bb[ 94]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 95]*z** 0,%c1[ 95]*z** 1,%c2[ 95]*z** 2,%c3[ 95]*z** 3,
               %c4[ 95]*z** 4,%c5[ 95]*z** 5,%c6[ 95]*z** 6,%c7[ 95]*z** 7,
               %c8[ 95]*z** 8,%c9[ 95]*z** 9,%ca[ 95]*z**10,%cb[ 95]*z**11])
      (poly z [%a0[ 95]*z** 0,%a1[ 95]*z** 1,%a2[ 95]*z** 2,%a3[ 95]*z** 3,
               %a4[ 95]*z** 4,%a5[ 95]*z** 5,%a6[ 95]*z** 6,%a7[ 95]*z** 7,
               %a8[ 95]*z** 8,%a9[ 95]*z** 9,%aa[ 95]*z**10,%ab[ 95]*z**11] *
       poly z [%b0[ 95]*z** 0,%b1[ 95]*z** 1,%b2[ 95]*z** 2,%b3[ 95]*z** 3,
               %b4[ 95]*z** 4,%b5[ 95]*z** 5,%b6[ 95]*z** 6,%b7[ 95]*z** 7,
               %b8[ 95]*z** 8,%b9[ 95]*z** 9,%ba[ 95]*z**10,%bb[ 95]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 96]*z** 0,%c1[ 96]*z** 1,%c2[ 96]*z** 2,%c3[ 96]*z** 3,
               %c4[ 96]*z** 4,%c5[ 96]*z** 5,%c6[ 96]*z** 6,%c7[ 96]*z** 7,
               %c8[ 96]*z** 8,%c9[ 96]*z** 9,%ca[ 96]*z**10,%cb[ 96]*z**11])
      (poly z [%a0[ 96]*z** 0,%a1[ 96]*z** 1,%a2[ 96]*z** 2,%a3[ 96]*z** 3,
               %a4[ 96]*z** 4,%a5[ 96]*z** 5,%a6[ 96]*z** 6,%a7[ 96]*z** 7,
               %a8[ 96]*z** 8,%a9[ 96]*z** 9,%aa[ 96]*z**10,%ab[ 96]*z**11] *
       poly z [%b0[ 96]*z** 0,%b1[ 96]*z** 1,%b2[ 96]*z** 2,%b3[ 96]*z** 3,
               %b4[ 96]*z** 4,%b5[ 96]*z** 5,%b6[ 96]*z** 6,%b7[ 96]*z** 7,
               %b8[ 96]*z** 8,%b9[ 96]*z** 9,%ba[ 96]*z**10,%bb[ 96]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 97]*z** 0,%c1[ 97]*z** 1,%c2[ 97]*z** 2,%c3[ 97]*z** 3,
               %c4[ 97]*z** 4,%c5[ 97]*z** 5,%c6[ 97]*z** 6,%c7[ 97]*z** 7,
               %c8[ 97]*z** 8,%c9[ 97]*z** 9,%ca[ 97]*z**10,%cb[ 97]*z**11])
      (poly z [%a0[ 97]*z** 0,%a1[ 97]*z** 1,%a2[ 97]*z** 2,%a3[ 97]*z** 3,
               %a4[ 97]*z** 4,%a5[ 97]*z** 5,%a6[ 97]*z** 6,%a7[ 97]*z** 7,
               %a8[ 97]*z** 8,%a9[ 97]*z** 9,%aa[ 97]*z**10,%ab[ 97]*z**11] *
       poly z [%b0[ 97]*z** 0,%b1[ 97]*z** 1,%b2[ 97]*z** 2,%b3[ 97]*z** 3,
               %b4[ 97]*z** 4,%b5[ 97]*z** 5,%b6[ 97]*z** 6,%b7[ 97]*z** 7,
               %b8[ 97]*z** 8,%b9[ 97]*z** 9,%ba[ 97]*z**10,%bb[ 97]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 98]*z** 0,%c1[ 98]*z** 1,%c2[ 98]*z** 2,%c3[ 98]*z** 3,
               %c4[ 98]*z** 4,%c5[ 98]*z** 5,%c6[ 98]*z** 6,%c7[ 98]*z** 7,
               %c8[ 98]*z** 8,%c9[ 98]*z** 9,%ca[ 98]*z**10,%cb[ 98]*z**11])
      (poly z [%a0[ 98]*z** 0,%a1[ 98]*z** 1,%a2[ 98]*z** 2,%a3[ 98]*z** 3,
               %a4[ 98]*z** 4,%a5[ 98]*z** 5,%a6[ 98]*z** 6,%a7[ 98]*z** 7,
               %a8[ 98]*z** 8,%a9[ 98]*z** 9,%aa[ 98]*z**10,%ab[ 98]*z**11] *
       poly z [%b0[ 98]*z** 0,%b1[ 98]*z** 1,%b2[ 98]*z** 2,%b3[ 98]*z** 3,
               %b4[ 98]*z** 4,%b5[ 98]*z** 5,%b6[ 98]*z** 6,%b7[ 98]*z** 7,
               %b8[ 98]*z** 8,%b9[ 98]*z** 9,%ba[ 98]*z**10,%bb[ 98]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 99]*z** 0,%c1[ 99]*z** 1,%c2[ 99]*z** 2,%c3[ 99]*z** 3,
               %c4[ 99]*z** 4,%c5[ 99]*z** 5,%c6[ 99]*z** 6,%c7[ 99]*z** 7,
               %c8[ 99]*z** 8,%c9[ 99]*z** 9,%ca[ 99]*z**10,%cb[ 99]*z**11])
      (poly z [%a0[ 99]*z** 0,%a1[ 99]*z** 1,%a2[ 99]*z** 2,%a3[ 99]*z** 3,
               %a4[ 99]*z** 4,%a5[ 99]*z** 5,%a6[ 99]*z** 6,%a7[ 99]*z** 7,
               %a8[ 99]*z** 8,%a9[ 99]*z** 9,%aa[ 99]*z**10,%ab[ 99]*z**11] *
       poly z [%b0[ 99]*z** 0,%b1[ 99]*z** 1,%b2[ 99]*z** 2,%b3[ 99]*z** 3,
               %b4[ 99]*z** 4,%b5[ 99]*z** 5,%b6[ 99]*z** 6,%b7[ 99]*z** 7,
               %b8[ 99]*z** 8,%b9[ 99]*z** 9,%ba[ 99]*z**10,%bb[ 99]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[100]*z** 0,%c1[100]*z** 1,%c2[100]*z** 2,%c3[100]*z** 3,
               %c4[100]*z** 4,%c5[100]*z** 5,%c6[100]*z** 6,%c7[100]*z** 7,
               %c8[100]*z** 8,%c9[100]*z** 9,%ca[100]*z**10,%cb[100]*z**11])
      (poly z [%a0[100]*z** 0,%a1[100]*z** 1,%a2[100]*z** 2,%a3[100]*z** 3,
               %a4[100]*z** 4,%a5[100]*z** 5,%a6[100]*z** 6,%a7[100]*z** 7,
               %a8[100]*z** 8,%a9[100]*z** 9,%aa[100]*z**10,%ab[100]*z**11] *
       poly z [%b0[100]*z** 0,%b1[100]*z** 1,%b2[100]*z** 2,%b3[100]*z** 3,
               %b4[100]*z** 4,%b5[100]*z** 5,%b6[100]*z** 6,%b7[100]*z** 7,
               %b8[100]*z** 8,%b9[100]*z** 9,%ba[100]*z**10,%bb[100]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[101]*z** 0,%c1[101]*z** 1,%c2[101]*z** 2,%c3[101]*z** 3,
               %c4[101]*z** 4,%c5[101]*z** 5,%c6[101]*z** 6,%c7[101]*z** 7,
               %c8[101]*z** 8,%c9[101]*z** 9,%ca[101]*z**10,%cb[101]*z**11])
      (poly z [%a0[101]*z** 0,%a1[101]*z** 1,%a2[101]*z** 2,%a3[101]*z** 3,
               %a4[101]*z** 4,%a5[101]*z** 5,%a6[101]*z** 6,%a7[101]*z** 7,
               %a8[101]*z** 8,%a9[101]*z** 9,%aa[101]*z**10,%ab[101]*z**11] *
       poly z [%b0[101]*z** 0,%b1[101]*z** 1,%b2[101]*z** 2,%b3[101]*z** 3,
               %b4[101]*z** 4,%b5[101]*z** 5,%b6[101]*z** 6,%b7[101]*z** 7,
               %b8[101]*z** 8,%b9[101]*z** 9,%ba[101]*z**10,%bb[101]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[102]*z** 0,%c1[102]*z** 1,%c2[102]*z** 2,%c3[102]*z** 3,
               %c4[102]*z** 4,%c5[102]*z** 5,%c6[102]*z** 6,%c7[102]*z** 7,
               %c8[102]*z** 8,%c9[102]*z** 9,%ca[102]*z**10,%cb[102]*z**11])
      (poly z [%a0[102]*z** 0,%a1[102]*z** 1,%a2[102]*z** 2,%a3[102]*z** 3,
               %a4[102]*z** 4,%a5[102]*z** 5,%a6[102]*z** 6,%a7[102]*z** 7,
               %a8[102]*z** 8,%a9[102]*z** 9,%aa[102]*z**10,%ab[102]*z**11] *
       poly z [%b0[102]*z** 0,%b1[102]*z** 1,%b2[102]*z** 2,%b3[102]*z** 3,
               %b4[102]*z** 4,%b5[102]*z** 5,%b6[102]*z** 6,%b7[102]*z** 7,
               %b8[102]*z** 8,%b9[102]*z** 9,%ba[102]*z**10,%bb[102]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[103]*z** 0,%c1[103]*z** 1,%c2[103]*z** 2,%c3[103]*z** 3,
               %c4[103]*z** 4,%c5[103]*z** 5,%c6[103]*z** 6,%c7[103]*z** 7,
               %c8[103]*z** 8,%c9[103]*z** 9,%ca[103]*z**10,%cb[103]*z**11])
      (poly z [%a0[103]*z** 0,%a1[103]*z** 1,%a2[103]*z** 2,%a3[103]*z** 3,
               %a4[103]*z** 4,%a5[103]*z** 5,%a6[103]*z** 6,%a7[103]*z** 7,
               %a8[103]*z** 8,%a9[103]*z** 9,%aa[103]*z**10,%ab[103]*z**11] *
       poly z [%b0[103]*z** 0,%b1[103]*z** 1,%b2[103]*z** 2,%b3[103]*z** 3,
               %b4[103]*z** 4,%b5[103]*z** 5,%b6[103]*z** 6,%b7[103]*z** 7,
               %b8[103]*z** 8,%b9[103]*z** 9,%ba[103]*z**10,%bb[103]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[104]*z** 0,%c1[104]*z** 1,%c2[104]*z** 2,%c3[104]*z** 3,
               %c4[104]*z** 4,%c5[104]*z** 5,%c6[104]*z** 6,%c7[104]*z** 7,
               %c8[104]*z** 8,%c9[104]*z** 9,%ca[104]*z**10,%cb[104]*z**11])
      (poly z [%a0[104]*z** 0,%a1[104]*z** 1,%a2[104]*z** 2,%a3[104]*z** 3,
               %a4[104]*z** 4,%a5[104]*z** 5,%a6[104]*z** 6,%a7[104]*z** 7,
               %a8[104]*z** 8,%a9[104]*z** 9,%aa[104]*z**10,%ab[104]*z**11] *
       poly z [%b0[104]*z** 0,%b1[104]*z** 1,%b2[104]*z** 2,%b3[104]*z** 3,
               %b4[104]*z** 4,%b5[104]*z** 5,%b6[104]*z** 6,%b7[104]*z** 7,
               %b8[104]*z** 8,%b9[104]*z** 9,%ba[104]*z**10,%bb[104]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[105]*z** 0,%c1[105]*z** 1,%c2[105]*z** 2,%c3[105]*z** 3,
               %c4[105]*z** 4,%c5[105]*z** 5,%c6[105]*z** 6,%c7[105]*z** 7,
               %c8[105]*z** 8,%c9[105]*z** 9,%ca[105]*z**10,%cb[105]*z**11])
      (poly z [%a0[105]*z** 0,%a1[105]*z** 1,%a2[105]*z** 2,%a3[105]*z** 3,
               %a4[105]*z** 4,%a5[105]*z** 5,%a6[105]*z** 6,%a7[105]*z** 7,
               %a8[105]*z** 8,%a9[105]*z** 9,%aa[105]*z**10,%ab[105]*z**11] *
       poly z [%b0[105]*z** 0,%b1[105]*z** 1,%b2[105]*z** 2,%b3[105]*z** 3,
               %b4[105]*z** 4,%b5[105]*z** 5,%b6[105]*z** 6,%b7[105]*z** 7,
               %b8[105]*z** 8,%b9[105]*z** 9,%ba[105]*z**10,%bb[105]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[106]*z** 0,%c1[106]*z** 1,%c2[106]*z** 2,%c3[106]*z** 3,
               %c4[106]*z** 4,%c5[106]*z** 5,%c6[106]*z** 6,%c7[106]*z** 7,
               %c8[106]*z** 8,%c9[106]*z** 9,%ca[106]*z**10,%cb[106]*z**11])
      (poly z [%a0[106]*z** 0,%a1[106]*z** 1,%a2[106]*z** 2,%a3[106]*z** 3,
               %a4[106]*z** 4,%a5[106]*z** 5,%a6[106]*z** 6,%a7[106]*z** 7,
               %a8[106]*z** 8,%a9[106]*z** 9,%aa[106]*z**10,%ab[106]*z**11] *
       poly z [%b0[106]*z** 0,%b1[106]*z** 1,%b2[106]*z** 2,%b3[106]*z** 3,
               %b4[106]*z** 4,%b5[106]*z** 5,%b6[106]*z** 6,%b7[106]*z** 7,
               %b8[106]*z** 8,%b9[106]*z** 9,%ba[106]*z**10,%bb[106]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[107]*z** 0,%c1[107]*z** 1,%c2[107]*z** 2,%c3[107]*z** 3,
               %c4[107]*z** 4,%c5[107]*z** 5,%c6[107]*z** 6,%c7[107]*z** 7,
               %c8[107]*z** 8,%c9[107]*z** 9,%ca[107]*z**10,%cb[107]*z**11])
      (poly z [%a0[107]*z** 0,%a1[107]*z** 1,%a2[107]*z** 2,%a3[107]*z** 3,
               %a4[107]*z** 4,%a5[107]*z** 5,%a6[107]*z** 6,%a7[107]*z** 7,
               %a8[107]*z** 8,%a9[107]*z** 9,%aa[107]*z**10,%ab[107]*z**11] *
       poly z [%b0[107]*z** 0,%b1[107]*z** 1,%b2[107]*z** 2,%b3[107]*z** 3,
               %b4[107]*z** 4,%b5[107]*z** 5,%b6[107]*z** 6,%b7[107]*z** 7,
               %b8[107]*z** 8,%b9[107]*z** 9,%ba[107]*z**10,%bb[107]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[108]*z** 0,%c1[108]*z** 1,%c2[108]*z** 2,%c3[108]*z** 3,
               %c4[108]*z** 4,%c5[108]*z** 5,%c6[108]*z** 6,%c7[108]*z** 7,
               %c8[108]*z** 8,%c9[108]*z** 9,%ca[108]*z**10,%cb[108]*z**11])
      (poly z [%a0[108]*z** 0,%a1[108]*z** 1,%a2[108]*z** 2,%a3[108]*z** 3,
               %a4[108]*z** 4,%a5[108]*z** 5,%a6[108]*z** 6,%a7[108]*z** 7,
               %a8[108]*z** 8,%a9[108]*z** 9,%aa[108]*z**10,%ab[108]*z**11] *
       poly z [%b0[108]*z** 0,%b1[108]*z** 1,%b2[108]*z** 2,%b3[108]*z** 3,
               %b4[108]*z** 4,%b5[108]*z** 5,%b6[108]*z** 6,%b7[108]*z** 7,
               %b8[108]*z** 8,%b9[108]*z** 9,%ba[108]*z**10,%bb[108]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[109]*z** 0,%c1[109]*z** 1,%c2[109]*z** 2,%c3[109]*z** 3,
               %c4[109]*z** 4,%c5[109]*z** 5,%c6[109]*z** 6,%c7[109]*z** 7,
               %c8[109]*z** 8,%c9[109]*z** 9,%ca[109]*z**10,%cb[109]*z**11])
      (poly z [%a0[109]*z** 0,%a1[109]*z** 1,%a2[109]*z** 2,%a3[109]*z** 3,
               %a4[109]*z** 4,%a5[109]*z** 5,%a6[109]*z** 6,%a7[109]*z** 7,
               %a8[109]*z** 8,%a9[109]*z** 9,%aa[109]*z**10,%ab[109]*z**11] *
       poly z [%b0[109]*z** 0,%b1[109]*z** 1,%b2[109]*z** 2,%b3[109]*z** 3,
               %b4[109]*z** 4,%b5[109]*z** 5,%b6[109]*z** 6,%b7[109]*z** 7,
               %b8[109]*z** 8,%b9[109]*z** 9,%ba[109]*z**10,%bb[109]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[110]*z** 0,%c1[110]*z** 1,%c2[110]*z** 2,%c3[110]*z** 3,
               %c4[110]*z** 4,%c5[110]*z** 5,%c6[110]*z** 6,%c7[110]*z** 7,
               %c8[110]*z** 8,%c9[110]*z** 9,%ca[110]*z**10,%cb[110]*z**11])
      (poly z [%a0[110]*z** 0,%a1[110]*z** 1,%a2[110]*z** 2,%a3[110]*z** 3,
               %a4[110]*z** 4,%a5[110]*z** 5,%a6[110]*z** 6,%a7[110]*z** 7,
               %a8[110]*z** 8,%a9[110]*z** 9,%aa[110]*z**10,%ab[110]*z**11] *
       poly z [%b0[110]*z** 0,%b1[110]*z** 1,%b2[110]*z** 2,%b3[110]*z** 3,
               %b4[110]*z** 4,%b5[110]*z** 5,%b6[110]*z** 6,%b7[110]*z** 7,
               %b8[110]*z** 8,%b9[110]*z** 9,%ba[110]*z**10,%bb[110]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[111]*z** 0,%c1[111]*z** 1,%c2[111]*z** 2,%c3[111]*z** 3,
               %c4[111]*z** 4,%c5[111]*z** 5,%c6[111]*z** 6,%c7[111]*z** 7,
               %c8[111]*z** 8,%c9[111]*z** 9,%ca[111]*z**10,%cb[111]*z**11])
      (poly z [%a0[111]*z** 0,%a1[111]*z** 1,%a2[111]*z** 2,%a3[111]*z** 3,
               %a4[111]*z** 4,%a5[111]*z** 5,%a6[111]*z** 6,%a7[111]*z** 7,
               %a8[111]*z** 8,%a9[111]*z** 9,%aa[111]*z**10,%ab[111]*z**11] *
       poly z [%b0[111]*z** 0,%b1[111]*z** 1,%b2[111]*z** 2,%b3[111]*z** 3,
               %b4[111]*z** 4,%b5[111]*z** 5,%b6[111]*z** 6,%b7[111]*z** 7,
               %b8[111]*z** 8,%b9[111]*z** 9,%ba[111]*z**10,%bb[111]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[112]*z** 0,%c1[112]*z** 1,%c2[112]*z** 2,%c3[112]*z** 3,
               %c4[112]*z** 4,%c5[112]*z** 5,%c6[112]*z** 6,%c7[112]*z** 7,
               %c8[112]*z** 8,%c9[112]*z** 9,%ca[112]*z**10,%cb[112]*z**11])
      (poly z [%a0[112]*z** 0,%a1[112]*z** 1,%a2[112]*z** 2,%a3[112]*z** 3,
               %a4[112]*z** 4,%a5[112]*z** 5,%a6[112]*z** 6,%a7[112]*z** 7,
               %a8[112]*z** 8,%a9[112]*z** 9,%aa[112]*z**10,%ab[112]*z**11] *
       poly z [%b0[112]*z** 0,%b1[112]*z** 1,%b2[112]*z** 2,%b3[112]*z** 3,
               %b4[112]*z** 4,%b5[112]*z** 5,%b6[112]*z** 6,%b7[112]*z** 7,
               %b8[112]*z** 8,%b9[112]*z** 9,%ba[112]*z**10,%bb[112]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[113]*z** 0,%c1[113]*z** 1,%c2[113]*z** 2,%c3[113]*z** 3,
               %c4[113]*z** 4,%c5[113]*z** 5,%c6[113]*z** 6,%c7[113]*z** 7,
               %c8[113]*z** 8,%c9[113]*z** 9,%ca[113]*z**10,%cb[113]*z**11])
      (poly z [%a0[113]*z** 0,%a1[113]*z** 1,%a2[113]*z** 2,%a3[113]*z** 3,
               %a4[113]*z** 4,%a5[113]*z** 5,%a6[113]*z** 6,%a7[113]*z** 7,
               %a8[113]*z** 8,%a9[113]*z** 9,%aa[113]*z**10,%ab[113]*z**11] *
       poly z [%b0[113]*z** 0,%b1[113]*z** 1,%b2[113]*z** 2,%b3[113]*z** 3,
               %b4[113]*z** 4,%b5[113]*z** 5,%b6[113]*z** 6,%b7[113]*z** 7,
               %b8[113]*z** 8,%b9[113]*z** 9,%ba[113]*z**10,%bb[113]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[114]*z** 0,%c1[114]*z** 1,%c2[114]*z** 2,%c3[114]*z** 3,
               %c4[114]*z** 4,%c5[114]*z** 5,%c6[114]*z** 6,%c7[114]*z** 7,
               %c8[114]*z** 8,%c9[114]*z** 9,%ca[114]*z**10,%cb[114]*z**11])
      (poly z [%a0[114]*z** 0,%a1[114]*z** 1,%a2[114]*z** 2,%a3[114]*z** 3,
               %a4[114]*z** 4,%a5[114]*z** 5,%a6[114]*z** 6,%a7[114]*z** 7,
               %a8[114]*z** 8,%a9[114]*z** 9,%aa[114]*z**10,%ab[114]*z**11] *
       poly z [%b0[114]*z** 0,%b1[114]*z** 1,%b2[114]*z** 2,%b3[114]*z** 3,
               %b4[114]*z** 4,%b5[114]*z** 5,%b6[114]*z** 6,%b7[114]*z** 7,
               %b8[114]*z** 8,%b9[114]*z** 9,%ba[114]*z**10,%bb[114]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[115]*z** 0,%c1[115]*z** 1,%c2[115]*z** 2,%c3[115]*z** 3,
               %c4[115]*z** 4,%c5[115]*z** 5,%c6[115]*z** 6,%c7[115]*z** 7,
               %c8[115]*z** 8,%c9[115]*z** 9,%ca[115]*z**10,%cb[115]*z**11])
      (poly z [%a0[115]*z** 0,%a1[115]*z** 1,%a2[115]*z** 2,%a3[115]*z** 3,
               %a4[115]*z** 4,%a5[115]*z** 5,%a6[115]*z** 6,%a7[115]*z** 7,
               %a8[115]*z** 8,%a9[115]*z** 9,%aa[115]*z**10,%ab[115]*z**11] *
       poly z [%b0[115]*z** 0,%b1[115]*z** 1,%b2[115]*z** 2,%b3[115]*z** 3,
               %b4[115]*z** 4,%b5[115]*z** 5,%b6[115]*z** 6,%b7[115]*z** 7,
               %b8[115]*z** 8,%b9[115]*z** 9,%ba[115]*z**10,%bb[115]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[116]*z** 0,%c1[116]*z** 1,%c2[116]*z** 2,%c3[116]*z** 3,
               %c4[116]*z** 4,%c5[116]*z** 5,%c6[116]*z** 6,%c7[116]*z** 7,
               %c8[116]*z** 8,%c9[116]*z** 9,%ca[116]*z**10,%cb[116]*z**11])
      (poly z [%a0[116]*z** 0,%a1[116]*z** 1,%a2[116]*z** 2,%a3[116]*z** 3,
               %a4[116]*z** 4,%a5[116]*z** 5,%a6[116]*z** 6,%a7[116]*z** 7,
               %a8[116]*z** 8,%a9[116]*z** 9,%aa[116]*z**10,%ab[116]*z**11] *
       poly z [%b0[116]*z** 0,%b1[116]*z** 1,%b2[116]*z** 2,%b3[116]*z** 3,
               %b4[116]*z** 4,%b5[116]*z** 5,%b6[116]*z** 6,%b7[116]*z** 7,
               %b8[116]*z** 8,%b9[116]*z** 9,%ba[116]*z**10,%bb[116]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[117]*z** 0,%c1[117]*z** 1,%c2[117]*z** 2,%c3[117]*z** 3,
               %c4[117]*z** 4,%c5[117]*z** 5,%c6[117]*z** 6,%c7[117]*z** 7,
               %c8[117]*z** 8,%c9[117]*z** 9,%ca[117]*z**10,%cb[117]*z**11])
      (poly z [%a0[117]*z** 0,%a1[117]*z** 1,%a2[117]*z** 2,%a3[117]*z** 3,
               %a4[117]*z** 4,%a5[117]*z** 5,%a6[117]*z** 6,%a7[117]*z** 7,
               %a8[117]*z** 8,%a9[117]*z** 9,%aa[117]*z**10,%ab[117]*z**11] *
       poly z [%b0[117]*z** 0,%b1[117]*z** 1,%b2[117]*z** 2,%b3[117]*z** 3,
               %b4[117]*z** 4,%b5[117]*z** 5,%b6[117]*z** 6,%b7[117]*z** 7,
               %b8[117]*z** 8,%b9[117]*z** 9,%ba[117]*z**10,%bb[117]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[118]*z** 0,%c1[118]*z** 1,%c2[118]*z** 2,%c3[118]*z** 3,
               %c4[118]*z** 4,%c5[118]*z** 5,%c6[118]*z** 6,%c7[118]*z** 7,
               %c8[118]*z** 8,%c9[118]*z** 9,%ca[118]*z**10,%cb[118]*z**11])
      (poly z [%a0[118]*z** 0,%a1[118]*z** 1,%a2[118]*z** 2,%a3[118]*z** 3,
               %a4[118]*z** 4,%a5[118]*z** 5,%a6[118]*z** 6,%a7[118]*z** 7,
               %a8[118]*z** 8,%a9[118]*z** 9,%aa[118]*z**10,%ab[118]*z**11] *
       poly z [%b0[118]*z** 0,%b1[118]*z** 1,%b2[118]*z** 2,%b3[118]*z** 3,
               %b4[118]*z** 4,%b5[118]*z** 5,%b6[118]*z** 6,%b7[118]*z** 7,
               %b8[118]*z** 8,%b9[118]*z** 9,%ba[118]*z**10,%bb[118]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[119]*z** 0,%c1[119]*z** 1,%c2[119]*z** 2,%c3[119]*z** 3,
               %c4[119]*z** 4,%c5[119]*z** 5,%c6[119]*z** 6,%c7[119]*z** 7,
               %c8[119]*z** 8,%c9[119]*z** 9,%ca[119]*z**10,%cb[119]*z**11])
      (poly z [%a0[119]*z** 0,%a1[119]*z** 1,%a2[119]*z** 2,%a3[119]*z** 3,
               %a4[119]*z** 4,%a5[119]*z** 5,%a6[119]*z** 6,%a7[119]*z** 7,
               %a8[119]*z** 8,%a9[119]*z** 9,%aa[119]*z**10,%ab[119]*z**11] *
       poly z [%b0[119]*z** 0,%b1[119]*z** 1,%b2[119]*z** 2,%b3[119]*z** 3,
               %b4[119]*z** 4,%b5[119]*z** 5,%b6[119]*z** 6,%b7[119]*z** 7,
               %b8[119]*z** 8,%b9[119]*z** 9,%ba[119]*z**10,%bb[119]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[120]*z** 0,%c1[120]*z** 1,%c2[120]*z** 2,%c3[120]*z** 3,
               %c4[120]*z** 4,%c5[120]*z** 5,%c6[120]*z** 6,%c7[120]*z** 7,
               %c8[120]*z** 8,%c9[120]*z** 9,%ca[120]*z**10,%cb[120]*z**11])
      (poly z [%a0[120]*z** 0,%a1[120]*z** 1,%a2[120]*z** 2,%a3[120]*z** 3,
               %a4[120]*z** 4,%a5[120]*z** 5,%a6[120]*z** 6,%a7[120]*z** 7,
               %a8[120]*z** 8,%a9[120]*z** 9,%aa[120]*z**10,%ab[120]*z**11] *
       poly z [%b0[120]*z** 0,%b1[120]*z** 1,%b2[120]*z** 2,%b3[120]*z** 3,
               %b4[120]*z** 4,%b5[120]*z** 5,%b6[120]*z** 6,%b7[120]*z** 7,
               %b8[120]*z** 8,%b9[120]*z** 9,%ba[120]*z**10,%bb[120]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[121]*z** 0,%c1[121]*z** 1,%c2[121]*z** 2,%c3[121]*z** 3,
               %c4[121]*z** 4,%c5[121]*z** 5,%c6[121]*z** 6,%c7[121]*z** 7,
               %c8[121]*z** 8,%c9[121]*z** 9,%ca[121]*z**10,%cb[121]*z**11])
      (poly z [%a0[121]*z** 0,%a1[121]*z** 1,%a2[121]*z** 2,%a3[121]*z** 3,
               %a4[121]*z** 4,%a5[121]*z** 5,%a6[121]*z** 6,%a7[121]*z** 7,
               %a8[121]*z** 8,%a9[121]*z** 9,%aa[121]*z**10,%ab[121]*z**11] *
       poly z [%b0[121]*z** 0,%b1[121]*z** 1,%b2[121]*z** 2,%b3[121]*z** 3,
               %b4[121]*z** 4,%b5[121]*z** 5,%b6[121]*z** 6,%b7[121]*z** 7,
               %b8[121]*z** 8,%b9[121]*z** 9,%ba[121]*z**10,%bb[121]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[122]*z** 0,%c1[122]*z** 1,%c2[122]*z** 2,%c3[122]*z** 3,
               %c4[122]*z** 4,%c5[122]*z** 5,%c6[122]*z** 6,%c7[122]*z** 7,
               %c8[122]*z** 8,%c9[122]*z** 9,%ca[122]*z**10,%cb[122]*z**11])
      (poly z [%a0[122]*z** 0,%a1[122]*z** 1,%a2[122]*z** 2,%a3[122]*z** 3,
               %a4[122]*z** 4,%a5[122]*z** 5,%a6[122]*z** 6,%a7[122]*z** 7,
               %a8[122]*z** 8,%a9[122]*z** 9,%aa[122]*z**10,%ab[122]*z**11] *
       poly z [%b0[122]*z** 0,%b1[122]*z** 1,%b2[122]*z** 2,%b3[122]*z** 3,
               %b4[122]*z** 4,%b5[122]*z** 5,%b6[122]*z** 6,%b7[122]*z** 7,
               %b8[122]*z** 8,%b9[122]*z** 9,%ba[122]*z**10,%bb[122]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[123]*z** 0,%c1[123]*z** 1,%c2[123]*z** 2,%c3[123]*z** 3,
               %c4[123]*z** 4,%c5[123]*z** 5,%c6[123]*z** 6,%c7[123]*z** 7,
               %c8[123]*z** 8,%c9[123]*z** 9,%ca[123]*z**10,%cb[123]*z**11])
      (poly z [%a0[123]*z** 0,%a1[123]*z** 1,%a2[123]*z** 2,%a3[123]*z** 3,
               %a4[123]*z** 4,%a5[123]*z** 5,%a6[123]*z** 6,%a7[123]*z** 7,
               %a8[123]*z** 8,%a9[123]*z** 9,%aa[123]*z**10,%ab[123]*z**11] *
       poly z [%b0[123]*z** 0,%b1[123]*z** 1,%b2[123]*z** 2,%b3[123]*z** 3,
               %b4[123]*z** 4,%b5[123]*z** 5,%b6[123]*z** 6,%b7[123]*z** 7,
               %b8[123]*z** 8,%b9[123]*z** 9,%ba[123]*z**10,%bb[123]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[124]*z** 0,%c1[124]*z** 1,%c2[124]*z** 2,%c3[124]*z** 3,
               %c4[124]*z** 4,%c5[124]*z** 5,%c6[124]*z** 6,%c7[124]*z** 7,
               %c8[124]*z** 8,%c9[124]*z** 9,%ca[124]*z**10,%cb[124]*z**11])
      (poly z [%a0[124]*z** 0,%a1[124]*z** 1,%a2[124]*z** 2,%a3[124]*z** 3,
               %a4[124]*z** 4,%a5[124]*z** 5,%a6[124]*z** 6,%a7[124]*z** 7,
               %a8[124]*z** 8,%a9[124]*z** 9,%aa[124]*z**10,%ab[124]*z**11] *
       poly z [%b0[124]*z** 0,%b1[124]*z** 1,%b2[124]*z** 2,%b3[124]*z** 3,
               %b4[124]*z** 4,%b5[124]*z** 5,%b6[124]*z** 6,%b7[124]*z** 7,
               %b8[124]*z** 8,%b9[124]*z** 9,%ba[124]*z**10,%bb[124]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[125]*z** 0,%c1[125]*z** 1,%c2[125]*z** 2,%c3[125]*z** 3,
               %c4[125]*z** 4,%c5[125]*z** 5,%c6[125]*z** 6,%c7[125]*z** 7,
               %c8[125]*z** 8,%c9[125]*z** 9,%ca[125]*z**10,%cb[125]*z**11])
      (poly z [%a0[125]*z** 0,%a1[125]*z** 1,%a2[125]*z** 2,%a3[125]*z** 3,
               %a4[125]*z** 4,%a5[125]*z** 5,%a6[125]*z** 6,%a7[125]*z** 7,
               %a8[125]*z** 8,%a9[125]*z** 9,%aa[125]*z**10,%ab[125]*z**11] *
       poly z [%b0[125]*z** 0,%b1[125]*z** 1,%b2[125]*z** 2,%b3[125]*z** 3,
               %b4[125]*z** 4,%b5[125]*z** 5,%b6[125]*z** 6,%b7[125]*z** 7,
               %b8[125]*z** 8,%b9[125]*z** 9,%ba[125]*z**10,%bb[125]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[126]*z** 0,%c1[126]*z** 1,%c2[126]*z** 2,%c3[126]*z** 3,
               %c4[126]*z** 4,%c5[126]*z** 5,%c6[126]*z** 6,%c7[126]*z** 7,
               %c8[126]*z** 8,%c9[126]*z** 9,%ca[126]*z**10,%cb[126]*z**11])
      (poly z [%a0[126]*z** 0,%a1[126]*z** 1,%a2[126]*z** 2,%a3[126]*z** 3,
               %a4[126]*z** 4,%a5[126]*z** 5,%a6[126]*z** 6,%a7[126]*z** 7,
               %a8[126]*z** 8,%a9[126]*z** 9,%aa[126]*z**10,%ab[126]*z**11] *
       poly z [%b0[126]*z** 0,%b1[126]*z** 1,%b2[126]*z** 2,%b3[126]*z** 3,
               %b4[126]*z** 4,%b5[126]*z** 5,%b6[126]*z** 6,%b7[126]*z** 7,
               %b8[126]*z** 8,%b9[126]*z** 9,%ba[126]*z**10,%bb[126]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[127]*z** 0,%c1[127]*z** 1,%c2[127]*z** 2,%c3[127]*z** 3,
               %c4[127]*z** 4,%c5[127]*z** 5,%c6[127]*z** 6,%c7[127]*z** 7,
               %c8[127]*z** 8,%c9[127]*z** 9,%ca[127]*z**10,%cb[127]*z**11])
      (poly z [%a0[127]*z** 0,%a1[127]*z** 1,%a2[127]*z** 2,%a3[127]*z** 3,
               %a4[127]*z** 4,%a5[127]*z** 5,%a6[127]*z** 6,%a7[127]*z** 7,
               %a8[127]*z** 8,%a9[127]*z** 9,%aa[127]*z**10,%ab[127]*z**11] *
       poly z [%b0[127]*z** 0,%b1[127]*z** 1,%b2[127]*z** 2,%b3[127]*z** 3,
               %b4[127]*z** 4,%b5[127]*z** 5,%b6[127]*z** 6,%b7[127]*z** 7,
               %b8[127]*z** 8,%b9[127]*z** 9,%ba[127]*z**10,%bb[127]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[128]*z** 0,%c1[128]*z** 1,%c2[128]*z** 2,%c3[128]*z** 3,
               %c4[128]*z** 4,%c5[128]*z** 5,%c6[128]*z** 6,%c7[128]*z** 7,
               %c8[128]*z** 8,%c9[128]*z** 9,%ca[128]*z**10,%cb[128]*z**11])
      (poly z [%a0[128]*z** 0,%a1[128]*z** 1,%a2[128]*z** 2,%a3[128]*z** 3,
               %a4[128]*z** 4,%a5[128]*z** 5,%a6[128]*z** 6,%a7[128]*z** 7,
               %a8[128]*z** 8,%a9[128]*z** 9,%aa[128]*z**10,%ab[128]*z**11] *
       poly z [%b0[128]*z** 0,%b1[128]*z** 1,%b2[128]*z** 2,%b3[128]*z** 3,
               %b4[128]*z** 4,%b5[128]*z** 5,%b6[128]*z** 6,%b7[128]*z** 7,
               %b8[128]*z** 8,%b9[128]*z** 9,%ba[128]*z**10,%bb[128]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[129]*z** 0,%c1[129]*z** 1,%c2[129]*z** 2,%c3[129]*z** 3,
               %c4[129]*z** 4,%c5[129]*z** 5,%c6[129]*z** 6,%c7[129]*z** 7,
               %c8[129]*z** 8,%c9[129]*z** 9,%ca[129]*z**10,%cb[129]*z**11])
      (poly z [%a0[129]*z** 0,%a1[129]*z** 1,%a2[129]*z** 2,%a3[129]*z** 3,
               %a4[129]*z** 4,%a5[129]*z** 5,%a6[129]*z** 6,%a7[129]*z** 7,
               %a8[129]*z** 8,%a9[129]*z** 9,%aa[129]*z**10,%ab[129]*z**11] *
       poly z [%b0[129]*z** 0,%b1[129]*z** 1,%b2[129]*z** 2,%b3[129]*z** 3,
               %b4[129]*z** 4,%b5[129]*z** 5,%b6[129]*z** 6,%b7[129]*z** 7,
               %b8[129]*z** 8,%b9[129]*z** 9,%ba[129]*z**10,%bb[129]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[130]*z** 0,%c1[130]*z** 1,%c2[130]*z** 2,%c3[130]*z** 3,
               %c4[130]*z** 4,%c5[130]*z** 5,%c6[130]*z** 6,%c7[130]*z** 7,
               %c8[130]*z** 8,%c9[130]*z** 9,%ca[130]*z**10,%cb[130]*z**11])
      (poly z [%a0[130]*z** 0,%a1[130]*z** 1,%a2[130]*z** 2,%a3[130]*z** 3,
               %a4[130]*z** 4,%a5[130]*z** 5,%a6[130]*z** 6,%a7[130]*z** 7,
               %a8[130]*z** 8,%a9[130]*z** 9,%aa[130]*z**10,%ab[130]*z**11] *
       poly z [%b0[130]*z** 0,%b1[130]*z** 1,%b2[130]*z** 2,%b3[130]*z** 3,
               %b4[130]*z** 4,%b5[130]*z** 5,%b6[130]*z** 6,%b7[130]*z** 7,
               %b8[130]*z** 8,%b9[130]*z** 9,%ba[130]*z**10,%bb[130]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[131]*z** 0,%c1[131]*z** 1,%c2[131]*z** 2,%c3[131]*z** 3,
               %c4[131]*z** 4,%c5[131]*z** 5,%c6[131]*z** 6,%c7[131]*z** 7,
               %c8[131]*z** 8,%c9[131]*z** 9,%ca[131]*z**10,%cb[131]*z**11])
      (poly z [%a0[131]*z** 0,%a1[131]*z** 1,%a2[131]*z** 2,%a3[131]*z** 3,
               %a4[131]*z** 4,%a5[131]*z** 5,%a6[131]*z** 6,%a7[131]*z** 7,
               %a8[131]*z** 8,%a9[131]*z** 9,%aa[131]*z**10,%ab[131]*z**11] *
       poly z [%b0[131]*z** 0,%b1[131]*z** 1,%b2[131]*z** 2,%b3[131]*z** 3,
               %b4[131]*z** 4,%b5[131]*z** 5,%b6[131]*z** 6,%b7[131]*z** 7,
               %b8[131]*z** 8,%b9[131]*z** 9,%ba[131]*z**10,%bb[131]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[132]*z** 0,%c1[132]*z** 1,%c2[132]*z** 2,%c3[132]*z** 3,
               %c4[132]*z** 4,%c5[132]*z** 5,%c6[132]*z** 6,%c7[132]*z** 7,
               %c8[132]*z** 8,%c9[132]*z** 9,%ca[132]*z**10,%cb[132]*z**11])
      (poly z [%a0[132]*z** 0,%a1[132]*z** 1,%a2[132]*z** 2,%a3[132]*z** 3,
               %a4[132]*z** 4,%a5[132]*z** 5,%a6[132]*z** 6,%a7[132]*z** 7,
               %a8[132]*z** 8,%a9[132]*z** 9,%aa[132]*z**10,%ab[132]*z**11] *
       poly z [%b0[132]*z** 0,%b1[132]*z** 1,%b2[132]*z** 2,%b3[132]*z** 3,
               %b4[132]*z** 4,%b5[132]*z** 5,%b6[132]*z** 6,%b7[132]*z** 7,
               %b8[132]*z** 8,%b9[132]*z** 9,%ba[132]*z**10,%bb[132]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[133]*z** 0,%c1[133]*z** 1,%c2[133]*z** 2,%c3[133]*z** 3,
               %c4[133]*z** 4,%c5[133]*z** 5,%c6[133]*z** 6,%c7[133]*z** 7,
               %c8[133]*z** 8,%c9[133]*z** 9,%ca[133]*z**10,%cb[133]*z**11])
      (poly z [%a0[133]*z** 0,%a1[133]*z** 1,%a2[133]*z** 2,%a3[133]*z** 3,
               %a4[133]*z** 4,%a5[133]*z** 5,%a6[133]*z** 6,%a7[133]*z** 7,
               %a8[133]*z** 8,%a9[133]*z** 9,%aa[133]*z**10,%ab[133]*z**11] *
       poly z [%b0[133]*z** 0,%b1[133]*z** 1,%b2[133]*z** 2,%b3[133]*z** 3,
               %b4[133]*z** 4,%b5[133]*z** 5,%b6[133]*z** 6,%b7[133]*z** 7,
               %b8[133]*z** 8,%b9[133]*z** 9,%ba[133]*z**10,%bb[133]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[134]*z** 0,%c1[134]*z** 1,%c2[134]*z** 2,%c3[134]*z** 3,
               %c4[134]*z** 4,%c5[134]*z** 5,%c6[134]*z** 6,%c7[134]*z** 7,
               %c8[134]*z** 8,%c9[134]*z** 9,%ca[134]*z**10,%cb[134]*z**11])
      (poly z [%a0[134]*z** 0,%a1[134]*z** 1,%a2[134]*z** 2,%a3[134]*z** 3,
               %a4[134]*z** 4,%a5[134]*z** 5,%a6[134]*z** 6,%a7[134]*z** 7,
               %a8[134]*z** 8,%a9[134]*z** 9,%aa[134]*z**10,%ab[134]*z**11] *
       poly z [%b0[134]*z** 0,%b1[134]*z** 1,%b2[134]*z** 2,%b3[134]*z** 3,
               %b4[134]*z** 4,%b5[134]*z** 5,%b6[134]*z** 6,%b7[134]*z** 7,
               %b8[134]*z** 8,%b9[134]*z** 9,%ba[134]*z**10,%bb[134]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[135]*z** 0,%c1[135]*z** 1,%c2[135]*z** 2,%c3[135]*z** 3,
               %c4[135]*z** 4,%c5[135]*z** 5,%c6[135]*z** 6,%c7[135]*z** 7,
               %c8[135]*z** 8,%c9[135]*z** 9,%ca[135]*z**10,%cb[135]*z**11])
      (poly z [%a0[135]*z** 0,%a1[135]*z** 1,%a2[135]*z** 2,%a3[135]*z** 3,
               %a4[135]*z** 4,%a5[135]*z** 5,%a6[135]*z** 6,%a7[135]*z** 7,
               %a8[135]*z** 8,%a9[135]*z** 9,%aa[135]*z**10,%ab[135]*z**11] *
       poly z [%b0[135]*z** 0,%b1[135]*z** 1,%b2[135]*z** 2,%b3[135]*z** 3,
               %b4[135]*z** 4,%b5[135]*z** 5,%b6[135]*z** 6,%b7[135]*z** 7,
               %b8[135]*z** 8,%b9[135]*z** 9,%ba[135]*z**10,%bb[135]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[136]*z** 0,%c1[136]*z** 1,%c2[136]*z** 2,%c3[136]*z** 3,
               %c4[136]*z** 4,%c5[136]*z** 5,%c6[136]*z** 6,%c7[136]*z** 7,
               %c8[136]*z** 8,%c9[136]*z** 9,%ca[136]*z**10,%cb[136]*z**11])
      (poly z [%a0[136]*z** 0,%a1[136]*z** 1,%a2[136]*z** 2,%a3[136]*z** 3,
               %a4[136]*z** 4,%a5[136]*z** 5,%a6[136]*z** 6,%a7[136]*z** 7,
               %a8[136]*z** 8,%a9[136]*z** 9,%aa[136]*z**10,%ab[136]*z**11] *
       poly z [%b0[136]*z** 0,%b1[136]*z** 1,%b2[136]*z** 2,%b3[136]*z** 3,
               %b4[136]*z** 4,%b5[136]*z** 5,%b6[136]*z** 6,%b7[136]*z** 7,
               %b8[136]*z** 8,%b9[136]*z** 9,%ba[136]*z**10,%bb[136]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[137]*z** 0,%c1[137]*z** 1,%c2[137]*z** 2,%c3[137]*z** 3,
               %c4[137]*z** 4,%c5[137]*z** 5,%c6[137]*z** 6,%c7[137]*z** 7,
               %c8[137]*z** 8,%c9[137]*z** 9,%ca[137]*z**10,%cb[137]*z**11])
      (poly z [%a0[137]*z** 0,%a1[137]*z** 1,%a2[137]*z** 2,%a3[137]*z** 3,
               %a4[137]*z** 4,%a5[137]*z** 5,%a6[137]*z** 6,%a7[137]*z** 7,
               %a8[137]*z** 8,%a9[137]*z** 9,%aa[137]*z**10,%ab[137]*z**11] *
       poly z [%b0[137]*z** 0,%b1[137]*z** 1,%b2[137]*z** 2,%b3[137]*z** 3,
               %b4[137]*z** 4,%b5[137]*z** 5,%b6[137]*z** 6,%b7[137]*z** 7,
               %b8[137]*z** 8,%b9[137]*z** 9,%ba[137]*z**10,%bb[137]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[138]*z** 0,%c1[138]*z** 1,%c2[138]*z** 2,%c3[138]*z** 3,
               %c4[138]*z** 4,%c5[138]*z** 5,%c6[138]*z** 6,%c7[138]*z** 7,
               %c8[138]*z** 8,%c9[138]*z** 9,%ca[138]*z**10,%cb[138]*z**11])
      (poly z [%a0[138]*z** 0,%a1[138]*z** 1,%a2[138]*z** 2,%a3[138]*z** 3,
               %a4[138]*z** 4,%a5[138]*z** 5,%a6[138]*z** 6,%a7[138]*z** 7,
               %a8[138]*z** 8,%a9[138]*z** 9,%aa[138]*z**10,%ab[138]*z**11] *
       poly z [%b0[138]*z** 0,%b1[138]*z** 1,%b2[138]*z** 2,%b3[138]*z** 3,
               %b4[138]*z** 4,%b5[138]*z** 5,%b6[138]*z** 6,%b7[138]*z** 7,
               %b8[138]*z** 8,%b9[138]*z** 9,%ba[138]*z**10,%bb[138]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[139]*z** 0,%c1[139]*z** 1,%c2[139]*z** 2,%c3[139]*z** 3,
               %c4[139]*z** 4,%c5[139]*z** 5,%c6[139]*z** 6,%c7[139]*z** 7,
               %c8[139]*z** 8,%c9[139]*z** 9,%ca[139]*z**10,%cb[139]*z**11])
      (poly z [%a0[139]*z** 0,%a1[139]*z** 1,%a2[139]*z** 2,%a3[139]*z** 3,
               %a4[139]*z** 4,%a5[139]*z** 5,%a6[139]*z** 6,%a7[139]*z** 7,
               %a8[139]*z** 8,%a9[139]*z** 9,%aa[139]*z**10,%ab[139]*z**11] *
       poly z [%b0[139]*z** 0,%b1[139]*z** 1,%b2[139]*z** 2,%b3[139]*z** 3,
               %b4[139]*z** 4,%b5[139]*z** 5,%b6[139]*z** 6,%b7[139]*z** 7,
               %b8[139]*z** 8,%b9[139]*z** 9,%ba[139]*z**10,%bb[139]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[140]*z** 0,%c1[140]*z** 1,%c2[140]*z** 2,%c3[140]*z** 3,
               %c4[140]*z** 4,%c5[140]*z** 5,%c6[140]*z** 6,%c7[140]*z** 7,
               %c8[140]*z** 8,%c9[140]*z** 9,%ca[140]*z**10,%cb[140]*z**11])
      (poly z [%a0[140]*z** 0,%a1[140]*z** 1,%a2[140]*z** 2,%a3[140]*z** 3,
               %a4[140]*z** 4,%a5[140]*z** 5,%a6[140]*z** 6,%a7[140]*z** 7,
               %a8[140]*z** 8,%a9[140]*z** 9,%aa[140]*z**10,%ab[140]*z**11] *
       poly z [%b0[140]*z** 0,%b1[140]*z** 1,%b2[140]*z** 2,%b3[140]*z** 3,
               %b4[140]*z** 4,%b5[140]*z** 5,%b6[140]*z** 6,%b7[140]*z** 7,
               %b8[140]*z** 8,%b9[140]*z** 9,%ba[140]*z**10,%bb[140]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[141]*z** 0,%c1[141]*z** 1,%c2[141]*z** 2,%c3[141]*z** 3,
               %c4[141]*z** 4,%c5[141]*z** 5,%c6[141]*z** 6,%c7[141]*z** 7,
               %c8[141]*z** 8,%c9[141]*z** 9,%ca[141]*z**10,%cb[141]*z**11])
      (poly z [%a0[141]*z** 0,%a1[141]*z** 1,%a2[141]*z** 2,%a3[141]*z** 3,
               %a4[141]*z** 4,%a5[141]*z** 5,%a6[141]*z** 6,%a7[141]*z** 7,
               %a8[141]*z** 8,%a9[141]*z** 9,%aa[141]*z**10,%ab[141]*z**11] *
       poly z [%b0[141]*z** 0,%b1[141]*z** 1,%b2[141]*z** 2,%b3[141]*z** 3,
               %b4[141]*z** 4,%b5[141]*z** 5,%b6[141]*z** 6,%b7[141]*z** 7,
               %b8[141]*z** 8,%b9[141]*z** 9,%ba[141]*z**10,%bb[141]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[142]*z** 0,%c1[142]*z** 1,%c2[142]*z** 2,%c3[142]*z** 3,
               %c4[142]*z** 4,%c5[142]*z** 5,%c6[142]*z** 6,%c7[142]*z** 7,
               %c8[142]*z** 8,%c9[142]*z** 9,%ca[142]*z**10,%cb[142]*z**11])
      (poly z [%a0[142]*z** 0,%a1[142]*z** 1,%a2[142]*z** 2,%a3[142]*z** 3,
               %a4[142]*z** 4,%a5[142]*z** 5,%a6[142]*z** 6,%a7[142]*z** 7,
               %a8[142]*z** 8,%a9[142]*z** 9,%aa[142]*z**10,%ab[142]*z**11] *
       poly z [%b0[142]*z** 0,%b1[142]*z** 1,%b2[142]*z** 2,%b3[142]*z** 3,
               %b4[142]*z** 4,%b5[142]*z** 5,%b6[142]*z** 6,%b7[142]*z** 7,
               %b8[142]*z** 8,%b9[142]*z** 9,%ba[142]*z**10,%bb[142]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[143]*z** 0,%c1[143]*z** 1,%c2[143]*z** 2,%c3[143]*z** 3,
               %c4[143]*z** 4,%c5[143]*z** 5,%c6[143]*z** 6,%c7[143]*z** 7,
               %c8[143]*z** 8,%c9[143]*z** 9,%ca[143]*z**10,%cb[143]*z**11])
      (poly z [%a0[143]*z** 0,%a1[143]*z** 1,%a2[143]*z** 2,%a3[143]*z** 3,
               %a4[143]*z** 4,%a5[143]*z** 5,%a6[143]*z** 6,%a7[143]*z** 7,
               %a8[143]*z** 8,%a9[143]*z** 9,%aa[143]*z**10,%ab[143]*z**11] *
       poly z [%b0[143]*z** 0,%b1[143]*z** 1,%b2[143]*z** 2,%b3[143]*z** 3,
               %b4[143]*z** 4,%b5[143]*z** 5,%b6[143]*z** 6,%b7[143]*z** 7,
               %b8[143]*z** 8,%b9[143]*z** 9,%ba[143]*z**10,%bb[143]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[144]*z** 0,%c1[144]*z** 1,%c2[144]*z** 2,%c3[144]*z** 3,
               %c4[144]*z** 4,%c5[144]*z** 5,%c6[144]*z** 6,%c7[144]*z** 7,
               %c8[144]*z** 8,%c9[144]*z** 9,%ca[144]*z**10,%cb[144]*z**11])
      (poly z [%a0[144]*z** 0,%a1[144]*z** 1,%a2[144]*z** 2,%a3[144]*z** 3,
               %a4[144]*z** 4,%a5[144]*z** 5,%a6[144]*z** 6,%a7[144]*z** 7,
               %a8[144]*z** 8,%a9[144]*z** 9,%aa[144]*z**10,%ab[144]*z**11] *
       poly z [%b0[144]*z** 0,%b1[144]*z** 1,%b2[144]*z** 2,%b3[144]*z** 3,
               %b4[144]*z** 4,%b5[144]*z** 5,%b6[144]*z** 6,%b7[144]*z** 7,
               %b8[144]*z** 8,%b9[144]*z** 9,%ba[144]*z**10,%bb[144]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[145]*z** 0,%c1[145]*z** 1,%c2[145]*z** 2,%c3[145]*z** 3,
               %c4[145]*z** 4,%c5[145]*z** 5,%c6[145]*z** 6,%c7[145]*z** 7,
               %c8[145]*z** 8,%c9[145]*z** 9,%ca[145]*z**10,%cb[145]*z**11])
      (poly z [%a0[145]*z** 0,%a1[145]*z** 1,%a2[145]*z** 2,%a3[145]*z** 3,
               %a4[145]*z** 4,%a5[145]*z** 5,%a6[145]*z** 6,%a7[145]*z** 7,
               %a8[145]*z** 8,%a9[145]*z** 9,%aa[145]*z**10,%ab[145]*z**11] *
       poly z [%b0[145]*z** 0,%b1[145]*z** 1,%b2[145]*z** 2,%b3[145]*z** 3,
               %b4[145]*z** 4,%b5[145]*z** 5,%b6[145]*z** 6,%b7[145]*z** 7,
               %b8[145]*z** 8,%b9[145]*z** 9,%ba[145]*z**10,%bb[145]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[146]*z** 0,%c1[146]*z** 1,%c2[146]*z** 2,%c3[146]*z** 3,
               %c4[146]*z** 4,%c5[146]*z** 5,%c6[146]*z** 6,%c7[146]*z** 7,
               %c8[146]*z** 8,%c9[146]*z** 9,%ca[146]*z**10,%cb[146]*z**11])
      (poly z [%a0[146]*z** 0,%a1[146]*z** 1,%a2[146]*z** 2,%a3[146]*z** 3,
               %a4[146]*z** 4,%a5[146]*z** 5,%a6[146]*z** 6,%a7[146]*z** 7,
               %a8[146]*z** 8,%a9[146]*z** 9,%aa[146]*z**10,%ab[146]*z**11] *
       poly z [%b0[146]*z** 0,%b1[146]*z** 1,%b2[146]*z** 2,%b3[146]*z** 3,
               %b4[146]*z** 4,%b5[146]*z** 5,%b6[146]*z** 6,%b7[146]*z** 7,
               %b8[146]*z** 8,%b9[146]*z** 9,%ba[146]*z**10,%bb[146]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[147]*z** 0,%c1[147]*z** 1,%c2[147]*z** 2,%c3[147]*z** 3,
               %c4[147]*z** 4,%c5[147]*z** 5,%c6[147]*z** 6,%c7[147]*z** 7,
               %c8[147]*z** 8,%c9[147]*z** 9,%ca[147]*z**10,%cb[147]*z**11])
      (poly z [%a0[147]*z** 0,%a1[147]*z** 1,%a2[147]*z** 2,%a3[147]*z** 3,
               %a4[147]*z** 4,%a5[147]*z** 5,%a6[147]*z** 6,%a7[147]*z** 7,
               %a8[147]*z** 8,%a9[147]*z** 9,%aa[147]*z**10,%ab[147]*z**11] *
       poly z [%b0[147]*z** 0,%b1[147]*z** 1,%b2[147]*z** 2,%b3[147]*z** 3,
               %b4[147]*z** 4,%b5[147]*z** 5,%b6[147]*z** 6,%b7[147]*z** 7,
               %b8[147]*z** 8,%b9[147]*z** 9,%ba[147]*z**10,%bb[147]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[148]*z** 0,%c1[148]*z** 1,%c2[148]*z** 2,%c3[148]*z** 3,
               %c4[148]*z** 4,%c5[148]*z** 5,%c6[148]*z** 6,%c7[148]*z** 7,
               %c8[148]*z** 8,%c9[148]*z** 9,%ca[148]*z**10,%cb[148]*z**11])
      (poly z [%a0[148]*z** 0,%a1[148]*z** 1,%a2[148]*z** 2,%a3[148]*z** 3,
               %a4[148]*z** 4,%a5[148]*z** 5,%a6[148]*z** 6,%a7[148]*z** 7,
               %a8[148]*z** 8,%a9[148]*z** 9,%aa[148]*z**10,%ab[148]*z**11] *
       poly z [%b0[148]*z** 0,%b1[148]*z** 1,%b2[148]*z** 2,%b3[148]*z** 3,
               %b4[148]*z** 4,%b5[148]*z** 5,%b6[148]*z** 6,%b7[148]*z** 7,
               %b8[148]*z** 8,%b9[148]*z** 9,%ba[148]*z**10,%bb[148]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[149]*z** 0,%c1[149]*z** 1,%c2[149]*z** 2,%c3[149]*z** 3,
               %c4[149]*z** 4,%c5[149]*z** 5,%c6[149]*z** 6,%c7[149]*z** 7,
               %c8[149]*z** 8,%c9[149]*z** 9,%ca[149]*z**10,%cb[149]*z**11])
      (poly z [%a0[149]*z** 0,%a1[149]*z** 1,%a2[149]*z** 2,%a3[149]*z** 3,
               %a4[149]*z** 4,%a5[149]*z** 5,%a6[149]*z** 6,%a7[149]*z** 7,
               %a8[149]*z** 8,%a9[149]*z** 9,%aa[149]*z**10,%ab[149]*z**11] *
       poly z [%b0[149]*z** 0,%b1[149]*z** 1,%b2[149]*z** 2,%b3[149]*z** 3,
               %b4[149]*z** 4,%b5[149]*z** 5,%b6[149]*z** 6,%b7[149]*z** 7,
               %b8[149]*z** 8,%b9[149]*z** 9,%ba[149]*z**10,%bb[149]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[150]*z** 0,%c1[150]*z** 1,%c2[150]*z** 2,%c3[150]*z** 3,
               %c4[150]*z** 4,%c5[150]*z** 5,%c6[150]*z** 6,%c7[150]*z** 7,
               %c8[150]*z** 8,%c9[150]*z** 9,%ca[150]*z**10,%cb[150]*z**11])
      (poly z [%a0[150]*z** 0,%a1[150]*z** 1,%a2[150]*z** 2,%a3[150]*z** 3,
               %a4[150]*z** 4,%a5[150]*z** 5,%a6[150]*z** 6,%a7[150]*z** 7,
               %a8[150]*z** 8,%a9[150]*z** 9,%aa[150]*z**10,%ab[150]*z**11] *
       poly z [%b0[150]*z** 0,%b1[150]*z** 1,%b2[150]*z** 2,%b3[150]*z** 3,
               %b4[150]*z** 4,%b5[150]*z** 5,%b6[150]*z** 6,%b7[150]*z** 7,
               %b8[150]*z** 8,%b9[150]*z** 9,%ba[150]*z**10,%bb[150]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[151]*z** 0,%c1[151]*z** 1,%c2[151]*z** 2,%c3[151]*z** 3,
               %c4[151]*z** 4,%c5[151]*z** 5,%c6[151]*z** 6,%c7[151]*z** 7,
               %c8[151]*z** 8,%c9[151]*z** 9,%ca[151]*z**10,%cb[151]*z**11])
      (poly z [%a0[151]*z** 0,%a1[151]*z** 1,%a2[151]*z** 2,%a3[151]*z** 3,
               %a4[151]*z** 4,%a5[151]*z** 5,%a6[151]*z** 6,%a7[151]*z** 7,
               %a8[151]*z** 8,%a9[151]*z** 9,%aa[151]*z**10,%ab[151]*z**11] *
       poly z [%b0[151]*z** 0,%b1[151]*z** 1,%b2[151]*z** 2,%b3[151]*z** 3,
               %b4[151]*z** 4,%b5[151]*z** 5,%b6[151]*z** 6,%b7[151]*z** 7,
               %b8[151]*z** 8,%b9[151]*z** 9,%ba[151]*z**10,%bb[151]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[152]*z** 0,%c1[152]*z** 1,%c2[152]*z** 2,%c3[152]*z** 3,
               %c4[152]*z** 4,%c5[152]*z** 5,%c6[152]*z** 6,%c7[152]*z** 7,
               %c8[152]*z** 8,%c9[152]*z** 9,%ca[152]*z**10,%cb[152]*z**11])
      (poly z [%a0[152]*z** 0,%a1[152]*z** 1,%a2[152]*z** 2,%a3[152]*z** 3,
               %a4[152]*z** 4,%a5[152]*z** 5,%a6[152]*z** 6,%a7[152]*z** 7,
               %a8[152]*z** 8,%a9[152]*z** 9,%aa[152]*z**10,%ab[152]*z**11] *
       poly z [%b0[152]*z** 0,%b1[152]*z** 1,%b2[152]*z** 2,%b3[152]*z** 3,
               %b4[152]*z** 4,%b5[152]*z** 5,%b6[152]*z** 6,%b7[152]*z** 7,
               %b8[152]*z** 8,%b9[152]*z** 9,%ba[152]*z**10,%bb[152]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[153]*z** 0,%c1[153]*z** 1,%c2[153]*z** 2,%c3[153]*z** 3,
               %c4[153]*z** 4,%c5[153]*z** 5,%c6[153]*z** 6,%c7[153]*z** 7,
               %c8[153]*z** 8,%c9[153]*z** 9,%ca[153]*z**10,%cb[153]*z**11])
      (poly z [%a0[153]*z** 0,%a1[153]*z** 1,%a2[153]*z** 2,%a3[153]*z** 3,
               %a4[153]*z** 4,%a5[153]*z** 5,%a6[153]*z** 6,%a7[153]*z** 7,
               %a8[153]*z** 8,%a9[153]*z** 9,%aa[153]*z**10,%ab[153]*z**11] *
       poly z [%b0[153]*z** 0,%b1[153]*z** 1,%b2[153]*z** 2,%b3[153]*z** 3,
               %b4[153]*z** 4,%b5[153]*z** 5,%b6[153]*z** 6,%b7[153]*z** 7,
               %b8[153]*z** 8,%b9[153]*z** 9,%ba[153]*z**10,%bb[153]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[154]*z** 0,%c1[154]*z** 1,%c2[154]*z** 2,%c3[154]*z** 3,
               %c4[154]*z** 4,%c5[154]*z** 5,%c6[154]*z** 6,%c7[154]*z** 7,
               %c8[154]*z** 8,%c9[154]*z** 9,%ca[154]*z**10,%cb[154]*z**11])
      (poly z [%a0[154]*z** 0,%a1[154]*z** 1,%a2[154]*z** 2,%a3[154]*z** 3,
               %a4[154]*z** 4,%a5[154]*z** 5,%a6[154]*z** 6,%a7[154]*z** 7,
               %a8[154]*z** 8,%a9[154]*z** 9,%aa[154]*z**10,%ab[154]*z**11] *
       poly z [%b0[154]*z** 0,%b1[154]*z** 1,%b2[154]*z** 2,%b3[154]*z** 3,
               %b4[154]*z** 4,%b5[154]*z** 5,%b6[154]*z** 6,%b7[154]*z** 7,
               %b8[154]*z** 8,%b9[154]*z** 9,%ba[154]*z**10,%bb[154]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[155]*z** 0,%c1[155]*z** 1,%c2[155]*z** 2,%c3[155]*z** 3,
               %c4[155]*z** 4,%c5[155]*z** 5,%c6[155]*z** 6,%c7[155]*z** 7,
               %c8[155]*z** 8,%c9[155]*z** 9,%ca[155]*z**10,%cb[155]*z**11])
      (poly z [%a0[155]*z** 0,%a1[155]*z** 1,%a2[155]*z** 2,%a3[155]*z** 3,
               %a4[155]*z** 4,%a5[155]*z** 5,%a6[155]*z** 6,%a7[155]*z** 7,
               %a8[155]*z** 8,%a9[155]*z** 9,%aa[155]*z**10,%ab[155]*z**11] *
       poly z [%b0[155]*z** 0,%b1[155]*z** 1,%b2[155]*z** 2,%b3[155]*z** 3,
               %b4[155]*z** 4,%b5[155]*z** 5,%b6[155]*z** 6,%b7[155]*z** 7,
               %b8[155]*z** 8,%b9[155]*z** 9,%ba[155]*z**10,%bb[155]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[156]*z** 0,%c1[156]*z** 1,%c2[156]*z** 2,%c3[156]*z** 3,
               %c4[156]*z** 4,%c5[156]*z** 5,%c6[156]*z** 6,%c7[156]*z** 7,
               %c8[156]*z** 8,%c9[156]*z** 9,%ca[156]*z**10,%cb[156]*z**11])
      (poly z [%a0[156]*z** 0,%a1[156]*z** 1,%a2[156]*z** 2,%a3[156]*z** 3,
               %a4[156]*z** 4,%a5[156]*z** 5,%a6[156]*z** 6,%a7[156]*z** 7,
               %a8[156]*z** 8,%a9[156]*z** 9,%aa[156]*z**10,%ab[156]*z**11] *
       poly z [%b0[156]*z** 0,%b1[156]*z** 1,%b2[156]*z** 2,%b3[156]*z** 3,
               %b4[156]*z** 4,%b5[156]*z** 5,%b6[156]*z** 6,%b7[156]*z** 7,
               %b8[156]*z** 8,%b9[156]*z** 9,%ba[156]*z**10,%bb[156]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[157]*z** 0,%c1[157]*z** 1,%c2[157]*z** 2,%c3[157]*z** 3,
               %c4[157]*z** 4,%c5[157]*z** 5,%c6[157]*z** 6,%c7[157]*z** 7,
               %c8[157]*z** 8,%c9[157]*z** 9,%ca[157]*z**10,%cb[157]*z**11])
      (poly z [%a0[157]*z** 0,%a1[157]*z** 1,%a2[157]*z** 2,%a3[157]*z** 3,
               %a4[157]*z** 4,%a5[157]*z** 5,%a6[157]*z** 6,%a7[157]*z** 7,
               %a8[157]*z** 8,%a9[157]*z** 9,%aa[157]*z**10,%ab[157]*z**11] *
       poly z [%b0[157]*z** 0,%b1[157]*z** 1,%b2[157]*z** 2,%b3[157]*z** 3,
               %b4[157]*z** 4,%b5[157]*z** 5,%b6[157]*z** 6,%b7[157]*z** 7,
               %b8[157]*z** 8,%b9[157]*z** 9,%ba[157]*z**10,%bb[157]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[158]*z** 0,%c1[158]*z** 1,%c2[158]*z** 2,%c3[158]*z** 3,
               %c4[158]*z** 4,%c5[158]*z** 5,%c6[158]*z** 6,%c7[158]*z** 7,
               %c8[158]*z** 8,%c9[158]*z** 9,%ca[158]*z**10,%cb[158]*z**11])
      (poly z [%a0[158]*z** 0,%a1[158]*z** 1,%a2[158]*z** 2,%a3[158]*z** 3,
               %a4[158]*z** 4,%a5[158]*z** 5,%a6[158]*z** 6,%a7[158]*z** 7,
               %a8[158]*z** 8,%a9[158]*z** 9,%aa[158]*z**10,%ab[158]*z**11] *
       poly z [%b0[158]*z** 0,%b1[158]*z** 1,%b2[158]*z** 2,%b3[158]*z** 3,
               %b4[158]*z** 4,%b5[158]*z** 5,%b6[158]*z** 6,%b7[158]*z** 7,
               %b8[158]*z** 8,%b9[158]*z** 9,%ba[158]*z**10,%bb[158]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[159]*z** 0,%c1[159]*z** 1,%c2[159]*z** 2,%c3[159]*z** 3,
               %c4[159]*z** 4,%c5[159]*z** 5,%c6[159]*z** 6,%c7[159]*z** 7,
               %c8[159]*z** 8,%c9[159]*z** 9,%ca[159]*z**10,%cb[159]*z**11])
      (poly z [%a0[159]*z** 0,%a1[159]*z** 1,%a2[159]*z** 2,%a3[159]*z** 3,
               %a4[159]*z** 4,%a5[159]*z** 5,%a6[159]*z** 6,%a7[159]*z** 7,
               %a8[159]*z** 8,%a9[159]*z** 9,%aa[159]*z**10,%ab[159]*z**11] *
       poly z [%b0[159]*z** 0,%b1[159]*z** 1,%b2[159]*z** 2,%b3[159]*z** 3,
               %b4[159]*z** 4,%b5[159]*z** 5,%b6[159]*z** 6,%b7[159]*z** 7,
               %b8[159]*z** 8,%b9[159]*z** 9,%ba[159]*z**10,%bb[159]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[160]*z** 0,%c1[160]*z** 1,%c2[160]*z** 2,%c3[160]*z** 3,
               %c4[160]*z** 4,%c5[160]*z** 5,%c6[160]*z** 6,%c7[160]*z** 7,
               %c8[160]*z** 8,%c9[160]*z** 9,%ca[160]*z**10,%cb[160]*z**11])
      (poly z [%a0[160]*z** 0,%a1[160]*z** 1,%a2[160]*z** 2,%a3[160]*z** 3,
               %a4[160]*z** 4,%a5[160]*z** 5,%a6[160]*z** 6,%a7[160]*z** 7,
               %a8[160]*z** 8,%a9[160]*z** 9,%aa[160]*z**10,%ab[160]*z**11] *
       poly z [%b0[160]*z** 0,%b1[160]*z** 1,%b2[160]*z** 2,%b3[160]*z** 3,
               %b4[160]*z** 4,%b5[160]*z** 5,%b6[160]*z** 6,%b7[160]*z** 7,
               %b8[160]*z** 8,%b9[160]*z** 9,%ba[160]*z**10,%bb[160]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[161]*z** 0,%c1[161]*z** 1,%c2[161]*z** 2,%c3[161]*z** 3,
               %c4[161]*z** 4,%c5[161]*z** 5,%c6[161]*z** 6,%c7[161]*z** 7,
               %c8[161]*z** 8,%c9[161]*z** 9,%ca[161]*z**10,%cb[161]*z**11])
      (poly z [%a0[161]*z** 0,%a1[161]*z** 1,%a2[161]*z** 2,%a3[161]*z** 3,
               %a4[161]*z** 4,%a5[161]*z** 5,%a6[161]*z** 6,%a7[161]*z** 7,
               %a8[161]*z** 8,%a9[161]*z** 9,%aa[161]*z**10,%ab[161]*z**11] *
       poly z [%b0[161]*z** 0,%b1[161]*z** 1,%b2[161]*z** 2,%b3[161]*z** 3,
               %b4[161]*z** 4,%b5[161]*z** 5,%b6[161]*z** 6,%b7[161]*z** 7,
               %b8[161]*z** 8,%b9[161]*z** 9,%ba[161]*z**10,%bb[161]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[162]*z** 0,%c1[162]*z** 1,%c2[162]*z** 2,%c3[162]*z** 3,
               %c4[162]*z** 4,%c5[162]*z** 5,%c6[162]*z** 6,%c7[162]*z** 7,
               %c8[162]*z** 8,%c9[162]*z** 9,%ca[162]*z**10,%cb[162]*z**11])
      (poly z [%a0[162]*z** 0,%a1[162]*z** 1,%a2[162]*z** 2,%a3[162]*z** 3,
               %a4[162]*z** 4,%a5[162]*z** 5,%a6[162]*z** 6,%a7[162]*z** 7,
               %a8[162]*z** 8,%a9[162]*z** 9,%aa[162]*z**10,%ab[162]*z**11] *
       poly z [%b0[162]*z** 0,%b1[162]*z** 1,%b2[162]*z** 2,%b3[162]*z** 3,
               %b4[162]*z** 4,%b5[162]*z** 5,%b6[162]*z** 6,%b7[162]*z** 7,
               %b8[162]*z** 8,%b9[162]*z** 9,%ba[162]*z**10,%bb[162]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[163]*z** 0,%c1[163]*z** 1,%c2[163]*z** 2,%c3[163]*z** 3,
               %c4[163]*z** 4,%c5[163]*z** 5,%c6[163]*z** 6,%c7[163]*z** 7,
               %c8[163]*z** 8,%c9[163]*z** 9,%ca[163]*z**10,%cb[163]*z**11])
      (poly z [%a0[163]*z** 0,%a1[163]*z** 1,%a2[163]*z** 2,%a3[163]*z** 3,
               %a4[163]*z** 4,%a5[163]*z** 5,%a6[163]*z** 6,%a7[163]*z** 7,
               %a8[163]*z** 8,%a9[163]*z** 9,%aa[163]*z**10,%ab[163]*z**11] *
       poly z [%b0[163]*z** 0,%b1[163]*z** 1,%b2[163]*z** 2,%b3[163]*z** 3,
               %b4[163]*z** 4,%b5[163]*z** 5,%b6[163]*z** 6,%b7[163]*z** 7,
               %b8[163]*z** 8,%b9[163]*z** 9,%ba[163]*z**10,%bb[163]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[164]*z** 0,%c1[164]*z** 1,%c2[164]*z** 2,%c3[164]*z** 3,
               %c4[164]*z** 4,%c5[164]*z** 5,%c6[164]*z** 6,%c7[164]*z** 7,
               %c8[164]*z** 8,%c9[164]*z** 9,%ca[164]*z**10,%cb[164]*z**11])
      (poly z [%a0[164]*z** 0,%a1[164]*z** 1,%a2[164]*z** 2,%a3[164]*z** 3,
               %a4[164]*z** 4,%a5[164]*z** 5,%a6[164]*z** 6,%a7[164]*z** 7,
               %a8[164]*z** 8,%a9[164]*z** 9,%aa[164]*z**10,%ab[164]*z**11] *
       poly z [%b0[164]*z** 0,%b1[164]*z** 1,%b2[164]*z** 2,%b3[164]*z** 3,
               %b4[164]*z** 4,%b5[164]*z** 5,%b6[164]*z** 6,%b7[164]*z** 7,
               %b8[164]*z** 8,%b9[164]*z** 9,%ba[164]*z**10,%bb[164]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[165]*z** 0,%c1[165]*z** 1,%c2[165]*z** 2,%c3[165]*z** 3,
               %c4[165]*z** 4,%c5[165]*z** 5,%c6[165]*z** 6,%c7[165]*z** 7,
               %c8[165]*z** 8,%c9[165]*z** 9,%ca[165]*z**10,%cb[165]*z**11])
      (poly z [%a0[165]*z** 0,%a1[165]*z** 1,%a2[165]*z** 2,%a3[165]*z** 3,
               %a4[165]*z** 4,%a5[165]*z** 5,%a6[165]*z** 6,%a7[165]*z** 7,
               %a8[165]*z** 8,%a9[165]*z** 9,%aa[165]*z**10,%ab[165]*z**11] *
       poly z [%b0[165]*z** 0,%b1[165]*z** 1,%b2[165]*z** 2,%b3[165]*z** 3,
               %b4[165]*z** 4,%b5[165]*z** 5,%b6[165]*z** 6,%b7[165]*z** 7,
               %b8[165]*z** 8,%b9[165]*z** 9,%ba[165]*z**10,%bb[165]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[166]*z** 0,%c1[166]*z** 1,%c2[166]*z** 2,%c3[166]*z** 3,
               %c4[166]*z** 4,%c5[166]*z** 5,%c6[166]*z** 6,%c7[166]*z** 7,
               %c8[166]*z** 8,%c9[166]*z** 9,%ca[166]*z**10,%cb[166]*z**11])
      (poly z [%a0[166]*z** 0,%a1[166]*z** 1,%a2[166]*z** 2,%a3[166]*z** 3,
               %a4[166]*z** 4,%a5[166]*z** 5,%a6[166]*z** 6,%a7[166]*z** 7,
               %a8[166]*z** 8,%a9[166]*z** 9,%aa[166]*z**10,%ab[166]*z**11] *
       poly z [%b0[166]*z** 0,%b1[166]*z** 1,%b2[166]*z** 2,%b3[166]*z** 3,
               %b4[166]*z** 4,%b5[166]*z** 5,%b6[166]*z** 6,%b7[166]*z** 7,
               %b8[166]*z** 8,%b9[166]*z** 9,%ba[166]*z**10,%bb[166]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[167]*z** 0,%c1[167]*z** 1,%c2[167]*z** 2,%c3[167]*z** 3,
               %c4[167]*z** 4,%c5[167]*z** 5,%c6[167]*z** 6,%c7[167]*z** 7,
               %c8[167]*z** 8,%c9[167]*z** 9,%ca[167]*z**10,%cb[167]*z**11])
      (poly z [%a0[167]*z** 0,%a1[167]*z** 1,%a2[167]*z** 2,%a3[167]*z** 3,
               %a4[167]*z** 4,%a5[167]*z** 5,%a6[167]*z** 6,%a7[167]*z** 7,
               %a8[167]*z** 8,%a9[167]*z** 9,%aa[167]*z**10,%ab[167]*z**11] *
       poly z [%b0[167]*z** 0,%b1[167]*z** 1,%b2[167]*z** 2,%b3[167]*z** 3,
               %b4[167]*z** 4,%b5[167]*z** 5,%b6[167]*z** 6,%b7[167]*z** 7,
               %b8[167]*z** 8,%b9[167]*z** 9,%ba[167]*z**10,%bb[167]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[168]*z** 0,%c1[168]*z** 1,%c2[168]*z** 2,%c3[168]*z** 3,
               %c4[168]*z** 4,%c5[168]*z** 5,%c6[168]*z** 6,%c7[168]*z** 7,
               %c8[168]*z** 8,%c9[168]*z** 9,%ca[168]*z**10,%cb[168]*z**11])
      (poly z [%a0[168]*z** 0,%a1[168]*z** 1,%a2[168]*z** 2,%a3[168]*z** 3,
               %a4[168]*z** 4,%a5[168]*z** 5,%a6[168]*z** 6,%a7[168]*z** 7,
               %a8[168]*z** 8,%a9[168]*z** 9,%aa[168]*z**10,%ab[168]*z**11] *
       poly z [%b0[168]*z** 0,%b1[168]*z** 1,%b2[168]*z** 2,%b3[168]*z** 3,
               %b4[168]*z** 4,%b5[168]*z** 5,%b6[168]*z** 6,%b7[168]*z** 7,
               %b8[168]*z** 8,%b9[168]*z** 9,%ba[168]*z**10,%bb[168]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[169]*z** 0,%c1[169]*z** 1,%c2[169]*z** 2,%c3[169]*z** 3,
               %c4[169]*z** 4,%c5[169]*z** 5,%c6[169]*z** 6,%c7[169]*z** 7,
               %c8[169]*z** 8,%c9[169]*z** 9,%ca[169]*z**10,%cb[169]*z**11])
      (poly z [%a0[169]*z** 0,%a1[169]*z** 1,%a2[169]*z** 2,%a3[169]*z** 3,
               %a4[169]*z** 4,%a5[169]*z** 5,%a6[169]*z** 6,%a7[169]*z** 7,
               %a8[169]*z** 8,%a9[169]*z** 9,%aa[169]*z**10,%ab[169]*z**11] *
       poly z [%b0[169]*z** 0,%b1[169]*z** 1,%b2[169]*z** 2,%b3[169]*z** 3,
               %b4[169]*z** 4,%b5[169]*z** 5,%b6[169]*z** 6,%b7[169]*z** 7,
               %b8[169]*z** 8,%b9[169]*z** 9,%ba[169]*z**10,%bb[169]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[170]*z** 0,%c1[170]*z** 1,%c2[170]*z** 2,%c3[170]*z** 3,
               %c4[170]*z** 4,%c5[170]*z** 5,%c6[170]*z** 6,%c7[170]*z** 7,
               %c8[170]*z** 8,%c9[170]*z** 9,%ca[170]*z**10,%cb[170]*z**11])
      (poly z [%a0[170]*z** 0,%a1[170]*z** 1,%a2[170]*z** 2,%a3[170]*z** 3,
               %a4[170]*z** 4,%a5[170]*z** 5,%a6[170]*z** 6,%a7[170]*z** 7,
               %a8[170]*z** 8,%a9[170]*z** 9,%aa[170]*z**10,%ab[170]*z**11] *
       poly z [%b0[170]*z** 0,%b1[170]*z** 1,%b2[170]*z** 2,%b3[170]*z** 3,
               %b4[170]*z** 4,%b5[170]*z** 5,%b6[170]*z** 6,%b7[170]*z** 7,
               %b8[170]*z** 8,%b9[170]*z** 9,%ba[170]*z**10,%bb[170]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[171]*z** 0,%c1[171]*z** 1,%c2[171]*z** 2,%c3[171]*z** 3,
               %c4[171]*z** 4,%c5[171]*z** 5,%c6[171]*z** 6,%c7[171]*z** 7,
               %c8[171]*z** 8,%c9[171]*z** 9,%ca[171]*z**10,%cb[171]*z**11])
      (poly z [%a0[171]*z** 0,%a1[171]*z** 1,%a2[171]*z** 2,%a3[171]*z** 3,
               %a4[171]*z** 4,%a5[171]*z** 5,%a6[171]*z** 6,%a7[171]*z** 7,
               %a8[171]*z** 8,%a9[171]*z** 9,%aa[171]*z**10,%ab[171]*z**11] *
       poly z [%b0[171]*z** 0,%b1[171]*z** 1,%b2[171]*z** 2,%b3[171]*z** 3,
               %b4[171]*z** 4,%b5[171]*z** 5,%b6[171]*z** 6,%b7[171]*z** 7,
               %b8[171]*z** 8,%b9[171]*z** 9,%ba[171]*z**10,%bb[171]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[172]*z** 0,%c1[172]*z** 1,%c2[172]*z** 2,%c3[172]*z** 3,
               %c4[172]*z** 4,%c5[172]*z** 5,%c6[172]*z** 6,%c7[172]*z** 7,
               %c8[172]*z** 8,%c9[172]*z** 9,%ca[172]*z**10,%cb[172]*z**11])
      (poly z [%a0[172]*z** 0,%a1[172]*z** 1,%a2[172]*z** 2,%a3[172]*z** 3,
               %a4[172]*z** 4,%a5[172]*z** 5,%a6[172]*z** 6,%a7[172]*z** 7,
               %a8[172]*z** 8,%a9[172]*z** 9,%aa[172]*z**10,%ab[172]*z**11] *
       poly z [%b0[172]*z** 0,%b1[172]*z** 1,%b2[172]*z** 2,%b3[172]*z** 3,
               %b4[172]*z** 4,%b5[172]*z** 5,%b6[172]*z** 6,%b7[172]*z** 7,
               %b8[172]*z** 8,%b9[172]*z** 9,%ba[172]*z**10,%bb[172]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[173]*z** 0,%c1[173]*z** 1,%c2[173]*z** 2,%c3[173]*z** 3,
               %c4[173]*z** 4,%c5[173]*z** 5,%c6[173]*z** 6,%c7[173]*z** 7,
               %c8[173]*z** 8,%c9[173]*z** 9,%ca[173]*z**10,%cb[173]*z**11])
      (poly z [%a0[173]*z** 0,%a1[173]*z** 1,%a2[173]*z** 2,%a3[173]*z** 3,
               %a4[173]*z** 4,%a5[173]*z** 5,%a6[173]*z** 6,%a7[173]*z** 7,
               %a8[173]*z** 8,%a9[173]*z** 9,%aa[173]*z**10,%ab[173]*z**11] *
       poly z [%b0[173]*z** 0,%b1[173]*z** 1,%b2[173]*z** 2,%b3[173]*z** 3,
               %b4[173]*z** 4,%b5[173]*z** 5,%b6[173]*z** 6,%b7[173]*z** 7,
               %b8[173]*z** 8,%b9[173]*z** 9,%ba[173]*z**10,%bb[173]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[174]*z** 0,%c1[174]*z** 1,%c2[174]*z** 2,%c3[174]*z** 3,
               %c4[174]*z** 4,%c5[174]*z** 5,%c6[174]*z** 6,%c7[174]*z** 7,
               %c8[174]*z** 8,%c9[174]*z** 9,%ca[174]*z**10,%cb[174]*z**11])
      (poly z [%a0[174]*z** 0,%a1[174]*z** 1,%a2[174]*z** 2,%a3[174]*z** 3,
               %a4[174]*z** 4,%a5[174]*z** 5,%a6[174]*z** 6,%a7[174]*z** 7,
               %a8[174]*z** 8,%a9[174]*z** 9,%aa[174]*z**10,%ab[174]*z**11] *
       poly z [%b0[174]*z** 0,%b1[174]*z** 1,%b2[174]*z** 2,%b3[174]*z** 3,
               %b4[174]*z** 4,%b5[174]*z** 5,%b6[174]*z** 6,%b7[174]*z** 7,
               %b8[174]*z** 8,%b9[174]*z** 9,%ba[174]*z**10,%bb[174]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[175]*z** 0,%c1[175]*z** 1,%c2[175]*z** 2,%c3[175]*z** 3,
               %c4[175]*z** 4,%c5[175]*z** 5,%c6[175]*z** 6,%c7[175]*z** 7,
               %c8[175]*z** 8,%c9[175]*z** 9,%ca[175]*z**10,%cb[175]*z**11])
      (poly z [%a0[175]*z** 0,%a1[175]*z** 1,%a2[175]*z** 2,%a3[175]*z** 3,
               %a4[175]*z** 4,%a5[175]*z** 5,%a6[175]*z** 6,%a7[175]*z** 7,
               %a8[175]*z** 8,%a9[175]*z** 9,%aa[175]*z**10,%ab[175]*z**11] *
       poly z [%b0[175]*z** 0,%b1[175]*z** 1,%b2[175]*z** 2,%b3[175]*z** 3,
               %b4[175]*z** 4,%b5[175]*z** 5,%b6[175]*z** 6,%b7[175]*z** 7,
               %b8[175]*z** 8,%b9[175]*z** 9,%ba[175]*z**10,%bb[175]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[176]*z** 0,%c1[176]*z** 1,%c2[176]*z** 2,%c3[176]*z** 3,
               %c4[176]*z** 4,%c5[176]*z** 5,%c6[176]*z** 6,%c7[176]*z** 7,
               %c8[176]*z** 8,%c9[176]*z** 9,%ca[176]*z**10,%cb[176]*z**11])
      (poly z [%a0[176]*z** 0,%a1[176]*z** 1,%a2[176]*z** 2,%a3[176]*z** 3,
               %a4[176]*z** 4,%a5[176]*z** 5,%a6[176]*z** 6,%a7[176]*z** 7,
               %a8[176]*z** 8,%a9[176]*z** 9,%aa[176]*z**10,%ab[176]*z**11] *
       poly z [%b0[176]*z** 0,%b1[176]*z** 1,%b2[176]*z** 2,%b3[176]*z** 3,
               %b4[176]*z** 4,%b5[176]*z** 5,%b6[176]*z** 6,%b7[176]*z** 7,
               %b8[176]*z** 8,%b9[176]*z** 9,%ba[176]*z**10,%bb[176]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[177]*z** 0,%c1[177]*z** 1,%c2[177]*z** 2,%c3[177]*z** 3,
               %c4[177]*z** 4,%c5[177]*z** 5,%c6[177]*z** 6,%c7[177]*z** 7,
               %c8[177]*z** 8,%c9[177]*z** 9,%ca[177]*z**10,%cb[177]*z**11])
      (poly z [%a0[177]*z** 0,%a1[177]*z** 1,%a2[177]*z** 2,%a3[177]*z** 3,
               %a4[177]*z** 4,%a5[177]*z** 5,%a6[177]*z** 6,%a7[177]*z** 7,
               %a8[177]*z** 8,%a9[177]*z** 9,%aa[177]*z**10,%ab[177]*z**11] *
       poly z [%b0[177]*z** 0,%b1[177]*z** 1,%b2[177]*z** 2,%b3[177]*z** 3,
               %b4[177]*z** 4,%b5[177]*z** 5,%b6[177]*z** 6,%b7[177]*z** 7,
               %b8[177]*z** 8,%b9[177]*z** 9,%ba[177]*z**10,%bb[177]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[178]*z** 0,%c1[178]*z** 1,%c2[178]*z** 2,%c3[178]*z** 3,
               %c4[178]*z** 4,%c5[178]*z** 5,%c6[178]*z** 6,%c7[178]*z** 7,
               %c8[178]*z** 8,%c9[178]*z** 9,%ca[178]*z**10,%cb[178]*z**11])
      (poly z [%a0[178]*z** 0,%a1[178]*z** 1,%a2[178]*z** 2,%a3[178]*z** 3,
               %a4[178]*z** 4,%a5[178]*z** 5,%a6[178]*z** 6,%a7[178]*z** 7,
               %a8[178]*z** 8,%a9[178]*z** 9,%aa[178]*z**10,%ab[178]*z**11] *
       poly z [%b0[178]*z** 0,%b1[178]*z** 1,%b2[178]*z** 2,%b3[178]*z** 3,
               %b4[178]*z** 4,%b5[178]*z** 5,%b6[178]*z** 6,%b7[178]*z** 7,
               %b8[178]*z** 8,%b9[178]*z** 9,%ba[178]*z**10,%bb[178]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[179]*z** 0,%c1[179]*z** 1,%c2[179]*z** 2,%c3[179]*z** 3,
               %c4[179]*z** 4,%c5[179]*z** 5,%c6[179]*z** 6,%c7[179]*z** 7,
               %c8[179]*z** 8,%c9[179]*z** 9,%ca[179]*z**10,%cb[179]*z**11])
      (poly z [%a0[179]*z** 0,%a1[179]*z** 1,%a2[179]*z** 2,%a3[179]*z** 3,
               %a4[179]*z** 4,%a5[179]*z** 5,%a6[179]*z** 6,%a7[179]*z** 7,
               %a8[179]*z** 8,%a9[179]*z** 9,%aa[179]*z**10,%ab[179]*z**11] *
       poly z [%b0[179]*z** 0,%b1[179]*z** 1,%b2[179]*z** 2,%b3[179]*z** 3,
               %b4[179]*z** 4,%b5[179]*z** 5,%b6[179]*z** 6,%b7[179]*z** 7,
               %b8[179]*z** 8,%b9[179]*z** 9,%ba[179]*z**10,%bb[179]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[180]*z** 0,%c1[180]*z** 1,%c2[180]*z** 2,%c3[180]*z** 3,
               %c4[180]*z** 4,%c5[180]*z** 5,%c6[180]*z** 6,%c7[180]*z** 7,
               %c8[180]*z** 8,%c9[180]*z** 9,%ca[180]*z**10,%cb[180]*z**11])
      (poly z [%a0[180]*z** 0,%a1[180]*z** 1,%a2[180]*z** 2,%a3[180]*z** 3,
               %a4[180]*z** 4,%a5[180]*z** 5,%a6[180]*z** 6,%a7[180]*z** 7,
               %a8[180]*z** 8,%a9[180]*z** 9,%aa[180]*z**10,%ab[180]*z**11] *
       poly z [%b0[180]*z** 0,%b1[180]*z** 1,%b2[180]*z** 2,%b3[180]*z** 3,
               %b4[180]*z** 4,%b5[180]*z** 5,%b6[180]*z** 6,%b7[180]*z** 7,
               %b8[180]*z** 8,%b9[180]*z** 9,%ba[180]*z**10,%bb[180]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[181]*z** 0,%c1[181]*z** 1,%c2[181]*z** 2,%c3[181]*z** 3,
               %c4[181]*z** 4,%c5[181]*z** 5,%c6[181]*z** 6,%c7[181]*z** 7,
               %c8[181]*z** 8,%c9[181]*z** 9,%ca[181]*z**10,%cb[181]*z**11])
      (poly z [%a0[181]*z** 0,%a1[181]*z** 1,%a2[181]*z** 2,%a3[181]*z** 3,
               %a4[181]*z** 4,%a5[181]*z** 5,%a6[181]*z** 6,%a7[181]*z** 7,
               %a8[181]*z** 8,%a9[181]*z** 9,%aa[181]*z**10,%ab[181]*z**11] *
       poly z [%b0[181]*z** 0,%b1[181]*z** 1,%b2[181]*z** 2,%b3[181]*z** 3,
               %b4[181]*z** 4,%b5[181]*z** 5,%b6[181]*z** 6,%b7[181]*z** 7,
               %b8[181]*z** 8,%b9[181]*z** 9,%ba[181]*z**10,%bb[181]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[182]*z** 0,%c1[182]*z** 1,%c2[182]*z** 2,%c3[182]*z** 3,
               %c4[182]*z** 4,%c5[182]*z** 5,%c6[182]*z** 6,%c7[182]*z** 7,
               %c8[182]*z** 8,%c9[182]*z** 9,%ca[182]*z**10,%cb[182]*z**11])
      (poly z [%a0[182]*z** 0,%a1[182]*z** 1,%a2[182]*z** 2,%a3[182]*z** 3,
               %a4[182]*z** 4,%a5[182]*z** 5,%a6[182]*z** 6,%a7[182]*z** 7,
               %a8[182]*z** 8,%a9[182]*z** 9,%aa[182]*z**10,%ab[182]*z**11] *
       poly z [%b0[182]*z** 0,%b1[182]*z** 1,%b2[182]*z** 2,%b3[182]*z** 3,
               %b4[182]*z** 4,%b5[182]*z** 5,%b6[182]*z** 6,%b7[182]*z** 7,
               %b8[182]*z** 8,%b9[182]*z** 9,%ba[182]*z**10,%bb[182]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[183]*z** 0,%c1[183]*z** 1,%c2[183]*z** 2,%c3[183]*z** 3,
               %c4[183]*z** 4,%c5[183]*z** 5,%c6[183]*z** 6,%c7[183]*z** 7,
               %c8[183]*z** 8,%c9[183]*z** 9,%ca[183]*z**10,%cb[183]*z**11])
      (poly z [%a0[183]*z** 0,%a1[183]*z** 1,%a2[183]*z** 2,%a3[183]*z** 3,
               %a4[183]*z** 4,%a5[183]*z** 5,%a6[183]*z** 6,%a7[183]*z** 7,
               %a8[183]*z** 8,%a9[183]*z** 9,%aa[183]*z**10,%ab[183]*z**11] *
       poly z [%b0[183]*z** 0,%b1[183]*z** 1,%b2[183]*z** 2,%b3[183]*z** 3,
               %b4[183]*z** 4,%b5[183]*z** 5,%b6[183]*z** 6,%b7[183]*z** 7,
               %b8[183]*z** 8,%b9[183]*z** 9,%ba[183]*z**10,%bb[183]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[184]*z** 0,%c1[184]*z** 1,%c2[184]*z** 2,%c3[184]*z** 3,
               %c4[184]*z** 4,%c5[184]*z** 5,%c6[184]*z** 6,%c7[184]*z** 7,
               %c8[184]*z** 8,%c9[184]*z** 9,%ca[184]*z**10,%cb[184]*z**11])
      (poly z [%a0[184]*z** 0,%a1[184]*z** 1,%a2[184]*z** 2,%a3[184]*z** 3,
               %a4[184]*z** 4,%a5[184]*z** 5,%a6[184]*z** 6,%a7[184]*z** 7,
               %a8[184]*z** 8,%a9[184]*z** 9,%aa[184]*z**10,%ab[184]*z**11] *
       poly z [%b0[184]*z** 0,%b1[184]*z** 1,%b2[184]*z** 2,%b3[184]*z** 3,
               %b4[184]*z** 4,%b5[184]*z** 5,%b6[184]*z** 6,%b7[184]*z** 7,
               %b8[184]*z** 8,%b9[184]*z** 9,%ba[184]*z**10,%bb[184]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[185]*z** 0,%c1[185]*z** 1,%c2[185]*z** 2,%c3[185]*z** 3,
               %c4[185]*z** 4,%c5[185]*z** 5,%c6[185]*z** 6,%c7[185]*z** 7,
               %c8[185]*z** 8,%c9[185]*z** 9,%ca[185]*z**10,%cb[185]*z**11])
      (poly z [%a0[185]*z** 0,%a1[185]*z** 1,%a2[185]*z** 2,%a3[185]*z** 3,
               %a4[185]*z** 4,%a5[185]*z** 5,%a6[185]*z** 6,%a7[185]*z** 7,
               %a8[185]*z** 8,%a9[185]*z** 9,%aa[185]*z**10,%ab[185]*z**11] *
       poly z [%b0[185]*z** 0,%b1[185]*z** 1,%b2[185]*z** 2,%b3[185]*z** 3,
               %b4[185]*z** 4,%b5[185]*z** 5,%b6[185]*z** 6,%b7[185]*z** 7,
               %b8[185]*z** 8,%b9[185]*z** 9,%ba[185]*z**10,%bb[185]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[186]*z** 0,%c1[186]*z** 1,%c2[186]*z** 2,%c3[186]*z** 3,
               %c4[186]*z** 4,%c5[186]*z** 5,%c6[186]*z** 6,%c7[186]*z** 7,
               %c8[186]*z** 8,%c9[186]*z** 9,%ca[186]*z**10,%cb[186]*z**11])
      (poly z [%a0[186]*z** 0,%a1[186]*z** 1,%a2[186]*z** 2,%a3[186]*z** 3,
               %a4[186]*z** 4,%a5[186]*z** 5,%a6[186]*z** 6,%a7[186]*z** 7,
               %a8[186]*z** 8,%a9[186]*z** 9,%aa[186]*z**10,%ab[186]*z**11] *
       poly z [%b0[186]*z** 0,%b1[186]*z** 1,%b2[186]*z** 2,%b3[186]*z** 3,
               %b4[186]*z** 4,%b5[186]*z** 5,%b6[186]*z** 6,%b7[186]*z** 7,
               %b8[186]*z** 8,%b9[186]*z** 9,%ba[186]*z**10,%bb[186]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[187]*z** 0,%c1[187]*z** 1,%c2[187]*z** 2,%c3[187]*z** 3,
               %c4[187]*z** 4,%c5[187]*z** 5,%c6[187]*z** 6,%c7[187]*z** 7,
               %c8[187]*z** 8,%c9[187]*z** 9,%ca[187]*z**10,%cb[187]*z**11])
      (poly z [%a0[187]*z** 0,%a1[187]*z** 1,%a2[187]*z** 2,%a3[187]*z** 3,
               %a4[187]*z** 4,%a5[187]*z** 5,%a6[187]*z** 6,%a7[187]*z** 7,
               %a8[187]*z** 8,%a9[187]*z** 9,%aa[187]*z**10,%ab[187]*z**11] *
       poly z [%b0[187]*z** 0,%b1[187]*z** 1,%b2[187]*z** 2,%b3[187]*z** 3,
               %b4[187]*z** 4,%b5[187]*z** 5,%b6[187]*z** 6,%b7[187]*z** 7,
               %b8[187]*z** 8,%b9[187]*z** 9,%ba[187]*z**10,%bb[187]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[188]*z** 0,%c1[188]*z** 1,%c2[188]*z** 2,%c3[188]*z** 3,
               %c4[188]*z** 4,%c5[188]*z** 5,%c6[188]*z** 6,%c7[188]*z** 7,
               %c8[188]*z** 8,%c9[188]*z** 9,%ca[188]*z**10,%cb[188]*z**11])
      (poly z [%a0[188]*z** 0,%a1[188]*z** 1,%a2[188]*z** 2,%a3[188]*z** 3,
               %a4[188]*z** 4,%a5[188]*z** 5,%a6[188]*z** 6,%a7[188]*z** 7,
               %a8[188]*z** 8,%a9[188]*z** 9,%aa[188]*z**10,%ab[188]*z**11] *
       poly z [%b0[188]*z** 0,%b1[188]*z** 1,%b2[188]*z** 2,%b3[188]*z** 3,
               %b4[188]*z** 4,%b5[188]*z** 5,%b6[188]*z** 6,%b7[188]*z** 7,
               %b8[188]*z** 8,%b9[188]*z** 9,%ba[188]*z**10,%bb[188]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[189]*z** 0,%c1[189]*z** 1,%c2[189]*z** 2,%c3[189]*z** 3,
               %c4[189]*z** 4,%c5[189]*z** 5,%c6[189]*z** 6,%c7[189]*z** 7,
               %c8[189]*z** 8,%c9[189]*z** 9,%ca[189]*z**10,%cb[189]*z**11])
      (poly z [%a0[189]*z** 0,%a1[189]*z** 1,%a2[189]*z** 2,%a3[189]*z** 3,
               %a4[189]*z** 4,%a5[189]*z** 5,%a6[189]*z** 6,%a7[189]*z** 7,
               %a8[189]*z** 8,%a9[189]*z** 9,%aa[189]*z**10,%ab[189]*z**11] *
       poly z [%b0[189]*z** 0,%b1[189]*z** 1,%b2[189]*z** 2,%b3[189]*z** 3,
               %b4[189]*z** 4,%b5[189]*z** 5,%b6[189]*z** 6,%b7[189]*z** 7,
               %b8[189]*z** 8,%b9[189]*z** 9,%ba[189]*z**10,%bb[189]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[190]*z** 0,%c1[190]*z** 1,%c2[190]*z** 2,%c3[190]*z** 3,
               %c4[190]*z** 4,%c5[190]*z** 5,%c6[190]*z** 6,%c7[190]*z** 7,
               %c8[190]*z** 8,%c9[190]*z** 9,%ca[190]*z**10,%cb[190]*z**11])
      (poly z [%a0[190]*z** 0,%a1[190]*z** 1,%a2[190]*z** 2,%a3[190]*z** 3,
               %a4[190]*z** 4,%a5[190]*z** 5,%a6[190]*z** 6,%a7[190]*z** 7,
               %a8[190]*z** 8,%a9[190]*z** 9,%aa[190]*z**10,%ab[190]*z**11] *
       poly z [%b0[190]*z** 0,%b1[190]*z** 1,%b2[190]*z** 2,%b3[190]*z** 3,
               %b4[190]*z** 4,%b5[190]*z** 5,%b6[190]*z** 6,%b7[190]*z** 7,
               %b8[190]*z** 8,%b9[190]*z** 9,%ba[190]*z**10,%bb[190]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[191]*z** 0,%c1[191]*z** 1,%c2[191]*z** 2,%c3[191]*z** 3,
               %c4[191]*z** 4,%c5[191]*z** 5,%c6[191]*z** 6,%c7[191]*z** 7,
               %c8[191]*z** 8,%c9[191]*z** 9,%ca[191]*z**10,%cb[191]*z**11])
      (poly z [%a0[191]*z** 0,%a1[191]*z** 1,%a2[191]*z** 2,%a3[191]*z** 3,
               %a4[191]*z** 4,%a5[191]*z** 5,%a6[191]*z** 6,%a7[191]*z** 7,
               %a8[191]*z** 8,%a9[191]*z** 9,%aa[191]*z**10,%ab[191]*z**11] *
       poly z [%b0[191]*z** 0,%b1[191]*z** 1,%b2[191]*z** 2,%b3[191]*z** 3,
               %b4[191]*z** 4,%b5[191]*z** 5,%b6[191]*z** 6,%b7[191]*z** 7,
               %b8[191]*z** 8,%b9[191]*z** 9,%ba[191]*z**10,%bb[191]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[192]*z** 0,%c1[192]*z** 1,%c2[192]*z** 2,%c3[192]*z** 3,
               %c4[192]*z** 4,%c5[192]*z** 5,%c6[192]*z** 6,%c7[192]*z** 7,
               %c8[192]*z** 8,%c9[192]*z** 9,%ca[192]*z**10,%cb[192]*z**11])
      (poly z [%a0[192]*z** 0,%a1[192]*z** 1,%a2[192]*z** 2,%a3[192]*z** 3,
               %a4[192]*z** 4,%a5[192]*z** 5,%a6[192]*z** 6,%a7[192]*z** 7,
               %a8[192]*z** 8,%a9[192]*z** 9,%aa[192]*z**10,%ab[192]*z**11] *
       poly z [%b0[192]*z** 0,%b1[192]*z** 1,%b2[192]*z** 2,%b3[192]*z** 3,
               %b4[192]*z** 4,%b5[192]*z** 5,%b6[192]*z** 6,%b7[192]*z** 7,
               %b8[192]*z** 8,%b9[192]*z** 9,%ba[192]*z**10,%bb[192]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[193]*z** 0,%c1[193]*z** 1,%c2[193]*z** 2,%c3[193]*z** 3,
               %c4[193]*z** 4,%c5[193]*z** 5,%c6[193]*z** 6,%c7[193]*z** 7,
               %c8[193]*z** 8,%c9[193]*z** 9,%ca[193]*z**10,%cb[193]*z**11])
      (poly z [%a0[193]*z** 0,%a1[193]*z** 1,%a2[193]*z** 2,%a3[193]*z** 3,
               %a4[193]*z** 4,%a5[193]*z** 5,%a6[193]*z** 6,%a7[193]*z** 7,
               %a8[193]*z** 8,%a9[193]*z** 9,%aa[193]*z**10,%ab[193]*z**11] *
       poly z [%b0[193]*z** 0,%b1[193]*z** 1,%b2[193]*z** 2,%b3[193]*z** 3,
               %b4[193]*z** 4,%b5[193]*z** 5,%b6[193]*z** 6,%b7[193]*z** 7,
               %b8[193]*z** 8,%b9[193]*z** 9,%ba[193]*z**10,%bb[193]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[194]*z** 0,%c1[194]*z** 1,%c2[194]*z** 2,%c3[194]*z** 3,
               %c4[194]*z** 4,%c5[194]*z** 5,%c6[194]*z** 6,%c7[194]*z** 7,
               %c8[194]*z** 8,%c9[194]*z** 9,%ca[194]*z**10,%cb[194]*z**11])
      (poly z [%a0[194]*z** 0,%a1[194]*z** 1,%a2[194]*z** 2,%a3[194]*z** 3,
               %a4[194]*z** 4,%a5[194]*z** 5,%a6[194]*z** 6,%a7[194]*z** 7,
               %a8[194]*z** 8,%a9[194]*z** 9,%aa[194]*z**10,%ab[194]*z**11] *
       poly z [%b0[194]*z** 0,%b1[194]*z** 1,%b2[194]*z** 2,%b3[194]*z** 3,
               %b4[194]*z** 4,%b5[194]*z** 5,%b6[194]*z** 6,%b7[194]*z** 7,
               %b8[194]*z** 8,%b9[194]*z** 9,%ba[194]*z**10,%bb[194]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[195]*z** 0,%c1[195]*z** 1,%c2[195]*z** 2,%c3[195]*z** 3,
               %c4[195]*z** 4,%c5[195]*z** 5,%c6[195]*z** 6,%c7[195]*z** 7,
               %c8[195]*z** 8,%c9[195]*z** 9,%ca[195]*z**10,%cb[195]*z**11])
      (poly z [%a0[195]*z** 0,%a1[195]*z** 1,%a2[195]*z** 2,%a3[195]*z** 3,
               %a4[195]*z** 4,%a5[195]*z** 5,%a6[195]*z** 6,%a7[195]*z** 7,
               %a8[195]*z** 8,%a9[195]*z** 9,%aa[195]*z**10,%ab[195]*z**11] *
       poly z [%b0[195]*z** 0,%b1[195]*z** 1,%b2[195]*z** 2,%b3[195]*z** 3,
               %b4[195]*z** 4,%b5[195]*z** 5,%b6[195]*z** 6,%b7[195]*z** 7,
               %b8[195]*z** 8,%b9[195]*z** 9,%ba[195]*z**10,%bb[195]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[196]*z** 0,%c1[196]*z** 1,%c2[196]*z** 2,%c3[196]*z** 3,
               %c4[196]*z** 4,%c5[196]*z** 5,%c6[196]*z** 6,%c7[196]*z** 7,
               %c8[196]*z** 8,%c9[196]*z** 9,%ca[196]*z**10,%cb[196]*z**11])
      (poly z [%a0[196]*z** 0,%a1[196]*z** 1,%a2[196]*z** 2,%a3[196]*z** 3,
               %a4[196]*z** 4,%a5[196]*z** 5,%a6[196]*z** 6,%a7[196]*z** 7,
               %a8[196]*z** 8,%a9[196]*z** 9,%aa[196]*z**10,%ab[196]*z**11] *
       poly z [%b0[196]*z** 0,%b1[196]*z** 1,%b2[196]*z** 2,%b3[196]*z** 3,
               %b4[196]*z** 4,%b5[196]*z** 5,%b6[196]*z** 6,%b7[196]*z** 7,
               %b8[196]*z** 8,%b9[196]*z** 9,%ba[196]*z**10,%bb[196]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[197]*z** 0,%c1[197]*z** 1,%c2[197]*z** 2,%c3[197]*z** 3,
               %c4[197]*z** 4,%c5[197]*z** 5,%c6[197]*z** 6,%c7[197]*z** 7,
               %c8[197]*z** 8,%c9[197]*z** 9,%ca[197]*z**10,%cb[197]*z**11])
      (poly z [%a0[197]*z** 0,%a1[197]*z** 1,%a2[197]*z** 2,%a3[197]*z** 3,
               %a4[197]*z** 4,%a5[197]*z** 5,%a6[197]*z** 6,%a7[197]*z** 7,
               %a8[197]*z** 8,%a9[197]*z** 9,%aa[197]*z**10,%ab[197]*z**11] *
       poly z [%b0[197]*z** 0,%b1[197]*z** 1,%b2[197]*z** 2,%b3[197]*z** 3,
               %b4[197]*z** 4,%b5[197]*z** 5,%b6[197]*z** 6,%b7[197]*z** 7,
               %b8[197]*z** 8,%b9[197]*z** 9,%ba[197]*z**10,%bb[197]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[198]*z** 0,%c1[198]*z** 1,%c2[198]*z** 2,%c3[198]*z** 3,
               %c4[198]*z** 4,%c5[198]*z** 5,%c6[198]*z** 6,%c7[198]*z** 7,
               %c8[198]*z** 8,%c9[198]*z** 9,%ca[198]*z**10,%cb[198]*z**11])
      (poly z [%a0[198]*z** 0,%a1[198]*z** 1,%a2[198]*z** 2,%a3[198]*z** 3,
               %a4[198]*z** 4,%a5[198]*z** 5,%a6[198]*z** 6,%a7[198]*z** 7,
               %a8[198]*z** 8,%a9[198]*z** 9,%aa[198]*z**10,%ab[198]*z**11] *
       poly z [%b0[198]*z** 0,%b1[198]*z** 1,%b2[198]*z** 2,%b3[198]*z** 3,
               %b4[198]*z** 4,%b5[198]*z** 5,%b6[198]*z** 6,%b7[198]*z** 7,
               %b8[198]*z** 8,%b9[198]*z** 9,%ba[198]*z**10,%bb[198]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[199]*z** 0,%c1[199]*z** 1,%c2[199]*z** 2,%c3[199]*z** 3,
               %c4[199]*z** 4,%c5[199]*z** 5,%c6[199]*z** 6,%c7[199]*z** 7,
               %c8[199]*z** 8,%c9[199]*z** 9,%ca[199]*z**10,%cb[199]*z**11])
      (poly z [%a0[199]*z** 0,%a1[199]*z** 1,%a2[199]*z** 2,%a3[199]*z** 3,
               %a4[199]*z** 4,%a5[199]*z** 5,%a6[199]*z** 6,%a7[199]*z** 7,
               %a8[199]*z** 8,%a9[199]*z** 9,%aa[199]*z**10,%ab[199]*z**11] *
       poly z [%b0[199]*z** 0,%b1[199]*z** 1,%b2[199]*z** 2,%b3[199]*z** 3,
               %b4[199]*z** 4,%b5[199]*z** 5,%b6[199]*z** 6,%b7[199]*z** 7,
               %b8[199]*z** 8,%b9[199]*z** 9,%ba[199]*z**10,%bb[199]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[200]*z** 0,%c1[200]*z** 1,%c2[200]*z** 2,%c3[200]*z** 3,
               %c4[200]*z** 4,%c5[200]*z** 5,%c6[200]*z** 6,%c7[200]*z** 7,
               %c8[200]*z** 8,%c9[200]*z** 9,%ca[200]*z**10,%cb[200]*z**11])
      (poly z [%a0[200]*z** 0,%a1[200]*z** 1,%a2[200]*z** 2,%a3[200]*z** 3,
               %a4[200]*z** 4,%a5[200]*z** 5,%a6[200]*z** 6,%a7[200]*z** 7,
               %a8[200]*z** 8,%a9[200]*z** 9,%aa[200]*z**10,%ab[200]*z**11] *
       poly z [%b0[200]*z** 0,%b1[200]*z** 1,%b2[200]*z** 2,%b3[200]*z** 3,
               %b4[200]*z** 4,%b5[200]*z** 5,%b6[200]*z** 6,%b7[200]*z** 7,
               %b8[200]*z** 8,%b9[200]*z** 9,%ba[200]*z**10,%bb[200]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[201]*z** 0,%c1[201]*z** 1,%c2[201]*z** 2,%c3[201]*z** 3,
               %c4[201]*z** 4,%c5[201]*z** 5,%c6[201]*z** 6,%c7[201]*z** 7,
               %c8[201]*z** 8,%c9[201]*z** 9,%ca[201]*z**10,%cb[201]*z**11])
      (poly z [%a0[201]*z** 0,%a1[201]*z** 1,%a2[201]*z** 2,%a3[201]*z** 3,
               %a4[201]*z** 4,%a5[201]*z** 5,%a6[201]*z** 6,%a7[201]*z** 7,
               %a8[201]*z** 8,%a9[201]*z** 9,%aa[201]*z**10,%ab[201]*z**11] *
       poly z [%b0[201]*z** 0,%b1[201]*z** 1,%b2[201]*z** 2,%b3[201]*z** 3,
               %b4[201]*z** 4,%b5[201]*z** 5,%b6[201]*z** 6,%b7[201]*z** 7,
               %b8[201]*z** 8,%b9[201]*z** 9,%ba[201]*z**10,%bb[201]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[202]*z** 0,%c1[202]*z** 1,%c2[202]*z** 2,%c3[202]*z** 3,
               %c4[202]*z** 4,%c5[202]*z** 5,%c6[202]*z** 6,%c7[202]*z** 7,
               %c8[202]*z** 8,%c9[202]*z** 9,%ca[202]*z**10,%cb[202]*z**11])
      (poly z [%a0[202]*z** 0,%a1[202]*z** 1,%a2[202]*z** 2,%a3[202]*z** 3,
               %a4[202]*z** 4,%a5[202]*z** 5,%a6[202]*z** 6,%a7[202]*z** 7,
               %a8[202]*z** 8,%a9[202]*z** 9,%aa[202]*z**10,%ab[202]*z**11] *
       poly z [%b0[202]*z** 0,%b1[202]*z** 1,%b2[202]*z** 2,%b3[202]*z** 3,
               %b4[202]*z** 4,%b5[202]*z** 5,%b6[202]*z** 6,%b7[202]*z** 7,
               %b8[202]*z** 8,%b9[202]*z** 9,%ba[202]*z**10,%bb[202]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[203]*z** 0,%c1[203]*z** 1,%c2[203]*z** 2,%c3[203]*z** 3,
               %c4[203]*z** 4,%c5[203]*z** 5,%c6[203]*z** 6,%c7[203]*z** 7,
               %c8[203]*z** 8,%c9[203]*z** 9,%ca[203]*z**10,%cb[203]*z**11])
      (poly z [%a0[203]*z** 0,%a1[203]*z** 1,%a2[203]*z** 2,%a3[203]*z** 3,
               %a4[203]*z** 4,%a5[203]*z** 5,%a6[203]*z** 6,%a7[203]*z** 7,
               %a8[203]*z** 8,%a9[203]*z** 9,%aa[203]*z**10,%ab[203]*z**11] *
       poly z [%b0[203]*z** 0,%b1[203]*z** 1,%b2[203]*z** 2,%b3[203]*z** 3,
               %b4[203]*z** 4,%b5[203]*z** 5,%b6[203]*z** 6,%b7[203]*z** 7,
               %b8[203]*z** 8,%b9[203]*z** 9,%ba[203]*z**10,%bb[203]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[204]*z** 0,%c1[204]*z** 1,%c2[204]*z** 2,%c3[204]*z** 3,
               %c4[204]*z** 4,%c5[204]*z** 5,%c6[204]*z** 6,%c7[204]*z** 7,
               %c8[204]*z** 8,%c9[204]*z** 9,%ca[204]*z**10,%cb[204]*z**11])
      (poly z [%a0[204]*z** 0,%a1[204]*z** 1,%a2[204]*z** 2,%a3[204]*z** 3,
               %a4[204]*z** 4,%a5[204]*z** 5,%a6[204]*z** 6,%a7[204]*z** 7,
               %a8[204]*z** 8,%a9[204]*z** 9,%aa[204]*z**10,%ab[204]*z**11] *
       poly z [%b0[204]*z** 0,%b1[204]*z** 1,%b2[204]*z** 2,%b3[204]*z** 3,
               %b4[204]*z** 4,%b5[204]*z** 5,%b6[204]*z** 6,%b7[204]*z** 7,
               %b8[204]*z** 8,%b9[204]*z** 9,%ba[204]*z**10,%bb[204]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[205]*z** 0,%c1[205]*z** 1,%c2[205]*z** 2,%c3[205]*z** 3,
               %c4[205]*z** 4,%c5[205]*z** 5,%c6[205]*z** 6,%c7[205]*z** 7,
               %c8[205]*z** 8,%c9[205]*z** 9,%ca[205]*z**10,%cb[205]*z**11])
      (poly z [%a0[205]*z** 0,%a1[205]*z** 1,%a2[205]*z** 2,%a3[205]*z** 3,
               %a4[205]*z** 4,%a5[205]*z** 5,%a6[205]*z** 6,%a7[205]*z** 7,
               %a8[205]*z** 8,%a9[205]*z** 9,%aa[205]*z**10,%ab[205]*z**11] *
       poly z [%b0[205]*z** 0,%b1[205]*z** 1,%b2[205]*z** 2,%b3[205]*z** 3,
               %b4[205]*z** 4,%b5[205]*z** 5,%b6[205]*z** 6,%b7[205]*z** 7,
               %b8[205]*z** 8,%b9[205]*z** 9,%ba[205]*z**10,%bb[205]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[206]*z** 0,%c1[206]*z** 1,%c2[206]*z** 2,%c3[206]*z** 3,
               %c4[206]*z** 4,%c5[206]*z** 5,%c6[206]*z** 6,%c7[206]*z** 7,
               %c8[206]*z** 8,%c9[206]*z** 9,%ca[206]*z**10,%cb[206]*z**11])
      (poly z [%a0[206]*z** 0,%a1[206]*z** 1,%a2[206]*z** 2,%a3[206]*z** 3,
               %a4[206]*z** 4,%a5[206]*z** 5,%a6[206]*z** 6,%a7[206]*z** 7,
               %a8[206]*z** 8,%a9[206]*z** 9,%aa[206]*z**10,%ab[206]*z**11] *
       poly z [%b0[206]*z** 0,%b1[206]*z** 1,%b2[206]*z** 2,%b3[206]*z** 3,
               %b4[206]*z** 4,%b5[206]*z** 5,%b6[206]*z** 6,%b7[206]*z** 7,
               %b8[206]*z** 8,%b9[206]*z** 9,%ba[206]*z**10,%bb[206]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[207]*z** 0,%c1[207]*z** 1,%c2[207]*z** 2,%c3[207]*z** 3,
               %c4[207]*z** 4,%c5[207]*z** 5,%c6[207]*z** 6,%c7[207]*z** 7,
               %c8[207]*z** 8,%c9[207]*z** 9,%ca[207]*z**10,%cb[207]*z**11])
      (poly z [%a0[207]*z** 0,%a1[207]*z** 1,%a2[207]*z** 2,%a3[207]*z** 3,
               %a4[207]*z** 4,%a5[207]*z** 5,%a6[207]*z** 6,%a7[207]*z** 7,
               %a8[207]*z** 8,%a9[207]*z** 9,%aa[207]*z**10,%ab[207]*z**11] *
       poly z [%b0[207]*z** 0,%b1[207]*z** 1,%b2[207]*z** 2,%b3[207]*z** 3,
               %b4[207]*z** 4,%b5[207]*z** 5,%b6[207]*z** 6,%b7[207]*z** 7,
               %b8[207]*z** 8,%b9[207]*z** 9,%ba[207]*z**10,%bb[207]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[208]*z** 0,%c1[208]*z** 1,%c2[208]*z** 2,%c3[208]*z** 3,
               %c4[208]*z** 4,%c5[208]*z** 5,%c6[208]*z** 6,%c7[208]*z** 7,
               %c8[208]*z** 8,%c9[208]*z** 9,%ca[208]*z**10,%cb[208]*z**11])
      (poly z [%a0[208]*z** 0,%a1[208]*z** 1,%a2[208]*z** 2,%a3[208]*z** 3,
               %a4[208]*z** 4,%a5[208]*z** 5,%a6[208]*z** 6,%a7[208]*z** 7,
               %a8[208]*z** 8,%a9[208]*z** 9,%aa[208]*z**10,%ab[208]*z**11] *
       poly z [%b0[208]*z** 0,%b1[208]*z** 1,%b2[208]*z** 2,%b3[208]*z** 3,
               %b4[208]*z** 4,%b5[208]*z** 5,%b6[208]*z** 6,%b7[208]*z** 7,
               %b8[208]*z** 8,%b9[208]*z** 9,%ba[208]*z**10,%bb[208]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[209]*z** 0,%c1[209]*z** 1,%c2[209]*z** 2,%c3[209]*z** 3,
               %c4[209]*z** 4,%c5[209]*z** 5,%c6[209]*z** 6,%c7[209]*z** 7,
               %c8[209]*z** 8,%c9[209]*z** 9,%ca[209]*z**10,%cb[209]*z**11])
      (poly z [%a0[209]*z** 0,%a1[209]*z** 1,%a2[209]*z** 2,%a3[209]*z** 3,
               %a4[209]*z** 4,%a5[209]*z** 5,%a6[209]*z** 6,%a7[209]*z** 7,
               %a8[209]*z** 8,%a9[209]*z** 9,%aa[209]*z**10,%ab[209]*z**11] *
       poly z [%b0[209]*z** 0,%b1[209]*z** 1,%b2[209]*z** 2,%b3[209]*z** 3,
               %b4[209]*z** 4,%b5[209]*z** 5,%b6[209]*z** 6,%b7[209]*z** 7,
               %b8[209]*z** 8,%b9[209]*z** 9,%ba[209]*z**10,%bb[209]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[210]*z** 0,%c1[210]*z** 1,%c2[210]*z** 2,%c3[210]*z** 3,
               %c4[210]*z** 4,%c5[210]*z** 5,%c6[210]*z** 6,%c7[210]*z** 7,
               %c8[210]*z** 8,%c9[210]*z** 9,%ca[210]*z**10,%cb[210]*z**11])
      (poly z [%a0[210]*z** 0,%a1[210]*z** 1,%a2[210]*z** 2,%a3[210]*z** 3,
               %a4[210]*z** 4,%a5[210]*z** 5,%a6[210]*z** 6,%a7[210]*z** 7,
               %a8[210]*z** 8,%a9[210]*z** 9,%aa[210]*z**10,%ab[210]*z**11] *
       poly z [%b0[210]*z** 0,%b1[210]*z** 1,%b2[210]*z** 2,%b3[210]*z** 3,
               %b4[210]*z** 4,%b5[210]*z** 5,%b6[210]*z** 6,%b7[210]*z** 7,
               %b8[210]*z** 8,%b9[210]*z** 9,%ba[210]*z**10,%bb[210]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[211]*z** 0,%c1[211]*z** 1,%c2[211]*z** 2,%c3[211]*z** 3,
               %c4[211]*z** 4,%c5[211]*z** 5,%c6[211]*z** 6,%c7[211]*z** 7,
               %c8[211]*z** 8,%c9[211]*z** 9,%ca[211]*z**10,%cb[211]*z**11])
      (poly z [%a0[211]*z** 0,%a1[211]*z** 1,%a2[211]*z** 2,%a3[211]*z** 3,
               %a4[211]*z** 4,%a5[211]*z** 5,%a6[211]*z** 6,%a7[211]*z** 7,
               %a8[211]*z** 8,%a9[211]*z** 9,%aa[211]*z**10,%ab[211]*z**11] *
       poly z [%b0[211]*z** 0,%b1[211]*z** 1,%b2[211]*z** 2,%b3[211]*z** 3,
               %b4[211]*z** 4,%b5[211]*z** 5,%b6[211]*z** 6,%b7[211]*z** 7,
               %b8[211]*z** 8,%b9[211]*z** 9,%ba[211]*z**10,%bb[211]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[212]*z** 0,%c1[212]*z** 1,%c2[212]*z** 2,%c3[212]*z** 3,
               %c4[212]*z** 4,%c5[212]*z** 5,%c6[212]*z** 6,%c7[212]*z** 7,
               %c8[212]*z** 8,%c9[212]*z** 9,%ca[212]*z**10,%cb[212]*z**11])
      (poly z [%a0[212]*z** 0,%a1[212]*z** 1,%a2[212]*z** 2,%a3[212]*z** 3,
               %a4[212]*z** 4,%a5[212]*z** 5,%a6[212]*z** 6,%a7[212]*z** 7,
               %a8[212]*z** 8,%a9[212]*z** 9,%aa[212]*z**10,%ab[212]*z**11] *
       poly z [%b0[212]*z** 0,%b1[212]*z** 1,%b2[212]*z** 2,%b3[212]*z** 3,
               %b4[212]*z** 4,%b5[212]*z** 5,%b6[212]*z** 6,%b7[212]*z** 7,
               %b8[212]*z** 8,%b9[212]*z** 9,%ba[212]*z**10,%bb[212]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[213]*z** 0,%c1[213]*z** 1,%c2[213]*z** 2,%c3[213]*z** 3,
               %c4[213]*z** 4,%c5[213]*z** 5,%c6[213]*z** 6,%c7[213]*z** 7,
               %c8[213]*z** 8,%c9[213]*z** 9,%ca[213]*z**10,%cb[213]*z**11])
      (poly z [%a0[213]*z** 0,%a1[213]*z** 1,%a2[213]*z** 2,%a3[213]*z** 3,
               %a4[213]*z** 4,%a5[213]*z** 5,%a6[213]*z** 6,%a7[213]*z** 7,
               %a8[213]*z** 8,%a9[213]*z** 9,%aa[213]*z**10,%ab[213]*z**11] *
       poly z [%b0[213]*z** 0,%b1[213]*z** 1,%b2[213]*z** 2,%b3[213]*z** 3,
               %b4[213]*z** 4,%b5[213]*z** 5,%b6[213]*z** 6,%b7[213]*z** 7,
               %b8[213]*z** 8,%b9[213]*z** 9,%ba[213]*z**10,%bb[213]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[214]*z** 0,%c1[214]*z** 1,%c2[214]*z** 2,%c3[214]*z** 3,
               %c4[214]*z** 4,%c5[214]*z** 5,%c6[214]*z** 6,%c7[214]*z** 7,
               %c8[214]*z** 8,%c9[214]*z** 9,%ca[214]*z**10,%cb[214]*z**11])
      (poly z [%a0[214]*z** 0,%a1[214]*z** 1,%a2[214]*z** 2,%a3[214]*z** 3,
               %a4[214]*z** 4,%a5[214]*z** 5,%a6[214]*z** 6,%a7[214]*z** 7,
               %a8[214]*z** 8,%a9[214]*z** 9,%aa[214]*z**10,%ab[214]*z**11] *
       poly z [%b0[214]*z** 0,%b1[214]*z** 1,%b2[214]*z** 2,%b3[214]*z** 3,
               %b4[214]*z** 4,%b5[214]*z** 5,%b6[214]*z** 6,%b7[214]*z** 7,
               %b8[214]*z** 8,%b9[214]*z** 9,%ba[214]*z**10,%bb[214]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[215]*z** 0,%c1[215]*z** 1,%c2[215]*z** 2,%c3[215]*z** 3,
               %c4[215]*z** 4,%c5[215]*z** 5,%c6[215]*z** 6,%c7[215]*z** 7,
               %c8[215]*z** 8,%c9[215]*z** 9,%ca[215]*z**10,%cb[215]*z**11])
      (poly z [%a0[215]*z** 0,%a1[215]*z** 1,%a2[215]*z** 2,%a3[215]*z** 3,
               %a4[215]*z** 4,%a5[215]*z** 5,%a6[215]*z** 6,%a7[215]*z** 7,
               %a8[215]*z** 8,%a9[215]*z** 9,%aa[215]*z**10,%ab[215]*z**11] *
       poly z [%b0[215]*z** 0,%b1[215]*z** 1,%b2[215]*z** 2,%b3[215]*z** 3,
               %b4[215]*z** 4,%b5[215]*z** 5,%b6[215]*z** 6,%b7[215]*z** 7,
               %b8[215]*z** 8,%b9[215]*z** 9,%ba[215]*z**10,%bb[215]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[216]*z** 0,%c1[216]*z** 1,%c2[216]*z** 2,%c3[216]*z** 3,
               %c4[216]*z** 4,%c5[216]*z** 5,%c6[216]*z** 6,%c7[216]*z** 7,
               %c8[216]*z** 8,%c9[216]*z** 9,%ca[216]*z**10,%cb[216]*z**11])
      (poly z [%a0[216]*z** 0,%a1[216]*z** 1,%a2[216]*z** 2,%a3[216]*z** 3,
               %a4[216]*z** 4,%a5[216]*z** 5,%a6[216]*z** 6,%a7[216]*z** 7,
               %a8[216]*z** 8,%a9[216]*z** 9,%aa[216]*z**10,%ab[216]*z**11] *
       poly z [%b0[216]*z** 0,%b1[216]*z** 1,%b2[216]*z** 2,%b3[216]*z** 3,
               %b4[216]*z** 4,%b5[216]*z** 5,%b6[216]*z** 6,%b7[216]*z** 7,
               %b8[216]*z** 8,%b9[216]*z** 9,%ba[216]*z**10,%bb[216]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[217]*z** 0,%c1[217]*z** 1,%c2[217]*z** 2,%c3[217]*z** 3,
               %c4[217]*z** 4,%c5[217]*z** 5,%c6[217]*z** 6,%c7[217]*z** 7,
               %c8[217]*z** 8,%c9[217]*z** 9,%ca[217]*z**10,%cb[217]*z**11])
      (poly z [%a0[217]*z** 0,%a1[217]*z** 1,%a2[217]*z** 2,%a3[217]*z** 3,
               %a4[217]*z** 4,%a5[217]*z** 5,%a6[217]*z** 6,%a7[217]*z** 7,
               %a8[217]*z** 8,%a9[217]*z** 9,%aa[217]*z**10,%ab[217]*z**11] *
       poly z [%b0[217]*z** 0,%b1[217]*z** 1,%b2[217]*z** 2,%b3[217]*z** 3,
               %b4[217]*z** 4,%b5[217]*z** 5,%b6[217]*z** 6,%b7[217]*z** 7,
               %b8[217]*z** 8,%b9[217]*z** 9,%ba[217]*z**10,%bb[217]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[218]*z** 0,%c1[218]*z** 1,%c2[218]*z** 2,%c3[218]*z** 3,
               %c4[218]*z** 4,%c5[218]*z** 5,%c6[218]*z** 6,%c7[218]*z** 7,
               %c8[218]*z** 8,%c9[218]*z** 9,%ca[218]*z**10,%cb[218]*z**11])
      (poly z [%a0[218]*z** 0,%a1[218]*z** 1,%a2[218]*z** 2,%a3[218]*z** 3,
               %a4[218]*z** 4,%a5[218]*z** 5,%a6[218]*z** 6,%a7[218]*z** 7,
               %a8[218]*z** 8,%a9[218]*z** 9,%aa[218]*z**10,%ab[218]*z**11] *
       poly z [%b0[218]*z** 0,%b1[218]*z** 1,%b2[218]*z** 2,%b3[218]*z** 3,
               %b4[218]*z** 4,%b5[218]*z** 5,%b6[218]*z** 6,%b7[218]*z** 7,
               %b8[218]*z** 8,%b9[218]*z** 9,%ba[218]*z**10,%bb[218]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[219]*z** 0,%c1[219]*z** 1,%c2[219]*z** 2,%c3[219]*z** 3,
               %c4[219]*z** 4,%c5[219]*z** 5,%c6[219]*z** 6,%c7[219]*z** 7,
               %c8[219]*z** 8,%c9[219]*z** 9,%ca[219]*z**10,%cb[219]*z**11])
      (poly z [%a0[219]*z** 0,%a1[219]*z** 1,%a2[219]*z** 2,%a3[219]*z** 3,
               %a4[219]*z** 4,%a5[219]*z** 5,%a6[219]*z** 6,%a7[219]*z** 7,
               %a8[219]*z** 8,%a9[219]*z** 9,%aa[219]*z**10,%ab[219]*z**11] *
       poly z [%b0[219]*z** 0,%b1[219]*z** 1,%b2[219]*z** 2,%b3[219]*z** 3,
               %b4[219]*z** 4,%b5[219]*z** 5,%b6[219]*z** 6,%b7[219]*z** 7,
               %b8[219]*z** 8,%b9[219]*z** 9,%ba[219]*z**10,%bb[219]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[220]*z** 0,%c1[220]*z** 1,%c2[220]*z** 2,%c3[220]*z** 3,
               %c4[220]*z** 4,%c5[220]*z** 5,%c6[220]*z** 6,%c7[220]*z** 7,
               %c8[220]*z** 8,%c9[220]*z** 9,%ca[220]*z**10,%cb[220]*z**11])
      (poly z [%a0[220]*z** 0,%a1[220]*z** 1,%a2[220]*z** 2,%a3[220]*z** 3,
               %a4[220]*z** 4,%a5[220]*z** 5,%a6[220]*z** 6,%a7[220]*z** 7,
               %a8[220]*z** 8,%a9[220]*z** 9,%aa[220]*z**10,%ab[220]*z**11] *
       poly z [%b0[220]*z** 0,%b1[220]*z** 1,%b2[220]*z** 2,%b3[220]*z** 3,
               %b4[220]*z** 4,%b5[220]*z** 5,%b6[220]*z** 6,%b7[220]*z** 7,
               %b8[220]*z** 8,%b9[220]*z** 9,%ba[220]*z**10,%bb[220]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[221]*z** 0,%c1[221]*z** 1,%c2[221]*z** 2,%c3[221]*z** 3,
               %c4[221]*z** 4,%c5[221]*z** 5,%c6[221]*z** 6,%c7[221]*z** 7,
               %c8[221]*z** 8,%c9[221]*z** 9,%ca[221]*z**10,%cb[221]*z**11])
      (poly z [%a0[221]*z** 0,%a1[221]*z** 1,%a2[221]*z** 2,%a3[221]*z** 3,
               %a4[221]*z** 4,%a5[221]*z** 5,%a6[221]*z** 6,%a7[221]*z** 7,
               %a8[221]*z** 8,%a9[221]*z** 9,%aa[221]*z**10,%ab[221]*z**11] *
       poly z [%b0[221]*z** 0,%b1[221]*z** 1,%b2[221]*z** 2,%b3[221]*z** 3,
               %b4[221]*z** 4,%b5[221]*z** 5,%b6[221]*z** 6,%b7[221]*z** 7,
               %b8[221]*z** 8,%b9[221]*z** 9,%ba[221]*z**10,%bb[221]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[222]*z** 0,%c1[222]*z** 1,%c2[222]*z** 2,%c3[222]*z** 3,
               %c4[222]*z** 4,%c5[222]*z** 5,%c6[222]*z** 6,%c7[222]*z** 7,
               %c8[222]*z** 8,%c9[222]*z** 9,%ca[222]*z**10,%cb[222]*z**11])
      (poly z [%a0[222]*z** 0,%a1[222]*z** 1,%a2[222]*z** 2,%a3[222]*z** 3,
               %a4[222]*z** 4,%a5[222]*z** 5,%a6[222]*z** 6,%a7[222]*z** 7,
               %a8[222]*z** 8,%a9[222]*z** 9,%aa[222]*z**10,%ab[222]*z**11] *
       poly z [%b0[222]*z** 0,%b1[222]*z** 1,%b2[222]*z** 2,%b3[222]*z** 3,
               %b4[222]*z** 4,%b5[222]*z** 5,%b6[222]*z** 6,%b7[222]*z** 7,
               %b8[222]*z** 8,%b9[222]*z** 9,%ba[222]*z**10,%bb[222]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[223]*z** 0,%c1[223]*z** 1,%c2[223]*z** 2,%c3[223]*z** 3,
               %c4[223]*z** 4,%c5[223]*z** 5,%c6[223]*z** 6,%c7[223]*z** 7,
               %c8[223]*z** 8,%c9[223]*z** 9,%ca[223]*z**10,%cb[223]*z**11])
      (poly z [%a0[223]*z** 0,%a1[223]*z** 1,%a2[223]*z** 2,%a3[223]*z** 3,
               %a4[223]*z** 4,%a5[223]*z** 5,%a6[223]*z** 6,%a7[223]*z** 7,
               %a8[223]*z** 8,%a9[223]*z** 9,%aa[223]*z**10,%ab[223]*z**11] *
       poly z [%b0[223]*z** 0,%b1[223]*z** 1,%b2[223]*z** 2,%b3[223]*z** 3,
               %b4[223]*z** 4,%b5[223]*z** 5,%b6[223]*z** 6,%b7[223]*z** 7,
               %b8[223]*z** 8,%b9[223]*z** 9,%ba[223]*z**10,%bb[223]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[224]*z** 0,%c1[224]*z** 1,%c2[224]*z** 2,%c3[224]*z** 3,
               %c4[224]*z** 4,%c5[224]*z** 5,%c6[224]*z** 6,%c7[224]*z** 7,
               %c8[224]*z** 8,%c9[224]*z** 9,%ca[224]*z**10,%cb[224]*z**11])
      (poly z [%a0[224]*z** 0,%a1[224]*z** 1,%a2[224]*z** 2,%a3[224]*z** 3,
               %a4[224]*z** 4,%a5[224]*z** 5,%a6[224]*z** 6,%a7[224]*z** 7,
               %a8[224]*z** 8,%a9[224]*z** 9,%aa[224]*z**10,%ab[224]*z**11] *
       poly z [%b0[224]*z** 0,%b1[224]*z** 1,%b2[224]*z** 2,%b3[224]*z** 3,
               %b4[224]*z** 4,%b5[224]*z** 5,%b6[224]*z** 6,%b7[224]*z** 7,
               %b8[224]*z** 8,%b9[224]*z** 9,%ba[224]*z**10,%bb[224]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[225]*z** 0,%c1[225]*z** 1,%c2[225]*z** 2,%c3[225]*z** 3,
               %c4[225]*z** 4,%c5[225]*z** 5,%c6[225]*z** 6,%c7[225]*z** 7,
               %c8[225]*z** 8,%c9[225]*z** 9,%ca[225]*z**10,%cb[225]*z**11])
      (poly z [%a0[225]*z** 0,%a1[225]*z** 1,%a2[225]*z** 2,%a3[225]*z** 3,
               %a4[225]*z** 4,%a5[225]*z** 5,%a6[225]*z** 6,%a7[225]*z** 7,
               %a8[225]*z** 8,%a9[225]*z** 9,%aa[225]*z**10,%ab[225]*z**11] *
       poly z [%b0[225]*z** 0,%b1[225]*z** 1,%b2[225]*z** 2,%b3[225]*z** 3,
               %b4[225]*z** 4,%b5[225]*z** 5,%b6[225]*z** 6,%b7[225]*z** 7,
               %b8[225]*z** 8,%b9[225]*z** 9,%ba[225]*z**10,%bb[225]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[226]*z** 0,%c1[226]*z** 1,%c2[226]*z** 2,%c3[226]*z** 3,
               %c4[226]*z** 4,%c5[226]*z** 5,%c6[226]*z** 6,%c7[226]*z** 7,
               %c8[226]*z** 8,%c9[226]*z** 9,%ca[226]*z**10,%cb[226]*z**11])
      (poly z [%a0[226]*z** 0,%a1[226]*z** 1,%a2[226]*z** 2,%a3[226]*z** 3,
               %a4[226]*z** 4,%a5[226]*z** 5,%a6[226]*z** 6,%a7[226]*z** 7,
               %a8[226]*z** 8,%a9[226]*z** 9,%aa[226]*z**10,%ab[226]*z**11] *
       poly z [%b0[226]*z** 0,%b1[226]*z** 1,%b2[226]*z** 2,%b3[226]*z** 3,
               %b4[226]*z** 4,%b5[226]*z** 5,%b6[226]*z** 6,%b7[226]*z** 7,
               %b8[226]*z** 8,%b9[226]*z** 9,%ba[226]*z**10,%bb[226]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[227]*z** 0,%c1[227]*z** 1,%c2[227]*z** 2,%c3[227]*z** 3,
               %c4[227]*z** 4,%c5[227]*z** 5,%c6[227]*z** 6,%c7[227]*z** 7,
               %c8[227]*z** 8,%c9[227]*z** 9,%ca[227]*z**10,%cb[227]*z**11])
      (poly z [%a0[227]*z** 0,%a1[227]*z** 1,%a2[227]*z** 2,%a3[227]*z** 3,
               %a4[227]*z** 4,%a5[227]*z** 5,%a6[227]*z** 6,%a7[227]*z** 7,
               %a8[227]*z** 8,%a9[227]*z** 9,%aa[227]*z**10,%ab[227]*z**11] *
       poly z [%b0[227]*z** 0,%b1[227]*z** 1,%b2[227]*z** 2,%b3[227]*z** 3,
               %b4[227]*z** 4,%b5[227]*z** 5,%b6[227]*z** 6,%b7[227]*z** 7,
               %b8[227]*z** 8,%b9[227]*z** 9,%ba[227]*z**10,%bb[227]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[228]*z** 0,%c1[228]*z** 1,%c2[228]*z** 2,%c3[228]*z** 3,
               %c4[228]*z** 4,%c5[228]*z** 5,%c6[228]*z** 6,%c7[228]*z** 7,
               %c8[228]*z** 8,%c9[228]*z** 9,%ca[228]*z**10,%cb[228]*z**11])
      (poly z [%a0[228]*z** 0,%a1[228]*z** 1,%a2[228]*z** 2,%a3[228]*z** 3,
               %a4[228]*z** 4,%a5[228]*z** 5,%a6[228]*z** 6,%a7[228]*z** 7,
               %a8[228]*z** 8,%a9[228]*z** 9,%aa[228]*z**10,%ab[228]*z**11] *
       poly z [%b0[228]*z** 0,%b1[228]*z** 1,%b2[228]*z** 2,%b3[228]*z** 3,
               %b4[228]*z** 4,%b5[228]*z** 5,%b6[228]*z** 6,%b7[228]*z** 7,
               %b8[228]*z** 8,%b9[228]*z** 9,%ba[228]*z**10,%bb[228]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[229]*z** 0,%c1[229]*z** 1,%c2[229]*z** 2,%c3[229]*z** 3,
               %c4[229]*z** 4,%c5[229]*z** 5,%c6[229]*z** 6,%c7[229]*z** 7,
               %c8[229]*z** 8,%c9[229]*z** 9,%ca[229]*z**10,%cb[229]*z**11])
      (poly z [%a0[229]*z** 0,%a1[229]*z** 1,%a2[229]*z** 2,%a3[229]*z** 3,
               %a4[229]*z** 4,%a5[229]*z** 5,%a6[229]*z** 6,%a7[229]*z** 7,
               %a8[229]*z** 8,%a9[229]*z** 9,%aa[229]*z**10,%ab[229]*z**11] *
       poly z [%b0[229]*z** 0,%b1[229]*z** 1,%b2[229]*z** 2,%b3[229]*z** 3,
               %b4[229]*z** 4,%b5[229]*z** 5,%b6[229]*z** 6,%b7[229]*z** 7,
               %b8[229]*z** 8,%b9[229]*z** 9,%ba[229]*z**10,%bb[229]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[230]*z** 0,%c1[230]*z** 1,%c2[230]*z** 2,%c3[230]*z** 3,
               %c4[230]*z** 4,%c5[230]*z** 5,%c6[230]*z** 6,%c7[230]*z** 7,
               %c8[230]*z** 8,%c9[230]*z** 9,%ca[230]*z**10,%cb[230]*z**11])
      (poly z [%a0[230]*z** 0,%a1[230]*z** 1,%a2[230]*z** 2,%a3[230]*z** 3,
               %a4[230]*z** 4,%a5[230]*z** 5,%a6[230]*z** 6,%a7[230]*z** 7,
               %a8[230]*z** 8,%a9[230]*z** 9,%aa[230]*z**10,%ab[230]*z**11] *
       poly z [%b0[230]*z** 0,%b1[230]*z** 1,%b2[230]*z** 2,%b3[230]*z** 3,
               %b4[230]*z** 4,%b5[230]*z** 5,%b6[230]*z** 6,%b7[230]*z** 7,
               %b8[230]*z** 8,%b9[230]*z** 9,%ba[230]*z**10,%bb[230]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[231]*z** 0,%c1[231]*z** 1,%c2[231]*z** 2,%c3[231]*z** 3,
               %c4[231]*z** 4,%c5[231]*z** 5,%c6[231]*z** 6,%c7[231]*z** 7,
               %c8[231]*z** 8,%c9[231]*z** 9,%ca[231]*z**10,%cb[231]*z**11])
      (poly z [%a0[231]*z** 0,%a1[231]*z** 1,%a2[231]*z** 2,%a3[231]*z** 3,
               %a4[231]*z** 4,%a5[231]*z** 5,%a6[231]*z** 6,%a7[231]*z** 7,
               %a8[231]*z** 8,%a9[231]*z** 9,%aa[231]*z**10,%ab[231]*z**11] *
       poly z [%b0[231]*z** 0,%b1[231]*z** 1,%b2[231]*z** 2,%b3[231]*z** 3,
               %b4[231]*z** 4,%b5[231]*z** 5,%b6[231]*z** 6,%b7[231]*z** 7,
               %b8[231]*z** 8,%b9[231]*z** 9,%ba[231]*z**10,%bb[231]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[232]*z** 0,%c1[232]*z** 1,%c2[232]*z** 2,%c3[232]*z** 3,
               %c4[232]*z** 4,%c5[232]*z** 5,%c6[232]*z** 6,%c7[232]*z** 7,
               %c8[232]*z** 8,%c9[232]*z** 9,%ca[232]*z**10,%cb[232]*z**11])
      (poly z [%a0[232]*z** 0,%a1[232]*z** 1,%a2[232]*z** 2,%a3[232]*z** 3,
               %a4[232]*z** 4,%a5[232]*z** 5,%a6[232]*z** 6,%a7[232]*z** 7,
               %a8[232]*z** 8,%a9[232]*z** 9,%aa[232]*z**10,%ab[232]*z**11] *
       poly z [%b0[232]*z** 0,%b1[232]*z** 1,%b2[232]*z** 2,%b3[232]*z** 3,
               %b4[232]*z** 4,%b5[232]*z** 5,%b6[232]*z** 6,%b7[232]*z** 7,
               %b8[232]*z** 8,%b9[232]*z** 9,%ba[232]*z**10,%bb[232]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[233]*z** 0,%c1[233]*z** 1,%c2[233]*z** 2,%c3[233]*z** 3,
               %c4[233]*z** 4,%c5[233]*z** 5,%c6[233]*z** 6,%c7[233]*z** 7,
               %c8[233]*z** 8,%c9[233]*z** 9,%ca[233]*z**10,%cb[233]*z**11])
      (poly z [%a0[233]*z** 0,%a1[233]*z** 1,%a2[233]*z** 2,%a3[233]*z** 3,
               %a4[233]*z** 4,%a5[233]*z** 5,%a6[233]*z** 6,%a7[233]*z** 7,
               %a8[233]*z** 8,%a9[233]*z** 9,%aa[233]*z**10,%ab[233]*z**11] *
       poly z [%b0[233]*z** 0,%b1[233]*z** 1,%b2[233]*z** 2,%b3[233]*z** 3,
               %b4[233]*z** 4,%b5[233]*z** 5,%b6[233]*z** 6,%b7[233]*z** 7,
               %b8[233]*z** 8,%b9[233]*z** 9,%ba[233]*z**10,%bb[233]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[234]*z** 0,%c1[234]*z** 1,%c2[234]*z** 2,%c3[234]*z** 3,
               %c4[234]*z** 4,%c5[234]*z** 5,%c6[234]*z** 6,%c7[234]*z** 7,
               %c8[234]*z** 8,%c9[234]*z** 9,%ca[234]*z**10,%cb[234]*z**11])
      (poly z [%a0[234]*z** 0,%a1[234]*z** 1,%a2[234]*z** 2,%a3[234]*z** 3,
               %a4[234]*z** 4,%a5[234]*z** 5,%a6[234]*z** 6,%a7[234]*z** 7,
               %a8[234]*z** 8,%a9[234]*z** 9,%aa[234]*z**10,%ab[234]*z**11] *
       poly z [%b0[234]*z** 0,%b1[234]*z** 1,%b2[234]*z** 2,%b3[234]*z** 3,
               %b4[234]*z** 4,%b5[234]*z** 5,%b6[234]*z** 6,%b7[234]*z** 7,
               %b8[234]*z** 8,%b9[234]*z** 9,%ba[234]*z**10,%bb[234]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[235]*z** 0,%c1[235]*z** 1,%c2[235]*z** 2,%c3[235]*z** 3,
               %c4[235]*z** 4,%c5[235]*z** 5,%c6[235]*z** 6,%c7[235]*z** 7,
               %c8[235]*z** 8,%c9[235]*z** 9,%ca[235]*z**10,%cb[235]*z**11])
      (poly z [%a0[235]*z** 0,%a1[235]*z** 1,%a2[235]*z** 2,%a3[235]*z** 3,
               %a4[235]*z** 4,%a5[235]*z** 5,%a6[235]*z** 6,%a7[235]*z** 7,
               %a8[235]*z** 8,%a9[235]*z** 9,%aa[235]*z**10,%ab[235]*z**11] *
       poly z [%b0[235]*z** 0,%b1[235]*z** 1,%b2[235]*z** 2,%b3[235]*z** 3,
               %b4[235]*z** 4,%b5[235]*z** 5,%b6[235]*z** 6,%b7[235]*z** 7,
               %b8[235]*z** 8,%b9[235]*z** 9,%ba[235]*z**10,%bb[235]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[236]*z** 0,%c1[236]*z** 1,%c2[236]*z** 2,%c3[236]*z** 3,
               %c4[236]*z** 4,%c5[236]*z** 5,%c6[236]*z** 6,%c7[236]*z** 7,
               %c8[236]*z** 8,%c9[236]*z** 9,%ca[236]*z**10,%cb[236]*z**11])
      (poly z [%a0[236]*z** 0,%a1[236]*z** 1,%a2[236]*z** 2,%a3[236]*z** 3,
               %a4[236]*z** 4,%a5[236]*z** 5,%a6[236]*z** 6,%a7[236]*z** 7,
               %a8[236]*z** 8,%a9[236]*z** 9,%aa[236]*z**10,%ab[236]*z**11] *
       poly z [%b0[236]*z** 0,%b1[236]*z** 1,%b2[236]*z** 2,%b3[236]*z** 3,
               %b4[236]*z** 4,%b5[236]*z** 5,%b6[236]*z** 6,%b7[236]*z** 7,
               %b8[236]*z** 8,%b9[236]*z** 9,%ba[236]*z**10,%bb[236]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[237]*z** 0,%c1[237]*z** 1,%c2[237]*z** 2,%c3[237]*z** 3,
               %c4[237]*z** 4,%c5[237]*z** 5,%c6[237]*z** 6,%c7[237]*z** 7,
               %c8[237]*z** 8,%c9[237]*z** 9,%ca[237]*z**10,%cb[237]*z**11])
      (poly z [%a0[237]*z** 0,%a1[237]*z** 1,%a2[237]*z** 2,%a3[237]*z** 3,
               %a4[237]*z** 4,%a5[237]*z** 5,%a6[237]*z** 6,%a7[237]*z** 7,
               %a8[237]*z** 8,%a9[237]*z** 9,%aa[237]*z**10,%ab[237]*z**11] *
       poly z [%b0[237]*z** 0,%b1[237]*z** 1,%b2[237]*z** 2,%b3[237]*z** 3,
               %b4[237]*z** 4,%b5[237]*z** 5,%b6[237]*z** 6,%b7[237]*z** 7,
               %b8[237]*z** 8,%b9[237]*z** 9,%ba[237]*z**10,%bb[237]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[238]*z** 0,%c1[238]*z** 1,%c2[238]*z** 2,%c3[238]*z** 3,
               %c4[238]*z** 4,%c5[238]*z** 5,%c6[238]*z** 6,%c7[238]*z** 7,
               %c8[238]*z** 8,%c9[238]*z** 9,%ca[238]*z**10,%cb[238]*z**11])
      (poly z [%a0[238]*z** 0,%a1[238]*z** 1,%a2[238]*z** 2,%a3[238]*z** 3,
               %a4[238]*z** 4,%a5[238]*z** 5,%a6[238]*z** 6,%a7[238]*z** 7,
               %a8[238]*z** 8,%a9[238]*z** 9,%aa[238]*z**10,%ab[238]*z**11] *
       poly z [%b0[238]*z** 0,%b1[238]*z** 1,%b2[238]*z** 2,%b3[238]*z** 3,
               %b4[238]*z** 4,%b5[238]*z** 5,%b6[238]*z** 6,%b7[238]*z** 7,
               %b8[238]*z** 8,%b9[238]*z** 9,%ba[238]*z**10,%bb[238]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[239]*z** 0,%c1[239]*z** 1,%c2[239]*z** 2,%c3[239]*z** 3,
               %c4[239]*z** 4,%c5[239]*z** 5,%c6[239]*z** 6,%c7[239]*z** 7,
               %c8[239]*z** 8,%c9[239]*z** 9,%ca[239]*z**10,%cb[239]*z**11])
      (poly z [%a0[239]*z** 0,%a1[239]*z** 1,%a2[239]*z** 2,%a3[239]*z** 3,
               %a4[239]*z** 4,%a5[239]*z** 5,%a6[239]*z** 6,%a7[239]*z** 7,
               %a8[239]*z** 8,%a9[239]*z** 9,%aa[239]*z**10,%ab[239]*z**11] *
       poly z [%b0[239]*z** 0,%b1[239]*z** 1,%b2[239]*z** 2,%b3[239]*z** 3,
               %b4[239]*z** 4,%b5[239]*z** 5,%b6[239]*z** 6,%b7[239]*z** 7,
               %b8[239]*z** 8,%b9[239]*z** 9,%ba[239]*z**10,%bb[239]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[240]*z** 0,%c1[240]*z** 1,%c2[240]*z** 2,%c3[240]*z** 3,
               %c4[240]*z** 4,%c5[240]*z** 5,%c6[240]*z** 6,%c7[240]*z** 7,
               %c8[240]*z** 8,%c9[240]*z** 9,%ca[240]*z**10,%cb[240]*z**11])
      (poly z [%a0[240]*z** 0,%a1[240]*z** 1,%a2[240]*z** 2,%a3[240]*z** 3,
               %a4[240]*z** 4,%a5[240]*z** 5,%a6[240]*z** 6,%a7[240]*z** 7,
               %a8[240]*z** 8,%a9[240]*z** 9,%aa[240]*z**10,%ab[240]*z**11] *
       poly z [%b0[240]*z** 0,%b1[240]*z** 1,%b2[240]*z** 2,%b3[240]*z** 3,
               %b4[240]*z** 4,%b5[240]*z** 5,%b6[240]*z** 6,%b7[240]*z** 7,
               %b8[240]*z** 8,%b9[240]*z** 9,%ba[240]*z**10,%bb[240]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[241]*z** 0,%c1[241]*z** 1,%c2[241]*z** 2,%c3[241]*z** 3,
               %c4[241]*z** 4,%c5[241]*z** 5,%c6[241]*z** 6,%c7[241]*z** 7,
               %c8[241]*z** 8,%c9[241]*z** 9,%ca[241]*z**10,%cb[241]*z**11])
      (poly z [%a0[241]*z** 0,%a1[241]*z** 1,%a2[241]*z** 2,%a3[241]*z** 3,
               %a4[241]*z** 4,%a5[241]*z** 5,%a6[241]*z** 6,%a7[241]*z** 7,
               %a8[241]*z** 8,%a9[241]*z** 9,%aa[241]*z**10,%ab[241]*z**11] *
       poly z [%b0[241]*z** 0,%b1[241]*z** 1,%b2[241]*z** 2,%b3[241]*z** 3,
               %b4[241]*z** 4,%b5[241]*z** 5,%b6[241]*z** 6,%b7[241]*z** 7,
               %b8[241]*z** 8,%b9[241]*z** 9,%ba[241]*z**10,%bb[241]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[242]*z** 0,%c1[242]*z** 1,%c2[242]*z** 2,%c3[242]*z** 3,
               %c4[242]*z** 4,%c5[242]*z** 5,%c6[242]*z** 6,%c7[242]*z** 7,
               %c8[242]*z** 8,%c9[242]*z** 9,%ca[242]*z**10,%cb[242]*z**11])
      (poly z [%a0[242]*z** 0,%a1[242]*z** 1,%a2[242]*z** 2,%a3[242]*z** 3,
               %a4[242]*z** 4,%a5[242]*z** 5,%a6[242]*z** 6,%a7[242]*z** 7,
               %a8[242]*z** 8,%a9[242]*z** 9,%aa[242]*z**10,%ab[242]*z**11] *
       poly z [%b0[242]*z** 0,%b1[242]*z** 1,%b2[242]*z** 2,%b3[242]*z** 3,
               %b4[242]*z** 4,%b5[242]*z** 5,%b6[242]*z** 6,%b7[242]*z** 7,
               %b8[242]*z** 8,%b9[242]*z** 9,%ba[242]*z**10,%bb[242]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[243]*z** 0,%c1[243]*z** 1,%c2[243]*z** 2,%c3[243]*z** 3,
               %c4[243]*z** 4,%c5[243]*z** 5,%c6[243]*z** 6,%c7[243]*z** 7,
               %c8[243]*z** 8,%c9[243]*z** 9,%ca[243]*z**10,%cb[243]*z**11])
      (poly z [%a0[243]*z** 0,%a1[243]*z** 1,%a2[243]*z** 2,%a3[243]*z** 3,
               %a4[243]*z** 4,%a5[243]*z** 5,%a6[243]*z** 6,%a7[243]*z** 7,
               %a8[243]*z** 8,%a9[243]*z** 9,%aa[243]*z**10,%ab[243]*z**11] *
       poly z [%b0[243]*z** 0,%b1[243]*z** 1,%b2[243]*z** 2,%b3[243]*z** 3,
               %b4[243]*z** 4,%b5[243]*z** 5,%b6[243]*z** 6,%b7[243]*z** 7,
               %b8[243]*z** 8,%b9[243]*z** 9,%ba[243]*z**10,%bb[243]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[244]*z** 0,%c1[244]*z** 1,%c2[244]*z** 2,%c3[244]*z** 3,
               %c4[244]*z** 4,%c5[244]*z** 5,%c6[244]*z** 6,%c7[244]*z** 7,
               %c8[244]*z** 8,%c9[244]*z** 9,%ca[244]*z**10,%cb[244]*z**11])
      (poly z [%a0[244]*z** 0,%a1[244]*z** 1,%a2[244]*z** 2,%a3[244]*z** 3,
               %a4[244]*z** 4,%a5[244]*z** 5,%a6[244]*z** 6,%a7[244]*z** 7,
               %a8[244]*z** 8,%a9[244]*z** 9,%aa[244]*z**10,%ab[244]*z**11] *
       poly z [%b0[244]*z** 0,%b1[244]*z** 1,%b2[244]*z** 2,%b3[244]*z** 3,
               %b4[244]*z** 4,%b5[244]*z** 5,%b6[244]*z** 6,%b7[244]*z** 7,
               %b8[244]*z** 8,%b9[244]*z** 9,%ba[244]*z**10,%bb[244]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[245]*z** 0,%c1[245]*z** 1,%c2[245]*z** 2,%c3[245]*z** 3,
               %c4[245]*z** 4,%c5[245]*z** 5,%c6[245]*z** 6,%c7[245]*z** 7,
               %c8[245]*z** 8,%c9[245]*z** 9,%ca[245]*z**10,%cb[245]*z**11])
      (poly z [%a0[245]*z** 0,%a1[245]*z** 1,%a2[245]*z** 2,%a3[245]*z** 3,
               %a4[245]*z** 4,%a5[245]*z** 5,%a6[245]*z** 6,%a7[245]*z** 7,
               %a8[245]*z** 8,%a9[245]*z** 9,%aa[245]*z**10,%ab[245]*z**11] *
       poly z [%b0[245]*z** 0,%b1[245]*z** 1,%b2[245]*z** 2,%b3[245]*z** 3,
               %b4[245]*z** 4,%b5[245]*z** 5,%b6[245]*z** 6,%b7[245]*z** 7,
               %b8[245]*z** 8,%b9[245]*z** 9,%ba[245]*z**10,%bb[245]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[246]*z** 0,%c1[246]*z** 1,%c2[246]*z** 2,%c3[246]*z** 3,
               %c4[246]*z** 4,%c5[246]*z** 5,%c6[246]*z** 6,%c7[246]*z** 7,
               %c8[246]*z** 8,%c9[246]*z** 9,%ca[246]*z**10,%cb[246]*z**11])
      (poly z [%a0[246]*z** 0,%a1[246]*z** 1,%a2[246]*z** 2,%a3[246]*z** 3,
               %a4[246]*z** 4,%a5[246]*z** 5,%a6[246]*z** 6,%a7[246]*z** 7,
               %a8[246]*z** 8,%a9[246]*z** 9,%aa[246]*z**10,%ab[246]*z**11] *
       poly z [%b0[246]*z** 0,%b1[246]*z** 1,%b2[246]*z** 2,%b3[246]*z** 3,
               %b4[246]*z** 4,%b5[246]*z** 5,%b6[246]*z** 6,%b7[246]*z** 7,
               %b8[246]*z** 8,%b9[246]*z** 9,%ba[246]*z**10,%bb[246]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[247]*z** 0,%c1[247]*z** 1,%c2[247]*z** 2,%c3[247]*z** 3,
               %c4[247]*z** 4,%c5[247]*z** 5,%c6[247]*z** 6,%c7[247]*z** 7,
               %c8[247]*z** 8,%c9[247]*z** 9,%ca[247]*z**10,%cb[247]*z**11])
      (poly z [%a0[247]*z** 0,%a1[247]*z** 1,%a2[247]*z** 2,%a3[247]*z** 3,
               %a4[247]*z** 4,%a5[247]*z** 5,%a6[247]*z** 6,%a7[247]*z** 7,
               %a8[247]*z** 8,%a9[247]*z** 9,%aa[247]*z**10,%ab[247]*z**11] *
       poly z [%b0[247]*z** 0,%b1[247]*z** 1,%b2[247]*z** 2,%b3[247]*z** 3,
               %b4[247]*z** 4,%b5[247]*z** 5,%b6[247]*z** 6,%b7[247]*z** 7,
               %b8[247]*z** 8,%b9[247]*z** 9,%ba[247]*z**10,%bb[247]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[248]*z** 0,%c1[248]*z** 1,%c2[248]*z** 2,%c3[248]*z** 3,
               %c4[248]*z** 4,%c5[248]*z** 5,%c6[248]*z** 6,%c7[248]*z** 7,
               %c8[248]*z** 8,%c9[248]*z** 9,%ca[248]*z**10,%cb[248]*z**11])
      (poly z [%a0[248]*z** 0,%a1[248]*z** 1,%a2[248]*z** 2,%a3[248]*z** 3,
               %a4[248]*z** 4,%a5[248]*z** 5,%a6[248]*z** 6,%a7[248]*z** 7,
               %a8[248]*z** 8,%a9[248]*z** 9,%aa[248]*z**10,%ab[248]*z**11] *
       poly z [%b0[248]*z** 0,%b1[248]*z** 1,%b2[248]*z** 2,%b3[248]*z** 3,
               %b4[248]*z** 4,%b5[248]*z** 5,%b6[248]*z** 6,%b7[248]*z** 7,
               %b8[248]*z** 8,%b9[248]*z** 9,%ba[248]*z**10,%bb[248]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[249]*z** 0,%c1[249]*z** 1,%c2[249]*z** 2,%c3[249]*z** 3,
               %c4[249]*z** 4,%c5[249]*z** 5,%c6[249]*z** 6,%c7[249]*z** 7,
               %c8[249]*z** 8,%c9[249]*z** 9,%ca[249]*z**10,%cb[249]*z**11])
      (poly z [%a0[249]*z** 0,%a1[249]*z** 1,%a2[249]*z** 2,%a3[249]*z** 3,
               %a4[249]*z** 4,%a5[249]*z** 5,%a6[249]*z** 6,%a7[249]*z** 7,
               %a8[249]*z** 8,%a9[249]*z** 9,%aa[249]*z**10,%ab[249]*z**11] *
       poly z [%b0[249]*z** 0,%b1[249]*z** 1,%b2[249]*z** 2,%b3[249]*z** 3,
               %b4[249]*z** 4,%b5[249]*z** 5,%b6[249]*z** 6,%b7[249]*z** 7,
               %b8[249]*z** 8,%b9[249]*z** 9,%ba[249]*z**10,%bb[249]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[250]*z** 0,%c1[250]*z** 1,%c2[250]*z** 2,%c3[250]*z** 3,
               %c4[250]*z** 4,%c5[250]*z** 5,%c6[250]*z** 6,%c7[250]*z** 7,
               %c8[250]*z** 8,%c9[250]*z** 9,%ca[250]*z**10,%cb[250]*z**11])
      (poly z [%a0[250]*z** 0,%a1[250]*z** 1,%a2[250]*z** 2,%a3[250]*z** 3,
               %a4[250]*z** 4,%a5[250]*z** 5,%a6[250]*z** 6,%a7[250]*z** 7,
               %a8[250]*z** 8,%a9[250]*z** 9,%aa[250]*z**10,%ab[250]*z**11] *
       poly z [%b0[250]*z** 0,%b1[250]*z** 1,%b2[250]*z** 2,%b3[250]*z** 3,
               %b4[250]*z** 4,%b5[250]*z** 5,%b6[250]*z** 6,%b7[250]*z** 7,
               %b8[250]*z** 8,%b9[250]*z** 9,%ba[250]*z**10,%bb[250]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[251]*z** 0,%c1[251]*z** 1,%c2[251]*z** 2,%c3[251]*z** 3,
               %c4[251]*z** 4,%c5[251]*z** 5,%c6[251]*z** 6,%c7[251]*z** 7,
               %c8[251]*z** 8,%c9[251]*z** 9,%ca[251]*z**10,%cb[251]*z**11])
      (poly z [%a0[251]*z** 0,%a1[251]*z** 1,%a2[251]*z** 2,%a3[251]*z** 3,
               %a4[251]*z** 4,%a5[251]*z** 5,%a6[251]*z** 6,%a7[251]*z** 7,
               %a8[251]*z** 8,%a9[251]*z** 9,%aa[251]*z**10,%ab[251]*z**11] *
       poly z [%b0[251]*z** 0,%b1[251]*z** 1,%b2[251]*z** 2,%b3[251]*z** 3,
               %b4[251]*z** 4,%b5[251]*z** 5,%b6[251]*z** 6,%b7[251]*z** 7,
               %b8[251]*z** 8,%b9[251]*z** 9,%ba[251]*z**10,%bb[251]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[252]*z** 0,%c1[252]*z** 1,%c2[252]*z** 2,%c3[252]*z** 3,
               %c4[252]*z** 4,%c5[252]*z** 5,%c6[252]*z** 6,%c7[252]*z** 7,
               %c8[252]*z** 8,%c9[252]*z** 9,%ca[252]*z**10,%cb[252]*z**11])
      (poly z [%a0[252]*z** 0,%a1[252]*z** 1,%a2[252]*z** 2,%a3[252]*z** 3,
               %a4[252]*z** 4,%a5[252]*z** 5,%a6[252]*z** 6,%a7[252]*z** 7,
               %a8[252]*z** 8,%a9[252]*z** 9,%aa[252]*z**10,%ab[252]*z**11] *
       poly z [%b0[252]*z** 0,%b1[252]*z** 1,%b2[252]*z** 2,%b3[252]*z** 3,
               %b4[252]*z** 4,%b5[252]*z** 5,%b6[252]*z** 6,%b7[252]*z** 7,
               %b8[252]*z** 8,%b9[252]*z** 9,%ba[252]*z**10,%bb[252]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[253]*z** 0,%c1[253]*z** 1,%c2[253]*z** 2,%c3[253]*z** 3,
               %c4[253]*z** 4,%c5[253]*z** 5,%c6[253]*z** 6,%c7[253]*z** 7,
               %c8[253]*z** 8,%c9[253]*z** 9,%ca[253]*z**10,%cb[253]*z**11])
      (poly z [%a0[253]*z** 0,%a1[253]*z** 1,%a2[253]*z** 2,%a3[253]*z** 3,
               %a4[253]*z** 4,%a5[253]*z** 5,%a6[253]*z** 6,%a7[253]*z** 7,
               %a8[253]*z** 8,%a9[253]*z** 9,%aa[253]*z**10,%ab[253]*z**11] *
       poly z [%b0[253]*z** 0,%b1[253]*z** 1,%b2[253]*z** 2,%b3[253]*z** 3,
               %b4[253]*z** 4,%b5[253]*z** 5,%b6[253]*z** 6,%b7[253]*z** 7,
               %b8[253]*z** 8,%b9[253]*z** 9,%ba[253]*z**10,%bb[253]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[254]*z** 0,%c1[254]*z** 1,%c2[254]*z** 2,%c3[254]*z** 3,
               %c4[254]*z** 4,%c5[254]*z** 5,%c6[254]*z** 6,%c7[254]*z** 7,
               %c8[254]*z** 8,%c9[254]*z** 9,%ca[254]*z**10,%cb[254]*z**11])
      (poly z [%a0[254]*z** 0,%a1[254]*z** 1,%a2[254]*z** 2,%a3[254]*z** 3,
               %a4[254]*z** 4,%a5[254]*z** 5,%a6[254]*z** 6,%a7[254]*z** 7,
               %a8[254]*z** 8,%a9[254]*z** 9,%aa[254]*z**10,%ab[254]*z**11] *
       poly z [%b0[254]*z** 0,%b1[254]*z** 1,%b2[254]*z** 2,%b3[254]*z** 3,
               %b4[254]*z** 4,%b5[254]*z** 5,%b6[254]*z** 6,%b7[254]*z** 7,
               %b8[254]*z** 8,%b9[254]*z** 9,%ba[254]*z**10,%bb[254]*z**11])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[255]*z** 0,%c1[255]*z** 1,%c2[255]*z** 2,%c3[255]*z** 3,
               %c4[255]*z** 4,%c5[255]*z** 5,%c6[255]*z** 6,%c7[255]*z** 7,
               %c8[255]*z** 8,%c9[255]*z** 9,%ca[255]*z**10,%cb[255]*z**11])
      (poly z [%a0[255]*z** 0,%a1[255]*z** 1,%a2[255]*z** 2,%a3[255]*z** 3,
               %a4[255]*z** 4,%a5[255]*z** 5,%a6[255]*z** 6,%a7[255]*z** 7,
               %a8[255]*z** 8,%a9[255]*z** 9,%aa[255]*z**10,%ab[255]*z**11] *
       poly z [%b0[255]*z** 0,%b1[255]*z** 1,%b2[255]*z** 2,%b3[255]*z** 3,
               %b4[255]*z** 4,%b5[255]*z** 5,%b6[255]*z** 6,%b7[255]*z** 7,
               %b8[255]*z** 8,%b9[255]*z** 9,%ba[255]*z**10,%bb[255]*z**11])
      [2, z**12+z**3+1]
 &&
true
}

