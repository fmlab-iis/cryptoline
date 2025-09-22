(* quine: cv.exe -v -isafety -jobs 20 -slicing PQCLEAN_MCELIECE348864_AVX2_vec256_mul_asm.cl
Parsing CryptoLine file:                  [OK]            2.0569 seconds
Checking well-formedness:                 [OK]            0.3173 seconds

Procedure main
==============
Transforming to SSA form:                 [OK]            0.1847 seconds
Normalizing specification:                [OK]            0.2686 seconds
Rewriting assignments:                    [OK]            0.1470 seconds
Verifying program safety:                 [OK]            811.3106 seconds
Verifying range specification:            [OK]            0.0153 seconds
Rewriting value-preserved casting:        [OK]            0.0215 seconds
Verifying algebraic specification:        [OK]            42.7626 seconds

Procedure Summary
-----------------
Procedure verification:                   [OK]            854.8287 seconds

Summary
=======
Verification result:                      [OK]            857.2074 seconds
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
eqmod (poly z [%c0[  0],%c1[  0],%c2[  0],%c3[  0],%c4[  0],%c5[  0],
               %c6[  0],%c7[  0],%c8[  0],%c9[  0],%ca[  0],%cb[  0]])
      (poly z [%a0[  0],%a1[  0],%a2[  0],%a3[  0],%a4[  0],%a5[  0],
               %a6[  0],%a7[  0],%a8[  0],%a9[  0],%aa[  0],%ab[  0]] *
       poly z [%b0[  0],%b1[  0],%b2[  0],%b3[  0],%b4[  0],%b5[  0],
               %b6[  0],%b7[  0],%b8[  0],%b9[  0],%ba[  0],%bb[  0]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  1],%c1[  1],%c2[  1],%c3[  1],%c4[  1],%c5[  1],
               %c6[  1],%c7[  1],%c8[  1],%c9[  1],%ca[  1],%cb[  1]])
      (poly z [%a0[  1],%a1[  1],%a2[  1],%a3[  1],%a4[  1],%a5[  1],
               %a6[  1],%a7[  1],%a8[  1],%a9[  1],%aa[  1],%ab[  1]] *
       poly z [%b0[  1],%b1[  1],%b2[  1],%b3[  1],%b4[  1],%b5[  1],
               %b6[  1],%b7[  1],%b8[  1],%b9[  1],%ba[  1],%bb[  1]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  2],%c1[  2],%c2[  2],%c3[  2],%c4[  2],%c5[  2],
               %c6[  2],%c7[  2],%c8[  2],%c9[  2],%ca[  2],%cb[  2]])
      (poly z [%a0[  2],%a1[  2],%a2[  2],%a3[  2],%a4[  2],%a5[  2],
               %a6[  2],%a7[  2],%a8[  2],%a9[  2],%aa[  2],%ab[  2]] *
       poly z [%b0[  2],%b1[  2],%b2[  2],%b3[  2],%b4[  2],%b5[  2],
               %b6[  2],%b7[  2],%b8[  2],%b9[  2],%ba[  2],%bb[  2]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  3],%c1[  3],%c2[  3],%c3[  3],%c4[  3],%c5[  3],
               %c6[  3],%c7[  3],%c8[  3],%c9[  3],%ca[  3],%cb[  3]])
      (poly z [%a0[  3],%a1[  3],%a2[  3],%a3[  3],%a4[  3],%a5[  3],
               %a6[  3],%a7[  3],%a8[  3],%a9[  3],%aa[  3],%ab[  3]] *
       poly z [%b0[  3],%b1[  3],%b2[  3],%b3[  3],%b4[  3],%b5[  3],
               %b6[  3],%b7[  3],%b8[  3],%b9[  3],%ba[  3],%bb[  3]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  4],%c1[  4],%c2[  4],%c3[  4],%c4[  4],%c5[  4],
               %c6[  4],%c7[  4],%c8[  4],%c9[  4],%ca[  4],%cb[  4]])
      (poly z [%a0[  4],%a1[  4],%a2[  4],%a3[  4],%a4[  4],%a5[  4],
               %a6[  4],%a7[  4],%a8[  4],%a9[  4],%aa[  4],%ab[  4]] *
       poly z [%b0[  4],%b1[  4],%b2[  4],%b3[  4],%b4[  4],%b5[  4],
               %b6[  4],%b7[  4],%b8[  4],%b9[  4],%ba[  4],%bb[  4]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  5],%c1[  5],%c2[  5],%c3[  5],%c4[  5],%c5[  5],
               %c6[  5],%c7[  5],%c8[  5],%c9[  5],%ca[  5],%cb[  5]])
      (poly z [%a0[  5],%a1[  5],%a2[  5],%a3[  5],%a4[  5],%a5[  5],
               %a6[  5],%a7[  5],%a8[  5],%a9[  5],%aa[  5],%ab[  5]] *
       poly z [%b0[  5],%b1[  5],%b2[  5],%b3[  5],%b4[  5],%b5[  5],
               %b6[  5],%b7[  5],%b8[  5],%b9[  5],%ba[  5],%bb[  5]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  6],%c1[  6],%c2[  6],%c3[  6],%c4[  6],%c5[  6],
               %c6[  6],%c7[  6],%c8[  6],%c9[  6],%ca[  6],%cb[  6]])
      (poly z [%a0[  6],%a1[  6],%a2[  6],%a3[  6],%a4[  6],%a5[  6],
               %a6[  6],%a7[  6],%a8[  6],%a9[  6],%aa[  6],%ab[  6]] *
       poly z [%b0[  6],%b1[  6],%b2[  6],%b3[  6],%b4[  6],%b5[  6],
               %b6[  6],%b7[  6],%b8[  6],%b9[  6],%ba[  6],%bb[  6]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  7],%c1[  7],%c2[  7],%c3[  7],%c4[  7],%c5[  7],
               %c6[  7],%c7[  7],%c8[  7],%c9[  7],%ca[  7],%cb[  7]])
      (poly z [%a0[  7],%a1[  7],%a2[  7],%a3[  7],%a4[  7],%a5[  7],
               %a6[  7],%a7[  7],%a8[  7],%a9[  7],%aa[  7],%ab[  7]] *
       poly z [%b0[  7],%b1[  7],%b2[  7],%b3[  7],%b4[  7],%b5[  7],
               %b6[  7],%b7[  7],%b8[  7],%b9[  7],%ba[  7],%bb[  7]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  8],%c1[  8],%c2[  8],%c3[  8],%c4[  8],%c5[  8],
               %c6[  8],%c7[  8],%c8[  8],%c9[  8],%ca[  8],%cb[  8]])
      (poly z [%a0[  8],%a1[  8],%a2[  8],%a3[  8],%a4[  8],%a5[  8],
               %a6[  8],%a7[  8],%a8[  8],%a9[  8],%aa[  8],%ab[  8]] *
       poly z [%b0[  8],%b1[  8],%b2[  8],%b3[  8],%b4[  8],%b5[  8],
               %b6[  8],%b7[  8],%b8[  8],%b9[  8],%ba[  8],%bb[  8]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[  9],%c1[  9],%c2[  9],%c3[  9],%c4[  9],%c5[  9],
               %c6[  9],%c7[  9],%c8[  9],%c9[  9],%ca[  9],%cb[  9]])
      (poly z [%a0[  9],%a1[  9],%a2[  9],%a3[  9],%a4[  9],%a5[  9],
               %a6[  9],%a7[  9],%a8[  9],%a9[  9],%aa[  9],%ab[  9]] *
       poly z [%b0[  9],%b1[  9],%b2[  9],%b3[  9],%b4[  9],%b5[  9],
               %b6[  9],%b7[  9],%b8[  9],%b9[  9],%ba[  9],%bb[  9]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 10],%c1[ 10],%c2[ 10],%c3[ 10],%c4[ 10],%c5[ 10],
               %c6[ 10],%c7[ 10],%c8[ 10],%c9[ 10],%ca[ 10],%cb[ 10]])
      (poly z [%a0[ 10],%a1[ 10],%a2[ 10],%a3[ 10],%a4[ 10],%a5[ 10],
               %a6[ 10],%a7[ 10],%a8[ 10],%a9[ 10],%aa[ 10],%ab[ 10]] *
       poly z [%b0[ 10],%b1[ 10],%b2[ 10],%b3[ 10],%b4[ 10],%b5[ 10],
               %b6[ 10],%b7[ 10],%b8[ 10],%b9[ 10],%ba[ 10],%bb[ 10]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 11],%c1[ 11],%c2[ 11],%c3[ 11],%c4[ 11],%c5[ 11],
               %c6[ 11],%c7[ 11],%c8[ 11],%c9[ 11],%ca[ 11],%cb[ 11]])
      (poly z [%a0[ 11],%a1[ 11],%a2[ 11],%a3[ 11],%a4[ 11],%a5[ 11],
               %a6[ 11],%a7[ 11],%a8[ 11],%a9[ 11],%aa[ 11],%ab[ 11]] *
       poly z [%b0[ 11],%b1[ 11],%b2[ 11],%b3[ 11],%b4[ 11],%b5[ 11],
               %b6[ 11],%b7[ 11],%b8[ 11],%b9[ 11],%ba[ 11],%bb[ 11]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 12],%c1[ 12],%c2[ 12],%c3[ 12],%c4[ 12],%c5[ 12],
               %c6[ 12],%c7[ 12],%c8[ 12],%c9[ 12],%ca[ 12],%cb[ 12]])
      (poly z [%a0[ 12],%a1[ 12],%a2[ 12],%a3[ 12],%a4[ 12],%a5[ 12],
               %a6[ 12],%a7[ 12],%a8[ 12],%a9[ 12],%aa[ 12],%ab[ 12]] *
       poly z [%b0[ 12],%b1[ 12],%b2[ 12],%b3[ 12],%b4[ 12],%b5[ 12],
               %b6[ 12],%b7[ 12],%b8[ 12],%b9[ 12],%ba[ 12],%bb[ 12]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 13],%c1[ 13],%c2[ 13],%c3[ 13],%c4[ 13],%c5[ 13],
               %c6[ 13],%c7[ 13],%c8[ 13],%c9[ 13],%ca[ 13],%cb[ 13]])
      (poly z [%a0[ 13],%a1[ 13],%a2[ 13],%a3[ 13],%a4[ 13],%a5[ 13],
               %a6[ 13],%a7[ 13],%a8[ 13],%a9[ 13],%aa[ 13],%ab[ 13]] *
       poly z [%b0[ 13],%b1[ 13],%b2[ 13],%b3[ 13],%b4[ 13],%b5[ 13],
               %b6[ 13],%b7[ 13],%b8[ 13],%b9[ 13],%ba[ 13],%bb[ 13]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 14],%c1[ 14],%c2[ 14],%c3[ 14],%c4[ 14],%c5[ 14],
               %c6[ 14],%c7[ 14],%c8[ 14],%c9[ 14],%ca[ 14],%cb[ 14]])
      (poly z [%a0[ 14],%a1[ 14],%a2[ 14],%a3[ 14],%a4[ 14],%a5[ 14],
               %a6[ 14],%a7[ 14],%a8[ 14],%a9[ 14],%aa[ 14],%ab[ 14]] *
       poly z [%b0[ 14],%b1[ 14],%b2[ 14],%b3[ 14],%b4[ 14],%b5[ 14],
               %b6[ 14],%b7[ 14],%b8[ 14],%b9[ 14],%ba[ 14],%bb[ 14]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 15],%c1[ 15],%c2[ 15],%c3[ 15],%c4[ 15],%c5[ 15],
               %c6[ 15],%c7[ 15],%c8[ 15],%c9[ 15],%ca[ 15],%cb[ 15]])
      (poly z [%a0[ 15],%a1[ 15],%a2[ 15],%a3[ 15],%a4[ 15],%a5[ 15],
               %a6[ 15],%a7[ 15],%a8[ 15],%a9[ 15],%aa[ 15],%ab[ 15]] *
       poly z [%b0[ 15],%b1[ 15],%b2[ 15],%b3[ 15],%b4[ 15],%b5[ 15],
               %b6[ 15],%b7[ 15],%b8[ 15],%b9[ 15],%ba[ 15],%bb[ 15]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 16],%c1[ 16],%c2[ 16],%c3[ 16],%c4[ 16],%c5[ 16],
               %c6[ 16],%c7[ 16],%c8[ 16],%c9[ 16],%ca[ 16],%cb[ 16]])
      (poly z [%a0[ 16],%a1[ 16],%a2[ 16],%a3[ 16],%a4[ 16],%a5[ 16],
               %a6[ 16],%a7[ 16],%a8[ 16],%a9[ 16],%aa[ 16],%ab[ 16]] *
       poly z [%b0[ 16],%b1[ 16],%b2[ 16],%b3[ 16],%b4[ 16],%b5[ 16],
               %b6[ 16],%b7[ 16],%b8[ 16],%b9[ 16],%ba[ 16],%bb[ 16]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 17],%c1[ 17],%c2[ 17],%c3[ 17],%c4[ 17],%c5[ 17],
               %c6[ 17],%c7[ 17],%c8[ 17],%c9[ 17],%ca[ 17],%cb[ 17]])
      (poly z [%a0[ 17],%a1[ 17],%a2[ 17],%a3[ 17],%a4[ 17],%a5[ 17],
               %a6[ 17],%a7[ 17],%a8[ 17],%a9[ 17],%aa[ 17],%ab[ 17]] *
       poly z [%b0[ 17],%b1[ 17],%b2[ 17],%b3[ 17],%b4[ 17],%b5[ 17],
               %b6[ 17],%b7[ 17],%b8[ 17],%b9[ 17],%ba[ 17],%bb[ 17]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 18],%c1[ 18],%c2[ 18],%c3[ 18],%c4[ 18],%c5[ 18],
               %c6[ 18],%c7[ 18],%c8[ 18],%c9[ 18],%ca[ 18],%cb[ 18]])
      (poly z [%a0[ 18],%a1[ 18],%a2[ 18],%a3[ 18],%a4[ 18],%a5[ 18],
               %a6[ 18],%a7[ 18],%a8[ 18],%a9[ 18],%aa[ 18],%ab[ 18]] *
       poly z [%b0[ 18],%b1[ 18],%b2[ 18],%b3[ 18],%b4[ 18],%b5[ 18],
               %b6[ 18],%b7[ 18],%b8[ 18],%b9[ 18],%ba[ 18],%bb[ 18]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 19],%c1[ 19],%c2[ 19],%c3[ 19],%c4[ 19],%c5[ 19],
               %c6[ 19],%c7[ 19],%c8[ 19],%c9[ 19],%ca[ 19],%cb[ 19]])
      (poly z [%a0[ 19],%a1[ 19],%a2[ 19],%a3[ 19],%a4[ 19],%a5[ 19],
               %a6[ 19],%a7[ 19],%a8[ 19],%a9[ 19],%aa[ 19],%ab[ 19]] *
       poly z [%b0[ 19],%b1[ 19],%b2[ 19],%b3[ 19],%b4[ 19],%b5[ 19],
               %b6[ 19],%b7[ 19],%b8[ 19],%b9[ 19],%ba[ 19],%bb[ 19]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 20],%c1[ 20],%c2[ 20],%c3[ 20],%c4[ 20],%c5[ 20],
               %c6[ 20],%c7[ 20],%c8[ 20],%c9[ 20],%ca[ 20],%cb[ 20]])
      (poly z [%a0[ 20],%a1[ 20],%a2[ 20],%a3[ 20],%a4[ 20],%a5[ 20],
               %a6[ 20],%a7[ 20],%a8[ 20],%a9[ 20],%aa[ 20],%ab[ 20]] *
       poly z [%b0[ 20],%b1[ 20],%b2[ 20],%b3[ 20],%b4[ 20],%b5[ 20],
               %b6[ 20],%b7[ 20],%b8[ 20],%b9[ 20],%ba[ 20],%bb[ 20]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 21],%c1[ 21],%c2[ 21],%c3[ 21],%c4[ 21],%c5[ 21],
               %c6[ 21],%c7[ 21],%c8[ 21],%c9[ 21],%ca[ 21],%cb[ 21]])
      (poly z [%a0[ 21],%a1[ 21],%a2[ 21],%a3[ 21],%a4[ 21],%a5[ 21],
               %a6[ 21],%a7[ 21],%a8[ 21],%a9[ 21],%aa[ 21],%ab[ 21]] *
       poly z [%b0[ 21],%b1[ 21],%b2[ 21],%b3[ 21],%b4[ 21],%b5[ 21],
               %b6[ 21],%b7[ 21],%b8[ 21],%b9[ 21],%ba[ 21],%bb[ 21]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 22],%c1[ 22],%c2[ 22],%c3[ 22],%c4[ 22],%c5[ 22],
               %c6[ 22],%c7[ 22],%c8[ 22],%c9[ 22],%ca[ 22],%cb[ 22]])
      (poly z [%a0[ 22],%a1[ 22],%a2[ 22],%a3[ 22],%a4[ 22],%a5[ 22],
               %a6[ 22],%a7[ 22],%a8[ 22],%a9[ 22],%aa[ 22],%ab[ 22]] *
       poly z [%b0[ 22],%b1[ 22],%b2[ 22],%b3[ 22],%b4[ 22],%b5[ 22],
               %b6[ 22],%b7[ 22],%b8[ 22],%b9[ 22],%ba[ 22],%bb[ 22]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 23],%c1[ 23],%c2[ 23],%c3[ 23],%c4[ 23],%c5[ 23],
               %c6[ 23],%c7[ 23],%c8[ 23],%c9[ 23],%ca[ 23],%cb[ 23]])
      (poly z [%a0[ 23],%a1[ 23],%a2[ 23],%a3[ 23],%a4[ 23],%a5[ 23],
               %a6[ 23],%a7[ 23],%a8[ 23],%a9[ 23],%aa[ 23],%ab[ 23]] *
       poly z [%b0[ 23],%b1[ 23],%b2[ 23],%b3[ 23],%b4[ 23],%b5[ 23],
               %b6[ 23],%b7[ 23],%b8[ 23],%b9[ 23],%ba[ 23],%bb[ 23]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 24],%c1[ 24],%c2[ 24],%c3[ 24],%c4[ 24],%c5[ 24],
               %c6[ 24],%c7[ 24],%c8[ 24],%c9[ 24],%ca[ 24],%cb[ 24]])
      (poly z [%a0[ 24],%a1[ 24],%a2[ 24],%a3[ 24],%a4[ 24],%a5[ 24],
               %a6[ 24],%a7[ 24],%a8[ 24],%a9[ 24],%aa[ 24],%ab[ 24]] *
       poly z [%b0[ 24],%b1[ 24],%b2[ 24],%b3[ 24],%b4[ 24],%b5[ 24],
               %b6[ 24],%b7[ 24],%b8[ 24],%b9[ 24],%ba[ 24],%bb[ 24]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 25],%c1[ 25],%c2[ 25],%c3[ 25],%c4[ 25],%c5[ 25],
               %c6[ 25],%c7[ 25],%c8[ 25],%c9[ 25],%ca[ 25],%cb[ 25]])
      (poly z [%a0[ 25],%a1[ 25],%a2[ 25],%a3[ 25],%a4[ 25],%a5[ 25],
               %a6[ 25],%a7[ 25],%a8[ 25],%a9[ 25],%aa[ 25],%ab[ 25]] *
       poly z [%b0[ 25],%b1[ 25],%b2[ 25],%b3[ 25],%b4[ 25],%b5[ 25],
               %b6[ 25],%b7[ 25],%b8[ 25],%b9[ 25],%ba[ 25],%bb[ 25]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 26],%c1[ 26],%c2[ 26],%c3[ 26],%c4[ 26],%c5[ 26],
               %c6[ 26],%c7[ 26],%c8[ 26],%c9[ 26],%ca[ 26],%cb[ 26]])
      (poly z [%a0[ 26],%a1[ 26],%a2[ 26],%a3[ 26],%a4[ 26],%a5[ 26],
               %a6[ 26],%a7[ 26],%a8[ 26],%a9[ 26],%aa[ 26],%ab[ 26]] *
       poly z [%b0[ 26],%b1[ 26],%b2[ 26],%b3[ 26],%b4[ 26],%b5[ 26],
               %b6[ 26],%b7[ 26],%b8[ 26],%b9[ 26],%ba[ 26],%bb[ 26]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 27],%c1[ 27],%c2[ 27],%c3[ 27],%c4[ 27],%c5[ 27],
               %c6[ 27],%c7[ 27],%c8[ 27],%c9[ 27],%ca[ 27],%cb[ 27]])
      (poly z [%a0[ 27],%a1[ 27],%a2[ 27],%a3[ 27],%a4[ 27],%a5[ 27],
               %a6[ 27],%a7[ 27],%a8[ 27],%a9[ 27],%aa[ 27],%ab[ 27]] *
       poly z [%b0[ 27],%b1[ 27],%b2[ 27],%b3[ 27],%b4[ 27],%b5[ 27],
               %b6[ 27],%b7[ 27],%b8[ 27],%b9[ 27],%ba[ 27],%bb[ 27]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 28],%c1[ 28],%c2[ 28],%c3[ 28],%c4[ 28],%c5[ 28],
               %c6[ 28],%c7[ 28],%c8[ 28],%c9[ 28],%ca[ 28],%cb[ 28]])
      (poly z [%a0[ 28],%a1[ 28],%a2[ 28],%a3[ 28],%a4[ 28],%a5[ 28],
               %a6[ 28],%a7[ 28],%a8[ 28],%a9[ 28],%aa[ 28],%ab[ 28]] *
       poly z [%b0[ 28],%b1[ 28],%b2[ 28],%b3[ 28],%b4[ 28],%b5[ 28],
               %b6[ 28],%b7[ 28],%b8[ 28],%b9[ 28],%ba[ 28],%bb[ 28]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 29],%c1[ 29],%c2[ 29],%c3[ 29],%c4[ 29],%c5[ 29],
               %c6[ 29],%c7[ 29],%c8[ 29],%c9[ 29],%ca[ 29],%cb[ 29]])
      (poly z [%a0[ 29],%a1[ 29],%a2[ 29],%a3[ 29],%a4[ 29],%a5[ 29],
               %a6[ 29],%a7[ 29],%a8[ 29],%a9[ 29],%aa[ 29],%ab[ 29]] *
       poly z [%b0[ 29],%b1[ 29],%b2[ 29],%b3[ 29],%b4[ 29],%b5[ 29],
               %b6[ 29],%b7[ 29],%b8[ 29],%b9[ 29],%ba[ 29],%bb[ 29]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 30],%c1[ 30],%c2[ 30],%c3[ 30],%c4[ 30],%c5[ 30],
               %c6[ 30],%c7[ 30],%c8[ 30],%c9[ 30],%ca[ 30],%cb[ 30]])
      (poly z [%a0[ 30],%a1[ 30],%a2[ 30],%a3[ 30],%a4[ 30],%a5[ 30],
               %a6[ 30],%a7[ 30],%a8[ 30],%a9[ 30],%aa[ 30],%ab[ 30]] *
       poly z [%b0[ 30],%b1[ 30],%b2[ 30],%b3[ 30],%b4[ 30],%b5[ 30],
               %b6[ 30],%b7[ 30],%b8[ 30],%b9[ 30],%ba[ 30],%bb[ 30]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 31],%c1[ 31],%c2[ 31],%c3[ 31],%c4[ 31],%c5[ 31],
               %c6[ 31],%c7[ 31],%c8[ 31],%c9[ 31],%ca[ 31],%cb[ 31]])
      (poly z [%a0[ 31],%a1[ 31],%a2[ 31],%a3[ 31],%a4[ 31],%a5[ 31],
               %a6[ 31],%a7[ 31],%a8[ 31],%a9[ 31],%aa[ 31],%ab[ 31]] *
       poly z [%b0[ 31],%b1[ 31],%b2[ 31],%b3[ 31],%b4[ 31],%b5[ 31],
               %b6[ 31],%b7[ 31],%b8[ 31],%b9[ 31],%ba[ 31],%bb[ 31]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 32],%c1[ 32],%c2[ 32],%c3[ 32],%c4[ 32],%c5[ 32],
               %c6[ 32],%c7[ 32],%c8[ 32],%c9[ 32],%ca[ 32],%cb[ 32]])
      (poly z [%a0[ 32],%a1[ 32],%a2[ 32],%a3[ 32],%a4[ 32],%a5[ 32],
               %a6[ 32],%a7[ 32],%a8[ 32],%a9[ 32],%aa[ 32],%ab[ 32]] *
       poly z [%b0[ 32],%b1[ 32],%b2[ 32],%b3[ 32],%b4[ 32],%b5[ 32],
               %b6[ 32],%b7[ 32],%b8[ 32],%b9[ 32],%ba[ 32],%bb[ 32]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 33],%c1[ 33],%c2[ 33],%c3[ 33],%c4[ 33],%c5[ 33],
               %c6[ 33],%c7[ 33],%c8[ 33],%c9[ 33],%ca[ 33],%cb[ 33]])
      (poly z [%a0[ 33],%a1[ 33],%a2[ 33],%a3[ 33],%a4[ 33],%a5[ 33],
               %a6[ 33],%a7[ 33],%a8[ 33],%a9[ 33],%aa[ 33],%ab[ 33]] *
       poly z [%b0[ 33],%b1[ 33],%b2[ 33],%b3[ 33],%b4[ 33],%b5[ 33],
               %b6[ 33],%b7[ 33],%b8[ 33],%b9[ 33],%ba[ 33],%bb[ 33]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 34],%c1[ 34],%c2[ 34],%c3[ 34],%c4[ 34],%c5[ 34],
               %c6[ 34],%c7[ 34],%c8[ 34],%c9[ 34],%ca[ 34],%cb[ 34]])
      (poly z [%a0[ 34],%a1[ 34],%a2[ 34],%a3[ 34],%a4[ 34],%a5[ 34],
               %a6[ 34],%a7[ 34],%a8[ 34],%a9[ 34],%aa[ 34],%ab[ 34]] *
       poly z [%b0[ 34],%b1[ 34],%b2[ 34],%b3[ 34],%b4[ 34],%b5[ 34],
               %b6[ 34],%b7[ 34],%b8[ 34],%b9[ 34],%ba[ 34],%bb[ 34]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 35],%c1[ 35],%c2[ 35],%c3[ 35],%c4[ 35],%c5[ 35],
               %c6[ 35],%c7[ 35],%c8[ 35],%c9[ 35],%ca[ 35],%cb[ 35]])
      (poly z [%a0[ 35],%a1[ 35],%a2[ 35],%a3[ 35],%a4[ 35],%a5[ 35],
               %a6[ 35],%a7[ 35],%a8[ 35],%a9[ 35],%aa[ 35],%ab[ 35]] *
       poly z [%b0[ 35],%b1[ 35],%b2[ 35],%b3[ 35],%b4[ 35],%b5[ 35],
               %b6[ 35],%b7[ 35],%b8[ 35],%b9[ 35],%ba[ 35],%bb[ 35]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 36],%c1[ 36],%c2[ 36],%c3[ 36],%c4[ 36],%c5[ 36],
               %c6[ 36],%c7[ 36],%c8[ 36],%c9[ 36],%ca[ 36],%cb[ 36]])
      (poly z [%a0[ 36],%a1[ 36],%a2[ 36],%a3[ 36],%a4[ 36],%a5[ 36],
               %a6[ 36],%a7[ 36],%a8[ 36],%a9[ 36],%aa[ 36],%ab[ 36]] *
       poly z [%b0[ 36],%b1[ 36],%b2[ 36],%b3[ 36],%b4[ 36],%b5[ 36],
               %b6[ 36],%b7[ 36],%b8[ 36],%b9[ 36],%ba[ 36],%bb[ 36]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 37],%c1[ 37],%c2[ 37],%c3[ 37],%c4[ 37],%c5[ 37],
               %c6[ 37],%c7[ 37],%c8[ 37],%c9[ 37],%ca[ 37],%cb[ 37]])
      (poly z [%a0[ 37],%a1[ 37],%a2[ 37],%a3[ 37],%a4[ 37],%a5[ 37],
               %a6[ 37],%a7[ 37],%a8[ 37],%a9[ 37],%aa[ 37],%ab[ 37]] *
       poly z [%b0[ 37],%b1[ 37],%b2[ 37],%b3[ 37],%b4[ 37],%b5[ 37],
               %b6[ 37],%b7[ 37],%b8[ 37],%b9[ 37],%ba[ 37],%bb[ 37]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 38],%c1[ 38],%c2[ 38],%c3[ 38],%c4[ 38],%c5[ 38],
               %c6[ 38],%c7[ 38],%c8[ 38],%c9[ 38],%ca[ 38],%cb[ 38]])
      (poly z [%a0[ 38],%a1[ 38],%a2[ 38],%a3[ 38],%a4[ 38],%a5[ 38],
               %a6[ 38],%a7[ 38],%a8[ 38],%a9[ 38],%aa[ 38],%ab[ 38]] *
       poly z [%b0[ 38],%b1[ 38],%b2[ 38],%b3[ 38],%b4[ 38],%b5[ 38],
               %b6[ 38],%b7[ 38],%b8[ 38],%b9[ 38],%ba[ 38],%bb[ 38]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 39],%c1[ 39],%c2[ 39],%c3[ 39],%c4[ 39],%c5[ 39],
               %c6[ 39],%c7[ 39],%c8[ 39],%c9[ 39],%ca[ 39],%cb[ 39]])
      (poly z [%a0[ 39],%a1[ 39],%a2[ 39],%a3[ 39],%a4[ 39],%a5[ 39],
               %a6[ 39],%a7[ 39],%a8[ 39],%a9[ 39],%aa[ 39],%ab[ 39]] *
       poly z [%b0[ 39],%b1[ 39],%b2[ 39],%b3[ 39],%b4[ 39],%b5[ 39],
               %b6[ 39],%b7[ 39],%b8[ 39],%b9[ 39],%ba[ 39],%bb[ 39]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 40],%c1[ 40],%c2[ 40],%c3[ 40],%c4[ 40],%c5[ 40],
               %c6[ 40],%c7[ 40],%c8[ 40],%c9[ 40],%ca[ 40],%cb[ 40]])
      (poly z [%a0[ 40],%a1[ 40],%a2[ 40],%a3[ 40],%a4[ 40],%a5[ 40],
               %a6[ 40],%a7[ 40],%a8[ 40],%a9[ 40],%aa[ 40],%ab[ 40]] *
       poly z [%b0[ 40],%b1[ 40],%b2[ 40],%b3[ 40],%b4[ 40],%b5[ 40],
               %b6[ 40],%b7[ 40],%b8[ 40],%b9[ 40],%ba[ 40],%bb[ 40]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 41],%c1[ 41],%c2[ 41],%c3[ 41],%c4[ 41],%c5[ 41],
               %c6[ 41],%c7[ 41],%c8[ 41],%c9[ 41],%ca[ 41],%cb[ 41]])
      (poly z [%a0[ 41],%a1[ 41],%a2[ 41],%a3[ 41],%a4[ 41],%a5[ 41],
               %a6[ 41],%a7[ 41],%a8[ 41],%a9[ 41],%aa[ 41],%ab[ 41]] *
       poly z [%b0[ 41],%b1[ 41],%b2[ 41],%b3[ 41],%b4[ 41],%b5[ 41],
               %b6[ 41],%b7[ 41],%b8[ 41],%b9[ 41],%ba[ 41],%bb[ 41]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 42],%c1[ 42],%c2[ 42],%c3[ 42],%c4[ 42],%c5[ 42],
               %c6[ 42],%c7[ 42],%c8[ 42],%c9[ 42],%ca[ 42],%cb[ 42]])
      (poly z [%a0[ 42],%a1[ 42],%a2[ 42],%a3[ 42],%a4[ 42],%a5[ 42],
               %a6[ 42],%a7[ 42],%a8[ 42],%a9[ 42],%aa[ 42],%ab[ 42]] *
       poly z [%b0[ 42],%b1[ 42],%b2[ 42],%b3[ 42],%b4[ 42],%b5[ 42],
               %b6[ 42],%b7[ 42],%b8[ 42],%b9[ 42],%ba[ 42],%bb[ 42]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 43],%c1[ 43],%c2[ 43],%c3[ 43],%c4[ 43],%c5[ 43],
               %c6[ 43],%c7[ 43],%c8[ 43],%c9[ 43],%ca[ 43],%cb[ 43]])
      (poly z [%a0[ 43],%a1[ 43],%a2[ 43],%a3[ 43],%a4[ 43],%a5[ 43],
               %a6[ 43],%a7[ 43],%a8[ 43],%a9[ 43],%aa[ 43],%ab[ 43]] *
       poly z [%b0[ 43],%b1[ 43],%b2[ 43],%b3[ 43],%b4[ 43],%b5[ 43],
               %b6[ 43],%b7[ 43],%b8[ 43],%b9[ 43],%ba[ 43],%bb[ 43]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 44],%c1[ 44],%c2[ 44],%c3[ 44],%c4[ 44],%c5[ 44],
               %c6[ 44],%c7[ 44],%c8[ 44],%c9[ 44],%ca[ 44],%cb[ 44]])
      (poly z [%a0[ 44],%a1[ 44],%a2[ 44],%a3[ 44],%a4[ 44],%a5[ 44],
               %a6[ 44],%a7[ 44],%a8[ 44],%a9[ 44],%aa[ 44],%ab[ 44]] *
       poly z [%b0[ 44],%b1[ 44],%b2[ 44],%b3[ 44],%b4[ 44],%b5[ 44],
               %b6[ 44],%b7[ 44],%b8[ 44],%b9[ 44],%ba[ 44],%bb[ 44]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 45],%c1[ 45],%c2[ 45],%c3[ 45],%c4[ 45],%c5[ 45],
               %c6[ 45],%c7[ 45],%c8[ 45],%c9[ 45],%ca[ 45],%cb[ 45]])
      (poly z [%a0[ 45],%a1[ 45],%a2[ 45],%a3[ 45],%a4[ 45],%a5[ 45],
               %a6[ 45],%a7[ 45],%a8[ 45],%a9[ 45],%aa[ 45],%ab[ 45]] *
       poly z [%b0[ 45],%b1[ 45],%b2[ 45],%b3[ 45],%b4[ 45],%b5[ 45],
               %b6[ 45],%b7[ 45],%b8[ 45],%b9[ 45],%ba[ 45],%bb[ 45]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 46],%c1[ 46],%c2[ 46],%c3[ 46],%c4[ 46],%c5[ 46],
               %c6[ 46],%c7[ 46],%c8[ 46],%c9[ 46],%ca[ 46],%cb[ 46]])
      (poly z [%a0[ 46],%a1[ 46],%a2[ 46],%a3[ 46],%a4[ 46],%a5[ 46],
               %a6[ 46],%a7[ 46],%a8[ 46],%a9[ 46],%aa[ 46],%ab[ 46]] *
       poly z [%b0[ 46],%b1[ 46],%b2[ 46],%b3[ 46],%b4[ 46],%b5[ 46],
               %b6[ 46],%b7[ 46],%b8[ 46],%b9[ 46],%ba[ 46],%bb[ 46]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 47],%c1[ 47],%c2[ 47],%c3[ 47],%c4[ 47],%c5[ 47],
               %c6[ 47],%c7[ 47],%c8[ 47],%c9[ 47],%ca[ 47],%cb[ 47]])
      (poly z [%a0[ 47],%a1[ 47],%a2[ 47],%a3[ 47],%a4[ 47],%a5[ 47],
               %a6[ 47],%a7[ 47],%a8[ 47],%a9[ 47],%aa[ 47],%ab[ 47]] *
       poly z [%b0[ 47],%b1[ 47],%b2[ 47],%b3[ 47],%b4[ 47],%b5[ 47],
               %b6[ 47],%b7[ 47],%b8[ 47],%b9[ 47],%ba[ 47],%bb[ 47]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 48],%c1[ 48],%c2[ 48],%c3[ 48],%c4[ 48],%c5[ 48],
               %c6[ 48],%c7[ 48],%c8[ 48],%c9[ 48],%ca[ 48],%cb[ 48]])
      (poly z [%a0[ 48],%a1[ 48],%a2[ 48],%a3[ 48],%a4[ 48],%a5[ 48],
               %a6[ 48],%a7[ 48],%a8[ 48],%a9[ 48],%aa[ 48],%ab[ 48]] *
       poly z [%b0[ 48],%b1[ 48],%b2[ 48],%b3[ 48],%b4[ 48],%b5[ 48],
               %b6[ 48],%b7[ 48],%b8[ 48],%b9[ 48],%ba[ 48],%bb[ 48]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 49],%c1[ 49],%c2[ 49],%c3[ 49],%c4[ 49],%c5[ 49],
               %c6[ 49],%c7[ 49],%c8[ 49],%c9[ 49],%ca[ 49],%cb[ 49]])
      (poly z [%a0[ 49],%a1[ 49],%a2[ 49],%a3[ 49],%a4[ 49],%a5[ 49],
               %a6[ 49],%a7[ 49],%a8[ 49],%a9[ 49],%aa[ 49],%ab[ 49]] *
       poly z [%b0[ 49],%b1[ 49],%b2[ 49],%b3[ 49],%b4[ 49],%b5[ 49],
               %b6[ 49],%b7[ 49],%b8[ 49],%b9[ 49],%ba[ 49],%bb[ 49]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 50],%c1[ 50],%c2[ 50],%c3[ 50],%c4[ 50],%c5[ 50],
               %c6[ 50],%c7[ 50],%c8[ 50],%c9[ 50],%ca[ 50],%cb[ 50]])
      (poly z [%a0[ 50],%a1[ 50],%a2[ 50],%a3[ 50],%a4[ 50],%a5[ 50],
               %a6[ 50],%a7[ 50],%a8[ 50],%a9[ 50],%aa[ 50],%ab[ 50]] *
       poly z [%b0[ 50],%b1[ 50],%b2[ 50],%b3[ 50],%b4[ 50],%b5[ 50],
               %b6[ 50],%b7[ 50],%b8[ 50],%b9[ 50],%ba[ 50],%bb[ 50]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 51],%c1[ 51],%c2[ 51],%c3[ 51],%c4[ 51],%c5[ 51],
               %c6[ 51],%c7[ 51],%c8[ 51],%c9[ 51],%ca[ 51],%cb[ 51]])
      (poly z [%a0[ 51],%a1[ 51],%a2[ 51],%a3[ 51],%a4[ 51],%a5[ 51],
               %a6[ 51],%a7[ 51],%a8[ 51],%a9[ 51],%aa[ 51],%ab[ 51]] *
       poly z [%b0[ 51],%b1[ 51],%b2[ 51],%b3[ 51],%b4[ 51],%b5[ 51],
               %b6[ 51],%b7[ 51],%b8[ 51],%b9[ 51],%ba[ 51],%bb[ 51]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 52],%c1[ 52],%c2[ 52],%c3[ 52],%c4[ 52],%c5[ 52],
               %c6[ 52],%c7[ 52],%c8[ 52],%c9[ 52],%ca[ 52],%cb[ 52]])
      (poly z [%a0[ 52],%a1[ 52],%a2[ 52],%a3[ 52],%a4[ 52],%a5[ 52],
               %a6[ 52],%a7[ 52],%a8[ 52],%a9[ 52],%aa[ 52],%ab[ 52]] *
       poly z [%b0[ 52],%b1[ 52],%b2[ 52],%b3[ 52],%b4[ 52],%b5[ 52],
               %b6[ 52],%b7[ 52],%b8[ 52],%b9[ 52],%ba[ 52],%bb[ 52]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 53],%c1[ 53],%c2[ 53],%c3[ 53],%c4[ 53],%c5[ 53],
               %c6[ 53],%c7[ 53],%c8[ 53],%c9[ 53],%ca[ 53],%cb[ 53]])
      (poly z [%a0[ 53],%a1[ 53],%a2[ 53],%a3[ 53],%a4[ 53],%a5[ 53],
               %a6[ 53],%a7[ 53],%a8[ 53],%a9[ 53],%aa[ 53],%ab[ 53]] *
       poly z [%b0[ 53],%b1[ 53],%b2[ 53],%b3[ 53],%b4[ 53],%b5[ 53],
               %b6[ 53],%b7[ 53],%b8[ 53],%b9[ 53],%ba[ 53],%bb[ 53]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 54],%c1[ 54],%c2[ 54],%c3[ 54],%c4[ 54],%c5[ 54],
               %c6[ 54],%c7[ 54],%c8[ 54],%c9[ 54],%ca[ 54],%cb[ 54]])
      (poly z [%a0[ 54],%a1[ 54],%a2[ 54],%a3[ 54],%a4[ 54],%a5[ 54],
               %a6[ 54],%a7[ 54],%a8[ 54],%a9[ 54],%aa[ 54],%ab[ 54]] *
       poly z [%b0[ 54],%b1[ 54],%b2[ 54],%b3[ 54],%b4[ 54],%b5[ 54],
               %b6[ 54],%b7[ 54],%b8[ 54],%b9[ 54],%ba[ 54],%bb[ 54]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 55],%c1[ 55],%c2[ 55],%c3[ 55],%c4[ 55],%c5[ 55],
               %c6[ 55],%c7[ 55],%c8[ 55],%c9[ 55],%ca[ 55],%cb[ 55]])
      (poly z [%a0[ 55],%a1[ 55],%a2[ 55],%a3[ 55],%a4[ 55],%a5[ 55],
               %a6[ 55],%a7[ 55],%a8[ 55],%a9[ 55],%aa[ 55],%ab[ 55]] *
       poly z [%b0[ 55],%b1[ 55],%b2[ 55],%b3[ 55],%b4[ 55],%b5[ 55],
               %b6[ 55],%b7[ 55],%b8[ 55],%b9[ 55],%ba[ 55],%bb[ 55]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 56],%c1[ 56],%c2[ 56],%c3[ 56],%c4[ 56],%c5[ 56],
               %c6[ 56],%c7[ 56],%c8[ 56],%c9[ 56],%ca[ 56],%cb[ 56]])
      (poly z [%a0[ 56],%a1[ 56],%a2[ 56],%a3[ 56],%a4[ 56],%a5[ 56],
               %a6[ 56],%a7[ 56],%a8[ 56],%a9[ 56],%aa[ 56],%ab[ 56]] *
       poly z [%b0[ 56],%b1[ 56],%b2[ 56],%b3[ 56],%b4[ 56],%b5[ 56],
               %b6[ 56],%b7[ 56],%b8[ 56],%b9[ 56],%ba[ 56],%bb[ 56]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 57],%c1[ 57],%c2[ 57],%c3[ 57],%c4[ 57],%c5[ 57],
               %c6[ 57],%c7[ 57],%c8[ 57],%c9[ 57],%ca[ 57],%cb[ 57]])
      (poly z [%a0[ 57],%a1[ 57],%a2[ 57],%a3[ 57],%a4[ 57],%a5[ 57],
               %a6[ 57],%a7[ 57],%a8[ 57],%a9[ 57],%aa[ 57],%ab[ 57]] *
       poly z [%b0[ 57],%b1[ 57],%b2[ 57],%b3[ 57],%b4[ 57],%b5[ 57],
               %b6[ 57],%b7[ 57],%b8[ 57],%b9[ 57],%ba[ 57],%bb[ 57]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 58],%c1[ 58],%c2[ 58],%c3[ 58],%c4[ 58],%c5[ 58],
               %c6[ 58],%c7[ 58],%c8[ 58],%c9[ 58],%ca[ 58],%cb[ 58]])
      (poly z [%a0[ 58],%a1[ 58],%a2[ 58],%a3[ 58],%a4[ 58],%a5[ 58],
               %a6[ 58],%a7[ 58],%a8[ 58],%a9[ 58],%aa[ 58],%ab[ 58]] *
       poly z [%b0[ 58],%b1[ 58],%b2[ 58],%b3[ 58],%b4[ 58],%b5[ 58],
               %b6[ 58],%b7[ 58],%b8[ 58],%b9[ 58],%ba[ 58],%bb[ 58]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 59],%c1[ 59],%c2[ 59],%c3[ 59],%c4[ 59],%c5[ 59],
               %c6[ 59],%c7[ 59],%c8[ 59],%c9[ 59],%ca[ 59],%cb[ 59]])
      (poly z [%a0[ 59],%a1[ 59],%a2[ 59],%a3[ 59],%a4[ 59],%a5[ 59],
               %a6[ 59],%a7[ 59],%a8[ 59],%a9[ 59],%aa[ 59],%ab[ 59]] *
       poly z [%b0[ 59],%b1[ 59],%b2[ 59],%b3[ 59],%b4[ 59],%b5[ 59],
               %b6[ 59],%b7[ 59],%b8[ 59],%b9[ 59],%ba[ 59],%bb[ 59]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 60],%c1[ 60],%c2[ 60],%c3[ 60],%c4[ 60],%c5[ 60],
               %c6[ 60],%c7[ 60],%c8[ 60],%c9[ 60],%ca[ 60],%cb[ 60]])
      (poly z [%a0[ 60],%a1[ 60],%a2[ 60],%a3[ 60],%a4[ 60],%a5[ 60],
               %a6[ 60],%a7[ 60],%a8[ 60],%a9[ 60],%aa[ 60],%ab[ 60]] *
       poly z [%b0[ 60],%b1[ 60],%b2[ 60],%b3[ 60],%b4[ 60],%b5[ 60],
               %b6[ 60],%b7[ 60],%b8[ 60],%b9[ 60],%ba[ 60],%bb[ 60]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 61],%c1[ 61],%c2[ 61],%c3[ 61],%c4[ 61],%c5[ 61],
               %c6[ 61],%c7[ 61],%c8[ 61],%c9[ 61],%ca[ 61],%cb[ 61]])
      (poly z [%a0[ 61],%a1[ 61],%a2[ 61],%a3[ 61],%a4[ 61],%a5[ 61],
               %a6[ 61],%a7[ 61],%a8[ 61],%a9[ 61],%aa[ 61],%ab[ 61]] *
       poly z [%b0[ 61],%b1[ 61],%b2[ 61],%b3[ 61],%b4[ 61],%b5[ 61],
               %b6[ 61],%b7[ 61],%b8[ 61],%b9[ 61],%ba[ 61],%bb[ 61]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 62],%c1[ 62],%c2[ 62],%c3[ 62],%c4[ 62],%c5[ 62],
               %c6[ 62],%c7[ 62],%c8[ 62],%c9[ 62],%ca[ 62],%cb[ 62]])
      (poly z [%a0[ 62],%a1[ 62],%a2[ 62],%a3[ 62],%a4[ 62],%a5[ 62],
               %a6[ 62],%a7[ 62],%a8[ 62],%a9[ 62],%aa[ 62],%ab[ 62]] *
       poly z [%b0[ 62],%b1[ 62],%b2[ 62],%b3[ 62],%b4[ 62],%b5[ 62],
               %b6[ 62],%b7[ 62],%b8[ 62],%b9[ 62],%ba[ 62],%bb[ 62]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 63],%c1[ 63],%c2[ 63],%c3[ 63],%c4[ 63],%c5[ 63],
               %c6[ 63],%c7[ 63],%c8[ 63],%c9[ 63],%ca[ 63],%cb[ 63]])
      (poly z [%a0[ 63],%a1[ 63],%a2[ 63],%a3[ 63],%a4[ 63],%a5[ 63],
               %a6[ 63],%a7[ 63],%a8[ 63],%a9[ 63],%aa[ 63],%ab[ 63]] *
       poly z [%b0[ 63],%b1[ 63],%b2[ 63],%b3[ 63],%b4[ 63],%b5[ 63],
               %b6[ 63],%b7[ 63],%b8[ 63],%b9[ 63],%ba[ 63],%bb[ 63]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 64],%c1[ 64],%c2[ 64],%c3[ 64],%c4[ 64],%c5[ 64],
               %c6[ 64],%c7[ 64],%c8[ 64],%c9[ 64],%ca[ 64],%cb[ 64]])
      (poly z [%a0[ 64],%a1[ 64],%a2[ 64],%a3[ 64],%a4[ 64],%a5[ 64],
               %a6[ 64],%a7[ 64],%a8[ 64],%a9[ 64],%aa[ 64],%ab[ 64]] *
       poly z [%b0[ 64],%b1[ 64],%b2[ 64],%b3[ 64],%b4[ 64],%b5[ 64],
               %b6[ 64],%b7[ 64],%b8[ 64],%b9[ 64],%ba[ 64],%bb[ 64]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 65],%c1[ 65],%c2[ 65],%c3[ 65],%c4[ 65],%c5[ 65],
               %c6[ 65],%c7[ 65],%c8[ 65],%c9[ 65],%ca[ 65],%cb[ 65]])
      (poly z [%a0[ 65],%a1[ 65],%a2[ 65],%a3[ 65],%a4[ 65],%a5[ 65],
               %a6[ 65],%a7[ 65],%a8[ 65],%a9[ 65],%aa[ 65],%ab[ 65]] *
       poly z [%b0[ 65],%b1[ 65],%b2[ 65],%b3[ 65],%b4[ 65],%b5[ 65],
               %b6[ 65],%b7[ 65],%b8[ 65],%b9[ 65],%ba[ 65],%bb[ 65]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 66],%c1[ 66],%c2[ 66],%c3[ 66],%c4[ 66],%c5[ 66],
               %c6[ 66],%c7[ 66],%c8[ 66],%c9[ 66],%ca[ 66],%cb[ 66]])
      (poly z [%a0[ 66],%a1[ 66],%a2[ 66],%a3[ 66],%a4[ 66],%a5[ 66],
               %a6[ 66],%a7[ 66],%a8[ 66],%a9[ 66],%aa[ 66],%ab[ 66]] *
       poly z [%b0[ 66],%b1[ 66],%b2[ 66],%b3[ 66],%b4[ 66],%b5[ 66],
               %b6[ 66],%b7[ 66],%b8[ 66],%b9[ 66],%ba[ 66],%bb[ 66]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 67],%c1[ 67],%c2[ 67],%c3[ 67],%c4[ 67],%c5[ 67],
               %c6[ 67],%c7[ 67],%c8[ 67],%c9[ 67],%ca[ 67],%cb[ 67]])
      (poly z [%a0[ 67],%a1[ 67],%a2[ 67],%a3[ 67],%a4[ 67],%a5[ 67],
               %a6[ 67],%a7[ 67],%a8[ 67],%a9[ 67],%aa[ 67],%ab[ 67]] *
       poly z [%b0[ 67],%b1[ 67],%b2[ 67],%b3[ 67],%b4[ 67],%b5[ 67],
               %b6[ 67],%b7[ 67],%b8[ 67],%b9[ 67],%ba[ 67],%bb[ 67]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 68],%c1[ 68],%c2[ 68],%c3[ 68],%c4[ 68],%c5[ 68],
               %c6[ 68],%c7[ 68],%c8[ 68],%c9[ 68],%ca[ 68],%cb[ 68]])
      (poly z [%a0[ 68],%a1[ 68],%a2[ 68],%a3[ 68],%a4[ 68],%a5[ 68],
               %a6[ 68],%a7[ 68],%a8[ 68],%a9[ 68],%aa[ 68],%ab[ 68]] *
       poly z [%b0[ 68],%b1[ 68],%b2[ 68],%b3[ 68],%b4[ 68],%b5[ 68],
               %b6[ 68],%b7[ 68],%b8[ 68],%b9[ 68],%ba[ 68],%bb[ 68]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 69],%c1[ 69],%c2[ 69],%c3[ 69],%c4[ 69],%c5[ 69],
               %c6[ 69],%c7[ 69],%c8[ 69],%c9[ 69],%ca[ 69],%cb[ 69]])
      (poly z [%a0[ 69],%a1[ 69],%a2[ 69],%a3[ 69],%a4[ 69],%a5[ 69],
               %a6[ 69],%a7[ 69],%a8[ 69],%a9[ 69],%aa[ 69],%ab[ 69]] *
       poly z [%b0[ 69],%b1[ 69],%b2[ 69],%b3[ 69],%b4[ 69],%b5[ 69],
               %b6[ 69],%b7[ 69],%b8[ 69],%b9[ 69],%ba[ 69],%bb[ 69]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 70],%c1[ 70],%c2[ 70],%c3[ 70],%c4[ 70],%c5[ 70],
               %c6[ 70],%c7[ 70],%c8[ 70],%c9[ 70],%ca[ 70],%cb[ 70]])
      (poly z [%a0[ 70],%a1[ 70],%a2[ 70],%a3[ 70],%a4[ 70],%a5[ 70],
               %a6[ 70],%a7[ 70],%a8[ 70],%a9[ 70],%aa[ 70],%ab[ 70]] *
       poly z [%b0[ 70],%b1[ 70],%b2[ 70],%b3[ 70],%b4[ 70],%b5[ 70],
               %b6[ 70],%b7[ 70],%b8[ 70],%b9[ 70],%ba[ 70],%bb[ 70]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 71],%c1[ 71],%c2[ 71],%c3[ 71],%c4[ 71],%c5[ 71],
               %c6[ 71],%c7[ 71],%c8[ 71],%c9[ 71],%ca[ 71],%cb[ 71]])
      (poly z [%a0[ 71],%a1[ 71],%a2[ 71],%a3[ 71],%a4[ 71],%a5[ 71],
               %a6[ 71],%a7[ 71],%a8[ 71],%a9[ 71],%aa[ 71],%ab[ 71]] *
       poly z [%b0[ 71],%b1[ 71],%b2[ 71],%b3[ 71],%b4[ 71],%b5[ 71],
               %b6[ 71],%b7[ 71],%b8[ 71],%b9[ 71],%ba[ 71],%bb[ 71]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 72],%c1[ 72],%c2[ 72],%c3[ 72],%c4[ 72],%c5[ 72],
               %c6[ 72],%c7[ 72],%c8[ 72],%c9[ 72],%ca[ 72],%cb[ 72]])
      (poly z [%a0[ 72],%a1[ 72],%a2[ 72],%a3[ 72],%a4[ 72],%a5[ 72],
               %a6[ 72],%a7[ 72],%a8[ 72],%a9[ 72],%aa[ 72],%ab[ 72]] *
       poly z [%b0[ 72],%b1[ 72],%b2[ 72],%b3[ 72],%b4[ 72],%b5[ 72],
               %b6[ 72],%b7[ 72],%b8[ 72],%b9[ 72],%ba[ 72],%bb[ 72]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 73],%c1[ 73],%c2[ 73],%c3[ 73],%c4[ 73],%c5[ 73],
               %c6[ 73],%c7[ 73],%c8[ 73],%c9[ 73],%ca[ 73],%cb[ 73]])
      (poly z [%a0[ 73],%a1[ 73],%a2[ 73],%a3[ 73],%a4[ 73],%a5[ 73],
               %a6[ 73],%a7[ 73],%a8[ 73],%a9[ 73],%aa[ 73],%ab[ 73]] *
       poly z [%b0[ 73],%b1[ 73],%b2[ 73],%b3[ 73],%b4[ 73],%b5[ 73],
               %b6[ 73],%b7[ 73],%b8[ 73],%b9[ 73],%ba[ 73],%bb[ 73]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 74],%c1[ 74],%c2[ 74],%c3[ 74],%c4[ 74],%c5[ 74],
               %c6[ 74],%c7[ 74],%c8[ 74],%c9[ 74],%ca[ 74],%cb[ 74]])
      (poly z [%a0[ 74],%a1[ 74],%a2[ 74],%a3[ 74],%a4[ 74],%a5[ 74],
               %a6[ 74],%a7[ 74],%a8[ 74],%a9[ 74],%aa[ 74],%ab[ 74]] *
       poly z [%b0[ 74],%b1[ 74],%b2[ 74],%b3[ 74],%b4[ 74],%b5[ 74],
               %b6[ 74],%b7[ 74],%b8[ 74],%b9[ 74],%ba[ 74],%bb[ 74]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 75],%c1[ 75],%c2[ 75],%c3[ 75],%c4[ 75],%c5[ 75],
               %c6[ 75],%c7[ 75],%c8[ 75],%c9[ 75],%ca[ 75],%cb[ 75]])
      (poly z [%a0[ 75],%a1[ 75],%a2[ 75],%a3[ 75],%a4[ 75],%a5[ 75],
               %a6[ 75],%a7[ 75],%a8[ 75],%a9[ 75],%aa[ 75],%ab[ 75]] *
       poly z [%b0[ 75],%b1[ 75],%b2[ 75],%b3[ 75],%b4[ 75],%b5[ 75],
               %b6[ 75],%b7[ 75],%b8[ 75],%b9[ 75],%ba[ 75],%bb[ 75]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 76],%c1[ 76],%c2[ 76],%c3[ 76],%c4[ 76],%c5[ 76],
               %c6[ 76],%c7[ 76],%c8[ 76],%c9[ 76],%ca[ 76],%cb[ 76]])
      (poly z [%a0[ 76],%a1[ 76],%a2[ 76],%a3[ 76],%a4[ 76],%a5[ 76],
               %a6[ 76],%a7[ 76],%a8[ 76],%a9[ 76],%aa[ 76],%ab[ 76]] *
       poly z [%b0[ 76],%b1[ 76],%b2[ 76],%b3[ 76],%b4[ 76],%b5[ 76],
               %b6[ 76],%b7[ 76],%b8[ 76],%b9[ 76],%ba[ 76],%bb[ 76]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 77],%c1[ 77],%c2[ 77],%c3[ 77],%c4[ 77],%c5[ 77],
               %c6[ 77],%c7[ 77],%c8[ 77],%c9[ 77],%ca[ 77],%cb[ 77]])
      (poly z [%a0[ 77],%a1[ 77],%a2[ 77],%a3[ 77],%a4[ 77],%a5[ 77],
               %a6[ 77],%a7[ 77],%a8[ 77],%a9[ 77],%aa[ 77],%ab[ 77]] *
       poly z [%b0[ 77],%b1[ 77],%b2[ 77],%b3[ 77],%b4[ 77],%b5[ 77],
               %b6[ 77],%b7[ 77],%b8[ 77],%b9[ 77],%ba[ 77],%bb[ 77]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 78],%c1[ 78],%c2[ 78],%c3[ 78],%c4[ 78],%c5[ 78],
               %c6[ 78],%c7[ 78],%c8[ 78],%c9[ 78],%ca[ 78],%cb[ 78]])
      (poly z [%a0[ 78],%a1[ 78],%a2[ 78],%a3[ 78],%a4[ 78],%a5[ 78],
               %a6[ 78],%a7[ 78],%a8[ 78],%a9[ 78],%aa[ 78],%ab[ 78]] *
       poly z [%b0[ 78],%b1[ 78],%b2[ 78],%b3[ 78],%b4[ 78],%b5[ 78],
               %b6[ 78],%b7[ 78],%b8[ 78],%b9[ 78],%ba[ 78],%bb[ 78]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 79],%c1[ 79],%c2[ 79],%c3[ 79],%c4[ 79],%c5[ 79],
               %c6[ 79],%c7[ 79],%c8[ 79],%c9[ 79],%ca[ 79],%cb[ 79]])
      (poly z [%a0[ 79],%a1[ 79],%a2[ 79],%a3[ 79],%a4[ 79],%a5[ 79],
               %a6[ 79],%a7[ 79],%a8[ 79],%a9[ 79],%aa[ 79],%ab[ 79]] *
       poly z [%b0[ 79],%b1[ 79],%b2[ 79],%b3[ 79],%b4[ 79],%b5[ 79],
               %b6[ 79],%b7[ 79],%b8[ 79],%b9[ 79],%ba[ 79],%bb[ 79]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 80],%c1[ 80],%c2[ 80],%c3[ 80],%c4[ 80],%c5[ 80],
               %c6[ 80],%c7[ 80],%c8[ 80],%c9[ 80],%ca[ 80],%cb[ 80]])
      (poly z [%a0[ 80],%a1[ 80],%a2[ 80],%a3[ 80],%a4[ 80],%a5[ 80],
               %a6[ 80],%a7[ 80],%a8[ 80],%a9[ 80],%aa[ 80],%ab[ 80]] *
       poly z [%b0[ 80],%b1[ 80],%b2[ 80],%b3[ 80],%b4[ 80],%b5[ 80],
               %b6[ 80],%b7[ 80],%b8[ 80],%b9[ 80],%ba[ 80],%bb[ 80]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 81],%c1[ 81],%c2[ 81],%c3[ 81],%c4[ 81],%c5[ 81],
               %c6[ 81],%c7[ 81],%c8[ 81],%c9[ 81],%ca[ 81],%cb[ 81]])
      (poly z [%a0[ 81],%a1[ 81],%a2[ 81],%a3[ 81],%a4[ 81],%a5[ 81],
               %a6[ 81],%a7[ 81],%a8[ 81],%a9[ 81],%aa[ 81],%ab[ 81]] *
       poly z [%b0[ 81],%b1[ 81],%b2[ 81],%b3[ 81],%b4[ 81],%b5[ 81],
               %b6[ 81],%b7[ 81],%b8[ 81],%b9[ 81],%ba[ 81],%bb[ 81]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 82],%c1[ 82],%c2[ 82],%c3[ 82],%c4[ 82],%c5[ 82],
               %c6[ 82],%c7[ 82],%c8[ 82],%c9[ 82],%ca[ 82],%cb[ 82]])
      (poly z [%a0[ 82],%a1[ 82],%a2[ 82],%a3[ 82],%a4[ 82],%a5[ 82],
               %a6[ 82],%a7[ 82],%a8[ 82],%a9[ 82],%aa[ 82],%ab[ 82]] *
       poly z [%b0[ 82],%b1[ 82],%b2[ 82],%b3[ 82],%b4[ 82],%b5[ 82],
               %b6[ 82],%b7[ 82],%b8[ 82],%b9[ 82],%ba[ 82],%bb[ 82]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 83],%c1[ 83],%c2[ 83],%c3[ 83],%c4[ 83],%c5[ 83],
               %c6[ 83],%c7[ 83],%c8[ 83],%c9[ 83],%ca[ 83],%cb[ 83]])
      (poly z [%a0[ 83],%a1[ 83],%a2[ 83],%a3[ 83],%a4[ 83],%a5[ 83],
               %a6[ 83],%a7[ 83],%a8[ 83],%a9[ 83],%aa[ 83],%ab[ 83]] *
       poly z [%b0[ 83],%b1[ 83],%b2[ 83],%b3[ 83],%b4[ 83],%b5[ 83],
               %b6[ 83],%b7[ 83],%b8[ 83],%b9[ 83],%ba[ 83],%bb[ 83]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 84],%c1[ 84],%c2[ 84],%c3[ 84],%c4[ 84],%c5[ 84],
               %c6[ 84],%c7[ 84],%c8[ 84],%c9[ 84],%ca[ 84],%cb[ 84]])
      (poly z [%a0[ 84],%a1[ 84],%a2[ 84],%a3[ 84],%a4[ 84],%a5[ 84],
               %a6[ 84],%a7[ 84],%a8[ 84],%a9[ 84],%aa[ 84],%ab[ 84]] *
       poly z [%b0[ 84],%b1[ 84],%b2[ 84],%b3[ 84],%b4[ 84],%b5[ 84],
               %b6[ 84],%b7[ 84],%b8[ 84],%b9[ 84],%ba[ 84],%bb[ 84]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 85],%c1[ 85],%c2[ 85],%c3[ 85],%c4[ 85],%c5[ 85],
               %c6[ 85],%c7[ 85],%c8[ 85],%c9[ 85],%ca[ 85],%cb[ 85]])
      (poly z [%a0[ 85],%a1[ 85],%a2[ 85],%a3[ 85],%a4[ 85],%a5[ 85],
               %a6[ 85],%a7[ 85],%a8[ 85],%a9[ 85],%aa[ 85],%ab[ 85]] *
       poly z [%b0[ 85],%b1[ 85],%b2[ 85],%b3[ 85],%b4[ 85],%b5[ 85],
               %b6[ 85],%b7[ 85],%b8[ 85],%b9[ 85],%ba[ 85],%bb[ 85]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 86],%c1[ 86],%c2[ 86],%c3[ 86],%c4[ 86],%c5[ 86],
               %c6[ 86],%c7[ 86],%c8[ 86],%c9[ 86],%ca[ 86],%cb[ 86]])
      (poly z [%a0[ 86],%a1[ 86],%a2[ 86],%a3[ 86],%a4[ 86],%a5[ 86],
               %a6[ 86],%a7[ 86],%a8[ 86],%a9[ 86],%aa[ 86],%ab[ 86]] *
       poly z [%b0[ 86],%b1[ 86],%b2[ 86],%b3[ 86],%b4[ 86],%b5[ 86],
               %b6[ 86],%b7[ 86],%b8[ 86],%b9[ 86],%ba[ 86],%bb[ 86]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 87],%c1[ 87],%c2[ 87],%c3[ 87],%c4[ 87],%c5[ 87],
               %c6[ 87],%c7[ 87],%c8[ 87],%c9[ 87],%ca[ 87],%cb[ 87]])
      (poly z [%a0[ 87],%a1[ 87],%a2[ 87],%a3[ 87],%a4[ 87],%a5[ 87],
               %a6[ 87],%a7[ 87],%a8[ 87],%a9[ 87],%aa[ 87],%ab[ 87]] *
       poly z [%b0[ 87],%b1[ 87],%b2[ 87],%b3[ 87],%b4[ 87],%b5[ 87],
               %b6[ 87],%b7[ 87],%b8[ 87],%b9[ 87],%ba[ 87],%bb[ 87]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 88],%c1[ 88],%c2[ 88],%c3[ 88],%c4[ 88],%c5[ 88],
               %c6[ 88],%c7[ 88],%c8[ 88],%c9[ 88],%ca[ 88],%cb[ 88]])
      (poly z [%a0[ 88],%a1[ 88],%a2[ 88],%a3[ 88],%a4[ 88],%a5[ 88],
               %a6[ 88],%a7[ 88],%a8[ 88],%a9[ 88],%aa[ 88],%ab[ 88]] *
       poly z [%b0[ 88],%b1[ 88],%b2[ 88],%b3[ 88],%b4[ 88],%b5[ 88],
               %b6[ 88],%b7[ 88],%b8[ 88],%b9[ 88],%ba[ 88],%bb[ 88]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 89],%c1[ 89],%c2[ 89],%c3[ 89],%c4[ 89],%c5[ 89],
               %c6[ 89],%c7[ 89],%c8[ 89],%c9[ 89],%ca[ 89],%cb[ 89]])
      (poly z [%a0[ 89],%a1[ 89],%a2[ 89],%a3[ 89],%a4[ 89],%a5[ 89],
               %a6[ 89],%a7[ 89],%a8[ 89],%a9[ 89],%aa[ 89],%ab[ 89]] *
       poly z [%b0[ 89],%b1[ 89],%b2[ 89],%b3[ 89],%b4[ 89],%b5[ 89],
               %b6[ 89],%b7[ 89],%b8[ 89],%b9[ 89],%ba[ 89],%bb[ 89]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 90],%c1[ 90],%c2[ 90],%c3[ 90],%c4[ 90],%c5[ 90],
               %c6[ 90],%c7[ 90],%c8[ 90],%c9[ 90],%ca[ 90],%cb[ 90]])
      (poly z [%a0[ 90],%a1[ 90],%a2[ 90],%a3[ 90],%a4[ 90],%a5[ 90],
               %a6[ 90],%a7[ 90],%a8[ 90],%a9[ 90],%aa[ 90],%ab[ 90]] *
       poly z [%b0[ 90],%b1[ 90],%b2[ 90],%b3[ 90],%b4[ 90],%b5[ 90],
               %b6[ 90],%b7[ 90],%b8[ 90],%b9[ 90],%ba[ 90],%bb[ 90]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 91],%c1[ 91],%c2[ 91],%c3[ 91],%c4[ 91],%c5[ 91],
               %c6[ 91],%c7[ 91],%c8[ 91],%c9[ 91],%ca[ 91],%cb[ 91]])
      (poly z [%a0[ 91],%a1[ 91],%a2[ 91],%a3[ 91],%a4[ 91],%a5[ 91],
               %a6[ 91],%a7[ 91],%a8[ 91],%a9[ 91],%aa[ 91],%ab[ 91]] *
       poly z [%b0[ 91],%b1[ 91],%b2[ 91],%b3[ 91],%b4[ 91],%b5[ 91],
               %b6[ 91],%b7[ 91],%b8[ 91],%b9[ 91],%ba[ 91],%bb[ 91]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 92],%c1[ 92],%c2[ 92],%c3[ 92],%c4[ 92],%c5[ 92],
               %c6[ 92],%c7[ 92],%c8[ 92],%c9[ 92],%ca[ 92],%cb[ 92]])
      (poly z [%a0[ 92],%a1[ 92],%a2[ 92],%a3[ 92],%a4[ 92],%a5[ 92],
               %a6[ 92],%a7[ 92],%a8[ 92],%a9[ 92],%aa[ 92],%ab[ 92]] *
       poly z [%b0[ 92],%b1[ 92],%b2[ 92],%b3[ 92],%b4[ 92],%b5[ 92],
               %b6[ 92],%b7[ 92],%b8[ 92],%b9[ 92],%ba[ 92],%bb[ 92]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 93],%c1[ 93],%c2[ 93],%c3[ 93],%c4[ 93],%c5[ 93],
               %c6[ 93],%c7[ 93],%c8[ 93],%c9[ 93],%ca[ 93],%cb[ 93]])
      (poly z [%a0[ 93],%a1[ 93],%a2[ 93],%a3[ 93],%a4[ 93],%a5[ 93],
               %a6[ 93],%a7[ 93],%a8[ 93],%a9[ 93],%aa[ 93],%ab[ 93]] *
       poly z [%b0[ 93],%b1[ 93],%b2[ 93],%b3[ 93],%b4[ 93],%b5[ 93],
               %b6[ 93],%b7[ 93],%b8[ 93],%b9[ 93],%ba[ 93],%bb[ 93]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 94],%c1[ 94],%c2[ 94],%c3[ 94],%c4[ 94],%c5[ 94],
               %c6[ 94],%c7[ 94],%c8[ 94],%c9[ 94],%ca[ 94],%cb[ 94]])
      (poly z [%a0[ 94],%a1[ 94],%a2[ 94],%a3[ 94],%a4[ 94],%a5[ 94],
               %a6[ 94],%a7[ 94],%a8[ 94],%a9[ 94],%aa[ 94],%ab[ 94]] *
       poly z [%b0[ 94],%b1[ 94],%b2[ 94],%b3[ 94],%b4[ 94],%b5[ 94],
               %b6[ 94],%b7[ 94],%b8[ 94],%b9[ 94],%ba[ 94],%bb[ 94]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 95],%c1[ 95],%c2[ 95],%c3[ 95],%c4[ 95],%c5[ 95],
               %c6[ 95],%c7[ 95],%c8[ 95],%c9[ 95],%ca[ 95],%cb[ 95]])
      (poly z [%a0[ 95],%a1[ 95],%a2[ 95],%a3[ 95],%a4[ 95],%a5[ 95],
               %a6[ 95],%a7[ 95],%a8[ 95],%a9[ 95],%aa[ 95],%ab[ 95]] *
       poly z [%b0[ 95],%b1[ 95],%b2[ 95],%b3[ 95],%b4[ 95],%b5[ 95],
               %b6[ 95],%b7[ 95],%b8[ 95],%b9[ 95],%ba[ 95],%bb[ 95]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 96],%c1[ 96],%c2[ 96],%c3[ 96],%c4[ 96],%c5[ 96],
               %c6[ 96],%c7[ 96],%c8[ 96],%c9[ 96],%ca[ 96],%cb[ 96]])
      (poly z [%a0[ 96],%a1[ 96],%a2[ 96],%a3[ 96],%a4[ 96],%a5[ 96],
               %a6[ 96],%a7[ 96],%a8[ 96],%a9[ 96],%aa[ 96],%ab[ 96]] *
       poly z [%b0[ 96],%b1[ 96],%b2[ 96],%b3[ 96],%b4[ 96],%b5[ 96],
               %b6[ 96],%b7[ 96],%b8[ 96],%b9[ 96],%ba[ 96],%bb[ 96]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 97],%c1[ 97],%c2[ 97],%c3[ 97],%c4[ 97],%c5[ 97],
               %c6[ 97],%c7[ 97],%c8[ 97],%c9[ 97],%ca[ 97],%cb[ 97]])
      (poly z [%a0[ 97],%a1[ 97],%a2[ 97],%a3[ 97],%a4[ 97],%a5[ 97],
               %a6[ 97],%a7[ 97],%a8[ 97],%a9[ 97],%aa[ 97],%ab[ 97]] *
       poly z [%b0[ 97],%b1[ 97],%b2[ 97],%b3[ 97],%b4[ 97],%b5[ 97],
               %b6[ 97],%b7[ 97],%b8[ 97],%b9[ 97],%ba[ 97],%bb[ 97]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 98],%c1[ 98],%c2[ 98],%c3[ 98],%c4[ 98],%c5[ 98],
               %c6[ 98],%c7[ 98],%c8[ 98],%c9[ 98],%ca[ 98],%cb[ 98]])
      (poly z [%a0[ 98],%a1[ 98],%a2[ 98],%a3[ 98],%a4[ 98],%a5[ 98],
               %a6[ 98],%a7[ 98],%a8[ 98],%a9[ 98],%aa[ 98],%ab[ 98]] *
       poly z [%b0[ 98],%b1[ 98],%b2[ 98],%b3[ 98],%b4[ 98],%b5[ 98],
               %b6[ 98],%b7[ 98],%b8[ 98],%b9[ 98],%ba[ 98],%bb[ 98]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[ 99],%c1[ 99],%c2[ 99],%c3[ 99],%c4[ 99],%c5[ 99],
               %c6[ 99],%c7[ 99],%c8[ 99],%c9[ 99],%ca[ 99],%cb[ 99]])
      (poly z [%a0[ 99],%a1[ 99],%a2[ 99],%a3[ 99],%a4[ 99],%a5[ 99],
               %a6[ 99],%a7[ 99],%a8[ 99],%a9[ 99],%aa[ 99],%ab[ 99]] *
       poly z [%b0[ 99],%b1[ 99],%b2[ 99],%b3[ 99],%b4[ 99],%b5[ 99],
               %b6[ 99],%b7[ 99],%b8[ 99],%b9[ 99],%ba[ 99],%bb[ 99]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[100],%c1[100],%c2[100],%c3[100],%c4[100],%c5[100],
               %c6[100],%c7[100],%c8[100],%c9[100],%ca[100],%cb[100]])
      (poly z [%a0[100],%a1[100],%a2[100],%a3[100],%a4[100],%a5[100],
               %a6[100],%a7[100],%a8[100],%a9[100],%aa[100],%ab[100]] *
       poly z [%b0[100],%b1[100],%b2[100],%b3[100],%b4[100],%b5[100],
               %b6[100],%b7[100],%b8[100],%b9[100],%ba[100],%bb[100]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[101],%c1[101],%c2[101],%c3[101],%c4[101],%c5[101],
               %c6[101],%c7[101],%c8[101],%c9[101],%ca[101],%cb[101]])
      (poly z [%a0[101],%a1[101],%a2[101],%a3[101],%a4[101],%a5[101],
               %a6[101],%a7[101],%a8[101],%a9[101],%aa[101],%ab[101]] *
       poly z [%b0[101],%b1[101],%b2[101],%b3[101],%b4[101],%b5[101],
               %b6[101],%b7[101],%b8[101],%b9[101],%ba[101],%bb[101]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[102],%c1[102],%c2[102],%c3[102],%c4[102],%c5[102],
               %c6[102],%c7[102],%c8[102],%c9[102],%ca[102],%cb[102]])
      (poly z [%a0[102],%a1[102],%a2[102],%a3[102],%a4[102],%a5[102],
               %a6[102],%a7[102],%a8[102],%a9[102],%aa[102],%ab[102]] *
       poly z [%b0[102],%b1[102],%b2[102],%b3[102],%b4[102],%b5[102],
               %b6[102],%b7[102],%b8[102],%b9[102],%ba[102],%bb[102]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[103],%c1[103],%c2[103],%c3[103],%c4[103],%c5[103],
               %c6[103],%c7[103],%c8[103],%c9[103],%ca[103],%cb[103]])
      (poly z [%a0[103],%a1[103],%a2[103],%a3[103],%a4[103],%a5[103],
               %a6[103],%a7[103],%a8[103],%a9[103],%aa[103],%ab[103]] *
       poly z [%b0[103],%b1[103],%b2[103],%b3[103],%b4[103],%b5[103],
               %b6[103],%b7[103],%b8[103],%b9[103],%ba[103],%bb[103]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[104],%c1[104],%c2[104],%c3[104],%c4[104],%c5[104],
               %c6[104],%c7[104],%c8[104],%c9[104],%ca[104],%cb[104]])
      (poly z [%a0[104],%a1[104],%a2[104],%a3[104],%a4[104],%a5[104],
               %a6[104],%a7[104],%a8[104],%a9[104],%aa[104],%ab[104]] *
       poly z [%b0[104],%b1[104],%b2[104],%b3[104],%b4[104],%b5[104],
               %b6[104],%b7[104],%b8[104],%b9[104],%ba[104],%bb[104]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[105],%c1[105],%c2[105],%c3[105],%c4[105],%c5[105],
               %c6[105],%c7[105],%c8[105],%c9[105],%ca[105],%cb[105]])
      (poly z [%a0[105],%a1[105],%a2[105],%a3[105],%a4[105],%a5[105],
               %a6[105],%a7[105],%a8[105],%a9[105],%aa[105],%ab[105]] *
       poly z [%b0[105],%b1[105],%b2[105],%b3[105],%b4[105],%b5[105],
               %b6[105],%b7[105],%b8[105],%b9[105],%ba[105],%bb[105]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[106],%c1[106],%c2[106],%c3[106],%c4[106],%c5[106],
               %c6[106],%c7[106],%c8[106],%c9[106],%ca[106],%cb[106]])
      (poly z [%a0[106],%a1[106],%a2[106],%a3[106],%a4[106],%a5[106],
               %a6[106],%a7[106],%a8[106],%a9[106],%aa[106],%ab[106]] *
       poly z [%b0[106],%b1[106],%b2[106],%b3[106],%b4[106],%b5[106],
               %b6[106],%b7[106],%b8[106],%b9[106],%ba[106],%bb[106]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[107],%c1[107],%c2[107],%c3[107],%c4[107],%c5[107],
               %c6[107],%c7[107],%c8[107],%c9[107],%ca[107],%cb[107]])
      (poly z [%a0[107],%a1[107],%a2[107],%a3[107],%a4[107],%a5[107],
               %a6[107],%a7[107],%a8[107],%a9[107],%aa[107],%ab[107]] *
       poly z [%b0[107],%b1[107],%b2[107],%b3[107],%b4[107],%b5[107],
               %b6[107],%b7[107],%b8[107],%b9[107],%ba[107],%bb[107]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[108],%c1[108],%c2[108],%c3[108],%c4[108],%c5[108],
               %c6[108],%c7[108],%c8[108],%c9[108],%ca[108],%cb[108]])
      (poly z [%a0[108],%a1[108],%a2[108],%a3[108],%a4[108],%a5[108],
               %a6[108],%a7[108],%a8[108],%a9[108],%aa[108],%ab[108]] *
       poly z [%b0[108],%b1[108],%b2[108],%b3[108],%b4[108],%b5[108],
               %b6[108],%b7[108],%b8[108],%b9[108],%ba[108],%bb[108]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[109],%c1[109],%c2[109],%c3[109],%c4[109],%c5[109],
               %c6[109],%c7[109],%c8[109],%c9[109],%ca[109],%cb[109]])
      (poly z [%a0[109],%a1[109],%a2[109],%a3[109],%a4[109],%a5[109],
               %a6[109],%a7[109],%a8[109],%a9[109],%aa[109],%ab[109]] *
       poly z [%b0[109],%b1[109],%b2[109],%b3[109],%b4[109],%b5[109],
               %b6[109],%b7[109],%b8[109],%b9[109],%ba[109],%bb[109]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[110],%c1[110],%c2[110],%c3[110],%c4[110],%c5[110],
               %c6[110],%c7[110],%c8[110],%c9[110],%ca[110],%cb[110]])
      (poly z [%a0[110],%a1[110],%a2[110],%a3[110],%a4[110],%a5[110],
               %a6[110],%a7[110],%a8[110],%a9[110],%aa[110],%ab[110]] *
       poly z [%b0[110],%b1[110],%b2[110],%b3[110],%b4[110],%b5[110],
               %b6[110],%b7[110],%b8[110],%b9[110],%ba[110],%bb[110]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[111],%c1[111],%c2[111],%c3[111],%c4[111],%c5[111],
               %c6[111],%c7[111],%c8[111],%c9[111],%ca[111],%cb[111]])
      (poly z [%a0[111],%a1[111],%a2[111],%a3[111],%a4[111],%a5[111],
               %a6[111],%a7[111],%a8[111],%a9[111],%aa[111],%ab[111]] *
       poly z [%b0[111],%b1[111],%b2[111],%b3[111],%b4[111],%b5[111],
               %b6[111],%b7[111],%b8[111],%b9[111],%ba[111],%bb[111]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[112],%c1[112],%c2[112],%c3[112],%c4[112],%c5[112],
               %c6[112],%c7[112],%c8[112],%c9[112],%ca[112],%cb[112]])
      (poly z [%a0[112],%a1[112],%a2[112],%a3[112],%a4[112],%a5[112],
               %a6[112],%a7[112],%a8[112],%a9[112],%aa[112],%ab[112]] *
       poly z [%b0[112],%b1[112],%b2[112],%b3[112],%b4[112],%b5[112],
               %b6[112],%b7[112],%b8[112],%b9[112],%ba[112],%bb[112]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[113],%c1[113],%c2[113],%c3[113],%c4[113],%c5[113],
               %c6[113],%c7[113],%c8[113],%c9[113],%ca[113],%cb[113]])
      (poly z [%a0[113],%a1[113],%a2[113],%a3[113],%a4[113],%a5[113],
               %a6[113],%a7[113],%a8[113],%a9[113],%aa[113],%ab[113]] *
       poly z [%b0[113],%b1[113],%b2[113],%b3[113],%b4[113],%b5[113],
               %b6[113],%b7[113],%b8[113],%b9[113],%ba[113],%bb[113]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[114],%c1[114],%c2[114],%c3[114],%c4[114],%c5[114],
               %c6[114],%c7[114],%c8[114],%c9[114],%ca[114],%cb[114]])
      (poly z [%a0[114],%a1[114],%a2[114],%a3[114],%a4[114],%a5[114],
               %a6[114],%a7[114],%a8[114],%a9[114],%aa[114],%ab[114]] *
       poly z [%b0[114],%b1[114],%b2[114],%b3[114],%b4[114],%b5[114],
               %b6[114],%b7[114],%b8[114],%b9[114],%ba[114],%bb[114]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[115],%c1[115],%c2[115],%c3[115],%c4[115],%c5[115],
               %c6[115],%c7[115],%c8[115],%c9[115],%ca[115],%cb[115]])
      (poly z [%a0[115],%a1[115],%a2[115],%a3[115],%a4[115],%a5[115],
               %a6[115],%a7[115],%a8[115],%a9[115],%aa[115],%ab[115]] *
       poly z [%b0[115],%b1[115],%b2[115],%b3[115],%b4[115],%b5[115],
               %b6[115],%b7[115],%b8[115],%b9[115],%ba[115],%bb[115]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[116],%c1[116],%c2[116],%c3[116],%c4[116],%c5[116],
               %c6[116],%c7[116],%c8[116],%c9[116],%ca[116],%cb[116]])
      (poly z [%a0[116],%a1[116],%a2[116],%a3[116],%a4[116],%a5[116],
               %a6[116],%a7[116],%a8[116],%a9[116],%aa[116],%ab[116]] *
       poly z [%b0[116],%b1[116],%b2[116],%b3[116],%b4[116],%b5[116],
               %b6[116],%b7[116],%b8[116],%b9[116],%ba[116],%bb[116]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[117],%c1[117],%c2[117],%c3[117],%c4[117],%c5[117],
               %c6[117],%c7[117],%c8[117],%c9[117],%ca[117],%cb[117]])
      (poly z [%a0[117],%a1[117],%a2[117],%a3[117],%a4[117],%a5[117],
               %a6[117],%a7[117],%a8[117],%a9[117],%aa[117],%ab[117]] *
       poly z [%b0[117],%b1[117],%b2[117],%b3[117],%b4[117],%b5[117],
               %b6[117],%b7[117],%b8[117],%b9[117],%ba[117],%bb[117]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[118],%c1[118],%c2[118],%c3[118],%c4[118],%c5[118],
               %c6[118],%c7[118],%c8[118],%c9[118],%ca[118],%cb[118]])
      (poly z [%a0[118],%a1[118],%a2[118],%a3[118],%a4[118],%a5[118],
               %a6[118],%a7[118],%a8[118],%a9[118],%aa[118],%ab[118]] *
       poly z [%b0[118],%b1[118],%b2[118],%b3[118],%b4[118],%b5[118],
               %b6[118],%b7[118],%b8[118],%b9[118],%ba[118],%bb[118]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[119],%c1[119],%c2[119],%c3[119],%c4[119],%c5[119],
               %c6[119],%c7[119],%c8[119],%c9[119],%ca[119],%cb[119]])
      (poly z [%a0[119],%a1[119],%a2[119],%a3[119],%a4[119],%a5[119],
               %a6[119],%a7[119],%a8[119],%a9[119],%aa[119],%ab[119]] *
       poly z [%b0[119],%b1[119],%b2[119],%b3[119],%b4[119],%b5[119],
               %b6[119],%b7[119],%b8[119],%b9[119],%ba[119],%bb[119]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[120],%c1[120],%c2[120],%c3[120],%c4[120],%c5[120],
               %c6[120],%c7[120],%c8[120],%c9[120],%ca[120],%cb[120]])
      (poly z [%a0[120],%a1[120],%a2[120],%a3[120],%a4[120],%a5[120],
               %a6[120],%a7[120],%a8[120],%a9[120],%aa[120],%ab[120]] *
       poly z [%b0[120],%b1[120],%b2[120],%b3[120],%b4[120],%b5[120],
               %b6[120],%b7[120],%b8[120],%b9[120],%ba[120],%bb[120]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[121],%c1[121],%c2[121],%c3[121],%c4[121],%c5[121],
               %c6[121],%c7[121],%c8[121],%c9[121],%ca[121],%cb[121]])
      (poly z [%a0[121],%a1[121],%a2[121],%a3[121],%a4[121],%a5[121],
               %a6[121],%a7[121],%a8[121],%a9[121],%aa[121],%ab[121]] *
       poly z [%b0[121],%b1[121],%b2[121],%b3[121],%b4[121],%b5[121],
               %b6[121],%b7[121],%b8[121],%b9[121],%ba[121],%bb[121]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[122],%c1[122],%c2[122],%c3[122],%c4[122],%c5[122],
               %c6[122],%c7[122],%c8[122],%c9[122],%ca[122],%cb[122]])
      (poly z [%a0[122],%a1[122],%a2[122],%a3[122],%a4[122],%a5[122],
               %a6[122],%a7[122],%a8[122],%a9[122],%aa[122],%ab[122]] *
       poly z [%b0[122],%b1[122],%b2[122],%b3[122],%b4[122],%b5[122],
               %b6[122],%b7[122],%b8[122],%b9[122],%ba[122],%bb[122]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[123],%c1[123],%c2[123],%c3[123],%c4[123],%c5[123],
               %c6[123],%c7[123],%c8[123],%c9[123],%ca[123],%cb[123]])
      (poly z [%a0[123],%a1[123],%a2[123],%a3[123],%a4[123],%a5[123],
               %a6[123],%a7[123],%a8[123],%a9[123],%aa[123],%ab[123]] *
       poly z [%b0[123],%b1[123],%b2[123],%b3[123],%b4[123],%b5[123],
               %b6[123],%b7[123],%b8[123],%b9[123],%ba[123],%bb[123]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[124],%c1[124],%c2[124],%c3[124],%c4[124],%c5[124],
               %c6[124],%c7[124],%c8[124],%c9[124],%ca[124],%cb[124]])
      (poly z [%a0[124],%a1[124],%a2[124],%a3[124],%a4[124],%a5[124],
               %a6[124],%a7[124],%a8[124],%a9[124],%aa[124],%ab[124]] *
       poly z [%b0[124],%b1[124],%b2[124],%b3[124],%b4[124],%b5[124],
               %b6[124],%b7[124],%b8[124],%b9[124],%ba[124],%bb[124]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[125],%c1[125],%c2[125],%c3[125],%c4[125],%c5[125],
               %c6[125],%c7[125],%c8[125],%c9[125],%ca[125],%cb[125]])
      (poly z [%a0[125],%a1[125],%a2[125],%a3[125],%a4[125],%a5[125],
               %a6[125],%a7[125],%a8[125],%a9[125],%aa[125],%ab[125]] *
       poly z [%b0[125],%b1[125],%b2[125],%b3[125],%b4[125],%b5[125],
               %b6[125],%b7[125],%b8[125],%b9[125],%ba[125],%bb[125]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[126],%c1[126],%c2[126],%c3[126],%c4[126],%c5[126],
               %c6[126],%c7[126],%c8[126],%c9[126],%ca[126],%cb[126]])
      (poly z [%a0[126],%a1[126],%a2[126],%a3[126],%a4[126],%a5[126],
               %a6[126],%a7[126],%a8[126],%a9[126],%aa[126],%ab[126]] *
       poly z [%b0[126],%b1[126],%b2[126],%b3[126],%b4[126],%b5[126],
               %b6[126],%b7[126],%b8[126],%b9[126],%ba[126],%bb[126]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[127],%c1[127],%c2[127],%c3[127],%c4[127],%c5[127],
               %c6[127],%c7[127],%c8[127],%c9[127],%ca[127],%cb[127]])
      (poly z [%a0[127],%a1[127],%a2[127],%a3[127],%a4[127],%a5[127],
               %a6[127],%a7[127],%a8[127],%a9[127],%aa[127],%ab[127]] *
       poly z [%b0[127],%b1[127],%b2[127],%b3[127],%b4[127],%b5[127],
               %b6[127],%b7[127],%b8[127],%b9[127],%ba[127],%bb[127]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[128],%c1[128],%c2[128],%c3[128],%c4[128],%c5[128],
               %c6[128],%c7[128],%c8[128],%c9[128],%ca[128],%cb[128]])
      (poly z [%a0[128],%a1[128],%a2[128],%a3[128],%a4[128],%a5[128],
               %a6[128],%a7[128],%a8[128],%a9[128],%aa[128],%ab[128]] *
       poly z [%b0[128],%b1[128],%b2[128],%b3[128],%b4[128],%b5[128],
               %b6[128],%b7[128],%b8[128],%b9[128],%ba[128],%bb[128]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[129],%c1[129],%c2[129],%c3[129],%c4[129],%c5[129],
               %c6[129],%c7[129],%c8[129],%c9[129],%ca[129],%cb[129]])
      (poly z [%a0[129],%a1[129],%a2[129],%a3[129],%a4[129],%a5[129],
               %a6[129],%a7[129],%a8[129],%a9[129],%aa[129],%ab[129]] *
       poly z [%b0[129],%b1[129],%b2[129],%b3[129],%b4[129],%b5[129],
               %b6[129],%b7[129],%b8[129],%b9[129],%ba[129],%bb[129]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[130],%c1[130],%c2[130],%c3[130],%c4[130],%c5[130],
               %c6[130],%c7[130],%c8[130],%c9[130],%ca[130],%cb[130]])
      (poly z [%a0[130],%a1[130],%a2[130],%a3[130],%a4[130],%a5[130],
               %a6[130],%a7[130],%a8[130],%a9[130],%aa[130],%ab[130]] *
       poly z [%b0[130],%b1[130],%b2[130],%b3[130],%b4[130],%b5[130],
               %b6[130],%b7[130],%b8[130],%b9[130],%ba[130],%bb[130]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[131],%c1[131],%c2[131],%c3[131],%c4[131],%c5[131],
               %c6[131],%c7[131],%c8[131],%c9[131],%ca[131],%cb[131]])
      (poly z [%a0[131],%a1[131],%a2[131],%a3[131],%a4[131],%a5[131],
               %a6[131],%a7[131],%a8[131],%a9[131],%aa[131],%ab[131]] *
       poly z [%b0[131],%b1[131],%b2[131],%b3[131],%b4[131],%b5[131],
               %b6[131],%b7[131],%b8[131],%b9[131],%ba[131],%bb[131]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[132],%c1[132],%c2[132],%c3[132],%c4[132],%c5[132],
               %c6[132],%c7[132],%c8[132],%c9[132],%ca[132],%cb[132]])
      (poly z [%a0[132],%a1[132],%a2[132],%a3[132],%a4[132],%a5[132],
               %a6[132],%a7[132],%a8[132],%a9[132],%aa[132],%ab[132]] *
       poly z [%b0[132],%b1[132],%b2[132],%b3[132],%b4[132],%b5[132],
               %b6[132],%b7[132],%b8[132],%b9[132],%ba[132],%bb[132]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[133],%c1[133],%c2[133],%c3[133],%c4[133],%c5[133],
               %c6[133],%c7[133],%c8[133],%c9[133],%ca[133],%cb[133]])
      (poly z [%a0[133],%a1[133],%a2[133],%a3[133],%a4[133],%a5[133],
               %a6[133],%a7[133],%a8[133],%a9[133],%aa[133],%ab[133]] *
       poly z [%b0[133],%b1[133],%b2[133],%b3[133],%b4[133],%b5[133],
               %b6[133],%b7[133],%b8[133],%b9[133],%ba[133],%bb[133]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[134],%c1[134],%c2[134],%c3[134],%c4[134],%c5[134],
               %c6[134],%c7[134],%c8[134],%c9[134],%ca[134],%cb[134]])
      (poly z [%a0[134],%a1[134],%a2[134],%a3[134],%a4[134],%a5[134],
               %a6[134],%a7[134],%a8[134],%a9[134],%aa[134],%ab[134]] *
       poly z [%b0[134],%b1[134],%b2[134],%b3[134],%b4[134],%b5[134],
               %b6[134],%b7[134],%b8[134],%b9[134],%ba[134],%bb[134]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[135],%c1[135],%c2[135],%c3[135],%c4[135],%c5[135],
               %c6[135],%c7[135],%c8[135],%c9[135],%ca[135],%cb[135]])
      (poly z [%a0[135],%a1[135],%a2[135],%a3[135],%a4[135],%a5[135],
               %a6[135],%a7[135],%a8[135],%a9[135],%aa[135],%ab[135]] *
       poly z [%b0[135],%b1[135],%b2[135],%b3[135],%b4[135],%b5[135],
               %b6[135],%b7[135],%b8[135],%b9[135],%ba[135],%bb[135]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[136],%c1[136],%c2[136],%c3[136],%c4[136],%c5[136],
               %c6[136],%c7[136],%c8[136],%c9[136],%ca[136],%cb[136]])
      (poly z [%a0[136],%a1[136],%a2[136],%a3[136],%a4[136],%a5[136],
               %a6[136],%a7[136],%a8[136],%a9[136],%aa[136],%ab[136]] *
       poly z [%b0[136],%b1[136],%b2[136],%b3[136],%b4[136],%b5[136],
               %b6[136],%b7[136],%b8[136],%b9[136],%ba[136],%bb[136]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[137],%c1[137],%c2[137],%c3[137],%c4[137],%c5[137],
               %c6[137],%c7[137],%c8[137],%c9[137],%ca[137],%cb[137]])
      (poly z [%a0[137],%a1[137],%a2[137],%a3[137],%a4[137],%a5[137],
               %a6[137],%a7[137],%a8[137],%a9[137],%aa[137],%ab[137]] *
       poly z [%b0[137],%b1[137],%b2[137],%b3[137],%b4[137],%b5[137],
               %b6[137],%b7[137],%b8[137],%b9[137],%ba[137],%bb[137]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[138],%c1[138],%c2[138],%c3[138],%c4[138],%c5[138],
               %c6[138],%c7[138],%c8[138],%c9[138],%ca[138],%cb[138]])
      (poly z [%a0[138],%a1[138],%a2[138],%a3[138],%a4[138],%a5[138],
               %a6[138],%a7[138],%a8[138],%a9[138],%aa[138],%ab[138]] *
       poly z [%b0[138],%b1[138],%b2[138],%b3[138],%b4[138],%b5[138],
               %b6[138],%b7[138],%b8[138],%b9[138],%ba[138],%bb[138]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[139],%c1[139],%c2[139],%c3[139],%c4[139],%c5[139],
               %c6[139],%c7[139],%c8[139],%c9[139],%ca[139],%cb[139]])
      (poly z [%a0[139],%a1[139],%a2[139],%a3[139],%a4[139],%a5[139],
               %a6[139],%a7[139],%a8[139],%a9[139],%aa[139],%ab[139]] *
       poly z [%b0[139],%b1[139],%b2[139],%b3[139],%b4[139],%b5[139],
               %b6[139],%b7[139],%b8[139],%b9[139],%ba[139],%bb[139]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[140],%c1[140],%c2[140],%c3[140],%c4[140],%c5[140],
               %c6[140],%c7[140],%c8[140],%c9[140],%ca[140],%cb[140]])
      (poly z [%a0[140],%a1[140],%a2[140],%a3[140],%a4[140],%a5[140],
               %a6[140],%a7[140],%a8[140],%a9[140],%aa[140],%ab[140]] *
       poly z [%b0[140],%b1[140],%b2[140],%b3[140],%b4[140],%b5[140],
               %b6[140],%b7[140],%b8[140],%b9[140],%ba[140],%bb[140]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[141],%c1[141],%c2[141],%c3[141],%c4[141],%c5[141],
               %c6[141],%c7[141],%c8[141],%c9[141],%ca[141],%cb[141]])
      (poly z [%a0[141],%a1[141],%a2[141],%a3[141],%a4[141],%a5[141],
               %a6[141],%a7[141],%a8[141],%a9[141],%aa[141],%ab[141]] *
       poly z [%b0[141],%b1[141],%b2[141],%b3[141],%b4[141],%b5[141],
               %b6[141],%b7[141],%b8[141],%b9[141],%ba[141],%bb[141]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[142],%c1[142],%c2[142],%c3[142],%c4[142],%c5[142],
               %c6[142],%c7[142],%c8[142],%c9[142],%ca[142],%cb[142]])
      (poly z [%a0[142],%a1[142],%a2[142],%a3[142],%a4[142],%a5[142],
               %a6[142],%a7[142],%a8[142],%a9[142],%aa[142],%ab[142]] *
       poly z [%b0[142],%b1[142],%b2[142],%b3[142],%b4[142],%b5[142],
               %b6[142],%b7[142],%b8[142],%b9[142],%ba[142],%bb[142]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[143],%c1[143],%c2[143],%c3[143],%c4[143],%c5[143],
               %c6[143],%c7[143],%c8[143],%c9[143],%ca[143],%cb[143]])
      (poly z [%a0[143],%a1[143],%a2[143],%a3[143],%a4[143],%a5[143],
               %a6[143],%a7[143],%a8[143],%a9[143],%aa[143],%ab[143]] *
       poly z [%b0[143],%b1[143],%b2[143],%b3[143],%b4[143],%b5[143],
               %b6[143],%b7[143],%b8[143],%b9[143],%ba[143],%bb[143]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[144],%c1[144],%c2[144],%c3[144],%c4[144],%c5[144],
               %c6[144],%c7[144],%c8[144],%c9[144],%ca[144],%cb[144]])
      (poly z [%a0[144],%a1[144],%a2[144],%a3[144],%a4[144],%a5[144],
               %a6[144],%a7[144],%a8[144],%a9[144],%aa[144],%ab[144]] *
       poly z [%b0[144],%b1[144],%b2[144],%b3[144],%b4[144],%b5[144],
               %b6[144],%b7[144],%b8[144],%b9[144],%ba[144],%bb[144]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[145],%c1[145],%c2[145],%c3[145],%c4[145],%c5[145],
               %c6[145],%c7[145],%c8[145],%c9[145],%ca[145],%cb[145]])
      (poly z [%a0[145],%a1[145],%a2[145],%a3[145],%a4[145],%a5[145],
               %a6[145],%a7[145],%a8[145],%a9[145],%aa[145],%ab[145]] *
       poly z [%b0[145],%b1[145],%b2[145],%b3[145],%b4[145],%b5[145],
               %b6[145],%b7[145],%b8[145],%b9[145],%ba[145],%bb[145]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[146],%c1[146],%c2[146],%c3[146],%c4[146],%c5[146],
               %c6[146],%c7[146],%c8[146],%c9[146],%ca[146],%cb[146]])
      (poly z [%a0[146],%a1[146],%a2[146],%a3[146],%a4[146],%a5[146],
               %a6[146],%a7[146],%a8[146],%a9[146],%aa[146],%ab[146]] *
       poly z [%b0[146],%b1[146],%b2[146],%b3[146],%b4[146],%b5[146],
               %b6[146],%b7[146],%b8[146],%b9[146],%ba[146],%bb[146]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[147],%c1[147],%c2[147],%c3[147],%c4[147],%c5[147],
               %c6[147],%c7[147],%c8[147],%c9[147],%ca[147],%cb[147]])
      (poly z [%a0[147],%a1[147],%a2[147],%a3[147],%a4[147],%a5[147],
               %a6[147],%a7[147],%a8[147],%a9[147],%aa[147],%ab[147]] *
       poly z [%b0[147],%b1[147],%b2[147],%b3[147],%b4[147],%b5[147],
               %b6[147],%b7[147],%b8[147],%b9[147],%ba[147],%bb[147]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[148],%c1[148],%c2[148],%c3[148],%c4[148],%c5[148],
               %c6[148],%c7[148],%c8[148],%c9[148],%ca[148],%cb[148]])
      (poly z [%a0[148],%a1[148],%a2[148],%a3[148],%a4[148],%a5[148],
               %a6[148],%a7[148],%a8[148],%a9[148],%aa[148],%ab[148]] *
       poly z [%b0[148],%b1[148],%b2[148],%b3[148],%b4[148],%b5[148],
               %b6[148],%b7[148],%b8[148],%b9[148],%ba[148],%bb[148]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[149],%c1[149],%c2[149],%c3[149],%c4[149],%c5[149],
               %c6[149],%c7[149],%c8[149],%c9[149],%ca[149],%cb[149]])
      (poly z [%a0[149],%a1[149],%a2[149],%a3[149],%a4[149],%a5[149],
               %a6[149],%a7[149],%a8[149],%a9[149],%aa[149],%ab[149]] *
       poly z [%b0[149],%b1[149],%b2[149],%b3[149],%b4[149],%b5[149],
               %b6[149],%b7[149],%b8[149],%b9[149],%ba[149],%bb[149]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[150],%c1[150],%c2[150],%c3[150],%c4[150],%c5[150],
               %c6[150],%c7[150],%c8[150],%c9[150],%ca[150],%cb[150]])
      (poly z [%a0[150],%a1[150],%a2[150],%a3[150],%a4[150],%a5[150],
               %a6[150],%a7[150],%a8[150],%a9[150],%aa[150],%ab[150]] *
       poly z [%b0[150],%b1[150],%b2[150],%b3[150],%b4[150],%b5[150],
               %b6[150],%b7[150],%b8[150],%b9[150],%ba[150],%bb[150]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[151],%c1[151],%c2[151],%c3[151],%c4[151],%c5[151],
               %c6[151],%c7[151],%c8[151],%c9[151],%ca[151],%cb[151]])
      (poly z [%a0[151],%a1[151],%a2[151],%a3[151],%a4[151],%a5[151],
               %a6[151],%a7[151],%a8[151],%a9[151],%aa[151],%ab[151]] *
       poly z [%b0[151],%b1[151],%b2[151],%b3[151],%b4[151],%b5[151],
               %b6[151],%b7[151],%b8[151],%b9[151],%ba[151],%bb[151]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[152],%c1[152],%c2[152],%c3[152],%c4[152],%c5[152],
               %c6[152],%c7[152],%c8[152],%c9[152],%ca[152],%cb[152]])
      (poly z [%a0[152],%a1[152],%a2[152],%a3[152],%a4[152],%a5[152],
               %a6[152],%a7[152],%a8[152],%a9[152],%aa[152],%ab[152]] *
       poly z [%b0[152],%b1[152],%b2[152],%b3[152],%b4[152],%b5[152],
               %b6[152],%b7[152],%b8[152],%b9[152],%ba[152],%bb[152]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[153],%c1[153],%c2[153],%c3[153],%c4[153],%c5[153],
               %c6[153],%c7[153],%c8[153],%c9[153],%ca[153],%cb[153]])
      (poly z [%a0[153],%a1[153],%a2[153],%a3[153],%a4[153],%a5[153],
               %a6[153],%a7[153],%a8[153],%a9[153],%aa[153],%ab[153]] *
       poly z [%b0[153],%b1[153],%b2[153],%b3[153],%b4[153],%b5[153],
               %b6[153],%b7[153],%b8[153],%b9[153],%ba[153],%bb[153]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[154],%c1[154],%c2[154],%c3[154],%c4[154],%c5[154],
               %c6[154],%c7[154],%c8[154],%c9[154],%ca[154],%cb[154]])
      (poly z [%a0[154],%a1[154],%a2[154],%a3[154],%a4[154],%a5[154],
               %a6[154],%a7[154],%a8[154],%a9[154],%aa[154],%ab[154]] *
       poly z [%b0[154],%b1[154],%b2[154],%b3[154],%b4[154],%b5[154],
               %b6[154],%b7[154],%b8[154],%b9[154],%ba[154],%bb[154]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[155],%c1[155],%c2[155],%c3[155],%c4[155],%c5[155],
               %c6[155],%c7[155],%c8[155],%c9[155],%ca[155],%cb[155]])
      (poly z [%a0[155],%a1[155],%a2[155],%a3[155],%a4[155],%a5[155],
               %a6[155],%a7[155],%a8[155],%a9[155],%aa[155],%ab[155]] *
       poly z [%b0[155],%b1[155],%b2[155],%b3[155],%b4[155],%b5[155],
               %b6[155],%b7[155],%b8[155],%b9[155],%ba[155],%bb[155]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[156],%c1[156],%c2[156],%c3[156],%c4[156],%c5[156],
               %c6[156],%c7[156],%c8[156],%c9[156],%ca[156],%cb[156]])
      (poly z [%a0[156],%a1[156],%a2[156],%a3[156],%a4[156],%a5[156],
               %a6[156],%a7[156],%a8[156],%a9[156],%aa[156],%ab[156]] *
       poly z [%b0[156],%b1[156],%b2[156],%b3[156],%b4[156],%b5[156],
               %b6[156],%b7[156],%b8[156],%b9[156],%ba[156],%bb[156]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[157],%c1[157],%c2[157],%c3[157],%c4[157],%c5[157],
               %c6[157],%c7[157],%c8[157],%c9[157],%ca[157],%cb[157]])
      (poly z [%a0[157],%a1[157],%a2[157],%a3[157],%a4[157],%a5[157],
               %a6[157],%a7[157],%a8[157],%a9[157],%aa[157],%ab[157]] *
       poly z [%b0[157],%b1[157],%b2[157],%b3[157],%b4[157],%b5[157],
               %b6[157],%b7[157],%b8[157],%b9[157],%ba[157],%bb[157]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[158],%c1[158],%c2[158],%c3[158],%c4[158],%c5[158],
               %c6[158],%c7[158],%c8[158],%c9[158],%ca[158],%cb[158]])
      (poly z [%a0[158],%a1[158],%a2[158],%a3[158],%a4[158],%a5[158],
               %a6[158],%a7[158],%a8[158],%a9[158],%aa[158],%ab[158]] *
       poly z [%b0[158],%b1[158],%b2[158],%b3[158],%b4[158],%b5[158],
               %b6[158],%b7[158],%b8[158],%b9[158],%ba[158],%bb[158]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[159],%c1[159],%c2[159],%c3[159],%c4[159],%c5[159],
               %c6[159],%c7[159],%c8[159],%c9[159],%ca[159],%cb[159]])
      (poly z [%a0[159],%a1[159],%a2[159],%a3[159],%a4[159],%a5[159],
               %a6[159],%a7[159],%a8[159],%a9[159],%aa[159],%ab[159]] *
       poly z [%b0[159],%b1[159],%b2[159],%b3[159],%b4[159],%b5[159],
               %b6[159],%b7[159],%b8[159],%b9[159],%ba[159],%bb[159]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[160],%c1[160],%c2[160],%c3[160],%c4[160],%c5[160],
               %c6[160],%c7[160],%c8[160],%c9[160],%ca[160],%cb[160]])
      (poly z [%a0[160],%a1[160],%a2[160],%a3[160],%a4[160],%a5[160],
               %a6[160],%a7[160],%a8[160],%a9[160],%aa[160],%ab[160]] *
       poly z [%b0[160],%b1[160],%b2[160],%b3[160],%b4[160],%b5[160],
               %b6[160],%b7[160],%b8[160],%b9[160],%ba[160],%bb[160]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[161],%c1[161],%c2[161],%c3[161],%c4[161],%c5[161],
               %c6[161],%c7[161],%c8[161],%c9[161],%ca[161],%cb[161]])
      (poly z [%a0[161],%a1[161],%a2[161],%a3[161],%a4[161],%a5[161],
               %a6[161],%a7[161],%a8[161],%a9[161],%aa[161],%ab[161]] *
       poly z [%b0[161],%b1[161],%b2[161],%b3[161],%b4[161],%b5[161],
               %b6[161],%b7[161],%b8[161],%b9[161],%ba[161],%bb[161]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[162],%c1[162],%c2[162],%c3[162],%c4[162],%c5[162],
               %c6[162],%c7[162],%c8[162],%c9[162],%ca[162],%cb[162]])
      (poly z [%a0[162],%a1[162],%a2[162],%a3[162],%a4[162],%a5[162],
               %a6[162],%a7[162],%a8[162],%a9[162],%aa[162],%ab[162]] *
       poly z [%b0[162],%b1[162],%b2[162],%b3[162],%b4[162],%b5[162],
               %b6[162],%b7[162],%b8[162],%b9[162],%ba[162],%bb[162]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[163],%c1[163],%c2[163],%c3[163],%c4[163],%c5[163],
               %c6[163],%c7[163],%c8[163],%c9[163],%ca[163],%cb[163]])
      (poly z [%a0[163],%a1[163],%a2[163],%a3[163],%a4[163],%a5[163],
               %a6[163],%a7[163],%a8[163],%a9[163],%aa[163],%ab[163]] *
       poly z [%b0[163],%b1[163],%b2[163],%b3[163],%b4[163],%b5[163],
               %b6[163],%b7[163],%b8[163],%b9[163],%ba[163],%bb[163]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[164],%c1[164],%c2[164],%c3[164],%c4[164],%c5[164],
               %c6[164],%c7[164],%c8[164],%c9[164],%ca[164],%cb[164]])
      (poly z [%a0[164],%a1[164],%a2[164],%a3[164],%a4[164],%a5[164],
               %a6[164],%a7[164],%a8[164],%a9[164],%aa[164],%ab[164]] *
       poly z [%b0[164],%b1[164],%b2[164],%b3[164],%b4[164],%b5[164],
               %b6[164],%b7[164],%b8[164],%b9[164],%ba[164],%bb[164]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[165],%c1[165],%c2[165],%c3[165],%c4[165],%c5[165],
               %c6[165],%c7[165],%c8[165],%c9[165],%ca[165],%cb[165]])
      (poly z [%a0[165],%a1[165],%a2[165],%a3[165],%a4[165],%a5[165],
               %a6[165],%a7[165],%a8[165],%a9[165],%aa[165],%ab[165]] *
       poly z [%b0[165],%b1[165],%b2[165],%b3[165],%b4[165],%b5[165],
               %b6[165],%b7[165],%b8[165],%b9[165],%ba[165],%bb[165]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[166],%c1[166],%c2[166],%c3[166],%c4[166],%c5[166],
               %c6[166],%c7[166],%c8[166],%c9[166],%ca[166],%cb[166]])
      (poly z [%a0[166],%a1[166],%a2[166],%a3[166],%a4[166],%a5[166],
               %a6[166],%a7[166],%a8[166],%a9[166],%aa[166],%ab[166]] *
       poly z [%b0[166],%b1[166],%b2[166],%b3[166],%b4[166],%b5[166],
               %b6[166],%b7[166],%b8[166],%b9[166],%ba[166],%bb[166]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[167],%c1[167],%c2[167],%c3[167],%c4[167],%c5[167],
               %c6[167],%c7[167],%c8[167],%c9[167],%ca[167],%cb[167]])
      (poly z [%a0[167],%a1[167],%a2[167],%a3[167],%a4[167],%a5[167],
               %a6[167],%a7[167],%a8[167],%a9[167],%aa[167],%ab[167]] *
       poly z [%b0[167],%b1[167],%b2[167],%b3[167],%b4[167],%b5[167],
               %b6[167],%b7[167],%b8[167],%b9[167],%ba[167],%bb[167]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[168],%c1[168],%c2[168],%c3[168],%c4[168],%c5[168],
               %c6[168],%c7[168],%c8[168],%c9[168],%ca[168],%cb[168]])
      (poly z [%a0[168],%a1[168],%a2[168],%a3[168],%a4[168],%a5[168],
               %a6[168],%a7[168],%a8[168],%a9[168],%aa[168],%ab[168]] *
       poly z [%b0[168],%b1[168],%b2[168],%b3[168],%b4[168],%b5[168],
               %b6[168],%b7[168],%b8[168],%b9[168],%ba[168],%bb[168]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[169],%c1[169],%c2[169],%c3[169],%c4[169],%c5[169],
               %c6[169],%c7[169],%c8[169],%c9[169],%ca[169],%cb[169]])
      (poly z [%a0[169],%a1[169],%a2[169],%a3[169],%a4[169],%a5[169],
               %a6[169],%a7[169],%a8[169],%a9[169],%aa[169],%ab[169]] *
       poly z [%b0[169],%b1[169],%b2[169],%b3[169],%b4[169],%b5[169],
               %b6[169],%b7[169],%b8[169],%b9[169],%ba[169],%bb[169]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[170],%c1[170],%c2[170],%c3[170],%c4[170],%c5[170],
               %c6[170],%c7[170],%c8[170],%c9[170],%ca[170],%cb[170]])
      (poly z [%a0[170],%a1[170],%a2[170],%a3[170],%a4[170],%a5[170],
               %a6[170],%a7[170],%a8[170],%a9[170],%aa[170],%ab[170]] *
       poly z [%b0[170],%b1[170],%b2[170],%b3[170],%b4[170],%b5[170],
               %b6[170],%b7[170],%b8[170],%b9[170],%ba[170],%bb[170]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[171],%c1[171],%c2[171],%c3[171],%c4[171],%c5[171],
               %c6[171],%c7[171],%c8[171],%c9[171],%ca[171],%cb[171]])
      (poly z [%a0[171],%a1[171],%a2[171],%a3[171],%a4[171],%a5[171],
               %a6[171],%a7[171],%a8[171],%a9[171],%aa[171],%ab[171]] *
       poly z [%b0[171],%b1[171],%b2[171],%b3[171],%b4[171],%b5[171],
               %b6[171],%b7[171],%b8[171],%b9[171],%ba[171],%bb[171]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[172],%c1[172],%c2[172],%c3[172],%c4[172],%c5[172],
               %c6[172],%c7[172],%c8[172],%c9[172],%ca[172],%cb[172]])
      (poly z [%a0[172],%a1[172],%a2[172],%a3[172],%a4[172],%a5[172],
               %a6[172],%a7[172],%a8[172],%a9[172],%aa[172],%ab[172]] *
       poly z [%b0[172],%b1[172],%b2[172],%b3[172],%b4[172],%b5[172],
               %b6[172],%b7[172],%b8[172],%b9[172],%ba[172],%bb[172]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[173],%c1[173],%c2[173],%c3[173],%c4[173],%c5[173],
               %c6[173],%c7[173],%c8[173],%c9[173],%ca[173],%cb[173]])
      (poly z [%a0[173],%a1[173],%a2[173],%a3[173],%a4[173],%a5[173],
               %a6[173],%a7[173],%a8[173],%a9[173],%aa[173],%ab[173]] *
       poly z [%b0[173],%b1[173],%b2[173],%b3[173],%b4[173],%b5[173],
               %b6[173],%b7[173],%b8[173],%b9[173],%ba[173],%bb[173]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[174],%c1[174],%c2[174],%c3[174],%c4[174],%c5[174],
               %c6[174],%c7[174],%c8[174],%c9[174],%ca[174],%cb[174]])
      (poly z [%a0[174],%a1[174],%a2[174],%a3[174],%a4[174],%a5[174],
               %a6[174],%a7[174],%a8[174],%a9[174],%aa[174],%ab[174]] *
       poly z [%b0[174],%b1[174],%b2[174],%b3[174],%b4[174],%b5[174],
               %b6[174],%b7[174],%b8[174],%b9[174],%ba[174],%bb[174]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[175],%c1[175],%c2[175],%c3[175],%c4[175],%c5[175],
               %c6[175],%c7[175],%c8[175],%c9[175],%ca[175],%cb[175]])
      (poly z [%a0[175],%a1[175],%a2[175],%a3[175],%a4[175],%a5[175],
               %a6[175],%a7[175],%a8[175],%a9[175],%aa[175],%ab[175]] *
       poly z [%b0[175],%b1[175],%b2[175],%b3[175],%b4[175],%b5[175],
               %b6[175],%b7[175],%b8[175],%b9[175],%ba[175],%bb[175]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[176],%c1[176],%c2[176],%c3[176],%c4[176],%c5[176],
               %c6[176],%c7[176],%c8[176],%c9[176],%ca[176],%cb[176]])
      (poly z [%a0[176],%a1[176],%a2[176],%a3[176],%a4[176],%a5[176],
               %a6[176],%a7[176],%a8[176],%a9[176],%aa[176],%ab[176]] *
       poly z [%b0[176],%b1[176],%b2[176],%b3[176],%b4[176],%b5[176],
               %b6[176],%b7[176],%b8[176],%b9[176],%ba[176],%bb[176]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[177],%c1[177],%c2[177],%c3[177],%c4[177],%c5[177],
               %c6[177],%c7[177],%c8[177],%c9[177],%ca[177],%cb[177]])
      (poly z [%a0[177],%a1[177],%a2[177],%a3[177],%a4[177],%a5[177],
               %a6[177],%a7[177],%a8[177],%a9[177],%aa[177],%ab[177]] *
       poly z [%b0[177],%b1[177],%b2[177],%b3[177],%b4[177],%b5[177],
               %b6[177],%b7[177],%b8[177],%b9[177],%ba[177],%bb[177]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[178],%c1[178],%c2[178],%c3[178],%c4[178],%c5[178],
               %c6[178],%c7[178],%c8[178],%c9[178],%ca[178],%cb[178]])
      (poly z [%a0[178],%a1[178],%a2[178],%a3[178],%a4[178],%a5[178],
               %a6[178],%a7[178],%a8[178],%a9[178],%aa[178],%ab[178]] *
       poly z [%b0[178],%b1[178],%b2[178],%b3[178],%b4[178],%b5[178],
               %b6[178],%b7[178],%b8[178],%b9[178],%ba[178],%bb[178]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[179],%c1[179],%c2[179],%c3[179],%c4[179],%c5[179],
               %c6[179],%c7[179],%c8[179],%c9[179],%ca[179],%cb[179]])
      (poly z [%a0[179],%a1[179],%a2[179],%a3[179],%a4[179],%a5[179],
               %a6[179],%a7[179],%a8[179],%a9[179],%aa[179],%ab[179]] *
       poly z [%b0[179],%b1[179],%b2[179],%b3[179],%b4[179],%b5[179],
               %b6[179],%b7[179],%b8[179],%b9[179],%ba[179],%bb[179]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[180],%c1[180],%c2[180],%c3[180],%c4[180],%c5[180],
               %c6[180],%c7[180],%c8[180],%c9[180],%ca[180],%cb[180]])
      (poly z [%a0[180],%a1[180],%a2[180],%a3[180],%a4[180],%a5[180],
               %a6[180],%a7[180],%a8[180],%a9[180],%aa[180],%ab[180]] *
       poly z [%b0[180],%b1[180],%b2[180],%b3[180],%b4[180],%b5[180],
               %b6[180],%b7[180],%b8[180],%b9[180],%ba[180],%bb[180]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[181],%c1[181],%c2[181],%c3[181],%c4[181],%c5[181],
               %c6[181],%c7[181],%c8[181],%c9[181],%ca[181],%cb[181]])
      (poly z [%a0[181],%a1[181],%a2[181],%a3[181],%a4[181],%a5[181],
               %a6[181],%a7[181],%a8[181],%a9[181],%aa[181],%ab[181]] *
       poly z [%b0[181],%b1[181],%b2[181],%b3[181],%b4[181],%b5[181],
               %b6[181],%b7[181],%b8[181],%b9[181],%ba[181],%bb[181]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[182],%c1[182],%c2[182],%c3[182],%c4[182],%c5[182],
               %c6[182],%c7[182],%c8[182],%c9[182],%ca[182],%cb[182]])
      (poly z [%a0[182],%a1[182],%a2[182],%a3[182],%a4[182],%a5[182],
               %a6[182],%a7[182],%a8[182],%a9[182],%aa[182],%ab[182]] *
       poly z [%b0[182],%b1[182],%b2[182],%b3[182],%b4[182],%b5[182],
               %b6[182],%b7[182],%b8[182],%b9[182],%ba[182],%bb[182]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[183],%c1[183],%c2[183],%c3[183],%c4[183],%c5[183],
               %c6[183],%c7[183],%c8[183],%c9[183],%ca[183],%cb[183]])
      (poly z [%a0[183],%a1[183],%a2[183],%a3[183],%a4[183],%a5[183],
               %a6[183],%a7[183],%a8[183],%a9[183],%aa[183],%ab[183]] *
       poly z [%b0[183],%b1[183],%b2[183],%b3[183],%b4[183],%b5[183],
               %b6[183],%b7[183],%b8[183],%b9[183],%ba[183],%bb[183]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[184],%c1[184],%c2[184],%c3[184],%c4[184],%c5[184],
               %c6[184],%c7[184],%c8[184],%c9[184],%ca[184],%cb[184]])
      (poly z [%a0[184],%a1[184],%a2[184],%a3[184],%a4[184],%a5[184],
               %a6[184],%a7[184],%a8[184],%a9[184],%aa[184],%ab[184]] *
       poly z [%b0[184],%b1[184],%b2[184],%b3[184],%b4[184],%b5[184],
               %b6[184],%b7[184],%b8[184],%b9[184],%ba[184],%bb[184]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[185],%c1[185],%c2[185],%c3[185],%c4[185],%c5[185],
               %c6[185],%c7[185],%c8[185],%c9[185],%ca[185],%cb[185]])
      (poly z [%a0[185],%a1[185],%a2[185],%a3[185],%a4[185],%a5[185],
               %a6[185],%a7[185],%a8[185],%a9[185],%aa[185],%ab[185]] *
       poly z [%b0[185],%b1[185],%b2[185],%b3[185],%b4[185],%b5[185],
               %b6[185],%b7[185],%b8[185],%b9[185],%ba[185],%bb[185]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[186],%c1[186],%c2[186],%c3[186],%c4[186],%c5[186],
               %c6[186],%c7[186],%c8[186],%c9[186],%ca[186],%cb[186]])
      (poly z [%a0[186],%a1[186],%a2[186],%a3[186],%a4[186],%a5[186],
               %a6[186],%a7[186],%a8[186],%a9[186],%aa[186],%ab[186]] *
       poly z [%b0[186],%b1[186],%b2[186],%b3[186],%b4[186],%b5[186],
               %b6[186],%b7[186],%b8[186],%b9[186],%ba[186],%bb[186]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[187],%c1[187],%c2[187],%c3[187],%c4[187],%c5[187],
               %c6[187],%c7[187],%c8[187],%c9[187],%ca[187],%cb[187]])
      (poly z [%a0[187],%a1[187],%a2[187],%a3[187],%a4[187],%a5[187],
               %a6[187],%a7[187],%a8[187],%a9[187],%aa[187],%ab[187]] *
       poly z [%b0[187],%b1[187],%b2[187],%b3[187],%b4[187],%b5[187],
               %b6[187],%b7[187],%b8[187],%b9[187],%ba[187],%bb[187]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[188],%c1[188],%c2[188],%c3[188],%c4[188],%c5[188],
               %c6[188],%c7[188],%c8[188],%c9[188],%ca[188],%cb[188]])
      (poly z [%a0[188],%a1[188],%a2[188],%a3[188],%a4[188],%a5[188],
               %a6[188],%a7[188],%a8[188],%a9[188],%aa[188],%ab[188]] *
       poly z [%b0[188],%b1[188],%b2[188],%b3[188],%b4[188],%b5[188],
               %b6[188],%b7[188],%b8[188],%b9[188],%ba[188],%bb[188]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[189],%c1[189],%c2[189],%c3[189],%c4[189],%c5[189],
               %c6[189],%c7[189],%c8[189],%c9[189],%ca[189],%cb[189]])
      (poly z [%a0[189],%a1[189],%a2[189],%a3[189],%a4[189],%a5[189],
               %a6[189],%a7[189],%a8[189],%a9[189],%aa[189],%ab[189]] *
       poly z [%b0[189],%b1[189],%b2[189],%b3[189],%b4[189],%b5[189],
               %b6[189],%b7[189],%b8[189],%b9[189],%ba[189],%bb[189]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[190],%c1[190],%c2[190],%c3[190],%c4[190],%c5[190],
               %c6[190],%c7[190],%c8[190],%c9[190],%ca[190],%cb[190]])
      (poly z [%a0[190],%a1[190],%a2[190],%a3[190],%a4[190],%a5[190],
               %a6[190],%a7[190],%a8[190],%a9[190],%aa[190],%ab[190]] *
       poly z [%b0[190],%b1[190],%b2[190],%b3[190],%b4[190],%b5[190],
               %b6[190],%b7[190],%b8[190],%b9[190],%ba[190],%bb[190]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[191],%c1[191],%c2[191],%c3[191],%c4[191],%c5[191],
               %c6[191],%c7[191],%c8[191],%c9[191],%ca[191],%cb[191]])
      (poly z [%a0[191],%a1[191],%a2[191],%a3[191],%a4[191],%a5[191],
               %a6[191],%a7[191],%a8[191],%a9[191],%aa[191],%ab[191]] *
       poly z [%b0[191],%b1[191],%b2[191],%b3[191],%b4[191],%b5[191],
               %b6[191],%b7[191],%b8[191],%b9[191],%ba[191],%bb[191]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[192],%c1[192],%c2[192],%c3[192],%c4[192],%c5[192],
               %c6[192],%c7[192],%c8[192],%c9[192],%ca[192],%cb[192]])
      (poly z [%a0[192],%a1[192],%a2[192],%a3[192],%a4[192],%a5[192],
               %a6[192],%a7[192],%a8[192],%a9[192],%aa[192],%ab[192]] *
       poly z [%b0[192],%b1[192],%b2[192],%b3[192],%b4[192],%b5[192],
               %b6[192],%b7[192],%b8[192],%b9[192],%ba[192],%bb[192]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[193],%c1[193],%c2[193],%c3[193],%c4[193],%c5[193],
               %c6[193],%c7[193],%c8[193],%c9[193],%ca[193],%cb[193]])
      (poly z [%a0[193],%a1[193],%a2[193],%a3[193],%a4[193],%a5[193],
               %a6[193],%a7[193],%a8[193],%a9[193],%aa[193],%ab[193]] *
       poly z [%b0[193],%b1[193],%b2[193],%b3[193],%b4[193],%b5[193],
               %b6[193],%b7[193],%b8[193],%b9[193],%ba[193],%bb[193]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[194],%c1[194],%c2[194],%c3[194],%c4[194],%c5[194],
               %c6[194],%c7[194],%c8[194],%c9[194],%ca[194],%cb[194]])
      (poly z [%a0[194],%a1[194],%a2[194],%a3[194],%a4[194],%a5[194],
               %a6[194],%a7[194],%a8[194],%a9[194],%aa[194],%ab[194]] *
       poly z [%b0[194],%b1[194],%b2[194],%b3[194],%b4[194],%b5[194],
               %b6[194],%b7[194],%b8[194],%b9[194],%ba[194],%bb[194]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[195],%c1[195],%c2[195],%c3[195],%c4[195],%c5[195],
               %c6[195],%c7[195],%c8[195],%c9[195],%ca[195],%cb[195]])
      (poly z [%a0[195],%a1[195],%a2[195],%a3[195],%a4[195],%a5[195],
               %a6[195],%a7[195],%a8[195],%a9[195],%aa[195],%ab[195]] *
       poly z [%b0[195],%b1[195],%b2[195],%b3[195],%b4[195],%b5[195],
               %b6[195],%b7[195],%b8[195],%b9[195],%ba[195],%bb[195]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[196],%c1[196],%c2[196],%c3[196],%c4[196],%c5[196],
               %c6[196],%c7[196],%c8[196],%c9[196],%ca[196],%cb[196]])
      (poly z [%a0[196],%a1[196],%a2[196],%a3[196],%a4[196],%a5[196],
               %a6[196],%a7[196],%a8[196],%a9[196],%aa[196],%ab[196]] *
       poly z [%b0[196],%b1[196],%b2[196],%b3[196],%b4[196],%b5[196],
               %b6[196],%b7[196],%b8[196],%b9[196],%ba[196],%bb[196]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[197],%c1[197],%c2[197],%c3[197],%c4[197],%c5[197],
               %c6[197],%c7[197],%c8[197],%c9[197],%ca[197],%cb[197]])
      (poly z [%a0[197],%a1[197],%a2[197],%a3[197],%a4[197],%a5[197],
               %a6[197],%a7[197],%a8[197],%a9[197],%aa[197],%ab[197]] *
       poly z [%b0[197],%b1[197],%b2[197],%b3[197],%b4[197],%b5[197],
               %b6[197],%b7[197],%b8[197],%b9[197],%ba[197],%bb[197]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[198],%c1[198],%c2[198],%c3[198],%c4[198],%c5[198],
               %c6[198],%c7[198],%c8[198],%c9[198],%ca[198],%cb[198]])
      (poly z [%a0[198],%a1[198],%a2[198],%a3[198],%a4[198],%a5[198],
               %a6[198],%a7[198],%a8[198],%a9[198],%aa[198],%ab[198]] *
       poly z [%b0[198],%b1[198],%b2[198],%b3[198],%b4[198],%b5[198],
               %b6[198],%b7[198],%b8[198],%b9[198],%ba[198],%bb[198]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[199],%c1[199],%c2[199],%c3[199],%c4[199],%c5[199],
               %c6[199],%c7[199],%c8[199],%c9[199],%ca[199],%cb[199]])
      (poly z [%a0[199],%a1[199],%a2[199],%a3[199],%a4[199],%a5[199],
               %a6[199],%a7[199],%a8[199],%a9[199],%aa[199],%ab[199]] *
       poly z [%b0[199],%b1[199],%b2[199],%b3[199],%b4[199],%b5[199],
               %b6[199],%b7[199],%b8[199],%b9[199],%ba[199],%bb[199]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[200],%c1[200],%c2[200],%c3[200],%c4[200],%c5[200],
               %c6[200],%c7[200],%c8[200],%c9[200],%ca[200],%cb[200]])
      (poly z [%a0[200],%a1[200],%a2[200],%a3[200],%a4[200],%a5[200],
               %a6[200],%a7[200],%a8[200],%a9[200],%aa[200],%ab[200]] *
       poly z [%b0[200],%b1[200],%b2[200],%b3[200],%b4[200],%b5[200],
               %b6[200],%b7[200],%b8[200],%b9[200],%ba[200],%bb[200]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[201],%c1[201],%c2[201],%c3[201],%c4[201],%c5[201],
               %c6[201],%c7[201],%c8[201],%c9[201],%ca[201],%cb[201]])
      (poly z [%a0[201],%a1[201],%a2[201],%a3[201],%a4[201],%a5[201],
               %a6[201],%a7[201],%a8[201],%a9[201],%aa[201],%ab[201]] *
       poly z [%b0[201],%b1[201],%b2[201],%b3[201],%b4[201],%b5[201],
               %b6[201],%b7[201],%b8[201],%b9[201],%ba[201],%bb[201]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[202],%c1[202],%c2[202],%c3[202],%c4[202],%c5[202],
               %c6[202],%c7[202],%c8[202],%c9[202],%ca[202],%cb[202]])
      (poly z [%a0[202],%a1[202],%a2[202],%a3[202],%a4[202],%a5[202],
               %a6[202],%a7[202],%a8[202],%a9[202],%aa[202],%ab[202]] *
       poly z [%b0[202],%b1[202],%b2[202],%b3[202],%b4[202],%b5[202],
               %b6[202],%b7[202],%b8[202],%b9[202],%ba[202],%bb[202]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[203],%c1[203],%c2[203],%c3[203],%c4[203],%c5[203],
               %c6[203],%c7[203],%c8[203],%c9[203],%ca[203],%cb[203]])
      (poly z [%a0[203],%a1[203],%a2[203],%a3[203],%a4[203],%a5[203],
               %a6[203],%a7[203],%a8[203],%a9[203],%aa[203],%ab[203]] *
       poly z [%b0[203],%b1[203],%b2[203],%b3[203],%b4[203],%b5[203],
               %b6[203],%b7[203],%b8[203],%b9[203],%ba[203],%bb[203]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[204],%c1[204],%c2[204],%c3[204],%c4[204],%c5[204],
               %c6[204],%c7[204],%c8[204],%c9[204],%ca[204],%cb[204]])
      (poly z [%a0[204],%a1[204],%a2[204],%a3[204],%a4[204],%a5[204],
               %a6[204],%a7[204],%a8[204],%a9[204],%aa[204],%ab[204]] *
       poly z [%b0[204],%b1[204],%b2[204],%b3[204],%b4[204],%b5[204],
               %b6[204],%b7[204],%b8[204],%b9[204],%ba[204],%bb[204]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[205],%c1[205],%c2[205],%c3[205],%c4[205],%c5[205],
               %c6[205],%c7[205],%c8[205],%c9[205],%ca[205],%cb[205]])
      (poly z [%a0[205],%a1[205],%a2[205],%a3[205],%a4[205],%a5[205],
               %a6[205],%a7[205],%a8[205],%a9[205],%aa[205],%ab[205]] *
       poly z [%b0[205],%b1[205],%b2[205],%b3[205],%b4[205],%b5[205],
               %b6[205],%b7[205],%b8[205],%b9[205],%ba[205],%bb[205]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[206],%c1[206],%c2[206],%c3[206],%c4[206],%c5[206],
               %c6[206],%c7[206],%c8[206],%c9[206],%ca[206],%cb[206]])
      (poly z [%a0[206],%a1[206],%a2[206],%a3[206],%a4[206],%a5[206],
               %a6[206],%a7[206],%a8[206],%a9[206],%aa[206],%ab[206]] *
       poly z [%b0[206],%b1[206],%b2[206],%b3[206],%b4[206],%b5[206],
               %b6[206],%b7[206],%b8[206],%b9[206],%ba[206],%bb[206]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[207],%c1[207],%c2[207],%c3[207],%c4[207],%c5[207],
               %c6[207],%c7[207],%c8[207],%c9[207],%ca[207],%cb[207]])
      (poly z [%a0[207],%a1[207],%a2[207],%a3[207],%a4[207],%a5[207],
               %a6[207],%a7[207],%a8[207],%a9[207],%aa[207],%ab[207]] *
       poly z [%b0[207],%b1[207],%b2[207],%b3[207],%b4[207],%b5[207],
               %b6[207],%b7[207],%b8[207],%b9[207],%ba[207],%bb[207]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[208],%c1[208],%c2[208],%c3[208],%c4[208],%c5[208],
               %c6[208],%c7[208],%c8[208],%c9[208],%ca[208],%cb[208]])
      (poly z [%a0[208],%a1[208],%a2[208],%a3[208],%a4[208],%a5[208],
               %a6[208],%a7[208],%a8[208],%a9[208],%aa[208],%ab[208]] *
       poly z [%b0[208],%b1[208],%b2[208],%b3[208],%b4[208],%b5[208],
               %b6[208],%b7[208],%b8[208],%b9[208],%ba[208],%bb[208]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[209],%c1[209],%c2[209],%c3[209],%c4[209],%c5[209],
               %c6[209],%c7[209],%c8[209],%c9[209],%ca[209],%cb[209]])
      (poly z [%a0[209],%a1[209],%a2[209],%a3[209],%a4[209],%a5[209],
               %a6[209],%a7[209],%a8[209],%a9[209],%aa[209],%ab[209]] *
       poly z [%b0[209],%b1[209],%b2[209],%b3[209],%b4[209],%b5[209],
               %b6[209],%b7[209],%b8[209],%b9[209],%ba[209],%bb[209]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[210],%c1[210],%c2[210],%c3[210],%c4[210],%c5[210],
               %c6[210],%c7[210],%c8[210],%c9[210],%ca[210],%cb[210]])
      (poly z [%a0[210],%a1[210],%a2[210],%a3[210],%a4[210],%a5[210],
               %a6[210],%a7[210],%a8[210],%a9[210],%aa[210],%ab[210]] *
       poly z [%b0[210],%b1[210],%b2[210],%b3[210],%b4[210],%b5[210],
               %b6[210],%b7[210],%b8[210],%b9[210],%ba[210],%bb[210]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[211],%c1[211],%c2[211],%c3[211],%c4[211],%c5[211],
               %c6[211],%c7[211],%c8[211],%c9[211],%ca[211],%cb[211]])
      (poly z [%a0[211],%a1[211],%a2[211],%a3[211],%a4[211],%a5[211],
               %a6[211],%a7[211],%a8[211],%a9[211],%aa[211],%ab[211]] *
       poly z [%b0[211],%b1[211],%b2[211],%b3[211],%b4[211],%b5[211],
               %b6[211],%b7[211],%b8[211],%b9[211],%ba[211],%bb[211]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[212],%c1[212],%c2[212],%c3[212],%c4[212],%c5[212],
               %c6[212],%c7[212],%c8[212],%c9[212],%ca[212],%cb[212]])
      (poly z [%a0[212],%a1[212],%a2[212],%a3[212],%a4[212],%a5[212],
               %a6[212],%a7[212],%a8[212],%a9[212],%aa[212],%ab[212]] *
       poly z [%b0[212],%b1[212],%b2[212],%b3[212],%b4[212],%b5[212],
               %b6[212],%b7[212],%b8[212],%b9[212],%ba[212],%bb[212]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[213],%c1[213],%c2[213],%c3[213],%c4[213],%c5[213],
               %c6[213],%c7[213],%c8[213],%c9[213],%ca[213],%cb[213]])
      (poly z [%a0[213],%a1[213],%a2[213],%a3[213],%a4[213],%a5[213],
               %a6[213],%a7[213],%a8[213],%a9[213],%aa[213],%ab[213]] *
       poly z [%b0[213],%b1[213],%b2[213],%b3[213],%b4[213],%b5[213],
               %b6[213],%b7[213],%b8[213],%b9[213],%ba[213],%bb[213]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[214],%c1[214],%c2[214],%c3[214],%c4[214],%c5[214],
               %c6[214],%c7[214],%c8[214],%c9[214],%ca[214],%cb[214]])
      (poly z [%a0[214],%a1[214],%a2[214],%a3[214],%a4[214],%a5[214],
               %a6[214],%a7[214],%a8[214],%a9[214],%aa[214],%ab[214]] *
       poly z [%b0[214],%b1[214],%b2[214],%b3[214],%b4[214],%b5[214],
               %b6[214],%b7[214],%b8[214],%b9[214],%ba[214],%bb[214]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[215],%c1[215],%c2[215],%c3[215],%c4[215],%c5[215],
               %c6[215],%c7[215],%c8[215],%c9[215],%ca[215],%cb[215]])
      (poly z [%a0[215],%a1[215],%a2[215],%a3[215],%a4[215],%a5[215],
               %a6[215],%a7[215],%a8[215],%a9[215],%aa[215],%ab[215]] *
       poly z [%b0[215],%b1[215],%b2[215],%b3[215],%b4[215],%b5[215],
               %b6[215],%b7[215],%b8[215],%b9[215],%ba[215],%bb[215]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[216],%c1[216],%c2[216],%c3[216],%c4[216],%c5[216],
               %c6[216],%c7[216],%c8[216],%c9[216],%ca[216],%cb[216]])
      (poly z [%a0[216],%a1[216],%a2[216],%a3[216],%a4[216],%a5[216],
               %a6[216],%a7[216],%a8[216],%a9[216],%aa[216],%ab[216]] *
       poly z [%b0[216],%b1[216],%b2[216],%b3[216],%b4[216],%b5[216],
               %b6[216],%b7[216],%b8[216],%b9[216],%ba[216],%bb[216]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[217],%c1[217],%c2[217],%c3[217],%c4[217],%c5[217],
               %c6[217],%c7[217],%c8[217],%c9[217],%ca[217],%cb[217]])
      (poly z [%a0[217],%a1[217],%a2[217],%a3[217],%a4[217],%a5[217],
               %a6[217],%a7[217],%a8[217],%a9[217],%aa[217],%ab[217]] *
       poly z [%b0[217],%b1[217],%b2[217],%b3[217],%b4[217],%b5[217],
               %b6[217],%b7[217],%b8[217],%b9[217],%ba[217],%bb[217]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[218],%c1[218],%c2[218],%c3[218],%c4[218],%c5[218],
               %c6[218],%c7[218],%c8[218],%c9[218],%ca[218],%cb[218]])
      (poly z [%a0[218],%a1[218],%a2[218],%a3[218],%a4[218],%a5[218],
               %a6[218],%a7[218],%a8[218],%a9[218],%aa[218],%ab[218]] *
       poly z [%b0[218],%b1[218],%b2[218],%b3[218],%b4[218],%b5[218],
               %b6[218],%b7[218],%b8[218],%b9[218],%ba[218],%bb[218]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[219],%c1[219],%c2[219],%c3[219],%c4[219],%c5[219],
               %c6[219],%c7[219],%c8[219],%c9[219],%ca[219],%cb[219]])
      (poly z [%a0[219],%a1[219],%a2[219],%a3[219],%a4[219],%a5[219],
               %a6[219],%a7[219],%a8[219],%a9[219],%aa[219],%ab[219]] *
       poly z [%b0[219],%b1[219],%b2[219],%b3[219],%b4[219],%b5[219],
               %b6[219],%b7[219],%b8[219],%b9[219],%ba[219],%bb[219]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[220],%c1[220],%c2[220],%c3[220],%c4[220],%c5[220],
               %c6[220],%c7[220],%c8[220],%c9[220],%ca[220],%cb[220]])
      (poly z [%a0[220],%a1[220],%a2[220],%a3[220],%a4[220],%a5[220],
               %a6[220],%a7[220],%a8[220],%a9[220],%aa[220],%ab[220]] *
       poly z [%b0[220],%b1[220],%b2[220],%b3[220],%b4[220],%b5[220],
               %b6[220],%b7[220],%b8[220],%b9[220],%ba[220],%bb[220]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[221],%c1[221],%c2[221],%c3[221],%c4[221],%c5[221],
               %c6[221],%c7[221],%c8[221],%c9[221],%ca[221],%cb[221]])
      (poly z [%a0[221],%a1[221],%a2[221],%a3[221],%a4[221],%a5[221],
               %a6[221],%a7[221],%a8[221],%a9[221],%aa[221],%ab[221]] *
       poly z [%b0[221],%b1[221],%b2[221],%b3[221],%b4[221],%b5[221],
               %b6[221],%b7[221],%b8[221],%b9[221],%ba[221],%bb[221]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[222],%c1[222],%c2[222],%c3[222],%c4[222],%c5[222],
               %c6[222],%c7[222],%c8[222],%c9[222],%ca[222],%cb[222]])
      (poly z [%a0[222],%a1[222],%a2[222],%a3[222],%a4[222],%a5[222],
               %a6[222],%a7[222],%a8[222],%a9[222],%aa[222],%ab[222]] *
       poly z [%b0[222],%b1[222],%b2[222],%b3[222],%b4[222],%b5[222],
               %b6[222],%b7[222],%b8[222],%b9[222],%ba[222],%bb[222]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[223],%c1[223],%c2[223],%c3[223],%c4[223],%c5[223],
               %c6[223],%c7[223],%c8[223],%c9[223],%ca[223],%cb[223]])
      (poly z [%a0[223],%a1[223],%a2[223],%a3[223],%a4[223],%a5[223],
               %a6[223],%a7[223],%a8[223],%a9[223],%aa[223],%ab[223]] *
       poly z [%b0[223],%b1[223],%b2[223],%b3[223],%b4[223],%b5[223],
               %b6[223],%b7[223],%b8[223],%b9[223],%ba[223],%bb[223]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[224],%c1[224],%c2[224],%c3[224],%c4[224],%c5[224],
               %c6[224],%c7[224],%c8[224],%c9[224],%ca[224],%cb[224]])
      (poly z [%a0[224],%a1[224],%a2[224],%a3[224],%a4[224],%a5[224],
               %a6[224],%a7[224],%a8[224],%a9[224],%aa[224],%ab[224]] *
       poly z [%b0[224],%b1[224],%b2[224],%b3[224],%b4[224],%b5[224],
               %b6[224],%b7[224],%b8[224],%b9[224],%ba[224],%bb[224]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[225],%c1[225],%c2[225],%c3[225],%c4[225],%c5[225],
               %c6[225],%c7[225],%c8[225],%c9[225],%ca[225],%cb[225]])
      (poly z [%a0[225],%a1[225],%a2[225],%a3[225],%a4[225],%a5[225],
               %a6[225],%a7[225],%a8[225],%a9[225],%aa[225],%ab[225]] *
       poly z [%b0[225],%b1[225],%b2[225],%b3[225],%b4[225],%b5[225],
               %b6[225],%b7[225],%b8[225],%b9[225],%ba[225],%bb[225]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[226],%c1[226],%c2[226],%c3[226],%c4[226],%c5[226],
               %c6[226],%c7[226],%c8[226],%c9[226],%ca[226],%cb[226]])
      (poly z [%a0[226],%a1[226],%a2[226],%a3[226],%a4[226],%a5[226],
               %a6[226],%a7[226],%a8[226],%a9[226],%aa[226],%ab[226]] *
       poly z [%b0[226],%b1[226],%b2[226],%b3[226],%b4[226],%b5[226],
               %b6[226],%b7[226],%b8[226],%b9[226],%ba[226],%bb[226]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[227],%c1[227],%c2[227],%c3[227],%c4[227],%c5[227],
               %c6[227],%c7[227],%c8[227],%c9[227],%ca[227],%cb[227]])
      (poly z [%a0[227],%a1[227],%a2[227],%a3[227],%a4[227],%a5[227],
               %a6[227],%a7[227],%a8[227],%a9[227],%aa[227],%ab[227]] *
       poly z [%b0[227],%b1[227],%b2[227],%b3[227],%b4[227],%b5[227],
               %b6[227],%b7[227],%b8[227],%b9[227],%ba[227],%bb[227]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[228],%c1[228],%c2[228],%c3[228],%c4[228],%c5[228],
               %c6[228],%c7[228],%c8[228],%c9[228],%ca[228],%cb[228]])
      (poly z [%a0[228],%a1[228],%a2[228],%a3[228],%a4[228],%a5[228],
               %a6[228],%a7[228],%a8[228],%a9[228],%aa[228],%ab[228]] *
       poly z [%b0[228],%b1[228],%b2[228],%b3[228],%b4[228],%b5[228],
               %b6[228],%b7[228],%b8[228],%b9[228],%ba[228],%bb[228]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[229],%c1[229],%c2[229],%c3[229],%c4[229],%c5[229],
               %c6[229],%c7[229],%c8[229],%c9[229],%ca[229],%cb[229]])
      (poly z [%a0[229],%a1[229],%a2[229],%a3[229],%a4[229],%a5[229],
               %a6[229],%a7[229],%a8[229],%a9[229],%aa[229],%ab[229]] *
       poly z [%b0[229],%b1[229],%b2[229],%b3[229],%b4[229],%b5[229],
               %b6[229],%b7[229],%b8[229],%b9[229],%ba[229],%bb[229]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[230],%c1[230],%c2[230],%c3[230],%c4[230],%c5[230],
               %c6[230],%c7[230],%c8[230],%c9[230],%ca[230],%cb[230]])
      (poly z [%a0[230],%a1[230],%a2[230],%a3[230],%a4[230],%a5[230],
               %a6[230],%a7[230],%a8[230],%a9[230],%aa[230],%ab[230]] *
       poly z [%b0[230],%b1[230],%b2[230],%b3[230],%b4[230],%b5[230],
               %b6[230],%b7[230],%b8[230],%b9[230],%ba[230],%bb[230]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[231],%c1[231],%c2[231],%c3[231],%c4[231],%c5[231],
               %c6[231],%c7[231],%c8[231],%c9[231],%ca[231],%cb[231]])
      (poly z [%a0[231],%a1[231],%a2[231],%a3[231],%a4[231],%a5[231],
               %a6[231],%a7[231],%a8[231],%a9[231],%aa[231],%ab[231]] *
       poly z [%b0[231],%b1[231],%b2[231],%b3[231],%b4[231],%b5[231],
               %b6[231],%b7[231],%b8[231],%b9[231],%ba[231],%bb[231]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[232],%c1[232],%c2[232],%c3[232],%c4[232],%c5[232],
               %c6[232],%c7[232],%c8[232],%c9[232],%ca[232],%cb[232]])
      (poly z [%a0[232],%a1[232],%a2[232],%a3[232],%a4[232],%a5[232],
               %a6[232],%a7[232],%a8[232],%a9[232],%aa[232],%ab[232]] *
       poly z [%b0[232],%b1[232],%b2[232],%b3[232],%b4[232],%b5[232],
               %b6[232],%b7[232],%b8[232],%b9[232],%ba[232],%bb[232]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[233],%c1[233],%c2[233],%c3[233],%c4[233],%c5[233],
               %c6[233],%c7[233],%c8[233],%c9[233],%ca[233],%cb[233]])
      (poly z [%a0[233],%a1[233],%a2[233],%a3[233],%a4[233],%a5[233],
               %a6[233],%a7[233],%a8[233],%a9[233],%aa[233],%ab[233]] *
       poly z [%b0[233],%b1[233],%b2[233],%b3[233],%b4[233],%b5[233],
               %b6[233],%b7[233],%b8[233],%b9[233],%ba[233],%bb[233]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[234],%c1[234],%c2[234],%c3[234],%c4[234],%c5[234],
               %c6[234],%c7[234],%c8[234],%c9[234],%ca[234],%cb[234]])
      (poly z [%a0[234],%a1[234],%a2[234],%a3[234],%a4[234],%a5[234],
               %a6[234],%a7[234],%a8[234],%a9[234],%aa[234],%ab[234]] *
       poly z [%b0[234],%b1[234],%b2[234],%b3[234],%b4[234],%b5[234],
               %b6[234],%b7[234],%b8[234],%b9[234],%ba[234],%bb[234]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[235],%c1[235],%c2[235],%c3[235],%c4[235],%c5[235],
               %c6[235],%c7[235],%c8[235],%c9[235],%ca[235],%cb[235]])
      (poly z [%a0[235],%a1[235],%a2[235],%a3[235],%a4[235],%a5[235],
               %a6[235],%a7[235],%a8[235],%a9[235],%aa[235],%ab[235]] *
       poly z [%b0[235],%b1[235],%b2[235],%b3[235],%b4[235],%b5[235],
               %b6[235],%b7[235],%b8[235],%b9[235],%ba[235],%bb[235]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[236],%c1[236],%c2[236],%c3[236],%c4[236],%c5[236],
               %c6[236],%c7[236],%c8[236],%c9[236],%ca[236],%cb[236]])
      (poly z [%a0[236],%a1[236],%a2[236],%a3[236],%a4[236],%a5[236],
               %a6[236],%a7[236],%a8[236],%a9[236],%aa[236],%ab[236]] *
       poly z [%b0[236],%b1[236],%b2[236],%b3[236],%b4[236],%b5[236],
               %b6[236],%b7[236],%b8[236],%b9[236],%ba[236],%bb[236]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[237],%c1[237],%c2[237],%c3[237],%c4[237],%c5[237],
               %c6[237],%c7[237],%c8[237],%c9[237],%ca[237],%cb[237]])
      (poly z [%a0[237],%a1[237],%a2[237],%a3[237],%a4[237],%a5[237],
               %a6[237],%a7[237],%a8[237],%a9[237],%aa[237],%ab[237]] *
       poly z [%b0[237],%b1[237],%b2[237],%b3[237],%b4[237],%b5[237],
               %b6[237],%b7[237],%b8[237],%b9[237],%ba[237],%bb[237]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[238],%c1[238],%c2[238],%c3[238],%c4[238],%c5[238],
               %c6[238],%c7[238],%c8[238],%c9[238],%ca[238],%cb[238]])
      (poly z [%a0[238],%a1[238],%a2[238],%a3[238],%a4[238],%a5[238],
               %a6[238],%a7[238],%a8[238],%a9[238],%aa[238],%ab[238]] *
       poly z [%b0[238],%b1[238],%b2[238],%b3[238],%b4[238],%b5[238],
               %b6[238],%b7[238],%b8[238],%b9[238],%ba[238],%bb[238]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[239],%c1[239],%c2[239],%c3[239],%c4[239],%c5[239],
               %c6[239],%c7[239],%c8[239],%c9[239],%ca[239],%cb[239]])
      (poly z [%a0[239],%a1[239],%a2[239],%a3[239],%a4[239],%a5[239],
               %a6[239],%a7[239],%a8[239],%a9[239],%aa[239],%ab[239]] *
       poly z [%b0[239],%b1[239],%b2[239],%b3[239],%b4[239],%b5[239],
               %b6[239],%b7[239],%b8[239],%b9[239],%ba[239],%bb[239]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[240],%c1[240],%c2[240],%c3[240],%c4[240],%c5[240],
               %c6[240],%c7[240],%c8[240],%c9[240],%ca[240],%cb[240]])
      (poly z [%a0[240],%a1[240],%a2[240],%a3[240],%a4[240],%a5[240],
               %a6[240],%a7[240],%a8[240],%a9[240],%aa[240],%ab[240]] *
       poly z [%b0[240],%b1[240],%b2[240],%b3[240],%b4[240],%b5[240],
               %b6[240],%b7[240],%b8[240],%b9[240],%ba[240],%bb[240]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[241],%c1[241],%c2[241],%c3[241],%c4[241],%c5[241],
               %c6[241],%c7[241],%c8[241],%c9[241],%ca[241],%cb[241]])
      (poly z [%a0[241],%a1[241],%a2[241],%a3[241],%a4[241],%a5[241],
               %a6[241],%a7[241],%a8[241],%a9[241],%aa[241],%ab[241]] *
       poly z [%b0[241],%b1[241],%b2[241],%b3[241],%b4[241],%b5[241],
               %b6[241],%b7[241],%b8[241],%b9[241],%ba[241],%bb[241]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[242],%c1[242],%c2[242],%c3[242],%c4[242],%c5[242],
               %c6[242],%c7[242],%c8[242],%c9[242],%ca[242],%cb[242]])
      (poly z [%a0[242],%a1[242],%a2[242],%a3[242],%a4[242],%a5[242],
               %a6[242],%a7[242],%a8[242],%a9[242],%aa[242],%ab[242]] *
       poly z [%b0[242],%b1[242],%b2[242],%b3[242],%b4[242],%b5[242],
               %b6[242],%b7[242],%b8[242],%b9[242],%ba[242],%bb[242]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[243],%c1[243],%c2[243],%c3[243],%c4[243],%c5[243],
               %c6[243],%c7[243],%c8[243],%c9[243],%ca[243],%cb[243]])
      (poly z [%a0[243],%a1[243],%a2[243],%a3[243],%a4[243],%a5[243],
               %a6[243],%a7[243],%a8[243],%a9[243],%aa[243],%ab[243]] *
       poly z [%b0[243],%b1[243],%b2[243],%b3[243],%b4[243],%b5[243],
               %b6[243],%b7[243],%b8[243],%b9[243],%ba[243],%bb[243]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[244],%c1[244],%c2[244],%c3[244],%c4[244],%c5[244],
               %c6[244],%c7[244],%c8[244],%c9[244],%ca[244],%cb[244]])
      (poly z [%a0[244],%a1[244],%a2[244],%a3[244],%a4[244],%a5[244],
               %a6[244],%a7[244],%a8[244],%a9[244],%aa[244],%ab[244]] *
       poly z [%b0[244],%b1[244],%b2[244],%b3[244],%b4[244],%b5[244],
               %b6[244],%b7[244],%b8[244],%b9[244],%ba[244],%bb[244]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[245],%c1[245],%c2[245],%c3[245],%c4[245],%c5[245],
               %c6[245],%c7[245],%c8[245],%c9[245],%ca[245],%cb[245]])
      (poly z [%a0[245],%a1[245],%a2[245],%a3[245],%a4[245],%a5[245],
               %a6[245],%a7[245],%a8[245],%a9[245],%aa[245],%ab[245]] *
       poly z [%b0[245],%b1[245],%b2[245],%b3[245],%b4[245],%b5[245],
               %b6[245],%b7[245],%b8[245],%b9[245],%ba[245],%bb[245]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[246],%c1[246],%c2[246],%c3[246],%c4[246],%c5[246],
               %c6[246],%c7[246],%c8[246],%c9[246],%ca[246],%cb[246]])
      (poly z [%a0[246],%a1[246],%a2[246],%a3[246],%a4[246],%a5[246],
               %a6[246],%a7[246],%a8[246],%a9[246],%aa[246],%ab[246]] *
       poly z [%b0[246],%b1[246],%b2[246],%b3[246],%b4[246],%b5[246],
               %b6[246],%b7[246],%b8[246],%b9[246],%ba[246],%bb[246]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[247],%c1[247],%c2[247],%c3[247],%c4[247],%c5[247],
               %c6[247],%c7[247],%c8[247],%c9[247],%ca[247],%cb[247]])
      (poly z [%a0[247],%a1[247],%a2[247],%a3[247],%a4[247],%a5[247],
               %a6[247],%a7[247],%a8[247],%a9[247],%aa[247],%ab[247]] *
       poly z [%b0[247],%b1[247],%b2[247],%b3[247],%b4[247],%b5[247],
               %b6[247],%b7[247],%b8[247],%b9[247],%ba[247],%bb[247]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[248],%c1[248],%c2[248],%c3[248],%c4[248],%c5[248],
               %c6[248],%c7[248],%c8[248],%c9[248],%ca[248],%cb[248]])
      (poly z [%a0[248],%a1[248],%a2[248],%a3[248],%a4[248],%a5[248],
               %a6[248],%a7[248],%a8[248],%a9[248],%aa[248],%ab[248]] *
       poly z [%b0[248],%b1[248],%b2[248],%b3[248],%b4[248],%b5[248],
               %b6[248],%b7[248],%b8[248],%b9[248],%ba[248],%bb[248]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[249],%c1[249],%c2[249],%c3[249],%c4[249],%c5[249],
               %c6[249],%c7[249],%c8[249],%c9[249],%ca[249],%cb[249]])
      (poly z [%a0[249],%a1[249],%a2[249],%a3[249],%a4[249],%a5[249],
               %a6[249],%a7[249],%a8[249],%a9[249],%aa[249],%ab[249]] *
       poly z [%b0[249],%b1[249],%b2[249],%b3[249],%b4[249],%b5[249],
               %b6[249],%b7[249],%b8[249],%b9[249],%ba[249],%bb[249]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[250],%c1[250],%c2[250],%c3[250],%c4[250],%c5[250],
               %c6[250],%c7[250],%c8[250],%c9[250],%ca[250],%cb[250]])
      (poly z [%a0[250],%a1[250],%a2[250],%a3[250],%a4[250],%a5[250],
               %a6[250],%a7[250],%a8[250],%a9[250],%aa[250],%ab[250]] *
       poly z [%b0[250],%b1[250],%b2[250],%b3[250],%b4[250],%b5[250],
               %b6[250],%b7[250],%b8[250],%b9[250],%ba[250],%bb[250]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[251],%c1[251],%c2[251],%c3[251],%c4[251],%c5[251],
               %c6[251],%c7[251],%c8[251],%c9[251],%ca[251],%cb[251]])
      (poly z [%a0[251],%a1[251],%a2[251],%a3[251],%a4[251],%a5[251],
               %a6[251],%a7[251],%a8[251],%a9[251],%aa[251],%ab[251]] *
       poly z [%b0[251],%b1[251],%b2[251],%b3[251],%b4[251],%b5[251],
               %b6[251],%b7[251],%b8[251],%b9[251],%ba[251],%bb[251]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[252],%c1[252],%c2[252],%c3[252],%c4[252],%c5[252],
               %c6[252],%c7[252],%c8[252],%c9[252],%ca[252],%cb[252]])
      (poly z [%a0[252],%a1[252],%a2[252],%a3[252],%a4[252],%a5[252],
               %a6[252],%a7[252],%a8[252],%a9[252],%aa[252],%ab[252]] *
       poly z [%b0[252],%b1[252],%b2[252],%b3[252],%b4[252],%b5[252],
               %b6[252],%b7[252],%b8[252],%b9[252],%ba[252],%bb[252]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[253],%c1[253],%c2[253],%c3[253],%c4[253],%c5[253],
               %c6[253],%c7[253],%c8[253],%c9[253],%ca[253],%cb[253]])
      (poly z [%a0[253],%a1[253],%a2[253],%a3[253],%a4[253],%a5[253],
               %a6[253],%a7[253],%a8[253],%a9[253],%aa[253],%ab[253]] *
       poly z [%b0[253],%b1[253],%b2[253],%b3[253],%b4[253],%b5[253],
               %b6[253],%b7[253],%b8[253],%b9[253],%ba[253],%bb[253]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[254],%c1[254],%c2[254],%c3[254],%c4[254],%c5[254],
               %c6[254],%c7[254],%c8[254],%c9[254],%ca[254],%cb[254]])
      (poly z [%a0[254],%a1[254],%a2[254],%a3[254],%a4[254],%a5[254],
               %a6[254],%a7[254],%a8[254],%a9[254],%aa[254],%ab[254]] *
       poly z [%b0[254],%b1[254],%b2[254],%b3[254],%b4[254],%b5[254],
               %b6[254],%b7[254],%b8[254],%b9[254],%ba[254],%bb[254]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%c0[255],%c1[255],%c2[255],%c3[255],%c4[255],%c5[255],
               %c6[255],%c7[255],%c8[255],%c9[255],%ca[255],%cb[255]])
      (poly z [%a0[255],%a1[255],%a2[255],%a3[255],%a4[255],%a5[255],
               %a6[255],%a7[255],%a8[255],%a9[255],%aa[255],%ab[255]] *
       poly z [%b0[255],%b1[255],%b2[255],%b3[255],%b4[255],%b5[255],
               %b6[255],%b7[255],%b8[255],%b9[255],%ba[255],%bb[255]])
      [2, z**12+z**3+1]
 &&
true
}

