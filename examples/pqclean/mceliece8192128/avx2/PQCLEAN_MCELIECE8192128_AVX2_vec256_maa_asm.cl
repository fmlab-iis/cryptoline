(*
Run on iruka with command:
$ cv -v -jobs 4 -isafety -slicing -no_carry_constraint PQCLEAN_MCELIECE8192128_AVX2_vec128_mul_asm.cl

Parsing CryptoLine file:                        [OK]            3.8642 seconds
Checking well-formedness:                       [OK]            0.4229 seconds

Procedure main
==============
Transforming to SSA form:                       [OK]            0.2223 seconds
Normalizing specification:                      [OK]            0.2532 seconds
Rewriting assignments:                          [OK]            0.1355 seconds
Verifying program safety:
        ...
        Overall                                 [OK]            862.8281 seconds
Verifying range specification:                  [OK]            0.0207 seconds
Rewriting value-preserved casting:              [OK]            0.0435 seconds
Verifying algebraic specification:              [OK]            57.5851 seconds

Procedure Summary
-----------------
Procedure verification:                         [OK]            921.2240 seconds

Summary
=======
Verification result:                            [OK]            925.5147 seconds
*)

# mceliece8192128
# KEM with m = 13, n = 8192, t = 128.
# Field polynomials:
# - f(z) = z^13 + z^4 + z^3 + z + 1, and
# - F(y) = y^128 + y^7 + y^2 + y + 1.

proc main (bit z,
           bit[256] %c00, bit[256] %c01, bit[256] %c02, bit[256] %c03,
           bit[256] %c04, bit[256] %c05, bit[256] %c06, bit[256] %c07,
           bit[256] %c08, bit[256] %c09, bit[256] %c10, bit[256] %c11, bit[256] %c12,
           bit[256] %a00, bit[256] %a01, bit[256] %a02, bit[256] %a03,
           bit[256] %a04, bit[256] %a05, bit[256] %a06, bit[256] %a07,
           bit[256] %a08, bit[256] %a09, bit[256] %a10, bit[256] %a11, bit[256] %a12,
           bit[256] %b00, bit[256] %b01, bit[256] %b02, bit[256] %b03,
           bit[256] %b04, bit[256] %b05, bit[256] %b06, bit[256] %b07,
           bit[256] %b08, bit[256] %b09, bit[256] %b10, bit[256] %b11, bit[256] %b12) =
{
  true
  &&
  true
}

mov %L0x7fffffc2ac80 %c00;
mov %L0x7fffffc2aca0 %c01;
mov %L0x7fffffc2acc0 %c02;
mov %L0x7fffffc2ace0 %c03;
mov %L0x7fffffc2ad00 %c04;
mov %L0x7fffffc2ad20 %c05;
mov %L0x7fffffc2ad40 %c06;
mov %L0x7fffffc2ad60 %c07;
mov %L0x7fffffc2ad80 %c08;
mov %L0x7fffffc2ada0 %c09;
mov %L0x7fffffc2adc0 %c10;
mov %L0x7fffffc2ade0 %c11;
mov %L0x7fffffc2ae00 %c12;

mov %L0x7fffffc2ae20 %a00;
mov %L0x7fffffc2ae40 %a01;
mov %L0x7fffffc2ae60 %a02;
mov %L0x7fffffc2ae80 %a03;
mov %L0x7fffffc2aea0 %a04;
mov %L0x7fffffc2aec0 %a05;
mov %L0x7fffffc2aee0 %a06;
mov %L0x7fffffc2af00 %a07;
mov %L0x7fffffc2af20 %a08;
mov %L0x7fffffc2af40 %a09;
mov %L0x7fffffc2af60 %a10;
mov %L0x7fffffc2af80 %a11;
mov %L0x7fffffc2afa0 %a12;

mov %L0x7fffffc2f460 %b00;
mov %L0x7fffffc2f480 %b01;
mov %L0x7fffffc2f4a0 %b02;
mov %L0x7fffffc2f4c0 %b03;
mov %L0x7fffffc2f4e0 %b04;
mov %L0x7fffffc2f500 %b05;
mov %L0x7fffffc2f520 %b06;
mov %L0x7fffffc2f540 %b07;
mov %L0x7fffffc2f560 %b08;
mov %L0x7fffffc2f580 %b09;
mov %L0x7fffffc2f5a0 %b10;
mov %L0x7fffffc2f5c0 %b11;
mov %L0x7fffffc2f5e0 %b12;

(* PQCLEAN_MCELIECE8192128_AVX2_vec256_maa_asm: *)
(* #! -> SP = 0x7fffffc2aa18 *)
#! 0x7fffffc2aa18 = 0x7fffffc2aa18;
(* mov    %rsp,%r11                                #! PC = 0x55555557d660 *)
(* and    $0x1f,%r11                               #! PC = 0x55555557d663 *)
(* add    $0x0,%r11                                #! PC = 0x55555557d667 *)
(* sub    %r11,%rsp                                #! PC = 0x55555557d66b *)
(* vmovupd (%rdx),%ymm0                            #! EA = L0x7fffffc2f460; Value = 0xa55a5aa55aa5a55a; PC = 0x55555557d66e *)
mov %ymm0 %L0x7fffffc2f460;
(* vmovupd 0x180(%rsi),%ymm1                       #! EA = L0x7fffffc2afa0; Value = 0xff0000ff00ffff00; PC = 0x55555557d672 *)
mov %ymm1 %L0x7fffffc2afa0;
(* vpand  %ymm1,%ymm0,%ymm2                        #! PC = 0x55555557d67a *)
mul %ymm2 %ymm0 %ymm1;
(* vpand  0x20(%rdx),%ymm1,%ymm3                   #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d67e *)
mul %ymm3 %ymm1 %L0x7fffffc2f480;
(* vpand  0x40(%rdx),%ymm1,%ymm4                   #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d683 *)
mul %ymm4 %ymm1 %L0x7fffffc2f4a0;
(* vpand  0x60(%rdx),%ymm1,%ymm5                   #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d688 *)
mul %ymm5 %ymm1 %L0x7fffffc2f4c0;
(* vpand  0x80(%rdx),%ymm1,%ymm6                   #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d68d *)
mul %ymm6 %ymm1 %L0x7fffffc2f4e0;
(* vpand  0xa0(%rdx),%ymm1,%ymm7                   #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557d695 *)
mul %ymm7 %ymm1 %L0x7fffffc2f500;
(* vpand  0xc0(%rdx),%ymm1,%ymm8                   #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557d69d *)
mul %ymm8 %ymm1 %L0x7fffffc2f520;
(* vpand  0xe0(%rdx),%ymm1,%ymm9                   #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557d6a5 *)
mul %ymm9 %ymm1 %L0x7fffffc2f540;
(* vpand  0x100(%rdx),%ymm1,%ymm10                 #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557d6ad *)
mul %ymm10 %ymm1 %L0x7fffffc2f560;
(* vpand  0x120(%rdx),%ymm1,%ymm11                 #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557d6b5 *)
mul %ymm11 %ymm1 %L0x7fffffc2f580;
(* vpand  0x140(%rdx),%ymm1,%ymm12                 #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557d6bd *)
mul %ymm12 %ymm1 %L0x7fffffc2f5a0;
(* vpand  0x160(%rdx),%ymm1,%ymm13                 #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d6c5 *)
mul %ymm13 %ymm1 %L0x7fffffc2f5c0;
(* vpand  0x180(%rdx),%ymm1,%ymm1                  #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557d6cd *)
mul %ymm1 %ymm1 %L0x7fffffc2f5e0;
(* vpxor  %ymm1,%ymm5,%ymm5                        #! PC = 0x55555557d6d5 *)
adds %_ %ymm5 %ymm5 %ymm1;
(* vpxor  %ymm1,%ymm4,%ymm4                        #! PC = 0x55555557d6d9 *)
adds %_ %ymm4 %ymm4 %ymm1;
(* vpxor  %ymm1,%ymm2,%ymm2                        #! PC = 0x55555557d6dd *)
adds %_ %ymm2 %ymm2 %ymm1;
(* vmovapd %ymm1,%ymm1                             #! PC = 0x55555557d6e1 *)
mov %ymm1 %ymm1;
(* vmovupd 0x160(%rsi),%ymm14                      #! EA = L0x7fffffc2af80; Value = 0x9966669999666699; PC = 0x55555557d6e5 *)
mov %ymm14 %L0x7fffffc2af80;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557d6ed *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557d6f2 *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d6f7 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557d6fc *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d701 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557d706 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d70b *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557d710 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d715 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557d71d *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557d722 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557d72a *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557d72f *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557d737 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557d73c *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557d744 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557d749 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557d751 *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557d756 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557d75e *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557d763 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557d76b *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d770 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557d778 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557d77d *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm13,%ymm13                     #! PC = 0x55555557d785 *)
adds %_ %ymm13 %ymm13 %ymm14;
(* vpxor  %ymm13,%ymm4,%ymm4                       #! PC = 0x55555557d78a *)
adds %_ %ymm4 %ymm4 %ymm13;
(* vpxor  %ymm13,%ymm3,%ymm3                       #! PC = 0x55555557d78f *)
adds %_ %ymm3 %ymm3 %ymm13;
(* vpxor  %ymm13,%ymm1,%ymm1                       #! PC = 0x55555557d794 *)
adds %_ %ymm1 %ymm1 %ymm13;
(* vmovapd %ymm13,%ymm13                           #! PC = 0x55555557d799 *)
mov %ymm13 %ymm13;
(* vmovupd 0x140(%rsi),%ymm14                      #! EA = L0x7fffffc2af60; Value = 0x9966996699669966; PC = 0x55555557d79e *)
mov %ymm14 %L0x7fffffc2af60;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557d7a6 *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557d7ab *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d7b0 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557d7b5 *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d7ba *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557d7bf *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d7c4 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557d7c9 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d7ce *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557d7d6 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557d7db *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557d7e3 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557d7e8 *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557d7f0 *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557d7f5 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557d7fd *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557d802 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557d80a *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557d80f *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557d817 *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557d81c *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557d824 *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d829 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557d831 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557d836 *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557d83e *)
adds %_ %ymm12 %ymm12 %ymm14;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557d843 *)
adds %_ %ymm3 %ymm3 %ymm12;
(* vpxor  %ymm12,%ymm2,%ymm2                       #! PC = 0x55555557d848 *)
adds %_ %ymm2 %ymm2 %ymm12;
(* vpxor  %ymm12,%ymm13,%ymm13                     #! PC = 0x55555557d84d *)
adds %_ %ymm13 %ymm13 %ymm12;
(* vmovapd %ymm12,%ymm12                           #! PC = 0x55555557d852 *)
mov %ymm12 %ymm12;
(* vmovupd 0x120(%rsi),%ymm14                      #! EA = L0x7fffffc2af40; Value = 0xaaaa5555aaaa5555; PC = 0x55555557d857 *)
mov %ymm14 %L0x7fffffc2af40;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557d85f *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557d864 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d869 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557d86e *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d873 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557d878 *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d87d *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557d882 *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d887 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557d88f *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557d894 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557d89c *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557d8a1 *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557d8a9 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557d8ae *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557d8b6 *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557d8bb *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557d8c3 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557d8c8 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557d8d0 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557d8d5 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557d8dd *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d8e2 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557d8ea *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557d8ef *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557d8f7 *)
adds %_ %ymm11 %ymm11 %ymm14;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557d8fc *)
adds %_ %ymm2 %ymm2 %ymm11;
(* vpxor  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557d901 *)
adds %_ %ymm1 %ymm1 %ymm11;
(* vpxor  %ymm11,%ymm12,%ymm12                     #! PC = 0x55555557d906 *)
adds %_ %ymm12 %ymm12 %ymm11;
(* vmovapd %ymm11,%ymm11                           #! PC = 0x55555557d90b *)
mov %ymm11 %ymm11;
(* vmovupd 0x100(%rsi),%ymm14                      #! EA = L0x7fffffc2af20; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557d910 *)
mov %ymm14 %L0x7fffffc2af20;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557d918 *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557d91d *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d922 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557d927 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d92c *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557d931 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d936 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557d93b *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d940 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557d948 *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557d94d *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557d955 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557d95a *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557d962 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557d967 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557d96f *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557d974 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557d97c *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557d981 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557d989 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557d98e *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557d996 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d99b *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557d9a3 *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557d9a8 *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557d9b0 *)
adds %_ %ymm10 %ymm10 %ymm14;
(* vpxor  %ymm10,%ymm1,%ymm1                       #! PC = 0x55555557d9b5 *)
adds %_ %ymm1 %ymm1 %ymm10;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557d9ba *)
adds %_ %ymm13 %ymm13 %ymm10;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557d9bf *)
adds %_ %ymm11 %ymm11 %ymm10;
(* vmovapd %ymm10,%ymm10                           #! PC = 0x55555557d9c4 *)
mov %ymm10 %ymm10;
(* vmovupd 0xe0(%rsi),%ymm14                       #! EA = L0x7fffffc2af00; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557d9c9 *)
mov %ymm14 %L0x7fffffc2af00;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557d9d1 *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557d9d6 *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557d9db *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557d9e0 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557d9e5 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557d9ea *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557d9ef *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557d9f4 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557d9f9 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557da01 *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557da06 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557da0e *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557da13 *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557da1b *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557da20 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557da28 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557da2d *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557da35 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557da3a *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557da42 *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557da47 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557da4f *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557da54 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557da5c *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557da61 *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557da69 *)
adds %_ %ymm9 %ymm9 %ymm14;
(* vpxor  %ymm9,%ymm13,%ymm13                      #! PC = 0x55555557da6e *)
adds %_ %ymm13 %ymm13 %ymm9;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x55555557da73 *)
adds %_ %ymm12 %ymm12 %ymm9;
(* vpxor  %ymm9,%ymm10,%ymm10                      #! PC = 0x55555557da78 *)
adds %_ %ymm10 %ymm10 %ymm9;
(* vmovapd %ymm9,%ymm9                             #! PC = 0x55555557da7d *)
mov %ymm9 %ymm9;
(* vmovupd 0xc0(%rsi),%ymm14                       #! EA = L0x7fffffc2aee0; Value = 0x0000ffff0000ffff; PC = 0x55555557da82 *)
mov %ymm14 %L0x7fffffc2aee0;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557da8a *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557da8f *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557da94 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557da99 *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557da9e *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557daa3 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557daa8 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557daad *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557dab2 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557daba *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557dabf *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557dac7 *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557dacc *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557dad4 *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557dad9 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557dae1 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557dae6 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557daee *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557daf3 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557dafb *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557db00 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557db08 *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557db0d *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557db15 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557db1a *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557db22 *)
adds %_ %ymm8 %ymm8 %ymm14;
(* vpxor  %ymm8,%ymm12,%ymm12                      #! PC = 0x55555557db27 *)
adds %_ %ymm12 %ymm12 %ymm8;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557db2c *)
adds %_ %ymm11 %ymm11 %ymm8;
(* vpxor  %ymm8,%ymm9,%ymm9                        #! PC = 0x55555557db31 *)
adds %_ %ymm9 %ymm9 %ymm8;
(* vmovapd %ymm8,%ymm8                             #! PC = 0x55555557db36 *)
mov %ymm8 %ymm8;
(* vmovupd 0xa0(%rsi),%ymm14                       #! EA = L0x7fffffc2aec0; Value = 0xaaaaaaaaaaaaaaaa; PC = 0x55555557db3b *)
mov %ymm14 %L0x7fffffc2aec0;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557db43 *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557db48 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557db4d *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557db52 *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557db57 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557db5c *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557db61 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557db66 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557db6b *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557db73 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557db78 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557db80 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557db85 *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557db8d *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557db92 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557db9a *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557db9f *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557dba7 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557dbac *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557dbb4 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557dbb9 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557dbc1 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557dbc6 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557dbce *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557dbd3 *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557dbdb *)
adds %_ %ymm7 %ymm7 %ymm14;
(* vpxor  %ymm7,%ymm11,%ymm11                      #! PC = 0x55555557dbe0 *)
adds %_ %ymm11 %ymm11 %ymm7;
(* vpxor  %ymm7,%ymm10,%ymm10                      #! PC = 0x55555557dbe4 *)
adds %_ %ymm10 %ymm10 %ymm7;
(* vpxor  %ymm7,%ymm8,%ymm8                        #! PC = 0x55555557dbe8 *)
adds %_ %ymm8 %ymm8 %ymm7;
(* vmovapd %ymm7,%ymm7                             #! PC = 0x55555557dbec *)
mov %ymm7 %ymm7;
(* vmovupd 0x80(%rsi),%ymm14                       #! EA = L0x7fffffc2aea0; Value = 0x5aa5a55aa55a5aa5; PC = 0x55555557dbf0 *)
mov %ymm14 %L0x7fffffc2aea0;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557dbf8 *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557dbfd *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557dc02 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557dc07 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557dc0c *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557dc11 *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557dc16 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557dc1b *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557dc20 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557dc28 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557dc2d *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557dc35 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557dc3a *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557dc42 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557dc47 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557dc4f *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557dc54 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557dc5c *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557dc61 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557dc69 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557dc6e *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557dc76 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557dc7b *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557dc83 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557dc88 *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557dc90 *)
adds %_ %ymm6 %ymm6 %ymm14;
(* vpxor  %ymm6,%ymm10,%ymm10                      #! PC = 0x55555557dc95 *)
adds %_ %ymm10 %ymm10 %ymm6;
(* vpxor  %ymm6,%ymm9,%ymm9                        #! PC = 0x55555557dc99 *)
adds %_ %ymm9 %ymm9 %ymm6;
(* vpxor  %ymm6,%ymm7,%ymm7                        #! PC = 0x55555557dc9d *)
adds %_ %ymm7 %ymm7 %ymm6;
(* vmovapd %ymm6,%ymm6                             #! PC = 0x55555557dca1 *)
mov %ymm6 %ymm6;
(* vmovupd 0x60(%rsi),%ymm14                       #! EA = L0x7fffffc2ae80; Value = 0x5555aaaaaaaa5555; PC = 0x55555557dca5 *)
mov %ymm14 %L0x7fffffc2ae80;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557dcaa *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557dcaf *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557dcb4 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557dcb9 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557dcbe *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557dcc3 *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557dcc8 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557dccd *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557dcd2 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557dcda *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557dcdf *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557dce7 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557dcec *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557dcf4 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557dcf9 *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557dd01 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557dd06 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557dd0e *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557dd13 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557dd1b *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557dd20 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557dd28 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557dd2d *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557dd35 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557dd3a *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557dd42 *)
adds %_ %ymm5 %ymm5 %ymm14;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555557dd47 *)
adds %_ %ymm9 %ymm9 %ymm5;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557dd4b *)
adds %_ %ymm8 %ymm8 %ymm5;
(* vpxor  %ymm5,%ymm6,%ymm6                        #! PC = 0x55555557dd4f *)
adds %_ %ymm6 %ymm6 %ymm5;
(* vmovapd %ymm5,%ymm5                             #! PC = 0x55555557dd53 *)
mov %ymm5 %ymm5;
(* vmovupd 0x40(%rsi),%ymm14                       #! EA = L0x7fffffc2ae60; Value = 0x55aaaa5555aaaa55; PC = 0x55555557dd57 *)
mov %ymm14 %L0x7fffffc2ae60;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557dd5c *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557dd61 *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557dd66 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557dd6b *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557dd70 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557dd75 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557dd7a *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557dd7f *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557dd84 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557dd8c *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557dd91 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557dd99 *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557dd9e *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557dda6 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557ddab *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557ddb3 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557ddb8 *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557ddc0 *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557ddc5 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557ddcd *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557ddd2 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557ddda *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557dddf *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm3,%ymm3                       #! PC = 0x55555557dde7 *)
adds %_ %ymm3 %ymm3 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557ddec *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557ddf4 *)
adds %_ %ymm4 %ymm4 %ymm14;
(* vpxor  %ymm4,%ymm8,%ymm8                        #! PC = 0x55555557ddf9 *)
adds %_ %ymm8 %ymm8 %ymm4;
(* vpxor  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555557ddfd *)
adds %_ %ymm7 %ymm7 %ymm4;
(* vpxor  %ymm4,%ymm5,%ymm5                        #! PC = 0x55555557de01 *)
adds %_ %ymm5 %ymm5 %ymm4;
(* vmovapd %ymm4,%ymm4                             #! PC = 0x55555557de05 *)
mov %ymm4 %ymm4;
(* vmovupd 0x20(%rsi),%ymm14                       #! EA = L0x7fffffc2ae40; Value = 0xc33cc33cc33cc33c; PC = 0x55555557de09 *)
mov %ymm14 %L0x7fffffc2ae40;
(* vpand  %ymm14,%ymm0,%ymm15                      #! PC = 0x55555557de0e *)
mul %ymm15 %ymm0 %ymm14;
(* vpxor  %ymm15,%ymm4,%ymm4                       #! PC = 0x55555557de13 *)
adds %_ %ymm4 %ymm4 %ymm15;
(* vpand  0x20(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557de18 *)
mul %ymm15 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm15,%ymm5,%ymm5                       #! PC = 0x55555557de1d *)
adds %_ %ymm5 %ymm5 %ymm15;
(* vpand  0x40(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557de22 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm15,%ymm6,%ymm6                       #! PC = 0x55555557de27 *)
adds %_ %ymm6 %ymm6 %ymm15;
(* vpand  0x60(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557de2c *)
mul %ymm15 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x55555557de31 *)
adds %_ %ymm7 %ymm7 %ymm15;
(* vpand  0x80(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557de36 *)
mul %ymm15 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x55555557de3e *)
adds %_ %ymm8 %ymm8 %ymm15;
(* vpand  0xa0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557de43 *)
mul %ymm15 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm15,%ymm9,%ymm9                       #! PC = 0x55555557de4b *)
adds %_ %ymm9 %ymm9 %ymm15;
(* vpand  0xc0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557de50 *)
mul %ymm15 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555557de58 *)
adds %_ %ymm10 %ymm10 %ymm15;
(* vpand  0xe0(%rdx),%ymm14,%ymm15                 #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557de5d *)
mul %ymm15 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm15,%ymm11,%ymm11                     #! PC = 0x55555557de65 *)
adds %_ %ymm11 %ymm11 %ymm15;
(* vpand  0x100(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557de6a *)
mul %ymm15 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm15,%ymm12,%ymm12                     #! PC = 0x55555557de72 *)
adds %_ %ymm12 %ymm12 %ymm15;
(* vpand  0x120(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557de77 *)
mul %ymm15 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm15,%ymm13,%ymm13                     #! PC = 0x55555557de7f *)
adds %_ %ymm13 %ymm13 %ymm15;
(* vpand  0x140(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557de84 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm15,%ymm1,%ymm1                       #! PC = 0x55555557de8c *)
adds %_ %ymm1 %ymm1 %ymm15;
(* vpand  0x160(%rdx),%ymm14,%ymm15                #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557de91 *)
mul %ymm15 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x55555557de99 *)
adds %_ %ymm2 %ymm2 %ymm15;
(* vpand  0x180(%rdx),%ymm14,%ymm14                #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557de9e *)
mul %ymm14 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557dea6 *)
adds %_ %ymm3 %ymm3 %ymm14;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555557deab *)
adds %_ %ymm7 %ymm7 %ymm3;
(* vpxor  %ymm3,%ymm6,%ymm6                        #! PC = 0x55555557deaf *)
adds %_ %ymm6 %ymm6 %ymm3;
(* vpxor  %ymm3,%ymm4,%ymm4                        #! PC = 0x55555557deb3 *)
adds %_ %ymm4 %ymm4 %ymm3;
(* vmovapd %ymm3,%ymm3                             #! PC = 0x55555557deb7 *)
mov %ymm3 %ymm3;
(* vmovupd (%rsi),%ymm14                           #! EA = L0x7fffffc2ae20; Value = 0xc33cc33cc33cc33c; PC = 0x55555557debb *)
mov %ymm14 %L0x7fffffc2ae20;
(* vpand  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555557debf *)
mul %ymm0 %ymm0 %ymm14;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557dec4 *)
adds %_ %ymm3 %ymm3 %ymm0;
(* vpand  0x20(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f480; Value = 0x6969696996969696; PC = 0x55555557dec8 *)
mul %ymm0 %ymm14 %L0x7fffffc2f480;
(* vpxor  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557decd *)
adds %_ %ymm4 %ymm4 %ymm0;
(* vpand  0x40(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f4a0; Value = 0x5aa55aa5a55aa55a; PC = 0x55555557ded1 *)
mul %ymm0 %ymm14 %L0x7fffffc2f4a0;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557ded6 *)
adds %_ %ymm5 %ymm5 %ymm0;
(* vpand  0x60(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f4c0; Value = 0x9999999966666666; PC = 0x55555557deda *)
mul %ymm0 %ymm14 %L0x7fffffc2f4c0;
(* vpxor  %ymm0,%ymm6,%ymm6                        #! PC = 0x55555557dedf *)
adds %_ %ymm6 %ymm6 %ymm0;
(* vpand  0x80(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f4e0; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557dee3 *)
mul %ymm0 %ymm14 %L0x7fffffc2f4e0;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557deeb *)
adds %_ %ymm7 %ymm7 %ymm0;
(* vpand  0xa0(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f500; Value = 0xffff0000ffff0000; PC = 0x55555557deef *)
mul %ymm0 %ymm14 %L0x7fffffc2f500;
(* vpxor  %ymm0,%ymm8,%ymm8                        #! PC = 0x55555557def7 *)
adds %_ %ymm8 %ymm8 %ymm0;
(* vpand  0xc0(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f520; Value = 0x0000000000000000; PC = 0x55555557defb *)
mul %ymm0 %ymm14 %L0x7fffffc2f520;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557df03 *)
adds %_ %ymm9 %ymm9 %ymm0;
(* vpand  0xe0(%rdx),%ymm14,%ymm0                  #! EA = L0x7fffffc2f540; Value = 0xcc33cc3333cc33cc; PC = 0x55555557df07 *)
mul %ymm0 %ymm14 %L0x7fffffc2f540;
(* vpxor  %ymm0,%ymm10,%ymm10                      #! PC = 0x55555557df0f *)
adds %_ %ymm10 %ymm10 %ymm0;
(* vpand  0x100(%rdx),%ymm14,%ymm0                 #! EA = L0x7fffffc2f560; Value = 0x0000000000000000; PC = 0x55555557df13 *)
mul %ymm0 %ymm14 %L0x7fffffc2f560;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555557df1b *)
adds %_ %ymm11 %ymm11 %ymm0;
(* vpand  0x120(%rdx),%ymm14,%ymm0                 #! EA = L0x7fffffc2f580; Value = 0x3c3c3c3c3c3c3c3c; PC = 0x55555557df1f *)
mul %ymm0 %ymm14 %L0x7fffffc2f580;
(* vpxor  %ymm0,%ymm12,%ymm12                      #! PC = 0x55555557df27 *)
adds %_ %ymm12 %ymm12 %ymm0;
(* vpand  0x140(%rdx),%ymm14,%ymm0                 #! EA = L0x7fffffc2f5a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555557df2b *)
mul %ymm0 %ymm14 %L0x7fffffc2f5a0;
(* vpxor  %ymm0,%ymm13,%ymm13                      #! PC = 0x55555557df33 *)
adds %_ %ymm13 %ymm13 %ymm0;
(* vpand  0x160(%rdx),%ymm14,%ymm0                 #! EA = L0x7fffffc2f5c0; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557df37 *)
mul %ymm0 %ymm14 %L0x7fffffc2f5c0;
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555557df3f *)
adds %_ %ymm1 %ymm1 %ymm0;
(* vpand  0x180(%rdx),%ymm14,%ymm0                 #! EA = L0x7fffffc2f5e0; Value = 0x00ffff0000ffff00; PC = 0x55555557df43 *)
mul %ymm0 %ymm14 %L0x7fffffc2f5e0;
(* vpxor  %ymm0,%ymm2,%ymm2                        #! PC = 0x55555557df4b *)
adds %_ %ymm2 %ymm2 %ymm0;
(* vpxor  0x180(%rdi),%ymm2,%ymm0                  #! EA = L0x7fffffc2ae00; Value = 0x3c3cc3c3c3c33c3c; PC = 0x55555557df4f *)
adds %_ %ymm0 %ymm2 %L0x7fffffc2ae00;
(* vmovupd %ymm0,0x180(%rdi)                       #! EA = L0x7fffffc2ae00; PC = 0x55555557df57 *)
mov %L0x7fffffc2ae00 %ymm0;
(* vpxor  0x180(%rsi),%ymm0,%ymm0                  #! EA = L0x7fffffc2afa0; Value = 0xff0000ff00ffff00; PC = 0x55555557df5f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2afa0;
(* vmovupd %ymm0,0x180(%rsi)                       #! EA = L0x7fffffc2afa0; PC = 0x55555557df67 *)
mov %L0x7fffffc2afa0 %ymm0;
(* vpxor  0x160(%rdi),%ymm1,%ymm0                  #! EA = L0x7fffffc2ade0; Value = 0x9966669966999966; PC = 0x55555557df6f *)
adds %_ %ymm0 %ymm1 %L0x7fffffc2ade0;
(* vmovupd %ymm0,0x160(%rdi)                       #! EA = L0x7fffffc2ade0; PC = 0x55555557df77 *)
mov %L0x7fffffc2ade0 %ymm0;
(* vpxor  0x160(%rsi),%ymm0,%ymm0                  #! EA = L0x7fffffc2af80; Value = 0x9966669999666699; PC = 0x55555557df7f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2af80;
(* vmovupd %ymm0,0x160(%rsi)                       #! EA = L0x7fffffc2af80; PC = 0x55555557df87 *)
mov %L0x7fffffc2af80 %ymm0;
(* vpxor  0x140(%rdi),%ymm13,%ymm0                 #! EA = L0x7fffffc2adc0; Value = 0x5aa55aa55aa55aa5; PC = 0x55555557df8f *)
adds %_ %ymm0 %ymm13 %L0x7fffffc2adc0;
(* vmovupd %ymm0,0x140(%rdi)                       #! EA = L0x7fffffc2adc0; PC = 0x55555557df97 *)
mov %L0x7fffffc2adc0 %ymm0;
(* vpxor  0x140(%rsi),%ymm0,%ymm0                  #! EA = L0x7fffffc2af60; Value = 0x9966996699669966; PC = 0x55555557df9f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2af60;
(* vmovupd %ymm0,0x140(%rsi)                       #! EA = L0x7fffffc2af60; PC = 0x55555557dfa7 *)
mov %L0x7fffffc2af60 %ymm0;
(* vpxor  0x120(%rdi),%ymm12,%ymm0                 #! EA = L0x7fffffc2ada0; Value = 0x55555555aaaaaaaa; PC = 0x55555557dfaf *)
adds %_ %ymm0 %ymm12 %L0x7fffffc2ada0;
(* vmovupd %ymm0,0x120(%rdi)                       #! EA = L0x7fffffc2ada0; PC = 0x55555557dfb7 *)
mov %L0x7fffffc2ada0 %ymm0;
(* vpxor  0x120(%rsi),%ymm0,%ymm0                  #! EA = L0x7fffffc2af40; Value = 0xaaaa5555aaaa5555; PC = 0x55555557dfbf *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2af40;
(* vmovupd %ymm0,0x120(%rsi)                       #! EA = L0x7fffffc2af40; PC = 0x55555557dfc7 *)
mov %L0x7fffffc2af40 %ymm0;
(* vpxor  0x100(%rdi),%ymm11,%ymm0                 #! EA = L0x7fffffc2ad80; Value = 0xcc3333cccc3333cc; PC = 0x55555557dfcf *)
adds %_ %ymm0 %ymm11 %L0x7fffffc2ad80;
(* vmovupd %ymm0,0x100(%rdi)                       #! EA = L0x7fffffc2ad80; PC = 0x55555557dfd7 *)
mov %L0x7fffffc2ad80 %ymm0;
(* vpxor  0x100(%rsi),%ymm0,%ymm0                  #! EA = L0x7fffffc2af20; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557dfdf *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2af20;
(* vmovupd %ymm0,0x100(%rsi)                       #! EA = L0x7fffffc2af20; PC = 0x55555557dfe7 *)
mov %L0x7fffffc2af20 %ymm0;
(* vpxor  0xe0(%rdi),%ymm10,%ymm0                  #! EA = L0x7fffffc2ad60; Value = 0x0ff00ff0f00ff00f; PC = 0x55555557dfef *)
adds %_ %ymm0 %ymm10 %L0x7fffffc2ad60;
(* vmovupd %ymm0,0xe0(%rdi)                        #! EA = L0x7fffffc2ad60; PC = 0x55555557dff7 *)
mov %L0x7fffffc2ad60 %ymm0;
(* vpxor  0xe0(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2af00; Value = 0xc33c3cc33cc3c33c; PC = 0x55555557dfff *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2af00;
(* vmovupd %ymm0,0xe0(%rsi)                        #! EA = L0x7fffffc2af00; PC = 0x55555557e007 *)
mov %L0x7fffffc2af00 %ymm0;
(* vpxor  0xc0(%rdi),%ymm9,%ymm0                   #! EA = L0x7fffffc2ad40; Value = 0x33cccc3333cccc33; PC = 0x55555557e00f *)
adds %_ %ymm0 %ymm9 %L0x7fffffc2ad40;
(* vmovupd %ymm0,0xc0(%rdi)                        #! EA = L0x7fffffc2ad40; PC = 0x55555557e017 *)
mov %L0x7fffffc2ad40 %ymm0;
(* vpxor  0xc0(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2aee0; Value = 0x0000ffff0000ffff; PC = 0x55555557e01f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2aee0;
(* vmovupd %ymm0,0xc0(%rsi)                        #! EA = L0x7fffffc2aee0; PC = 0x55555557e027 *)
mov %L0x7fffffc2aee0 %ymm0;
(* vpxor  0xa0(%rdi),%ymm8,%ymm0                   #! EA = L0x7fffffc2ad20; Value = 0xaa5555aaaa5555aa; PC = 0x55555557e02f *)
adds %_ %ymm0 %ymm8 %L0x7fffffc2ad20;
(* vmovupd %ymm0,0xa0(%rdi)                        #! EA = L0x7fffffc2ad20; PC = 0x55555557e037 *)
mov %L0x7fffffc2ad20 %ymm0;
(* vpxor  0xa0(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2aec0; Value = 0xaaaaaaaaaaaaaaaa; PC = 0x55555557e03f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2aec0;
(* vmovupd %ymm0,0xa0(%rsi)                        #! EA = L0x7fffffc2aec0; PC = 0x55555557e047 *)
mov %L0x7fffffc2aec0 %ymm0;
(* vpxor  0x80(%rdi),%ymm7,%ymm0                   #! EA = L0x7fffffc2ad00; Value = 0xa55aa55aa55aa55a; PC = 0x55555557e04f *)
adds %_ %ymm0 %ymm7 %L0x7fffffc2ad00;
(* vmovupd %ymm0,0x80(%rdi)                        #! EA = L0x7fffffc2ad00; PC = 0x55555557e057 *)
mov %L0x7fffffc2ad00 %ymm0;
(* vpxor  0x80(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2aea0; Value = 0x5aa5a55aa55a5aa5; PC = 0x55555557e05f *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2aea0;
(* vmovupd %ymm0,0x80(%rsi)                        #! EA = L0x7fffffc2aea0; PC = 0x55555557e067 *)
mov %L0x7fffffc2aea0 %ymm0;
(* vpxor  0x60(%rdi),%ymm6,%ymm0                   #! EA = L0x7fffffc2ace0; Value = 0xc33cc33cc33cc33c; PC = 0x55555557e06f *)
adds %_ %ymm0 %ymm6 %L0x7fffffc2ace0;
(* vmovupd %ymm0,0x60(%rdi)                        #! EA = L0x7fffffc2ace0; PC = 0x55555557e074 *)
mov %L0x7fffffc2ace0 %ymm0;
(* vpxor  0x60(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2ae80; Value = 0x5555aaaaaaaa5555; PC = 0x55555557e079 *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2ae80;
(* vmovupd %ymm0,0x60(%rsi)                        #! EA = L0x7fffffc2ae80; PC = 0x55555557e07e *)
mov %L0x7fffffc2ae80 %ymm0;
(* vpxor  0x40(%rdi),%ymm5,%ymm0                   #! EA = L0x7fffffc2acc0; Value = 0x9999999966666666; PC = 0x55555557e083 *)
adds %_ %ymm0 %ymm5 %L0x7fffffc2acc0;
(* vmovupd %ymm0,0x40(%rdi)                        #! EA = L0x7fffffc2acc0; PC = 0x55555557e088 *)
mov %L0x7fffffc2acc0 %ymm0;
(* vpxor  0x40(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2ae60; Value = 0x55aaaa5555aaaa55; PC = 0x55555557e08d *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2ae60;
(* vmovupd %ymm0,0x40(%rsi)                        #! EA = L0x7fffffc2ae60; PC = 0x55555557e092 *)
mov %L0x7fffffc2ae60 %ymm0;
(* vpxor  0x20(%rdi),%ymm4,%ymm0                   #! EA = L0x7fffffc2aca0; Value = 0xcccc3333cccc3333; PC = 0x55555557e097 *)
adds %_ %ymm0 %ymm4 %L0x7fffffc2aca0;
(* vmovupd %ymm0,0x20(%rdi)                        #! EA = L0x7fffffc2aca0; PC = 0x55555557e09c *)
mov %L0x7fffffc2aca0 %ymm0;
(* vpxor  0x20(%rsi),%ymm0,%ymm0                   #! EA = L0x7fffffc2ae40; Value = 0xc33cc33cc33cc33c; PC = 0x55555557e0a1 *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2ae40;
(* vmovupd %ymm0,0x20(%rsi)                        #! EA = L0x7fffffc2ae40; PC = 0x55555557e0a6 *)
mov %L0x7fffffc2ae40 %ymm0;
(* vpxor  (%rdi),%ymm3,%ymm0                       #! EA = L0x7fffffc2ac80; Value = 0xaa55aa55aa55aa55; PC = 0x55555557e0ab *)
adds %_ %ymm0 %ymm3 %L0x7fffffc2ac80;
(* vmovupd %ymm0,(%rdi)                            #! EA = L0x7fffffc2ac80; PC = 0x55555557e0af *)
mov %L0x7fffffc2ac80 %ymm0;
(* vpxor  (%rsi),%ymm0,%ymm0                       #! EA = L0x7fffffc2ae20; Value = 0xc33cc33cc33cc33c; PC = 0x55555557e0b3 *)
adds %_ %ymm0 %ymm0 %L0x7fffffc2ae20;
(* vmovupd %ymm0,(%rsi)                            #! EA = L0x7fffffc2ae20; PC = 0x55555557e0b7 *)
mov %L0x7fffffc2ae20 %ymm0;
(* add    %r11,%rsp                                #! PC = 0x55555557e0bb *)
(* #! <- SP = 0x7fffffc2aa18 *)
#! 0x7fffffc2aa18 = 0x7fffffc2aa18;
(* #ret                                            #! PC = 0x55555557e0be *)
#ret                                            #! 0x55555557e0be = 0x55555557e0be;

mov %r00 %L0x7fffffc2ac80;
mov %r01 %L0x7fffffc2aca0;
mov %r02 %L0x7fffffc2acc0;
mov %r03 %L0x7fffffc2ace0;
mov %r04 %L0x7fffffc2ad00;
mov %r05 %L0x7fffffc2ad20;
mov %r06 %L0x7fffffc2ad40;
mov %r07 %L0x7fffffc2ad60;
mov %r08 %L0x7fffffc2ad80;
mov %r09 %L0x7fffffc2ada0;
mov %r10 %L0x7fffffc2adc0;
mov %r11 %L0x7fffffc2ade0;
mov %r12 %L0x7fffffc2ae00;

mov %s00 %L0x7fffffc2ae20;
mov %s01 %L0x7fffffc2ae40;
mov %s02 %L0x7fffffc2ae60;
mov %s03 %L0x7fffffc2ae80;
mov %s04 %L0x7fffffc2aea0;
mov %s05 %L0x7fffffc2aec0;
mov %s06 %L0x7fffffc2aee0;
mov %s07 %L0x7fffffc2af00;
mov %s08 %L0x7fffffc2af20;
mov %s09 %L0x7fffffc2af40;
mov %s10 %L0x7fffffc2af60;
mov %s11 %L0x7fffffc2af80;
mov %s12 %L0x7fffffc2afa0;

{
  and [
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1]
  ],
  and [
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1]
  ]
  &&
  true
}

