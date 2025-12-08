(*
Run on iruka with command:
$ cv -v -jobs 4 -isafety -slicing -no_carry_constraint PQCLEAN_MCELIECE8192128_AVX2_vec128_mul_asm.cl

Parsing CryptoLine file:                        [OK]            3.8557 seconds
Checking well-formedness:                       [OK]            0.4370 seconds

Procedure main
==============
Transforming to SSA form:                       [OK]            0.2219 seconds
Normalizing specification:                      [OK]            0.2593 seconds
Rewriting assignments:                          [OK]            0.1395 seconds
Verifying program safety:
        Cut 0
        ...
        Overall                                 [OK]            911.2477 seconds
Verifying range specification:                  [OK]            0.0110 seconds
Rewriting value-preserved casting:              [OK]            0.0269 seconds
Verifying algebraic specification:              [OK]            59.7660 seconds

Procedure Summary
-----------------
Procedure verification:                         [OK]            971.8159 seconds

Summary
=======
Verification result:                            [OK]            976.1119 seconds
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
    eqmod (poly z [%r00[1], %r01[1], %r02[1], %r03[1], %r04[1], %r05[1],
                   %r06[1], %r07[1], %r08[1], %r09[1], %r10[1], %r11[1], %r12[1]])
          ((poly z [%a00[1], %a01[1], %a02[1], %a03[1], %a04[1], %a05[1],
                    %a06[1], %a07[1], %a08[1], %a09[1], %a10[1], %a11[1], %a12[1]] *
            poly z [%b00[1], %b01[1], %b02[1], %b03[1], %b04[1], %b05[1],
                    %b06[1], %b07[1], %b08[1], %b09[1], %b10[1], %b11[1], %b12[1]]) +
           (poly z [%c00[1], %c01[1], %c02[1], %c03[1], %c04[1], %c05[1],
                    %c06[1], %c07[1], %c08[1], %c09[1], %c10[1], %c11[1], %c12[1]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[2], %r01[2], %r02[2], %r03[2], %r04[2], %r05[2],
                   %r06[2], %r07[2], %r08[2], %r09[2], %r10[2], %r11[2], %r12[2]])
          ((poly z [%a00[2], %a01[2], %a02[2], %a03[2], %a04[2], %a05[2],
                    %a06[2], %a07[2], %a08[2], %a09[2], %a10[2], %a11[2], %a12[2]] *
            poly z [%b00[2], %b01[2], %b02[2], %b03[2], %b04[2], %b05[2],
                    %b06[2], %b07[2], %b08[2], %b09[2], %b10[2], %b11[2], %b12[2]]) +
           (poly z [%c00[2], %c01[2], %c02[2], %c03[2], %c04[2], %c05[2],
                    %c06[2], %c07[2], %c08[2], %c09[2], %c10[2], %c11[2], %c12[2]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[3], %r01[3], %r02[3], %r03[3], %r04[3], %r05[3],
                   %r06[3], %r07[3], %r08[3], %r09[3], %r10[3], %r11[3], %r12[3]])
          ((poly z [%a00[3], %a01[3], %a02[3], %a03[3], %a04[3], %a05[3],
                    %a06[3], %a07[3], %a08[3], %a09[3], %a10[3], %a11[3], %a12[3]] *
            poly z [%b00[3], %b01[3], %b02[3], %b03[3], %b04[3], %b05[3],
                    %b06[3], %b07[3], %b08[3], %b09[3], %b10[3], %b11[3], %b12[3]]) +
           (poly z [%c00[3], %c01[3], %c02[3], %c03[3], %c04[3], %c05[3],
                    %c06[3], %c07[3], %c08[3], %c09[3], %c10[3], %c11[3], %c12[3]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[4], %r01[4], %r02[4], %r03[4], %r04[4], %r05[4],
                   %r06[4], %r07[4], %r08[4], %r09[4], %r10[4], %r11[4], %r12[4]])
          ((poly z [%a00[4], %a01[4], %a02[4], %a03[4], %a04[4], %a05[4],
                    %a06[4], %a07[4], %a08[4], %a09[4], %a10[4], %a11[4], %a12[4]] *
            poly z [%b00[4], %b01[4], %b02[4], %b03[4], %b04[4], %b05[4],
                    %b06[4], %b07[4], %b08[4], %b09[4], %b10[4], %b11[4], %b12[4]]) +
           (poly z [%c00[4], %c01[4], %c02[4], %c03[4], %c04[4], %c05[4],
                    %c06[4], %c07[4], %c08[4], %c09[4], %c10[4], %c11[4], %c12[4]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[5], %r01[5], %r02[5], %r03[5], %r04[5], %r05[5],
                   %r06[5], %r07[5], %r08[5], %r09[5], %r10[5], %r11[5], %r12[5]])
          ((poly z [%a00[5], %a01[5], %a02[5], %a03[5], %a04[5], %a05[5],
                    %a06[5], %a07[5], %a08[5], %a09[5], %a10[5], %a11[5], %a12[5]] *
            poly z [%b00[5], %b01[5], %b02[5], %b03[5], %b04[5], %b05[5],
                    %b06[5], %b07[5], %b08[5], %b09[5], %b10[5], %b11[5], %b12[5]]) +
           (poly z [%c00[5], %c01[5], %c02[5], %c03[5], %c04[5], %c05[5],
                    %c06[5], %c07[5], %c08[5], %c09[5], %c10[5], %c11[5], %c12[5]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[6], %r01[6], %r02[6], %r03[6], %r04[6], %r05[6],
                   %r06[6], %r07[6], %r08[6], %r09[6], %r10[6], %r11[6], %r12[6]])
          ((poly z [%a00[6], %a01[6], %a02[6], %a03[6], %a04[6], %a05[6],
                    %a06[6], %a07[6], %a08[6], %a09[6], %a10[6], %a11[6], %a12[6]] *
            poly z [%b00[6], %b01[6], %b02[6], %b03[6], %b04[6], %b05[6],
                    %b06[6], %b07[6], %b08[6], %b09[6], %b10[6], %b11[6], %b12[6]]) +
           (poly z [%c00[6], %c01[6], %c02[6], %c03[6], %c04[6], %c05[6],
                    %c06[6], %c07[6], %c08[6], %c09[6], %c10[6], %c11[6], %c12[6]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[7], %r01[7], %r02[7], %r03[7], %r04[7], %r05[7],
                   %r06[7], %r07[7], %r08[7], %r09[7], %r10[7], %r11[7], %r12[7]])
          ((poly z [%a00[7], %a01[7], %a02[7], %a03[7], %a04[7], %a05[7],
                    %a06[7], %a07[7], %a08[7], %a09[7], %a10[7], %a11[7], %a12[7]] *
            poly z [%b00[7], %b01[7], %b02[7], %b03[7], %b04[7], %b05[7],
                    %b06[7], %b07[7], %b08[7], %b09[7], %b10[7], %b11[7], %b12[7]]) +
           (poly z [%c00[7], %c01[7], %c02[7], %c03[7], %c04[7], %c05[7],
                    %c06[7], %c07[7], %c08[7], %c09[7], %c10[7], %c11[7], %c12[7]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[8], %r01[8], %r02[8], %r03[8], %r04[8], %r05[8],
                   %r06[8], %r07[8], %r08[8], %r09[8], %r10[8], %r11[8], %r12[8]])
          ((poly z [%a00[8], %a01[8], %a02[8], %a03[8], %a04[8], %a05[8],
                    %a06[8], %a07[8], %a08[8], %a09[8], %a10[8], %a11[8], %a12[8]] *
            poly z [%b00[8], %b01[8], %b02[8], %b03[8], %b04[8], %b05[8],
                    %b06[8], %b07[8], %b08[8], %b09[8], %b10[8], %b11[8], %b12[8]]) +
           (poly z [%c00[8], %c01[8], %c02[8], %c03[8], %c04[8], %c05[8],
                    %c06[8], %c07[8], %c08[8], %c09[8], %c10[8], %c11[8], %c12[8]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[9], %r01[9], %r02[9], %r03[9], %r04[9], %r05[9],
                   %r06[9], %r07[9], %r08[9], %r09[9], %r10[9], %r11[9], %r12[9]])
          ((poly z [%a00[9], %a01[9], %a02[9], %a03[9], %a04[9], %a05[9],
                    %a06[9], %a07[9], %a08[9], %a09[9], %a10[9], %a11[9], %a12[9]] *
            poly z [%b00[9], %b01[9], %b02[9], %b03[9], %b04[9], %b05[9],
                    %b06[9], %b07[9], %b08[9], %b09[9], %b10[9], %b11[9], %b12[9]]) +
           (poly z [%c00[9], %c01[9], %c02[9], %c03[9], %c04[9], %c05[9],
                    %c06[9], %c07[9], %c08[9], %c09[9], %c10[9], %c11[9], %c12[9]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[10], %r01[10], %r02[10], %r03[10], %r04[10], %r05[10],
                   %r06[10], %r07[10], %r08[10], %r09[10], %r10[10], %r11[10], %r12[10]])
          ((poly z [%a00[10], %a01[10], %a02[10], %a03[10], %a04[10], %a05[10],
                    %a06[10], %a07[10], %a08[10], %a09[10], %a10[10], %a11[10], %a12[10]] *
            poly z [%b00[10], %b01[10], %b02[10], %b03[10], %b04[10], %b05[10],
                    %b06[10], %b07[10], %b08[10], %b09[10], %b10[10], %b11[10], %b12[10]]) +
           (poly z [%c00[10], %c01[10], %c02[10], %c03[10], %c04[10], %c05[10],
                    %c06[10], %c07[10], %c08[10], %c09[10], %c10[10], %c11[10], %c12[10]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[11], %r01[11], %r02[11], %r03[11], %r04[11], %r05[11],
                   %r06[11], %r07[11], %r08[11], %r09[11], %r10[11], %r11[11], %r12[11]])
          ((poly z [%a00[11], %a01[11], %a02[11], %a03[11], %a04[11], %a05[11],
                    %a06[11], %a07[11], %a08[11], %a09[11], %a10[11], %a11[11], %a12[11]] *
            poly z [%b00[11], %b01[11], %b02[11], %b03[11], %b04[11], %b05[11],
                    %b06[11], %b07[11], %b08[11], %b09[11], %b10[11], %b11[11], %b12[11]]) +
           (poly z [%c00[11], %c01[11], %c02[11], %c03[11], %c04[11], %c05[11],
                    %c06[11], %c07[11], %c08[11], %c09[11], %c10[11], %c11[11], %c12[11]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[12], %r01[12], %r02[12], %r03[12], %r04[12], %r05[12],
                   %r06[12], %r07[12], %r08[12], %r09[12], %r10[12], %r11[12], %r12[12]])
          ((poly z [%a00[12], %a01[12], %a02[12], %a03[12], %a04[12], %a05[12],
                    %a06[12], %a07[12], %a08[12], %a09[12], %a10[12], %a11[12], %a12[12]] *
            poly z [%b00[12], %b01[12], %b02[12], %b03[12], %b04[12], %b05[12],
                    %b06[12], %b07[12], %b08[12], %b09[12], %b10[12], %b11[12], %b12[12]]) +
           (poly z [%c00[12], %c01[12], %c02[12], %c03[12], %c04[12], %c05[12],
                    %c06[12], %c07[12], %c08[12], %c09[12], %c10[12], %c11[12], %c12[12]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[13], %r01[13], %r02[13], %r03[13], %r04[13], %r05[13],
                   %r06[13], %r07[13], %r08[13], %r09[13], %r10[13], %r11[13], %r12[13]])
          ((poly z [%a00[13], %a01[13], %a02[13], %a03[13], %a04[13], %a05[13],
                    %a06[13], %a07[13], %a08[13], %a09[13], %a10[13], %a11[13], %a12[13]] *
            poly z [%b00[13], %b01[13], %b02[13], %b03[13], %b04[13], %b05[13],
                    %b06[13], %b07[13], %b08[13], %b09[13], %b10[13], %b11[13], %b12[13]]) +
           (poly z [%c00[13], %c01[13], %c02[13], %c03[13], %c04[13], %c05[13],
                    %c06[13], %c07[13], %c08[13], %c09[13], %c10[13], %c11[13], %c12[13]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[14], %r01[14], %r02[14], %r03[14], %r04[14], %r05[14],
                   %r06[14], %r07[14], %r08[14], %r09[14], %r10[14], %r11[14], %r12[14]])
          ((poly z [%a00[14], %a01[14], %a02[14], %a03[14], %a04[14], %a05[14],
                    %a06[14], %a07[14], %a08[14], %a09[14], %a10[14], %a11[14], %a12[14]] *
            poly z [%b00[14], %b01[14], %b02[14], %b03[14], %b04[14], %b05[14],
                    %b06[14], %b07[14], %b08[14], %b09[14], %b10[14], %b11[14], %b12[14]]) +
           (poly z [%c00[14], %c01[14], %c02[14], %c03[14], %c04[14], %c05[14],
                    %c06[14], %c07[14], %c08[14], %c09[14], %c10[14], %c11[14], %c12[14]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[15], %r01[15], %r02[15], %r03[15], %r04[15], %r05[15],
                   %r06[15], %r07[15], %r08[15], %r09[15], %r10[15], %r11[15], %r12[15]])
          ((poly z [%a00[15], %a01[15], %a02[15], %a03[15], %a04[15], %a05[15],
                    %a06[15], %a07[15], %a08[15], %a09[15], %a10[15], %a11[15], %a12[15]] *
            poly z [%b00[15], %b01[15], %b02[15], %b03[15], %b04[15], %b05[15],
                    %b06[15], %b07[15], %b08[15], %b09[15], %b10[15], %b11[15], %b12[15]]) +
           (poly z [%c00[15], %c01[15], %c02[15], %c03[15], %c04[15], %c05[15],
                    %c06[15], %c07[15], %c08[15], %c09[15], %c10[15], %c11[15], %c12[15]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[16], %r01[16], %r02[16], %r03[16], %r04[16], %r05[16],
                   %r06[16], %r07[16], %r08[16], %r09[16], %r10[16], %r11[16], %r12[16]])
          ((poly z [%a00[16], %a01[16], %a02[16], %a03[16], %a04[16], %a05[16],
                    %a06[16], %a07[16], %a08[16], %a09[16], %a10[16], %a11[16], %a12[16]] *
            poly z [%b00[16], %b01[16], %b02[16], %b03[16], %b04[16], %b05[16],
                    %b06[16], %b07[16], %b08[16], %b09[16], %b10[16], %b11[16], %b12[16]]) +
           (poly z [%c00[16], %c01[16], %c02[16], %c03[16], %c04[16], %c05[16],
                    %c06[16], %c07[16], %c08[16], %c09[16], %c10[16], %c11[16], %c12[16]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[17], %r01[17], %r02[17], %r03[17], %r04[17], %r05[17],
                   %r06[17], %r07[17], %r08[17], %r09[17], %r10[17], %r11[17], %r12[17]])
          ((poly z [%a00[17], %a01[17], %a02[17], %a03[17], %a04[17], %a05[17],
                    %a06[17], %a07[17], %a08[17], %a09[17], %a10[17], %a11[17], %a12[17]] *
            poly z [%b00[17], %b01[17], %b02[17], %b03[17], %b04[17], %b05[17],
                    %b06[17], %b07[17], %b08[17], %b09[17], %b10[17], %b11[17], %b12[17]]) +
           (poly z [%c00[17], %c01[17], %c02[17], %c03[17], %c04[17], %c05[17],
                    %c06[17], %c07[17], %c08[17], %c09[17], %c10[17], %c11[17], %c12[17]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[18], %r01[18], %r02[18], %r03[18], %r04[18], %r05[18],
                   %r06[18], %r07[18], %r08[18], %r09[18], %r10[18], %r11[18], %r12[18]])
          ((poly z [%a00[18], %a01[18], %a02[18], %a03[18], %a04[18], %a05[18],
                    %a06[18], %a07[18], %a08[18], %a09[18], %a10[18], %a11[18], %a12[18]] *
            poly z [%b00[18], %b01[18], %b02[18], %b03[18], %b04[18], %b05[18],
                    %b06[18], %b07[18], %b08[18], %b09[18], %b10[18], %b11[18], %b12[18]]) +
           (poly z [%c00[18], %c01[18], %c02[18], %c03[18], %c04[18], %c05[18],
                    %c06[18], %c07[18], %c08[18], %c09[18], %c10[18], %c11[18], %c12[18]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[19], %r01[19], %r02[19], %r03[19], %r04[19], %r05[19],
                   %r06[19], %r07[19], %r08[19], %r09[19], %r10[19], %r11[19], %r12[19]])
          ((poly z [%a00[19], %a01[19], %a02[19], %a03[19], %a04[19], %a05[19],
                    %a06[19], %a07[19], %a08[19], %a09[19], %a10[19], %a11[19], %a12[19]] *
            poly z [%b00[19], %b01[19], %b02[19], %b03[19], %b04[19], %b05[19],
                    %b06[19], %b07[19], %b08[19], %b09[19], %b10[19], %b11[19], %b12[19]]) +
           (poly z [%c00[19], %c01[19], %c02[19], %c03[19], %c04[19], %c05[19],
                    %c06[19], %c07[19], %c08[19], %c09[19], %c10[19], %c11[19], %c12[19]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[20], %r01[20], %r02[20], %r03[20], %r04[20], %r05[20],
                   %r06[20], %r07[20], %r08[20], %r09[20], %r10[20], %r11[20], %r12[20]])
          ((poly z [%a00[20], %a01[20], %a02[20], %a03[20], %a04[20], %a05[20],
                    %a06[20], %a07[20], %a08[20], %a09[20], %a10[20], %a11[20], %a12[20]] *
            poly z [%b00[20], %b01[20], %b02[20], %b03[20], %b04[20], %b05[20],
                    %b06[20], %b07[20], %b08[20], %b09[20], %b10[20], %b11[20], %b12[20]]) +
           (poly z [%c00[20], %c01[20], %c02[20], %c03[20], %c04[20], %c05[20],
                    %c06[20], %c07[20], %c08[20], %c09[20], %c10[20], %c11[20], %c12[20]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[21], %r01[21], %r02[21], %r03[21], %r04[21], %r05[21],
                   %r06[21], %r07[21], %r08[21], %r09[21], %r10[21], %r11[21], %r12[21]])
          ((poly z [%a00[21], %a01[21], %a02[21], %a03[21], %a04[21], %a05[21],
                    %a06[21], %a07[21], %a08[21], %a09[21], %a10[21], %a11[21], %a12[21]] *
            poly z [%b00[21], %b01[21], %b02[21], %b03[21], %b04[21], %b05[21],
                    %b06[21], %b07[21], %b08[21], %b09[21], %b10[21], %b11[21], %b12[21]]) +
           (poly z [%c00[21], %c01[21], %c02[21], %c03[21], %c04[21], %c05[21],
                    %c06[21], %c07[21], %c08[21], %c09[21], %c10[21], %c11[21], %c12[21]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[22], %r01[22], %r02[22], %r03[22], %r04[22], %r05[22],
                   %r06[22], %r07[22], %r08[22], %r09[22], %r10[22], %r11[22], %r12[22]])
          ((poly z [%a00[22], %a01[22], %a02[22], %a03[22], %a04[22], %a05[22],
                    %a06[22], %a07[22], %a08[22], %a09[22], %a10[22], %a11[22], %a12[22]] *
            poly z [%b00[22], %b01[22], %b02[22], %b03[22], %b04[22], %b05[22],
                    %b06[22], %b07[22], %b08[22], %b09[22], %b10[22], %b11[22], %b12[22]]) +
           (poly z [%c00[22], %c01[22], %c02[22], %c03[22], %c04[22], %c05[22],
                    %c06[22], %c07[22], %c08[22], %c09[22], %c10[22], %c11[22], %c12[22]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[23], %r01[23], %r02[23], %r03[23], %r04[23], %r05[23],
                   %r06[23], %r07[23], %r08[23], %r09[23], %r10[23], %r11[23], %r12[23]])
          ((poly z [%a00[23], %a01[23], %a02[23], %a03[23], %a04[23], %a05[23],
                    %a06[23], %a07[23], %a08[23], %a09[23], %a10[23], %a11[23], %a12[23]] *
            poly z [%b00[23], %b01[23], %b02[23], %b03[23], %b04[23], %b05[23],
                    %b06[23], %b07[23], %b08[23], %b09[23], %b10[23], %b11[23], %b12[23]]) +
           (poly z [%c00[23], %c01[23], %c02[23], %c03[23], %c04[23], %c05[23],
                    %c06[23], %c07[23], %c08[23], %c09[23], %c10[23], %c11[23], %c12[23]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[24], %r01[24], %r02[24], %r03[24], %r04[24], %r05[24],
                   %r06[24], %r07[24], %r08[24], %r09[24], %r10[24], %r11[24], %r12[24]])
          ((poly z [%a00[24], %a01[24], %a02[24], %a03[24], %a04[24], %a05[24],
                    %a06[24], %a07[24], %a08[24], %a09[24], %a10[24], %a11[24], %a12[24]] *
            poly z [%b00[24], %b01[24], %b02[24], %b03[24], %b04[24], %b05[24],
                    %b06[24], %b07[24], %b08[24], %b09[24], %b10[24], %b11[24], %b12[24]]) +
           (poly z [%c00[24], %c01[24], %c02[24], %c03[24], %c04[24], %c05[24],
                    %c06[24], %c07[24], %c08[24], %c09[24], %c10[24], %c11[24], %c12[24]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[25], %r01[25], %r02[25], %r03[25], %r04[25], %r05[25],
                   %r06[25], %r07[25], %r08[25], %r09[25], %r10[25], %r11[25], %r12[25]])
          ((poly z [%a00[25], %a01[25], %a02[25], %a03[25], %a04[25], %a05[25],
                    %a06[25], %a07[25], %a08[25], %a09[25], %a10[25], %a11[25], %a12[25]] *
            poly z [%b00[25], %b01[25], %b02[25], %b03[25], %b04[25], %b05[25],
                    %b06[25], %b07[25], %b08[25], %b09[25], %b10[25], %b11[25], %b12[25]]) +
           (poly z [%c00[25], %c01[25], %c02[25], %c03[25], %c04[25], %c05[25],
                    %c06[25], %c07[25], %c08[25], %c09[25], %c10[25], %c11[25], %c12[25]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[26], %r01[26], %r02[26], %r03[26], %r04[26], %r05[26],
                   %r06[26], %r07[26], %r08[26], %r09[26], %r10[26], %r11[26], %r12[26]])
          ((poly z [%a00[26], %a01[26], %a02[26], %a03[26], %a04[26], %a05[26],
                    %a06[26], %a07[26], %a08[26], %a09[26], %a10[26], %a11[26], %a12[26]] *
            poly z [%b00[26], %b01[26], %b02[26], %b03[26], %b04[26], %b05[26],
                    %b06[26], %b07[26], %b08[26], %b09[26], %b10[26], %b11[26], %b12[26]]) +
           (poly z [%c00[26], %c01[26], %c02[26], %c03[26], %c04[26], %c05[26],
                    %c06[26], %c07[26], %c08[26], %c09[26], %c10[26], %c11[26], %c12[26]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[27], %r01[27], %r02[27], %r03[27], %r04[27], %r05[27],
                   %r06[27], %r07[27], %r08[27], %r09[27], %r10[27], %r11[27], %r12[27]])
          ((poly z [%a00[27], %a01[27], %a02[27], %a03[27], %a04[27], %a05[27],
                    %a06[27], %a07[27], %a08[27], %a09[27], %a10[27], %a11[27], %a12[27]] *
            poly z [%b00[27], %b01[27], %b02[27], %b03[27], %b04[27], %b05[27],
                    %b06[27], %b07[27], %b08[27], %b09[27], %b10[27], %b11[27], %b12[27]]) +
           (poly z [%c00[27], %c01[27], %c02[27], %c03[27], %c04[27], %c05[27],
                    %c06[27], %c07[27], %c08[27], %c09[27], %c10[27], %c11[27], %c12[27]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[28], %r01[28], %r02[28], %r03[28], %r04[28], %r05[28],
                   %r06[28], %r07[28], %r08[28], %r09[28], %r10[28], %r11[28], %r12[28]])
          ((poly z [%a00[28], %a01[28], %a02[28], %a03[28], %a04[28], %a05[28],
                    %a06[28], %a07[28], %a08[28], %a09[28], %a10[28], %a11[28], %a12[28]] *
            poly z [%b00[28], %b01[28], %b02[28], %b03[28], %b04[28], %b05[28],
                    %b06[28], %b07[28], %b08[28], %b09[28], %b10[28], %b11[28], %b12[28]]) +
           (poly z [%c00[28], %c01[28], %c02[28], %c03[28], %c04[28], %c05[28],
                    %c06[28], %c07[28], %c08[28], %c09[28], %c10[28], %c11[28], %c12[28]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[29], %r01[29], %r02[29], %r03[29], %r04[29], %r05[29],
                   %r06[29], %r07[29], %r08[29], %r09[29], %r10[29], %r11[29], %r12[29]])
          ((poly z [%a00[29], %a01[29], %a02[29], %a03[29], %a04[29], %a05[29],
                    %a06[29], %a07[29], %a08[29], %a09[29], %a10[29], %a11[29], %a12[29]] *
            poly z [%b00[29], %b01[29], %b02[29], %b03[29], %b04[29], %b05[29],
                    %b06[29], %b07[29], %b08[29], %b09[29], %b10[29], %b11[29], %b12[29]]) +
           (poly z [%c00[29], %c01[29], %c02[29], %c03[29], %c04[29], %c05[29],
                    %c06[29], %c07[29], %c08[29], %c09[29], %c10[29], %c11[29], %c12[29]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[30], %r01[30], %r02[30], %r03[30], %r04[30], %r05[30],
                   %r06[30], %r07[30], %r08[30], %r09[30], %r10[30], %r11[30], %r12[30]])
          ((poly z [%a00[30], %a01[30], %a02[30], %a03[30], %a04[30], %a05[30],
                    %a06[30], %a07[30], %a08[30], %a09[30], %a10[30], %a11[30], %a12[30]] *
            poly z [%b00[30], %b01[30], %b02[30], %b03[30], %b04[30], %b05[30],
                    %b06[30], %b07[30], %b08[30], %b09[30], %b10[30], %b11[30], %b12[30]]) +
           (poly z [%c00[30], %c01[30], %c02[30], %c03[30], %c04[30], %c05[30],
                    %c06[30], %c07[30], %c08[30], %c09[30], %c10[30], %c11[30], %c12[30]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[31], %r01[31], %r02[31], %r03[31], %r04[31], %r05[31],
                   %r06[31], %r07[31], %r08[31], %r09[31], %r10[31], %r11[31], %r12[31]])
          ((poly z [%a00[31], %a01[31], %a02[31], %a03[31], %a04[31], %a05[31],
                    %a06[31], %a07[31], %a08[31], %a09[31], %a10[31], %a11[31], %a12[31]] *
            poly z [%b00[31], %b01[31], %b02[31], %b03[31], %b04[31], %b05[31],
                    %b06[31], %b07[31], %b08[31], %b09[31], %b10[31], %b11[31], %b12[31]]) +
           (poly z [%c00[31], %c01[31], %c02[31], %c03[31], %c04[31], %c05[31],
                    %c06[31], %c07[31], %c08[31], %c09[31], %c10[31], %c11[31], %c12[31]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[32], %r01[32], %r02[32], %r03[32], %r04[32], %r05[32],
                   %r06[32], %r07[32], %r08[32], %r09[32], %r10[32], %r11[32], %r12[32]])
          ((poly z [%a00[32], %a01[32], %a02[32], %a03[32], %a04[32], %a05[32],
                    %a06[32], %a07[32], %a08[32], %a09[32], %a10[32], %a11[32], %a12[32]] *
            poly z [%b00[32], %b01[32], %b02[32], %b03[32], %b04[32], %b05[32],
                    %b06[32], %b07[32], %b08[32], %b09[32], %b10[32], %b11[32], %b12[32]]) +
           (poly z [%c00[32], %c01[32], %c02[32], %c03[32], %c04[32], %c05[32],
                    %c06[32], %c07[32], %c08[32], %c09[32], %c10[32], %c11[32], %c12[32]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[33], %r01[33], %r02[33], %r03[33], %r04[33], %r05[33],
                   %r06[33], %r07[33], %r08[33], %r09[33], %r10[33], %r11[33], %r12[33]])
          ((poly z [%a00[33], %a01[33], %a02[33], %a03[33], %a04[33], %a05[33],
                    %a06[33], %a07[33], %a08[33], %a09[33], %a10[33], %a11[33], %a12[33]] *
            poly z [%b00[33], %b01[33], %b02[33], %b03[33], %b04[33], %b05[33],
                    %b06[33], %b07[33], %b08[33], %b09[33], %b10[33], %b11[33], %b12[33]]) +
           (poly z [%c00[33], %c01[33], %c02[33], %c03[33], %c04[33], %c05[33],
                    %c06[33], %c07[33], %c08[33], %c09[33], %c10[33], %c11[33], %c12[33]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[34], %r01[34], %r02[34], %r03[34], %r04[34], %r05[34],
                   %r06[34], %r07[34], %r08[34], %r09[34], %r10[34], %r11[34], %r12[34]])
          ((poly z [%a00[34], %a01[34], %a02[34], %a03[34], %a04[34], %a05[34],
                    %a06[34], %a07[34], %a08[34], %a09[34], %a10[34], %a11[34], %a12[34]] *
            poly z [%b00[34], %b01[34], %b02[34], %b03[34], %b04[34], %b05[34],
                    %b06[34], %b07[34], %b08[34], %b09[34], %b10[34], %b11[34], %b12[34]]) +
           (poly z [%c00[34], %c01[34], %c02[34], %c03[34], %c04[34], %c05[34],
                    %c06[34], %c07[34], %c08[34], %c09[34], %c10[34], %c11[34], %c12[34]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[35], %r01[35], %r02[35], %r03[35], %r04[35], %r05[35],
                   %r06[35], %r07[35], %r08[35], %r09[35], %r10[35], %r11[35], %r12[35]])
          ((poly z [%a00[35], %a01[35], %a02[35], %a03[35], %a04[35], %a05[35],
                    %a06[35], %a07[35], %a08[35], %a09[35], %a10[35], %a11[35], %a12[35]] *
            poly z [%b00[35], %b01[35], %b02[35], %b03[35], %b04[35], %b05[35],
                    %b06[35], %b07[35], %b08[35], %b09[35], %b10[35], %b11[35], %b12[35]]) +
           (poly z [%c00[35], %c01[35], %c02[35], %c03[35], %c04[35], %c05[35],
                    %c06[35], %c07[35], %c08[35], %c09[35], %c10[35], %c11[35], %c12[35]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[36], %r01[36], %r02[36], %r03[36], %r04[36], %r05[36],
                   %r06[36], %r07[36], %r08[36], %r09[36], %r10[36], %r11[36], %r12[36]])
          ((poly z [%a00[36], %a01[36], %a02[36], %a03[36], %a04[36], %a05[36],
                    %a06[36], %a07[36], %a08[36], %a09[36], %a10[36], %a11[36], %a12[36]] *
            poly z [%b00[36], %b01[36], %b02[36], %b03[36], %b04[36], %b05[36],
                    %b06[36], %b07[36], %b08[36], %b09[36], %b10[36], %b11[36], %b12[36]]) +
           (poly z [%c00[36], %c01[36], %c02[36], %c03[36], %c04[36], %c05[36],
                    %c06[36], %c07[36], %c08[36], %c09[36], %c10[36], %c11[36], %c12[36]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[37], %r01[37], %r02[37], %r03[37], %r04[37], %r05[37],
                   %r06[37], %r07[37], %r08[37], %r09[37], %r10[37], %r11[37], %r12[37]])
          ((poly z [%a00[37], %a01[37], %a02[37], %a03[37], %a04[37], %a05[37],
                    %a06[37], %a07[37], %a08[37], %a09[37], %a10[37], %a11[37], %a12[37]] *
            poly z [%b00[37], %b01[37], %b02[37], %b03[37], %b04[37], %b05[37],
                    %b06[37], %b07[37], %b08[37], %b09[37], %b10[37], %b11[37], %b12[37]]) +
           (poly z [%c00[37], %c01[37], %c02[37], %c03[37], %c04[37], %c05[37],
                    %c06[37], %c07[37], %c08[37], %c09[37], %c10[37], %c11[37], %c12[37]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[38], %r01[38], %r02[38], %r03[38], %r04[38], %r05[38],
                   %r06[38], %r07[38], %r08[38], %r09[38], %r10[38], %r11[38], %r12[38]])
          ((poly z [%a00[38], %a01[38], %a02[38], %a03[38], %a04[38], %a05[38],
                    %a06[38], %a07[38], %a08[38], %a09[38], %a10[38], %a11[38], %a12[38]] *
            poly z [%b00[38], %b01[38], %b02[38], %b03[38], %b04[38], %b05[38],
                    %b06[38], %b07[38], %b08[38], %b09[38], %b10[38], %b11[38], %b12[38]]) +
           (poly z [%c00[38], %c01[38], %c02[38], %c03[38], %c04[38], %c05[38],
                    %c06[38], %c07[38], %c08[38], %c09[38], %c10[38], %c11[38], %c12[38]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[39], %r01[39], %r02[39], %r03[39], %r04[39], %r05[39],
                   %r06[39], %r07[39], %r08[39], %r09[39], %r10[39], %r11[39], %r12[39]])
          ((poly z [%a00[39], %a01[39], %a02[39], %a03[39], %a04[39], %a05[39],
                    %a06[39], %a07[39], %a08[39], %a09[39], %a10[39], %a11[39], %a12[39]] *
            poly z [%b00[39], %b01[39], %b02[39], %b03[39], %b04[39], %b05[39],
                    %b06[39], %b07[39], %b08[39], %b09[39], %b10[39], %b11[39], %b12[39]]) +
           (poly z [%c00[39], %c01[39], %c02[39], %c03[39], %c04[39], %c05[39],
                    %c06[39], %c07[39], %c08[39], %c09[39], %c10[39], %c11[39], %c12[39]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[40], %r01[40], %r02[40], %r03[40], %r04[40], %r05[40],
                   %r06[40], %r07[40], %r08[40], %r09[40], %r10[40], %r11[40], %r12[40]])
          ((poly z [%a00[40], %a01[40], %a02[40], %a03[40], %a04[40], %a05[40],
                    %a06[40], %a07[40], %a08[40], %a09[40], %a10[40], %a11[40], %a12[40]] *
            poly z [%b00[40], %b01[40], %b02[40], %b03[40], %b04[40], %b05[40],
                    %b06[40], %b07[40], %b08[40], %b09[40], %b10[40], %b11[40], %b12[40]]) +
           (poly z [%c00[40], %c01[40], %c02[40], %c03[40], %c04[40], %c05[40],
                    %c06[40], %c07[40], %c08[40], %c09[40], %c10[40], %c11[40], %c12[40]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[41], %r01[41], %r02[41], %r03[41], %r04[41], %r05[41],
                   %r06[41], %r07[41], %r08[41], %r09[41], %r10[41], %r11[41], %r12[41]])
          ((poly z [%a00[41], %a01[41], %a02[41], %a03[41], %a04[41], %a05[41],
                    %a06[41], %a07[41], %a08[41], %a09[41], %a10[41], %a11[41], %a12[41]] *
            poly z [%b00[41], %b01[41], %b02[41], %b03[41], %b04[41], %b05[41],
                    %b06[41], %b07[41], %b08[41], %b09[41], %b10[41], %b11[41], %b12[41]]) +
           (poly z [%c00[41], %c01[41], %c02[41], %c03[41], %c04[41], %c05[41],
                    %c06[41], %c07[41], %c08[41], %c09[41], %c10[41], %c11[41], %c12[41]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[42], %r01[42], %r02[42], %r03[42], %r04[42], %r05[42],
                   %r06[42], %r07[42], %r08[42], %r09[42], %r10[42], %r11[42], %r12[42]])
          ((poly z [%a00[42], %a01[42], %a02[42], %a03[42], %a04[42], %a05[42],
                    %a06[42], %a07[42], %a08[42], %a09[42], %a10[42], %a11[42], %a12[42]] *
            poly z [%b00[42], %b01[42], %b02[42], %b03[42], %b04[42], %b05[42],
                    %b06[42], %b07[42], %b08[42], %b09[42], %b10[42], %b11[42], %b12[42]]) +
           (poly z [%c00[42], %c01[42], %c02[42], %c03[42], %c04[42], %c05[42],
                    %c06[42], %c07[42], %c08[42], %c09[42], %c10[42], %c11[42], %c12[42]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[43], %r01[43], %r02[43], %r03[43], %r04[43], %r05[43],
                   %r06[43], %r07[43], %r08[43], %r09[43], %r10[43], %r11[43], %r12[43]])
          ((poly z [%a00[43], %a01[43], %a02[43], %a03[43], %a04[43], %a05[43],
                    %a06[43], %a07[43], %a08[43], %a09[43], %a10[43], %a11[43], %a12[43]] *
            poly z [%b00[43], %b01[43], %b02[43], %b03[43], %b04[43], %b05[43],
                    %b06[43], %b07[43], %b08[43], %b09[43], %b10[43], %b11[43], %b12[43]]) +
           (poly z [%c00[43], %c01[43], %c02[43], %c03[43], %c04[43], %c05[43],
                    %c06[43], %c07[43], %c08[43], %c09[43], %c10[43], %c11[43], %c12[43]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[44], %r01[44], %r02[44], %r03[44], %r04[44], %r05[44],
                   %r06[44], %r07[44], %r08[44], %r09[44], %r10[44], %r11[44], %r12[44]])
          ((poly z [%a00[44], %a01[44], %a02[44], %a03[44], %a04[44], %a05[44],
                    %a06[44], %a07[44], %a08[44], %a09[44], %a10[44], %a11[44], %a12[44]] *
            poly z [%b00[44], %b01[44], %b02[44], %b03[44], %b04[44], %b05[44],
                    %b06[44], %b07[44], %b08[44], %b09[44], %b10[44], %b11[44], %b12[44]]) +
           (poly z [%c00[44], %c01[44], %c02[44], %c03[44], %c04[44], %c05[44],
                    %c06[44], %c07[44], %c08[44], %c09[44], %c10[44], %c11[44], %c12[44]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[45], %r01[45], %r02[45], %r03[45], %r04[45], %r05[45],
                   %r06[45], %r07[45], %r08[45], %r09[45], %r10[45], %r11[45], %r12[45]])
          ((poly z [%a00[45], %a01[45], %a02[45], %a03[45], %a04[45], %a05[45],
                    %a06[45], %a07[45], %a08[45], %a09[45], %a10[45], %a11[45], %a12[45]] *
            poly z [%b00[45], %b01[45], %b02[45], %b03[45], %b04[45], %b05[45],
                    %b06[45], %b07[45], %b08[45], %b09[45], %b10[45], %b11[45], %b12[45]]) +
           (poly z [%c00[45], %c01[45], %c02[45], %c03[45], %c04[45], %c05[45],
                    %c06[45], %c07[45], %c08[45], %c09[45], %c10[45], %c11[45], %c12[45]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[46], %r01[46], %r02[46], %r03[46], %r04[46], %r05[46],
                   %r06[46], %r07[46], %r08[46], %r09[46], %r10[46], %r11[46], %r12[46]])
          ((poly z [%a00[46], %a01[46], %a02[46], %a03[46], %a04[46], %a05[46],
                    %a06[46], %a07[46], %a08[46], %a09[46], %a10[46], %a11[46], %a12[46]] *
            poly z [%b00[46], %b01[46], %b02[46], %b03[46], %b04[46], %b05[46],
                    %b06[46], %b07[46], %b08[46], %b09[46], %b10[46], %b11[46], %b12[46]]) +
           (poly z [%c00[46], %c01[46], %c02[46], %c03[46], %c04[46], %c05[46],
                    %c06[46], %c07[46], %c08[46], %c09[46], %c10[46], %c11[46], %c12[46]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[47], %r01[47], %r02[47], %r03[47], %r04[47], %r05[47],
                   %r06[47], %r07[47], %r08[47], %r09[47], %r10[47], %r11[47], %r12[47]])
          ((poly z [%a00[47], %a01[47], %a02[47], %a03[47], %a04[47], %a05[47],
                    %a06[47], %a07[47], %a08[47], %a09[47], %a10[47], %a11[47], %a12[47]] *
            poly z [%b00[47], %b01[47], %b02[47], %b03[47], %b04[47], %b05[47],
                    %b06[47], %b07[47], %b08[47], %b09[47], %b10[47], %b11[47], %b12[47]]) +
           (poly z [%c00[47], %c01[47], %c02[47], %c03[47], %c04[47], %c05[47],
                    %c06[47], %c07[47], %c08[47], %c09[47], %c10[47], %c11[47], %c12[47]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[48], %r01[48], %r02[48], %r03[48], %r04[48], %r05[48],
                   %r06[48], %r07[48], %r08[48], %r09[48], %r10[48], %r11[48], %r12[48]])
          ((poly z [%a00[48], %a01[48], %a02[48], %a03[48], %a04[48], %a05[48],
                    %a06[48], %a07[48], %a08[48], %a09[48], %a10[48], %a11[48], %a12[48]] *
            poly z [%b00[48], %b01[48], %b02[48], %b03[48], %b04[48], %b05[48],
                    %b06[48], %b07[48], %b08[48], %b09[48], %b10[48], %b11[48], %b12[48]]) +
           (poly z [%c00[48], %c01[48], %c02[48], %c03[48], %c04[48], %c05[48],
                    %c06[48], %c07[48], %c08[48], %c09[48], %c10[48], %c11[48], %c12[48]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[49], %r01[49], %r02[49], %r03[49], %r04[49], %r05[49],
                   %r06[49], %r07[49], %r08[49], %r09[49], %r10[49], %r11[49], %r12[49]])
          ((poly z [%a00[49], %a01[49], %a02[49], %a03[49], %a04[49], %a05[49],
                    %a06[49], %a07[49], %a08[49], %a09[49], %a10[49], %a11[49], %a12[49]] *
            poly z [%b00[49], %b01[49], %b02[49], %b03[49], %b04[49], %b05[49],
                    %b06[49], %b07[49], %b08[49], %b09[49], %b10[49], %b11[49], %b12[49]]) +
           (poly z [%c00[49], %c01[49], %c02[49], %c03[49], %c04[49], %c05[49],
                    %c06[49], %c07[49], %c08[49], %c09[49], %c10[49], %c11[49], %c12[49]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[50], %r01[50], %r02[50], %r03[50], %r04[50], %r05[50],
                   %r06[50], %r07[50], %r08[50], %r09[50], %r10[50], %r11[50], %r12[50]])
          ((poly z [%a00[50], %a01[50], %a02[50], %a03[50], %a04[50], %a05[50],
                    %a06[50], %a07[50], %a08[50], %a09[50], %a10[50], %a11[50], %a12[50]] *
            poly z [%b00[50], %b01[50], %b02[50], %b03[50], %b04[50], %b05[50],
                    %b06[50], %b07[50], %b08[50], %b09[50], %b10[50], %b11[50], %b12[50]]) +
           (poly z [%c00[50], %c01[50], %c02[50], %c03[50], %c04[50], %c05[50],
                    %c06[50], %c07[50], %c08[50], %c09[50], %c10[50], %c11[50], %c12[50]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[51], %r01[51], %r02[51], %r03[51], %r04[51], %r05[51],
                   %r06[51], %r07[51], %r08[51], %r09[51], %r10[51], %r11[51], %r12[51]])
          ((poly z [%a00[51], %a01[51], %a02[51], %a03[51], %a04[51], %a05[51],
                    %a06[51], %a07[51], %a08[51], %a09[51], %a10[51], %a11[51], %a12[51]] *
            poly z [%b00[51], %b01[51], %b02[51], %b03[51], %b04[51], %b05[51],
                    %b06[51], %b07[51], %b08[51], %b09[51], %b10[51], %b11[51], %b12[51]]) +
           (poly z [%c00[51], %c01[51], %c02[51], %c03[51], %c04[51], %c05[51],
                    %c06[51], %c07[51], %c08[51], %c09[51], %c10[51], %c11[51], %c12[51]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[52], %r01[52], %r02[52], %r03[52], %r04[52], %r05[52],
                   %r06[52], %r07[52], %r08[52], %r09[52], %r10[52], %r11[52], %r12[52]])
          ((poly z [%a00[52], %a01[52], %a02[52], %a03[52], %a04[52], %a05[52],
                    %a06[52], %a07[52], %a08[52], %a09[52], %a10[52], %a11[52], %a12[52]] *
            poly z [%b00[52], %b01[52], %b02[52], %b03[52], %b04[52], %b05[52],
                    %b06[52], %b07[52], %b08[52], %b09[52], %b10[52], %b11[52], %b12[52]]) +
           (poly z [%c00[52], %c01[52], %c02[52], %c03[52], %c04[52], %c05[52],
                    %c06[52], %c07[52], %c08[52], %c09[52], %c10[52], %c11[52], %c12[52]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[53], %r01[53], %r02[53], %r03[53], %r04[53], %r05[53],
                   %r06[53], %r07[53], %r08[53], %r09[53], %r10[53], %r11[53], %r12[53]])
          ((poly z [%a00[53], %a01[53], %a02[53], %a03[53], %a04[53], %a05[53],
                    %a06[53], %a07[53], %a08[53], %a09[53], %a10[53], %a11[53], %a12[53]] *
            poly z [%b00[53], %b01[53], %b02[53], %b03[53], %b04[53], %b05[53],
                    %b06[53], %b07[53], %b08[53], %b09[53], %b10[53], %b11[53], %b12[53]]) +
           (poly z [%c00[53], %c01[53], %c02[53], %c03[53], %c04[53], %c05[53],
                    %c06[53], %c07[53], %c08[53], %c09[53], %c10[53], %c11[53], %c12[53]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[54], %r01[54], %r02[54], %r03[54], %r04[54], %r05[54],
                   %r06[54], %r07[54], %r08[54], %r09[54], %r10[54], %r11[54], %r12[54]])
          ((poly z [%a00[54], %a01[54], %a02[54], %a03[54], %a04[54], %a05[54],
                    %a06[54], %a07[54], %a08[54], %a09[54], %a10[54], %a11[54], %a12[54]] *
            poly z [%b00[54], %b01[54], %b02[54], %b03[54], %b04[54], %b05[54],
                    %b06[54], %b07[54], %b08[54], %b09[54], %b10[54], %b11[54], %b12[54]]) +
           (poly z [%c00[54], %c01[54], %c02[54], %c03[54], %c04[54], %c05[54],
                    %c06[54], %c07[54], %c08[54], %c09[54], %c10[54], %c11[54], %c12[54]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[55], %r01[55], %r02[55], %r03[55], %r04[55], %r05[55],
                   %r06[55], %r07[55], %r08[55], %r09[55], %r10[55], %r11[55], %r12[55]])
          ((poly z [%a00[55], %a01[55], %a02[55], %a03[55], %a04[55], %a05[55],
                    %a06[55], %a07[55], %a08[55], %a09[55], %a10[55], %a11[55], %a12[55]] *
            poly z [%b00[55], %b01[55], %b02[55], %b03[55], %b04[55], %b05[55],
                    %b06[55], %b07[55], %b08[55], %b09[55], %b10[55], %b11[55], %b12[55]]) +
           (poly z [%c00[55], %c01[55], %c02[55], %c03[55], %c04[55], %c05[55],
                    %c06[55], %c07[55], %c08[55], %c09[55], %c10[55], %c11[55], %c12[55]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[56], %r01[56], %r02[56], %r03[56], %r04[56], %r05[56],
                   %r06[56], %r07[56], %r08[56], %r09[56], %r10[56], %r11[56], %r12[56]])
          ((poly z [%a00[56], %a01[56], %a02[56], %a03[56], %a04[56], %a05[56],
                    %a06[56], %a07[56], %a08[56], %a09[56], %a10[56], %a11[56], %a12[56]] *
            poly z [%b00[56], %b01[56], %b02[56], %b03[56], %b04[56], %b05[56],
                    %b06[56], %b07[56], %b08[56], %b09[56], %b10[56], %b11[56], %b12[56]]) +
           (poly z [%c00[56], %c01[56], %c02[56], %c03[56], %c04[56], %c05[56],
                    %c06[56], %c07[56], %c08[56], %c09[56], %c10[56], %c11[56], %c12[56]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[57], %r01[57], %r02[57], %r03[57], %r04[57], %r05[57],
                   %r06[57], %r07[57], %r08[57], %r09[57], %r10[57], %r11[57], %r12[57]])
          ((poly z [%a00[57], %a01[57], %a02[57], %a03[57], %a04[57], %a05[57],
                    %a06[57], %a07[57], %a08[57], %a09[57], %a10[57], %a11[57], %a12[57]] *
            poly z [%b00[57], %b01[57], %b02[57], %b03[57], %b04[57], %b05[57],
                    %b06[57], %b07[57], %b08[57], %b09[57], %b10[57], %b11[57], %b12[57]]) +
           (poly z [%c00[57], %c01[57], %c02[57], %c03[57], %c04[57], %c05[57],
                    %c06[57], %c07[57], %c08[57], %c09[57], %c10[57], %c11[57], %c12[57]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[58], %r01[58], %r02[58], %r03[58], %r04[58], %r05[58],
                   %r06[58], %r07[58], %r08[58], %r09[58], %r10[58], %r11[58], %r12[58]])
          ((poly z [%a00[58], %a01[58], %a02[58], %a03[58], %a04[58], %a05[58],
                    %a06[58], %a07[58], %a08[58], %a09[58], %a10[58], %a11[58], %a12[58]] *
            poly z [%b00[58], %b01[58], %b02[58], %b03[58], %b04[58], %b05[58],
                    %b06[58], %b07[58], %b08[58], %b09[58], %b10[58], %b11[58], %b12[58]]) +
           (poly z [%c00[58], %c01[58], %c02[58], %c03[58], %c04[58], %c05[58],
                    %c06[58], %c07[58], %c08[58], %c09[58], %c10[58], %c11[58], %c12[58]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[59], %r01[59], %r02[59], %r03[59], %r04[59], %r05[59],
                   %r06[59], %r07[59], %r08[59], %r09[59], %r10[59], %r11[59], %r12[59]])
          ((poly z [%a00[59], %a01[59], %a02[59], %a03[59], %a04[59], %a05[59],
                    %a06[59], %a07[59], %a08[59], %a09[59], %a10[59], %a11[59], %a12[59]] *
            poly z [%b00[59], %b01[59], %b02[59], %b03[59], %b04[59], %b05[59],
                    %b06[59], %b07[59], %b08[59], %b09[59], %b10[59], %b11[59], %b12[59]]) +
           (poly z [%c00[59], %c01[59], %c02[59], %c03[59], %c04[59], %c05[59],
                    %c06[59], %c07[59], %c08[59], %c09[59], %c10[59], %c11[59], %c12[59]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[60], %r01[60], %r02[60], %r03[60], %r04[60], %r05[60],
                   %r06[60], %r07[60], %r08[60], %r09[60], %r10[60], %r11[60], %r12[60]])
          ((poly z [%a00[60], %a01[60], %a02[60], %a03[60], %a04[60], %a05[60],
                    %a06[60], %a07[60], %a08[60], %a09[60], %a10[60], %a11[60], %a12[60]] *
            poly z [%b00[60], %b01[60], %b02[60], %b03[60], %b04[60], %b05[60],
                    %b06[60], %b07[60], %b08[60], %b09[60], %b10[60], %b11[60], %b12[60]]) +
           (poly z [%c00[60], %c01[60], %c02[60], %c03[60], %c04[60], %c05[60],
                    %c06[60], %c07[60], %c08[60], %c09[60], %c10[60], %c11[60], %c12[60]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[61], %r01[61], %r02[61], %r03[61], %r04[61], %r05[61],
                   %r06[61], %r07[61], %r08[61], %r09[61], %r10[61], %r11[61], %r12[61]])
          ((poly z [%a00[61], %a01[61], %a02[61], %a03[61], %a04[61], %a05[61],
                    %a06[61], %a07[61], %a08[61], %a09[61], %a10[61], %a11[61], %a12[61]] *
            poly z [%b00[61], %b01[61], %b02[61], %b03[61], %b04[61], %b05[61],
                    %b06[61], %b07[61], %b08[61], %b09[61], %b10[61], %b11[61], %b12[61]]) +
           (poly z [%c00[61], %c01[61], %c02[61], %c03[61], %c04[61], %c05[61],
                    %c06[61], %c07[61], %c08[61], %c09[61], %c10[61], %c11[61], %c12[61]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[62], %r01[62], %r02[62], %r03[62], %r04[62], %r05[62],
                   %r06[62], %r07[62], %r08[62], %r09[62], %r10[62], %r11[62], %r12[62]])
          ((poly z [%a00[62], %a01[62], %a02[62], %a03[62], %a04[62], %a05[62],
                    %a06[62], %a07[62], %a08[62], %a09[62], %a10[62], %a11[62], %a12[62]] *
            poly z [%b00[62], %b01[62], %b02[62], %b03[62], %b04[62], %b05[62],
                    %b06[62], %b07[62], %b08[62], %b09[62], %b10[62], %b11[62], %b12[62]]) +
           (poly z [%c00[62], %c01[62], %c02[62], %c03[62], %c04[62], %c05[62],
                    %c06[62], %c07[62], %c08[62], %c09[62], %c10[62], %c11[62], %c12[62]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[63], %r01[63], %r02[63], %r03[63], %r04[63], %r05[63],
                   %r06[63], %r07[63], %r08[63], %r09[63], %r10[63], %r11[63], %r12[63]])
          ((poly z [%a00[63], %a01[63], %a02[63], %a03[63], %a04[63], %a05[63],
                    %a06[63], %a07[63], %a08[63], %a09[63], %a10[63], %a11[63], %a12[63]] *
            poly z [%b00[63], %b01[63], %b02[63], %b03[63], %b04[63], %b05[63],
                    %b06[63], %b07[63], %b08[63], %b09[63], %b10[63], %b11[63], %b12[63]]) +
           (poly z [%c00[63], %c01[63], %c02[63], %c03[63], %c04[63], %c05[63],
                    %c06[63], %c07[63], %c08[63], %c09[63], %c10[63], %c11[63], %c12[63]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[64], %r01[64], %r02[64], %r03[64], %r04[64], %r05[64],
                   %r06[64], %r07[64], %r08[64], %r09[64], %r10[64], %r11[64], %r12[64]])
          ((poly z [%a00[64], %a01[64], %a02[64], %a03[64], %a04[64], %a05[64],
                    %a06[64], %a07[64], %a08[64], %a09[64], %a10[64], %a11[64], %a12[64]] *
            poly z [%b00[64], %b01[64], %b02[64], %b03[64], %b04[64], %b05[64],
                    %b06[64], %b07[64], %b08[64], %b09[64], %b10[64], %b11[64], %b12[64]]) +
           (poly z [%c00[64], %c01[64], %c02[64], %c03[64], %c04[64], %c05[64],
                    %c06[64], %c07[64], %c08[64], %c09[64], %c10[64], %c11[64], %c12[64]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[65], %r01[65], %r02[65], %r03[65], %r04[65], %r05[65],
                   %r06[65], %r07[65], %r08[65], %r09[65], %r10[65], %r11[65], %r12[65]])
          ((poly z [%a00[65], %a01[65], %a02[65], %a03[65], %a04[65], %a05[65],
                    %a06[65], %a07[65], %a08[65], %a09[65], %a10[65], %a11[65], %a12[65]] *
            poly z [%b00[65], %b01[65], %b02[65], %b03[65], %b04[65], %b05[65],
                    %b06[65], %b07[65], %b08[65], %b09[65], %b10[65], %b11[65], %b12[65]]) +
           (poly z [%c00[65], %c01[65], %c02[65], %c03[65], %c04[65], %c05[65],
                    %c06[65], %c07[65], %c08[65], %c09[65], %c10[65], %c11[65], %c12[65]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[66], %r01[66], %r02[66], %r03[66], %r04[66], %r05[66],
                   %r06[66], %r07[66], %r08[66], %r09[66], %r10[66], %r11[66], %r12[66]])
          ((poly z [%a00[66], %a01[66], %a02[66], %a03[66], %a04[66], %a05[66],
                    %a06[66], %a07[66], %a08[66], %a09[66], %a10[66], %a11[66], %a12[66]] *
            poly z [%b00[66], %b01[66], %b02[66], %b03[66], %b04[66], %b05[66],
                    %b06[66], %b07[66], %b08[66], %b09[66], %b10[66], %b11[66], %b12[66]]) +
           (poly z [%c00[66], %c01[66], %c02[66], %c03[66], %c04[66], %c05[66],
                    %c06[66], %c07[66], %c08[66], %c09[66], %c10[66], %c11[66], %c12[66]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[67], %r01[67], %r02[67], %r03[67], %r04[67], %r05[67],
                   %r06[67], %r07[67], %r08[67], %r09[67], %r10[67], %r11[67], %r12[67]])
          ((poly z [%a00[67], %a01[67], %a02[67], %a03[67], %a04[67], %a05[67],
                    %a06[67], %a07[67], %a08[67], %a09[67], %a10[67], %a11[67], %a12[67]] *
            poly z [%b00[67], %b01[67], %b02[67], %b03[67], %b04[67], %b05[67],
                    %b06[67], %b07[67], %b08[67], %b09[67], %b10[67], %b11[67], %b12[67]]) +
           (poly z [%c00[67], %c01[67], %c02[67], %c03[67], %c04[67], %c05[67],
                    %c06[67], %c07[67], %c08[67], %c09[67], %c10[67], %c11[67], %c12[67]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[68], %r01[68], %r02[68], %r03[68], %r04[68], %r05[68],
                   %r06[68], %r07[68], %r08[68], %r09[68], %r10[68], %r11[68], %r12[68]])
          ((poly z [%a00[68], %a01[68], %a02[68], %a03[68], %a04[68], %a05[68],
                    %a06[68], %a07[68], %a08[68], %a09[68], %a10[68], %a11[68], %a12[68]] *
            poly z [%b00[68], %b01[68], %b02[68], %b03[68], %b04[68], %b05[68],
                    %b06[68], %b07[68], %b08[68], %b09[68], %b10[68], %b11[68], %b12[68]]) +
           (poly z [%c00[68], %c01[68], %c02[68], %c03[68], %c04[68], %c05[68],
                    %c06[68], %c07[68], %c08[68], %c09[68], %c10[68], %c11[68], %c12[68]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[69], %r01[69], %r02[69], %r03[69], %r04[69], %r05[69],
                   %r06[69], %r07[69], %r08[69], %r09[69], %r10[69], %r11[69], %r12[69]])
          ((poly z [%a00[69], %a01[69], %a02[69], %a03[69], %a04[69], %a05[69],
                    %a06[69], %a07[69], %a08[69], %a09[69], %a10[69], %a11[69], %a12[69]] *
            poly z [%b00[69], %b01[69], %b02[69], %b03[69], %b04[69], %b05[69],
                    %b06[69], %b07[69], %b08[69], %b09[69], %b10[69], %b11[69], %b12[69]]) +
           (poly z [%c00[69], %c01[69], %c02[69], %c03[69], %c04[69], %c05[69],
                    %c06[69], %c07[69], %c08[69], %c09[69], %c10[69], %c11[69], %c12[69]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[70], %r01[70], %r02[70], %r03[70], %r04[70], %r05[70],
                   %r06[70], %r07[70], %r08[70], %r09[70], %r10[70], %r11[70], %r12[70]])
          ((poly z [%a00[70], %a01[70], %a02[70], %a03[70], %a04[70], %a05[70],
                    %a06[70], %a07[70], %a08[70], %a09[70], %a10[70], %a11[70], %a12[70]] *
            poly z [%b00[70], %b01[70], %b02[70], %b03[70], %b04[70], %b05[70],
                    %b06[70], %b07[70], %b08[70], %b09[70], %b10[70], %b11[70], %b12[70]]) +
           (poly z [%c00[70], %c01[70], %c02[70], %c03[70], %c04[70], %c05[70],
                    %c06[70], %c07[70], %c08[70], %c09[70], %c10[70], %c11[70], %c12[70]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[71], %r01[71], %r02[71], %r03[71], %r04[71], %r05[71],
                   %r06[71], %r07[71], %r08[71], %r09[71], %r10[71], %r11[71], %r12[71]])
          ((poly z [%a00[71], %a01[71], %a02[71], %a03[71], %a04[71], %a05[71],
                    %a06[71], %a07[71], %a08[71], %a09[71], %a10[71], %a11[71], %a12[71]] *
            poly z [%b00[71], %b01[71], %b02[71], %b03[71], %b04[71], %b05[71],
                    %b06[71], %b07[71], %b08[71], %b09[71], %b10[71], %b11[71], %b12[71]]) +
           (poly z [%c00[71], %c01[71], %c02[71], %c03[71], %c04[71], %c05[71],
                    %c06[71], %c07[71], %c08[71], %c09[71], %c10[71], %c11[71], %c12[71]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[72], %r01[72], %r02[72], %r03[72], %r04[72], %r05[72],
                   %r06[72], %r07[72], %r08[72], %r09[72], %r10[72], %r11[72], %r12[72]])
          ((poly z [%a00[72], %a01[72], %a02[72], %a03[72], %a04[72], %a05[72],
                    %a06[72], %a07[72], %a08[72], %a09[72], %a10[72], %a11[72], %a12[72]] *
            poly z [%b00[72], %b01[72], %b02[72], %b03[72], %b04[72], %b05[72],
                    %b06[72], %b07[72], %b08[72], %b09[72], %b10[72], %b11[72], %b12[72]]) +
           (poly z [%c00[72], %c01[72], %c02[72], %c03[72], %c04[72], %c05[72],
                    %c06[72], %c07[72], %c08[72], %c09[72], %c10[72], %c11[72], %c12[72]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[73], %r01[73], %r02[73], %r03[73], %r04[73], %r05[73],
                   %r06[73], %r07[73], %r08[73], %r09[73], %r10[73], %r11[73], %r12[73]])
          ((poly z [%a00[73], %a01[73], %a02[73], %a03[73], %a04[73], %a05[73],
                    %a06[73], %a07[73], %a08[73], %a09[73], %a10[73], %a11[73], %a12[73]] *
            poly z [%b00[73], %b01[73], %b02[73], %b03[73], %b04[73], %b05[73],
                    %b06[73], %b07[73], %b08[73], %b09[73], %b10[73], %b11[73], %b12[73]]) +
           (poly z [%c00[73], %c01[73], %c02[73], %c03[73], %c04[73], %c05[73],
                    %c06[73], %c07[73], %c08[73], %c09[73], %c10[73], %c11[73], %c12[73]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[74], %r01[74], %r02[74], %r03[74], %r04[74], %r05[74],
                   %r06[74], %r07[74], %r08[74], %r09[74], %r10[74], %r11[74], %r12[74]])
          ((poly z [%a00[74], %a01[74], %a02[74], %a03[74], %a04[74], %a05[74],
                    %a06[74], %a07[74], %a08[74], %a09[74], %a10[74], %a11[74], %a12[74]] *
            poly z [%b00[74], %b01[74], %b02[74], %b03[74], %b04[74], %b05[74],
                    %b06[74], %b07[74], %b08[74], %b09[74], %b10[74], %b11[74], %b12[74]]) +
           (poly z [%c00[74], %c01[74], %c02[74], %c03[74], %c04[74], %c05[74],
                    %c06[74], %c07[74], %c08[74], %c09[74], %c10[74], %c11[74], %c12[74]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[75], %r01[75], %r02[75], %r03[75], %r04[75], %r05[75],
                   %r06[75], %r07[75], %r08[75], %r09[75], %r10[75], %r11[75], %r12[75]])
          ((poly z [%a00[75], %a01[75], %a02[75], %a03[75], %a04[75], %a05[75],
                    %a06[75], %a07[75], %a08[75], %a09[75], %a10[75], %a11[75], %a12[75]] *
            poly z [%b00[75], %b01[75], %b02[75], %b03[75], %b04[75], %b05[75],
                    %b06[75], %b07[75], %b08[75], %b09[75], %b10[75], %b11[75], %b12[75]]) +
           (poly z [%c00[75], %c01[75], %c02[75], %c03[75], %c04[75], %c05[75],
                    %c06[75], %c07[75], %c08[75], %c09[75], %c10[75], %c11[75], %c12[75]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[76], %r01[76], %r02[76], %r03[76], %r04[76], %r05[76],
                   %r06[76], %r07[76], %r08[76], %r09[76], %r10[76], %r11[76], %r12[76]])
          ((poly z [%a00[76], %a01[76], %a02[76], %a03[76], %a04[76], %a05[76],
                    %a06[76], %a07[76], %a08[76], %a09[76], %a10[76], %a11[76], %a12[76]] *
            poly z [%b00[76], %b01[76], %b02[76], %b03[76], %b04[76], %b05[76],
                    %b06[76], %b07[76], %b08[76], %b09[76], %b10[76], %b11[76], %b12[76]]) +
           (poly z [%c00[76], %c01[76], %c02[76], %c03[76], %c04[76], %c05[76],
                    %c06[76], %c07[76], %c08[76], %c09[76], %c10[76], %c11[76], %c12[76]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[77], %r01[77], %r02[77], %r03[77], %r04[77], %r05[77],
                   %r06[77], %r07[77], %r08[77], %r09[77], %r10[77], %r11[77], %r12[77]])
          ((poly z [%a00[77], %a01[77], %a02[77], %a03[77], %a04[77], %a05[77],
                    %a06[77], %a07[77], %a08[77], %a09[77], %a10[77], %a11[77], %a12[77]] *
            poly z [%b00[77], %b01[77], %b02[77], %b03[77], %b04[77], %b05[77],
                    %b06[77], %b07[77], %b08[77], %b09[77], %b10[77], %b11[77], %b12[77]]) +
           (poly z [%c00[77], %c01[77], %c02[77], %c03[77], %c04[77], %c05[77],
                    %c06[77], %c07[77], %c08[77], %c09[77], %c10[77], %c11[77], %c12[77]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[78], %r01[78], %r02[78], %r03[78], %r04[78], %r05[78],
                   %r06[78], %r07[78], %r08[78], %r09[78], %r10[78], %r11[78], %r12[78]])
          ((poly z [%a00[78], %a01[78], %a02[78], %a03[78], %a04[78], %a05[78],
                    %a06[78], %a07[78], %a08[78], %a09[78], %a10[78], %a11[78], %a12[78]] *
            poly z [%b00[78], %b01[78], %b02[78], %b03[78], %b04[78], %b05[78],
                    %b06[78], %b07[78], %b08[78], %b09[78], %b10[78], %b11[78], %b12[78]]) +
           (poly z [%c00[78], %c01[78], %c02[78], %c03[78], %c04[78], %c05[78],
                    %c06[78], %c07[78], %c08[78], %c09[78], %c10[78], %c11[78], %c12[78]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[79], %r01[79], %r02[79], %r03[79], %r04[79], %r05[79],
                   %r06[79], %r07[79], %r08[79], %r09[79], %r10[79], %r11[79], %r12[79]])
          ((poly z [%a00[79], %a01[79], %a02[79], %a03[79], %a04[79], %a05[79],
                    %a06[79], %a07[79], %a08[79], %a09[79], %a10[79], %a11[79], %a12[79]] *
            poly z [%b00[79], %b01[79], %b02[79], %b03[79], %b04[79], %b05[79],
                    %b06[79], %b07[79], %b08[79], %b09[79], %b10[79], %b11[79], %b12[79]]) +
           (poly z [%c00[79], %c01[79], %c02[79], %c03[79], %c04[79], %c05[79],
                    %c06[79], %c07[79], %c08[79], %c09[79], %c10[79], %c11[79], %c12[79]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[80], %r01[80], %r02[80], %r03[80], %r04[80], %r05[80],
                   %r06[80], %r07[80], %r08[80], %r09[80], %r10[80], %r11[80], %r12[80]])
          ((poly z [%a00[80], %a01[80], %a02[80], %a03[80], %a04[80], %a05[80],
                    %a06[80], %a07[80], %a08[80], %a09[80], %a10[80], %a11[80], %a12[80]] *
            poly z [%b00[80], %b01[80], %b02[80], %b03[80], %b04[80], %b05[80],
                    %b06[80], %b07[80], %b08[80], %b09[80], %b10[80], %b11[80], %b12[80]]) +
           (poly z [%c00[80], %c01[80], %c02[80], %c03[80], %c04[80], %c05[80],
                    %c06[80], %c07[80], %c08[80], %c09[80], %c10[80], %c11[80], %c12[80]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[81], %r01[81], %r02[81], %r03[81], %r04[81], %r05[81],
                   %r06[81], %r07[81], %r08[81], %r09[81], %r10[81], %r11[81], %r12[81]])
          ((poly z [%a00[81], %a01[81], %a02[81], %a03[81], %a04[81], %a05[81],
                    %a06[81], %a07[81], %a08[81], %a09[81], %a10[81], %a11[81], %a12[81]] *
            poly z [%b00[81], %b01[81], %b02[81], %b03[81], %b04[81], %b05[81],
                    %b06[81], %b07[81], %b08[81], %b09[81], %b10[81], %b11[81], %b12[81]]) +
           (poly z [%c00[81], %c01[81], %c02[81], %c03[81], %c04[81], %c05[81],
                    %c06[81], %c07[81], %c08[81], %c09[81], %c10[81], %c11[81], %c12[81]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[82], %r01[82], %r02[82], %r03[82], %r04[82], %r05[82],
                   %r06[82], %r07[82], %r08[82], %r09[82], %r10[82], %r11[82], %r12[82]])
          ((poly z [%a00[82], %a01[82], %a02[82], %a03[82], %a04[82], %a05[82],
                    %a06[82], %a07[82], %a08[82], %a09[82], %a10[82], %a11[82], %a12[82]] *
            poly z [%b00[82], %b01[82], %b02[82], %b03[82], %b04[82], %b05[82],
                    %b06[82], %b07[82], %b08[82], %b09[82], %b10[82], %b11[82], %b12[82]]) +
           (poly z [%c00[82], %c01[82], %c02[82], %c03[82], %c04[82], %c05[82],
                    %c06[82], %c07[82], %c08[82], %c09[82], %c10[82], %c11[82], %c12[82]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[83], %r01[83], %r02[83], %r03[83], %r04[83], %r05[83],
                   %r06[83], %r07[83], %r08[83], %r09[83], %r10[83], %r11[83], %r12[83]])
          ((poly z [%a00[83], %a01[83], %a02[83], %a03[83], %a04[83], %a05[83],
                    %a06[83], %a07[83], %a08[83], %a09[83], %a10[83], %a11[83], %a12[83]] *
            poly z [%b00[83], %b01[83], %b02[83], %b03[83], %b04[83], %b05[83],
                    %b06[83], %b07[83], %b08[83], %b09[83], %b10[83], %b11[83], %b12[83]]) +
           (poly z [%c00[83], %c01[83], %c02[83], %c03[83], %c04[83], %c05[83],
                    %c06[83], %c07[83], %c08[83], %c09[83], %c10[83], %c11[83], %c12[83]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[84], %r01[84], %r02[84], %r03[84], %r04[84], %r05[84],
                   %r06[84], %r07[84], %r08[84], %r09[84], %r10[84], %r11[84], %r12[84]])
          ((poly z [%a00[84], %a01[84], %a02[84], %a03[84], %a04[84], %a05[84],
                    %a06[84], %a07[84], %a08[84], %a09[84], %a10[84], %a11[84], %a12[84]] *
            poly z [%b00[84], %b01[84], %b02[84], %b03[84], %b04[84], %b05[84],
                    %b06[84], %b07[84], %b08[84], %b09[84], %b10[84], %b11[84], %b12[84]]) +
           (poly z [%c00[84], %c01[84], %c02[84], %c03[84], %c04[84], %c05[84],
                    %c06[84], %c07[84], %c08[84], %c09[84], %c10[84], %c11[84], %c12[84]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[85], %r01[85], %r02[85], %r03[85], %r04[85], %r05[85],
                   %r06[85], %r07[85], %r08[85], %r09[85], %r10[85], %r11[85], %r12[85]])
          ((poly z [%a00[85], %a01[85], %a02[85], %a03[85], %a04[85], %a05[85],
                    %a06[85], %a07[85], %a08[85], %a09[85], %a10[85], %a11[85], %a12[85]] *
            poly z [%b00[85], %b01[85], %b02[85], %b03[85], %b04[85], %b05[85],
                    %b06[85], %b07[85], %b08[85], %b09[85], %b10[85], %b11[85], %b12[85]]) +
           (poly z [%c00[85], %c01[85], %c02[85], %c03[85], %c04[85], %c05[85],
                    %c06[85], %c07[85], %c08[85], %c09[85], %c10[85], %c11[85], %c12[85]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[86], %r01[86], %r02[86], %r03[86], %r04[86], %r05[86],
                   %r06[86], %r07[86], %r08[86], %r09[86], %r10[86], %r11[86], %r12[86]])
          ((poly z [%a00[86], %a01[86], %a02[86], %a03[86], %a04[86], %a05[86],
                    %a06[86], %a07[86], %a08[86], %a09[86], %a10[86], %a11[86], %a12[86]] *
            poly z [%b00[86], %b01[86], %b02[86], %b03[86], %b04[86], %b05[86],
                    %b06[86], %b07[86], %b08[86], %b09[86], %b10[86], %b11[86], %b12[86]]) +
           (poly z [%c00[86], %c01[86], %c02[86], %c03[86], %c04[86], %c05[86],
                    %c06[86], %c07[86], %c08[86], %c09[86], %c10[86], %c11[86], %c12[86]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[87], %r01[87], %r02[87], %r03[87], %r04[87], %r05[87],
                   %r06[87], %r07[87], %r08[87], %r09[87], %r10[87], %r11[87], %r12[87]])
          ((poly z [%a00[87], %a01[87], %a02[87], %a03[87], %a04[87], %a05[87],
                    %a06[87], %a07[87], %a08[87], %a09[87], %a10[87], %a11[87], %a12[87]] *
            poly z [%b00[87], %b01[87], %b02[87], %b03[87], %b04[87], %b05[87],
                    %b06[87], %b07[87], %b08[87], %b09[87], %b10[87], %b11[87], %b12[87]]) +
           (poly z [%c00[87], %c01[87], %c02[87], %c03[87], %c04[87], %c05[87],
                    %c06[87], %c07[87], %c08[87], %c09[87], %c10[87], %c11[87], %c12[87]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[88], %r01[88], %r02[88], %r03[88], %r04[88], %r05[88],
                   %r06[88], %r07[88], %r08[88], %r09[88], %r10[88], %r11[88], %r12[88]])
          ((poly z [%a00[88], %a01[88], %a02[88], %a03[88], %a04[88], %a05[88],
                    %a06[88], %a07[88], %a08[88], %a09[88], %a10[88], %a11[88], %a12[88]] *
            poly z [%b00[88], %b01[88], %b02[88], %b03[88], %b04[88], %b05[88],
                    %b06[88], %b07[88], %b08[88], %b09[88], %b10[88], %b11[88], %b12[88]]) +
           (poly z [%c00[88], %c01[88], %c02[88], %c03[88], %c04[88], %c05[88],
                    %c06[88], %c07[88], %c08[88], %c09[88], %c10[88], %c11[88], %c12[88]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[89], %r01[89], %r02[89], %r03[89], %r04[89], %r05[89],
                   %r06[89], %r07[89], %r08[89], %r09[89], %r10[89], %r11[89], %r12[89]])
          ((poly z [%a00[89], %a01[89], %a02[89], %a03[89], %a04[89], %a05[89],
                    %a06[89], %a07[89], %a08[89], %a09[89], %a10[89], %a11[89], %a12[89]] *
            poly z [%b00[89], %b01[89], %b02[89], %b03[89], %b04[89], %b05[89],
                    %b06[89], %b07[89], %b08[89], %b09[89], %b10[89], %b11[89], %b12[89]]) +
           (poly z [%c00[89], %c01[89], %c02[89], %c03[89], %c04[89], %c05[89],
                    %c06[89], %c07[89], %c08[89], %c09[89], %c10[89], %c11[89], %c12[89]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[90], %r01[90], %r02[90], %r03[90], %r04[90], %r05[90],
                   %r06[90], %r07[90], %r08[90], %r09[90], %r10[90], %r11[90], %r12[90]])
          ((poly z [%a00[90], %a01[90], %a02[90], %a03[90], %a04[90], %a05[90],
                    %a06[90], %a07[90], %a08[90], %a09[90], %a10[90], %a11[90], %a12[90]] *
            poly z [%b00[90], %b01[90], %b02[90], %b03[90], %b04[90], %b05[90],
                    %b06[90], %b07[90], %b08[90], %b09[90], %b10[90], %b11[90], %b12[90]]) +
           (poly z [%c00[90], %c01[90], %c02[90], %c03[90], %c04[90], %c05[90],
                    %c06[90], %c07[90], %c08[90], %c09[90], %c10[90], %c11[90], %c12[90]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[91], %r01[91], %r02[91], %r03[91], %r04[91], %r05[91],
                   %r06[91], %r07[91], %r08[91], %r09[91], %r10[91], %r11[91], %r12[91]])
          ((poly z [%a00[91], %a01[91], %a02[91], %a03[91], %a04[91], %a05[91],
                    %a06[91], %a07[91], %a08[91], %a09[91], %a10[91], %a11[91], %a12[91]] *
            poly z [%b00[91], %b01[91], %b02[91], %b03[91], %b04[91], %b05[91],
                    %b06[91], %b07[91], %b08[91], %b09[91], %b10[91], %b11[91], %b12[91]]) +
           (poly z [%c00[91], %c01[91], %c02[91], %c03[91], %c04[91], %c05[91],
                    %c06[91], %c07[91], %c08[91], %c09[91], %c10[91], %c11[91], %c12[91]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[92], %r01[92], %r02[92], %r03[92], %r04[92], %r05[92],
                   %r06[92], %r07[92], %r08[92], %r09[92], %r10[92], %r11[92], %r12[92]])
          ((poly z [%a00[92], %a01[92], %a02[92], %a03[92], %a04[92], %a05[92],
                    %a06[92], %a07[92], %a08[92], %a09[92], %a10[92], %a11[92], %a12[92]] *
            poly z [%b00[92], %b01[92], %b02[92], %b03[92], %b04[92], %b05[92],
                    %b06[92], %b07[92], %b08[92], %b09[92], %b10[92], %b11[92], %b12[92]]) +
           (poly z [%c00[92], %c01[92], %c02[92], %c03[92], %c04[92], %c05[92],
                    %c06[92], %c07[92], %c08[92], %c09[92], %c10[92], %c11[92], %c12[92]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[93], %r01[93], %r02[93], %r03[93], %r04[93], %r05[93],
                   %r06[93], %r07[93], %r08[93], %r09[93], %r10[93], %r11[93], %r12[93]])
          ((poly z [%a00[93], %a01[93], %a02[93], %a03[93], %a04[93], %a05[93],
                    %a06[93], %a07[93], %a08[93], %a09[93], %a10[93], %a11[93], %a12[93]] *
            poly z [%b00[93], %b01[93], %b02[93], %b03[93], %b04[93], %b05[93],
                    %b06[93], %b07[93], %b08[93], %b09[93], %b10[93], %b11[93], %b12[93]]) +
           (poly z [%c00[93], %c01[93], %c02[93], %c03[93], %c04[93], %c05[93],
                    %c06[93], %c07[93], %c08[93], %c09[93], %c10[93], %c11[93], %c12[93]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[94], %r01[94], %r02[94], %r03[94], %r04[94], %r05[94],
                   %r06[94], %r07[94], %r08[94], %r09[94], %r10[94], %r11[94], %r12[94]])
          ((poly z [%a00[94], %a01[94], %a02[94], %a03[94], %a04[94], %a05[94],
                    %a06[94], %a07[94], %a08[94], %a09[94], %a10[94], %a11[94], %a12[94]] *
            poly z [%b00[94], %b01[94], %b02[94], %b03[94], %b04[94], %b05[94],
                    %b06[94], %b07[94], %b08[94], %b09[94], %b10[94], %b11[94], %b12[94]]) +
           (poly z [%c00[94], %c01[94], %c02[94], %c03[94], %c04[94], %c05[94],
                    %c06[94], %c07[94], %c08[94], %c09[94], %c10[94], %c11[94], %c12[94]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[95], %r01[95], %r02[95], %r03[95], %r04[95], %r05[95],
                   %r06[95], %r07[95], %r08[95], %r09[95], %r10[95], %r11[95], %r12[95]])
          ((poly z [%a00[95], %a01[95], %a02[95], %a03[95], %a04[95], %a05[95],
                    %a06[95], %a07[95], %a08[95], %a09[95], %a10[95], %a11[95], %a12[95]] *
            poly z [%b00[95], %b01[95], %b02[95], %b03[95], %b04[95], %b05[95],
                    %b06[95], %b07[95], %b08[95], %b09[95], %b10[95], %b11[95], %b12[95]]) +
           (poly z [%c00[95], %c01[95], %c02[95], %c03[95], %c04[95], %c05[95],
                    %c06[95], %c07[95], %c08[95], %c09[95], %c10[95], %c11[95], %c12[95]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[96], %r01[96], %r02[96], %r03[96], %r04[96], %r05[96],
                   %r06[96], %r07[96], %r08[96], %r09[96], %r10[96], %r11[96], %r12[96]])
          ((poly z [%a00[96], %a01[96], %a02[96], %a03[96], %a04[96], %a05[96],
                    %a06[96], %a07[96], %a08[96], %a09[96], %a10[96], %a11[96], %a12[96]] *
            poly z [%b00[96], %b01[96], %b02[96], %b03[96], %b04[96], %b05[96],
                    %b06[96], %b07[96], %b08[96], %b09[96], %b10[96], %b11[96], %b12[96]]) +
           (poly z [%c00[96], %c01[96], %c02[96], %c03[96], %c04[96], %c05[96],
                    %c06[96], %c07[96], %c08[96], %c09[96], %c10[96], %c11[96], %c12[96]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[97], %r01[97], %r02[97], %r03[97], %r04[97], %r05[97],
                   %r06[97], %r07[97], %r08[97], %r09[97], %r10[97], %r11[97], %r12[97]])
          ((poly z [%a00[97], %a01[97], %a02[97], %a03[97], %a04[97], %a05[97],
                    %a06[97], %a07[97], %a08[97], %a09[97], %a10[97], %a11[97], %a12[97]] *
            poly z [%b00[97], %b01[97], %b02[97], %b03[97], %b04[97], %b05[97],
                    %b06[97], %b07[97], %b08[97], %b09[97], %b10[97], %b11[97], %b12[97]]) +
           (poly z [%c00[97], %c01[97], %c02[97], %c03[97], %c04[97], %c05[97],
                    %c06[97], %c07[97], %c08[97], %c09[97], %c10[97], %c11[97], %c12[97]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[98], %r01[98], %r02[98], %r03[98], %r04[98], %r05[98],
                   %r06[98], %r07[98], %r08[98], %r09[98], %r10[98], %r11[98], %r12[98]])
          ((poly z [%a00[98], %a01[98], %a02[98], %a03[98], %a04[98], %a05[98],
                    %a06[98], %a07[98], %a08[98], %a09[98], %a10[98], %a11[98], %a12[98]] *
            poly z [%b00[98], %b01[98], %b02[98], %b03[98], %b04[98], %b05[98],
                    %b06[98], %b07[98], %b08[98], %b09[98], %b10[98], %b11[98], %b12[98]]) +
           (poly z [%c00[98], %c01[98], %c02[98], %c03[98], %c04[98], %c05[98],
                    %c06[98], %c07[98], %c08[98], %c09[98], %c10[98], %c11[98], %c12[98]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[99], %r01[99], %r02[99], %r03[99], %r04[99], %r05[99],
                   %r06[99], %r07[99], %r08[99], %r09[99], %r10[99], %r11[99], %r12[99]])
          ((poly z [%a00[99], %a01[99], %a02[99], %a03[99], %a04[99], %a05[99],
                    %a06[99], %a07[99], %a08[99], %a09[99], %a10[99], %a11[99], %a12[99]] *
            poly z [%b00[99], %b01[99], %b02[99], %b03[99], %b04[99], %b05[99],
                    %b06[99], %b07[99], %b08[99], %b09[99], %b10[99], %b11[99], %b12[99]]) +
           (poly z [%c00[99], %c01[99], %c02[99], %c03[99], %c04[99], %c05[99],
                    %c06[99], %c07[99], %c08[99], %c09[99], %c10[99], %c11[99], %c12[99]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[100], %r01[100], %r02[100], %r03[100], %r04[100], %r05[100],
                   %r06[100], %r07[100], %r08[100], %r09[100], %r10[100], %r11[100], %r12[100]])
          ((poly z [%a00[100], %a01[100], %a02[100], %a03[100], %a04[100], %a05[100],
                    %a06[100], %a07[100], %a08[100], %a09[100], %a10[100], %a11[100], %a12[100]] *
            poly z [%b00[100], %b01[100], %b02[100], %b03[100], %b04[100], %b05[100],
                    %b06[100], %b07[100], %b08[100], %b09[100], %b10[100], %b11[100], %b12[100]]) +
           (poly z [%c00[100], %c01[100], %c02[100], %c03[100], %c04[100], %c05[100],
                    %c06[100], %c07[100], %c08[100], %c09[100], %c10[100], %c11[100], %c12[100]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[101], %r01[101], %r02[101], %r03[101], %r04[101], %r05[101],
                   %r06[101], %r07[101], %r08[101], %r09[101], %r10[101], %r11[101], %r12[101]])
          ((poly z [%a00[101], %a01[101], %a02[101], %a03[101], %a04[101], %a05[101],
                    %a06[101], %a07[101], %a08[101], %a09[101], %a10[101], %a11[101], %a12[101]] *
            poly z [%b00[101], %b01[101], %b02[101], %b03[101], %b04[101], %b05[101],
                    %b06[101], %b07[101], %b08[101], %b09[101], %b10[101], %b11[101], %b12[101]]) +
           (poly z [%c00[101], %c01[101], %c02[101], %c03[101], %c04[101], %c05[101],
                    %c06[101], %c07[101], %c08[101], %c09[101], %c10[101], %c11[101], %c12[101]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[102], %r01[102], %r02[102], %r03[102], %r04[102], %r05[102],
                   %r06[102], %r07[102], %r08[102], %r09[102], %r10[102], %r11[102], %r12[102]])
          ((poly z [%a00[102], %a01[102], %a02[102], %a03[102], %a04[102], %a05[102],
                    %a06[102], %a07[102], %a08[102], %a09[102], %a10[102], %a11[102], %a12[102]] *
            poly z [%b00[102], %b01[102], %b02[102], %b03[102], %b04[102], %b05[102],
                    %b06[102], %b07[102], %b08[102], %b09[102], %b10[102], %b11[102], %b12[102]]) +
           (poly z [%c00[102], %c01[102], %c02[102], %c03[102], %c04[102], %c05[102],
                    %c06[102], %c07[102], %c08[102], %c09[102], %c10[102], %c11[102], %c12[102]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[103], %r01[103], %r02[103], %r03[103], %r04[103], %r05[103],
                   %r06[103], %r07[103], %r08[103], %r09[103], %r10[103], %r11[103], %r12[103]])
          ((poly z [%a00[103], %a01[103], %a02[103], %a03[103], %a04[103], %a05[103],
                    %a06[103], %a07[103], %a08[103], %a09[103], %a10[103], %a11[103], %a12[103]] *
            poly z [%b00[103], %b01[103], %b02[103], %b03[103], %b04[103], %b05[103],
                    %b06[103], %b07[103], %b08[103], %b09[103], %b10[103], %b11[103], %b12[103]]) +
           (poly z [%c00[103], %c01[103], %c02[103], %c03[103], %c04[103], %c05[103],
                    %c06[103], %c07[103], %c08[103], %c09[103], %c10[103], %c11[103], %c12[103]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[104], %r01[104], %r02[104], %r03[104], %r04[104], %r05[104],
                   %r06[104], %r07[104], %r08[104], %r09[104], %r10[104], %r11[104], %r12[104]])
          ((poly z [%a00[104], %a01[104], %a02[104], %a03[104], %a04[104], %a05[104],
                    %a06[104], %a07[104], %a08[104], %a09[104], %a10[104], %a11[104], %a12[104]] *
            poly z [%b00[104], %b01[104], %b02[104], %b03[104], %b04[104], %b05[104],
                    %b06[104], %b07[104], %b08[104], %b09[104], %b10[104], %b11[104], %b12[104]]) +
           (poly z [%c00[104], %c01[104], %c02[104], %c03[104], %c04[104], %c05[104],
                    %c06[104], %c07[104], %c08[104], %c09[104], %c10[104], %c11[104], %c12[104]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[105], %r01[105], %r02[105], %r03[105], %r04[105], %r05[105],
                   %r06[105], %r07[105], %r08[105], %r09[105], %r10[105], %r11[105], %r12[105]])
          ((poly z [%a00[105], %a01[105], %a02[105], %a03[105], %a04[105], %a05[105],
                    %a06[105], %a07[105], %a08[105], %a09[105], %a10[105], %a11[105], %a12[105]] *
            poly z [%b00[105], %b01[105], %b02[105], %b03[105], %b04[105], %b05[105],
                    %b06[105], %b07[105], %b08[105], %b09[105], %b10[105], %b11[105], %b12[105]]) +
           (poly z [%c00[105], %c01[105], %c02[105], %c03[105], %c04[105], %c05[105],
                    %c06[105], %c07[105], %c08[105], %c09[105], %c10[105], %c11[105], %c12[105]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[106], %r01[106], %r02[106], %r03[106], %r04[106], %r05[106],
                   %r06[106], %r07[106], %r08[106], %r09[106], %r10[106], %r11[106], %r12[106]])
          ((poly z [%a00[106], %a01[106], %a02[106], %a03[106], %a04[106], %a05[106],
                    %a06[106], %a07[106], %a08[106], %a09[106], %a10[106], %a11[106], %a12[106]] *
            poly z [%b00[106], %b01[106], %b02[106], %b03[106], %b04[106], %b05[106],
                    %b06[106], %b07[106], %b08[106], %b09[106], %b10[106], %b11[106], %b12[106]]) +
           (poly z [%c00[106], %c01[106], %c02[106], %c03[106], %c04[106], %c05[106],
                    %c06[106], %c07[106], %c08[106], %c09[106], %c10[106], %c11[106], %c12[106]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[107], %r01[107], %r02[107], %r03[107], %r04[107], %r05[107],
                   %r06[107], %r07[107], %r08[107], %r09[107], %r10[107], %r11[107], %r12[107]])
          ((poly z [%a00[107], %a01[107], %a02[107], %a03[107], %a04[107], %a05[107],
                    %a06[107], %a07[107], %a08[107], %a09[107], %a10[107], %a11[107], %a12[107]] *
            poly z [%b00[107], %b01[107], %b02[107], %b03[107], %b04[107], %b05[107],
                    %b06[107], %b07[107], %b08[107], %b09[107], %b10[107], %b11[107], %b12[107]]) +
           (poly z [%c00[107], %c01[107], %c02[107], %c03[107], %c04[107], %c05[107],
                    %c06[107], %c07[107], %c08[107], %c09[107], %c10[107], %c11[107], %c12[107]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[108], %r01[108], %r02[108], %r03[108], %r04[108], %r05[108],
                   %r06[108], %r07[108], %r08[108], %r09[108], %r10[108], %r11[108], %r12[108]])
          ((poly z [%a00[108], %a01[108], %a02[108], %a03[108], %a04[108], %a05[108],
                    %a06[108], %a07[108], %a08[108], %a09[108], %a10[108], %a11[108], %a12[108]] *
            poly z [%b00[108], %b01[108], %b02[108], %b03[108], %b04[108], %b05[108],
                    %b06[108], %b07[108], %b08[108], %b09[108], %b10[108], %b11[108], %b12[108]]) +
           (poly z [%c00[108], %c01[108], %c02[108], %c03[108], %c04[108], %c05[108],
                    %c06[108], %c07[108], %c08[108], %c09[108], %c10[108], %c11[108], %c12[108]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[109], %r01[109], %r02[109], %r03[109], %r04[109], %r05[109],
                   %r06[109], %r07[109], %r08[109], %r09[109], %r10[109], %r11[109], %r12[109]])
          ((poly z [%a00[109], %a01[109], %a02[109], %a03[109], %a04[109], %a05[109],
                    %a06[109], %a07[109], %a08[109], %a09[109], %a10[109], %a11[109], %a12[109]] *
            poly z [%b00[109], %b01[109], %b02[109], %b03[109], %b04[109], %b05[109],
                    %b06[109], %b07[109], %b08[109], %b09[109], %b10[109], %b11[109], %b12[109]]) +
           (poly z [%c00[109], %c01[109], %c02[109], %c03[109], %c04[109], %c05[109],
                    %c06[109], %c07[109], %c08[109], %c09[109], %c10[109], %c11[109], %c12[109]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[110], %r01[110], %r02[110], %r03[110], %r04[110], %r05[110],
                   %r06[110], %r07[110], %r08[110], %r09[110], %r10[110], %r11[110], %r12[110]])
          ((poly z [%a00[110], %a01[110], %a02[110], %a03[110], %a04[110], %a05[110],
                    %a06[110], %a07[110], %a08[110], %a09[110], %a10[110], %a11[110], %a12[110]] *
            poly z [%b00[110], %b01[110], %b02[110], %b03[110], %b04[110], %b05[110],
                    %b06[110], %b07[110], %b08[110], %b09[110], %b10[110], %b11[110], %b12[110]]) +
           (poly z [%c00[110], %c01[110], %c02[110], %c03[110], %c04[110], %c05[110],
                    %c06[110], %c07[110], %c08[110], %c09[110], %c10[110], %c11[110], %c12[110]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[111], %r01[111], %r02[111], %r03[111], %r04[111], %r05[111],
                   %r06[111], %r07[111], %r08[111], %r09[111], %r10[111], %r11[111], %r12[111]])
          ((poly z [%a00[111], %a01[111], %a02[111], %a03[111], %a04[111], %a05[111],
                    %a06[111], %a07[111], %a08[111], %a09[111], %a10[111], %a11[111], %a12[111]] *
            poly z [%b00[111], %b01[111], %b02[111], %b03[111], %b04[111], %b05[111],
                    %b06[111], %b07[111], %b08[111], %b09[111], %b10[111], %b11[111], %b12[111]]) +
           (poly z [%c00[111], %c01[111], %c02[111], %c03[111], %c04[111], %c05[111],
                    %c06[111], %c07[111], %c08[111], %c09[111], %c10[111], %c11[111], %c12[111]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[112], %r01[112], %r02[112], %r03[112], %r04[112], %r05[112],
                   %r06[112], %r07[112], %r08[112], %r09[112], %r10[112], %r11[112], %r12[112]])
          ((poly z [%a00[112], %a01[112], %a02[112], %a03[112], %a04[112], %a05[112],
                    %a06[112], %a07[112], %a08[112], %a09[112], %a10[112], %a11[112], %a12[112]] *
            poly z [%b00[112], %b01[112], %b02[112], %b03[112], %b04[112], %b05[112],
                    %b06[112], %b07[112], %b08[112], %b09[112], %b10[112], %b11[112], %b12[112]]) +
           (poly z [%c00[112], %c01[112], %c02[112], %c03[112], %c04[112], %c05[112],
                    %c06[112], %c07[112], %c08[112], %c09[112], %c10[112], %c11[112], %c12[112]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[113], %r01[113], %r02[113], %r03[113], %r04[113], %r05[113],
                   %r06[113], %r07[113], %r08[113], %r09[113], %r10[113], %r11[113], %r12[113]])
          ((poly z [%a00[113], %a01[113], %a02[113], %a03[113], %a04[113], %a05[113],
                    %a06[113], %a07[113], %a08[113], %a09[113], %a10[113], %a11[113], %a12[113]] *
            poly z [%b00[113], %b01[113], %b02[113], %b03[113], %b04[113], %b05[113],
                    %b06[113], %b07[113], %b08[113], %b09[113], %b10[113], %b11[113], %b12[113]]) +
           (poly z [%c00[113], %c01[113], %c02[113], %c03[113], %c04[113], %c05[113],
                    %c06[113], %c07[113], %c08[113], %c09[113], %c10[113], %c11[113], %c12[113]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[114], %r01[114], %r02[114], %r03[114], %r04[114], %r05[114],
                   %r06[114], %r07[114], %r08[114], %r09[114], %r10[114], %r11[114], %r12[114]])
          ((poly z [%a00[114], %a01[114], %a02[114], %a03[114], %a04[114], %a05[114],
                    %a06[114], %a07[114], %a08[114], %a09[114], %a10[114], %a11[114], %a12[114]] *
            poly z [%b00[114], %b01[114], %b02[114], %b03[114], %b04[114], %b05[114],
                    %b06[114], %b07[114], %b08[114], %b09[114], %b10[114], %b11[114], %b12[114]]) +
           (poly z [%c00[114], %c01[114], %c02[114], %c03[114], %c04[114], %c05[114],
                    %c06[114], %c07[114], %c08[114], %c09[114], %c10[114], %c11[114], %c12[114]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[115], %r01[115], %r02[115], %r03[115], %r04[115], %r05[115],
                   %r06[115], %r07[115], %r08[115], %r09[115], %r10[115], %r11[115], %r12[115]])
          ((poly z [%a00[115], %a01[115], %a02[115], %a03[115], %a04[115], %a05[115],
                    %a06[115], %a07[115], %a08[115], %a09[115], %a10[115], %a11[115], %a12[115]] *
            poly z [%b00[115], %b01[115], %b02[115], %b03[115], %b04[115], %b05[115],
                    %b06[115], %b07[115], %b08[115], %b09[115], %b10[115], %b11[115], %b12[115]]) +
           (poly z [%c00[115], %c01[115], %c02[115], %c03[115], %c04[115], %c05[115],
                    %c06[115], %c07[115], %c08[115], %c09[115], %c10[115], %c11[115], %c12[115]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[116], %r01[116], %r02[116], %r03[116], %r04[116], %r05[116],
                   %r06[116], %r07[116], %r08[116], %r09[116], %r10[116], %r11[116], %r12[116]])
          ((poly z [%a00[116], %a01[116], %a02[116], %a03[116], %a04[116], %a05[116],
                    %a06[116], %a07[116], %a08[116], %a09[116], %a10[116], %a11[116], %a12[116]] *
            poly z [%b00[116], %b01[116], %b02[116], %b03[116], %b04[116], %b05[116],
                    %b06[116], %b07[116], %b08[116], %b09[116], %b10[116], %b11[116], %b12[116]]) +
           (poly z [%c00[116], %c01[116], %c02[116], %c03[116], %c04[116], %c05[116],
                    %c06[116], %c07[116], %c08[116], %c09[116], %c10[116], %c11[116], %c12[116]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[117], %r01[117], %r02[117], %r03[117], %r04[117], %r05[117],
                   %r06[117], %r07[117], %r08[117], %r09[117], %r10[117], %r11[117], %r12[117]])
          ((poly z [%a00[117], %a01[117], %a02[117], %a03[117], %a04[117], %a05[117],
                    %a06[117], %a07[117], %a08[117], %a09[117], %a10[117], %a11[117], %a12[117]] *
            poly z [%b00[117], %b01[117], %b02[117], %b03[117], %b04[117], %b05[117],
                    %b06[117], %b07[117], %b08[117], %b09[117], %b10[117], %b11[117], %b12[117]]) +
           (poly z [%c00[117], %c01[117], %c02[117], %c03[117], %c04[117], %c05[117],
                    %c06[117], %c07[117], %c08[117], %c09[117], %c10[117], %c11[117], %c12[117]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[118], %r01[118], %r02[118], %r03[118], %r04[118], %r05[118],
                   %r06[118], %r07[118], %r08[118], %r09[118], %r10[118], %r11[118], %r12[118]])
          ((poly z [%a00[118], %a01[118], %a02[118], %a03[118], %a04[118], %a05[118],
                    %a06[118], %a07[118], %a08[118], %a09[118], %a10[118], %a11[118], %a12[118]] *
            poly z [%b00[118], %b01[118], %b02[118], %b03[118], %b04[118], %b05[118],
                    %b06[118], %b07[118], %b08[118], %b09[118], %b10[118], %b11[118], %b12[118]]) +
           (poly z [%c00[118], %c01[118], %c02[118], %c03[118], %c04[118], %c05[118],
                    %c06[118], %c07[118], %c08[118], %c09[118], %c10[118], %c11[118], %c12[118]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[119], %r01[119], %r02[119], %r03[119], %r04[119], %r05[119],
                   %r06[119], %r07[119], %r08[119], %r09[119], %r10[119], %r11[119], %r12[119]])
          ((poly z [%a00[119], %a01[119], %a02[119], %a03[119], %a04[119], %a05[119],
                    %a06[119], %a07[119], %a08[119], %a09[119], %a10[119], %a11[119], %a12[119]] *
            poly z [%b00[119], %b01[119], %b02[119], %b03[119], %b04[119], %b05[119],
                    %b06[119], %b07[119], %b08[119], %b09[119], %b10[119], %b11[119], %b12[119]]) +
           (poly z [%c00[119], %c01[119], %c02[119], %c03[119], %c04[119], %c05[119],
                    %c06[119], %c07[119], %c08[119], %c09[119], %c10[119], %c11[119], %c12[119]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[120], %r01[120], %r02[120], %r03[120], %r04[120], %r05[120],
                   %r06[120], %r07[120], %r08[120], %r09[120], %r10[120], %r11[120], %r12[120]])
          ((poly z [%a00[120], %a01[120], %a02[120], %a03[120], %a04[120], %a05[120],
                    %a06[120], %a07[120], %a08[120], %a09[120], %a10[120], %a11[120], %a12[120]] *
            poly z [%b00[120], %b01[120], %b02[120], %b03[120], %b04[120], %b05[120],
                    %b06[120], %b07[120], %b08[120], %b09[120], %b10[120], %b11[120], %b12[120]]) +
           (poly z [%c00[120], %c01[120], %c02[120], %c03[120], %c04[120], %c05[120],
                    %c06[120], %c07[120], %c08[120], %c09[120], %c10[120], %c11[120], %c12[120]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[121], %r01[121], %r02[121], %r03[121], %r04[121], %r05[121],
                   %r06[121], %r07[121], %r08[121], %r09[121], %r10[121], %r11[121], %r12[121]])
          ((poly z [%a00[121], %a01[121], %a02[121], %a03[121], %a04[121], %a05[121],
                    %a06[121], %a07[121], %a08[121], %a09[121], %a10[121], %a11[121], %a12[121]] *
            poly z [%b00[121], %b01[121], %b02[121], %b03[121], %b04[121], %b05[121],
                    %b06[121], %b07[121], %b08[121], %b09[121], %b10[121], %b11[121], %b12[121]]) +
           (poly z [%c00[121], %c01[121], %c02[121], %c03[121], %c04[121], %c05[121],
                    %c06[121], %c07[121], %c08[121], %c09[121], %c10[121], %c11[121], %c12[121]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[122], %r01[122], %r02[122], %r03[122], %r04[122], %r05[122],
                   %r06[122], %r07[122], %r08[122], %r09[122], %r10[122], %r11[122], %r12[122]])
          ((poly z [%a00[122], %a01[122], %a02[122], %a03[122], %a04[122], %a05[122],
                    %a06[122], %a07[122], %a08[122], %a09[122], %a10[122], %a11[122], %a12[122]] *
            poly z [%b00[122], %b01[122], %b02[122], %b03[122], %b04[122], %b05[122],
                    %b06[122], %b07[122], %b08[122], %b09[122], %b10[122], %b11[122], %b12[122]]) +
           (poly z [%c00[122], %c01[122], %c02[122], %c03[122], %c04[122], %c05[122],
                    %c06[122], %c07[122], %c08[122], %c09[122], %c10[122], %c11[122], %c12[122]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[123], %r01[123], %r02[123], %r03[123], %r04[123], %r05[123],
                   %r06[123], %r07[123], %r08[123], %r09[123], %r10[123], %r11[123], %r12[123]])
          ((poly z [%a00[123], %a01[123], %a02[123], %a03[123], %a04[123], %a05[123],
                    %a06[123], %a07[123], %a08[123], %a09[123], %a10[123], %a11[123], %a12[123]] *
            poly z [%b00[123], %b01[123], %b02[123], %b03[123], %b04[123], %b05[123],
                    %b06[123], %b07[123], %b08[123], %b09[123], %b10[123], %b11[123], %b12[123]]) +
           (poly z [%c00[123], %c01[123], %c02[123], %c03[123], %c04[123], %c05[123],
                    %c06[123], %c07[123], %c08[123], %c09[123], %c10[123], %c11[123], %c12[123]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[124], %r01[124], %r02[124], %r03[124], %r04[124], %r05[124],
                   %r06[124], %r07[124], %r08[124], %r09[124], %r10[124], %r11[124], %r12[124]])
          ((poly z [%a00[124], %a01[124], %a02[124], %a03[124], %a04[124], %a05[124],
                    %a06[124], %a07[124], %a08[124], %a09[124], %a10[124], %a11[124], %a12[124]] *
            poly z [%b00[124], %b01[124], %b02[124], %b03[124], %b04[124], %b05[124],
                    %b06[124], %b07[124], %b08[124], %b09[124], %b10[124], %b11[124], %b12[124]]) +
           (poly z [%c00[124], %c01[124], %c02[124], %c03[124], %c04[124], %c05[124],
                    %c06[124], %c07[124], %c08[124], %c09[124], %c10[124], %c11[124], %c12[124]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[125], %r01[125], %r02[125], %r03[125], %r04[125], %r05[125],
                   %r06[125], %r07[125], %r08[125], %r09[125], %r10[125], %r11[125], %r12[125]])
          ((poly z [%a00[125], %a01[125], %a02[125], %a03[125], %a04[125], %a05[125],
                    %a06[125], %a07[125], %a08[125], %a09[125], %a10[125], %a11[125], %a12[125]] *
            poly z [%b00[125], %b01[125], %b02[125], %b03[125], %b04[125], %b05[125],
                    %b06[125], %b07[125], %b08[125], %b09[125], %b10[125], %b11[125], %b12[125]]) +
           (poly z [%c00[125], %c01[125], %c02[125], %c03[125], %c04[125], %c05[125],
                    %c06[125], %c07[125], %c08[125], %c09[125], %c10[125], %c11[125], %c12[125]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[126], %r01[126], %r02[126], %r03[126], %r04[126], %r05[126],
                   %r06[126], %r07[126], %r08[126], %r09[126], %r10[126], %r11[126], %r12[126]])
          ((poly z [%a00[126], %a01[126], %a02[126], %a03[126], %a04[126], %a05[126],
                    %a06[126], %a07[126], %a08[126], %a09[126], %a10[126], %a11[126], %a12[126]] *
            poly z [%b00[126], %b01[126], %b02[126], %b03[126], %b04[126], %b05[126],
                    %b06[126], %b07[126], %b08[126], %b09[126], %b10[126], %b11[126], %b12[126]]) +
           (poly z [%c00[126], %c01[126], %c02[126], %c03[126], %c04[126], %c05[126],
                    %c06[126], %c07[126], %c08[126], %c09[126], %c10[126], %c11[126], %c12[126]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[127], %r01[127], %r02[127], %r03[127], %r04[127], %r05[127],
                   %r06[127], %r07[127], %r08[127], %r09[127], %r10[127], %r11[127], %r12[127]])
          ((poly z [%a00[127], %a01[127], %a02[127], %a03[127], %a04[127], %a05[127],
                    %a06[127], %a07[127], %a08[127], %a09[127], %a10[127], %a11[127], %a12[127]] *
            poly z [%b00[127], %b01[127], %b02[127], %b03[127], %b04[127], %b05[127],
                    %b06[127], %b07[127], %b08[127], %b09[127], %b10[127], %b11[127], %b12[127]]) +
           (poly z [%c00[127], %c01[127], %c02[127], %c03[127], %c04[127], %c05[127],
                    %c06[127], %c07[127], %c08[127], %c09[127], %c10[127], %c11[127], %c12[127]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[128], %r01[128], %r02[128], %r03[128], %r04[128], %r05[128],
                   %r06[128], %r07[128], %r08[128], %r09[128], %r10[128], %r11[128], %r12[128]])
          ((poly z [%a00[128], %a01[128], %a02[128], %a03[128], %a04[128], %a05[128],
                    %a06[128], %a07[128], %a08[128], %a09[128], %a10[128], %a11[128], %a12[128]] *
            poly z [%b00[128], %b01[128], %b02[128], %b03[128], %b04[128], %b05[128],
                    %b06[128], %b07[128], %b08[128], %b09[128], %b10[128], %b11[128], %b12[128]]) +
           (poly z [%c00[128], %c01[128], %c02[128], %c03[128], %c04[128], %c05[128],
                    %c06[128], %c07[128], %c08[128], %c09[128], %c10[128], %c11[128], %c12[128]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[129], %r01[129], %r02[129], %r03[129], %r04[129], %r05[129],
                   %r06[129], %r07[129], %r08[129], %r09[129], %r10[129], %r11[129], %r12[129]])
          ((poly z [%a00[129], %a01[129], %a02[129], %a03[129], %a04[129], %a05[129],
                    %a06[129], %a07[129], %a08[129], %a09[129], %a10[129], %a11[129], %a12[129]] *
            poly z [%b00[129], %b01[129], %b02[129], %b03[129], %b04[129], %b05[129],
                    %b06[129], %b07[129], %b08[129], %b09[129], %b10[129], %b11[129], %b12[129]]) +
           (poly z [%c00[129], %c01[129], %c02[129], %c03[129], %c04[129], %c05[129],
                    %c06[129], %c07[129], %c08[129], %c09[129], %c10[129], %c11[129], %c12[129]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[130], %r01[130], %r02[130], %r03[130], %r04[130], %r05[130],
                   %r06[130], %r07[130], %r08[130], %r09[130], %r10[130], %r11[130], %r12[130]])
          ((poly z [%a00[130], %a01[130], %a02[130], %a03[130], %a04[130], %a05[130],
                    %a06[130], %a07[130], %a08[130], %a09[130], %a10[130], %a11[130], %a12[130]] *
            poly z [%b00[130], %b01[130], %b02[130], %b03[130], %b04[130], %b05[130],
                    %b06[130], %b07[130], %b08[130], %b09[130], %b10[130], %b11[130], %b12[130]]) +
           (poly z [%c00[130], %c01[130], %c02[130], %c03[130], %c04[130], %c05[130],
                    %c06[130], %c07[130], %c08[130], %c09[130], %c10[130], %c11[130], %c12[130]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[131], %r01[131], %r02[131], %r03[131], %r04[131], %r05[131],
                   %r06[131], %r07[131], %r08[131], %r09[131], %r10[131], %r11[131], %r12[131]])
          ((poly z [%a00[131], %a01[131], %a02[131], %a03[131], %a04[131], %a05[131],
                    %a06[131], %a07[131], %a08[131], %a09[131], %a10[131], %a11[131], %a12[131]] *
            poly z [%b00[131], %b01[131], %b02[131], %b03[131], %b04[131], %b05[131],
                    %b06[131], %b07[131], %b08[131], %b09[131], %b10[131], %b11[131], %b12[131]]) +
           (poly z [%c00[131], %c01[131], %c02[131], %c03[131], %c04[131], %c05[131],
                    %c06[131], %c07[131], %c08[131], %c09[131], %c10[131], %c11[131], %c12[131]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[132], %r01[132], %r02[132], %r03[132], %r04[132], %r05[132],
                   %r06[132], %r07[132], %r08[132], %r09[132], %r10[132], %r11[132], %r12[132]])
          ((poly z [%a00[132], %a01[132], %a02[132], %a03[132], %a04[132], %a05[132],
                    %a06[132], %a07[132], %a08[132], %a09[132], %a10[132], %a11[132], %a12[132]] *
            poly z [%b00[132], %b01[132], %b02[132], %b03[132], %b04[132], %b05[132],
                    %b06[132], %b07[132], %b08[132], %b09[132], %b10[132], %b11[132], %b12[132]]) +
           (poly z [%c00[132], %c01[132], %c02[132], %c03[132], %c04[132], %c05[132],
                    %c06[132], %c07[132], %c08[132], %c09[132], %c10[132], %c11[132], %c12[132]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[133], %r01[133], %r02[133], %r03[133], %r04[133], %r05[133],
                   %r06[133], %r07[133], %r08[133], %r09[133], %r10[133], %r11[133], %r12[133]])
          ((poly z [%a00[133], %a01[133], %a02[133], %a03[133], %a04[133], %a05[133],
                    %a06[133], %a07[133], %a08[133], %a09[133], %a10[133], %a11[133], %a12[133]] *
            poly z [%b00[133], %b01[133], %b02[133], %b03[133], %b04[133], %b05[133],
                    %b06[133], %b07[133], %b08[133], %b09[133], %b10[133], %b11[133], %b12[133]]) +
           (poly z [%c00[133], %c01[133], %c02[133], %c03[133], %c04[133], %c05[133],
                    %c06[133], %c07[133], %c08[133], %c09[133], %c10[133], %c11[133], %c12[133]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[134], %r01[134], %r02[134], %r03[134], %r04[134], %r05[134],
                   %r06[134], %r07[134], %r08[134], %r09[134], %r10[134], %r11[134], %r12[134]])
          ((poly z [%a00[134], %a01[134], %a02[134], %a03[134], %a04[134], %a05[134],
                    %a06[134], %a07[134], %a08[134], %a09[134], %a10[134], %a11[134], %a12[134]] *
            poly z [%b00[134], %b01[134], %b02[134], %b03[134], %b04[134], %b05[134],
                    %b06[134], %b07[134], %b08[134], %b09[134], %b10[134], %b11[134], %b12[134]]) +
           (poly z [%c00[134], %c01[134], %c02[134], %c03[134], %c04[134], %c05[134],
                    %c06[134], %c07[134], %c08[134], %c09[134], %c10[134], %c11[134], %c12[134]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[135], %r01[135], %r02[135], %r03[135], %r04[135], %r05[135],
                   %r06[135], %r07[135], %r08[135], %r09[135], %r10[135], %r11[135], %r12[135]])
          ((poly z [%a00[135], %a01[135], %a02[135], %a03[135], %a04[135], %a05[135],
                    %a06[135], %a07[135], %a08[135], %a09[135], %a10[135], %a11[135], %a12[135]] *
            poly z [%b00[135], %b01[135], %b02[135], %b03[135], %b04[135], %b05[135],
                    %b06[135], %b07[135], %b08[135], %b09[135], %b10[135], %b11[135], %b12[135]]) +
           (poly z [%c00[135], %c01[135], %c02[135], %c03[135], %c04[135], %c05[135],
                    %c06[135], %c07[135], %c08[135], %c09[135], %c10[135], %c11[135], %c12[135]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[136], %r01[136], %r02[136], %r03[136], %r04[136], %r05[136],
                   %r06[136], %r07[136], %r08[136], %r09[136], %r10[136], %r11[136], %r12[136]])
          ((poly z [%a00[136], %a01[136], %a02[136], %a03[136], %a04[136], %a05[136],
                    %a06[136], %a07[136], %a08[136], %a09[136], %a10[136], %a11[136], %a12[136]] *
            poly z [%b00[136], %b01[136], %b02[136], %b03[136], %b04[136], %b05[136],
                    %b06[136], %b07[136], %b08[136], %b09[136], %b10[136], %b11[136], %b12[136]]) +
           (poly z [%c00[136], %c01[136], %c02[136], %c03[136], %c04[136], %c05[136],
                    %c06[136], %c07[136], %c08[136], %c09[136], %c10[136], %c11[136], %c12[136]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[137], %r01[137], %r02[137], %r03[137], %r04[137], %r05[137],
                   %r06[137], %r07[137], %r08[137], %r09[137], %r10[137], %r11[137], %r12[137]])
          ((poly z [%a00[137], %a01[137], %a02[137], %a03[137], %a04[137], %a05[137],
                    %a06[137], %a07[137], %a08[137], %a09[137], %a10[137], %a11[137], %a12[137]] *
            poly z [%b00[137], %b01[137], %b02[137], %b03[137], %b04[137], %b05[137],
                    %b06[137], %b07[137], %b08[137], %b09[137], %b10[137], %b11[137], %b12[137]]) +
           (poly z [%c00[137], %c01[137], %c02[137], %c03[137], %c04[137], %c05[137],
                    %c06[137], %c07[137], %c08[137], %c09[137], %c10[137], %c11[137], %c12[137]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[138], %r01[138], %r02[138], %r03[138], %r04[138], %r05[138],
                   %r06[138], %r07[138], %r08[138], %r09[138], %r10[138], %r11[138], %r12[138]])
          ((poly z [%a00[138], %a01[138], %a02[138], %a03[138], %a04[138], %a05[138],
                    %a06[138], %a07[138], %a08[138], %a09[138], %a10[138], %a11[138], %a12[138]] *
            poly z [%b00[138], %b01[138], %b02[138], %b03[138], %b04[138], %b05[138],
                    %b06[138], %b07[138], %b08[138], %b09[138], %b10[138], %b11[138], %b12[138]]) +
           (poly z [%c00[138], %c01[138], %c02[138], %c03[138], %c04[138], %c05[138],
                    %c06[138], %c07[138], %c08[138], %c09[138], %c10[138], %c11[138], %c12[138]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[139], %r01[139], %r02[139], %r03[139], %r04[139], %r05[139],
                   %r06[139], %r07[139], %r08[139], %r09[139], %r10[139], %r11[139], %r12[139]])
          ((poly z [%a00[139], %a01[139], %a02[139], %a03[139], %a04[139], %a05[139],
                    %a06[139], %a07[139], %a08[139], %a09[139], %a10[139], %a11[139], %a12[139]] *
            poly z [%b00[139], %b01[139], %b02[139], %b03[139], %b04[139], %b05[139],
                    %b06[139], %b07[139], %b08[139], %b09[139], %b10[139], %b11[139], %b12[139]]) +
           (poly z [%c00[139], %c01[139], %c02[139], %c03[139], %c04[139], %c05[139],
                    %c06[139], %c07[139], %c08[139], %c09[139], %c10[139], %c11[139], %c12[139]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[140], %r01[140], %r02[140], %r03[140], %r04[140], %r05[140],
                   %r06[140], %r07[140], %r08[140], %r09[140], %r10[140], %r11[140], %r12[140]])
          ((poly z [%a00[140], %a01[140], %a02[140], %a03[140], %a04[140], %a05[140],
                    %a06[140], %a07[140], %a08[140], %a09[140], %a10[140], %a11[140], %a12[140]] *
            poly z [%b00[140], %b01[140], %b02[140], %b03[140], %b04[140], %b05[140],
                    %b06[140], %b07[140], %b08[140], %b09[140], %b10[140], %b11[140], %b12[140]]) +
           (poly z [%c00[140], %c01[140], %c02[140], %c03[140], %c04[140], %c05[140],
                    %c06[140], %c07[140], %c08[140], %c09[140], %c10[140], %c11[140], %c12[140]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[141], %r01[141], %r02[141], %r03[141], %r04[141], %r05[141],
                   %r06[141], %r07[141], %r08[141], %r09[141], %r10[141], %r11[141], %r12[141]])
          ((poly z [%a00[141], %a01[141], %a02[141], %a03[141], %a04[141], %a05[141],
                    %a06[141], %a07[141], %a08[141], %a09[141], %a10[141], %a11[141], %a12[141]] *
            poly z [%b00[141], %b01[141], %b02[141], %b03[141], %b04[141], %b05[141],
                    %b06[141], %b07[141], %b08[141], %b09[141], %b10[141], %b11[141], %b12[141]]) +
           (poly z [%c00[141], %c01[141], %c02[141], %c03[141], %c04[141], %c05[141],
                    %c06[141], %c07[141], %c08[141], %c09[141], %c10[141], %c11[141], %c12[141]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[142], %r01[142], %r02[142], %r03[142], %r04[142], %r05[142],
                   %r06[142], %r07[142], %r08[142], %r09[142], %r10[142], %r11[142], %r12[142]])
          ((poly z [%a00[142], %a01[142], %a02[142], %a03[142], %a04[142], %a05[142],
                    %a06[142], %a07[142], %a08[142], %a09[142], %a10[142], %a11[142], %a12[142]] *
            poly z [%b00[142], %b01[142], %b02[142], %b03[142], %b04[142], %b05[142],
                    %b06[142], %b07[142], %b08[142], %b09[142], %b10[142], %b11[142], %b12[142]]) +
           (poly z [%c00[142], %c01[142], %c02[142], %c03[142], %c04[142], %c05[142],
                    %c06[142], %c07[142], %c08[142], %c09[142], %c10[142], %c11[142], %c12[142]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[143], %r01[143], %r02[143], %r03[143], %r04[143], %r05[143],
                   %r06[143], %r07[143], %r08[143], %r09[143], %r10[143], %r11[143], %r12[143]])
          ((poly z [%a00[143], %a01[143], %a02[143], %a03[143], %a04[143], %a05[143],
                    %a06[143], %a07[143], %a08[143], %a09[143], %a10[143], %a11[143], %a12[143]] *
            poly z [%b00[143], %b01[143], %b02[143], %b03[143], %b04[143], %b05[143],
                    %b06[143], %b07[143], %b08[143], %b09[143], %b10[143], %b11[143], %b12[143]]) +
           (poly z [%c00[143], %c01[143], %c02[143], %c03[143], %c04[143], %c05[143],
                    %c06[143], %c07[143], %c08[143], %c09[143], %c10[143], %c11[143], %c12[143]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[144], %r01[144], %r02[144], %r03[144], %r04[144], %r05[144],
                   %r06[144], %r07[144], %r08[144], %r09[144], %r10[144], %r11[144], %r12[144]])
          ((poly z [%a00[144], %a01[144], %a02[144], %a03[144], %a04[144], %a05[144],
                    %a06[144], %a07[144], %a08[144], %a09[144], %a10[144], %a11[144], %a12[144]] *
            poly z [%b00[144], %b01[144], %b02[144], %b03[144], %b04[144], %b05[144],
                    %b06[144], %b07[144], %b08[144], %b09[144], %b10[144], %b11[144], %b12[144]]) +
           (poly z [%c00[144], %c01[144], %c02[144], %c03[144], %c04[144], %c05[144],
                    %c06[144], %c07[144], %c08[144], %c09[144], %c10[144], %c11[144], %c12[144]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[145], %r01[145], %r02[145], %r03[145], %r04[145], %r05[145],
                   %r06[145], %r07[145], %r08[145], %r09[145], %r10[145], %r11[145], %r12[145]])
          ((poly z [%a00[145], %a01[145], %a02[145], %a03[145], %a04[145], %a05[145],
                    %a06[145], %a07[145], %a08[145], %a09[145], %a10[145], %a11[145], %a12[145]] *
            poly z [%b00[145], %b01[145], %b02[145], %b03[145], %b04[145], %b05[145],
                    %b06[145], %b07[145], %b08[145], %b09[145], %b10[145], %b11[145], %b12[145]]) +
           (poly z [%c00[145], %c01[145], %c02[145], %c03[145], %c04[145], %c05[145],
                    %c06[145], %c07[145], %c08[145], %c09[145], %c10[145], %c11[145], %c12[145]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[146], %r01[146], %r02[146], %r03[146], %r04[146], %r05[146],
                   %r06[146], %r07[146], %r08[146], %r09[146], %r10[146], %r11[146], %r12[146]])
          ((poly z [%a00[146], %a01[146], %a02[146], %a03[146], %a04[146], %a05[146],
                    %a06[146], %a07[146], %a08[146], %a09[146], %a10[146], %a11[146], %a12[146]] *
            poly z [%b00[146], %b01[146], %b02[146], %b03[146], %b04[146], %b05[146],
                    %b06[146], %b07[146], %b08[146], %b09[146], %b10[146], %b11[146], %b12[146]]) +
           (poly z [%c00[146], %c01[146], %c02[146], %c03[146], %c04[146], %c05[146],
                    %c06[146], %c07[146], %c08[146], %c09[146], %c10[146], %c11[146], %c12[146]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[147], %r01[147], %r02[147], %r03[147], %r04[147], %r05[147],
                   %r06[147], %r07[147], %r08[147], %r09[147], %r10[147], %r11[147], %r12[147]])
          ((poly z [%a00[147], %a01[147], %a02[147], %a03[147], %a04[147], %a05[147],
                    %a06[147], %a07[147], %a08[147], %a09[147], %a10[147], %a11[147], %a12[147]] *
            poly z [%b00[147], %b01[147], %b02[147], %b03[147], %b04[147], %b05[147],
                    %b06[147], %b07[147], %b08[147], %b09[147], %b10[147], %b11[147], %b12[147]]) +
           (poly z [%c00[147], %c01[147], %c02[147], %c03[147], %c04[147], %c05[147],
                    %c06[147], %c07[147], %c08[147], %c09[147], %c10[147], %c11[147], %c12[147]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[148], %r01[148], %r02[148], %r03[148], %r04[148], %r05[148],
                   %r06[148], %r07[148], %r08[148], %r09[148], %r10[148], %r11[148], %r12[148]])
          ((poly z [%a00[148], %a01[148], %a02[148], %a03[148], %a04[148], %a05[148],
                    %a06[148], %a07[148], %a08[148], %a09[148], %a10[148], %a11[148], %a12[148]] *
            poly z [%b00[148], %b01[148], %b02[148], %b03[148], %b04[148], %b05[148],
                    %b06[148], %b07[148], %b08[148], %b09[148], %b10[148], %b11[148], %b12[148]]) +
           (poly z [%c00[148], %c01[148], %c02[148], %c03[148], %c04[148], %c05[148],
                    %c06[148], %c07[148], %c08[148], %c09[148], %c10[148], %c11[148], %c12[148]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[149], %r01[149], %r02[149], %r03[149], %r04[149], %r05[149],
                   %r06[149], %r07[149], %r08[149], %r09[149], %r10[149], %r11[149], %r12[149]])
          ((poly z [%a00[149], %a01[149], %a02[149], %a03[149], %a04[149], %a05[149],
                    %a06[149], %a07[149], %a08[149], %a09[149], %a10[149], %a11[149], %a12[149]] *
            poly z [%b00[149], %b01[149], %b02[149], %b03[149], %b04[149], %b05[149],
                    %b06[149], %b07[149], %b08[149], %b09[149], %b10[149], %b11[149], %b12[149]]) +
           (poly z [%c00[149], %c01[149], %c02[149], %c03[149], %c04[149], %c05[149],
                    %c06[149], %c07[149], %c08[149], %c09[149], %c10[149], %c11[149], %c12[149]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[150], %r01[150], %r02[150], %r03[150], %r04[150], %r05[150],
                   %r06[150], %r07[150], %r08[150], %r09[150], %r10[150], %r11[150], %r12[150]])
          ((poly z [%a00[150], %a01[150], %a02[150], %a03[150], %a04[150], %a05[150],
                    %a06[150], %a07[150], %a08[150], %a09[150], %a10[150], %a11[150], %a12[150]] *
            poly z [%b00[150], %b01[150], %b02[150], %b03[150], %b04[150], %b05[150],
                    %b06[150], %b07[150], %b08[150], %b09[150], %b10[150], %b11[150], %b12[150]]) +
           (poly z [%c00[150], %c01[150], %c02[150], %c03[150], %c04[150], %c05[150],
                    %c06[150], %c07[150], %c08[150], %c09[150], %c10[150], %c11[150], %c12[150]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[151], %r01[151], %r02[151], %r03[151], %r04[151], %r05[151],
                   %r06[151], %r07[151], %r08[151], %r09[151], %r10[151], %r11[151], %r12[151]])
          ((poly z [%a00[151], %a01[151], %a02[151], %a03[151], %a04[151], %a05[151],
                    %a06[151], %a07[151], %a08[151], %a09[151], %a10[151], %a11[151], %a12[151]] *
            poly z [%b00[151], %b01[151], %b02[151], %b03[151], %b04[151], %b05[151],
                    %b06[151], %b07[151], %b08[151], %b09[151], %b10[151], %b11[151], %b12[151]]) +
           (poly z [%c00[151], %c01[151], %c02[151], %c03[151], %c04[151], %c05[151],
                    %c06[151], %c07[151], %c08[151], %c09[151], %c10[151], %c11[151], %c12[151]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[152], %r01[152], %r02[152], %r03[152], %r04[152], %r05[152],
                   %r06[152], %r07[152], %r08[152], %r09[152], %r10[152], %r11[152], %r12[152]])
          ((poly z [%a00[152], %a01[152], %a02[152], %a03[152], %a04[152], %a05[152],
                    %a06[152], %a07[152], %a08[152], %a09[152], %a10[152], %a11[152], %a12[152]] *
            poly z [%b00[152], %b01[152], %b02[152], %b03[152], %b04[152], %b05[152],
                    %b06[152], %b07[152], %b08[152], %b09[152], %b10[152], %b11[152], %b12[152]]) +
           (poly z [%c00[152], %c01[152], %c02[152], %c03[152], %c04[152], %c05[152],
                    %c06[152], %c07[152], %c08[152], %c09[152], %c10[152], %c11[152], %c12[152]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[153], %r01[153], %r02[153], %r03[153], %r04[153], %r05[153],
                   %r06[153], %r07[153], %r08[153], %r09[153], %r10[153], %r11[153], %r12[153]])
          ((poly z [%a00[153], %a01[153], %a02[153], %a03[153], %a04[153], %a05[153],
                    %a06[153], %a07[153], %a08[153], %a09[153], %a10[153], %a11[153], %a12[153]] *
            poly z [%b00[153], %b01[153], %b02[153], %b03[153], %b04[153], %b05[153],
                    %b06[153], %b07[153], %b08[153], %b09[153], %b10[153], %b11[153], %b12[153]]) +
           (poly z [%c00[153], %c01[153], %c02[153], %c03[153], %c04[153], %c05[153],
                    %c06[153], %c07[153], %c08[153], %c09[153], %c10[153], %c11[153], %c12[153]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[154], %r01[154], %r02[154], %r03[154], %r04[154], %r05[154],
                   %r06[154], %r07[154], %r08[154], %r09[154], %r10[154], %r11[154], %r12[154]])
          ((poly z [%a00[154], %a01[154], %a02[154], %a03[154], %a04[154], %a05[154],
                    %a06[154], %a07[154], %a08[154], %a09[154], %a10[154], %a11[154], %a12[154]] *
            poly z [%b00[154], %b01[154], %b02[154], %b03[154], %b04[154], %b05[154],
                    %b06[154], %b07[154], %b08[154], %b09[154], %b10[154], %b11[154], %b12[154]]) +
           (poly z [%c00[154], %c01[154], %c02[154], %c03[154], %c04[154], %c05[154],
                    %c06[154], %c07[154], %c08[154], %c09[154], %c10[154], %c11[154], %c12[154]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[155], %r01[155], %r02[155], %r03[155], %r04[155], %r05[155],
                   %r06[155], %r07[155], %r08[155], %r09[155], %r10[155], %r11[155], %r12[155]])
          ((poly z [%a00[155], %a01[155], %a02[155], %a03[155], %a04[155], %a05[155],
                    %a06[155], %a07[155], %a08[155], %a09[155], %a10[155], %a11[155], %a12[155]] *
            poly z [%b00[155], %b01[155], %b02[155], %b03[155], %b04[155], %b05[155],
                    %b06[155], %b07[155], %b08[155], %b09[155], %b10[155], %b11[155], %b12[155]]) +
           (poly z [%c00[155], %c01[155], %c02[155], %c03[155], %c04[155], %c05[155],
                    %c06[155], %c07[155], %c08[155], %c09[155], %c10[155], %c11[155], %c12[155]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[156], %r01[156], %r02[156], %r03[156], %r04[156], %r05[156],
                   %r06[156], %r07[156], %r08[156], %r09[156], %r10[156], %r11[156], %r12[156]])
          ((poly z [%a00[156], %a01[156], %a02[156], %a03[156], %a04[156], %a05[156],
                    %a06[156], %a07[156], %a08[156], %a09[156], %a10[156], %a11[156], %a12[156]] *
            poly z [%b00[156], %b01[156], %b02[156], %b03[156], %b04[156], %b05[156],
                    %b06[156], %b07[156], %b08[156], %b09[156], %b10[156], %b11[156], %b12[156]]) +
           (poly z [%c00[156], %c01[156], %c02[156], %c03[156], %c04[156], %c05[156],
                    %c06[156], %c07[156], %c08[156], %c09[156], %c10[156], %c11[156], %c12[156]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[157], %r01[157], %r02[157], %r03[157], %r04[157], %r05[157],
                   %r06[157], %r07[157], %r08[157], %r09[157], %r10[157], %r11[157], %r12[157]])
          ((poly z [%a00[157], %a01[157], %a02[157], %a03[157], %a04[157], %a05[157],
                    %a06[157], %a07[157], %a08[157], %a09[157], %a10[157], %a11[157], %a12[157]] *
            poly z [%b00[157], %b01[157], %b02[157], %b03[157], %b04[157], %b05[157],
                    %b06[157], %b07[157], %b08[157], %b09[157], %b10[157], %b11[157], %b12[157]]) +
           (poly z [%c00[157], %c01[157], %c02[157], %c03[157], %c04[157], %c05[157],
                    %c06[157], %c07[157], %c08[157], %c09[157], %c10[157], %c11[157], %c12[157]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[158], %r01[158], %r02[158], %r03[158], %r04[158], %r05[158],
                   %r06[158], %r07[158], %r08[158], %r09[158], %r10[158], %r11[158], %r12[158]])
          ((poly z [%a00[158], %a01[158], %a02[158], %a03[158], %a04[158], %a05[158],
                    %a06[158], %a07[158], %a08[158], %a09[158], %a10[158], %a11[158], %a12[158]] *
            poly z [%b00[158], %b01[158], %b02[158], %b03[158], %b04[158], %b05[158],
                    %b06[158], %b07[158], %b08[158], %b09[158], %b10[158], %b11[158], %b12[158]]) +
           (poly z [%c00[158], %c01[158], %c02[158], %c03[158], %c04[158], %c05[158],
                    %c06[158], %c07[158], %c08[158], %c09[158], %c10[158], %c11[158], %c12[158]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[159], %r01[159], %r02[159], %r03[159], %r04[159], %r05[159],
                   %r06[159], %r07[159], %r08[159], %r09[159], %r10[159], %r11[159], %r12[159]])
          ((poly z [%a00[159], %a01[159], %a02[159], %a03[159], %a04[159], %a05[159],
                    %a06[159], %a07[159], %a08[159], %a09[159], %a10[159], %a11[159], %a12[159]] *
            poly z [%b00[159], %b01[159], %b02[159], %b03[159], %b04[159], %b05[159],
                    %b06[159], %b07[159], %b08[159], %b09[159], %b10[159], %b11[159], %b12[159]]) +
           (poly z [%c00[159], %c01[159], %c02[159], %c03[159], %c04[159], %c05[159],
                    %c06[159], %c07[159], %c08[159], %c09[159], %c10[159], %c11[159], %c12[159]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[160], %r01[160], %r02[160], %r03[160], %r04[160], %r05[160],
                   %r06[160], %r07[160], %r08[160], %r09[160], %r10[160], %r11[160], %r12[160]])
          ((poly z [%a00[160], %a01[160], %a02[160], %a03[160], %a04[160], %a05[160],
                    %a06[160], %a07[160], %a08[160], %a09[160], %a10[160], %a11[160], %a12[160]] *
            poly z [%b00[160], %b01[160], %b02[160], %b03[160], %b04[160], %b05[160],
                    %b06[160], %b07[160], %b08[160], %b09[160], %b10[160], %b11[160], %b12[160]]) +
           (poly z [%c00[160], %c01[160], %c02[160], %c03[160], %c04[160], %c05[160],
                    %c06[160], %c07[160], %c08[160], %c09[160], %c10[160], %c11[160], %c12[160]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[161], %r01[161], %r02[161], %r03[161], %r04[161], %r05[161],
                   %r06[161], %r07[161], %r08[161], %r09[161], %r10[161], %r11[161], %r12[161]])
          ((poly z [%a00[161], %a01[161], %a02[161], %a03[161], %a04[161], %a05[161],
                    %a06[161], %a07[161], %a08[161], %a09[161], %a10[161], %a11[161], %a12[161]] *
            poly z [%b00[161], %b01[161], %b02[161], %b03[161], %b04[161], %b05[161],
                    %b06[161], %b07[161], %b08[161], %b09[161], %b10[161], %b11[161], %b12[161]]) +
           (poly z [%c00[161], %c01[161], %c02[161], %c03[161], %c04[161], %c05[161],
                    %c06[161], %c07[161], %c08[161], %c09[161], %c10[161], %c11[161], %c12[161]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[162], %r01[162], %r02[162], %r03[162], %r04[162], %r05[162],
                   %r06[162], %r07[162], %r08[162], %r09[162], %r10[162], %r11[162], %r12[162]])
          ((poly z [%a00[162], %a01[162], %a02[162], %a03[162], %a04[162], %a05[162],
                    %a06[162], %a07[162], %a08[162], %a09[162], %a10[162], %a11[162], %a12[162]] *
            poly z [%b00[162], %b01[162], %b02[162], %b03[162], %b04[162], %b05[162],
                    %b06[162], %b07[162], %b08[162], %b09[162], %b10[162], %b11[162], %b12[162]]) +
           (poly z [%c00[162], %c01[162], %c02[162], %c03[162], %c04[162], %c05[162],
                    %c06[162], %c07[162], %c08[162], %c09[162], %c10[162], %c11[162], %c12[162]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[163], %r01[163], %r02[163], %r03[163], %r04[163], %r05[163],
                   %r06[163], %r07[163], %r08[163], %r09[163], %r10[163], %r11[163], %r12[163]])
          ((poly z [%a00[163], %a01[163], %a02[163], %a03[163], %a04[163], %a05[163],
                    %a06[163], %a07[163], %a08[163], %a09[163], %a10[163], %a11[163], %a12[163]] *
            poly z [%b00[163], %b01[163], %b02[163], %b03[163], %b04[163], %b05[163],
                    %b06[163], %b07[163], %b08[163], %b09[163], %b10[163], %b11[163], %b12[163]]) +
           (poly z [%c00[163], %c01[163], %c02[163], %c03[163], %c04[163], %c05[163],
                    %c06[163], %c07[163], %c08[163], %c09[163], %c10[163], %c11[163], %c12[163]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[164], %r01[164], %r02[164], %r03[164], %r04[164], %r05[164],
                   %r06[164], %r07[164], %r08[164], %r09[164], %r10[164], %r11[164], %r12[164]])
          ((poly z [%a00[164], %a01[164], %a02[164], %a03[164], %a04[164], %a05[164],
                    %a06[164], %a07[164], %a08[164], %a09[164], %a10[164], %a11[164], %a12[164]] *
            poly z [%b00[164], %b01[164], %b02[164], %b03[164], %b04[164], %b05[164],
                    %b06[164], %b07[164], %b08[164], %b09[164], %b10[164], %b11[164], %b12[164]]) +
           (poly z [%c00[164], %c01[164], %c02[164], %c03[164], %c04[164], %c05[164],
                    %c06[164], %c07[164], %c08[164], %c09[164], %c10[164], %c11[164], %c12[164]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[165], %r01[165], %r02[165], %r03[165], %r04[165], %r05[165],
                   %r06[165], %r07[165], %r08[165], %r09[165], %r10[165], %r11[165], %r12[165]])
          ((poly z [%a00[165], %a01[165], %a02[165], %a03[165], %a04[165], %a05[165],
                    %a06[165], %a07[165], %a08[165], %a09[165], %a10[165], %a11[165], %a12[165]] *
            poly z [%b00[165], %b01[165], %b02[165], %b03[165], %b04[165], %b05[165],
                    %b06[165], %b07[165], %b08[165], %b09[165], %b10[165], %b11[165], %b12[165]]) +
           (poly z [%c00[165], %c01[165], %c02[165], %c03[165], %c04[165], %c05[165],
                    %c06[165], %c07[165], %c08[165], %c09[165], %c10[165], %c11[165], %c12[165]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[166], %r01[166], %r02[166], %r03[166], %r04[166], %r05[166],
                   %r06[166], %r07[166], %r08[166], %r09[166], %r10[166], %r11[166], %r12[166]])
          ((poly z [%a00[166], %a01[166], %a02[166], %a03[166], %a04[166], %a05[166],
                    %a06[166], %a07[166], %a08[166], %a09[166], %a10[166], %a11[166], %a12[166]] *
            poly z [%b00[166], %b01[166], %b02[166], %b03[166], %b04[166], %b05[166],
                    %b06[166], %b07[166], %b08[166], %b09[166], %b10[166], %b11[166], %b12[166]]) +
           (poly z [%c00[166], %c01[166], %c02[166], %c03[166], %c04[166], %c05[166],
                    %c06[166], %c07[166], %c08[166], %c09[166], %c10[166], %c11[166], %c12[166]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[167], %r01[167], %r02[167], %r03[167], %r04[167], %r05[167],
                   %r06[167], %r07[167], %r08[167], %r09[167], %r10[167], %r11[167], %r12[167]])
          ((poly z [%a00[167], %a01[167], %a02[167], %a03[167], %a04[167], %a05[167],
                    %a06[167], %a07[167], %a08[167], %a09[167], %a10[167], %a11[167], %a12[167]] *
            poly z [%b00[167], %b01[167], %b02[167], %b03[167], %b04[167], %b05[167],
                    %b06[167], %b07[167], %b08[167], %b09[167], %b10[167], %b11[167], %b12[167]]) +
           (poly z [%c00[167], %c01[167], %c02[167], %c03[167], %c04[167], %c05[167],
                    %c06[167], %c07[167], %c08[167], %c09[167], %c10[167], %c11[167], %c12[167]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[168], %r01[168], %r02[168], %r03[168], %r04[168], %r05[168],
                   %r06[168], %r07[168], %r08[168], %r09[168], %r10[168], %r11[168], %r12[168]])
          ((poly z [%a00[168], %a01[168], %a02[168], %a03[168], %a04[168], %a05[168],
                    %a06[168], %a07[168], %a08[168], %a09[168], %a10[168], %a11[168], %a12[168]] *
            poly z [%b00[168], %b01[168], %b02[168], %b03[168], %b04[168], %b05[168],
                    %b06[168], %b07[168], %b08[168], %b09[168], %b10[168], %b11[168], %b12[168]]) +
           (poly z [%c00[168], %c01[168], %c02[168], %c03[168], %c04[168], %c05[168],
                    %c06[168], %c07[168], %c08[168], %c09[168], %c10[168], %c11[168], %c12[168]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[169], %r01[169], %r02[169], %r03[169], %r04[169], %r05[169],
                   %r06[169], %r07[169], %r08[169], %r09[169], %r10[169], %r11[169], %r12[169]])
          ((poly z [%a00[169], %a01[169], %a02[169], %a03[169], %a04[169], %a05[169],
                    %a06[169], %a07[169], %a08[169], %a09[169], %a10[169], %a11[169], %a12[169]] *
            poly z [%b00[169], %b01[169], %b02[169], %b03[169], %b04[169], %b05[169],
                    %b06[169], %b07[169], %b08[169], %b09[169], %b10[169], %b11[169], %b12[169]]) +
           (poly z [%c00[169], %c01[169], %c02[169], %c03[169], %c04[169], %c05[169],
                    %c06[169], %c07[169], %c08[169], %c09[169], %c10[169], %c11[169], %c12[169]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[170], %r01[170], %r02[170], %r03[170], %r04[170], %r05[170],
                   %r06[170], %r07[170], %r08[170], %r09[170], %r10[170], %r11[170], %r12[170]])
          ((poly z [%a00[170], %a01[170], %a02[170], %a03[170], %a04[170], %a05[170],
                    %a06[170], %a07[170], %a08[170], %a09[170], %a10[170], %a11[170], %a12[170]] *
            poly z [%b00[170], %b01[170], %b02[170], %b03[170], %b04[170], %b05[170],
                    %b06[170], %b07[170], %b08[170], %b09[170], %b10[170], %b11[170], %b12[170]]) +
           (poly z [%c00[170], %c01[170], %c02[170], %c03[170], %c04[170], %c05[170],
                    %c06[170], %c07[170], %c08[170], %c09[170], %c10[170], %c11[170], %c12[170]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[171], %r01[171], %r02[171], %r03[171], %r04[171], %r05[171],
                   %r06[171], %r07[171], %r08[171], %r09[171], %r10[171], %r11[171], %r12[171]])
          ((poly z [%a00[171], %a01[171], %a02[171], %a03[171], %a04[171], %a05[171],
                    %a06[171], %a07[171], %a08[171], %a09[171], %a10[171], %a11[171], %a12[171]] *
            poly z [%b00[171], %b01[171], %b02[171], %b03[171], %b04[171], %b05[171],
                    %b06[171], %b07[171], %b08[171], %b09[171], %b10[171], %b11[171], %b12[171]]) +
           (poly z [%c00[171], %c01[171], %c02[171], %c03[171], %c04[171], %c05[171],
                    %c06[171], %c07[171], %c08[171], %c09[171], %c10[171], %c11[171], %c12[171]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[172], %r01[172], %r02[172], %r03[172], %r04[172], %r05[172],
                   %r06[172], %r07[172], %r08[172], %r09[172], %r10[172], %r11[172], %r12[172]])
          ((poly z [%a00[172], %a01[172], %a02[172], %a03[172], %a04[172], %a05[172],
                    %a06[172], %a07[172], %a08[172], %a09[172], %a10[172], %a11[172], %a12[172]] *
            poly z [%b00[172], %b01[172], %b02[172], %b03[172], %b04[172], %b05[172],
                    %b06[172], %b07[172], %b08[172], %b09[172], %b10[172], %b11[172], %b12[172]]) +
           (poly z [%c00[172], %c01[172], %c02[172], %c03[172], %c04[172], %c05[172],
                    %c06[172], %c07[172], %c08[172], %c09[172], %c10[172], %c11[172], %c12[172]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[173], %r01[173], %r02[173], %r03[173], %r04[173], %r05[173],
                   %r06[173], %r07[173], %r08[173], %r09[173], %r10[173], %r11[173], %r12[173]])
          ((poly z [%a00[173], %a01[173], %a02[173], %a03[173], %a04[173], %a05[173],
                    %a06[173], %a07[173], %a08[173], %a09[173], %a10[173], %a11[173], %a12[173]] *
            poly z [%b00[173], %b01[173], %b02[173], %b03[173], %b04[173], %b05[173],
                    %b06[173], %b07[173], %b08[173], %b09[173], %b10[173], %b11[173], %b12[173]]) +
           (poly z [%c00[173], %c01[173], %c02[173], %c03[173], %c04[173], %c05[173],
                    %c06[173], %c07[173], %c08[173], %c09[173], %c10[173], %c11[173], %c12[173]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[174], %r01[174], %r02[174], %r03[174], %r04[174], %r05[174],
                   %r06[174], %r07[174], %r08[174], %r09[174], %r10[174], %r11[174], %r12[174]])
          ((poly z [%a00[174], %a01[174], %a02[174], %a03[174], %a04[174], %a05[174],
                    %a06[174], %a07[174], %a08[174], %a09[174], %a10[174], %a11[174], %a12[174]] *
            poly z [%b00[174], %b01[174], %b02[174], %b03[174], %b04[174], %b05[174],
                    %b06[174], %b07[174], %b08[174], %b09[174], %b10[174], %b11[174], %b12[174]]) +
           (poly z [%c00[174], %c01[174], %c02[174], %c03[174], %c04[174], %c05[174],
                    %c06[174], %c07[174], %c08[174], %c09[174], %c10[174], %c11[174], %c12[174]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[175], %r01[175], %r02[175], %r03[175], %r04[175], %r05[175],
                   %r06[175], %r07[175], %r08[175], %r09[175], %r10[175], %r11[175], %r12[175]])
          ((poly z [%a00[175], %a01[175], %a02[175], %a03[175], %a04[175], %a05[175],
                    %a06[175], %a07[175], %a08[175], %a09[175], %a10[175], %a11[175], %a12[175]] *
            poly z [%b00[175], %b01[175], %b02[175], %b03[175], %b04[175], %b05[175],
                    %b06[175], %b07[175], %b08[175], %b09[175], %b10[175], %b11[175], %b12[175]]) +
           (poly z [%c00[175], %c01[175], %c02[175], %c03[175], %c04[175], %c05[175],
                    %c06[175], %c07[175], %c08[175], %c09[175], %c10[175], %c11[175], %c12[175]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[176], %r01[176], %r02[176], %r03[176], %r04[176], %r05[176],
                   %r06[176], %r07[176], %r08[176], %r09[176], %r10[176], %r11[176], %r12[176]])
          ((poly z [%a00[176], %a01[176], %a02[176], %a03[176], %a04[176], %a05[176],
                    %a06[176], %a07[176], %a08[176], %a09[176], %a10[176], %a11[176], %a12[176]] *
            poly z [%b00[176], %b01[176], %b02[176], %b03[176], %b04[176], %b05[176],
                    %b06[176], %b07[176], %b08[176], %b09[176], %b10[176], %b11[176], %b12[176]]) +
           (poly z [%c00[176], %c01[176], %c02[176], %c03[176], %c04[176], %c05[176],
                    %c06[176], %c07[176], %c08[176], %c09[176], %c10[176], %c11[176], %c12[176]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[177], %r01[177], %r02[177], %r03[177], %r04[177], %r05[177],
                   %r06[177], %r07[177], %r08[177], %r09[177], %r10[177], %r11[177], %r12[177]])
          ((poly z [%a00[177], %a01[177], %a02[177], %a03[177], %a04[177], %a05[177],
                    %a06[177], %a07[177], %a08[177], %a09[177], %a10[177], %a11[177], %a12[177]] *
            poly z [%b00[177], %b01[177], %b02[177], %b03[177], %b04[177], %b05[177],
                    %b06[177], %b07[177], %b08[177], %b09[177], %b10[177], %b11[177], %b12[177]]) +
           (poly z [%c00[177], %c01[177], %c02[177], %c03[177], %c04[177], %c05[177],
                    %c06[177], %c07[177], %c08[177], %c09[177], %c10[177], %c11[177], %c12[177]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[178], %r01[178], %r02[178], %r03[178], %r04[178], %r05[178],
                   %r06[178], %r07[178], %r08[178], %r09[178], %r10[178], %r11[178], %r12[178]])
          ((poly z [%a00[178], %a01[178], %a02[178], %a03[178], %a04[178], %a05[178],
                    %a06[178], %a07[178], %a08[178], %a09[178], %a10[178], %a11[178], %a12[178]] *
            poly z [%b00[178], %b01[178], %b02[178], %b03[178], %b04[178], %b05[178],
                    %b06[178], %b07[178], %b08[178], %b09[178], %b10[178], %b11[178], %b12[178]]) +
           (poly z [%c00[178], %c01[178], %c02[178], %c03[178], %c04[178], %c05[178],
                    %c06[178], %c07[178], %c08[178], %c09[178], %c10[178], %c11[178], %c12[178]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[179], %r01[179], %r02[179], %r03[179], %r04[179], %r05[179],
                   %r06[179], %r07[179], %r08[179], %r09[179], %r10[179], %r11[179], %r12[179]])
          ((poly z [%a00[179], %a01[179], %a02[179], %a03[179], %a04[179], %a05[179],
                    %a06[179], %a07[179], %a08[179], %a09[179], %a10[179], %a11[179], %a12[179]] *
            poly z [%b00[179], %b01[179], %b02[179], %b03[179], %b04[179], %b05[179],
                    %b06[179], %b07[179], %b08[179], %b09[179], %b10[179], %b11[179], %b12[179]]) +
           (poly z [%c00[179], %c01[179], %c02[179], %c03[179], %c04[179], %c05[179],
                    %c06[179], %c07[179], %c08[179], %c09[179], %c10[179], %c11[179], %c12[179]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[180], %r01[180], %r02[180], %r03[180], %r04[180], %r05[180],
                   %r06[180], %r07[180], %r08[180], %r09[180], %r10[180], %r11[180], %r12[180]])
          ((poly z [%a00[180], %a01[180], %a02[180], %a03[180], %a04[180], %a05[180],
                    %a06[180], %a07[180], %a08[180], %a09[180], %a10[180], %a11[180], %a12[180]] *
            poly z [%b00[180], %b01[180], %b02[180], %b03[180], %b04[180], %b05[180],
                    %b06[180], %b07[180], %b08[180], %b09[180], %b10[180], %b11[180], %b12[180]]) +
           (poly z [%c00[180], %c01[180], %c02[180], %c03[180], %c04[180], %c05[180],
                    %c06[180], %c07[180], %c08[180], %c09[180], %c10[180], %c11[180], %c12[180]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[181], %r01[181], %r02[181], %r03[181], %r04[181], %r05[181],
                   %r06[181], %r07[181], %r08[181], %r09[181], %r10[181], %r11[181], %r12[181]])
          ((poly z [%a00[181], %a01[181], %a02[181], %a03[181], %a04[181], %a05[181],
                    %a06[181], %a07[181], %a08[181], %a09[181], %a10[181], %a11[181], %a12[181]] *
            poly z [%b00[181], %b01[181], %b02[181], %b03[181], %b04[181], %b05[181],
                    %b06[181], %b07[181], %b08[181], %b09[181], %b10[181], %b11[181], %b12[181]]) +
           (poly z [%c00[181], %c01[181], %c02[181], %c03[181], %c04[181], %c05[181],
                    %c06[181], %c07[181], %c08[181], %c09[181], %c10[181], %c11[181], %c12[181]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[182], %r01[182], %r02[182], %r03[182], %r04[182], %r05[182],
                   %r06[182], %r07[182], %r08[182], %r09[182], %r10[182], %r11[182], %r12[182]])
          ((poly z [%a00[182], %a01[182], %a02[182], %a03[182], %a04[182], %a05[182],
                    %a06[182], %a07[182], %a08[182], %a09[182], %a10[182], %a11[182], %a12[182]] *
            poly z [%b00[182], %b01[182], %b02[182], %b03[182], %b04[182], %b05[182],
                    %b06[182], %b07[182], %b08[182], %b09[182], %b10[182], %b11[182], %b12[182]]) +
           (poly z [%c00[182], %c01[182], %c02[182], %c03[182], %c04[182], %c05[182],
                    %c06[182], %c07[182], %c08[182], %c09[182], %c10[182], %c11[182], %c12[182]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[183], %r01[183], %r02[183], %r03[183], %r04[183], %r05[183],
                   %r06[183], %r07[183], %r08[183], %r09[183], %r10[183], %r11[183], %r12[183]])
          ((poly z [%a00[183], %a01[183], %a02[183], %a03[183], %a04[183], %a05[183],
                    %a06[183], %a07[183], %a08[183], %a09[183], %a10[183], %a11[183], %a12[183]] *
            poly z [%b00[183], %b01[183], %b02[183], %b03[183], %b04[183], %b05[183],
                    %b06[183], %b07[183], %b08[183], %b09[183], %b10[183], %b11[183], %b12[183]]) +
           (poly z [%c00[183], %c01[183], %c02[183], %c03[183], %c04[183], %c05[183],
                    %c06[183], %c07[183], %c08[183], %c09[183], %c10[183], %c11[183], %c12[183]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[184], %r01[184], %r02[184], %r03[184], %r04[184], %r05[184],
                   %r06[184], %r07[184], %r08[184], %r09[184], %r10[184], %r11[184], %r12[184]])
          ((poly z [%a00[184], %a01[184], %a02[184], %a03[184], %a04[184], %a05[184],
                    %a06[184], %a07[184], %a08[184], %a09[184], %a10[184], %a11[184], %a12[184]] *
            poly z [%b00[184], %b01[184], %b02[184], %b03[184], %b04[184], %b05[184],
                    %b06[184], %b07[184], %b08[184], %b09[184], %b10[184], %b11[184], %b12[184]]) +
           (poly z [%c00[184], %c01[184], %c02[184], %c03[184], %c04[184], %c05[184],
                    %c06[184], %c07[184], %c08[184], %c09[184], %c10[184], %c11[184], %c12[184]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[185], %r01[185], %r02[185], %r03[185], %r04[185], %r05[185],
                   %r06[185], %r07[185], %r08[185], %r09[185], %r10[185], %r11[185], %r12[185]])
          ((poly z [%a00[185], %a01[185], %a02[185], %a03[185], %a04[185], %a05[185],
                    %a06[185], %a07[185], %a08[185], %a09[185], %a10[185], %a11[185], %a12[185]] *
            poly z [%b00[185], %b01[185], %b02[185], %b03[185], %b04[185], %b05[185],
                    %b06[185], %b07[185], %b08[185], %b09[185], %b10[185], %b11[185], %b12[185]]) +
           (poly z [%c00[185], %c01[185], %c02[185], %c03[185], %c04[185], %c05[185],
                    %c06[185], %c07[185], %c08[185], %c09[185], %c10[185], %c11[185], %c12[185]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[186], %r01[186], %r02[186], %r03[186], %r04[186], %r05[186],
                   %r06[186], %r07[186], %r08[186], %r09[186], %r10[186], %r11[186], %r12[186]])
          ((poly z [%a00[186], %a01[186], %a02[186], %a03[186], %a04[186], %a05[186],
                    %a06[186], %a07[186], %a08[186], %a09[186], %a10[186], %a11[186], %a12[186]] *
            poly z [%b00[186], %b01[186], %b02[186], %b03[186], %b04[186], %b05[186],
                    %b06[186], %b07[186], %b08[186], %b09[186], %b10[186], %b11[186], %b12[186]]) +
           (poly z [%c00[186], %c01[186], %c02[186], %c03[186], %c04[186], %c05[186],
                    %c06[186], %c07[186], %c08[186], %c09[186], %c10[186], %c11[186], %c12[186]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[187], %r01[187], %r02[187], %r03[187], %r04[187], %r05[187],
                   %r06[187], %r07[187], %r08[187], %r09[187], %r10[187], %r11[187], %r12[187]])
          ((poly z [%a00[187], %a01[187], %a02[187], %a03[187], %a04[187], %a05[187],
                    %a06[187], %a07[187], %a08[187], %a09[187], %a10[187], %a11[187], %a12[187]] *
            poly z [%b00[187], %b01[187], %b02[187], %b03[187], %b04[187], %b05[187],
                    %b06[187], %b07[187], %b08[187], %b09[187], %b10[187], %b11[187], %b12[187]]) +
           (poly z [%c00[187], %c01[187], %c02[187], %c03[187], %c04[187], %c05[187],
                    %c06[187], %c07[187], %c08[187], %c09[187], %c10[187], %c11[187], %c12[187]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[188], %r01[188], %r02[188], %r03[188], %r04[188], %r05[188],
                   %r06[188], %r07[188], %r08[188], %r09[188], %r10[188], %r11[188], %r12[188]])
          ((poly z [%a00[188], %a01[188], %a02[188], %a03[188], %a04[188], %a05[188],
                    %a06[188], %a07[188], %a08[188], %a09[188], %a10[188], %a11[188], %a12[188]] *
            poly z [%b00[188], %b01[188], %b02[188], %b03[188], %b04[188], %b05[188],
                    %b06[188], %b07[188], %b08[188], %b09[188], %b10[188], %b11[188], %b12[188]]) +
           (poly z [%c00[188], %c01[188], %c02[188], %c03[188], %c04[188], %c05[188],
                    %c06[188], %c07[188], %c08[188], %c09[188], %c10[188], %c11[188], %c12[188]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[189], %r01[189], %r02[189], %r03[189], %r04[189], %r05[189],
                   %r06[189], %r07[189], %r08[189], %r09[189], %r10[189], %r11[189], %r12[189]])
          ((poly z [%a00[189], %a01[189], %a02[189], %a03[189], %a04[189], %a05[189],
                    %a06[189], %a07[189], %a08[189], %a09[189], %a10[189], %a11[189], %a12[189]] *
            poly z [%b00[189], %b01[189], %b02[189], %b03[189], %b04[189], %b05[189],
                    %b06[189], %b07[189], %b08[189], %b09[189], %b10[189], %b11[189], %b12[189]]) +
           (poly z [%c00[189], %c01[189], %c02[189], %c03[189], %c04[189], %c05[189],
                    %c06[189], %c07[189], %c08[189], %c09[189], %c10[189], %c11[189], %c12[189]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[190], %r01[190], %r02[190], %r03[190], %r04[190], %r05[190],
                   %r06[190], %r07[190], %r08[190], %r09[190], %r10[190], %r11[190], %r12[190]])
          ((poly z [%a00[190], %a01[190], %a02[190], %a03[190], %a04[190], %a05[190],
                    %a06[190], %a07[190], %a08[190], %a09[190], %a10[190], %a11[190], %a12[190]] *
            poly z [%b00[190], %b01[190], %b02[190], %b03[190], %b04[190], %b05[190],
                    %b06[190], %b07[190], %b08[190], %b09[190], %b10[190], %b11[190], %b12[190]]) +
           (poly z [%c00[190], %c01[190], %c02[190], %c03[190], %c04[190], %c05[190],
                    %c06[190], %c07[190], %c08[190], %c09[190], %c10[190], %c11[190], %c12[190]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[191], %r01[191], %r02[191], %r03[191], %r04[191], %r05[191],
                   %r06[191], %r07[191], %r08[191], %r09[191], %r10[191], %r11[191], %r12[191]])
          ((poly z [%a00[191], %a01[191], %a02[191], %a03[191], %a04[191], %a05[191],
                    %a06[191], %a07[191], %a08[191], %a09[191], %a10[191], %a11[191], %a12[191]] *
            poly z [%b00[191], %b01[191], %b02[191], %b03[191], %b04[191], %b05[191],
                    %b06[191], %b07[191], %b08[191], %b09[191], %b10[191], %b11[191], %b12[191]]) +
           (poly z [%c00[191], %c01[191], %c02[191], %c03[191], %c04[191], %c05[191],
                    %c06[191], %c07[191], %c08[191], %c09[191], %c10[191], %c11[191], %c12[191]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[192], %r01[192], %r02[192], %r03[192], %r04[192], %r05[192],
                   %r06[192], %r07[192], %r08[192], %r09[192], %r10[192], %r11[192], %r12[192]])
          ((poly z [%a00[192], %a01[192], %a02[192], %a03[192], %a04[192], %a05[192],
                    %a06[192], %a07[192], %a08[192], %a09[192], %a10[192], %a11[192], %a12[192]] *
            poly z [%b00[192], %b01[192], %b02[192], %b03[192], %b04[192], %b05[192],
                    %b06[192], %b07[192], %b08[192], %b09[192], %b10[192], %b11[192], %b12[192]]) +
           (poly z [%c00[192], %c01[192], %c02[192], %c03[192], %c04[192], %c05[192],
                    %c06[192], %c07[192], %c08[192], %c09[192], %c10[192], %c11[192], %c12[192]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[193], %r01[193], %r02[193], %r03[193], %r04[193], %r05[193],
                   %r06[193], %r07[193], %r08[193], %r09[193], %r10[193], %r11[193], %r12[193]])
          ((poly z [%a00[193], %a01[193], %a02[193], %a03[193], %a04[193], %a05[193],
                    %a06[193], %a07[193], %a08[193], %a09[193], %a10[193], %a11[193], %a12[193]] *
            poly z [%b00[193], %b01[193], %b02[193], %b03[193], %b04[193], %b05[193],
                    %b06[193], %b07[193], %b08[193], %b09[193], %b10[193], %b11[193], %b12[193]]) +
           (poly z [%c00[193], %c01[193], %c02[193], %c03[193], %c04[193], %c05[193],
                    %c06[193], %c07[193], %c08[193], %c09[193], %c10[193], %c11[193], %c12[193]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[194], %r01[194], %r02[194], %r03[194], %r04[194], %r05[194],
                   %r06[194], %r07[194], %r08[194], %r09[194], %r10[194], %r11[194], %r12[194]])
          ((poly z [%a00[194], %a01[194], %a02[194], %a03[194], %a04[194], %a05[194],
                    %a06[194], %a07[194], %a08[194], %a09[194], %a10[194], %a11[194], %a12[194]] *
            poly z [%b00[194], %b01[194], %b02[194], %b03[194], %b04[194], %b05[194],
                    %b06[194], %b07[194], %b08[194], %b09[194], %b10[194], %b11[194], %b12[194]]) +
           (poly z [%c00[194], %c01[194], %c02[194], %c03[194], %c04[194], %c05[194],
                    %c06[194], %c07[194], %c08[194], %c09[194], %c10[194], %c11[194], %c12[194]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[195], %r01[195], %r02[195], %r03[195], %r04[195], %r05[195],
                   %r06[195], %r07[195], %r08[195], %r09[195], %r10[195], %r11[195], %r12[195]])
          ((poly z [%a00[195], %a01[195], %a02[195], %a03[195], %a04[195], %a05[195],
                    %a06[195], %a07[195], %a08[195], %a09[195], %a10[195], %a11[195], %a12[195]] *
            poly z [%b00[195], %b01[195], %b02[195], %b03[195], %b04[195], %b05[195],
                    %b06[195], %b07[195], %b08[195], %b09[195], %b10[195], %b11[195], %b12[195]]) +
           (poly z [%c00[195], %c01[195], %c02[195], %c03[195], %c04[195], %c05[195],
                    %c06[195], %c07[195], %c08[195], %c09[195], %c10[195], %c11[195], %c12[195]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[196], %r01[196], %r02[196], %r03[196], %r04[196], %r05[196],
                   %r06[196], %r07[196], %r08[196], %r09[196], %r10[196], %r11[196], %r12[196]])
          ((poly z [%a00[196], %a01[196], %a02[196], %a03[196], %a04[196], %a05[196],
                    %a06[196], %a07[196], %a08[196], %a09[196], %a10[196], %a11[196], %a12[196]] *
            poly z [%b00[196], %b01[196], %b02[196], %b03[196], %b04[196], %b05[196],
                    %b06[196], %b07[196], %b08[196], %b09[196], %b10[196], %b11[196], %b12[196]]) +
           (poly z [%c00[196], %c01[196], %c02[196], %c03[196], %c04[196], %c05[196],
                    %c06[196], %c07[196], %c08[196], %c09[196], %c10[196], %c11[196], %c12[196]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[197], %r01[197], %r02[197], %r03[197], %r04[197], %r05[197],
                   %r06[197], %r07[197], %r08[197], %r09[197], %r10[197], %r11[197], %r12[197]])
          ((poly z [%a00[197], %a01[197], %a02[197], %a03[197], %a04[197], %a05[197],
                    %a06[197], %a07[197], %a08[197], %a09[197], %a10[197], %a11[197], %a12[197]] *
            poly z [%b00[197], %b01[197], %b02[197], %b03[197], %b04[197], %b05[197],
                    %b06[197], %b07[197], %b08[197], %b09[197], %b10[197], %b11[197], %b12[197]]) +
           (poly z [%c00[197], %c01[197], %c02[197], %c03[197], %c04[197], %c05[197],
                    %c06[197], %c07[197], %c08[197], %c09[197], %c10[197], %c11[197], %c12[197]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[198], %r01[198], %r02[198], %r03[198], %r04[198], %r05[198],
                   %r06[198], %r07[198], %r08[198], %r09[198], %r10[198], %r11[198], %r12[198]])
          ((poly z [%a00[198], %a01[198], %a02[198], %a03[198], %a04[198], %a05[198],
                    %a06[198], %a07[198], %a08[198], %a09[198], %a10[198], %a11[198], %a12[198]] *
            poly z [%b00[198], %b01[198], %b02[198], %b03[198], %b04[198], %b05[198],
                    %b06[198], %b07[198], %b08[198], %b09[198], %b10[198], %b11[198], %b12[198]]) +
           (poly z [%c00[198], %c01[198], %c02[198], %c03[198], %c04[198], %c05[198],
                    %c06[198], %c07[198], %c08[198], %c09[198], %c10[198], %c11[198], %c12[198]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[199], %r01[199], %r02[199], %r03[199], %r04[199], %r05[199],
                   %r06[199], %r07[199], %r08[199], %r09[199], %r10[199], %r11[199], %r12[199]])
          ((poly z [%a00[199], %a01[199], %a02[199], %a03[199], %a04[199], %a05[199],
                    %a06[199], %a07[199], %a08[199], %a09[199], %a10[199], %a11[199], %a12[199]] *
            poly z [%b00[199], %b01[199], %b02[199], %b03[199], %b04[199], %b05[199],
                    %b06[199], %b07[199], %b08[199], %b09[199], %b10[199], %b11[199], %b12[199]]) +
           (poly z [%c00[199], %c01[199], %c02[199], %c03[199], %c04[199], %c05[199],
                    %c06[199], %c07[199], %c08[199], %c09[199], %c10[199], %c11[199], %c12[199]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[200], %r01[200], %r02[200], %r03[200], %r04[200], %r05[200],
                   %r06[200], %r07[200], %r08[200], %r09[200], %r10[200], %r11[200], %r12[200]])
          ((poly z [%a00[200], %a01[200], %a02[200], %a03[200], %a04[200], %a05[200],
                    %a06[200], %a07[200], %a08[200], %a09[200], %a10[200], %a11[200], %a12[200]] *
            poly z [%b00[200], %b01[200], %b02[200], %b03[200], %b04[200], %b05[200],
                    %b06[200], %b07[200], %b08[200], %b09[200], %b10[200], %b11[200], %b12[200]]) +
           (poly z [%c00[200], %c01[200], %c02[200], %c03[200], %c04[200], %c05[200],
                    %c06[200], %c07[200], %c08[200], %c09[200], %c10[200], %c11[200], %c12[200]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[201], %r01[201], %r02[201], %r03[201], %r04[201], %r05[201],
                   %r06[201], %r07[201], %r08[201], %r09[201], %r10[201], %r11[201], %r12[201]])
          ((poly z [%a00[201], %a01[201], %a02[201], %a03[201], %a04[201], %a05[201],
                    %a06[201], %a07[201], %a08[201], %a09[201], %a10[201], %a11[201], %a12[201]] *
            poly z [%b00[201], %b01[201], %b02[201], %b03[201], %b04[201], %b05[201],
                    %b06[201], %b07[201], %b08[201], %b09[201], %b10[201], %b11[201], %b12[201]]) +
           (poly z [%c00[201], %c01[201], %c02[201], %c03[201], %c04[201], %c05[201],
                    %c06[201], %c07[201], %c08[201], %c09[201], %c10[201], %c11[201], %c12[201]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[202], %r01[202], %r02[202], %r03[202], %r04[202], %r05[202],
                   %r06[202], %r07[202], %r08[202], %r09[202], %r10[202], %r11[202], %r12[202]])
          ((poly z [%a00[202], %a01[202], %a02[202], %a03[202], %a04[202], %a05[202],
                    %a06[202], %a07[202], %a08[202], %a09[202], %a10[202], %a11[202], %a12[202]] *
            poly z [%b00[202], %b01[202], %b02[202], %b03[202], %b04[202], %b05[202],
                    %b06[202], %b07[202], %b08[202], %b09[202], %b10[202], %b11[202], %b12[202]]) +
           (poly z [%c00[202], %c01[202], %c02[202], %c03[202], %c04[202], %c05[202],
                    %c06[202], %c07[202], %c08[202], %c09[202], %c10[202], %c11[202], %c12[202]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[203], %r01[203], %r02[203], %r03[203], %r04[203], %r05[203],
                   %r06[203], %r07[203], %r08[203], %r09[203], %r10[203], %r11[203], %r12[203]])
          ((poly z [%a00[203], %a01[203], %a02[203], %a03[203], %a04[203], %a05[203],
                    %a06[203], %a07[203], %a08[203], %a09[203], %a10[203], %a11[203], %a12[203]] *
            poly z [%b00[203], %b01[203], %b02[203], %b03[203], %b04[203], %b05[203],
                    %b06[203], %b07[203], %b08[203], %b09[203], %b10[203], %b11[203], %b12[203]]) +
           (poly z [%c00[203], %c01[203], %c02[203], %c03[203], %c04[203], %c05[203],
                    %c06[203], %c07[203], %c08[203], %c09[203], %c10[203], %c11[203], %c12[203]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[204], %r01[204], %r02[204], %r03[204], %r04[204], %r05[204],
                   %r06[204], %r07[204], %r08[204], %r09[204], %r10[204], %r11[204], %r12[204]])
          ((poly z [%a00[204], %a01[204], %a02[204], %a03[204], %a04[204], %a05[204],
                    %a06[204], %a07[204], %a08[204], %a09[204], %a10[204], %a11[204], %a12[204]] *
            poly z [%b00[204], %b01[204], %b02[204], %b03[204], %b04[204], %b05[204],
                    %b06[204], %b07[204], %b08[204], %b09[204], %b10[204], %b11[204], %b12[204]]) +
           (poly z [%c00[204], %c01[204], %c02[204], %c03[204], %c04[204], %c05[204],
                    %c06[204], %c07[204], %c08[204], %c09[204], %c10[204], %c11[204], %c12[204]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[205], %r01[205], %r02[205], %r03[205], %r04[205], %r05[205],
                   %r06[205], %r07[205], %r08[205], %r09[205], %r10[205], %r11[205], %r12[205]])
          ((poly z [%a00[205], %a01[205], %a02[205], %a03[205], %a04[205], %a05[205],
                    %a06[205], %a07[205], %a08[205], %a09[205], %a10[205], %a11[205], %a12[205]] *
            poly z [%b00[205], %b01[205], %b02[205], %b03[205], %b04[205], %b05[205],
                    %b06[205], %b07[205], %b08[205], %b09[205], %b10[205], %b11[205], %b12[205]]) +
           (poly z [%c00[205], %c01[205], %c02[205], %c03[205], %c04[205], %c05[205],
                    %c06[205], %c07[205], %c08[205], %c09[205], %c10[205], %c11[205], %c12[205]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[206], %r01[206], %r02[206], %r03[206], %r04[206], %r05[206],
                   %r06[206], %r07[206], %r08[206], %r09[206], %r10[206], %r11[206], %r12[206]])
          ((poly z [%a00[206], %a01[206], %a02[206], %a03[206], %a04[206], %a05[206],
                    %a06[206], %a07[206], %a08[206], %a09[206], %a10[206], %a11[206], %a12[206]] *
            poly z [%b00[206], %b01[206], %b02[206], %b03[206], %b04[206], %b05[206],
                    %b06[206], %b07[206], %b08[206], %b09[206], %b10[206], %b11[206], %b12[206]]) +
           (poly z [%c00[206], %c01[206], %c02[206], %c03[206], %c04[206], %c05[206],
                    %c06[206], %c07[206], %c08[206], %c09[206], %c10[206], %c11[206], %c12[206]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[207], %r01[207], %r02[207], %r03[207], %r04[207], %r05[207],
                   %r06[207], %r07[207], %r08[207], %r09[207], %r10[207], %r11[207], %r12[207]])
          ((poly z [%a00[207], %a01[207], %a02[207], %a03[207], %a04[207], %a05[207],
                    %a06[207], %a07[207], %a08[207], %a09[207], %a10[207], %a11[207], %a12[207]] *
            poly z [%b00[207], %b01[207], %b02[207], %b03[207], %b04[207], %b05[207],
                    %b06[207], %b07[207], %b08[207], %b09[207], %b10[207], %b11[207], %b12[207]]) +
           (poly z [%c00[207], %c01[207], %c02[207], %c03[207], %c04[207], %c05[207],
                    %c06[207], %c07[207], %c08[207], %c09[207], %c10[207], %c11[207], %c12[207]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[208], %r01[208], %r02[208], %r03[208], %r04[208], %r05[208],
                   %r06[208], %r07[208], %r08[208], %r09[208], %r10[208], %r11[208], %r12[208]])
          ((poly z [%a00[208], %a01[208], %a02[208], %a03[208], %a04[208], %a05[208],
                    %a06[208], %a07[208], %a08[208], %a09[208], %a10[208], %a11[208], %a12[208]] *
            poly z [%b00[208], %b01[208], %b02[208], %b03[208], %b04[208], %b05[208],
                    %b06[208], %b07[208], %b08[208], %b09[208], %b10[208], %b11[208], %b12[208]]) +
           (poly z [%c00[208], %c01[208], %c02[208], %c03[208], %c04[208], %c05[208],
                    %c06[208], %c07[208], %c08[208], %c09[208], %c10[208], %c11[208], %c12[208]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[209], %r01[209], %r02[209], %r03[209], %r04[209], %r05[209],
                   %r06[209], %r07[209], %r08[209], %r09[209], %r10[209], %r11[209], %r12[209]])
          ((poly z [%a00[209], %a01[209], %a02[209], %a03[209], %a04[209], %a05[209],
                    %a06[209], %a07[209], %a08[209], %a09[209], %a10[209], %a11[209], %a12[209]] *
            poly z [%b00[209], %b01[209], %b02[209], %b03[209], %b04[209], %b05[209],
                    %b06[209], %b07[209], %b08[209], %b09[209], %b10[209], %b11[209], %b12[209]]) +
           (poly z [%c00[209], %c01[209], %c02[209], %c03[209], %c04[209], %c05[209],
                    %c06[209], %c07[209], %c08[209], %c09[209], %c10[209], %c11[209], %c12[209]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[210], %r01[210], %r02[210], %r03[210], %r04[210], %r05[210],
                   %r06[210], %r07[210], %r08[210], %r09[210], %r10[210], %r11[210], %r12[210]])
          ((poly z [%a00[210], %a01[210], %a02[210], %a03[210], %a04[210], %a05[210],
                    %a06[210], %a07[210], %a08[210], %a09[210], %a10[210], %a11[210], %a12[210]] *
            poly z [%b00[210], %b01[210], %b02[210], %b03[210], %b04[210], %b05[210],
                    %b06[210], %b07[210], %b08[210], %b09[210], %b10[210], %b11[210], %b12[210]]) +
           (poly z [%c00[210], %c01[210], %c02[210], %c03[210], %c04[210], %c05[210],
                    %c06[210], %c07[210], %c08[210], %c09[210], %c10[210], %c11[210], %c12[210]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[211], %r01[211], %r02[211], %r03[211], %r04[211], %r05[211],
                   %r06[211], %r07[211], %r08[211], %r09[211], %r10[211], %r11[211], %r12[211]])
          ((poly z [%a00[211], %a01[211], %a02[211], %a03[211], %a04[211], %a05[211],
                    %a06[211], %a07[211], %a08[211], %a09[211], %a10[211], %a11[211], %a12[211]] *
            poly z [%b00[211], %b01[211], %b02[211], %b03[211], %b04[211], %b05[211],
                    %b06[211], %b07[211], %b08[211], %b09[211], %b10[211], %b11[211], %b12[211]]) +
           (poly z [%c00[211], %c01[211], %c02[211], %c03[211], %c04[211], %c05[211],
                    %c06[211], %c07[211], %c08[211], %c09[211], %c10[211], %c11[211], %c12[211]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[212], %r01[212], %r02[212], %r03[212], %r04[212], %r05[212],
                   %r06[212], %r07[212], %r08[212], %r09[212], %r10[212], %r11[212], %r12[212]])
          ((poly z [%a00[212], %a01[212], %a02[212], %a03[212], %a04[212], %a05[212],
                    %a06[212], %a07[212], %a08[212], %a09[212], %a10[212], %a11[212], %a12[212]] *
            poly z [%b00[212], %b01[212], %b02[212], %b03[212], %b04[212], %b05[212],
                    %b06[212], %b07[212], %b08[212], %b09[212], %b10[212], %b11[212], %b12[212]]) +
           (poly z [%c00[212], %c01[212], %c02[212], %c03[212], %c04[212], %c05[212],
                    %c06[212], %c07[212], %c08[212], %c09[212], %c10[212], %c11[212], %c12[212]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[213], %r01[213], %r02[213], %r03[213], %r04[213], %r05[213],
                   %r06[213], %r07[213], %r08[213], %r09[213], %r10[213], %r11[213], %r12[213]])
          ((poly z [%a00[213], %a01[213], %a02[213], %a03[213], %a04[213], %a05[213],
                    %a06[213], %a07[213], %a08[213], %a09[213], %a10[213], %a11[213], %a12[213]] *
            poly z [%b00[213], %b01[213], %b02[213], %b03[213], %b04[213], %b05[213],
                    %b06[213], %b07[213], %b08[213], %b09[213], %b10[213], %b11[213], %b12[213]]) +
           (poly z [%c00[213], %c01[213], %c02[213], %c03[213], %c04[213], %c05[213],
                    %c06[213], %c07[213], %c08[213], %c09[213], %c10[213], %c11[213], %c12[213]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[214], %r01[214], %r02[214], %r03[214], %r04[214], %r05[214],
                   %r06[214], %r07[214], %r08[214], %r09[214], %r10[214], %r11[214], %r12[214]])
          ((poly z [%a00[214], %a01[214], %a02[214], %a03[214], %a04[214], %a05[214],
                    %a06[214], %a07[214], %a08[214], %a09[214], %a10[214], %a11[214], %a12[214]] *
            poly z [%b00[214], %b01[214], %b02[214], %b03[214], %b04[214], %b05[214],
                    %b06[214], %b07[214], %b08[214], %b09[214], %b10[214], %b11[214], %b12[214]]) +
           (poly z [%c00[214], %c01[214], %c02[214], %c03[214], %c04[214], %c05[214],
                    %c06[214], %c07[214], %c08[214], %c09[214], %c10[214], %c11[214], %c12[214]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[215], %r01[215], %r02[215], %r03[215], %r04[215], %r05[215],
                   %r06[215], %r07[215], %r08[215], %r09[215], %r10[215], %r11[215], %r12[215]])
          ((poly z [%a00[215], %a01[215], %a02[215], %a03[215], %a04[215], %a05[215],
                    %a06[215], %a07[215], %a08[215], %a09[215], %a10[215], %a11[215], %a12[215]] *
            poly z [%b00[215], %b01[215], %b02[215], %b03[215], %b04[215], %b05[215],
                    %b06[215], %b07[215], %b08[215], %b09[215], %b10[215], %b11[215], %b12[215]]) +
           (poly z [%c00[215], %c01[215], %c02[215], %c03[215], %c04[215], %c05[215],
                    %c06[215], %c07[215], %c08[215], %c09[215], %c10[215], %c11[215], %c12[215]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[216], %r01[216], %r02[216], %r03[216], %r04[216], %r05[216],
                   %r06[216], %r07[216], %r08[216], %r09[216], %r10[216], %r11[216], %r12[216]])
          ((poly z [%a00[216], %a01[216], %a02[216], %a03[216], %a04[216], %a05[216],
                    %a06[216], %a07[216], %a08[216], %a09[216], %a10[216], %a11[216], %a12[216]] *
            poly z [%b00[216], %b01[216], %b02[216], %b03[216], %b04[216], %b05[216],
                    %b06[216], %b07[216], %b08[216], %b09[216], %b10[216], %b11[216], %b12[216]]) +
           (poly z [%c00[216], %c01[216], %c02[216], %c03[216], %c04[216], %c05[216],
                    %c06[216], %c07[216], %c08[216], %c09[216], %c10[216], %c11[216], %c12[216]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[217], %r01[217], %r02[217], %r03[217], %r04[217], %r05[217],
                   %r06[217], %r07[217], %r08[217], %r09[217], %r10[217], %r11[217], %r12[217]])
          ((poly z [%a00[217], %a01[217], %a02[217], %a03[217], %a04[217], %a05[217],
                    %a06[217], %a07[217], %a08[217], %a09[217], %a10[217], %a11[217], %a12[217]] *
            poly z [%b00[217], %b01[217], %b02[217], %b03[217], %b04[217], %b05[217],
                    %b06[217], %b07[217], %b08[217], %b09[217], %b10[217], %b11[217], %b12[217]]) +
           (poly z [%c00[217], %c01[217], %c02[217], %c03[217], %c04[217], %c05[217],
                    %c06[217], %c07[217], %c08[217], %c09[217], %c10[217], %c11[217], %c12[217]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[218], %r01[218], %r02[218], %r03[218], %r04[218], %r05[218],
                   %r06[218], %r07[218], %r08[218], %r09[218], %r10[218], %r11[218], %r12[218]])
          ((poly z [%a00[218], %a01[218], %a02[218], %a03[218], %a04[218], %a05[218],
                    %a06[218], %a07[218], %a08[218], %a09[218], %a10[218], %a11[218], %a12[218]] *
            poly z [%b00[218], %b01[218], %b02[218], %b03[218], %b04[218], %b05[218],
                    %b06[218], %b07[218], %b08[218], %b09[218], %b10[218], %b11[218], %b12[218]]) +
           (poly z [%c00[218], %c01[218], %c02[218], %c03[218], %c04[218], %c05[218],
                    %c06[218], %c07[218], %c08[218], %c09[218], %c10[218], %c11[218], %c12[218]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[219], %r01[219], %r02[219], %r03[219], %r04[219], %r05[219],
                   %r06[219], %r07[219], %r08[219], %r09[219], %r10[219], %r11[219], %r12[219]])
          ((poly z [%a00[219], %a01[219], %a02[219], %a03[219], %a04[219], %a05[219],
                    %a06[219], %a07[219], %a08[219], %a09[219], %a10[219], %a11[219], %a12[219]] *
            poly z [%b00[219], %b01[219], %b02[219], %b03[219], %b04[219], %b05[219],
                    %b06[219], %b07[219], %b08[219], %b09[219], %b10[219], %b11[219], %b12[219]]) +
           (poly z [%c00[219], %c01[219], %c02[219], %c03[219], %c04[219], %c05[219],
                    %c06[219], %c07[219], %c08[219], %c09[219], %c10[219], %c11[219], %c12[219]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[220], %r01[220], %r02[220], %r03[220], %r04[220], %r05[220],
                   %r06[220], %r07[220], %r08[220], %r09[220], %r10[220], %r11[220], %r12[220]])
          ((poly z [%a00[220], %a01[220], %a02[220], %a03[220], %a04[220], %a05[220],
                    %a06[220], %a07[220], %a08[220], %a09[220], %a10[220], %a11[220], %a12[220]] *
            poly z [%b00[220], %b01[220], %b02[220], %b03[220], %b04[220], %b05[220],
                    %b06[220], %b07[220], %b08[220], %b09[220], %b10[220], %b11[220], %b12[220]]) +
           (poly z [%c00[220], %c01[220], %c02[220], %c03[220], %c04[220], %c05[220],
                    %c06[220], %c07[220], %c08[220], %c09[220], %c10[220], %c11[220], %c12[220]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[221], %r01[221], %r02[221], %r03[221], %r04[221], %r05[221],
                   %r06[221], %r07[221], %r08[221], %r09[221], %r10[221], %r11[221], %r12[221]])
          ((poly z [%a00[221], %a01[221], %a02[221], %a03[221], %a04[221], %a05[221],
                    %a06[221], %a07[221], %a08[221], %a09[221], %a10[221], %a11[221], %a12[221]] *
            poly z [%b00[221], %b01[221], %b02[221], %b03[221], %b04[221], %b05[221],
                    %b06[221], %b07[221], %b08[221], %b09[221], %b10[221], %b11[221], %b12[221]]) +
           (poly z [%c00[221], %c01[221], %c02[221], %c03[221], %c04[221], %c05[221],
                    %c06[221], %c07[221], %c08[221], %c09[221], %c10[221], %c11[221], %c12[221]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[222], %r01[222], %r02[222], %r03[222], %r04[222], %r05[222],
                   %r06[222], %r07[222], %r08[222], %r09[222], %r10[222], %r11[222], %r12[222]])
          ((poly z [%a00[222], %a01[222], %a02[222], %a03[222], %a04[222], %a05[222],
                    %a06[222], %a07[222], %a08[222], %a09[222], %a10[222], %a11[222], %a12[222]] *
            poly z [%b00[222], %b01[222], %b02[222], %b03[222], %b04[222], %b05[222],
                    %b06[222], %b07[222], %b08[222], %b09[222], %b10[222], %b11[222], %b12[222]]) +
           (poly z [%c00[222], %c01[222], %c02[222], %c03[222], %c04[222], %c05[222],
                    %c06[222], %c07[222], %c08[222], %c09[222], %c10[222], %c11[222], %c12[222]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[223], %r01[223], %r02[223], %r03[223], %r04[223], %r05[223],
                   %r06[223], %r07[223], %r08[223], %r09[223], %r10[223], %r11[223], %r12[223]])
          ((poly z [%a00[223], %a01[223], %a02[223], %a03[223], %a04[223], %a05[223],
                    %a06[223], %a07[223], %a08[223], %a09[223], %a10[223], %a11[223], %a12[223]] *
            poly z [%b00[223], %b01[223], %b02[223], %b03[223], %b04[223], %b05[223],
                    %b06[223], %b07[223], %b08[223], %b09[223], %b10[223], %b11[223], %b12[223]]) +
           (poly z [%c00[223], %c01[223], %c02[223], %c03[223], %c04[223], %c05[223],
                    %c06[223], %c07[223], %c08[223], %c09[223], %c10[223], %c11[223], %c12[223]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[224], %r01[224], %r02[224], %r03[224], %r04[224], %r05[224],
                   %r06[224], %r07[224], %r08[224], %r09[224], %r10[224], %r11[224], %r12[224]])
          ((poly z [%a00[224], %a01[224], %a02[224], %a03[224], %a04[224], %a05[224],
                    %a06[224], %a07[224], %a08[224], %a09[224], %a10[224], %a11[224], %a12[224]] *
            poly z [%b00[224], %b01[224], %b02[224], %b03[224], %b04[224], %b05[224],
                    %b06[224], %b07[224], %b08[224], %b09[224], %b10[224], %b11[224], %b12[224]]) +
           (poly z [%c00[224], %c01[224], %c02[224], %c03[224], %c04[224], %c05[224],
                    %c06[224], %c07[224], %c08[224], %c09[224], %c10[224], %c11[224], %c12[224]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[225], %r01[225], %r02[225], %r03[225], %r04[225], %r05[225],
                   %r06[225], %r07[225], %r08[225], %r09[225], %r10[225], %r11[225], %r12[225]])
          ((poly z [%a00[225], %a01[225], %a02[225], %a03[225], %a04[225], %a05[225],
                    %a06[225], %a07[225], %a08[225], %a09[225], %a10[225], %a11[225], %a12[225]] *
            poly z [%b00[225], %b01[225], %b02[225], %b03[225], %b04[225], %b05[225],
                    %b06[225], %b07[225], %b08[225], %b09[225], %b10[225], %b11[225], %b12[225]]) +
           (poly z [%c00[225], %c01[225], %c02[225], %c03[225], %c04[225], %c05[225],
                    %c06[225], %c07[225], %c08[225], %c09[225], %c10[225], %c11[225], %c12[225]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[226], %r01[226], %r02[226], %r03[226], %r04[226], %r05[226],
                   %r06[226], %r07[226], %r08[226], %r09[226], %r10[226], %r11[226], %r12[226]])
          ((poly z [%a00[226], %a01[226], %a02[226], %a03[226], %a04[226], %a05[226],
                    %a06[226], %a07[226], %a08[226], %a09[226], %a10[226], %a11[226], %a12[226]] *
            poly z [%b00[226], %b01[226], %b02[226], %b03[226], %b04[226], %b05[226],
                    %b06[226], %b07[226], %b08[226], %b09[226], %b10[226], %b11[226], %b12[226]]) +
           (poly z [%c00[226], %c01[226], %c02[226], %c03[226], %c04[226], %c05[226],
                    %c06[226], %c07[226], %c08[226], %c09[226], %c10[226], %c11[226], %c12[226]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[227], %r01[227], %r02[227], %r03[227], %r04[227], %r05[227],
                   %r06[227], %r07[227], %r08[227], %r09[227], %r10[227], %r11[227], %r12[227]])
          ((poly z [%a00[227], %a01[227], %a02[227], %a03[227], %a04[227], %a05[227],
                    %a06[227], %a07[227], %a08[227], %a09[227], %a10[227], %a11[227], %a12[227]] *
            poly z [%b00[227], %b01[227], %b02[227], %b03[227], %b04[227], %b05[227],
                    %b06[227], %b07[227], %b08[227], %b09[227], %b10[227], %b11[227], %b12[227]]) +
           (poly z [%c00[227], %c01[227], %c02[227], %c03[227], %c04[227], %c05[227],
                    %c06[227], %c07[227], %c08[227], %c09[227], %c10[227], %c11[227], %c12[227]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[228], %r01[228], %r02[228], %r03[228], %r04[228], %r05[228],
                   %r06[228], %r07[228], %r08[228], %r09[228], %r10[228], %r11[228], %r12[228]])
          ((poly z [%a00[228], %a01[228], %a02[228], %a03[228], %a04[228], %a05[228],
                    %a06[228], %a07[228], %a08[228], %a09[228], %a10[228], %a11[228], %a12[228]] *
            poly z [%b00[228], %b01[228], %b02[228], %b03[228], %b04[228], %b05[228],
                    %b06[228], %b07[228], %b08[228], %b09[228], %b10[228], %b11[228], %b12[228]]) +
           (poly z [%c00[228], %c01[228], %c02[228], %c03[228], %c04[228], %c05[228],
                    %c06[228], %c07[228], %c08[228], %c09[228], %c10[228], %c11[228], %c12[228]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[229], %r01[229], %r02[229], %r03[229], %r04[229], %r05[229],
                   %r06[229], %r07[229], %r08[229], %r09[229], %r10[229], %r11[229], %r12[229]])
          ((poly z [%a00[229], %a01[229], %a02[229], %a03[229], %a04[229], %a05[229],
                    %a06[229], %a07[229], %a08[229], %a09[229], %a10[229], %a11[229], %a12[229]] *
            poly z [%b00[229], %b01[229], %b02[229], %b03[229], %b04[229], %b05[229],
                    %b06[229], %b07[229], %b08[229], %b09[229], %b10[229], %b11[229], %b12[229]]) +
           (poly z [%c00[229], %c01[229], %c02[229], %c03[229], %c04[229], %c05[229],
                    %c06[229], %c07[229], %c08[229], %c09[229], %c10[229], %c11[229], %c12[229]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[230], %r01[230], %r02[230], %r03[230], %r04[230], %r05[230],
                   %r06[230], %r07[230], %r08[230], %r09[230], %r10[230], %r11[230], %r12[230]])
          ((poly z [%a00[230], %a01[230], %a02[230], %a03[230], %a04[230], %a05[230],
                    %a06[230], %a07[230], %a08[230], %a09[230], %a10[230], %a11[230], %a12[230]] *
            poly z [%b00[230], %b01[230], %b02[230], %b03[230], %b04[230], %b05[230],
                    %b06[230], %b07[230], %b08[230], %b09[230], %b10[230], %b11[230], %b12[230]]) +
           (poly z [%c00[230], %c01[230], %c02[230], %c03[230], %c04[230], %c05[230],
                    %c06[230], %c07[230], %c08[230], %c09[230], %c10[230], %c11[230], %c12[230]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[231], %r01[231], %r02[231], %r03[231], %r04[231], %r05[231],
                   %r06[231], %r07[231], %r08[231], %r09[231], %r10[231], %r11[231], %r12[231]])
          ((poly z [%a00[231], %a01[231], %a02[231], %a03[231], %a04[231], %a05[231],
                    %a06[231], %a07[231], %a08[231], %a09[231], %a10[231], %a11[231], %a12[231]] *
            poly z [%b00[231], %b01[231], %b02[231], %b03[231], %b04[231], %b05[231],
                    %b06[231], %b07[231], %b08[231], %b09[231], %b10[231], %b11[231], %b12[231]]) +
           (poly z [%c00[231], %c01[231], %c02[231], %c03[231], %c04[231], %c05[231],
                    %c06[231], %c07[231], %c08[231], %c09[231], %c10[231], %c11[231], %c12[231]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[232], %r01[232], %r02[232], %r03[232], %r04[232], %r05[232],
                   %r06[232], %r07[232], %r08[232], %r09[232], %r10[232], %r11[232], %r12[232]])
          ((poly z [%a00[232], %a01[232], %a02[232], %a03[232], %a04[232], %a05[232],
                    %a06[232], %a07[232], %a08[232], %a09[232], %a10[232], %a11[232], %a12[232]] *
            poly z [%b00[232], %b01[232], %b02[232], %b03[232], %b04[232], %b05[232],
                    %b06[232], %b07[232], %b08[232], %b09[232], %b10[232], %b11[232], %b12[232]]) +
           (poly z [%c00[232], %c01[232], %c02[232], %c03[232], %c04[232], %c05[232],
                    %c06[232], %c07[232], %c08[232], %c09[232], %c10[232], %c11[232], %c12[232]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[233], %r01[233], %r02[233], %r03[233], %r04[233], %r05[233],
                   %r06[233], %r07[233], %r08[233], %r09[233], %r10[233], %r11[233], %r12[233]])
          ((poly z [%a00[233], %a01[233], %a02[233], %a03[233], %a04[233], %a05[233],
                    %a06[233], %a07[233], %a08[233], %a09[233], %a10[233], %a11[233], %a12[233]] *
            poly z [%b00[233], %b01[233], %b02[233], %b03[233], %b04[233], %b05[233],
                    %b06[233], %b07[233], %b08[233], %b09[233], %b10[233], %b11[233], %b12[233]]) +
           (poly z [%c00[233], %c01[233], %c02[233], %c03[233], %c04[233], %c05[233],
                    %c06[233], %c07[233], %c08[233], %c09[233], %c10[233], %c11[233], %c12[233]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[234], %r01[234], %r02[234], %r03[234], %r04[234], %r05[234],
                   %r06[234], %r07[234], %r08[234], %r09[234], %r10[234], %r11[234], %r12[234]])
          ((poly z [%a00[234], %a01[234], %a02[234], %a03[234], %a04[234], %a05[234],
                    %a06[234], %a07[234], %a08[234], %a09[234], %a10[234], %a11[234], %a12[234]] *
            poly z [%b00[234], %b01[234], %b02[234], %b03[234], %b04[234], %b05[234],
                    %b06[234], %b07[234], %b08[234], %b09[234], %b10[234], %b11[234], %b12[234]]) +
           (poly z [%c00[234], %c01[234], %c02[234], %c03[234], %c04[234], %c05[234],
                    %c06[234], %c07[234], %c08[234], %c09[234], %c10[234], %c11[234], %c12[234]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[235], %r01[235], %r02[235], %r03[235], %r04[235], %r05[235],
                   %r06[235], %r07[235], %r08[235], %r09[235], %r10[235], %r11[235], %r12[235]])
          ((poly z [%a00[235], %a01[235], %a02[235], %a03[235], %a04[235], %a05[235],
                    %a06[235], %a07[235], %a08[235], %a09[235], %a10[235], %a11[235], %a12[235]] *
            poly z [%b00[235], %b01[235], %b02[235], %b03[235], %b04[235], %b05[235],
                    %b06[235], %b07[235], %b08[235], %b09[235], %b10[235], %b11[235], %b12[235]]) +
           (poly z [%c00[235], %c01[235], %c02[235], %c03[235], %c04[235], %c05[235],
                    %c06[235], %c07[235], %c08[235], %c09[235], %c10[235], %c11[235], %c12[235]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[236], %r01[236], %r02[236], %r03[236], %r04[236], %r05[236],
                   %r06[236], %r07[236], %r08[236], %r09[236], %r10[236], %r11[236], %r12[236]])
          ((poly z [%a00[236], %a01[236], %a02[236], %a03[236], %a04[236], %a05[236],
                    %a06[236], %a07[236], %a08[236], %a09[236], %a10[236], %a11[236], %a12[236]] *
            poly z [%b00[236], %b01[236], %b02[236], %b03[236], %b04[236], %b05[236],
                    %b06[236], %b07[236], %b08[236], %b09[236], %b10[236], %b11[236], %b12[236]]) +
           (poly z [%c00[236], %c01[236], %c02[236], %c03[236], %c04[236], %c05[236],
                    %c06[236], %c07[236], %c08[236], %c09[236], %c10[236], %c11[236], %c12[236]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[237], %r01[237], %r02[237], %r03[237], %r04[237], %r05[237],
                   %r06[237], %r07[237], %r08[237], %r09[237], %r10[237], %r11[237], %r12[237]])
          ((poly z [%a00[237], %a01[237], %a02[237], %a03[237], %a04[237], %a05[237],
                    %a06[237], %a07[237], %a08[237], %a09[237], %a10[237], %a11[237], %a12[237]] *
            poly z [%b00[237], %b01[237], %b02[237], %b03[237], %b04[237], %b05[237],
                    %b06[237], %b07[237], %b08[237], %b09[237], %b10[237], %b11[237], %b12[237]]) +
           (poly z [%c00[237], %c01[237], %c02[237], %c03[237], %c04[237], %c05[237],
                    %c06[237], %c07[237], %c08[237], %c09[237], %c10[237], %c11[237], %c12[237]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[238], %r01[238], %r02[238], %r03[238], %r04[238], %r05[238],
                   %r06[238], %r07[238], %r08[238], %r09[238], %r10[238], %r11[238], %r12[238]])
          ((poly z [%a00[238], %a01[238], %a02[238], %a03[238], %a04[238], %a05[238],
                    %a06[238], %a07[238], %a08[238], %a09[238], %a10[238], %a11[238], %a12[238]] *
            poly z [%b00[238], %b01[238], %b02[238], %b03[238], %b04[238], %b05[238],
                    %b06[238], %b07[238], %b08[238], %b09[238], %b10[238], %b11[238], %b12[238]]) +
           (poly z [%c00[238], %c01[238], %c02[238], %c03[238], %c04[238], %c05[238],
                    %c06[238], %c07[238], %c08[238], %c09[238], %c10[238], %c11[238], %c12[238]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[239], %r01[239], %r02[239], %r03[239], %r04[239], %r05[239],
                   %r06[239], %r07[239], %r08[239], %r09[239], %r10[239], %r11[239], %r12[239]])
          ((poly z [%a00[239], %a01[239], %a02[239], %a03[239], %a04[239], %a05[239],
                    %a06[239], %a07[239], %a08[239], %a09[239], %a10[239], %a11[239], %a12[239]] *
            poly z [%b00[239], %b01[239], %b02[239], %b03[239], %b04[239], %b05[239],
                    %b06[239], %b07[239], %b08[239], %b09[239], %b10[239], %b11[239], %b12[239]]) +
           (poly z [%c00[239], %c01[239], %c02[239], %c03[239], %c04[239], %c05[239],
                    %c06[239], %c07[239], %c08[239], %c09[239], %c10[239], %c11[239], %c12[239]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[240], %r01[240], %r02[240], %r03[240], %r04[240], %r05[240],
                   %r06[240], %r07[240], %r08[240], %r09[240], %r10[240], %r11[240], %r12[240]])
          ((poly z [%a00[240], %a01[240], %a02[240], %a03[240], %a04[240], %a05[240],
                    %a06[240], %a07[240], %a08[240], %a09[240], %a10[240], %a11[240], %a12[240]] *
            poly z [%b00[240], %b01[240], %b02[240], %b03[240], %b04[240], %b05[240],
                    %b06[240], %b07[240], %b08[240], %b09[240], %b10[240], %b11[240], %b12[240]]) +
           (poly z [%c00[240], %c01[240], %c02[240], %c03[240], %c04[240], %c05[240],
                    %c06[240], %c07[240], %c08[240], %c09[240], %c10[240], %c11[240], %c12[240]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[241], %r01[241], %r02[241], %r03[241], %r04[241], %r05[241],
                   %r06[241], %r07[241], %r08[241], %r09[241], %r10[241], %r11[241], %r12[241]])
          ((poly z [%a00[241], %a01[241], %a02[241], %a03[241], %a04[241], %a05[241],
                    %a06[241], %a07[241], %a08[241], %a09[241], %a10[241], %a11[241], %a12[241]] *
            poly z [%b00[241], %b01[241], %b02[241], %b03[241], %b04[241], %b05[241],
                    %b06[241], %b07[241], %b08[241], %b09[241], %b10[241], %b11[241], %b12[241]]) +
           (poly z [%c00[241], %c01[241], %c02[241], %c03[241], %c04[241], %c05[241],
                    %c06[241], %c07[241], %c08[241], %c09[241], %c10[241], %c11[241], %c12[241]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[242], %r01[242], %r02[242], %r03[242], %r04[242], %r05[242],
                   %r06[242], %r07[242], %r08[242], %r09[242], %r10[242], %r11[242], %r12[242]])
          ((poly z [%a00[242], %a01[242], %a02[242], %a03[242], %a04[242], %a05[242],
                    %a06[242], %a07[242], %a08[242], %a09[242], %a10[242], %a11[242], %a12[242]] *
            poly z [%b00[242], %b01[242], %b02[242], %b03[242], %b04[242], %b05[242],
                    %b06[242], %b07[242], %b08[242], %b09[242], %b10[242], %b11[242], %b12[242]]) +
           (poly z [%c00[242], %c01[242], %c02[242], %c03[242], %c04[242], %c05[242],
                    %c06[242], %c07[242], %c08[242], %c09[242], %c10[242], %c11[242], %c12[242]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[243], %r01[243], %r02[243], %r03[243], %r04[243], %r05[243],
                   %r06[243], %r07[243], %r08[243], %r09[243], %r10[243], %r11[243], %r12[243]])
          ((poly z [%a00[243], %a01[243], %a02[243], %a03[243], %a04[243], %a05[243],
                    %a06[243], %a07[243], %a08[243], %a09[243], %a10[243], %a11[243], %a12[243]] *
            poly z [%b00[243], %b01[243], %b02[243], %b03[243], %b04[243], %b05[243],
                    %b06[243], %b07[243], %b08[243], %b09[243], %b10[243], %b11[243], %b12[243]]) +
           (poly z [%c00[243], %c01[243], %c02[243], %c03[243], %c04[243], %c05[243],
                    %c06[243], %c07[243], %c08[243], %c09[243], %c10[243], %c11[243], %c12[243]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[244], %r01[244], %r02[244], %r03[244], %r04[244], %r05[244],
                   %r06[244], %r07[244], %r08[244], %r09[244], %r10[244], %r11[244], %r12[244]])
          ((poly z [%a00[244], %a01[244], %a02[244], %a03[244], %a04[244], %a05[244],
                    %a06[244], %a07[244], %a08[244], %a09[244], %a10[244], %a11[244], %a12[244]] *
            poly z [%b00[244], %b01[244], %b02[244], %b03[244], %b04[244], %b05[244],
                    %b06[244], %b07[244], %b08[244], %b09[244], %b10[244], %b11[244], %b12[244]]) +
           (poly z [%c00[244], %c01[244], %c02[244], %c03[244], %c04[244], %c05[244],
                    %c06[244], %c07[244], %c08[244], %c09[244], %c10[244], %c11[244], %c12[244]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[245], %r01[245], %r02[245], %r03[245], %r04[245], %r05[245],
                   %r06[245], %r07[245], %r08[245], %r09[245], %r10[245], %r11[245], %r12[245]])
          ((poly z [%a00[245], %a01[245], %a02[245], %a03[245], %a04[245], %a05[245],
                    %a06[245], %a07[245], %a08[245], %a09[245], %a10[245], %a11[245], %a12[245]] *
            poly z [%b00[245], %b01[245], %b02[245], %b03[245], %b04[245], %b05[245],
                    %b06[245], %b07[245], %b08[245], %b09[245], %b10[245], %b11[245], %b12[245]]) +
           (poly z [%c00[245], %c01[245], %c02[245], %c03[245], %c04[245], %c05[245],
                    %c06[245], %c07[245], %c08[245], %c09[245], %c10[245], %c11[245], %c12[245]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[246], %r01[246], %r02[246], %r03[246], %r04[246], %r05[246],
                   %r06[246], %r07[246], %r08[246], %r09[246], %r10[246], %r11[246], %r12[246]])
          ((poly z [%a00[246], %a01[246], %a02[246], %a03[246], %a04[246], %a05[246],
                    %a06[246], %a07[246], %a08[246], %a09[246], %a10[246], %a11[246], %a12[246]] *
            poly z [%b00[246], %b01[246], %b02[246], %b03[246], %b04[246], %b05[246],
                    %b06[246], %b07[246], %b08[246], %b09[246], %b10[246], %b11[246], %b12[246]]) +
           (poly z [%c00[246], %c01[246], %c02[246], %c03[246], %c04[246], %c05[246],
                    %c06[246], %c07[246], %c08[246], %c09[246], %c10[246], %c11[246], %c12[246]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[247], %r01[247], %r02[247], %r03[247], %r04[247], %r05[247],
                   %r06[247], %r07[247], %r08[247], %r09[247], %r10[247], %r11[247], %r12[247]])
          ((poly z [%a00[247], %a01[247], %a02[247], %a03[247], %a04[247], %a05[247],
                    %a06[247], %a07[247], %a08[247], %a09[247], %a10[247], %a11[247], %a12[247]] *
            poly z [%b00[247], %b01[247], %b02[247], %b03[247], %b04[247], %b05[247],
                    %b06[247], %b07[247], %b08[247], %b09[247], %b10[247], %b11[247], %b12[247]]) +
           (poly z [%c00[247], %c01[247], %c02[247], %c03[247], %c04[247], %c05[247],
                    %c06[247], %c07[247], %c08[247], %c09[247], %c10[247], %c11[247], %c12[247]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[248], %r01[248], %r02[248], %r03[248], %r04[248], %r05[248],
                   %r06[248], %r07[248], %r08[248], %r09[248], %r10[248], %r11[248], %r12[248]])
          ((poly z [%a00[248], %a01[248], %a02[248], %a03[248], %a04[248], %a05[248],
                    %a06[248], %a07[248], %a08[248], %a09[248], %a10[248], %a11[248], %a12[248]] *
            poly z [%b00[248], %b01[248], %b02[248], %b03[248], %b04[248], %b05[248],
                    %b06[248], %b07[248], %b08[248], %b09[248], %b10[248], %b11[248], %b12[248]]) +
           (poly z [%c00[248], %c01[248], %c02[248], %c03[248], %c04[248], %c05[248],
                    %c06[248], %c07[248], %c08[248], %c09[248], %c10[248], %c11[248], %c12[248]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[249], %r01[249], %r02[249], %r03[249], %r04[249], %r05[249],
                   %r06[249], %r07[249], %r08[249], %r09[249], %r10[249], %r11[249], %r12[249]])
          ((poly z [%a00[249], %a01[249], %a02[249], %a03[249], %a04[249], %a05[249],
                    %a06[249], %a07[249], %a08[249], %a09[249], %a10[249], %a11[249], %a12[249]] *
            poly z [%b00[249], %b01[249], %b02[249], %b03[249], %b04[249], %b05[249],
                    %b06[249], %b07[249], %b08[249], %b09[249], %b10[249], %b11[249], %b12[249]]) +
           (poly z [%c00[249], %c01[249], %c02[249], %c03[249], %c04[249], %c05[249],
                    %c06[249], %c07[249], %c08[249], %c09[249], %c10[249], %c11[249], %c12[249]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[250], %r01[250], %r02[250], %r03[250], %r04[250], %r05[250],
                   %r06[250], %r07[250], %r08[250], %r09[250], %r10[250], %r11[250], %r12[250]])
          ((poly z [%a00[250], %a01[250], %a02[250], %a03[250], %a04[250], %a05[250],
                    %a06[250], %a07[250], %a08[250], %a09[250], %a10[250], %a11[250], %a12[250]] *
            poly z [%b00[250], %b01[250], %b02[250], %b03[250], %b04[250], %b05[250],
                    %b06[250], %b07[250], %b08[250], %b09[250], %b10[250], %b11[250], %b12[250]]) +
           (poly z [%c00[250], %c01[250], %c02[250], %c03[250], %c04[250], %c05[250],
                    %c06[250], %c07[250], %c08[250], %c09[250], %c10[250], %c11[250], %c12[250]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[251], %r01[251], %r02[251], %r03[251], %r04[251], %r05[251],
                   %r06[251], %r07[251], %r08[251], %r09[251], %r10[251], %r11[251], %r12[251]])
          ((poly z [%a00[251], %a01[251], %a02[251], %a03[251], %a04[251], %a05[251],
                    %a06[251], %a07[251], %a08[251], %a09[251], %a10[251], %a11[251], %a12[251]] *
            poly z [%b00[251], %b01[251], %b02[251], %b03[251], %b04[251], %b05[251],
                    %b06[251], %b07[251], %b08[251], %b09[251], %b10[251], %b11[251], %b12[251]]) +
           (poly z [%c00[251], %c01[251], %c02[251], %c03[251], %c04[251], %c05[251],
                    %c06[251], %c07[251], %c08[251], %c09[251], %c10[251], %c11[251], %c12[251]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[252], %r01[252], %r02[252], %r03[252], %r04[252], %r05[252],
                   %r06[252], %r07[252], %r08[252], %r09[252], %r10[252], %r11[252], %r12[252]])
          ((poly z [%a00[252], %a01[252], %a02[252], %a03[252], %a04[252], %a05[252],
                    %a06[252], %a07[252], %a08[252], %a09[252], %a10[252], %a11[252], %a12[252]] *
            poly z [%b00[252], %b01[252], %b02[252], %b03[252], %b04[252], %b05[252],
                    %b06[252], %b07[252], %b08[252], %b09[252], %b10[252], %b11[252], %b12[252]]) +
           (poly z [%c00[252], %c01[252], %c02[252], %c03[252], %c04[252], %c05[252],
                    %c06[252], %c07[252], %c08[252], %c09[252], %c10[252], %c11[252], %c12[252]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[253], %r01[253], %r02[253], %r03[253], %r04[253], %r05[253],
                   %r06[253], %r07[253], %r08[253], %r09[253], %r10[253], %r11[253], %r12[253]])
          ((poly z [%a00[253], %a01[253], %a02[253], %a03[253], %a04[253], %a05[253],
                    %a06[253], %a07[253], %a08[253], %a09[253], %a10[253], %a11[253], %a12[253]] *
            poly z [%b00[253], %b01[253], %b02[253], %b03[253], %b04[253], %b05[253],
                    %b06[253], %b07[253], %b08[253], %b09[253], %b10[253], %b11[253], %b12[253]]) +
           (poly z [%c00[253], %c01[253], %c02[253], %c03[253], %c04[253], %c05[253],
                    %c06[253], %c07[253], %c08[253], %c09[253], %c10[253], %c11[253], %c12[253]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[254], %r01[254], %r02[254], %r03[254], %r04[254], %r05[254],
                   %r06[254], %r07[254], %r08[254], %r09[254], %r10[254], %r11[254], %r12[254]])
          ((poly z [%a00[254], %a01[254], %a02[254], %a03[254], %a04[254], %a05[254],
                    %a06[254], %a07[254], %a08[254], %a09[254], %a10[254], %a11[254], %a12[254]] *
            poly z [%b00[254], %b01[254], %b02[254], %b03[254], %b04[254], %b05[254],
                    %b06[254], %b07[254], %b08[254], %b09[254], %b10[254], %b11[254], %b12[254]]) +
           (poly z [%c00[254], %c01[254], %c02[254], %c03[254], %c04[254], %c05[254],
                    %c06[254], %c07[254], %c08[254], %c09[254], %c10[254], %c11[254], %c12[254]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[255], %r01[255], %r02[255], %r03[255], %r04[255], %r05[255],
                   %r06[255], %r07[255], %r08[255], %r09[255], %r10[255], %r11[255], %r12[255]])
          ((poly z [%a00[255], %a01[255], %a02[255], %a03[255], %a04[255], %a05[255],
                    %a06[255], %a07[255], %a08[255], %a09[255], %a10[255], %a11[255], %a12[255]] *
            poly z [%b00[255], %b01[255], %b02[255], %b03[255], %b04[255], %b05[255],
                    %b06[255], %b07[255], %b08[255], %b09[255], %b10[255], %b11[255], %b12[255]]) +
           (poly z [%c00[255], %c01[255], %c02[255], %c03[255], %c04[255], %c05[255],
                    %c06[255], %c07[255], %c08[255], %c09[255], %c10[255], %c11[255], %c12[255]]))
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
    eqmod (poly z [%s00[1], %s01[1], %s02[1], %s03[1], %s04[1], %s05[1],
                   %s06[1], %s07[1], %s08[1], %s09[1], %s10[1], %s11[1], %s12[1]])
          ((poly z [%a00[1], %a01[1], %a02[1], %a03[1], %a04[1], %a05[1],
                    %a06[1], %a07[1], %a08[1], %a09[1], %a10[1], %a11[1], %a12[1]] *
            poly z [%b00[1], %b01[1], %b02[1], %b03[1], %b04[1], %b05[1],
                    %b06[1], %b07[1], %b08[1], %b09[1], %b10[1], %b11[1], %b12[1]]) +
           (poly z [%c00[1], %c01[1], %c02[1], %c03[1], %c04[1], %c05[1],
                    %c06[1], %c07[1], %c08[1], %c09[1], %c10[1], %c11[1], %c12[1]]) +
           (poly z [%a00[1], %a01[1], %a02[1], %a03[1], %a04[1], %a05[1],
                    %a06[1], %a07[1], %a08[1], %a09[1], %a10[1], %a11[1], %a12[1]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[2], %s01[2], %s02[2], %s03[2], %s04[2], %s05[2],
                   %s06[2], %s07[2], %s08[2], %s09[2], %s10[2], %s11[2], %s12[2]])
          ((poly z [%a00[2], %a01[2], %a02[2], %a03[2], %a04[2], %a05[2],
                    %a06[2], %a07[2], %a08[2], %a09[2], %a10[2], %a11[2], %a12[2]] *
            poly z [%b00[2], %b01[2], %b02[2], %b03[2], %b04[2], %b05[2],
                    %b06[2], %b07[2], %b08[2], %b09[2], %b10[2], %b11[2], %b12[2]]) +
           (poly z [%c00[2], %c01[2], %c02[2], %c03[2], %c04[2], %c05[2],
                    %c06[2], %c07[2], %c08[2], %c09[2], %c10[2], %c11[2], %c12[2]]) +
           (poly z [%a00[2], %a01[2], %a02[2], %a03[2], %a04[2], %a05[2],
                    %a06[2], %a07[2], %a08[2], %a09[2], %a10[2], %a11[2], %a12[2]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[3], %s01[3], %s02[3], %s03[3], %s04[3], %s05[3],
                   %s06[3], %s07[3], %s08[3], %s09[3], %s10[3], %s11[3], %s12[3]])
          ((poly z [%a00[3], %a01[3], %a02[3], %a03[3], %a04[3], %a05[3],
                    %a06[3], %a07[3], %a08[3], %a09[3], %a10[3], %a11[3], %a12[3]] *
            poly z [%b00[3], %b01[3], %b02[3], %b03[3], %b04[3], %b05[3],
                    %b06[3], %b07[3], %b08[3], %b09[3], %b10[3], %b11[3], %b12[3]]) +
           (poly z [%c00[3], %c01[3], %c02[3], %c03[3], %c04[3], %c05[3],
                    %c06[3], %c07[3], %c08[3], %c09[3], %c10[3], %c11[3], %c12[3]]) +
           (poly z [%a00[3], %a01[3], %a02[3], %a03[3], %a04[3], %a05[3],
                    %a06[3], %a07[3], %a08[3], %a09[3], %a10[3], %a11[3], %a12[3]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[4], %s01[4], %s02[4], %s03[4], %s04[4], %s05[4],
                   %s06[4], %s07[4], %s08[4], %s09[4], %s10[4], %s11[4], %s12[4]])
          ((poly z [%a00[4], %a01[4], %a02[4], %a03[4], %a04[4], %a05[4],
                    %a06[4], %a07[4], %a08[4], %a09[4], %a10[4], %a11[4], %a12[4]] *
            poly z [%b00[4], %b01[4], %b02[4], %b03[4], %b04[4], %b05[4],
                    %b06[4], %b07[4], %b08[4], %b09[4], %b10[4], %b11[4], %b12[4]]) +
           (poly z [%c00[4], %c01[4], %c02[4], %c03[4], %c04[4], %c05[4],
                    %c06[4], %c07[4], %c08[4], %c09[4], %c10[4], %c11[4], %c12[4]]) +
           (poly z [%a00[4], %a01[4], %a02[4], %a03[4], %a04[4], %a05[4],
                    %a06[4], %a07[4], %a08[4], %a09[4], %a10[4], %a11[4], %a12[4]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[5], %s01[5], %s02[5], %s03[5], %s04[5], %s05[5],
                   %s06[5], %s07[5], %s08[5], %s09[5], %s10[5], %s11[5], %s12[5]])
          ((poly z [%a00[5], %a01[5], %a02[5], %a03[5], %a04[5], %a05[5],
                    %a06[5], %a07[5], %a08[5], %a09[5], %a10[5], %a11[5], %a12[5]] *
            poly z [%b00[5], %b01[5], %b02[5], %b03[5], %b04[5], %b05[5],
                    %b06[5], %b07[5], %b08[5], %b09[5], %b10[5], %b11[5], %b12[5]]) +
           (poly z [%c00[5], %c01[5], %c02[5], %c03[5], %c04[5], %c05[5],
                    %c06[5], %c07[5], %c08[5], %c09[5], %c10[5], %c11[5], %c12[5]]) +
           (poly z [%a00[5], %a01[5], %a02[5], %a03[5], %a04[5], %a05[5],
                    %a06[5], %a07[5], %a08[5], %a09[5], %a10[5], %a11[5], %a12[5]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[6], %s01[6], %s02[6], %s03[6], %s04[6], %s05[6],
                   %s06[6], %s07[6], %s08[6], %s09[6], %s10[6], %s11[6], %s12[6]])
          ((poly z [%a00[6], %a01[6], %a02[6], %a03[6], %a04[6], %a05[6],
                    %a06[6], %a07[6], %a08[6], %a09[6], %a10[6], %a11[6], %a12[6]] *
            poly z [%b00[6], %b01[6], %b02[6], %b03[6], %b04[6], %b05[6],
                    %b06[6], %b07[6], %b08[6], %b09[6], %b10[6], %b11[6], %b12[6]]) +
           (poly z [%c00[6], %c01[6], %c02[6], %c03[6], %c04[6], %c05[6],
                    %c06[6], %c07[6], %c08[6], %c09[6], %c10[6], %c11[6], %c12[6]]) +
           (poly z [%a00[6], %a01[6], %a02[6], %a03[6], %a04[6], %a05[6],
                    %a06[6], %a07[6], %a08[6], %a09[6], %a10[6], %a11[6], %a12[6]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[7], %s01[7], %s02[7], %s03[7], %s04[7], %s05[7],
                   %s06[7], %s07[7], %s08[7], %s09[7], %s10[7], %s11[7], %s12[7]])
          ((poly z [%a00[7], %a01[7], %a02[7], %a03[7], %a04[7], %a05[7],
                    %a06[7], %a07[7], %a08[7], %a09[7], %a10[7], %a11[7], %a12[7]] *
            poly z [%b00[7], %b01[7], %b02[7], %b03[7], %b04[7], %b05[7],
                    %b06[7], %b07[7], %b08[7], %b09[7], %b10[7], %b11[7], %b12[7]]) +
           (poly z [%c00[7], %c01[7], %c02[7], %c03[7], %c04[7], %c05[7],
                    %c06[7], %c07[7], %c08[7], %c09[7], %c10[7], %c11[7], %c12[7]]) +
           (poly z [%a00[7], %a01[7], %a02[7], %a03[7], %a04[7], %a05[7],
                    %a06[7], %a07[7], %a08[7], %a09[7], %a10[7], %a11[7], %a12[7]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[8], %s01[8], %s02[8], %s03[8], %s04[8], %s05[8],
                   %s06[8], %s07[8], %s08[8], %s09[8], %s10[8], %s11[8], %s12[8]])
          ((poly z [%a00[8], %a01[8], %a02[8], %a03[8], %a04[8], %a05[8],
                    %a06[8], %a07[8], %a08[8], %a09[8], %a10[8], %a11[8], %a12[8]] *
            poly z [%b00[8], %b01[8], %b02[8], %b03[8], %b04[8], %b05[8],
                    %b06[8], %b07[8], %b08[8], %b09[8], %b10[8], %b11[8], %b12[8]]) +
           (poly z [%c00[8], %c01[8], %c02[8], %c03[8], %c04[8], %c05[8],
                    %c06[8], %c07[8], %c08[8], %c09[8], %c10[8], %c11[8], %c12[8]]) +
           (poly z [%a00[8], %a01[8], %a02[8], %a03[8], %a04[8], %a05[8],
                    %a06[8], %a07[8], %a08[8], %a09[8], %a10[8], %a11[8], %a12[8]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[9], %s01[9], %s02[9], %s03[9], %s04[9], %s05[9],
                   %s06[9], %s07[9], %s08[9], %s09[9], %s10[9], %s11[9], %s12[9]])
          ((poly z [%a00[9], %a01[9], %a02[9], %a03[9], %a04[9], %a05[9],
                    %a06[9], %a07[9], %a08[9], %a09[9], %a10[9], %a11[9], %a12[9]] *
            poly z [%b00[9], %b01[9], %b02[9], %b03[9], %b04[9], %b05[9],
                    %b06[9], %b07[9], %b08[9], %b09[9], %b10[9], %b11[9], %b12[9]]) +
           (poly z [%c00[9], %c01[9], %c02[9], %c03[9], %c04[9], %c05[9],
                    %c06[9], %c07[9], %c08[9], %c09[9], %c10[9], %c11[9], %c12[9]]) +
           (poly z [%a00[9], %a01[9], %a02[9], %a03[9], %a04[9], %a05[9],
                    %a06[9], %a07[9], %a08[9], %a09[9], %a10[9], %a11[9], %a12[9]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[10], %s01[10], %s02[10], %s03[10], %s04[10], %s05[10],
                   %s06[10], %s07[10], %s08[10], %s09[10], %s10[10], %s11[10], %s12[10]])
          ((poly z [%a00[10], %a01[10], %a02[10], %a03[10], %a04[10], %a05[10],
                    %a06[10], %a07[10], %a08[10], %a09[10], %a10[10], %a11[10], %a12[10]] *
            poly z [%b00[10], %b01[10], %b02[10], %b03[10], %b04[10], %b05[10],
                    %b06[10], %b07[10], %b08[10], %b09[10], %b10[10], %b11[10], %b12[10]]) +
           (poly z [%c00[10], %c01[10], %c02[10], %c03[10], %c04[10], %c05[10],
                    %c06[10], %c07[10], %c08[10], %c09[10], %c10[10], %c11[10], %c12[10]]) +
           (poly z [%a00[10], %a01[10], %a02[10], %a03[10], %a04[10], %a05[10],
                    %a06[10], %a07[10], %a08[10], %a09[10], %a10[10], %a11[10], %a12[10]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[11], %s01[11], %s02[11], %s03[11], %s04[11], %s05[11],
                   %s06[11], %s07[11], %s08[11], %s09[11], %s10[11], %s11[11], %s12[11]])
          ((poly z [%a00[11], %a01[11], %a02[11], %a03[11], %a04[11], %a05[11],
                    %a06[11], %a07[11], %a08[11], %a09[11], %a10[11], %a11[11], %a12[11]] *
            poly z [%b00[11], %b01[11], %b02[11], %b03[11], %b04[11], %b05[11],
                    %b06[11], %b07[11], %b08[11], %b09[11], %b10[11], %b11[11], %b12[11]]) +
           (poly z [%c00[11], %c01[11], %c02[11], %c03[11], %c04[11], %c05[11],
                    %c06[11], %c07[11], %c08[11], %c09[11], %c10[11], %c11[11], %c12[11]]) +
           (poly z [%a00[11], %a01[11], %a02[11], %a03[11], %a04[11], %a05[11],
                    %a06[11], %a07[11], %a08[11], %a09[11], %a10[11], %a11[11], %a12[11]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[12], %s01[12], %s02[12], %s03[12], %s04[12], %s05[12],
                   %s06[12], %s07[12], %s08[12], %s09[12], %s10[12], %s11[12], %s12[12]])
          ((poly z [%a00[12], %a01[12], %a02[12], %a03[12], %a04[12], %a05[12],
                    %a06[12], %a07[12], %a08[12], %a09[12], %a10[12], %a11[12], %a12[12]] *
            poly z [%b00[12], %b01[12], %b02[12], %b03[12], %b04[12], %b05[12],
                    %b06[12], %b07[12], %b08[12], %b09[12], %b10[12], %b11[12], %b12[12]]) +
           (poly z [%c00[12], %c01[12], %c02[12], %c03[12], %c04[12], %c05[12],
                    %c06[12], %c07[12], %c08[12], %c09[12], %c10[12], %c11[12], %c12[12]]) +
           (poly z [%a00[12], %a01[12], %a02[12], %a03[12], %a04[12], %a05[12],
                    %a06[12], %a07[12], %a08[12], %a09[12], %a10[12], %a11[12], %a12[12]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[13], %s01[13], %s02[13], %s03[13], %s04[13], %s05[13],
                   %s06[13], %s07[13], %s08[13], %s09[13], %s10[13], %s11[13], %s12[13]])
          ((poly z [%a00[13], %a01[13], %a02[13], %a03[13], %a04[13], %a05[13],
                    %a06[13], %a07[13], %a08[13], %a09[13], %a10[13], %a11[13], %a12[13]] *
            poly z [%b00[13], %b01[13], %b02[13], %b03[13], %b04[13], %b05[13],
                    %b06[13], %b07[13], %b08[13], %b09[13], %b10[13], %b11[13], %b12[13]]) +
           (poly z [%c00[13], %c01[13], %c02[13], %c03[13], %c04[13], %c05[13],
                    %c06[13], %c07[13], %c08[13], %c09[13], %c10[13], %c11[13], %c12[13]]) +
           (poly z [%a00[13], %a01[13], %a02[13], %a03[13], %a04[13], %a05[13],
                    %a06[13], %a07[13], %a08[13], %a09[13], %a10[13], %a11[13], %a12[13]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[14], %s01[14], %s02[14], %s03[14], %s04[14], %s05[14],
                   %s06[14], %s07[14], %s08[14], %s09[14], %s10[14], %s11[14], %s12[14]])
          ((poly z [%a00[14], %a01[14], %a02[14], %a03[14], %a04[14], %a05[14],
                    %a06[14], %a07[14], %a08[14], %a09[14], %a10[14], %a11[14], %a12[14]] *
            poly z [%b00[14], %b01[14], %b02[14], %b03[14], %b04[14], %b05[14],
                    %b06[14], %b07[14], %b08[14], %b09[14], %b10[14], %b11[14], %b12[14]]) +
           (poly z [%c00[14], %c01[14], %c02[14], %c03[14], %c04[14], %c05[14],
                    %c06[14], %c07[14], %c08[14], %c09[14], %c10[14], %c11[14], %c12[14]]) +
           (poly z [%a00[14], %a01[14], %a02[14], %a03[14], %a04[14], %a05[14],
                    %a06[14], %a07[14], %a08[14], %a09[14], %a10[14], %a11[14], %a12[14]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[15], %s01[15], %s02[15], %s03[15], %s04[15], %s05[15],
                   %s06[15], %s07[15], %s08[15], %s09[15], %s10[15], %s11[15], %s12[15]])
          ((poly z [%a00[15], %a01[15], %a02[15], %a03[15], %a04[15], %a05[15],
                    %a06[15], %a07[15], %a08[15], %a09[15], %a10[15], %a11[15], %a12[15]] *
            poly z [%b00[15], %b01[15], %b02[15], %b03[15], %b04[15], %b05[15],
                    %b06[15], %b07[15], %b08[15], %b09[15], %b10[15], %b11[15], %b12[15]]) +
           (poly z [%c00[15], %c01[15], %c02[15], %c03[15], %c04[15], %c05[15],
                    %c06[15], %c07[15], %c08[15], %c09[15], %c10[15], %c11[15], %c12[15]]) +
           (poly z [%a00[15], %a01[15], %a02[15], %a03[15], %a04[15], %a05[15],
                    %a06[15], %a07[15], %a08[15], %a09[15], %a10[15], %a11[15], %a12[15]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[16], %s01[16], %s02[16], %s03[16], %s04[16], %s05[16],
                   %s06[16], %s07[16], %s08[16], %s09[16], %s10[16], %s11[16], %s12[16]])
          ((poly z [%a00[16], %a01[16], %a02[16], %a03[16], %a04[16], %a05[16],
                    %a06[16], %a07[16], %a08[16], %a09[16], %a10[16], %a11[16], %a12[16]] *
            poly z [%b00[16], %b01[16], %b02[16], %b03[16], %b04[16], %b05[16],
                    %b06[16], %b07[16], %b08[16], %b09[16], %b10[16], %b11[16], %b12[16]]) +
           (poly z [%c00[16], %c01[16], %c02[16], %c03[16], %c04[16], %c05[16],
                    %c06[16], %c07[16], %c08[16], %c09[16], %c10[16], %c11[16], %c12[16]]) +
           (poly z [%a00[16], %a01[16], %a02[16], %a03[16], %a04[16], %a05[16],
                    %a06[16], %a07[16], %a08[16], %a09[16], %a10[16], %a11[16], %a12[16]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[17], %s01[17], %s02[17], %s03[17], %s04[17], %s05[17],
                   %s06[17], %s07[17], %s08[17], %s09[17], %s10[17], %s11[17], %s12[17]])
          ((poly z [%a00[17], %a01[17], %a02[17], %a03[17], %a04[17], %a05[17],
                    %a06[17], %a07[17], %a08[17], %a09[17], %a10[17], %a11[17], %a12[17]] *
            poly z [%b00[17], %b01[17], %b02[17], %b03[17], %b04[17], %b05[17],
                    %b06[17], %b07[17], %b08[17], %b09[17], %b10[17], %b11[17], %b12[17]]) +
           (poly z [%c00[17], %c01[17], %c02[17], %c03[17], %c04[17], %c05[17],
                    %c06[17], %c07[17], %c08[17], %c09[17], %c10[17], %c11[17], %c12[17]]) +
           (poly z [%a00[17], %a01[17], %a02[17], %a03[17], %a04[17], %a05[17],
                    %a06[17], %a07[17], %a08[17], %a09[17], %a10[17], %a11[17], %a12[17]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[18], %s01[18], %s02[18], %s03[18], %s04[18], %s05[18],
                   %s06[18], %s07[18], %s08[18], %s09[18], %s10[18], %s11[18], %s12[18]])
          ((poly z [%a00[18], %a01[18], %a02[18], %a03[18], %a04[18], %a05[18],
                    %a06[18], %a07[18], %a08[18], %a09[18], %a10[18], %a11[18], %a12[18]] *
            poly z [%b00[18], %b01[18], %b02[18], %b03[18], %b04[18], %b05[18],
                    %b06[18], %b07[18], %b08[18], %b09[18], %b10[18], %b11[18], %b12[18]]) +
           (poly z [%c00[18], %c01[18], %c02[18], %c03[18], %c04[18], %c05[18],
                    %c06[18], %c07[18], %c08[18], %c09[18], %c10[18], %c11[18], %c12[18]]) +
           (poly z [%a00[18], %a01[18], %a02[18], %a03[18], %a04[18], %a05[18],
                    %a06[18], %a07[18], %a08[18], %a09[18], %a10[18], %a11[18], %a12[18]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[19], %s01[19], %s02[19], %s03[19], %s04[19], %s05[19],
                   %s06[19], %s07[19], %s08[19], %s09[19], %s10[19], %s11[19], %s12[19]])
          ((poly z [%a00[19], %a01[19], %a02[19], %a03[19], %a04[19], %a05[19],
                    %a06[19], %a07[19], %a08[19], %a09[19], %a10[19], %a11[19], %a12[19]] *
            poly z [%b00[19], %b01[19], %b02[19], %b03[19], %b04[19], %b05[19],
                    %b06[19], %b07[19], %b08[19], %b09[19], %b10[19], %b11[19], %b12[19]]) +
           (poly z [%c00[19], %c01[19], %c02[19], %c03[19], %c04[19], %c05[19],
                    %c06[19], %c07[19], %c08[19], %c09[19], %c10[19], %c11[19], %c12[19]]) +
           (poly z [%a00[19], %a01[19], %a02[19], %a03[19], %a04[19], %a05[19],
                    %a06[19], %a07[19], %a08[19], %a09[19], %a10[19], %a11[19], %a12[19]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[20], %s01[20], %s02[20], %s03[20], %s04[20], %s05[20],
                   %s06[20], %s07[20], %s08[20], %s09[20], %s10[20], %s11[20], %s12[20]])
          ((poly z [%a00[20], %a01[20], %a02[20], %a03[20], %a04[20], %a05[20],
                    %a06[20], %a07[20], %a08[20], %a09[20], %a10[20], %a11[20], %a12[20]] *
            poly z [%b00[20], %b01[20], %b02[20], %b03[20], %b04[20], %b05[20],
                    %b06[20], %b07[20], %b08[20], %b09[20], %b10[20], %b11[20], %b12[20]]) +
           (poly z [%c00[20], %c01[20], %c02[20], %c03[20], %c04[20], %c05[20],
                    %c06[20], %c07[20], %c08[20], %c09[20], %c10[20], %c11[20], %c12[20]]) +
           (poly z [%a00[20], %a01[20], %a02[20], %a03[20], %a04[20], %a05[20],
                    %a06[20], %a07[20], %a08[20], %a09[20], %a10[20], %a11[20], %a12[20]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[21], %s01[21], %s02[21], %s03[21], %s04[21], %s05[21],
                   %s06[21], %s07[21], %s08[21], %s09[21], %s10[21], %s11[21], %s12[21]])
          ((poly z [%a00[21], %a01[21], %a02[21], %a03[21], %a04[21], %a05[21],
                    %a06[21], %a07[21], %a08[21], %a09[21], %a10[21], %a11[21], %a12[21]] *
            poly z [%b00[21], %b01[21], %b02[21], %b03[21], %b04[21], %b05[21],
                    %b06[21], %b07[21], %b08[21], %b09[21], %b10[21], %b11[21], %b12[21]]) +
           (poly z [%c00[21], %c01[21], %c02[21], %c03[21], %c04[21], %c05[21],
                    %c06[21], %c07[21], %c08[21], %c09[21], %c10[21], %c11[21], %c12[21]]) +
           (poly z [%a00[21], %a01[21], %a02[21], %a03[21], %a04[21], %a05[21],
                    %a06[21], %a07[21], %a08[21], %a09[21], %a10[21], %a11[21], %a12[21]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[22], %s01[22], %s02[22], %s03[22], %s04[22], %s05[22],
                   %s06[22], %s07[22], %s08[22], %s09[22], %s10[22], %s11[22], %s12[22]])
          ((poly z [%a00[22], %a01[22], %a02[22], %a03[22], %a04[22], %a05[22],
                    %a06[22], %a07[22], %a08[22], %a09[22], %a10[22], %a11[22], %a12[22]] *
            poly z [%b00[22], %b01[22], %b02[22], %b03[22], %b04[22], %b05[22],
                    %b06[22], %b07[22], %b08[22], %b09[22], %b10[22], %b11[22], %b12[22]]) +
           (poly z [%c00[22], %c01[22], %c02[22], %c03[22], %c04[22], %c05[22],
                    %c06[22], %c07[22], %c08[22], %c09[22], %c10[22], %c11[22], %c12[22]]) +
           (poly z [%a00[22], %a01[22], %a02[22], %a03[22], %a04[22], %a05[22],
                    %a06[22], %a07[22], %a08[22], %a09[22], %a10[22], %a11[22], %a12[22]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[23], %s01[23], %s02[23], %s03[23], %s04[23], %s05[23],
                   %s06[23], %s07[23], %s08[23], %s09[23], %s10[23], %s11[23], %s12[23]])
          ((poly z [%a00[23], %a01[23], %a02[23], %a03[23], %a04[23], %a05[23],
                    %a06[23], %a07[23], %a08[23], %a09[23], %a10[23], %a11[23], %a12[23]] *
            poly z [%b00[23], %b01[23], %b02[23], %b03[23], %b04[23], %b05[23],
                    %b06[23], %b07[23], %b08[23], %b09[23], %b10[23], %b11[23], %b12[23]]) +
           (poly z [%c00[23], %c01[23], %c02[23], %c03[23], %c04[23], %c05[23],
                    %c06[23], %c07[23], %c08[23], %c09[23], %c10[23], %c11[23], %c12[23]]) +
           (poly z [%a00[23], %a01[23], %a02[23], %a03[23], %a04[23], %a05[23],
                    %a06[23], %a07[23], %a08[23], %a09[23], %a10[23], %a11[23], %a12[23]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[24], %s01[24], %s02[24], %s03[24], %s04[24], %s05[24],
                   %s06[24], %s07[24], %s08[24], %s09[24], %s10[24], %s11[24], %s12[24]])
          ((poly z [%a00[24], %a01[24], %a02[24], %a03[24], %a04[24], %a05[24],
                    %a06[24], %a07[24], %a08[24], %a09[24], %a10[24], %a11[24], %a12[24]] *
            poly z [%b00[24], %b01[24], %b02[24], %b03[24], %b04[24], %b05[24],
                    %b06[24], %b07[24], %b08[24], %b09[24], %b10[24], %b11[24], %b12[24]]) +
           (poly z [%c00[24], %c01[24], %c02[24], %c03[24], %c04[24], %c05[24],
                    %c06[24], %c07[24], %c08[24], %c09[24], %c10[24], %c11[24], %c12[24]]) +
           (poly z [%a00[24], %a01[24], %a02[24], %a03[24], %a04[24], %a05[24],
                    %a06[24], %a07[24], %a08[24], %a09[24], %a10[24], %a11[24], %a12[24]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[25], %s01[25], %s02[25], %s03[25], %s04[25], %s05[25],
                   %s06[25], %s07[25], %s08[25], %s09[25], %s10[25], %s11[25], %s12[25]])
          ((poly z [%a00[25], %a01[25], %a02[25], %a03[25], %a04[25], %a05[25],
                    %a06[25], %a07[25], %a08[25], %a09[25], %a10[25], %a11[25], %a12[25]] *
            poly z [%b00[25], %b01[25], %b02[25], %b03[25], %b04[25], %b05[25],
                    %b06[25], %b07[25], %b08[25], %b09[25], %b10[25], %b11[25], %b12[25]]) +
           (poly z [%c00[25], %c01[25], %c02[25], %c03[25], %c04[25], %c05[25],
                    %c06[25], %c07[25], %c08[25], %c09[25], %c10[25], %c11[25], %c12[25]]) +
           (poly z [%a00[25], %a01[25], %a02[25], %a03[25], %a04[25], %a05[25],
                    %a06[25], %a07[25], %a08[25], %a09[25], %a10[25], %a11[25], %a12[25]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[26], %s01[26], %s02[26], %s03[26], %s04[26], %s05[26],
                   %s06[26], %s07[26], %s08[26], %s09[26], %s10[26], %s11[26], %s12[26]])
          ((poly z [%a00[26], %a01[26], %a02[26], %a03[26], %a04[26], %a05[26],
                    %a06[26], %a07[26], %a08[26], %a09[26], %a10[26], %a11[26], %a12[26]] *
            poly z [%b00[26], %b01[26], %b02[26], %b03[26], %b04[26], %b05[26],
                    %b06[26], %b07[26], %b08[26], %b09[26], %b10[26], %b11[26], %b12[26]]) +
           (poly z [%c00[26], %c01[26], %c02[26], %c03[26], %c04[26], %c05[26],
                    %c06[26], %c07[26], %c08[26], %c09[26], %c10[26], %c11[26], %c12[26]]) +
           (poly z [%a00[26], %a01[26], %a02[26], %a03[26], %a04[26], %a05[26],
                    %a06[26], %a07[26], %a08[26], %a09[26], %a10[26], %a11[26], %a12[26]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[27], %s01[27], %s02[27], %s03[27], %s04[27], %s05[27],
                   %s06[27], %s07[27], %s08[27], %s09[27], %s10[27], %s11[27], %s12[27]])
          ((poly z [%a00[27], %a01[27], %a02[27], %a03[27], %a04[27], %a05[27],
                    %a06[27], %a07[27], %a08[27], %a09[27], %a10[27], %a11[27], %a12[27]] *
            poly z [%b00[27], %b01[27], %b02[27], %b03[27], %b04[27], %b05[27],
                    %b06[27], %b07[27], %b08[27], %b09[27], %b10[27], %b11[27], %b12[27]]) +
           (poly z [%c00[27], %c01[27], %c02[27], %c03[27], %c04[27], %c05[27],
                    %c06[27], %c07[27], %c08[27], %c09[27], %c10[27], %c11[27], %c12[27]]) +
           (poly z [%a00[27], %a01[27], %a02[27], %a03[27], %a04[27], %a05[27],
                    %a06[27], %a07[27], %a08[27], %a09[27], %a10[27], %a11[27], %a12[27]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[28], %s01[28], %s02[28], %s03[28], %s04[28], %s05[28],
                   %s06[28], %s07[28], %s08[28], %s09[28], %s10[28], %s11[28], %s12[28]])
          ((poly z [%a00[28], %a01[28], %a02[28], %a03[28], %a04[28], %a05[28],
                    %a06[28], %a07[28], %a08[28], %a09[28], %a10[28], %a11[28], %a12[28]] *
            poly z [%b00[28], %b01[28], %b02[28], %b03[28], %b04[28], %b05[28],
                    %b06[28], %b07[28], %b08[28], %b09[28], %b10[28], %b11[28], %b12[28]]) +
           (poly z [%c00[28], %c01[28], %c02[28], %c03[28], %c04[28], %c05[28],
                    %c06[28], %c07[28], %c08[28], %c09[28], %c10[28], %c11[28], %c12[28]]) +
           (poly z [%a00[28], %a01[28], %a02[28], %a03[28], %a04[28], %a05[28],
                    %a06[28], %a07[28], %a08[28], %a09[28], %a10[28], %a11[28], %a12[28]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[29], %s01[29], %s02[29], %s03[29], %s04[29], %s05[29],
                   %s06[29], %s07[29], %s08[29], %s09[29], %s10[29], %s11[29], %s12[29]])
          ((poly z [%a00[29], %a01[29], %a02[29], %a03[29], %a04[29], %a05[29],
                    %a06[29], %a07[29], %a08[29], %a09[29], %a10[29], %a11[29], %a12[29]] *
            poly z [%b00[29], %b01[29], %b02[29], %b03[29], %b04[29], %b05[29],
                    %b06[29], %b07[29], %b08[29], %b09[29], %b10[29], %b11[29], %b12[29]]) +
           (poly z [%c00[29], %c01[29], %c02[29], %c03[29], %c04[29], %c05[29],
                    %c06[29], %c07[29], %c08[29], %c09[29], %c10[29], %c11[29], %c12[29]]) +
           (poly z [%a00[29], %a01[29], %a02[29], %a03[29], %a04[29], %a05[29],
                    %a06[29], %a07[29], %a08[29], %a09[29], %a10[29], %a11[29], %a12[29]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[30], %s01[30], %s02[30], %s03[30], %s04[30], %s05[30],
                   %s06[30], %s07[30], %s08[30], %s09[30], %s10[30], %s11[30], %s12[30]])
          ((poly z [%a00[30], %a01[30], %a02[30], %a03[30], %a04[30], %a05[30],
                    %a06[30], %a07[30], %a08[30], %a09[30], %a10[30], %a11[30], %a12[30]] *
            poly z [%b00[30], %b01[30], %b02[30], %b03[30], %b04[30], %b05[30],
                    %b06[30], %b07[30], %b08[30], %b09[30], %b10[30], %b11[30], %b12[30]]) +
           (poly z [%c00[30], %c01[30], %c02[30], %c03[30], %c04[30], %c05[30],
                    %c06[30], %c07[30], %c08[30], %c09[30], %c10[30], %c11[30], %c12[30]]) +
           (poly z [%a00[30], %a01[30], %a02[30], %a03[30], %a04[30], %a05[30],
                    %a06[30], %a07[30], %a08[30], %a09[30], %a10[30], %a11[30], %a12[30]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[31], %s01[31], %s02[31], %s03[31], %s04[31], %s05[31],
                   %s06[31], %s07[31], %s08[31], %s09[31], %s10[31], %s11[31], %s12[31]])
          ((poly z [%a00[31], %a01[31], %a02[31], %a03[31], %a04[31], %a05[31],
                    %a06[31], %a07[31], %a08[31], %a09[31], %a10[31], %a11[31], %a12[31]] *
            poly z [%b00[31], %b01[31], %b02[31], %b03[31], %b04[31], %b05[31],
                    %b06[31], %b07[31], %b08[31], %b09[31], %b10[31], %b11[31], %b12[31]]) +
           (poly z [%c00[31], %c01[31], %c02[31], %c03[31], %c04[31], %c05[31],
                    %c06[31], %c07[31], %c08[31], %c09[31], %c10[31], %c11[31], %c12[31]]) +
           (poly z [%a00[31], %a01[31], %a02[31], %a03[31], %a04[31], %a05[31],
                    %a06[31], %a07[31], %a08[31], %a09[31], %a10[31], %a11[31], %a12[31]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[32], %s01[32], %s02[32], %s03[32], %s04[32], %s05[32],
                   %s06[32], %s07[32], %s08[32], %s09[32], %s10[32], %s11[32], %s12[32]])
          ((poly z [%a00[32], %a01[32], %a02[32], %a03[32], %a04[32], %a05[32],
                    %a06[32], %a07[32], %a08[32], %a09[32], %a10[32], %a11[32], %a12[32]] *
            poly z [%b00[32], %b01[32], %b02[32], %b03[32], %b04[32], %b05[32],
                    %b06[32], %b07[32], %b08[32], %b09[32], %b10[32], %b11[32], %b12[32]]) +
           (poly z [%c00[32], %c01[32], %c02[32], %c03[32], %c04[32], %c05[32],
                    %c06[32], %c07[32], %c08[32], %c09[32], %c10[32], %c11[32], %c12[32]]) +
           (poly z [%a00[32], %a01[32], %a02[32], %a03[32], %a04[32], %a05[32],
                    %a06[32], %a07[32], %a08[32], %a09[32], %a10[32], %a11[32], %a12[32]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[33], %s01[33], %s02[33], %s03[33], %s04[33], %s05[33],
                   %s06[33], %s07[33], %s08[33], %s09[33], %s10[33], %s11[33], %s12[33]])
          ((poly z [%a00[33], %a01[33], %a02[33], %a03[33], %a04[33], %a05[33],
                    %a06[33], %a07[33], %a08[33], %a09[33], %a10[33], %a11[33], %a12[33]] *
            poly z [%b00[33], %b01[33], %b02[33], %b03[33], %b04[33], %b05[33],
                    %b06[33], %b07[33], %b08[33], %b09[33], %b10[33], %b11[33], %b12[33]]) +
           (poly z [%c00[33], %c01[33], %c02[33], %c03[33], %c04[33], %c05[33],
                    %c06[33], %c07[33], %c08[33], %c09[33], %c10[33], %c11[33], %c12[33]]) +
           (poly z [%a00[33], %a01[33], %a02[33], %a03[33], %a04[33], %a05[33],
                    %a06[33], %a07[33], %a08[33], %a09[33], %a10[33], %a11[33], %a12[33]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[34], %s01[34], %s02[34], %s03[34], %s04[34], %s05[34],
                   %s06[34], %s07[34], %s08[34], %s09[34], %s10[34], %s11[34], %s12[34]])
          ((poly z [%a00[34], %a01[34], %a02[34], %a03[34], %a04[34], %a05[34],
                    %a06[34], %a07[34], %a08[34], %a09[34], %a10[34], %a11[34], %a12[34]] *
            poly z [%b00[34], %b01[34], %b02[34], %b03[34], %b04[34], %b05[34],
                    %b06[34], %b07[34], %b08[34], %b09[34], %b10[34], %b11[34], %b12[34]]) +
           (poly z [%c00[34], %c01[34], %c02[34], %c03[34], %c04[34], %c05[34],
                    %c06[34], %c07[34], %c08[34], %c09[34], %c10[34], %c11[34], %c12[34]]) +
           (poly z [%a00[34], %a01[34], %a02[34], %a03[34], %a04[34], %a05[34],
                    %a06[34], %a07[34], %a08[34], %a09[34], %a10[34], %a11[34], %a12[34]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[35], %s01[35], %s02[35], %s03[35], %s04[35], %s05[35],
                   %s06[35], %s07[35], %s08[35], %s09[35], %s10[35], %s11[35], %s12[35]])
          ((poly z [%a00[35], %a01[35], %a02[35], %a03[35], %a04[35], %a05[35],
                    %a06[35], %a07[35], %a08[35], %a09[35], %a10[35], %a11[35], %a12[35]] *
            poly z [%b00[35], %b01[35], %b02[35], %b03[35], %b04[35], %b05[35],
                    %b06[35], %b07[35], %b08[35], %b09[35], %b10[35], %b11[35], %b12[35]]) +
           (poly z [%c00[35], %c01[35], %c02[35], %c03[35], %c04[35], %c05[35],
                    %c06[35], %c07[35], %c08[35], %c09[35], %c10[35], %c11[35], %c12[35]]) +
           (poly z [%a00[35], %a01[35], %a02[35], %a03[35], %a04[35], %a05[35],
                    %a06[35], %a07[35], %a08[35], %a09[35], %a10[35], %a11[35], %a12[35]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[36], %s01[36], %s02[36], %s03[36], %s04[36], %s05[36],
                   %s06[36], %s07[36], %s08[36], %s09[36], %s10[36], %s11[36], %s12[36]])
          ((poly z [%a00[36], %a01[36], %a02[36], %a03[36], %a04[36], %a05[36],
                    %a06[36], %a07[36], %a08[36], %a09[36], %a10[36], %a11[36], %a12[36]] *
            poly z [%b00[36], %b01[36], %b02[36], %b03[36], %b04[36], %b05[36],
                    %b06[36], %b07[36], %b08[36], %b09[36], %b10[36], %b11[36], %b12[36]]) +
           (poly z [%c00[36], %c01[36], %c02[36], %c03[36], %c04[36], %c05[36],
                    %c06[36], %c07[36], %c08[36], %c09[36], %c10[36], %c11[36], %c12[36]]) +
           (poly z [%a00[36], %a01[36], %a02[36], %a03[36], %a04[36], %a05[36],
                    %a06[36], %a07[36], %a08[36], %a09[36], %a10[36], %a11[36], %a12[36]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[37], %s01[37], %s02[37], %s03[37], %s04[37], %s05[37],
                   %s06[37], %s07[37], %s08[37], %s09[37], %s10[37], %s11[37], %s12[37]])
          ((poly z [%a00[37], %a01[37], %a02[37], %a03[37], %a04[37], %a05[37],
                    %a06[37], %a07[37], %a08[37], %a09[37], %a10[37], %a11[37], %a12[37]] *
            poly z [%b00[37], %b01[37], %b02[37], %b03[37], %b04[37], %b05[37],
                    %b06[37], %b07[37], %b08[37], %b09[37], %b10[37], %b11[37], %b12[37]]) +
           (poly z [%c00[37], %c01[37], %c02[37], %c03[37], %c04[37], %c05[37],
                    %c06[37], %c07[37], %c08[37], %c09[37], %c10[37], %c11[37], %c12[37]]) +
           (poly z [%a00[37], %a01[37], %a02[37], %a03[37], %a04[37], %a05[37],
                    %a06[37], %a07[37], %a08[37], %a09[37], %a10[37], %a11[37], %a12[37]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[38], %s01[38], %s02[38], %s03[38], %s04[38], %s05[38],
                   %s06[38], %s07[38], %s08[38], %s09[38], %s10[38], %s11[38], %s12[38]])
          ((poly z [%a00[38], %a01[38], %a02[38], %a03[38], %a04[38], %a05[38],
                    %a06[38], %a07[38], %a08[38], %a09[38], %a10[38], %a11[38], %a12[38]] *
            poly z [%b00[38], %b01[38], %b02[38], %b03[38], %b04[38], %b05[38],
                    %b06[38], %b07[38], %b08[38], %b09[38], %b10[38], %b11[38], %b12[38]]) +
           (poly z [%c00[38], %c01[38], %c02[38], %c03[38], %c04[38], %c05[38],
                    %c06[38], %c07[38], %c08[38], %c09[38], %c10[38], %c11[38], %c12[38]]) +
           (poly z [%a00[38], %a01[38], %a02[38], %a03[38], %a04[38], %a05[38],
                    %a06[38], %a07[38], %a08[38], %a09[38], %a10[38], %a11[38], %a12[38]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[39], %s01[39], %s02[39], %s03[39], %s04[39], %s05[39],
                   %s06[39], %s07[39], %s08[39], %s09[39], %s10[39], %s11[39], %s12[39]])
          ((poly z [%a00[39], %a01[39], %a02[39], %a03[39], %a04[39], %a05[39],
                    %a06[39], %a07[39], %a08[39], %a09[39], %a10[39], %a11[39], %a12[39]] *
            poly z [%b00[39], %b01[39], %b02[39], %b03[39], %b04[39], %b05[39],
                    %b06[39], %b07[39], %b08[39], %b09[39], %b10[39], %b11[39], %b12[39]]) +
           (poly z [%c00[39], %c01[39], %c02[39], %c03[39], %c04[39], %c05[39],
                    %c06[39], %c07[39], %c08[39], %c09[39], %c10[39], %c11[39], %c12[39]]) +
           (poly z [%a00[39], %a01[39], %a02[39], %a03[39], %a04[39], %a05[39],
                    %a06[39], %a07[39], %a08[39], %a09[39], %a10[39], %a11[39], %a12[39]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[40], %s01[40], %s02[40], %s03[40], %s04[40], %s05[40],
                   %s06[40], %s07[40], %s08[40], %s09[40], %s10[40], %s11[40], %s12[40]])
          ((poly z [%a00[40], %a01[40], %a02[40], %a03[40], %a04[40], %a05[40],
                    %a06[40], %a07[40], %a08[40], %a09[40], %a10[40], %a11[40], %a12[40]] *
            poly z [%b00[40], %b01[40], %b02[40], %b03[40], %b04[40], %b05[40],
                    %b06[40], %b07[40], %b08[40], %b09[40], %b10[40], %b11[40], %b12[40]]) +
           (poly z [%c00[40], %c01[40], %c02[40], %c03[40], %c04[40], %c05[40],
                    %c06[40], %c07[40], %c08[40], %c09[40], %c10[40], %c11[40], %c12[40]]) +
           (poly z [%a00[40], %a01[40], %a02[40], %a03[40], %a04[40], %a05[40],
                    %a06[40], %a07[40], %a08[40], %a09[40], %a10[40], %a11[40], %a12[40]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[41], %s01[41], %s02[41], %s03[41], %s04[41], %s05[41],
                   %s06[41], %s07[41], %s08[41], %s09[41], %s10[41], %s11[41], %s12[41]])
          ((poly z [%a00[41], %a01[41], %a02[41], %a03[41], %a04[41], %a05[41],
                    %a06[41], %a07[41], %a08[41], %a09[41], %a10[41], %a11[41], %a12[41]] *
            poly z [%b00[41], %b01[41], %b02[41], %b03[41], %b04[41], %b05[41],
                    %b06[41], %b07[41], %b08[41], %b09[41], %b10[41], %b11[41], %b12[41]]) +
           (poly z [%c00[41], %c01[41], %c02[41], %c03[41], %c04[41], %c05[41],
                    %c06[41], %c07[41], %c08[41], %c09[41], %c10[41], %c11[41], %c12[41]]) +
           (poly z [%a00[41], %a01[41], %a02[41], %a03[41], %a04[41], %a05[41],
                    %a06[41], %a07[41], %a08[41], %a09[41], %a10[41], %a11[41], %a12[41]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[42], %s01[42], %s02[42], %s03[42], %s04[42], %s05[42],
                   %s06[42], %s07[42], %s08[42], %s09[42], %s10[42], %s11[42], %s12[42]])
          ((poly z [%a00[42], %a01[42], %a02[42], %a03[42], %a04[42], %a05[42],
                    %a06[42], %a07[42], %a08[42], %a09[42], %a10[42], %a11[42], %a12[42]] *
            poly z [%b00[42], %b01[42], %b02[42], %b03[42], %b04[42], %b05[42],
                    %b06[42], %b07[42], %b08[42], %b09[42], %b10[42], %b11[42], %b12[42]]) +
           (poly z [%c00[42], %c01[42], %c02[42], %c03[42], %c04[42], %c05[42],
                    %c06[42], %c07[42], %c08[42], %c09[42], %c10[42], %c11[42], %c12[42]]) +
           (poly z [%a00[42], %a01[42], %a02[42], %a03[42], %a04[42], %a05[42],
                    %a06[42], %a07[42], %a08[42], %a09[42], %a10[42], %a11[42], %a12[42]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[43], %s01[43], %s02[43], %s03[43], %s04[43], %s05[43],
                   %s06[43], %s07[43], %s08[43], %s09[43], %s10[43], %s11[43], %s12[43]])
          ((poly z [%a00[43], %a01[43], %a02[43], %a03[43], %a04[43], %a05[43],
                    %a06[43], %a07[43], %a08[43], %a09[43], %a10[43], %a11[43], %a12[43]] *
            poly z [%b00[43], %b01[43], %b02[43], %b03[43], %b04[43], %b05[43],
                    %b06[43], %b07[43], %b08[43], %b09[43], %b10[43], %b11[43], %b12[43]]) +
           (poly z [%c00[43], %c01[43], %c02[43], %c03[43], %c04[43], %c05[43],
                    %c06[43], %c07[43], %c08[43], %c09[43], %c10[43], %c11[43], %c12[43]]) +
           (poly z [%a00[43], %a01[43], %a02[43], %a03[43], %a04[43], %a05[43],
                    %a06[43], %a07[43], %a08[43], %a09[43], %a10[43], %a11[43], %a12[43]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[44], %s01[44], %s02[44], %s03[44], %s04[44], %s05[44],
                   %s06[44], %s07[44], %s08[44], %s09[44], %s10[44], %s11[44], %s12[44]])
          ((poly z [%a00[44], %a01[44], %a02[44], %a03[44], %a04[44], %a05[44],
                    %a06[44], %a07[44], %a08[44], %a09[44], %a10[44], %a11[44], %a12[44]] *
            poly z [%b00[44], %b01[44], %b02[44], %b03[44], %b04[44], %b05[44],
                    %b06[44], %b07[44], %b08[44], %b09[44], %b10[44], %b11[44], %b12[44]]) +
           (poly z [%c00[44], %c01[44], %c02[44], %c03[44], %c04[44], %c05[44],
                    %c06[44], %c07[44], %c08[44], %c09[44], %c10[44], %c11[44], %c12[44]]) +
           (poly z [%a00[44], %a01[44], %a02[44], %a03[44], %a04[44], %a05[44],
                    %a06[44], %a07[44], %a08[44], %a09[44], %a10[44], %a11[44], %a12[44]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[45], %s01[45], %s02[45], %s03[45], %s04[45], %s05[45],
                   %s06[45], %s07[45], %s08[45], %s09[45], %s10[45], %s11[45], %s12[45]])
          ((poly z [%a00[45], %a01[45], %a02[45], %a03[45], %a04[45], %a05[45],
                    %a06[45], %a07[45], %a08[45], %a09[45], %a10[45], %a11[45], %a12[45]] *
            poly z [%b00[45], %b01[45], %b02[45], %b03[45], %b04[45], %b05[45],
                    %b06[45], %b07[45], %b08[45], %b09[45], %b10[45], %b11[45], %b12[45]]) +
           (poly z [%c00[45], %c01[45], %c02[45], %c03[45], %c04[45], %c05[45],
                    %c06[45], %c07[45], %c08[45], %c09[45], %c10[45], %c11[45], %c12[45]]) +
           (poly z [%a00[45], %a01[45], %a02[45], %a03[45], %a04[45], %a05[45],
                    %a06[45], %a07[45], %a08[45], %a09[45], %a10[45], %a11[45], %a12[45]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[46], %s01[46], %s02[46], %s03[46], %s04[46], %s05[46],
                   %s06[46], %s07[46], %s08[46], %s09[46], %s10[46], %s11[46], %s12[46]])
          ((poly z [%a00[46], %a01[46], %a02[46], %a03[46], %a04[46], %a05[46],
                    %a06[46], %a07[46], %a08[46], %a09[46], %a10[46], %a11[46], %a12[46]] *
            poly z [%b00[46], %b01[46], %b02[46], %b03[46], %b04[46], %b05[46],
                    %b06[46], %b07[46], %b08[46], %b09[46], %b10[46], %b11[46], %b12[46]]) +
           (poly z [%c00[46], %c01[46], %c02[46], %c03[46], %c04[46], %c05[46],
                    %c06[46], %c07[46], %c08[46], %c09[46], %c10[46], %c11[46], %c12[46]]) +
           (poly z [%a00[46], %a01[46], %a02[46], %a03[46], %a04[46], %a05[46],
                    %a06[46], %a07[46], %a08[46], %a09[46], %a10[46], %a11[46], %a12[46]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[47], %s01[47], %s02[47], %s03[47], %s04[47], %s05[47],
                   %s06[47], %s07[47], %s08[47], %s09[47], %s10[47], %s11[47], %s12[47]])
          ((poly z [%a00[47], %a01[47], %a02[47], %a03[47], %a04[47], %a05[47],
                    %a06[47], %a07[47], %a08[47], %a09[47], %a10[47], %a11[47], %a12[47]] *
            poly z [%b00[47], %b01[47], %b02[47], %b03[47], %b04[47], %b05[47],
                    %b06[47], %b07[47], %b08[47], %b09[47], %b10[47], %b11[47], %b12[47]]) +
           (poly z [%c00[47], %c01[47], %c02[47], %c03[47], %c04[47], %c05[47],
                    %c06[47], %c07[47], %c08[47], %c09[47], %c10[47], %c11[47], %c12[47]]) +
           (poly z [%a00[47], %a01[47], %a02[47], %a03[47], %a04[47], %a05[47],
                    %a06[47], %a07[47], %a08[47], %a09[47], %a10[47], %a11[47], %a12[47]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[48], %s01[48], %s02[48], %s03[48], %s04[48], %s05[48],
                   %s06[48], %s07[48], %s08[48], %s09[48], %s10[48], %s11[48], %s12[48]])
          ((poly z [%a00[48], %a01[48], %a02[48], %a03[48], %a04[48], %a05[48],
                    %a06[48], %a07[48], %a08[48], %a09[48], %a10[48], %a11[48], %a12[48]] *
            poly z [%b00[48], %b01[48], %b02[48], %b03[48], %b04[48], %b05[48],
                    %b06[48], %b07[48], %b08[48], %b09[48], %b10[48], %b11[48], %b12[48]]) +
           (poly z [%c00[48], %c01[48], %c02[48], %c03[48], %c04[48], %c05[48],
                    %c06[48], %c07[48], %c08[48], %c09[48], %c10[48], %c11[48], %c12[48]]) +
           (poly z [%a00[48], %a01[48], %a02[48], %a03[48], %a04[48], %a05[48],
                    %a06[48], %a07[48], %a08[48], %a09[48], %a10[48], %a11[48], %a12[48]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[49], %s01[49], %s02[49], %s03[49], %s04[49], %s05[49],
                   %s06[49], %s07[49], %s08[49], %s09[49], %s10[49], %s11[49], %s12[49]])
          ((poly z [%a00[49], %a01[49], %a02[49], %a03[49], %a04[49], %a05[49],
                    %a06[49], %a07[49], %a08[49], %a09[49], %a10[49], %a11[49], %a12[49]] *
            poly z [%b00[49], %b01[49], %b02[49], %b03[49], %b04[49], %b05[49],
                    %b06[49], %b07[49], %b08[49], %b09[49], %b10[49], %b11[49], %b12[49]]) +
           (poly z [%c00[49], %c01[49], %c02[49], %c03[49], %c04[49], %c05[49],
                    %c06[49], %c07[49], %c08[49], %c09[49], %c10[49], %c11[49], %c12[49]]) +
           (poly z [%a00[49], %a01[49], %a02[49], %a03[49], %a04[49], %a05[49],
                    %a06[49], %a07[49], %a08[49], %a09[49], %a10[49], %a11[49], %a12[49]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[50], %s01[50], %s02[50], %s03[50], %s04[50], %s05[50],
                   %s06[50], %s07[50], %s08[50], %s09[50], %s10[50], %s11[50], %s12[50]])
          ((poly z [%a00[50], %a01[50], %a02[50], %a03[50], %a04[50], %a05[50],
                    %a06[50], %a07[50], %a08[50], %a09[50], %a10[50], %a11[50], %a12[50]] *
            poly z [%b00[50], %b01[50], %b02[50], %b03[50], %b04[50], %b05[50],
                    %b06[50], %b07[50], %b08[50], %b09[50], %b10[50], %b11[50], %b12[50]]) +
           (poly z [%c00[50], %c01[50], %c02[50], %c03[50], %c04[50], %c05[50],
                    %c06[50], %c07[50], %c08[50], %c09[50], %c10[50], %c11[50], %c12[50]]) +
           (poly z [%a00[50], %a01[50], %a02[50], %a03[50], %a04[50], %a05[50],
                    %a06[50], %a07[50], %a08[50], %a09[50], %a10[50], %a11[50], %a12[50]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[51], %s01[51], %s02[51], %s03[51], %s04[51], %s05[51],
                   %s06[51], %s07[51], %s08[51], %s09[51], %s10[51], %s11[51], %s12[51]])
          ((poly z [%a00[51], %a01[51], %a02[51], %a03[51], %a04[51], %a05[51],
                    %a06[51], %a07[51], %a08[51], %a09[51], %a10[51], %a11[51], %a12[51]] *
            poly z [%b00[51], %b01[51], %b02[51], %b03[51], %b04[51], %b05[51],
                    %b06[51], %b07[51], %b08[51], %b09[51], %b10[51], %b11[51], %b12[51]]) +
           (poly z [%c00[51], %c01[51], %c02[51], %c03[51], %c04[51], %c05[51],
                    %c06[51], %c07[51], %c08[51], %c09[51], %c10[51], %c11[51], %c12[51]]) +
           (poly z [%a00[51], %a01[51], %a02[51], %a03[51], %a04[51], %a05[51],
                    %a06[51], %a07[51], %a08[51], %a09[51], %a10[51], %a11[51], %a12[51]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[52], %s01[52], %s02[52], %s03[52], %s04[52], %s05[52],
                   %s06[52], %s07[52], %s08[52], %s09[52], %s10[52], %s11[52], %s12[52]])
          ((poly z [%a00[52], %a01[52], %a02[52], %a03[52], %a04[52], %a05[52],
                    %a06[52], %a07[52], %a08[52], %a09[52], %a10[52], %a11[52], %a12[52]] *
            poly z [%b00[52], %b01[52], %b02[52], %b03[52], %b04[52], %b05[52],
                    %b06[52], %b07[52], %b08[52], %b09[52], %b10[52], %b11[52], %b12[52]]) +
           (poly z [%c00[52], %c01[52], %c02[52], %c03[52], %c04[52], %c05[52],
                    %c06[52], %c07[52], %c08[52], %c09[52], %c10[52], %c11[52], %c12[52]]) +
           (poly z [%a00[52], %a01[52], %a02[52], %a03[52], %a04[52], %a05[52],
                    %a06[52], %a07[52], %a08[52], %a09[52], %a10[52], %a11[52], %a12[52]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[53], %s01[53], %s02[53], %s03[53], %s04[53], %s05[53],
                   %s06[53], %s07[53], %s08[53], %s09[53], %s10[53], %s11[53], %s12[53]])
          ((poly z [%a00[53], %a01[53], %a02[53], %a03[53], %a04[53], %a05[53],
                    %a06[53], %a07[53], %a08[53], %a09[53], %a10[53], %a11[53], %a12[53]] *
            poly z [%b00[53], %b01[53], %b02[53], %b03[53], %b04[53], %b05[53],
                    %b06[53], %b07[53], %b08[53], %b09[53], %b10[53], %b11[53], %b12[53]]) +
           (poly z [%c00[53], %c01[53], %c02[53], %c03[53], %c04[53], %c05[53],
                    %c06[53], %c07[53], %c08[53], %c09[53], %c10[53], %c11[53], %c12[53]]) +
           (poly z [%a00[53], %a01[53], %a02[53], %a03[53], %a04[53], %a05[53],
                    %a06[53], %a07[53], %a08[53], %a09[53], %a10[53], %a11[53], %a12[53]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[54], %s01[54], %s02[54], %s03[54], %s04[54], %s05[54],
                   %s06[54], %s07[54], %s08[54], %s09[54], %s10[54], %s11[54], %s12[54]])
          ((poly z [%a00[54], %a01[54], %a02[54], %a03[54], %a04[54], %a05[54],
                    %a06[54], %a07[54], %a08[54], %a09[54], %a10[54], %a11[54], %a12[54]] *
            poly z [%b00[54], %b01[54], %b02[54], %b03[54], %b04[54], %b05[54],
                    %b06[54], %b07[54], %b08[54], %b09[54], %b10[54], %b11[54], %b12[54]]) +
           (poly z [%c00[54], %c01[54], %c02[54], %c03[54], %c04[54], %c05[54],
                    %c06[54], %c07[54], %c08[54], %c09[54], %c10[54], %c11[54], %c12[54]]) +
           (poly z [%a00[54], %a01[54], %a02[54], %a03[54], %a04[54], %a05[54],
                    %a06[54], %a07[54], %a08[54], %a09[54], %a10[54], %a11[54], %a12[54]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[55], %s01[55], %s02[55], %s03[55], %s04[55], %s05[55],
                   %s06[55], %s07[55], %s08[55], %s09[55], %s10[55], %s11[55], %s12[55]])
          ((poly z [%a00[55], %a01[55], %a02[55], %a03[55], %a04[55], %a05[55],
                    %a06[55], %a07[55], %a08[55], %a09[55], %a10[55], %a11[55], %a12[55]] *
            poly z [%b00[55], %b01[55], %b02[55], %b03[55], %b04[55], %b05[55],
                    %b06[55], %b07[55], %b08[55], %b09[55], %b10[55], %b11[55], %b12[55]]) +
           (poly z [%c00[55], %c01[55], %c02[55], %c03[55], %c04[55], %c05[55],
                    %c06[55], %c07[55], %c08[55], %c09[55], %c10[55], %c11[55], %c12[55]]) +
           (poly z [%a00[55], %a01[55], %a02[55], %a03[55], %a04[55], %a05[55],
                    %a06[55], %a07[55], %a08[55], %a09[55], %a10[55], %a11[55], %a12[55]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[56], %s01[56], %s02[56], %s03[56], %s04[56], %s05[56],
                   %s06[56], %s07[56], %s08[56], %s09[56], %s10[56], %s11[56], %s12[56]])
          ((poly z [%a00[56], %a01[56], %a02[56], %a03[56], %a04[56], %a05[56],
                    %a06[56], %a07[56], %a08[56], %a09[56], %a10[56], %a11[56], %a12[56]] *
            poly z [%b00[56], %b01[56], %b02[56], %b03[56], %b04[56], %b05[56],
                    %b06[56], %b07[56], %b08[56], %b09[56], %b10[56], %b11[56], %b12[56]]) +
           (poly z [%c00[56], %c01[56], %c02[56], %c03[56], %c04[56], %c05[56],
                    %c06[56], %c07[56], %c08[56], %c09[56], %c10[56], %c11[56], %c12[56]]) +
           (poly z [%a00[56], %a01[56], %a02[56], %a03[56], %a04[56], %a05[56],
                    %a06[56], %a07[56], %a08[56], %a09[56], %a10[56], %a11[56], %a12[56]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[57], %s01[57], %s02[57], %s03[57], %s04[57], %s05[57],
                   %s06[57], %s07[57], %s08[57], %s09[57], %s10[57], %s11[57], %s12[57]])
          ((poly z [%a00[57], %a01[57], %a02[57], %a03[57], %a04[57], %a05[57],
                    %a06[57], %a07[57], %a08[57], %a09[57], %a10[57], %a11[57], %a12[57]] *
            poly z [%b00[57], %b01[57], %b02[57], %b03[57], %b04[57], %b05[57],
                    %b06[57], %b07[57], %b08[57], %b09[57], %b10[57], %b11[57], %b12[57]]) +
           (poly z [%c00[57], %c01[57], %c02[57], %c03[57], %c04[57], %c05[57],
                    %c06[57], %c07[57], %c08[57], %c09[57], %c10[57], %c11[57], %c12[57]]) +
           (poly z [%a00[57], %a01[57], %a02[57], %a03[57], %a04[57], %a05[57],
                    %a06[57], %a07[57], %a08[57], %a09[57], %a10[57], %a11[57], %a12[57]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[58], %s01[58], %s02[58], %s03[58], %s04[58], %s05[58],
                   %s06[58], %s07[58], %s08[58], %s09[58], %s10[58], %s11[58], %s12[58]])
          ((poly z [%a00[58], %a01[58], %a02[58], %a03[58], %a04[58], %a05[58],
                    %a06[58], %a07[58], %a08[58], %a09[58], %a10[58], %a11[58], %a12[58]] *
            poly z [%b00[58], %b01[58], %b02[58], %b03[58], %b04[58], %b05[58],
                    %b06[58], %b07[58], %b08[58], %b09[58], %b10[58], %b11[58], %b12[58]]) +
           (poly z [%c00[58], %c01[58], %c02[58], %c03[58], %c04[58], %c05[58],
                    %c06[58], %c07[58], %c08[58], %c09[58], %c10[58], %c11[58], %c12[58]]) +
           (poly z [%a00[58], %a01[58], %a02[58], %a03[58], %a04[58], %a05[58],
                    %a06[58], %a07[58], %a08[58], %a09[58], %a10[58], %a11[58], %a12[58]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[59], %s01[59], %s02[59], %s03[59], %s04[59], %s05[59],
                   %s06[59], %s07[59], %s08[59], %s09[59], %s10[59], %s11[59], %s12[59]])
          ((poly z [%a00[59], %a01[59], %a02[59], %a03[59], %a04[59], %a05[59],
                    %a06[59], %a07[59], %a08[59], %a09[59], %a10[59], %a11[59], %a12[59]] *
            poly z [%b00[59], %b01[59], %b02[59], %b03[59], %b04[59], %b05[59],
                    %b06[59], %b07[59], %b08[59], %b09[59], %b10[59], %b11[59], %b12[59]]) +
           (poly z [%c00[59], %c01[59], %c02[59], %c03[59], %c04[59], %c05[59],
                    %c06[59], %c07[59], %c08[59], %c09[59], %c10[59], %c11[59], %c12[59]]) +
           (poly z [%a00[59], %a01[59], %a02[59], %a03[59], %a04[59], %a05[59],
                    %a06[59], %a07[59], %a08[59], %a09[59], %a10[59], %a11[59], %a12[59]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[60], %s01[60], %s02[60], %s03[60], %s04[60], %s05[60],
                   %s06[60], %s07[60], %s08[60], %s09[60], %s10[60], %s11[60], %s12[60]])
          ((poly z [%a00[60], %a01[60], %a02[60], %a03[60], %a04[60], %a05[60],
                    %a06[60], %a07[60], %a08[60], %a09[60], %a10[60], %a11[60], %a12[60]] *
            poly z [%b00[60], %b01[60], %b02[60], %b03[60], %b04[60], %b05[60],
                    %b06[60], %b07[60], %b08[60], %b09[60], %b10[60], %b11[60], %b12[60]]) +
           (poly z [%c00[60], %c01[60], %c02[60], %c03[60], %c04[60], %c05[60],
                    %c06[60], %c07[60], %c08[60], %c09[60], %c10[60], %c11[60], %c12[60]]) +
           (poly z [%a00[60], %a01[60], %a02[60], %a03[60], %a04[60], %a05[60],
                    %a06[60], %a07[60], %a08[60], %a09[60], %a10[60], %a11[60], %a12[60]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[61], %s01[61], %s02[61], %s03[61], %s04[61], %s05[61],
                   %s06[61], %s07[61], %s08[61], %s09[61], %s10[61], %s11[61], %s12[61]])
          ((poly z [%a00[61], %a01[61], %a02[61], %a03[61], %a04[61], %a05[61],
                    %a06[61], %a07[61], %a08[61], %a09[61], %a10[61], %a11[61], %a12[61]] *
            poly z [%b00[61], %b01[61], %b02[61], %b03[61], %b04[61], %b05[61],
                    %b06[61], %b07[61], %b08[61], %b09[61], %b10[61], %b11[61], %b12[61]]) +
           (poly z [%c00[61], %c01[61], %c02[61], %c03[61], %c04[61], %c05[61],
                    %c06[61], %c07[61], %c08[61], %c09[61], %c10[61], %c11[61], %c12[61]]) +
           (poly z [%a00[61], %a01[61], %a02[61], %a03[61], %a04[61], %a05[61],
                    %a06[61], %a07[61], %a08[61], %a09[61], %a10[61], %a11[61], %a12[61]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[62], %s01[62], %s02[62], %s03[62], %s04[62], %s05[62],
                   %s06[62], %s07[62], %s08[62], %s09[62], %s10[62], %s11[62], %s12[62]])
          ((poly z [%a00[62], %a01[62], %a02[62], %a03[62], %a04[62], %a05[62],
                    %a06[62], %a07[62], %a08[62], %a09[62], %a10[62], %a11[62], %a12[62]] *
            poly z [%b00[62], %b01[62], %b02[62], %b03[62], %b04[62], %b05[62],
                    %b06[62], %b07[62], %b08[62], %b09[62], %b10[62], %b11[62], %b12[62]]) +
           (poly z [%c00[62], %c01[62], %c02[62], %c03[62], %c04[62], %c05[62],
                    %c06[62], %c07[62], %c08[62], %c09[62], %c10[62], %c11[62], %c12[62]]) +
           (poly z [%a00[62], %a01[62], %a02[62], %a03[62], %a04[62], %a05[62],
                    %a06[62], %a07[62], %a08[62], %a09[62], %a10[62], %a11[62], %a12[62]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[63], %s01[63], %s02[63], %s03[63], %s04[63], %s05[63],
                   %s06[63], %s07[63], %s08[63], %s09[63], %s10[63], %s11[63], %s12[63]])
          ((poly z [%a00[63], %a01[63], %a02[63], %a03[63], %a04[63], %a05[63],
                    %a06[63], %a07[63], %a08[63], %a09[63], %a10[63], %a11[63], %a12[63]] *
            poly z [%b00[63], %b01[63], %b02[63], %b03[63], %b04[63], %b05[63],
                    %b06[63], %b07[63], %b08[63], %b09[63], %b10[63], %b11[63], %b12[63]]) +
           (poly z [%c00[63], %c01[63], %c02[63], %c03[63], %c04[63], %c05[63],
                    %c06[63], %c07[63], %c08[63], %c09[63], %c10[63], %c11[63], %c12[63]]) +
           (poly z [%a00[63], %a01[63], %a02[63], %a03[63], %a04[63], %a05[63],
                    %a06[63], %a07[63], %a08[63], %a09[63], %a10[63], %a11[63], %a12[63]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[64], %s01[64], %s02[64], %s03[64], %s04[64], %s05[64],
                   %s06[64], %s07[64], %s08[64], %s09[64], %s10[64], %s11[64], %s12[64]])
          ((poly z [%a00[64], %a01[64], %a02[64], %a03[64], %a04[64], %a05[64],
                    %a06[64], %a07[64], %a08[64], %a09[64], %a10[64], %a11[64], %a12[64]] *
            poly z [%b00[64], %b01[64], %b02[64], %b03[64], %b04[64], %b05[64],
                    %b06[64], %b07[64], %b08[64], %b09[64], %b10[64], %b11[64], %b12[64]]) +
           (poly z [%c00[64], %c01[64], %c02[64], %c03[64], %c04[64], %c05[64],
                    %c06[64], %c07[64], %c08[64], %c09[64], %c10[64], %c11[64], %c12[64]]) +
           (poly z [%a00[64], %a01[64], %a02[64], %a03[64], %a04[64], %a05[64],
                    %a06[64], %a07[64], %a08[64], %a09[64], %a10[64], %a11[64], %a12[64]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[65], %s01[65], %s02[65], %s03[65], %s04[65], %s05[65],
                   %s06[65], %s07[65], %s08[65], %s09[65], %s10[65], %s11[65], %s12[65]])
          ((poly z [%a00[65], %a01[65], %a02[65], %a03[65], %a04[65], %a05[65],
                    %a06[65], %a07[65], %a08[65], %a09[65], %a10[65], %a11[65], %a12[65]] *
            poly z [%b00[65], %b01[65], %b02[65], %b03[65], %b04[65], %b05[65],
                    %b06[65], %b07[65], %b08[65], %b09[65], %b10[65], %b11[65], %b12[65]]) +
           (poly z [%c00[65], %c01[65], %c02[65], %c03[65], %c04[65], %c05[65],
                    %c06[65], %c07[65], %c08[65], %c09[65], %c10[65], %c11[65], %c12[65]]) +
           (poly z [%a00[65], %a01[65], %a02[65], %a03[65], %a04[65], %a05[65],
                    %a06[65], %a07[65], %a08[65], %a09[65], %a10[65], %a11[65], %a12[65]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[66], %s01[66], %s02[66], %s03[66], %s04[66], %s05[66],
                   %s06[66], %s07[66], %s08[66], %s09[66], %s10[66], %s11[66], %s12[66]])
          ((poly z [%a00[66], %a01[66], %a02[66], %a03[66], %a04[66], %a05[66],
                    %a06[66], %a07[66], %a08[66], %a09[66], %a10[66], %a11[66], %a12[66]] *
            poly z [%b00[66], %b01[66], %b02[66], %b03[66], %b04[66], %b05[66],
                    %b06[66], %b07[66], %b08[66], %b09[66], %b10[66], %b11[66], %b12[66]]) +
           (poly z [%c00[66], %c01[66], %c02[66], %c03[66], %c04[66], %c05[66],
                    %c06[66], %c07[66], %c08[66], %c09[66], %c10[66], %c11[66], %c12[66]]) +
           (poly z [%a00[66], %a01[66], %a02[66], %a03[66], %a04[66], %a05[66],
                    %a06[66], %a07[66], %a08[66], %a09[66], %a10[66], %a11[66], %a12[66]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[67], %s01[67], %s02[67], %s03[67], %s04[67], %s05[67],
                   %s06[67], %s07[67], %s08[67], %s09[67], %s10[67], %s11[67], %s12[67]])
          ((poly z [%a00[67], %a01[67], %a02[67], %a03[67], %a04[67], %a05[67],
                    %a06[67], %a07[67], %a08[67], %a09[67], %a10[67], %a11[67], %a12[67]] *
            poly z [%b00[67], %b01[67], %b02[67], %b03[67], %b04[67], %b05[67],
                    %b06[67], %b07[67], %b08[67], %b09[67], %b10[67], %b11[67], %b12[67]]) +
           (poly z [%c00[67], %c01[67], %c02[67], %c03[67], %c04[67], %c05[67],
                    %c06[67], %c07[67], %c08[67], %c09[67], %c10[67], %c11[67], %c12[67]]) +
           (poly z [%a00[67], %a01[67], %a02[67], %a03[67], %a04[67], %a05[67],
                    %a06[67], %a07[67], %a08[67], %a09[67], %a10[67], %a11[67], %a12[67]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[68], %s01[68], %s02[68], %s03[68], %s04[68], %s05[68],
                   %s06[68], %s07[68], %s08[68], %s09[68], %s10[68], %s11[68], %s12[68]])
          ((poly z [%a00[68], %a01[68], %a02[68], %a03[68], %a04[68], %a05[68],
                    %a06[68], %a07[68], %a08[68], %a09[68], %a10[68], %a11[68], %a12[68]] *
            poly z [%b00[68], %b01[68], %b02[68], %b03[68], %b04[68], %b05[68],
                    %b06[68], %b07[68], %b08[68], %b09[68], %b10[68], %b11[68], %b12[68]]) +
           (poly z [%c00[68], %c01[68], %c02[68], %c03[68], %c04[68], %c05[68],
                    %c06[68], %c07[68], %c08[68], %c09[68], %c10[68], %c11[68], %c12[68]]) +
           (poly z [%a00[68], %a01[68], %a02[68], %a03[68], %a04[68], %a05[68],
                    %a06[68], %a07[68], %a08[68], %a09[68], %a10[68], %a11[68], %a12[68]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[69], %s01[69], %s02[69], %s03[69], %s04[69], %s05[69],
                   %s06[69], %s07[69], %s08[69], %s09[69], %s10[69], %s11[69], %s12[69]])
          ((poly z [%a00[69], %a01[69], %a02[69], %a03[69], %a04[69], %a05[69],
                    %a06[69], %a07[69], %a08[69], %a09[69], %a10[69], %a11[69], %a12[69]] *
            poly z [%b00[69], %b01[69], %b02[69], %b03[69], %b04[69], %b05[69],
                    %b06[69], %b07[69], %b08[69], %b09[69], %b10[69], %b11[69], %b12[69]]) +
           (poly z [%c00[69], %c01[69], %c02[69], %c03[69], %c04[69], %c05[69],
                    %c06[69], %c07[69], %c08[69], %c09[69], %c10[69], %c11[69], %c12[69]]) +
           (poly z [%a00[69], %a01[69], %a02[69], %a03[69], %a04[69], %a05[69],
                    %a06[69], %a07[69], %a08[69], %a09[69], %a10[69], %a11[69], %a12[69]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[70], %s01[70], %s02[70], %s03[70], %s04[70], %s05[70],
                   %s06[70], %s07[70], %s08[70], %s09[70], %s10[70], %s11[70], %s12[70]])
          ((poly z [%a00[70], %a01[70], %a02[70], %a03[70], %a04[70], %a05[70],
                    %a06[70], %a07[70], %a08[70], %a09[70], %a10[70], %a11[70], %a12[70]] *
            poly z [%b00[70], %b01[70], %b02[70], %b03[70], %b04[70], %b05[70],
                    %b06[70], %b07[70], %b08[70], %b09[70], %b10[70], %b11[70], %b12[70]]) +
           (poly z [%c00[70], %c01[70], %c02[70], %c03[70], %c04[70], %c05[70],
                    %c06[70], %c07[70], %c08[70], %c09[70], %c10[70], %c11[70], %c12[70]]) +
           (poly z [%a00[70], %a01[70], %a02[70], %a03[70], %a04[70], %a05[70],
                    %a06[70], %a07[70], %a08[70], %a09[70], %a10[70], %a11[70], %a12[70]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[71], %s01[71], %s02[71], %s03[71], %s04[71], %s05[71],
                   %s06[71], %s07[71], %s08[71], %s09[71], %s10[71], %s11[71], %s12[71]])
          ((poly z [%a00[71], %a01[71], %a02[71], %a03[71], %a04[71], %a05[71],
                    %a06[71], %a07[71], %a08[71], %a09[71], %a10[71], %a11[71], %a12[71]] *
            poly z [%b00[71], %b01[71], %b02[71], %b03[71], %b04[71], %b05[71],
                    %b06[71], %b07[71], %b08[71], %b09[71], %b10[71], %b11[71], %b12[71]]) +
           (poly z [%c00[71], %c01[71], %c02[71], %c03[71], %c04[71], %c05[71],
                    %c06[71], %c07[71], %c08[71], %c09[71], %c10[71], %c11[71], %c12[71]]) +
           (poly z [%a00[71], %a01[71], %a02[71], %a03[71], %a04[71], %a05[71],
                    %a06[71], %a07[71], %a08[71], %a09[71], %a10[71], %a11[71], %a12[71]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[72], %s01[72], %s02[72], %s03[72], %s04[72], %s05[72],
                   %s06[72], %s07[72], %s08[72], %s09[72], %s10[72], %s11[72], %s12[72]])
          ((poly z [%a00[72], %a01[72], %a02[72], %a03[72], %a04[72], %a05[72],
                    %a06[72], %a07[72], %a08[72], %a09[72], %a10[72], %a11[72], %a12[72]] *
            poly z [%b00[72], %b01[72], %b02[72], %b03[72], %b04[72], %b05[72],
                    %b06[72], %b07[72], %b08[72], %b09[72], %b10[72], %b11[72], %b12[72]]) +
           (poly z [%c00[72], %c01[72], %c02[72], %c03[72], %c04[72], %c05[72],
                    %c06[72], %c07[72], %c08[72], %c09[72], %c10[72], %c11[72], %c12[72]]) +
           (poly z [%a00[72], %a01[72], %a02[72], %a03[72], %a04[72], %a05[72],
                    %a06[72], %a07[72], %a08[72], %a09[72], %a10[72], %a11[72], %a12[72]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[73], %s01[73], %s02[73], %s03[73], %s04[73], %s05[73],
                   %s06[73], %s07[73], %s08[73], %s09[73], %s10[73], %s11[73], %s12[73]])
          ((poly z [%a00[73], %a01[73], %a02[73], %a03[73], %a04[73], %a05[73],
                    %a06[73], %a07[73], %a08[73], %a09[73], %a10[73], %a11[73], %a12[73]] *
            poly z [%b00[73], %b01[73], %b02[73], %b03[73], %b04[73], %b05[73],
                    %b06[73], %b07[73], %b08[73], %b09[73], %b10[73], %b11[73], %b12[73]]) +
           (poly z [%c00[73], %c01[73], %c02[73], %c03[73], %c04[73], %c05[73],
                    %c06[73], %c07[73], %c08[73], %c09[73], %c10[73], %c11[73], %c12[73]]) +
           (poly z [%a00[73], %a01[73], %a02[73], %a03[73], %a04[73], %a05[73],
                    %a06[73], %a07[73], %a08[73], %a09[73], %a10[73], %a11[73], %a12[73]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[74], %s01[74], %s02[74], %s03[74], %s04[74], %s05[74],
                   %s06[74], %s07[74], %s08[74], %s09[74], %s10[74], %s11[74], %s12[74]])
          ((poly z [%a00[74], %a01[74], %a02[74], %a03[74], %a04[74], %a05[74],
                    %a06[74], %a07[74], %a08[74], %a09[74], %a10[74], %a11[74], %a12[74]] *
            poly z [%b00[74], %b01[74], %b02[74], %b03[74], %b04[74], %b05[74],
                    %b06[74], %b07[74], %b08[74], %b09[74], %b10[74], %b11[74], %b12[74]]) +
           (poly z [%c00[74], %c01[74], %c02[74], %c03[74], %c04[74], %c05[74],
                    %c06[74], %c07[74], %c08[74], %c09[74], %c10[74], %c11[74], %c12[74]]) +
           (poly z [%a00[74], %a01[74], %a02[74], %a03[74], %a04[74], %a05[74],
                    %a06[74], %a07[74], %a08[74], %a09[74], %a10[74], %a11[74], %a12[74]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[75], %s01[75], %s02[75], %s03[75], %s04[75], %s05[75],
                   %s06[75], %s07[75], %s08[75], %s09[75], %s10[75], %s11[75], %s12[75]])
          ((poly z [%a00[75], %a01[75], %a02[75], %a03[75], %a04[75], %a05[75],
                    %a06[75], %a07[75], %a08[75], %a09[75], %a10[75], %a11[75], %a12[75]] *
            poly z [%b00[75], %b01[75], %b02[75], %b03[75], %b04[75], %b05[75],
                    %b06[75], %b07[75], %b08[75], %b09[75], %b10[75], %b11[75], %b12[75]]) +
           (poly z [%c00[75], %c01[75], %c02[75], %c03[75], %c04[75], %c05[75],
                    %c06[75], %c07[75], %c08[75], %c09[75], %c10[75], %c11[75], %c12[75]]) +
           (poly z [%a00[75], %a01[75], %a02[75], %a03[75], %a04[75], %a05[75],
                    %a06[75], %a07[75], %a08[75], %a09[75], %a10[75], %a11[75], %a12[75]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[76], %s01[76], %s02[76], %s03[76], %s04[76], %s05[76],
                   %s06[76], %s07[76], %s08[76], %s09[76], %s10[76], %s11[76], %s12[76]])
          ((poly z [%a00[76], %a01[76], %a02[76], %a03[76], %a04[76], %a05[76],
                    %a06[76], %a07[76], %a08[76], %a09[76], %a10[76], %a11[76], %a12[76]] *
            poly z [%b00[76], %b01[76], %b02[76], %b03[76], %b04[76], %b05[76],
                    %b06[76], %b07[76], %b08[76], %b09[76], %b10[76], %b11[76], %b12[76]]) +
           (poly z [%c00[76], %c01[76], %c02[76], %c03[76], %c04[76], %c05[76],
                    %c06[76], %c07[76], %c08[76], %c09[76], %c10[76], %c11[76], %c12[76]]) +
           (poly z [%a00[76], %a01[76], %a02[76], %a03[76], %a04[76], %a05[76],
                    %a06[76], %a07[76], %a08[76], %a09[76], %a10[76], %a11[76], %a12[76]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[77], %s01[77], %s02[77], %s03[77], %s04[77], %s05[77],
                   %s06[77], %s07[77], %s08[77], %s09[77], %s10[77], %s11[77], %s12[77]])
          ((poly z [%a00[77], %a01[77], %a02[77], %a03[77], %a04[77], %a05[77],
                    %a06[77], %a07[77], %a08[77], %a09[77], %a10[77], %a11[77], %a12[77]] *
            poly z [%b00[77], %b01[77], %b02[77], %b03[77], %b04[77], %b05[77],
                    %b06[77], %b07[77], %b08[77], %b09[77], %b10[77], %b11[77], %b12[77]]) +
           (poly z [%c00[77], %c01[77], %c02[77], %c03[77], %c04[77], %c05[77],
                    %c06[77], %c07[77], %c08[77], %c09[77], %c10[77], %c11[77], %c12[77]]) +
           (poly z [%a00[77], %a01[77], %a02[77], %a03[77], %a04[77], %a05[77],
                    %a06[77], %a07[77], %a08[77], %a09[77], %a10[77], %a11[77], %a12[77]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[78], %s01[78], %s02[78], %s03[78], %s04[78], %s05[78],
                   %s06[78], %s07[78], %s08[78], %s09[78], %s10[78], %s11[78], %s12[78]])
          ((poly z [%a00[78], %a01[78], %a02[78], %a03[78], %a04[78], %a05[78],
                    %a06[78], %a07[78], %a08[78], %a09[78], %a10[78], %a11[78], %a12[78]] *
            poly z [%b00[78], %b01[78], %b02[78], %b03[78], %b04[78], %b05[78],
                    %b06[78], %b07[78], %b08[78], %b09[78], %b10[78], %b11[78], %b12[78]]) +
           (poly z [%c00[78], %c01[78], %c02[78], %c03[78], %c04[78], %c05[78],
                    %c06[78], %c07[78], %c08[78], %c09[78], %c10[78], %c11[78], %c12[78]]) +
           (poly z [%a00[78], %a01[78], %a02[78], %a03[78], %a04[78], %a05[78],
                    %a06[78], %a07[78], %a08[78], %a09[78], %a10[78], %a11[78], %a12[78]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[79], %s01[79], %s02[79], %s03[79], %s04[79], %s05[79],
                   %s06[79], %s07[79], %s08[79], %s09[79], %s10[79], %s11[79], %s12[79]])
          ((poly z [%a00[79], %a01[79], %a02[79], %a03[79], %a04[79], %a05[79],
                    %a06[79], %a07[79], %a08[79], %a09[79], %a10[79], %a11[79], %a12[79]] *
            poly z [%b00[79], %b01[79], %b02[79], %b03[79], %b04[79], %b05[79],
                    %b06[79], %b07[79], %b08[79], %b09[79], %b10[79], %b11[79], %b12[79]]) +
           (poly z [%c00[79], %c01[79], %c02[79], %c03[79], %c04[79], %c05[79],
                    %c06[79], %c07[79], %c08[79], %c09[79], %c10[79], %c11[79], %c12[79]]) +
           (poly z [%a00[79], %a01[79], %a02[79], %a03[79], %a04[79], %a05[79],
                    %a06[79], %a07[79], %a08[79], %a09[79], %a10[79], %a11[79], %a12[79]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[80], %s01[80], %s02[80], %s03[80], %s04[80], %s05[80],
                   %s06[80], %s07[80], %s08[80], %s09[80], %s10[80], %s11[80], %s12[80]])
          ((poly z [%a00[80], %a01[80], %a02[80], %a03[80], %a04[80], %a05[80],
                    %a06[80], %a07[80], %a08[80], %a09[80], %a10[80], %a11[80], %a12[80]] *
            poly z [%b00[80], %b01[80], %b02[80], %b03[80], %b04[80], %b05[80],
                    %b06[80], %b07[80], %b08[80], %b09[80], %b10[80], %b11[80], %b12[80]]) +
           (poly z [%c00[80], %c01[80], %c02[80], %c03[80], %c04[80], %c05[80],
                    %c06[80], %c07[80], %c08[80], %c09[80], %c10[80], %c11[80], %c12[80]]) +
           (poly z [%a00[80], %a01[80], %a02[80], %a03[80], %a04[80], %a05[80],
                    %a06[80], %a07[80], %a08[80], %a09[80], %a10[80], %a11[80], %a12[80]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[81], %s01[81], %s02[81], %s03[81], %s04[81], %s05[81],
                   %s06[81], %s07[81], %s08[81], %s09[81], %s10[81], %s11[81], %s12[81]])
          ((poly z [%a00[81], %a01[81], %a02[81], %a03[81], %a04[81], %a05[81],
                    %a06[81], %a07[81], %a08[81], %a09[81], %a10[81], %a11[81], %a12[81]] *
            poly z [%b00[81], %b01[81], %b02[81], %b03[81], %b04[81], %b05[81],
                    %b06[81], %b07[81], %b08[81], %b09[81], %b10[81], %b11[81], %b12[81]]) +
           (poly z [%c00[81], %c01[81], %c02[81], %c03[81], %c04[81], %c05[81],
                    %c06[81], %c07[81], %c08[81], %c09[81], %c10[81], %c11[81], %c12[81]]) +
           (poly z [%a00[81], %a01[81], %a02[81], %a03[81], %a04[81], %a05[81],
                    %a06[81], %a07[81], %a08[81], %a09[81], %a10[81], %a11[81], %a12[81]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[82], %s01[82], %s02[82], %s03[82], %s04[82], %s05[82],
                   %s06[82], %s07[82], %s08[82], %s09[82], %s10[82], %s11[82], %s12[82]])
          ((poly z [%a00[82], %a01[82], %a02[82], %a03[82], %a04[82], %a05[82],
                    %a06[82], %a07[82], %a08[82], %a09[82], %a10[82], %a11[82], %a12[82]] *
            poly z [%b00[82], %b01[82], %b02[82], %b03[82], %b04[82], %b05[82],
                    %b06[82], %b07[82], %b08[82], %b09[82], %b10[82], %b11[82], %b12[82]]) +
           (poly z [%c00[82], %c01[82], %c02[82], %c03[82], %c04[82], %c05[82],
                    %c06[82], %c07[82], %c08[82], %c09[82], %c10[82], %c11[82], %c12[82]]) +
           (poly z [%a00[82], %a01[82], %a02[82], %a03[82], %a04[82], %a05[82],
                    %a06[82], %a07[82], %a08[82], %a09[82], %a10[82], %a11[82], %a12[82]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[83], %s01[83], %s02[83], %s03[83], %s04[83], %s05[83],
                   %s06[83], %s07[83], %s08[83], %s09[83], %s10[83], %s11[83], %s12[83]])
          ((poly z [%a00[83], %a01[83], %a02[83], %a03[83], %a04[83], %a05[83],
                    %a06[83], %a07[83], %a08[83], %a09[83], %a10[83], %a11[83], %a12[83]] *
            poly z [%b00[83], %b01[83], %b02[83], %b03[83], %b04[83], %b05[83],
                    %b06[83], %b07[83], %b08[83], %b09[83], %b10[83], %b11[83], %b12[83]]) +
           (poly z [%c00[83], %c01[83], %c02[83], %c03[83], %c04[83], %c05[83],
                    %c06[83], %c07[83], %c08[83], %c09[83], %c10[83], %c11[83], %c12[83]]) +
           (poly z [%a00[83], %a01[83], %a02[83], %a03[83], %a04[83], %a05[83],
                    %a06[83], %a07[83], %a08[83], %a09[83], %a10[83], %a11[83], %a12[83]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[84], %s01[84], %s02[84], %s03[84], %s04[84], %s05[84],
                   %s06[84], %s07[84], %s08[84], %s09[84], %s10[84], %s11[84], %s12[84]])
          ((poly z [%a00[84], %a01[84], %a02[84], %a03[84], %a04[84], %a05[84],
                    %a06[84], %a07[84], %a08[84], %a09[84], %a10[84], %a11[84], %a12[84]] *
            poly z [%b00[84], %b01[84], %b02[84], %b03[84], %b04[84], %b05[84],
                    %b06[84], %b07[84], %b08[84], %b09[84], %b10[84], %b11[84], %b12[84]]) +
           (poly z [%c00[84], %c01[84], %c02[84], %c03[84], %c04[84], %c05[84],
                    %c06[84], %c07[84], %c08[84], %c09[84], %c10[84], %c11[84], %c12[84]]) +
           (poly z [%a00[84], %a01[84], %a02[84], %a03[84], %a04[84], %a05[84],
                    %a06[84], %a07[84], %a08[84], %a09[84], %a10[84], %a11[84], %a12[84]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[85], %s01[85], %s02[85], %s03[85], %s04[85], %s05[85],
                   %s06[85], %s07[85], %s08[85], %s09[85], %s10[85], %s11[85], %s12[85]])
          ((poly z [%a00[85], %a01[85], %a02[85], %a03[85], %a04[85], %a05[85],
                    %a06[85], %a07[85], %a08[85], %a09[85], %a10[85], %a11[85], %a12[85]] *
            poly z [%b00[85], %b01[85], %b02[85], %b03[85], %b04[85], %b05[85],
                    %b06[85], %b07[85], %b08[85], %b09[85], %b10[85], %b11[85], %b12[85]]) +
           (poly z [%c00[85], %c01[85], %c02[85], %c03[85], %c04[85], %c05[85],
                    %c06[85], %c07[85], %c08[85], %c09[85], %c10[85], %c11[85], %c12[85]]) +
           (poly z [%a00[85], %a01[85], %a02[85], %a03[85], %a04[85], %a05[85],
                    %a06[85], %a07[85], %a08[85], %a09[85], %a10[85], %a11[85], %a12[85]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[86], %s01[86], %s02[86], %s03[86], %s04[86], %s05[86],
                   %s06[86], %s07[86], %s08[86], %s09[86], %s10[86], %s11[86], %s12[86]])
          ((poly z [%a00[86], %a01[86], %a02[86], %a03[86], %a04[86], %a05[86],
                    %a06[86], %a07[86], %a08[86], %a09[86], %a10[86], %a11[86], %a12[86]] *
            poly z [%b00[86], %b01[86], %b02[86], %b03[86], %b04[86], %b05[86],
                    %b06[86], %b07[86], %b08[86], %b09[86], %b10[86], %b11[86], %b12[86]]) +
           (poly z [%c00[86], %c01[86], %c02[86], %c03[86], %c04[86], %c05[86],
                    %c06[86], %c07[86], %c08[86], %c09[86], %c10[86], %c11[86], %c12[86]]) +
           (poly z [%a00[86], %a01[86], %a02[86], %a03[86], %a04[86], %a05[86],
                    %a06[86], %a07[86], %a08[86], %a09[86], %a10[86], %a11[86], %a12[86]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[87], %s01[87], %s02[87], %s03[87], %s04[87], %s05[87],
                   %s06[87], %s07[87], %s08[87], %s09[87], %s10[87], %s11[87], %s12[87]])
          ((poly z [%a00[87], %a01[87], %a02[87], %a03[87], %a04[87], %a05[87],
                    %a06[87], %a07[87], %a08[87], %a09[87], %a10[87], %a11[87], %a12[87]] *
            poly z [%b00[87], %b01[87], %b02[87], %b03[87], %b04[87], %b05[87],
                    %b06[87], %b07[87], %b08[87], %b09[87], %b10[87], %b11[87], %b12[87]]) +
           (poly z [%c00[87], %c01[87], %c02[87], %c03[87], %c04[87], %c05[87],
                    %c06[87], %c07[87], %c08[87], %c09[87], %c10[87], %c11[87], %c12[87]]) +
           (poly z [%a00[87], %a01[87], %a02[87], %a03[87], %a04[87], %a05[87],
                    %a06[87], %a07[87], %a08[87], %a09[87], %a10[87], %a11[87], %a12[87]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[88], %s01[88], %s02[88], %s03[88], %s04[88], %s05[88],
                   %s06[88], %s07[88], %s08[88], %s09[88], %s10[88], %s11[88], %s12[88]])
          ((poly z [%a00[88], %a01[88], %a02[88], %a03[88], %a04[88], %a05[88],
                    %a06[88], %a07[88], %a08[88], %a09[88], %a10[88], %a11[88], %a12[88]] *
            poly z [%b00[88], %b01[88], %b02[88], %b03[88], %b04[88], %b05[88],
                    %b06[88], %b07[88], %b08[88], %b09[88], %b10[88], %b11[88], %b12[88]]) +
           (poly z [%c00[88], %c01[88], %c02[88], %c03[88], %c04[88], %c05[88],
                    %c06[88], %c07[88], %c08[88], %c09[88], %c10[88], %c11[88], %c12[88]]) +
           (poly z [%a00[88], %a01[88], %a02[88], %a03[88], %a04[88], %a05[88],
                    %a06[88], %a07[88], %a08[88], %a09[88], %a10[88], %a11[88], %a12[88]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[89], %s01[89], %s02[89], %s03[89], %s04[89], %s05[89],
                   %s06[89], %s07[89], %s08[89], %s09[89], %s10[89], %s11[89], %s12[89]])
          ((poly z [%a00[89], %a01[89], %a02[89], %a03[89], %a04[89], %a05[89],
                    %a06[89], %a07[89], %a08[89], %a09[89], %a10[89], %a11[89], %a12[89]] *
            poly z [%b00[89], %b01[89], %b02[89], %b03[89], %b04[89], %b05[89],
                    %b06[89], %b07[89], %b08[89], %b09[89], %b10[89], %b11[89], %b12[89]]) +
           (poly z [%c00[89], %c01[89], %c02[89], %c03[89], %c04[89], %c05[89],
                    %c06[89], %c07[89], %c08[89], %c09[89], %c10[89], %c11[89], %c12[89]]) +
           (poly z [%a00[89], %a01[89], %a02[89], %a03[89], %a04[89], %a05[89],
                    %a06[89], %a07[89], %a08[89], %a09[89], %a10[89], %a11[89], %a12[89]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[90], %s01[90], %s02[90], %s03[90], %s04[90], %s05[90],
                   %s06[90], %s07[90], %s08[90], %s09[90], %s10[90], %s11[90], %s12[90]])
          ((poly z [%a00[90], %a01[90], %a02[90], %a03[90], %a04[90], %a05[90],
                    %a06[90], %a07[90], %a08[90], %a09[90], %a10[90], %a11[90], %a12[90]] *
            poly z [%b00[90], %b01[90], %b02[90], %b03[90], %b04[90], %b05[90],
                    %b06[90], %b07[90], %b08[90], %b09[90], %b10[90], %b11[90], %b12[90]]) +
           (poly z [%c00[90], %c01[90], %c02[90], %c03[90], %c04[90], %c05[90],
                    %c06[90], %c07[90], %c08[90], %c09[90], %c10[90], %c11[90], %c12[90]]) +
           (poly z [%a00[90], %a01[90], %a02[90], %a03[90], %a04[90], %a05[90],
                    %a06[90], %a07[90], %a08[90], %a09[90], %a10[90], %a11[90], %a12[90]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[91], %s01[91], %s02[91], %s03[91], %s04[91], %s05[91],
                   %s06[91], %s07[91], %s08[91], %s09[91], %s10[91], %s11[91], %s12[91]])
          ((poly z [%a00[91], %a01[91], %a02[91], %a03[91], %a04[91], %a05[91],
                    %a06[91], %a07[91], %a08[91], %a09[91], %a10[91], %a11[91], %a12[91]] *
            poly z [%b00[91], %b01[91], %b02[91], %b03[91], %b04[91], %b05[91],
                    %b06[91], %b07[91], %b08[91], %b09[91], %b10[91], %b11[91], %b12[91]]) +
           (poly z [%c00[91], %c01[91], %c02[91], %c03[91], %c04[91], %c05[91],
                    %c06[91], %c07[91], %c08[91], %c09[91], %c10[91], %c11[91], %c12[91]]) +
           (poly z [%a00[91], %a01[91], %a02[91], %a03[91], %a04[91], %a05[91],
                    %a06[91], %a07[91], %a08[91], %a09[91], %a10[91], %a11[91], %a12[91]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[92], %s01[92], %s02[92], %s03[92], %s04[92], %s05[92],
                   %s06[92], %s07[92], %s08[92], %s09[92], %s10[92], %s11[92], %s12[92]])
          ((poly z [%a00[92], %a01[92], %a02[92], %a03[92], %a04[92], %a05[92],
                    %a06[92], %a07[92], %a08[92], %a09[92], %a10[92], %a11[92], %a12[92]] *
            poly z [%b00[92], %b01[92], %b02[92], %b03[92], %b04[92], %b05[92],
                    %b06[92], %b07[92], %b08[92], %b09[92], %b10[92], %b11[92], %b12[92]]) +
           (poly z [%c00[92], %c01[92], %c02[92], %c03[92], %c04[92], %c05[92],
                    %c06[92], %c07[92], %c08[92], %c09[92], %c10[92], %c11[92], %c12[92]]) +
           (poly z [%a00[92], %a01[92], %a02[92], %a03[92], %a04[92], %a05[92],
                    %a06[92], %a07[92], %a08[92], %a09[92], %a10[92], %a11[92], %a12[92]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[93], %s01[93], %s02[93], %s03[93], %s04[93], %s05[93],
                   %s06[93], %s07[93], %s08[93], %s09[93], %s10[93], %s11[93], %s12[93]])
          ((poly z [%a00[93], %a01[93], %a02[93], %a03[93], %a04[93], %a05[93],
                    %a06[93], %a07[93], %a08[93], %a09[93], %a10[93], %a11[93], %a12[93]] *
            poly z [%b00[93], %b01[93], %b02[93], %b03[93], %b04[93], %b05[93],
                    %b06[93], %b07[93], %b08[93], %b09[93], %b10[93], %b11[93], %b12[93]]) +
           (poly z [%c00[93], %c01[93], %c02[93], %c03[93], %c04[93], %c05[93],
                    %c06[93], %c07[93], %c08[93], %c09[93], %c10[93], %c11[93], %c12[93]]) +
           (poly z [%a00[93], %a01[93], %a02[93], %a03[93], %a04[93], %a05[93],
                    %a06[93], %a07[93], %a08[93], %a09[93], %a10[93], %a11[93], %a12[93]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[94], %s01[94], %s02[94], %s03[94], %s04[94], %s05[94],
                   %s06[94], %s07[94], %s08[94], %s09[94], %s10[94], %s11[94], %s12[94]])
          ((poly z [%a00[94], %a01[94], %a02[94], %a03[94], %a04[94], %a05[94],
                    %a06[94], %a07[94], %a08[94], %a09[94], %a10[94], %a11[94], %a12[94]] *
            poly z [%b00[94], %b01[94], %b02[94], %b03[94], %b04[94], %b05[94],
                    %b06[94], %b07[94], %b08[94], %b09[94], %b10[94], %b11[94], %b12[94]]) +
           (poly z [%c00[94], %c01[94], %c02[94], %c03[94], %c04[94], %c05[94],
                    %c06[94], %c07[94], %c08[94], %c09[94], %c10[94], %c11[94], %c12[94]]) +
           (poly z [%a00[94], %a01[94], %a02[94], %a03[94], %a04[94], %a05[94],
                    %a06[94], %a07[94], %a08[94], %a09[94], %a10[94], %a11[94], %a12[94]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[95], %s01[95], %s02[95], %s03[95], %s04[95], %s05[95],
                   %s06[95], %s07[95], %s08[95], %s09[95], %s10[95], %s11[95], %s12[95]])
          ((poly z [%a00[95], %a01[95], %a02[95], %a03[95], %a04[95], %a05[95],
                    %a06[95], %a07[95], %a08[95], %a09[95], %a10[95], %a11[95], %a12[95]] *
            poly z [%b00[95], %b01[95], %b02[95], %b03[95], %b04[95], %b05[95],
                    %b06[95], %b07[95], %b08[95], %b09[95], %b10[95], %b11[95], %b12[95]]) +
           (poly z [%c00[95], %c01[95], %c02[95], %c03[95], %c04[95], %c05[95],
                    %c06[95], %c07[95], %c08[95], %c09[95], %c10[95], %c11[95], %c12[95]]) +
           (poly z [%a00[95], %a01[95], %a02[95], %a03[95], %a04[95], %a05[95],
                    %a06[95], %a07[95], %a08[95], %a09[95], %a10[95], %a11[95], %a12[95]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[96], %s01[96], %s02[96], %s03[96], %s04[96], %s05[96],
                   %s06[96], %s07[96], %s08[96], %s09[96], %s10[96], %s11[96], %s12[96]])
          ((poly z [%a00[96], %a01[96], %a02[96], %a03[96], %a04[96], %a05[96],
                    %a06[96], %a07[96], %a08[96], %a09[96], %a10[96], %a11[96], %a12[96]] *
            poly z [%b00[96], %b01[96], %b02[96], %b03[96], %b04[96], %b05[96],
                    %b06[96], %b07[96], %b08[96], %b09[96], %b10[96], %b11[96], %b12[96]]) +
           (poly z [%c00[96], %c01[96], %c02[96], %c03[96], %c04[96], %c05[96],
                    %c06[96], %c07[96], %c08[96], %c09[96], %c10[96], %c11[96], %c12[96]]) +
           (poly z [%a00[96], %a01[96], %a02[96], %a03[96], %a04[96], %a05[96],
                    %a06[96], %a07[96], %a08[96], %a09[96], %a10[96], %a11[96], %a12[96]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[97], %s01[97], %s02[97], %s03[97], %s04[97], %s05[97],
                   %s06[97], %s07[97], %s08[97], %s09[97], %s10[97], %s11[97], %s12[97]])
          ((poly z [%a00[97], %a01[97], %a02[97], %a03[97], %a04[97], %a05[97],
                    %a06[97], %a07[97], %a08[97], %a09[97], %a10[97], %a11[97], %a12[97]] *
            poly z [%b00[97], %b01[97], %b02[97], %b03[97], %b04[97], %b05[97],
                    %b06[97], %b07[97], %b08[97], %b09[97], %b10[97], %b11[97], %b12[97]]) +
           (poly z [%c00[97], %c01[97], %c02[97], %c03[97], %c04[97], %c05[97],
                    %c06[97], %c07[97], %c08[97], %c09[97], %c10[97], %c11[97], %c12[97]]) +
           (poly z [%a00[97], %a01[97], %a02[97], %a03[97], %a04[97], %a05[97],
                    %a06[97], %a07[97], %a08[97], %a09[97], %a10[97], %a11[97], %a12[97]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[98], %s01[98], %s02[98], %s03[98], %s04[98], %s05[98],
                   %s06[98], %s07[98], %s08[98], %s09[98], %s10[98], %s11[98], %s12[98]])
          ((poly z [%a00[98], %a01[98], %a02[98], %a03[98], %a04[98], %a05[98],
                    %a06[98], %a07[98], %a08[98], %a09[98], %a10[98], %a11[98], %a12[98]] *
            poly z [%b00[98], %b01[98], %b02[98], %b03[98], %b04[98], %b05[98],
                    %b06[98], %b07[98], %b08[98], %b09[98], %b10[98], %b11[98], %b12[98]]) +
           (poly z [%c00[98], %c01[98], %c02[98], %c03[98], %c04[98], %c05[98],
                    %c06[98], %c07[98], %c08[98], %c09[98], %c10[98], %c11[98], %c12[98]]) +
           (poly z [%a00[98], %a01[98], %a02[98], %a03[98], %a04[98], %a05[98],
                    %a06[98], %a07[98], %a08[98], %a09[98], %a10[98], %a11[98], %a12[98]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[99], %s01[99], %s02[99], %s03[99], %s04[99], %s05[99],
                   %s06[99], %s07[99], %s08[99], %s09[99], %s10[99], %s11[99], %s12[99]])
          ((poly z [%a00[99], %a01[99], %a02[99], %a03[99], %a04[99], %a05[99],
                    %a06[99], %a07[99], %a08[99], %a09[99], %a10[99], %a11[99], %a12[99]] *
            poly z [%b00[99], %b01[99], %b02[99], %b03[99], %b04[99], %b05[99],
                    %b06[99], %b07[99], %b08[99], %b09[99], %b10[99], %b11[99], %b12[99]]) +
           (poly z [%c00[99], %c01[99], %c02[99], %c03[99], %c04[99], %c05[99],
                    %c06[99], %c07[99], %c08[99], %c09[99], %c10[99], %c11[99], %c12[99]]) +
           (poly z [%a00[99], %a01[99], %a02[99], %a03[99], %a04[99], %a05[99],
                    %a06[99], %a07[99], %a08[99], %a09[99], %a10[99], %a11[99], %a12[99]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[100], %s01[100], %s02[100], %s03[100], %s04[100], %s05[100],
                   %s06[100], %s07[100], %s08[100], %s09[100], %s10[100], %s11[100], %s12[100]])
          ((poly z [%a00[100], %a01[100], %a02[100], %a03[100], %a04[100], %a05[100],
                    %a06[100], %a07[100], %a08[100], %a09[100], %a10[100], %a11[100], %a12[100]] *
            poly z [%b00[100], %b01[100], %b02[100], %b03[100], %b04[100], %b05[100],
                    %b06[100], %b07[100], %b08[100], %b09[100], %b10[100], %b11[100], %b12[100]]) +
           (poly z [%c00[100], %c01[100], %c02[100], %c03[100], %c04[100], %c05[100],
                    %c06[100], %c07[100], %c08[100], %c09[100], %c10[100], %c11[100], %c12[100]]) +
           (poly z [%a00[100], %a01[100], %a02[100], %a03[100], %a04[100], %a05[100],
                    %a06[100], %a07[100], %a08[100], %a09[100], %a10[100], %a11[100], %a12[100]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[101], %s01[101], %s02[101], %s03[101], %s04[101], %s05[101],
                   %s06[101], %s07[101], %s08[101], %s09[101], %s10[101], %s11[101], %s12[101]])
          ((poly z [%a00[101], %a01[101], %a02[101], %a03[101], %a04[101], %a05[101],
                    %a06[101], %a07[101], %a08[101], %a09[101], %a10[101], %a11[101], %a12[101]] *
            poly z [%b00[101], %b01[101], %b02[101], %b03[101], %b04[101], %b05[101],
                    %b06[101], %b07[101], %b08[101], %b09[101], %b10[101], %b11[101], %b12[101]]) +
           (poly z [%c00[101], %c01[101], %c02[101], %c03[101], %c04[101], %c05[101],
                    %c06[101], %c07[101], %c08[101], %c09[101], %c10[101], %c11[101], %c12[101]]) +
           (poly z [%a00[101], %a01[101], %a02[101], %a03[101], %a04[101], %a05[101],
                    %a06[101], %a07[101], %a08[101], %a09[101], %a10[101], %a11[101], %a12[101]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[102], %s01[102], %s02[102], %s03[102], %s04[102], %s05[102],
                   %s06[102], %s07[102], %s08[102], %s09[102], %s10[102], %s11[102], %s12[102]])
          ((poly z [%a00[102], %a01[102], %a02[102], %a03[102], %a04[102], %a05[102],
                    %a06[102], %a07[102], %a08[102], %a09[102], %a10[102], %a11[102], %a12[102]] *
            poly z [%b00[102], %b01[102], %b02[102], %b03[102], %b04[102], %b05[102],
                    %b06[102], %b07[102], %b08[102], %b09[102], %b10[102], %b11[102], %b12[102]]) +
           (poly z [%c00[102], %c01[102], %c02[102], %c03[102], %c04[102], %c05[102],
                    %c06[102], %c07[102], %c08[102], %c09[102], %c10[102], %c11[102], %c12[102]]) +
           (poly z [%a00[102], %a01[102], %a02[102], %a03[102], %a04[102], %a05[102],
                    %a06[102], %a07[102], %a08[102], %a09[102], %a10[102], %a11[102], %a12[102]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[103], %s01[103], %s02[103], %s03[103], %s04[103], %s05[103],
                   %s06[103], %s07[103], %s08[103], %s09[103], %s10[103], %s11[103], %s12[103]])
          ((poly z [%a00[103], %a01[103], %a02[103], %a03[103], %a04[103], %a05[103],
                    %a06[103], %a07[103], %a08[103], %a09[103], %a10[103], %a11[103], %a12[103]] *
            poly z [%b00[103], %b01[103], %b02[103], %b03[103], %b04[103], %b05[103],
                    %b06[103], %b07[103], %b08[103], %b09[103], %b10[103], %b11[103], %b12[103]]) +
           (poly z [%c00[103], %c01[103], %c02[103], %c03[103], %c04[103], %c05[103],
                    %c06[103], %c07[103], %c08[103], %c09[103], %c10[103], %c11[103], %c12[103]]) +
           (poly z [%a00[103], %a01[103], %a02[103], %a03[103], %a04[103], %a05[103],
                    %a06[103], %a07[103], %a08[103], %a09[103], %a10[103], %a11[103], %a12[103]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[104], %s01[104], %s02[104], %s03[104], %s04[104], %s05[104],
                   %s06[104], %s07[104], %s08[104], %s09[104], %s10[104], %s11[104], %s12[104]])
          ((poly z [%a00[104], %a01[104], %a02[104], %a03[104], %a04[104], %a05[104],
                    %a06[104], %a07[104], %a08[104], %a09[104], %a10[104], %a11[104], %a12[104]] *
            poly z [%b00[104], %b01[104], %b02[104], %b03[104], %b04[104], %b05[104],
                    %b06[104], %b07[104], %b08[104], %b09[104], %b10[104], %b11[104], %b12[104]]) +
           (poly z [%c00[104], %c01[104], %c02[104], %c03[104], %c04[104], %c05[104],
                    %c06[104], %c07[104], %c08[104], %c09[104], %c10[104], %c11[104], %c12[104]]) +
           (poly z [%a00[104], %a01[104], %a02[104], %a03[104], %a04[104], %a05[104],
                    %a06[104], %a07[104], %a08[104], %a09[104], %a10[104], %a11[104], %a12[104]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[105], %s01[105], %s02[105], %s03[105], %s04[105], %s05[105],
                   %s06[105], %s07[105], %s08[105], %s09[105], %s10[105], %s11[105], %s12[105]])
          ((poly z [%a00[105], %a01[105], %a02[105], %a03[105], %a04[105], %a05[105],
                    %a06[105], %a07[105], %a08[105], %a09[105], %a10[105], %a11[105], %a12[105]] *
            poly z [%b00[105], %b01[105], %b02[105], %b03[105], %b04[105], %b05[105],
                    %b06[105], %b07[105], %b08[105], %b09[105], %b10[105], %b11[105], %b12[105]]) +
           (poly z [%c00[105], %c01[105], %c02[105], %c03[105], %c04[105], %c05[105],
                    %c06[105], %c07[105], %c08[105], %c09[105], %c10[105], %c11[105], %c12[105]]) +
           (poly z [%a00[105], %a01[105], %a02[105], %a03[105], %a04[105], %a05[105],
                    %a06[105], %a07[105], %a08[105], %a09[105], %a10[105], %a11[105], %a12[105]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[106], %s01[106], %s02[106], %s03[106], %s04[106], %s05[106],
                   %s06[106], %s07[106], %s08[106], %s09[106], %s10[106], %s11[106], %s12[106]])
          ((poly z [%a00[106], %a01[106], %a02[106], %a03[106], %a04[106], %a05[106],
                    %a06[106], %a07[106], %a08[106], %a09[106], %a10[106], %a11[106], %a12[106]] *
            poly z [%b00[106], %b01[106], %b02[106], %b03[106], %b04[106], %b05[106],
                    %b06[106], %b07[106], %b08[106], %b09[106], %b10[106], %b11[106], %b12[106]]) +
           (poly z [%c00[106], %c01[106], %c02[106], %c03[106], %c04[106], %c05[106],
                    %c06[106], %c07[106], %c08[106], %c09[106], %c10[106], %c11[106], %c12[106]]) +
           (poly z [%a00[106], %a01[106], %a02[106], %a03[106], %a04[106], %a05[106],
                    %a06[106], %a07[106], %a08[106], %a09[106], %a10[106], %a11[106], %a12[106]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[107], %s01[107], %s02[107], %s03[107], %s04[107], %s05[107],
                   %s06[107], %s07[107], %s08[107], %s09[107], %s10[107], %s11[107], %s12[107]])
          ((poly z [%a00[107], %a01[107], %a02[107], %a03[107], %a04[107], %a05[107],
                    %a06[107], %a07[107], %a08[107], %a09[107], %a10[107], %a11[107], %a12[107]] *
            poly z [%b00[107], %b01[107], %b02[107], %b03[107], %b04[107], %b05[107],
                    %b06[107], %b07[107], %b08[107], %b09[107], %b10[107], %b11[107], %b12[107]]) +
           (poly z [%c00[107], %c01[107], %c02[107], %c03[107], %c04[107], %c05[107],
                    %c06[107], %c07[107], %c08[107], %c09[107], %c10[107], %c11[107], %c12[107]]) +
           (poly z [%a00[107], %a01[107], %a02[107], %a03[107], %a04[107], %a05[107],
                    %a06[107], %a07[107], %a08[107], %a09[107], %a10[107], %a11[107], %a12[107]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[108], %s01[108], %s02[108], %s03[108], %s04[108], %s05[108],
                   %s06[108], %s07[108], %s08[108], %s09[108], %s10[108], %s11[108], %s12[108]])
          ((poly z [%a00[108], %a01[108], %a02[108], %a03[108], %a04[108], %a05[108],
                    %a06[108], %a07[108], %a08[108], %a09[108], %a10[108], %a11[108], %a12[108]] *
            poly z [%b00[108], %b01[108], %b02[108], %b03[108], %b04[108], %b05[108],
                    %b06[108], %b07[108], %b08[108], %b09[108], %b10[108], %b11[108], %b12[108]]) +
           (poly z [%c00[108], %c01[108], %c02[108], %c03[108], %c04[108], %c05[108],
                    %c06[108], %c07[108], %c08[108], %c09[108], %c10[108], %c11[108], %c12[108]]) +
           (poly z [%a00[108], %a01[108], %a02[108], %a03[108], %a04[108], %a05[108],
                    %a06[108], %a07[108], %a08[108], %a09[108], %a10[108], %a11[108], %a12[108]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[109], %s01[109], %s02[109], %s03[109], %s04[109], %s05[109],
                   %s06[109], %s07[109], %s08[109], %s09[109], %s10[109], %s11[109], %s12[109]])
          ((poly z [%a00[109], %a01[109], %a02[109], %a03[109], %a04[109], %a05[109],
                    %a06[109], %a07[109], %a08[109], %a09[109], %a10[109], %a11[109], %a12[109]] *
            poly z [%b00[109], %b01[109], %b02[109], %b03[109], %b04[109], %b05[109],
                    %b06[109], %b07[109], %b08[109], %b09[109], %b10[109], %b11[109], %b12[109]]) +
           (poly z [%c00[109], %c01[109], %c02[109], %c03[109], %c04[109], %c05[109],
                    %c06[109], %c07[109], %c08[109], %c09[109], %c10[109], %c11[109], %c12[109]]) +
           (poly z [%a00[109], %a01[109], %a02[109], %a03[109], %a04[109], %a05[109],
                    %a06[109], %a07[109], %a08[109], %a09[109], %a10[109], %a11[109], %a12[109]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[110], %s01[110], %s02[110], %s03[110], %s04[110], %s05[110],
                   %s06[110], %s07[110], %s08[110], %s09[110], %s10[110], %s11[110], %s12[110]])
          ((poly z [%a00[110], %a01[110], %a02[110], %a03[110], %a04[110], %a05[110],
                    %a06[110], %a07[110], %a08[110], %a09[110], %a10[110], %a11[110], %a12[110]] *
            poly z [%b00[110], %b01[110], %b02[110], %b03[110], %b04[110], %b05[110],
                    %b06[110], %b07[110], %b08[110], %b09[110], %b10[110], %b11[110], %b12[110]]) +
           (poly z [%c00[110], %c01[110], %c02[110], %c03[110], %c04[110], %c05[110],
                    %c06[110], %c07[110], %c08[110], %c09[110], %c10[110], %c11[110], %c12[110]]) +
           (poly z [%a00[110], %a01[110], %a02[110], %a03[110], %a04[110], %a05[110],
                    %a06[110], %a07[110], %a08[110], %a09[110], %a10[110], %a11[110], %a12[110]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[111], %s01[111], %s02[111], %s03[111], %s04[111], %s05[111],
                   %s06[111], %s07[111], %s08[111], %s09[111], %s10[111], %s11[111], %s12[111]])
          ((poly z [%a00[111], %a01[111], %a02[111], %a03[111], %a04[111], %a05[111],
                    %a06[111], %a07[111], %a08[111], %a09[111], %a10[111], %a11[111], %a12[111]] *
            poly z [%b00[111], %b01[111], %b02[111], %b03[111], %b04[111], %b05[111],
                    %b06[111], %b07[111], %b08[111], %b09[111], %b10[111], %b11[111], %b12[111]]) +
           (poly z [%c00[111], %c01[111], %c02[111], %c03[111], %c04[111], %c05[111],
                    %c06[111], %c07[111], %c08[111], %c09[111], %c10[111], %c11[111], %c12[111]]) +
           (poly z [%a00[111], %a01[111], %a02[111], %a03[111], %a04[111], %a05[111],
                    %a06[111], %a07[111], %a08[111], %a09[111], %a10[111], %a11[111], %a12[111]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[112], %s01[112], %s02[112], %s03[112], %s04[112], %s05[112],
                   %s06[112], %s07[112], %s08[112], %s09[112], %s10[112], %s11[112], %s12[112]])
          ((poly z [%a00[112], %a01[112], %a02[112], %a03[112], %a04[112], %a05[112],
                    %a06[112], %a07[112], %a08[112], %a09[112], %a10[112], %a11[112], %a12[112]] *
            poly z [%b00[112], %b01[112], %b02[112], %b03[112], %b04[112], %b05[112],
                    %b06[112], %b07[112], %b08[112], %b09[112], %b10[112], %b11[112], %b12[112]]) +
           (poly z [%c00[112], %c01[112], %c02[112], %c03[112], %c04[112], %c05[112],
                    %c06[112], %c07[112], %c08[112], %c09[112], %c10[112], %c11[112], %c12[112]]) +
           (poly z [%a00[112], %a01[112], %a02[112], %a03[112], %a04[112], %a05[112],
                    %a06[112], %a07[112], %a08[112], %a09[112], %a10[112], %a11[112], %a12[112]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[113], %s01[113], %s02[113], %s03[113], %s04[113], %s05[113],
                   %s06[113], %s07[113], %s08[113], %s09[113], %s10[113], %s11[113], %s12[113]])
          ((poly z [%a00[113], %a01[113], %a02[113], %a03[113], %a04[113], %a05[113],
                    %a06[113], %a07[113], %a08[113], %a09[113], %a10[113], %a11[113], %a12[113]] *
            poly z [%b00[113], %b01[113], %b02[113], %b03[113], %b04[113], %b05[113],
                    %b06[113], %b07[113], %b08[113], %b09[113], %b10[113], %b11[113], %b12[113]]) +
           (poly z [%c00[113], %c01[113], %c02[113], %c03[113], %c04[113], %c05[113],
                    %c06[113], %c07[113], %c08[113], %c09[113], %c10[113], %c11[113], %c12[113]]) +
           (poly z [%a00[113], %a01[113], %a02[113], %a03[113], %a04[113], %a05[113],
                    %a06[113], %a07[113], %a08[113], %a09[113], %a10[113], %a11[113], %a12[113]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[114], %s01[114], %s02[114], %s03[114], %s04[114], %s05[114],
                   %s06[114], %s07[114], %s08[114], %s09[114], %s10[114], %s11[114], %s12[114]])
          ((poly z [%a00[114], %a01[114], %a02[114], %a03[114], %a04[114], %a05[114],
                    %a06[114], %a07[114], %a08[114], %a09[114], %a10[114], %a11[114], %a12[114]] *
            poly z [%b00[114], %b01[114], %b02[114], %b03[114], %b04[114], %b05[114],
                    %b06[114], %b07[114], %b08[114], %b09[114], %b10[114], %b11[114], %b12[114]]) +
           (poly z [%c00[114], %c01[114], %c02[114], %c03[114], %c04[114], %c05[114],
                    %c06[114], %c07[114], %c08[114], %c09[114], %c10[114], %c11[114], %c12[114]]) +
           (poly z [%a00[114], %a01[114], %a02[114], %a03[114], %a04[114], %a05[114],
                    %a06[114], %a07[114], %a08[114], %a09[114], %a10[114], %a11[114], %a12[114]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[115], %s01[115], %s02[115], %s03[115], %s04[115], %s05[115],
                   %s06[115], %s07[115], %s08[115], %s09[115], %s10[115], %s11[115], %s12[115]])
          ((poly z [%a00[115], %a01[115], %a02[115], %a03[115], %a04[115], %a05[115],
                    %a06[115], %a07[115], %a08[115], %a09[115], %a10[115], %a11[115], %a12[115]] *
            poly z [%b00[115], %b01[115], %b02[115], %b03[115], %b04[115], %b05[115],
                    %b06[115], %b07[115], %b08[115], %b09[115], %b10[115], %b11[115], %b12[115]]) +
           (poly z [%c00[115], %c01[115], %c02[115], %c03[115], %c04[115], %c05[115],
                    %c06[115], %c07[115], %c08[115], %c09[115], %c10[115], %c11[115], %c12[115]]) +
           (poly z [%a00[115], %a01[115], %a02[115], %a03[115], %a04[115], %a05[115],
                    %a06[115], %a07[115], %a08[115], %a09[115], %a10[115], %a11[115], %a12[115]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[116], %s01[116], %s02[116], %s03[116], %s04[116], %s05[116],
                   %s06[116], %s07[116], %s08[116], %s09[116], %s10[116], %s11[116], %s12[116]])
          ((poly z [%a00[116], %a01[116], %a02[116], %a03[116], %a04[116], %a05[116],
                    %a06[116], %a07[116], %a08[116], %a09[116], %a10[116], %a11[116], %a12[116]] *
            poly z [%b00[116], %b01[116], %b02[116], %b03[116], %b04[116], %b05[116],
                    %b06[116], %b07[116], %b08[116], %b09[116], %b10[116], %b11[116], %b12[116]]) +
           (poly z [%c00[116], %c01[116], %c02[116], %c03[116], %c04[116], %c05[116],
                    %c06[116], %c07[116], %c08[116], %c09[116], %c10[116], %c11[116], %c12[116]]) +
           (poly z [%a00[116], %a01[116], %a02[116], %a03[116], %a04[116], %a05[116],
                    %a06[116], %a07[116], %a08[116], %a09[116], %a10[116], %a11[116], %a12[116]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[117], %s01[117], %s02[117], %s03[117], %s04[117], %s05[117],
                   %s06[117], %s07[117], %s08[117], %s09[117], %s10[117], %s11[117], %s12[117]])
          ((poly z [%a00[117], %a01[117], %a02[117], %a03[117], %a04[117], %a05[117],
                    %a06[117], %a07[117], %a08[117], %a09[117], %a10[117], %a11[117], %a12[117]] *
            poly z [%b00[117], %b01[117], %b02[117], %b03[117], %b04[117], %b05[117],
                    %b06[117], %b07[117], %b08[117], %b09[117], %b10[117], %b11[117], %b12[117]]) +
           (poly z [%c00[117], %c01[117], %c02[117], %c03[117], %c04[117], %c05[117],
                    %c06[117], %c07[117], %c08[117], %c09[117], %c10[117], %c11[117], %c12[117]]) +
           (poly z [%a00[117], %a01[117], %a02[117], %a03[117], %a04[117], %a05[117],
                    %a06[117], %a07[117], %a08[117], %a09[117], %a10[117], %a11[117], %a12[117]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[118], %s01[118], %s02[118], %s03[118], %s04[118], %s05[118],
                   %s06[118], %s07[118], %s08[118], %s09[118], %s10[118], %s11[118], %s12[118]])
          ((poly z [%a00[118], %a01[118], %a02[118], %a03[118], %a04[118], %a05[118],
                    %a06[118], %a07[118], %a08[118], %a09[118], %a10[118], %a11[118], %a12[118]] *
            poly z [%b00[118], %b01[118], %b02[118], %b03[118], %b04[118], %b05[118],
                    %b06[118], %b07[118], %b08[118], %b09[118], %b10[118], %b11[118], %b12[118]]) +
           (poly z [%c00[118], %c01[118], %c02[118], %c03[118], %c04[118], %c05[118],
                    %c06[118], %c07[118], %c08[118], %c09[118], %c10[118], %c11[118], %c12[118]]) +
           (poly z [%a00[118], %a01[118], %a02[118], %a03[118], %a04[118], %a05[118],
                    %a06[118], %a07[118], %a08[118], %a09[118], %a10[118], %a11[118], %a12[118]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[119], %s01[119], %s02[119], %s03[119], %s04[119], %s05[119],
                   %s06[119], %s07[119], %s08[119], %s09[119], %s10[119], %s11[119], %s12[119]])
          ((poly z [%a00[119], %a01[119], %a02[119], %a03[119], %a04[119], %a05[119],
                    %a06[119], %a07[119], %a08[119], %a09[119], %a10[119], %a11[119], %a12[119]] *
            poly z [%b00[119], %b01[119], %b02[119], %b03[119], %b04[119], %b05[119],
                    %b06[119], %b07[119], %b08[119], %b09[119], %b10[119], %b11[119], %b12[119]]) +
           (poly z [%c00[119], %c01[119], %c02[119], %c03[119], %c04[119], %c05[119],
                    %c06[119], %c07[119], %c08[119], %c09[119], %c10[119], %c11[119], %c12[119]]) +
           (poly z [%a00[119], %a01[119], %a02[119], %a03[119], %a04[119], %a05[119],
                    %a06[119], %a07[119], %a08[119], %a09[119], %a10[119], %a11[119], %a12[119]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[120], %s01[120], %s02[120], %s03[120], %s04[120], %s05[120],
                   %s06[120], %s07[120], %s08[120], %s09[120], %s10[120], %s11[120], %s12[120]])
          ((poly z [%a00[120], %a01[120], %a02[120], %a03[120], %a04[120], %a05[120],
                    %a06[120], %a07[120], %a08[120], %a09[120], %a10[120], %a11[120], %a12[120]] *
            poly z [%b00[120], %b01[120], %b02[120], %b03[120], %b04[120], %b05[120],
                    %b06[120], %b07[120], %b08[120], %b09[120], %b10[120], %b11[120], %b12[120]]) +
           (poly z [%c00[120], %c01[120], %c02[120], %c03[120], %c04[120], %c05[120],
                    %c06[120], %c07[120], %c08[120], %c09[120], %c10[120], %c11[120], %c12[120]]) +
           (poly z [%a00[120], %a01[120], %a02[120], %a03[120], %a04[120], %a05[120],
                    %a06[120], %a07[120], %a08[120], %a09[120], %a10[120], %a11[120], %a12[120]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[121], %s01[121], %s02[121], %s03[121], %s04[121], %s05[121],
                   %s06[121], %s07[121], %s08[121], %s09[121], %s10[121], %s11[121], %s12[121]])
          ((poly z [%a00[121], %a01[121], %a02[121], %a03[121], %a04[121], %a05[121],
                    %a06[121], %a07[121], %a08[121], %a09[121], %a10[121], %a11[121], %a12[121]] *
            poly z [%b00[121], %b01[121], %b02[121], %b03[121], %b04[121], %b05[121],
                    %b06[121], %b07[121], %b08[121], %b09[121], %b10[121], %b11[121], %b12[121]]) +
           (poly z [%c00[121], %c01[121], %c02[121], %c03[121], %c04[121], %c05[121],
                    %c06[121], %c07[121], %c08[121], %c09[121], %c10[121], %c11[121], %c12[121]]) +
           (poly z [%a00[121], %a01[121], %a02[121], %a03[121], %a04[121], %a05[121],
                    %a06[121], %a07[121], %a08[121], %a09[121], %a10[121], %a11[121], %a12[121]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[122], %s01[122], %s02[122], %s03[122], %s04[122], %s05[122],
                   %s06[122], %s07[122], %s08[122], %s09[122], %s10[122], %s11[122], %s12[122]])
          ((poly z [%a00[122], %a01[122], %a02[122], %a03[122], %a04[122], %a05[122],
                    %a06[122], %a07[122], %a08[122], %a09[122], %a10[122], %a11[122], %a12[122]] *
            poly z [%b00[122], %b01[122], %b02[122], %b03[122], %b04[122], %b05[122],
                    %b06[122], %b07[122], %b08[122], %b09[122], %b10[122], %b11[122], %b12[122]]) +
           (poly z [%c00[122], %c01[122], %c02[122], %c03[122], %c04[122], %c05[122],
                    %c06[122], %c07[122], %c08[122], %c09[122], %c10[122], %c11[122], %c12[122]]) +
           (poly z [%a00[122], %a01[122], %a02[122], %a03[122], %a04[122], %a05[122],
                    %a06[122], %a07[122], %a08[122], %a09[122], %a10[122], %a11[122], %a12[122]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[123], %s01[123], %s02[123], %s03[123], %s04[123], %s05[123],
                   %s06[123], %s07[123], %s08[123], %s09[123], %s10[123], %s11[123], %s12[123]])
          ((poly z [%a00[123], %a01[123], %a02[123], %a03[123], %a04[123], %a05[123],
                    %a06[123], %a07[123], %a08[123], %a09[123], %a10[123], %a11[123], %a12[123]] *
            poly z [%b00[123], %b01[123], %b02[123], %b03[123], %b04[123], %b05[123],
                    %b06[123], %b07[123], %b08[123], %b09[123], %b10[123], %b11[123], %b12[123]]) +
           (poly z [%c00[123], %c01[123], %c02[123], %c03[123], %c04[123], %c05[123],
                    %c06[123], %c07[123], %c08[123], %c09[123], %c10[123], %c11[123], %c12[123]]) +
           (poly z [%a00[123], %a01[123], %a02[123], %a03[123], %a04[123], %a05[123],
                    %a06[123], %a07[123], %a08[123], %a09[123], %a10[123], %a11[123], %a12[123]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[124], %s01[124], %s02[124], %s03[124], %s04[124], %s05[124],
                   %s06[124], %s07[124], %s08[124], %s09[124], %s10[124], %s11[124], %s12[124]])
          ((poly z [%a00[124], %a01[124], %a02[124], %a03[124], %a04[124], %a05[124],
                    %a06[124], %a07[124], %a08[124], %a09[124], %a10[124], %a11[124], %a12[124]] *
            poly z [%b00[124], %b01[124], %b02[124], %b03[124], %b04[124], %b05[124],
                    %b06[124], %b07[124], %b08[124], %b09[124], %b10[124], %b11[124], %b12[124]]) +
           (poly z [%c00[124], %c01[124], %c02[124], %c03[124], %c04[124], %c05[124],
                    %c06[124], %c07[124], %c08[124], %c09[124], %c10[124], %c11[124], %c12[124]]) +
           (poly z [%a00[124], %a01[124], %a02[124], %a03[124], %a04[124], %a05[124],
                    %a06[124], %a07[124], %a08[124], %a09[124], %a10[124], %a11[124], %a12[124]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[125], %s01[125], %s02[125], %s03[125], %s04[125], %s05[125],
                   %s06[125], %s07[125], %s08[125], %s09[125], %s10[125], %s11[125], %s12[125]])
          ((poly z [%a00[125], %a01[125], %a02[125], %a03[125], %a04[125], %a05[125],
                    %a06[125], %a07[125], %a08[125], %a09[125], %a10[125], %a11[125], %a12[125]] *
            poly z [%b00[125], %b01[125], %b02[125], %b03[125], %b04[125], %b05[125],
                    %b06[125], %b07[125], %b08[125], %b09[125], %b10[125], %b11[125], %b12[125]]) +
           (poly z [%c00[125], %c01[125], %c02[125], %c03[125], %c04[125], %c05[125],
                    %c06[125], %c07[125], %c08[125], %c09[125], %c10[125], %c11[125], %c12[125]]) +
           (poly z [%a00[125], %a01[125], %a02[125], %a03[125], %a04[125], %a05[125],
                    %a06[125], %a07[125], %a08[125], %a09[125], %a10[125], %a11[125], %a12[125]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[126], %s01[126], %s02[126], %s03[126], %s04[126], %s05[126],
                   %s06[126], %s07[126], %s08[126], %s09[126], %s10[126], %s11[126], %s12[126]])
          ((poly z [%a00[126], %a01[126], %a02[126], %a03[126], %a04[126], %a05[126],
                    %a06[126], %a07[126], %a08[126], %a09[126], %a10[126], %a11[126], %a12[126]] *
            poly z [%b00[126], %b01[126], %b02[126], %b03[126], %b04[126], %b05[126],
                    %b06[126], %b07[126], %b08[126], %b09[126], %b10[126], %b11[126], %b12[126]]) +
           (poly z [%c00[126], %c01[126], %c02[126], %c03[126], %c04[126], %c05[126],
                    %c06[126], %c07[126], %c08[126], %c09[126], %c10[126], %c11[126], %c12[126]]) +
           (poly z [%a00[126], %a01[126], %a02[126], %a03[126], %a04[126], %a05[126],
                    %a06[126], %a07[126], %a08[126], %a09[126], %a10[126], %a11[126], %a12[126]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[127], %s01[127], %s02[127], %s03[127], %s04[127], %s05[127],
                   %s06[127], %s07[127], %s08[127], %s09[127], %s10[127], %s11[127], %s12[127]])
          ((poly z [%a00[127], %a01[127], %a02[127], %a03[127], %a04[127], %a05[127],
                    %a06[127], %a07[127], %a08[127], %a09[127], %a10[127], %a11[127], %a12[127]] *
            poly z [%b00[127], %b01[127], %b02[127], %b03[127], %b04[127], %b05[127],
                    %b06[127], %b07[127], %b08[127], %b09[127], %b10[127], %b11[127], %b12[127]]) +
           (poly z [%c00[127], %c01[127], %c02[127], %c03[127], %c04[127], %c05[127],
                    %c06[127], %c07[127], %c08[127], %c09[127], %c10[127], %c11[127], %c12[127]]) +
           (poly z [%a00[127], %a01[127], %a02[127], %a03[127], %a04[127], %a05[127],
                    %a06[127], %a07[127], %a08[127], %a09[127], %a10[127], %a11[127], %a12[127]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[128], %s01[128], %s02[128], %s03[128], %s04[128], %s05[128],
                   %s06[128], %s07[128], %s08[128], %s09[128], %s10[128], %s11[128], %s12[128]])
          ((poly z [%a00[128], %a01[128], %a02[128], %a03[128], %a04[128], %a05[128],
                    %a06[128], %a07[128], %a08[128], %a09[128], %a10[128], %a11[128], %a12[128]] *
            poly z [%b00[128], %b01[128], %b02[128], %b03[128], %b04[128], %b05[128],
                    %b06[128], %b07[128], %b08[128], %b09[128], %b10[128], %b11[128], %b12[128]]) +
           (poly z [%c00[128], %c01[128], %c02[128], %c03[128], %c04[128], %c05[128],
                    %c06[128], %c07[128], %c08[128], %c09[128], %c10[128], %c11[128], %c12[128]]) +
           (poly z [%a00[128], %a01[128], %a02[128], %a03[128], %a04[128], %a05[128],
                    %a06[128], %a07[128], %a08[128], %a09[128], %a10[128], %a11[128], %a12[128]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[129], %s01[129], %s02[129], %s03[129], %s04[129], %s05[129],
                   %s06[129], %s07[129], %s08[129], %s09[129], %s10[129], %s11[129], %s12[129]])
          ((poly z [%a00[129], %a01[129], %a02[129], %a03[129], %a04[129], %a05[129],
                    %a06[129], %a07[129], %a08[129], %a09[129], %a10[129], %a11[129], %a12[129]] *
            poly z [%b00[129], %b01[129], %b02[129], %b03[129], %b04[129], %b05[129],
                    %b06[129], %b07[129], %b08[129], %b09[129], %b10[129], %b11[129], %b12[129]]) +
           (poly z [%c00[129], %c01[129], %c02[129], %c03[129], %c04[129], %c05[129],
                    %c06[129], %c07[129], %c08[129], %c09[129], %c10[129], %c11[129], %c12[129]]) +
           (poly z [%a00[129], %a01[129], %a02[129], %a03[129], %a04[129], %a05[129],
                    %a06[129], %a07[129], %a08[129], %a09[129], %a10[129], %a11[129], %a12[129]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[130], %s01[130], %s02[130], %s03[130], %s04[130], %s05[130],
                   %s06[130], %s07[130], %s08[130], %s09[130], %s10[130], %s11[130], %s12[130]])
          ((poly z [%a00[130], %a01[130], %a02[130], %a03[130], %a04[130], %a05[130],
                    %a06[130], %a07[130], %a08[130], %a09[130], %a10[130], %a11[130], %a12[130]] *
            poly z [%b00[130], %b01[130], %b02[130], %b03[130], %b04[130], %b05[130],
                    %b06[130], %b07[130], %b08[130], %b09[130], %b10[130], %b11[130], %b12[130]]) +
           (poly z [%c00[130], %c01[130], %c02[130], %c03[130], %c04[130], %c05[130],
                    %c06[130], %c07[130], %c08[130], %c09[130], %c10[130], %c11[130], %c12[130]]) +
           (poly z [%a00[130], %a01[130], %a02[130], %a03[130], %a04[130], %a05[130],
                    %a06[130], %a07[130], %a08[130], %a09[130], %a10[130], %a11[130], %a12[130]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[131], %s01[131], %s02[131], %s03[131], %s04[131], %s05[131],
                   %s06[131], %s07[131], %s08[131], %s09[131], %s10[131], %s11[131], %s12[131]])
          ((poly z [%a00[131], %a01[131], %a02[131], %a03[131], %a04[131], %a05[131],
                    %a06[131], %a07[131], %a08[131], %a09[131], %a10[131], %a11[131], %a12[131]] *
            poly z [%b00[131], %b01[131], %b02[131], %b03[131], %b04[131], %b05[131],
                    %b06[131], %b07[131], %b08[131], %b09[131], %b10[131], %b11[131], %b12[131]]) +
           (poly z [%c00[131], %c01[131], %c02[131], %c03[131], %c04[131], %c05[131],
                    %c06[131], %c07[131], %c08[131], %c09[131], %c10[131], %c11[131], %c12[131]]) +
           (poly z [%a00[131], %a01[131], %a02[131], %a03[131], %a04[131], %a05[131],
                    %a06[131], %a07[131], %a08[131], %a09[131], %a10[131], %a11[131], %a12[131]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[132], %s01[132], %s02[132], %s03[132], %s04[132], %s05[132],
                   %s06[132], %s07[132], %s08[132], %s09[132], %s10[132], %s11[132], %s12[132]])
          ((poly z [%a00[132], %a01[132], %a02[132], %a03[132], %a04[132], %a05[132],
                    %a06[132], %a07[132], %a08[132], %a09[132], %a10[132], %a11[132], %a12[132]] *
            poly z [%b00[132], %b01[132], %b02[132], %b03[132], %b04[132], %b05[132],
                    %b06[132], %b07[132], %b08[132], %b09[132], %b10[132], %b11[132], %b12[132]]) +
           (poly z [%c00[132], %c01[132], %c02[132], %c03[132], %c04[132], %c05[132],
                    %c06[132], %c07[132], %c08[132], %c09[132], %c10[132], %c11[132], %c12[132]]) +
           (poly z [%a00[132], %a01[132], %a02[132], %a03[132], %a04[132], %a05[132],
                    %a06[132], %a07[132], %a08[132], %a09[132], %a10[132], %a11[132], %a12[132]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[133], %s01[133], %s02[133], %s03[133], %s04[133], %s05[133],
                   %s06[133], %s07[133], %s08[133], %s09[133], %s10[133], %s11[133], %s12[133]])
          ((poly z [%a00[133], %a01[133], %a02[133], %a03[133], %a04[133], %a05[133],
                    %a06[133], %a07[133], %a08[133], %a09[133], %a10[133], %a11[133], %a12[133]] *
            poly z [%b00[133], %b01[133], %b02[133], %b03[133], %b04[133], %b05[133],
                    %b06[133], %b07[133], %b08[133], %b09[133], %b10[133], %b11[133], %b12[133]]) +
           (poly z [%c00[133], %c01[133], %c02[133], %c03[133], %c04[133], %c05[133],
                    %c06[133], %c07[133], %c08[133], %c09[133], %c10[133], %c11[133], %c12[133]]) +
           (poly z [%a00[133], %a01[133], %a02[133], %a03[133], %a04[133], %a05[133],
                    %a06[133], %a07[133], %a08[133], %a09[133], %a10[133], %a11[133], %a12[133]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[134], %s01[134], %s02[134], %s03[134], %s04[134], %s05[134],
                   %s06[134], %s07[134], %s08[134], %s09[134], %s10[134], %s11[134], %s12[134]])
          ((poly z [%a00[134], %a01[134], %a02[134], %a03[134], %a04[134], %a05[134],
                    %a06[134], %a07[134], %a08[134], %a09[134], %a10[134], %a11[134], %a12[134]] *
            poly z [%b00[134], %b01[134], %b02[134], %b03[134], %b04[134], %b05[134],
                    %b06[134], %b07[134], %b08[134], %b09[134], %b10[134], %b11[134], %b12[134]]) +
           (poly z [%c00[134], %c01[134], %c02[134], %c03[134], %c04[134], %c05[134],
                    %c06[134], %c07[134], %c08[134], %c09[134], %c10[134], %c11[134], %c12[134]]) +
           (poly z [%a00[134], %a01[134], %a02[134], %a03[134], %a04[134], %a05[134],
                    %a06[134], %a07[134], %a08[134], %a09[134], %a10[134], %a11[134], %a12[134]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[135], %s01[135], %s02[135], %s03[135], %s04[135], %s05[135],
                   %s06[135], %s07[135], %s08[135], %s09[135], %s10[135], %s11[135], %s12[135]])
          ((poly z [%a00[135], %a01[135], %a02[135], %a03[135], %a04[135], %a05[135],
                    %a06[135], %a07[135], %a08[135], %a09[135], %a10[135], %a11[135], %a12[135]] *
            poly z [%b00[135], %b01[135], %b02[135], %b03[135], %b04[135], %b05[135],
                    %b06[135], %b07[135], %b08[135], %b09[135], %b10[135], %b11[135], %b12[135]]) +
           (poly z [%c00[135], %c01[135], %c02[135], %c03[135], %c04[135], %c05[135],
                    %c06[135], %c07[135], %c08[135], %c09[135], %c10[135], %c11[135], %c12[135]]) +
           (poly z [%a00[135], %a01[135], %a02[135], %a03[135], %a04[135], %a05[135],
                    %a06[135], %a07[135], %a08[135], %a09[135], %a10[135], %a11[135], %a12[135]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[136], %s01[136], %s02[136], %s03[136], %s04[136], %s05[136],
                   %s06[136], %s07[136], %s08[136], %s09[136], %s10[136], %s11[136], %s12[136]])
          ((poly z [%a00[136], %a01[136], %a02[136], %a03[136], %a04[136], %a05[136],
                    %a06[136], %a07[136], %a08[136], %a09[136], %a10[136], %a11[136], %a12[136]] *
            poly z [%b00[136], %b01[136], %b02[136], %b03[136], %b04[136], %b05[136],
                    %b06[136], %b07[136], %b08[136], %b09[136], %b10[136], %b11[136], %b12[136]]) +
           (poly z [%c00[136], %c01[136], %c02[136], %c03[136], %c04[136], %c05[136],
                    %c06[136], %c07[136], %c08[136], %c09[136], %c10[136], %c11[136], %c12[136]]) +
           (poly z [%a00[136], %a01[136], %a02[136], %a03[136], %a04[136], %a05[136],
                    %a06[136], %a07[136], %a08[136], %a09[136], %a10[136], %a11[136], %a12[136]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[137], %s01[137], %s02[137], %s03[137], %s04[137], %s05[137],
                   %s06[137], %s07[137], %s08[137], %s09[137], %s10[137], %s11[137], %s12[137]])
          ((poly z [%a00[137], %a01[137], %a02[137], %a03[137], %a04[137], %a05[137],
                    %a06[137], %a07[137], %a08[137], %a09[137], %a10[137], %a11[137], %a12[137]] *
            poly z [%b00[137], %b01[137], %b02[137], %b03[137], %b04[137], %b05[137],
                    %b06[137], %b07[137], %b08[137], %b09[137], %b10[137], %b11[137], %b12[137]]) +
           (poly z [%c00[137], %c01[137], %c02[137], %c03[137], %c04[137], %c05[137],
                    %c06[137], %c07[137], %c08[137], %c09[137], %c10[137], %c11[137], %c12[137]]) +
           (poly z [%a00[137], %a01[137], %a02[137], %a03[137], %a04[137], %a05[137],
                    %a06[137], %a07[137], %a08[137], %a09[137], %a10[137], %a11[137], %a12[137]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[138], %s01[138], %s02[138], %s03[138], %s04[138], %s05[138],
                   %s06[138], %s07[138], %s08[138], %s09[138], %s10[138], %s11[138], %s12[138]])
          ((poly z [%a00[138], %a01[138], %a02[138], %a03[138], %a04[138], %a05[138],
                    %a06[138], %a07[138], %a08[138], %a09[138], %a10[138], %a11[138], %a12[138]] *
            poly z [%b00[138], %b01[138], %b02[138], %b03[138], %b04[138], %b05[138],
                    %b06[138], %b07[138], %b08[138], %b09[138], %b10[138], %b11[138], %b12[138]]) +
           (poly z [%c00[138], %c01[138], %c02[138], %c03[138], %c04[138], %c05[138],
                    %c06[138], %c07[138], %c08[138], %c09[138], %c10[138], %c11[138], %c12[138]]) +
           (poly z [%a00[138], %a01[138], %a02[138], %a03[138], %a04[138], %a05[138],
                    %a06[138], %a07[138], %a08[138], %a09[138], %a10[138], %a11[138], %a12[138]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[139], %s01[139], %s02[139], %s03[139], %s04[139], %s05[139],
                   %s06[139], %s07[139], %s08[139], %s09[139], %s10[139], %s11[139], %s12[139]])
          ((poly z [%a00[139], %a01[139], %a02[139], %a03[139], %a04[139], %a05[139],
                    %a06[139], %a07[139], %a08[139], %a09[139], %a10[139], %a11[139], %a12[139]] *
            poly z [%b00[139], %b01[139], %b02[139], %b03[139], %b04[139], %b05[139],
                    %b06[139], %b07[139], %b08[139], %b09[139], %b10[139], %b11[139], %b12[139]]) +
           (poly z [%c00[139], %c01[139], %c02[139], %c03[139], %c04[139], %c05[139],
                    %c06[139], %c07[139], %c08[139], %c09[139], %c10[139], %c11[139], %c12[139]]) +
           (poly z [%a00[139], %a01[139], %a02[139], %a03[139], %a04[139], %a05[139],
                    %a06[139], %a07[139], %a08[139], %a09[139], %a10[139], %a11[139], %a12[139]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[140], %s01[140], %s02[140], %s03[140], %s04[140], %s05[140],
                   %s06[140], %s07[140], %s08[140], %s09[140], %s10[140], %s11[140], %s12[140]])
          ((poly z [%a00[140], %a01[140], %a02[140], %a03[140], %a04[140], %a05[140],
                    %a06[140], %a07[140], %a08[140], %a09[140], %a10[140], %a11[140], %a12[140]] *
            poly z [%b00[140], %b01[140], %b02[140], %b03[140], %b04[140], %b05[140],
                    %b06[140], %b07[140], %b08[140], %b09[140], %b10[140], %b11[140], %b12[140]]) +
           (poly z [%c00[140], %c01[140], %c02[140], %c03[140], %c04[140], %c05[140],
                    %c06[140], %c07[140], %c08[140], %c09[140], %c10[140], %c11[140], %c12[140]]) +
           (poly z [%a00[140], %a01[140], %a02[140], %a03[140], %a04[140], %a05[140],
                    %a06[140], %a07[140], %a08[140], %a09[140], %a10[140], %a11[140], %a12[140]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[141], %s01[141], %s02[141], %s03[141], %s04[141], %s05[141],
                   %s06[141], %s07[141], %s08[141], %s09[141], %s10[141], %s11[141], %s12[141]])
          ((poly z [%a00[141], %a01[141], %a02[141], %a03[141], %a04[141], %a05[141],
                    %a06[141], %a07[141], %a08[141], %a09[141], %a10[141], %a11[141], %a12[141]] *
            poly z [%b00[141], %b01[141], %b02[141], %b03[141], %b04[141], %b05[141],
                    %b06[141], %b07[141], %b08[141], %b09[141], %b10[141], %b11[141], %b12[141]]) +
           (poly z [%c00[141], %c01[141], %c02[141], %c03[141], %c04[141], %c05[141],
                    %c06[141], %c07[141], %c08[141], %c09[141], %c10[141], %c11[141], %c12[141]]) +
           (poly z [%a00[141], %a01[141], %a02[141], %a03[141], %a04[141], %a05[141],
                    %a06[141], %a07[141], %a08[141], %a09[141], %a10[141], %a11[141], %a12[141]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[142], %s01[142], %s02[142], %s03[142], %s04[142], %s05[142],
                   %s06[142], %s07[142], %s08[142], %s09[142], %s10[142], %s11[142], %s12[142]])
          ((poly z [%a00[142], %a01[142], %a02[142], %a03[142], %a04[142], %a05[142],
                    %a06[142], %a07[142], %a08[142], %a09[142], %a10[142], %a11[142], %a12[142]] *
            poly z [%b00[142], %b01[142], %b02[142], %b03[142], %b04[142], %b05[142],
                    %b06[142], %b07[142], %b08[142], %b09[142], %b10[142], %b11[142], %b12[142]]) +
           (poly z [%c00[142], %c01[142], %c02[142], %c03[142], %c04[142], %c05[142],
                    %c06[142], %c07[142], %c08[142], %c09[142], %c10[142], %c11[142], %c12[142]]) +
           (poly z [%a00[142], %a01[142], %a02[142], %a03[142], %a04[142], %a05[142],
                    %a06[142], %a07[142], %a08[142], %a09[142], %a10[142], %a11[142], %a12[142]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[143], %s01[143], %s02[143], %s03[143], %s04[143], %s05[143],
                   %s06[143], %s07[143], %s08[143], %s09[143], %s10[143], %s11[143], %s12[143]])
          ((poly z [%a00[143], %a01[143], %a02[143], %a03[143], %a04[143], %a05[143],
                    %a06[143], %a07[143], %a08[143], %a09[143], %a10[143], %a11[143], %a12[143]] *
            poly z [%b00[143], %b01[143], %b02[143], %b03[143], %b04[143], %b05[143],
                    %b06[143], %b07[143], %b08[143], %b09[143], %b10[143], %b11[143], %b12[143]]) +
           (poly z [%c00[143], %c01[143], %c02[143], %c03[143], %c04[143], %c05[143],
                    %c06[143], %c07[143], %c08[143], %c09[143], %c10[143], %c11[143], %c12[143]]) +
           (poly z [%a00[143], %a01[143], %a02[143], %a03[143], %a04[143], %a05[143],
                    %a06[143], %a07[143], %a08[143], %a09[143], %a10[143], %a11[143], %a12[143]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[144], %s01[144], %s02[144], %s03[144], %s04[144], %s05[144],
                   %s06[144], %s07[144], %s08[144], %s09[144], %s10[144], %s11[144], %s12[144]])
          ((poly z [%a00[144], %a01[144], %a02[144], %a03[144], %a04[144], %a05[144],
                    %a06[144], %a07[144], %a08[144], %a09[144], %a10[144], %a11[144], %a12[144]] *
            poly z [%b00[144], %b01[144], %b02[144], %b03[144], %b04[144], %b05[144],
                    %b06[144], %b07[144], %b08[144], %b09[144], %b10[144], %b11[144], %b12[144]]) +
           (poly z [%c00[144], %c01[144], %c02[144], %c03[144], %c04[144], %c05[144],
                    %c06[144], %c07[144], %c08[144], %c09[144], %c10[144], %c11[144], %c12[144]]) +
           (poly z [%a00[144], %a01[144], %a02[144], %a03[144], %a04[144], %a05[144],
                    %a06[144], %a07[144], %a08[144], %a09[144], %a10[144], %a11[144], %a12[144]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[145], %s01[145], %s02[145], %s03[145], %s04[145], %s05[145],
                   %s06[145], %s07[145], %s08[145], %s09[145], %s10[145], %s11[145], %s12[145]])
          ((poly z [%a00[145], %a01[145], %a02[145], %a03[145], %a04[145], %a05[145],
                    %a06[145], %a07[145], %a08[145], %a09[145], %a10[145], %a11[145], %a12[145]] *
            poly z [%b00[145], %b01[145], %b02[145], %b03[145], %b04[145], %b05[145],
                    %b06[145], %b07[145], %b08[145], %b09[145], %b10[145], %b11[145], %b12[145]]) +
           (poly z [%c00[145], %c01[145], %c02[145], %c03[145], %c04[145], %c05[145],
                    %c06[145], %c07[145], %c08[145], %c09[145], %c10[145], %c11[145], %c12[145]]) +
           (poly z [%a00[145], %a01[145], %a02[145], %a03[145], %a04[145], %a05[145],
                    %a06[145], %a07[145], %a08[145], %a09[145], %a10[145], %a11[145], %a12[145]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[146], %s01[146], %s02[146], %s03[146], %s04[146], %s05[146],
                   %s06[146], %s07[146], %s08[146], %s09[146], %s10[146], %s11[146], %s12[146]])
          ((poly z [%a00[146], %a01[146], %a02[146], %a03[146], %a04[146], %a05[146],
                    %a06[146], %a07[146], %a08[146], %a09[146], %a10[146], %a11[146], %a12[146]] *
            poly z [%b00[146], %b01[146], %b02[146], %b03[146], %b04[146], %b05[146],
                    %b06[146], %b07[146], %b08[146], %b09[146], %b10[146], %b11[146], %b12[146]]) +
           (poly z [%c00[146], %c01[146], %c02[146], %c03[146], %c04[146], %c05[146],
                    %c06[146], %c07[146], %c08[146], %c09[146], %c10[146], %c11[146], %c12[146]]) +
           (poly z [%a00[146], %a01[146], %a02[146], %a03[146], %a04[146], %a05[146],
                    %a06[146], %a07[146], %a08[146], %a09[146], %a10[146], %a11[146], %a12[146]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[147], %s01[147], %s02[147], %s03[147], %s04[147], %s05[147],
                   %s06[147], %s07[147], %s08[147], %s09[147], %s10[147], %s11[147], %s12[147]])
          ((poly z [%a00[147], %a01[147], %a02[147], %a03[147], %a04[147], %a05[147],
                    %a06[147], %a07[147], %a08[147], %a09[147], %a10[147], %a11[147], %a12[147]] *
            poly z [%b00[147], %b01[147], %b02[147], %b03[147], %b04[147], %b05[147],
                    %b06[147], %b07[147], %b08[147], %b09[147], %b10[147], %b11[147], %b12[147]]) +
           (poly z [%c00[147], %c01[147], %c02[147], %c03[147], %c04[147], %c05[147],
                    %c06[147], %c07[147], %c08[147], %c09[147], %c10[147], %c11[147], %c12[147]]) +
           (poly z [%a00[147], %a01[147], %a02[147], %a03[147], %a04[147], %a05[147],
                    %a06[147], %a07[147], %a08[147], %a09[147], %a10[147], %a11[147], %a12[147]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[148], %s01[148], %s02[148], %s03[148], %s04[148], %s05[148],
                   %s06[148], %s07[148], %s08[148], %s09[148], %s10[148], %s11[148], %s12[148]])
          ((poly z [%a00[148], %a01[148], %a02[148], %a03[148], %a04[148], %a05[148],
                    %a06[148], %a07[148], %a08[148], %a09[148], %a10[148], %a11[148], %a12[148]] *
            poly z [%b00[148], %b01[148], %b02[148], %b03[148], %b04[148], %b05[148],
                    %b06[148], %b07[148], %b08[148], %b09[148], %b10[148], %b11[148], %b12[148]]) +
           (poly z [%c00[148], %c01[148], %c02[148], %c03[148], %c04[148], %c05[148],
                    %c06[148], %c07[148], %c08[148], %c09[148], %c10[148], %c11[148], %c12[148]]) +
           (poly z [%a00[148], %a01[148], %a02[148], %a03[148], %a04[148], %a05[148],
                    %a06[148], %a07[148], %a08[148], %a09[148], %a10[148], %a11[148], %a12[148]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[149], %s01[149], %s02[149], %s03[149], %s04[149], %s05[149],
                   %s06[149], %s07[149], %s08[149], %s09[149], %s10[149], %s11[149], %s12[149]])
          ((poly z [%a00[149], %a01[149], %a02[149], %a03[149], %a04[149], %a05[149],
                    %a06[149], %a07[149], %a08[149], %a09[149], %a10[149], %a11[149], %a12[149]] *
            poly z [%b00[149], %b01[149], %b02[149], %b03[149], %b04[149], %b05[149],
                    %b06[149], %b07[149], %b08[149], %b09[149], %b10[149], %b11[149], %b12[149]]) +
           (poly z [%c00[149], %c01[149], %c02[149], %c03[149], %c04[149], %c05[149],
                    %c06[149], %c07[149], %c08[149], %c09[149], %c10[149], %c11[149], %c12[149]]) +
           (poly z [%a00[149], %a01[149], %a02[149], %a03[149], %a04[149], %a05[149],
                    %a06[149], %a07[149], %a08[149], %a09[149], %a10[149], %a11[149], %a12[149]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[150], %s01[150], %s02[150], %s03[150], %s04[150], %s05[150],
                   %s06[150], %s07[150], %s08[150], %s09[150], %s10[150], %s11[150], %s12[150]])
          ((poly z [%a00[150], %a01[150], %a02[150], %a03[150], %a04[150], %a05[150],
                    %a06[150], %a07[150], %a08[150], %a09[150], %a10[150], %a11[150], %a12[150]] *
            poly z [%b00[150], %b01[150], %b02[150], %b03[150], %b04[150], %b05[150],
                    %b06[150], %b07[150], %b08[150], %b09[150], %b10[150], %b11[150], %b12[150]]) +
           (poly z [%c00[150], %c01[150], %c02[150], %c03[150], %c04[150], %c05[150],
                    %c06[150], %c07[150], %c08[150], %c09[150], %c10[150], %c11[150], %c12[150]]) +
           (poly z [%a00[150], %a01[150], %a02[150], %a03[150], %a04[150], %a05[150],
                    %a06[150], %a07[150], %a08[150], %a09[150], %a10[150], %a11[150], %a12[150]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[151], %s01[151], %s02[151], %s03[151], %s04[151], %s05[151],
                   %s06[151], %s07[151], %s08[151], %s09[151], %s10[151], %s11[151], %s12[151]])
          ((poly z [%a00[151], %a01[151], %a02[151], %a03[151], %a04[151], %a05[151],
                    %a06[151], %a07[151], %a08[151], %a09[151], %a10[151], %a11[151], %a12[151]] *
            poly z [%b00[151], %b01[151], %b02[151], %b03[151], %b04[151], %b05[151],
                    %b06[151], %b07[151], %b08[151], %b09[151], %b10[151], %b11[151], %b12[151]]) +
           (poly z [%c00[151], %c01[151], %c02[151], %c03[151], %c04[151], %c05[151],
                    %c06[151], %c07[151], %c08[151], %c09[151], %c10[151], %c11[151], %c12[151]]) +
           (poly z [%a00[151], %a01[151], %a02[151], %a03[151], %a04[151], %a05[151],
                    %a06[151], %a07[151], %a08[151], %a09[151], %a10[151], %a11[151], %a12[151]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[152], %s01[152], %s02[152], %s03[152], %s04[152], %s05[152],
                   %s06[152], %s07[152], %s08[152], %s09[152], %s10[152], %s11[152], %s12[152]])
          ((poly z [%a00[152], %a01[152], %a02[152], %a03[152], %a04[152], %a05[152],
                    %a06[152], %a07[152], %a08[152], %a09[152], %a10[152], %a11[152], %a12[152]] *
            poly z [%b00[152], %b01[152], %b02[152], %b03[152], %b04[152], %b05[152],
                    %b06[152], %b07[152], %b08[152], %b09[152], %b10[152], %b11[152], %b12[152]]) +
           (poly z [%c00[152], %c01[152], %c02[152], %c03[152], %c04[152], %c05[152],
                    %c06[152], %c07[152], %c08[152], %c09[152], %c10[152], %c11[152], %c12[152]]) +
           (poly z [%a00[152], %a01[152], %a02[152], %a03[152], %a04[152], %a05[152],
                    %a06[152], %a07[152], %a08[152], %a09[152], %a10[152], %a11[152], %a12[152]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[153], %s01[153], %s02[153], %s03[153], %s04[153], %s05[153],
                   %s06[153], %s07[153], %s08[153], %s09[153], %s10[153], %s11[153], %s12[153]])
          ((poly z [%a00[153], %a01[153], %a02[153], %a03[153], %a04[153], %a05[153],
                    %a06[153], %a07[153], %a08[153], %a09[153], %a10[153], %a11[153], %a12[153]] *
            poly z [%b00[153], %b01[153], %b02[153], %b03[153], %b04[153], %b05[153],
                    %b06[153], %b07[153], %b08[153], %b09[153], %b10[153], %b11[153], %b12[153]]) +
           (poly z [%c00[153], %c01[153], %c02[153], %c03[153], %c04[153], %c05[153],
                    %c06[153], %c07[153], %c08[153], %c09[153], %c10[153], %c11[153], %c12[153]]) +
           (poly z [%a00[153], %a01[153], %a02[153], %a03[153], %a04[153], %a05[153],
                    %a06[153], %a07[153], %a08[153], %a09[153], %a10[153], %a11[153], %a12[153]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[154], %s01[154], %s02[154], %s03[154], %s04[154], %s05[154],
                   %s06[154], %s07[154], %s08[154], %s09[154], %s10[154], %s11[154], %s12[154]])
          ((poly z [%a00[154], %a01[154], %a02[154], %a03[154], %a04[154], %a05[154],
                    %a06[154], %a07[154], %a08[154], %a09[154], %a10[154], %a11[154], %a12[154]] *
            poly z [%b00[154], %b01[154], %b02[154], %b03[154], %b04[154], %b05[154],
                    %b06[154], %b07[154], %b08[154], %b09[154], %b10[154], %b11[154], %b12[154]]) +
           (poly z [%c00[154], %c01[154], %c02[154], %c03[154], %c04[154], %c05[154],
                    %c06[154], %c07[154], %c08[154], %c09[154], %c10[154], %c11[154], %c12[154]]) +
           (poly z [%a00[154], %a01[154], %a02[154], %a03[154], %a04[154], %a05[154],
                    %a06[154], %a07[154], %a08[154], %a09[154], %a10[154], %a11[154], %a12[154]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[155], %s01[155], %s02[155], %s03[155], %s04[155], %s05[155],
                   %s06[155], %s07[155], %s08[155], %s09[155], %s10[155], %s11[155], %s12[155]])
          ((poly z [%a00[155], %a01[155], %a02[155], %a03[155], %a04[155], %a05[155],
                    %a06[155], %a07[155], %a08[155], %a09[155], %a10[155], %a11[155], %a12[155]] *
            poly z [%b00[155], %b01[155], %b02[155], %b03[155], %b04[155], %b05[155],
                    %b06[155], %b07[155], %b08[155], %b09[155], %b10[155], %b11[155], %b12[155]]) +
           (poly z [%c00[155], %c01[155], %c02[155], %c03[155], %c04[155], %c05[155],
                    %c06[155], %c07[155], %c08[155], %c09[155], %c10[155], %c11[155], %c12[155]]) +
           (poly z [%a00[155], %a01[155], %a02[155], %a03[155], %a04[155], %a05[155],
                    %a06[155], %a07[155], %a08[155], %a09[155], %a10[155], %a11[155], %a12[155]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[156], %s01[156], %s02[156], %s03[156], %s04[156], %s05[156],
                   %s06[156], %s07[156], %s08[156], %s09[156], %s10[156], %s11[156], %s12[156]])
          ((poly z [%a00[156], %a01[156], %a02[156], %a03[156], %a04[156], %a05[156],
                    %a06[156], %a07[156], %a08[156], %a09[156], %a10[156], %a11[156], %a12[156]] *
            poly z [%b00[156], %b01[156], %b02[156], %b03[156], %b04[156], %b05[156],
                    %b06[156], %b07[156], %b08[156], %b09[156], %b10[156], %b11[156], %b12[156]]) +
           (poly z [%c00[156], %c01[156], %c02[156], %c03[156], %c04[156], %c05[156],
                    %c06[156], %c07[156], %c08[156], %c09[156], %c10[156], %c11[156], %c12[156]]) +
           (poly z [%a00[156], %a01[156], %a02[156], %a03[156], %a04[156], %a05[156],
                    %a06[156], %a07[156], %a08[156], %a09[156], %a10[156], %a11[156], %a12[156]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[157], %s01[157], %s02[157], %s03[157], %s04[157], %s05[157],
                   %s06[157], %s07[157], %s08[157], %s09[157], %s10[157], %s11[157], %s12[157]])
          ((poly z [%a00[157], %a01[157], %a02[157], %a03[157], %a04[157], %a05[157],
                    %a06[157], %a07[157], %a08[157], %a09[157], %a10[157], %a11[157], %a12[157]] *
            poly z [%b00[157], %b01[157], %b02[157], %b03[157], %b04[157], %b05[157],
                    %b06[157], %b07[157], %b08[157], %b09[157], %b10[157], %b11[157], %b12[157]]) +
           (poly z [%c00[157], %c01[157], %c02[157], %c03[157], %c04[157], %c05[157],
                    %c06[157], %c07[157], %c08[157], %c09[157], %c10[157], %c11[157], %c12[157]]) +
           (poly z [%a00[157], %a01[157], %a02[157], %a03[157], %a04[157], %a05[157],
                    %a06[157], %a07[157], %a08[157], %a09[157], %a10[157], %a11[157], %a12[157]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[158], %s01[158], %s02[158], %s03[158], %s04[158], %s05[158],
                   %s06[158], %s07[158], %s08[158], %s09[158], %s10[158], %s11[158], %s12[158]])
          ((poly z [%a00[158], %a01[158], %a02[158], %a03[158], %a04[158], %a05[158],
                    %a06[158], %a07[158], %a08[158], %a09[158], %a10[158], %a11[158], %a12[158]] *
            poly z [%b00[158], %b01[158], %b02[158], %b03[158], %b04[158], %b05[158],
                    %b06[158], %b07[158], %b08[158], %b09[158], %b10[158], %b11[158], %b12[158]]) +
           (poly z [%c00[158], %c01[158], %c02[158], %c03[158], %c04[158], %c05[158],
                    %c06[158], %c07[158], %c08[158], %c09[158], %c10[158], %c11[158], %c12[158]]) +
           (poly z [%a00[158], %a01[158], %a02[158], %a03[158], %a04[158], %a05[158],
                    %a06[158], %a07[158], %a08[158], %a09[158], %a10[158], %a11[158], %a12[158]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[159], %s01[159], %s02[159], %s03[159], %s04[159], %s05[159],
                   %s06[159], %s07[159], %s08[159], %s09[159], %s10[159], %s11[159], %s12[159]])
          ((poly z [%a00[159], %a01[159], %a02[159], %a03[159], %a04[159], %a05[159],
                    %a06[159], %a07[159], %a08[159], %a09[159], %a10[159], %a11[159], %a12[159]] *
            poly z [%b00[159], %b01[159], %b02[159], %b03[159], %b04[159], %b05[159],
                    %b06[159], %b07[159], %b08[159], %b09[159], %b10[159], %b11[159], %b12[159]]) +
           (poly z [%c00[159], %c01[159], %c02[159], %c03[159], %c04[159], %c05[159],
                    %c06[159], %c07[159], %c08[159], %c09[159], %c10[159], %c11[159], %c12[159]]) +
           (poly z [%a00[159], %a01[159], %a02[159], %a03[159], %a04[159], %a05[159],
                    %a06[159], %a07[159], %a08[159], %a09[159], %a10[159], %a11[159], %a12[159]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[160], %s01[160], %s02[160], %s03[160], %s04[160], %s05[160],
                   %s06[160], %s07[160], %s08[160], %s09[160], %s10[160], %s11[160], %s12[160]])
          ((poly z [%a00[160], %a01[160], %a02[160], %a03[160], %a04[160], %a05[160],
                    %a06[160], %a07[160], %a08[160], %a09[160], %a10[160], %a11[160], %a12[160]] *
            poly z [%b00[160], %b01[160], %b02[160], %b03[160], %b04[160], %b05[160],
                    %b06[160], %b07[160], %b08[160], %b09[160], %b10[160], %b11[160], %b12[160]]) +
           (poly z [%c00[160], %c01[160], %c02[160], %c03[160], %c04[160], %c05[160],
                    %c06[160], %c07[160], %c08[160], %c09[160], %c10[160], %c11[160], %c12[160]]) +
           (poly z [%a00[160], %a01[160], %a02[160], %a03[160], %a04[160], %a05[160],
                    %a06[160], %a07[160], %a08[160], %a09[160], %a10[160], %a11[160], %a12[160]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[161], %s01[161], %s02[161], %s03[161], %s04[161], %s05[161],
                   %s06[161], %s07[161], %s08[161], %s09[161], %s10[161], %s11[161], %s12[161]])
          ((poly z [%a00[161], %a01[161], %a02[161], %a03[161], %a04[161], %a05[161],
                    %a06[161], %a07[161], %a08[161], %a09[161], %a10[161], %a11[161], %a12[161]] *
            poly z [%b00[161], %b01[161], %b02[161], %b03[161], %b04[161], %b05[161],
                    %b06[161], %b07[161], %b08[161], %b09[161], %b10[161], %b11[161], %b12[161]]) +
           (poly z [%c00[161], %c01[161], %c02[161], %c03[161], %c04[161], %c05[161],
                    %c06[161], %c07[161], %c08[161], %c09[161], %c10[161], %c11[161], %c12[161]]) +
           (poly z [%a00[161], %a01[161], %a02[161], %a03[161], %a04[161], %a05[161],
                    %a06[161], %a07[161], %a08[161], %a09[161], %a10[161], %a11[161], %a12[161]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[162], %s01[162], %s02[162], %s03[162], %s04[162], %s05[162],
                   %s06[162], %s07[162], %s08[162], %s09[162], %s10[162], %s11[162], %s12[162]])
          ((poly z [%a00[162], %a01[162], %a02[162], %a03[162], %a04[162], %a05[162],
                    %a06[162], %a07[162], %a08[162], %a09[162], %a10[162], %a11[162], %a12[162]] *
            poly z [%b00[162], %b01[162], %b02[162], %b03[162], %b04[162], %b05[162],
                    %b06[162], %b07[162], %b08[162], %b09[162], %b10[162], %b11[162], %b12[162]]) +
           (poly z [%c00[162], %c01[162], %c02[162], %c03[162], %c04[162], %c05[162],
                    %c06[162], %c07[162], %c08[162], %c09[162], %c10[162], %c11[162], %c12[162]]) +
           (poly z [%a00[162], %a01[162], %a02[162], %a03[162], %a04[162], %a05[162],
                    %a06[162], %a07[162], %a08[162], %a09[162], %a10[162], %a11[162], %a12[162]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[163], %s01[163], %s02[163], %s03[163], %s04[163], %s05[163],
                   %s06[163], %s07[163], %s08[163], %s09[163], %s10[163], %s11[163], %s12[163]])
          ((poly z [%a00[163], %a01[163], %a02[163], %a03[163], %a04[163], %a05[163],
                    %a06[163], %a07[163], %a08[163], %a09[163], %a10[163], %a11[163], %a12[163]] *
            poly z [%b00[163], %b01[163], %b02[163], %b03[163], %b04[163], %b05[163],
                    %b06[163], %b07[163], %b08[163], %b09[163], %b10[163], %b11[163], %b12[163]]) +
           (poly z [%c00[163], %c01[163], %c02[163], %c03[163], %c04[163], %c05[163],
                    %c06[163], %c07[163], %c08[163], %c09[163], %c10[163], %c11[163], %c12[163]]) +
           (poly z [%a00[163], %a01[163], %a02[163], %a03[163], %a04[163], %a05[163],
                    %a06[163], %a07[163], %a08[163], %a09[163], %a10[163], %a11[163], %a12[163]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[164], %s01[164], %s02[164], %s03[164], %s04[164], %s05[164],
                   %s06[164], %s07[164], %s08[164], %s09[164], %s10[164], %s11[164], %s12[164]])
          ((poly z [%a00[164], %a01[164], %a02[164], %a03[164], %a04[164], %a05[164],
                    %a06[164], %a07[164], %a08[164], %a09[164], %a10[164], %a11[164], %a12[164]] *
            poly z [%b00[164], %b01[164], %b02[164], %b03[164], %b04[164], %b05[164],
                    %b06[164], %b07[164], %b08[164], %b09[164], %b10[164], %b11[164], %b12[164]]) +
           (poly z [%c00[164], %c01[164], %c02[164], %c03[164], %c04[164], %c05[164],
                    %c06[164], %c07[164], %c08[164], %c09[164], %c10[164], %c11[164], %c12[164]]) +
           (poly z [%a00[164], %a01[164], %a02[164], %a03[164], %a04[164], %a05[164],
                    %a06[164], %a07[164], %a08[164], %a09[164], %a10[164], %a11[164], %a12[164]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[165], %s01[165], %s02[165], %s03[165], %s04[165], %s05[165],
                   %s06[165], %s07[165], %s08[165], %s09[165], %s10[165], %s11[165], %s12[165]])
          ((poly z [%a00[165], %a01[165], %a02[165], %a03[165], %a04[165], %a05[165],
                    %a06[165], %a07[165], %a08[165], %a09[165], %a10[165], %a11[165], %a12[165]] *
            poly z [%b00[165], %b01[165], %b02[165], %b03[165], %b04[165], %b05[165],
                    %b06[165], %b07[165], %b08[165], %b09[165], %b10[165], %b11[165], %b12[165]]) +
           (poly z [%c00[165], %c01[165], %c02[165], %c03[165], %c04[165], %c05[165],
                    %c06[165], %c07[165], %c08[165], %c09[165], %c10[165], %c11[165], %c12[165]]) +
           (poly z [%a00[165], %a01[165], %a02[165], %a03[165], %a04[165], %a05[165],
                    %a06[165], %a07[165], %a08[165], %a09[165], %a10[165], %a11[165], %a12[165]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[166], %s01[166], %s02[166], %s03[166], %s04[166], %s05[166],
                   %s06[166], %s07[166], %s08[166], %s09[166], %s10[166], %s11[166], %s12[166]])
          ((poly z [%a00[166], %a01[166], %a02[166], %a03[166], %a04[166], %a05[166],
                    %a06[166], %a07[166], %a08[166], %a09[166], %a10[166], %a11[166], %a12[166]] *
            poly z [%b00[166], %b01[166], %b02[166], %b03[166], %b04[166], %b05[166],
                    %b06[166], %b07[166], %b08[166], %b09[166], %b10[166], %b11[166], %b12[166]]) +
           (poly z [%c00[166], %c01[166], %c02[166], %c03[166], %c04[166], %c05[166],
                    %c06[166], %c07[166], %c08[166], %c09[166], %c10[166], %c11[166], %c12[166]]) +
           (poly z [%a00[166], %a01[166], %a02[166], %a03[166], %a04[166], %a05[166],
                    %a06[166], %a07[166], %a08[166], %a09[166], %a10[166], %a11[166], %a12[166]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[167], %s01[167], %s02[167], %s03[167], %s04[167], %s05[167],
                   %s06[167], %s07[167], %s08[167], %s09[167], %s10[167], %s11[167], %s12[167]])
          ((poly z [%a00[167], %a01[167], %a02[167], %a03[167], %a04[167], %a05[167],
                    %a06[167], %a07[167], %a08[167], %a09[167], %a10[167], %a11[167], %a12[167]] *
            poly z [%b00[167], %b01[167], %b02[167], %b03[167], %b04[167], %b05[167],
                    %b06[167], %b07[167], %b08[167], %b09[167], %b10[167], %b11[167], %b12[167]]) +
           (poly z [%c00[167], %c01[167], %c02[167], %c03[167], %c04[167], %c05[167],
                    %c06[167], %c07[167], %c08[167], %c09[167], %c10[167], %c11[167], %c12[167]]) +
           (poly z [%a00[167], %a01[167], %a02[167], %a03[167], %a04[167], %a05[167],
                    %a06[167], %a07[167], %a08[167], %a09[167], %a10[167], %a11[167], %a12[167]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[168], %s01[168], %s02[168], %s03[168], %s04[168], %s05[168],
                   %s06[168], %s07[168], %s08[168], %s09[168], %s10[168], %s11[168], %s12[168]])
          ((poly z [%a00[168], %a01[168], %a02[168], %a03[168], %a04[168], %a05[168],
                    %a06[168], %a07[168], %a08[168], %a09[168], %a10[168], %a11[168], %a12[168]] *
            poly z [%b00[168], %b01[168], %b02[168], %b03[168], %b04[168], %b05[168],
                    %b06[168], %b07[168], %b08[168], %b09[168], %b10[168], %b11[168], %b12[168]]) +
           (poly z [%c00[168], %c01[168], %c02[168], %c03[168], %c04[168], %c05[168],
                    %c06[168], %c07[168], %c08[168], %c09[168], %c10[168], %c11[168], %c12[168]]) +
           (poly z [%a00[168], %a01[168], %a02[168], %a03[168], %a04[168], %a05[168],
                    %a06[168], %a07[168], %a08[168], %a09[168], %a10[168], %a11[168], %a12[168]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[169], %s01[169], %s02[169], %s03[169], %s04[169], %s05[169],
                   %s06[169], %s07[169], %s08[169], %s09[169], %s10[169], %s11[169], %s12[169]])
          ((poly z [%a00[169], %a01[169], %a02[169], %a03[169], %a04[169], %a05[169],
                    %a06[169], %a07[169], %a08[169], %a09[169], %a10[169], %a11[169], %a12[169]] *
            poly z [%b00[169], %b01[169], %b02[169], %b03[169], %b04[169], %b05[169],
                    %b06[169], %b07[169], %b08[169], %b09[169], %b10[169], %b11[169], %b12[169]]) +
           (poly z [%c00[169], %c01[169], %c02[169], %c03[169], %c04[169], %c05[169],
                    %c06[169], %c07[169], %c08[169], %c09[169], %c10[169], %c11[169], %c12[169]]) +
           (poly z [%a00[169], %a01[169], %a02[169], %a03[169], %a04[169], %a05[169],
                    %a06[169], %a07[169], %a08[169], %a09[169], %a10[169], %a11[169], %a12[169]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[170], %s01[170], %s02[170], %s03[170], %s04[170], %s05[170],
                   %s06[170], %s07[170], %s08[170], %s09[170], %s10[170], %s11[170], %s12[170]])
          ((poly z [%a00[170], %a01[170], %a02[170], %a03[170], %a04[170], %a05[170],
                    %a06[170], %a07[170], %a08[170], %a09[170], %a10[170], %a11[170], %a12[170]] *
            poly z [%b00[170], %b01[170], %b02[170], %b03[170], %b04[170], %b05[170],
                    %b06[170], %b07[170], %b08[170], %b09[170], %b10[170], %b11[170], %b12[170]]) +
           (poly z [%c00[170], %c01[170], %c02[170], %c03[170], %c04[170], %c05[170],
                    %c06[170], %c07[170], %c08[170], %c09[170], %c10[170], %c11[170], %c12[170]]) +
           (poly z [%a00[170], %a01[170], %a02[170], %a03[170], %a04[170], %a05[170],
                    %a06[170], %a07[170], %a08[170], %a09[170], %a10[170], %a11[170], %a12[170]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[171], %s01[171], %s02[171], %s03[171], %s04[171], %s05[171],
                   %s06[171], %s07[171], %s08[171], %s09[171], %s10[171], %s11[171], %s12[171]])
          ((poly z [%a00[171], %a01[171], %a02[171], %a03[171], %a04[171], %a05[171],
                    %a06[171], %a07[171], %a08[171], %a09[171], %a10[171], %a11[171], %a12[171]] *
            poly z [%b00[171], %b01[171], %b02[171], %b03[171], %b04[171], %b05[171],
                    %b06[171], %b07[171], %b08[171], %b09[171], %b10[171], %b11[171], %b12[171]]) +
           (poly z [%c00[171], %c01[171], %c02[171], %c03[171], %c04[171], %c05[171],
                    %c06[171], %c07[171], %c08[171], %c09[171], %c10[171], %c11[171], %c12[171]]) +
           (poly z [%a00[171], %a01[171], %a02[171], %a03[171], %a04[171], %a05[171],
                    %a06[171], %a07[171], %a08[171], %a09[171], %a10[171], %a11[171], %a12[171]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[172], %s01[172], %s02[172], %s03[172], %s04[172], %s05[172],
                   %s06[172], %s07[172], %s08[172], %s09[172], %s10[172], %s11[172], %s12[172]])
          ((poly z [%a00[172], %a01[172], %a02[172], %a03[172], %a04[172], %a05[172],
                    %a06[172], %a07[172], %a08[172], %a09[172], %a10[172], %a11[172], %a12[172]] *
            poly z [%b00[172], %b01[172], %b02[172], %b03[172], %b04[172], %b05[172],
                    %b06[172], %b07[172], %b08[172], %b09[172], %b10[172], %b11[172], %b12[172]]) +
           (poly z [%c00[172], %c01[172], %c02[172], %c03[172], %c04[172], %c05[172],
                    %c06[172], %c07[172], %c08[172], %c09[172], %c10[172], %c11[172], %c12[172]]) +
           (poly z [%a00[172], %a01[172], %a02[172], %a03[172], %a04[172], %a05[172],
                    %a06[172], %a07[172], %a08[172], %a09[172], %a10[172], %a11[172], %a12[172]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[173], %s01[173], %s02[173], %s03[173], %s04[173], %s05[173],
                   %s06[173], %s07[173], %s08[173], %s09[173], %s10[173], %s11[173], %s12[173]])
          ((poly z [%a00[173], %a01[173], %a02[173], %a03[173], %a04[173], %a05[173],
                    %a06[173], %a07[173], %a08[173], %a09[173], %a10[173], %a11[173], %a12[173]] *
            poly z [%b00[173], %b01[173], %b02[173], %b03[173], %b04[173], %b05[173],
                    %b06[173], %b07[173], %b08[173], %b09[173], %b10[173], %b11[173], %b12[173]]) +
           (poly z [%c00[173], %c01[173], %c02[173], %c03[173], %c04[173], %c05[173],
                    %c06[173], %c07[173], %c08[173], %c09[173], %c10[173], %c11[173], %c12[173]]) +
           (poly z [%a00[173], %a01[173], %a02[173], %a03[173], %a04[173], %a05[173],
                    %a06[173], %a07[173], %a08[173], %a09[173], %a10[173], %a11[173], %a12[173]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[174], %s01[174], %s02[174], %s03[174], %s04[174], %s05[174],
                   %s06[174], %s07[174], %s08[174], %s09[174], %s10[174], %s11[174], %s12[174]])
          ((poly z [%a00[174], %a01[174], %a02[174], %a03[174], %a04[174], %a05[174],
                    %a06[174], %a07[174], %a08[174], %a09[174], %a10[174], %a11[174], %a12[174]] *
            poly z [%b00[174], %b01[174], %b02[174], %b03[174], %b04[174], %b05[174],
                    %b06[174], %b07[174], %b08[174], %b09[174], %b10[174], %b11[174], %b12[174]]) +
           (poly z [%c00[174], %c01[174], %c02[174], %c03[174], %c04[174], %c05[174],
                    %c06[174], %c07[174], %c08[174], %c09[174], %c10[174], %c11[174], %c12[174]]) +
           (poly z [%a00[174], %a01[174], %a02[174], %a03[174], %a04[174], %a05[174],
                    %a06[174], %a07[174], %a08[174], %a09[174], %a10[174], %a11[174], %a12[174]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[175], %s01[175], %s02[175], %s03[175], %s04[175], %s05[175],
                   %s06[175], %s07[175], %s08[175], %s09[175], %s10[175], %s11[175], %s12[175]])
          ((poly z [%a00[175], %a01[175], %a02[175], %a03[175], %a04[175], %a05[175],
                    %a06[175], %a07[175], %a08[175], %a09[175], %a10[175], %a11[175], %a12[175]] *
            poly z [%b00[175], %b01[175], %b02[175], %b03[175], %b04[175], %b05[175],
                    %b06[175], %b07[175], %b08[175], %b09[175], %b10[175], %b11[175], %b12[175]]) +
           (poly z [%c00[175], %c01[175], %c02[175], %c03[175], %c04[175], %c05[175],
                    %c06[175], %c07[175], %c08[175], %c09[175], %c10[175], %c11[175], %c12[175]]) +
           (poly z [%a00[175], %a01[175], %a02[175], %a03[175], %a04[175], %a05[175],
                    %a06[175], %a07[175], %a08[175], %a09[175], %a10[175], %a11[175], %a12[175]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[176], %s01[176], %s02[176], %s03[176], %s04[176], %s05[176],
                   %s06[176], %s07[176], %s08[176], %s09[176], %s10[176], %s11[176], %s12[176]])
          ((poly z [%a00[176], %a01[176], %a02[176], %a03[176], %a04[176], %a05[176],
                    %a06[176], %a07[176], %a08[176], %a09[176], %a10[176], %a11[176], %a12[176]] *
            poly z [%b00[176], %b01[176], %b02[176], %b03[176], %b04[176], %b05[176],
                    %b06[176], %b07[176], %b08[176], %b09[176], %b10[176], %b11[176], %b12[176]]) +
           (poly z [%c00[176], %c01[176], %c02[176], %c03[176], %c04[176], %c05[176],
                    %c06[176], %c07[176], %c08[176], %c09[176], %c10[176], %c11[176], %c12[176]]) +
           (poly z [%a00[176], %a01[176], %a02[176], %a03[176], %a04[176], %a05[176],
                    %a06[176], %a07[176], %a08[176], %a09[176], %a10[176], %a11[176], %a12[176]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[177], %s01[177], %s02[177], %s03[177], %s04[177], %s05[177],
                   %s06[177], %s07[177], %s08[177], %s09[177], %s10[177], %s11[177], %s12[177]])
          ((poly z [%a00[177], %a01[177], %a02[177], %a03[177], %a04[177], %a05[177],
                    %a06[177], %a07[177], %a08[177], %a09[177], %a10[177], %a11[177], %a12[177]] *
            poly z [%b00[177], %b01[177], %b02[177], %b03[177], %b04[177], %b05[177],
                    %b06[177], %b07[177], %b08[177], %b09[177], %b10[177], %b11[177], %b12[177]]) +
           (poly z [%c00[177], %c01[177], %c02[177], %c03[177], %c04[177], %c05[177],
                    %c06[177], %c07[177], %c08[177], %c09[177], %c10[177], %c11[177], %c12[177]]) +
           (poly z [%a00[177], %a01[177], %a02[177], %a03[177], %a04[177], %a05[177],
                    %a06[177], %a07[177], %a08[177], %a09[177], %a10[177], %a11[177], %a12[177]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[178], %s01[178], %s02[178], %s03[178], %s04[178], %s05[178],
                   %s06[178], %s07[178], %s08[178], %s09[178], %s10[178], %s11[178], %s12[178]])
          ((poly z [%a00[178], %a01[178], %a02[178], %a03[178], %a04[178], %a05[178],
                    %a06[178], %a07[178], %a08[178], %a09[178], %a10[178], %a11[178], %a12[178]] *
            poly z [%b00[178], %b01[178], %b02[178], %b03[178], %b04[178], %b05[178],
                    %b06[178], %b07[178], %b08[178], %b09[178], %b10[178], %b11[178], %b12[178]]) +
           (poly z [%c00[178], %c01[178], %c02[178], %c03[178], %c04[178], %c05[178],
                    %c06[178], %c07[178], %c08[178], %c09[178], %c10[178], %c11[178], %c12[178]]) +
           (poly z [%a00[178], %a01[178], %a02[178], %a03[178], %a04[178], %a05[178],
                    %a06[178], %a07[178], %a08[178], %a09[178], %a10[178], %a11[178], %a12[178]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[179], %s01[179], %s02[179], %s03[179], %s04[179], %s05[179],
                   %s06[179], %s07[179], %s08[179], %s09[179], %s10[179], %s11[179], %s12[179]])
          ((poly z [%a00[179], %a01[179], %a02[179], %a03[179], %a04[179], %a05[179],
                    %a06[179], %a07[179], %a08[179], %a09[179], %a10[179], %a11[179], %a12[179]] *
            poly z [%b00[179], %b01[179], %b02[179], %b03[179], %b04[179], %b05[179],
                    %b06[179], %b07[179], %b08[179], %b09[179], %b10[179], %b11[179], %b12[179]]) +
           (poly z [%c00[179], %c01[179], %c02[179], %c03[179], %c04[179], %c05[179],
                    %c06[179], %c07[179], %c08[179], %c09[179], %c10[179], %c11[179], %c12[179]]) +
           (poly z [%a00[179], %a01[179], %a02[179], %a03[179], %a04[179], %a05[179],
                    %a06[179], %a07[179], %a08[179], %a09[179], %a10[179], %a11[179], %a12[179]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[180], %s01[180], %s02[180], %s03[180], %s04[180], %s05[180],
                   %s06[180], %s07[180], %s08[180], %s09[180], %s10[180], %s11[180], %s12[180]])
          ((poly z [%a00[180], %a01[180], %a02[180], %a03[180], %a04[180], %a05[180],
                    %a06[180], %a07[180], %a08[180], %a09[180], %a10[180], %a11[180], %a12[180]] *
            poly z [%b00[180], %b01[180], %b02[180], %b03[180], %b04[180], %b05[180],
                    %b06[180], %b07[180], %b08[180], %b09[180], %b10[180], %b11[180], %b12[180]]) +
           (poly z [%c00[180], %c01[180], %c02[180], %c03[180], %c04[180], %c05[180],
                    %c06[180], %c07[180], %c08[180], %c09[180], %c10[180], %c11[180], %c12[180]]) +
           (poly z [%a00[180], %a01[180], %a02[180], %a03[180], %a04[180], %a05[180],
                    %a06[180], %a07[180], %a08[180], %a09[180], %a10[180], %a11[180], %a12[180]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[181], %s01[181], %s02[181], %s03[181], %s04[181], %s05[181],
                   %s06[181], %s07[181], %s08[181], %s09[181], %s10[181], %s11[181], %s12[181]])
          ((poly z [%a00[181], %a01[181], %a02[181], %a03[181], %a04[181], %a05[181],
                    %a06[181], %a07[181], %a08[181], %a09[181], %a10[181], %a11[181], %a12[181]] *
            poly z [%b00[181], %b01[181], %b02[181], %b03[181], %b04[181], %b05[181],
                    %b06[181], %b07[181], %b08[181], %b09[181], %b10[181], %b11[181], %b12[181]]) +
           (poly z [%c00[181], %c01[181], %c02[181], %c03[181], %c04[181], %c05[181],
                    %c06[181], %c07[181], %c08[181], %c09[181], %c10[181], %c11[181], %c12[181]]) +
           (poly z [%a00[181], %a01[181], %a02[181], %a03[181], %a04[181], %a05[181],
                    %a06[181], %a07[181], %a08[181], %a09[181], %a10[181], %a11[181], %a12[181]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[182], %s01[182], %s02[182], %s03[182], %s04[182], %s05[182],
                   %s06[182], %s07[182], %s08[182], %s09[182], %s10[182], %s11[182], %s12[182]])
          ((poly z [%a00[182], %a01[182], %a02[182], %a03[182], %a04[182], %a05[182],
                    %a06[182], %a07[182], %a08[182], %a09[182], %a10[182], %a11[182], %a12[182]] *
            poly z [%b00[182], %b01[182], %b02[182], %b03[182], %b04[182], %b05[182],
                    %b06[182], %b07[182], %b08[182], %b09[182], %b10[182], %b11[182], %b12[182]]) +
           (poly z [%c00[182], %c01[182], %c02[182], %c03[182], %c04[182], %c05[182],
                    %c06[182], %c07[182], %c08[182], %c09[182], %c10[182], %c11[182], %c12[182]]) +
           (poly z [%a00[182], %a01[182], %a02[182], %a03[182], %a04[182], %a05[182],
                    %a06[182], %a07[182], %a08[182], %a09[182], %a10[182], %a11[182], %a12[182]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[183], %s01[183], %s02[183], %s03[183], %s04[183], %s05[183],
                   %s06[183], %s07[183], %s08[183], %s09[183], %s10[183], %s11[183], %s12[183]])
          ((poly z [%a00[183], %a01[183], %a02[183], %a03[183], %a04[183], %a05[183],
                    %a06[183], %a07[183], %a08[183], %a09[183], %a10[183], %a11[183], %a12[183]] *
            poly z [%b00[183], %b01[183], %b02[183], %b03[183], %b04[183], %b05[183],
                    %b06[183], %b07[183], %b08[183], %b09[183], %b10[183], %b11[183], %b12[183]]) +
           (poly z [%c00[183], %c01[183], %c02[183], %c03[183], %c04[183], %c05[183],
                    %c06[183], %c07[183], %c08[183], %c09[183], %c10[183], %c11[183], %c12[183]]) +
           (poly z [%a00[183], %a01[183], %a02[183], %a03[183], %a04[183], %a05[183],
                    %a06[183], %a07[183], %a08[183], %a09[183], %a10[183], %a11[183], %a12[183]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[184], %s01[184], %s02[184], %s03[184], %s04[184], %s05[184],
                   %s06[184], %s07[184], %s08[184], %s09[184], %s10[184], %s11[184], %s12[184]])
          ((poly z [%a00[184], %a01[184], %a02[184], %a03[184], %a04[184], %a05[184],
                    %a06[184], %a07[184], %a08[184], %a09[184], %a10[184], %a11[184], %a12[184]] *
            poly z [%b00[184], %b01[184], %b02[184], %b03[184], %b04[184], %b05[184],
                    %b06[184], %b07[184], %b08[184], %b09[184], %b10[184], %b11[184], %b12[184]]) +
           (poly z [%c00[184], %c01[184], %c02[184], %c03[184], %c04[184], %c05[184],
                    %c06[184], %c07[184], %c08[184], %c09[184], %c10[184], %c11[184], %c12[184]]) +
           (poly z [%a00[184], %a01[184], %a02[184], %a03[184], %a04[184], %a05[184],
                    %a06[184], %a07[184], %a08[184], %a09[184], %a10[184], %a11[184], %a12[184]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[185], %s01[185], %s02[185], %s03[185], %s04[185], %s05[185],
                   %s06[185], %s07[185], %s08[185], %s09[185], %s10[185], %s11[185], %s12[185]])
          ((poly z [%a00[185], %a01[185], %a02[185], %a03[185], %a04[185], %a05[185],
                    %a06[185], %a07[185], %a08[185], %a09[185], %a10[185], %a11[185], %a12[185]] *
            poly z [%b00[185], %b01[185], %b02[185], %b03[185], %b04[185], %b05[185],
                    %b06[185], %b07[185], %b08[185], %b09[185], %b10[185], %b11[185], %b12[185]]) +
           (poly z [%c00[185], %c01[185], %c02[185], %c03[185], %c04[185], %c05[185],
                    %c06[185], %c07[185], %c08[185], %c09[185], %c10[185], %c11[185], %c12[185]]) +
           (poly z [%a00[185], %a01[185], %a02[185], %a03[185], %a04[185], %a05[185],
                    %a06[185], %a07[185], %a08[185], %a09[185], %a10[185], %a11[185], %a12[185]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[186], %s01[186], %s02[186], %s03[186], %s04[186], %s05[186],
                   %s06[186], %s07[186], %s08[186], %s09[186], %s10[186], %s11[186], %s12[186]])
          ((poly z [%a00[186], %a01[186], %a02[186], %a03[186], %a04[186], %a05[186],
                    %a06[186], %a07[186], %a08[186], %a09[186], %a10[186], %a11[186], %a12[186]] *
            poly z [%b00[186], %b01[186], %b02[186], %b03[186], %b04[186], %b05[186],
                    %b06[186], %b07[186], %b08[186], %b09[186], %b10[186], %b11[186], %b12[186]]) +
           (poly z [%c00[186], %c01[186], %c02[186], %c03[186], %c04[186], %c05[186],
                    %c06[186], %c07[186], %c08[186], %c09[186], %c10[186], %c11[186], %c12[186]]) +
           (poly z [%a00[186], %a01[186], %a02[186], %a03[186], %a04[186], %a05[186],
                    %a06[186], %a07[186], %a08[186], %a09[186], %a10[186], %a11[186], %a12[186]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[187], %s01[187], %s02[187], %s03[187], %s04[187], %s05[187],
                   %s06[187], %s07[187], %s08[187], %s09[187], %s10[187], %s11[187], %s12[187]])
          ((poly z [%a00[187], %a01[187], %a02[187], %a03[187], %a04[187], %a05[187],
                    %a06[187], %a07[187], %a08[187], %a09[187], %a10[187], %a11[187], %a12[187]] *
            poly z [%b00[187], %b01[187], %b02[187], %b03[187], %b04[187], %b05[187],
                    %b06[187], %b07[187], %b08[187], %b09[187], %b10[187], %b11[187], %b12[187]]) +
           (poly z [%c00[187], %c01[187], %c02[187], %c03[187], %c04[187], %c05[187],
                    %c06[187], %c07[187], %c08[187], %c09[187], %c10[187], %c11[187], %c12[187]]) +
           (poly z [%a00[187], %a01[187], %a02[187], %a03[187], %a04[187], %a05[187],
                    %a06[187], %a07[187], %a08[187], %a09[187], %a10[187], %a11[187], %a12[187]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[188], %s01[188], %s02[188], %s03[188], %s04[188], %s05[188],
                   %s06[188], %s07[188], %s08[188], %s09[188], %s10[188], %s11[188], %s12[188]])
          ((poly z [%a00[188], %a01[188], %a02[188], %a03[188], %a04[188], %a05[188],
                    %a06[188], %a07[188], %a08[188], %a09[188], %a10[188], %a11[188], %a12[188]] *
            poly z [%b00[188], %b01[188], %b02[188], %b03[188], %b04[188], %b05[188],
                    %b06[188], %b07[188], %b08[188], %b09[188], %b10[188], %b11[188], %b12[188]]) +
           (poly z [%c00[188], %c01[188], %c02[188], %c03[188], %c04[188], %c05[188],
                    %c06[188], %c07[188], %c08[188], %c09[188], %c10[188], %c11[188], %c12[188]]) +
           (poly z [%a00[188], %a01[188], %a02[188], %a03[188], %a04[188], %a05[188],
                    %a06[188], %a07[188], %a08[188], %a09[188], %a10[188], %a11[188], %a12[188]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[189], %s01[189], %s02[189], %s03[189], %s04[189], %s05[189],
                   %s06[189], %s07[189], %s08[189], %s09[189], %s10[189], %s11[189], %s12[189]])
          ((poly z [%a00[189], %a01[189], %a02[189], %a03[189], %a04[189], %a05[189],
                    %a06[189], %a07[189], %a08[189], %a09[189], %a10[189], %a11[189], %a12[189]] *
            poly z [%b00[189], %b01[189], %b02[189], %b03[189], %b04[189], %b05[189],
                    %b06[189], %b07[189], %b08[189], %b09[189], %b10[189], %b11[189], %b12[189]]) +
           (poly z [%c00[189], %c01[189], %c02[189], %c03[189], %c04[189], %c05[189],
                    %c06[189], %c07[189], %c08[189], %c09[189], %c10[189], %c11[189], %c12[189]]) +
           (poly z [%a00[189], %a01[189], %a02[189], %a03[189], %a04[189], %a05[189],
                    %a06[189], %a07[189], %a08[189], %a09[189], %a10[189], %a11[189], %a12[189]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[190], %s01[190], %s02[190], %s03[190], %s04[190], %s05[190],
                   %s06[190], %s07[190], %s08[190], %s09[190], %s10[190], %s11[190], %s12[190]])
          ((poly z [%a00[190], %a01[190], %a02[190], %a03[190], %a04[190], %a05[190],
                    %a06[190], %a07[190], %a08[190], %a09[190], %a10[190], %a11[190], %a12[190]] *
            poly z [%b00[190], %b01[190], %b02[190], %b03[190], %b04[190], %b05[190],
                    %b06[190], %b07[190], %b08[190], %b09[190], %b10[190], %b11[190], %b12[190]]) +
           (poly z [%c00[190], %c01[190], %c02[190], %c03[190], %c04[190], %c05[190],
                    %c06[190], %c07[190], %c08[190], %c09[190], %c10[190], %c11[190], %c12[190]]) +
           (poly z [%a00[190], %a01[190], %a02[190], %a03[190], %a04[190], %a05[190],
                    %a06[190], %a07[190], %a08[190], %a09[190], %a10[190], %a11[190], %a12[190]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[191], %s01[191], %s02[191], %s03[191], %s04[191], %s05[191],
                   %s06[191], %s07[191], %s08[191], %s09[191], %s10[191], %s11[191], %s12[191]])
          ((poly z [%a00[191], %a01[191], %a02[191], %a03[191], %a04[191], %a05[191],
                    %a06[191], %a07[191], %a08[191], %a09[191], %a10[191], %a11[191], %a12[191]] *
            poly z [%b00[191], %b01[191], %b02[191], %b03[191], %b04[191], %b05[191],
                    %b06[191], %b07[191], %b08[191], %b09[191], %b10[191], %b11[191], %b12[191]]) +
           (poly z [%c00[191], %c01[191], %c02[191], %c03[191], %c04[191], %c05[191],
                    %c06[191], %c07[191], %c08[191], %c09[191], %c10[191], %c11[191], %c12[191]]) +
           (poly z [%a00[191], %a01[191], %a02[191], %a03[191], %a04[191], %a05[191],
                    %a06[191], %a07[191], %a08[191], %a09[191], %a10[191], %a11[191], %a12[191]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[192], %s01[192], %s02[192], %s03[192], %s04[192], %s05[192],
                   %s06[192], %s07[192], %s08[192], %s09[192], %s10[192], %s11[192], %s12[192]])
          ((poly z [%a00[192], %a01[192], %a02[192], %a03[192], %a04[192], %a05[192],
                    %a06[192], %a07[192], %a08[192], %a09[192], %a10[192], %a11[192], %a12[192]] *
            poly z [%b00[192], %b01[192], %b02[192], %b03[192], %b04[192], %b05[192],
                    %b06[192], %b07[192], %b08[192], %b09[192], %b10[192], %b11[192], %b12[192]]) +
           (poly z [%c00[192], %c01[192], %c02[192], %c03[192], %c04[192], %c05[192],
                    %c06[192], %c07[192], %c08[192], %c09[192], %c10[192], %c11[192], %c12[192]]) +
           (poly z [%a00[192], %a01[192], %a02[192], %a03[192], %a04[192], %a05[192],
                    %a06[192], %a07[192], %a08[192], %a09[192], %a10[192], %a11[192], %a12[192]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[193], %s01[193], %s02[193], %s03[193], %s04[193], %s05[193],
                   %s06[193], %s07[193], %s08[193], %s09[193], %s10[193], %s11[193], %s12[193]])
          ((poly z [%a00[193], %a01[193], %a02[193], %a03[193], %a04[193], %a05[193],
                    %a06[193], %a07[193], %a08[193], %a09[193], %a10[193], %a11[193], %a12[193]] *
            poly z [%b00[193], %b01[193], %b02[193], %b03[193], %b04[193], %b05[193],
                    %b06[193], %b07[193], %b08[193], %b09[193], %b10[193], %b11[193], %b12[193]]) +
           (poly z [%c00[193], %c01[193], %c02[193], %c03[193], %c04[193], %c05[193],
                    %c06[193], %c07[193], %c08[193], %c09[193], %c10[193], %c11[193], %c12[193]]) +
           (poly z [%a00[193], %a01[193], %a02[193], %a03[193], %a04[193], %a05[193],
                    %a06[193], %a07[193], %a08[193], %a09[193], %a10[193], %a11[193], %a12[193]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[194], %s01[194], %s02[194], %s03[194], %s04[194], %s05[194],
                   %s06[194], %s07[194], %s08[194], %s09[194], %s10[194], %s11[194], %s12[194]])
          ((poly z [%a00[194], %a01[194], %a02[194], %a03[194], %a04[194], %a05[194],
                    %a06[194], %a07[194], %a08[194], %a09[194], %a10[194], %a11[194], %a12[194]] *
            poly z [%b00[194], %b01[194], %b02[194], %b03[194], %b04[194], %b05[194],
                    %b06[194], %b07[194], %b08[194], %b09[194], %b10[194], %b11[194], %b12[194]]) +
           (poly z [%c00[194], %c01[194], %c02[194], %c03[194], %c04[194], %c05[194],
                    %c06[194], %c07[194], %c08[194], %c09[194], %c10[194], %c11[194], %c12[194]]) +
           (poly z [%a00[194], %a01[194], %a02[194], %a03[194], %a04[194], %a05[194],
                    %a06[194], %a07[194], %a08[194], %a09[194], %a10[194], %a11[194], %a12[194]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[195], %s01[195], %s02[195], %s03[195], %s04[195], %s05[195],
                   %s06[195], %s07[195], %s08[195], %s09[195], %s10[195], %s11[195], %s12[195]])
          ((poly z [%a00[195], %a01[195], %a02[195], %a03[195], %a04[195], %a05[195],
                    %a06[195], %a07[195], %a08[195], %a09[195], %a10[195], %a11[195], %a12[195]] *
            poly z [%b00[195], %b01[195], %b02[195], %b03[195], %b04[195], %b05[195],
                    %b06[195], %b07[195], %b08[195], %b09[195], %b10[195], %b11[195], %b12[195]]) +
           (poly z [%c00[195], %c01[195], %c02[195], %c03[195], %c04[195], %c05[195],
                    %c06[195], %c07[195], %c08[195], %c09[195], %c10[195], %c11[195], %c12[195]]) +
           (poly z [%a00[195], %a01[195], %a02[195], %a03[195], %a04[195], %a05[195],
                    %a06[195], %a07[195], %a08[195], %a09[195], %a10[195], %a11[195], %a12[195]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[196], %s01[196], %s02[196], %s03[196], %s04[196], %s05[196],
                   %s06[196], %s07[196], %s08[196], %s09[196], %s10[196], %s11[196], %s12[196]])
          ((poly z [%a00[196], %a01[196], %a02[196], %a03[196], %a04[196], %a05[196],
                    %a06[196], %a07[196], %a08[196], %a09[196], %a10[196], %a11[196], %a12[196]] *
            poly z [%b00[196], %b01[196], %b02[196], %b03[196], %b04[196], %b05[196],
                    %b06[196], %b07[196], %b08[196], %b09[196], %b10[196], %b11[196], %b12[196]]) +
           (poly z [%c00[196], %c01[196], %c02[196], %c03[196], %c04[196], %c05[196],
                    %c06[196], %c07[196], %c08[196], %c09[196], %c10[196], %c11[196], %c12[196]]) +
           (poly z [%a00[196], %a01[196], %a02[196], %a03[196], %a04[196], %a05[196],
                    %a06[196], %a07[196], %a08[196], %a09[196], %a10[196], %a11[196], %a12[196]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[197], %s01[197], %s02[197], %s03[197], %s04[197], %s05[197],
                   %s06[197], %s07[197], %s08[197], %s09[197], %s10[197], %s11[197], %s12[197]])
          ((poly z [%a00[197], %a01[197], %a02[197], %a03[197], %a04[197], %a05[197],
                    %a06[197], %a07[197], %a08[197], %a09[197], %a10[197], %a11[197], %a12[197]] *
            poly z [%b00[197], %b01[197], %b02[197], %b03[197], %b04[197], %b05[197],
                    %b06[197], %b07[197], %b08[197], %b09[197], %b10[197], %b11[197], %b12[197]]) +
           (poly z [%c00[197], %c01[197], %c02[197], %c03[197], %c04[197], %c05[197],
                    %c06[197], %c07[197], %c08[197], %c09[197], %c10[197], %c11[197], %c12[197]]) +
           (poly z [%a00[197], %a01[197], %a02[197], %a03[197], %a04[197], %a05[197],
                    %a06[197], %a07[197], %a08[197], %a09[197], %a10[197], %a11[197], %a12[197]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[198], %s01[198], %s02[198], %s03[198], %s04[198], %s05[198],
                   %s06[198], %s07[198], %s08[198], %s09[198], %s10[198], %s11[198], %s12[198]])
          ((poly z [%a00[198], %a01[198], %a02[198], %a03[198], %a04[198], %a05[198],
                    %a06[198], %a07[198], %a08[198], %a09[198], %a10[198], %a11[198], %a12[198]] *
            poly z [%b00[198], %b01[198], %b02[198], %b03[198], %b04[198], %b05[198],
                    %b06[198], %b07[198], %b08[198], %b09[198], %b10[198], %b11[198], %b12[198]]) +
           (poly z [%c00[198], %c01[198], %c02[198], %c03[198], %c04[198], %c05[198],
                    %c06[198], %c07[198], %c08[198], %c09[198], %c10[198], %c11[198], %c12[198]]) +
           (poly z [%a00[198], %a01[198], %a02[198], %a03[198], %a04[198], %a05[198],
                    %a06[198], %a07[198], %a08[198], %a09[198], %a10[198], %a11[198], %a12[198]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[199], %s01[199], %s02[199], %s03[199], %s04[199], %s05[199],
                   %s06[199], %s07[199], %s08[199], %s09[199], %s10[199], %s11[199], %s12[199]])
          ((poly z [%a00[199], %a01[199], %a02[199], %a03[199], %a04[199], %a05[199],
                    %a06[199], %a07[199], %a08[199], %a09[199], %a10[199], %a11[199], %a12[199]] *
            poly z [%b00[199], %b01[199], %b02[199], %b03[199], %b04[199], %b05[199],
                    %b06[199], %b07[199], %b08[199], %b09[199], %b10[199], %b11[199], %b12[199]]) +
           (poly z [%c00[199], %c01[199], %c02[199], %c03[199], %c04[199], %c05[199],
                    %c06[199], %c07[199], %c08[199], %c09[199], %c10[199], %c11[199], %c12[199]]) +
           (poly z [%a00[199], %a01[199], %a02[199], %a03[199], %a04[199], %a05[199],
                    %a06[199], %a07[199], %a08[199], %a09[199], %a10[199], %a11[199], %a12[199]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[200], %s01[200], %s02[200], %s03[200], %s04[200], %s05[200],
                   %s06[200], %s07[200], %s08[200], %s09[200], %s10[200], %s11[200], %s12[200]])
          ((poly z [%a00[200], %a01[200], %a02[200], %a03[200], %a04[200], %a05[200],
                    %a06[200], %a07[200], %a08[200], %a09[200], %a10[200], %a11[200], %a12[200]] *
            poly z [%b00[200], %b01[200], %b02[200], %b03[200], %b04[200], %b05[200],
                    %b06[200], %b07[200], %b08[200], %b09[200], %b10[200], %b11[200], %b12[200]]) +
           (poly z [%c00[200], %c01[200], %c02[200], %c03[200], %c04[200], %c05[200],
                    %c06[200], %c07[200], %c08[200], %c09[200], %c10[200], %c11[200], %c12[200]]) +
           (poly z [%a00[200], %a01[200], %a02[200], %a03[200], %a04[200], %a05[200],
                    %a06[200], %a07[200], %a08[200], %a09[200], %a10[200], %a11[200], %a12[200]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[201], %s01[201], %s02[201], %s03[201], %s04[201], %s05[201],
                   %s06[201], %s07[201], %s08[201], %s09[201], %s10[201], %s11[201], %s12[201]])
          ((poly z [%a00[201], %a01[201], %a02[201], %a03[201], %a04[201], %a05[201],
                    %a06[201], %a07[201], %a08[201], %a09[201], %a10[201], %a11[201], %a12[201]] *
            poly z [%b00[201], %b01[201], %b02[201], %b03[201], %b04[201], %b05[201],
                    %b06[201], %b07[201], %b08[201], %b09[201], %b10[201], %b11[201], %b12[201]]) +
           (poly z [%c00[201], %c01[201], %c02[201], %c03[201], %c04[201], %c05[201],
                    %c06[201], %c07[201], %c08[201], %c09[201], %c10[201], %c11[201], %c12[201]]) +
           (poly z [%a00[201], %a01[201], %a02[201], %a03[201], %a04[201], %a05[201],
                    %a06[201], %a07[201], %a08[201], %a09[201], %a10[201], %a11[201], %a12[201]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[202], %s01[202], %s02[202], %s03[202], %s04[202], %s05[202],
                   %s06[202], %s07[202], %s08[202], %s09[202], %s10[202], %s11[202], %s12[202]])
          ((poly z [%a00[202], %a01[202], %a02[202], %a03[202], %a04[202], %a05[202],
                    %a06[202], %a07[202], %a08[202], %a09[202], %a10[202], %a11[202], %a12[202]] *
            poly z [%b00[202], %b01[202], %b02[202], %b03[202], %b04[202], %b05[202],
                    %b06[202], %b07[202], %b08[202], %b09[202], %b10[202], %b11[202], %b12[202]]) +
           (poly z [%c00[202], %c01[202], %c02[202], %c03[202], %c04[202], %c05[202],
                    %c06[202], %c07[202], %c08[202], %c09[202], %c10[202], %c11[202], %c12[202]]) +
           (poly z [%a00[202], %a01[202], %a02[202], %a03[202], %a04[202], %a05[202],
                    %a06[202], %a07[202], %a08[202], %a09[202], %a10[202], %a11[202], %a12[202]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[203], %s01[203], %s02[203], %s03[203], %s04[203], %s05[203],
                   %s06[203], %s07[203], %s08[203], %s09[203], %s10[203], %s11[203], %s12[203]])
          ((poly z [%a00[203], %a01[203], %a02[203], %a03[203], %a04[203], %a05[203],
                    %a06[203], %a07[203], %a08[203], %a09[203], %a10[203], %a11[203], %a12[203]] *
            poly z [%b00[203], %b01[203], %b02[203], %b03[203], %b04[203], %b05[203],
                    %b06[203], %b07[203], %b08[203], %b09[203], %b10[203], %b11[203], %b12[203]]) +
           (poly z [%c00[203], %c01[203], %c02[203], %c03[203], %c04[203], %c05[203],
                    %c06[203], %c07[203], %c08[203], %c09[203], %c10[203], %c11[203], %c12[203]]) +
           (poly z [%a00[203], %a01[203], %a02[203], %a03[203], %a04[203], %a05[203],
                    %a06[203], %a07[203], %a08[203], %a09[203], %a10[203], %a11[203], %a12[203]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[204], %s01[204], %s02[204], %s03[204], %s04[204], %s05[204],
                   %s06[204], %s07[204], %s08[204], %s09[204], %s10[204], %s11[204], %s12[204]])
          ((poly z [%a00[204], %a01[204], %a02[204], %a03[204], %a04[204], %a05[204],
                    %a06[204], %a07[204], %a08[204], %a09[204], %a10[204], %a11[204], %a12[204]] *
            poly z [%b00[204], %b01[204], %b02[204], %b03[204], %b04[204], %b05[204],
                    %b06[204], %b07[204], %b08[204], %b09[204], %b10[204], %b11[204], %b12[204]]) +
           (poly z [%c00[204], %c01[204], %c02[204], %c03[204], %c04[204], %c05[204],
                    %c06[204], %c07[204], %c08[204], %c09[204], %c10[204], %c11[204], %c12[204]]) +
           (poly z [%a00[204], %a01[204], %a02[204], %a03[204], %a04[204], %a05[204],
                    %a06[204], %a07[204], %a08[204], %a09[204], %a10[204], %a11[204], %a12[204]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[205], %s01[205], %s02[205], %s03[205], %s04[205], %s05[205],
                   %s06[205], %s07[205], %s08[205], %s09[205], %s10[205], %s11[205], %s12[205]])
          ((poly z [%a00[205], %a01[205], %a02[205], %a03[205], %a04[205], %a05[205],
                    %a06[205], %a07[205], %a08[205], %a09[205], %a10[205], %a11[205], %a12[205]] *
            poly z [%b00[205], %b01[205], %b02[205], %b03[205], %b04[205], %b05[205],
                    %b06[205], %b07[205], %b08[205], %b09[205], %b10[205], %b11[205], %b12[205]]) +
           (poly z [%c00[205], %c01[205], %c02[205], %c03[205], %c04[205], %c05[205],
                    %c06[205], %c07[205], %c08[205], %c09[205], %c10[205], %c11[205], %c12[205]]) +
           (poly z [%a00[205], %a01[205], %a02[205], %a03[205], %a04[205], %a05[205],
                    %a06[205], %a07[205], %a08[205], %a09[205], %a10[205], %a11[205], %a12[205]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[206], %s01[206], %s02[206], %s03[206], %s04[206], %s05[206],
                   %s06[206], %s07[206], %s08[206], %s09[206], %s10[206], %s11[206], %s12[206]])
          ((poly z [%a00[206], %a01[206], %a02[206], %a03[206], %a04[206], %a05[206],
                    %a06[206], %a07[206], %a08[206], %a09[206], %a10[206], %a11[206], %a12[206]] *
            poly z [%b00[206], %b01[206], %b02[206], %b03[206], %b04[206], %b05[206],
                    %b06[206], %b07[206], %b08[206], %b09[206], %b10[206], %b11[206], %b12[206]]) +
           (poly z [%c00[206], %c01[206], %c02[206], %c03[206], %c04[206], %c05[206],
                    %c06[206], %c07[206], %c08[206], %c09[206], %c10[206], %c11[206], %c12[206]]) +
           (poly z [%a00[206], %a01[206], %a02[206], %a03[206], %a04[206], %a05[206],
                    %a06[206], %a07[206], %a08[206], %a09[206], %a10[206], %a11[206], %a12[206]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[207], %s01[207], %s02[207], %s03[207], %s04[207], %s05[207],
                   %s06[207], %s07[207], %s08[207], %s09[207], %s10[207], %s11[207], %s12[207]])
          ((poly z [%a00[207], %a01[207], %a02[207], %a03[207], %a04[207], %a05[207],
                    %a06[207], %a07[207], %a08[207], %a09[207], %a10[207], %a11[207], %a12[207]] *
            poly z [%b00[207], %b01[207], %b02[207], %b03[207], %b04[207], %b05[207],
                    %b06[207], %b07[207], %b08[207], %b09[207], %b10[207], %b11[207], %b12[207]]) +
           (poly z [%c00[207], %c01[207], %c02[207], %c03[207], %c04[207], %c05[207],
                    %c06[207], %c07[207], %c08[207], %c09[207], %c10[207], %c11[207], %c12[207]]) +
           (poly z [%a00[207], %a01[207], %a02[207], %a03[207], %a04[207], %a05[207],
                    %a06[207], %a07[207], %a08[207], %a09[207], %a10[207], %a11[207], %a12[207]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[208], %s01[208], %s02[208], %s03[208], %s04[208], %s05[208],
                   %s06[208], %s07[208], %s08[208], %s09[208], %s10[208], %s11[208], %s12[208]])
          ((poly z [%a00[208], %a01[208], %a02[208], %a03[208], %a04[208], %a05[208],
                    %a06[208], %a07[208], %a08[208], %a09[208], %a10[208], %a11[208], %a12[208]] *
            poly z [%b00[208], %b01[208], %b02[208], %b03[208], %b04[208], %b05[208],
                    %b06[208], %b07[208], %b08[208], %b09[208], %b10[208], %b11[208], %b12[208]]) +
           (poly z [%c00[208], %c01[208], %c02[208], %c03[208], %c04[208], %c05[208],
                    %c06[208], %c07[208], %c08[208], %c09[208], %c10[208], %c11[208], %c12[208]]) +
           (poly z [%a00[208], %a01[208], %a02[208], %a03[208], %a04[208], %a05[208],
                    %a06[208], %a07[208], %a08[208], %a09[208], %a10[208], %a11[208], %a12[208]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[209], %s01[209], %s02[209], %s03[209], %s04[209], %s05[209],
                   %s06[209], %s07[209], %s08[209], %s09[209], %s10[209], %s11[209], %s12[209]])
          ((poly z [%a00[209], %a01[209], %a02[209], %a03[209], %a04[209], %a05[209],
                    %a06[209], %a07[209], %a08[209], %a09[209], %a10[209], %a11[209], %a12[209]] *
            poly z [%b00[209], %b01[209], %b02[209], %b03[209], %b04[209], %b05[209],
                    %b06[209], %b07[209], %b08[209], %b09[209], %b10[209], %b11[209], %b12[209]]) +
           (poly z [%c00[209], %c01[209], %c02[209], %c03[209], %c04[209], %c05[209],
                    %c06[209], %c07[209], %c08[209], %c09[209], %c10[209], %c11[209], %c12[209]]) +
           (poly z [%a00[209], %a01[209], %a02[209], %a03[209], %a04[209], %a05[209],
                    %a06[209], %a07[209], %a08[209], %a09[209], %a10[209], %a11[209], %a12[209]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[210], %s01[210], %s02[210], %s03[210], %s04[210], %s05[210],
                   %s06[210], %s07[210], %s08[210], %s09[210], %s10[210], %s11[210], %s12[210]])
          ((poly z [%a00[210], %a01[210], %a02[210], %a03[210], %a04[210], %a05[210],
                    %a06[210], %a07[210], %a08[210], %a09[210], %a10[210], %a11[210], %a12[210]] *
            poly z [%b00[210], %b01[210], %b02[210], %b03[210], %b04[210], %b05[210],
                    %b06[210], %b07[210], %b08[210], %b09[210], %b10[210], %b11[210], %b12[210]]) +
           (poly z [%c00[210], %c01[210], %c02[210], %c03[210], %c04[210], %c05[210],
                    %c06[210], %c07[210], %c08[210], %c09[210], %c10[210], %c11[210], %c12[210]]) +
           (poly z [%a00[210], %a01[210], %a02[210], %a03[210], %a04[210], %a05[210],
                    %a06[210], %a07[210], %a08[210], %a09[210], %a10[210], %a11[210], %a12[210]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[211], %s01[211], %s02[211], %s03[211], %s04[211], %s05[211],
                   %s06[211], %s07[211], %s08[211], %s09[211], %s10[211], %s11[211], %s12[211]])
          ((poly z [%a00[211], %a01[211], %a02[211], %a03[211], %a04[211], %a05[211],
                    %a06[211], %a07[211], %a08[211], %a09[211], %a10[211], %a11[211], %a12[211]] *
            poly z [%b00[211], %b01[211], %b02[211], %b03[211], %b04[211], %b05[211],
                    %b06[211], %b07[211], %b08[211], %b09[211], %b10[211], %b11[211], %b12[211]]) +
           (poly z [%c00[211], %c01[211], %c02[211], %c03[211], %c04[211], %c05[211],
                    %c06[211], %c07[211], %c08[211], %c09[211], %c10[211], %c11[211], %c12[211]]) +
           (poly z [%a00[211], %a01[211], %a02[211], %a03[211], %a04[211], %a05[211],
                    %a06[211], %a07[211], %a08[211], %a09[211], %a10[211], %a11[211], %a12[211]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[212], %s01[212], %s02[212], %s03[212], %s04[212], %s05[212],
                   %s06[212], %s07[212], %s08[212], %s09[212], %s10[212], %s11[212], %s12[212]])
          ((poly z [%a00[212], %a01[212], %a02[212], %a03[212], %a04[212], %a05[212],
                    %a06[212], %a07[212], %a08[212], %a09[212], %a10[212], %a11[212], %a12[212]] *
            poly z [%b00[212], %b01[212], %b02[212], %b03[212], %b04[212], %b05[212],
                    %b06[212], %b07[212], %b08[212], %b09[212], %b10[212], %b11[212], %b12[212]]) +
           (poly z [%c00[212], %c01[212], %c02[212], %c03[212], %c04[212], %c05[212],
                    %c06[212], %c07[212], %c08[212], %c09[212], %c10[212], %c11[212], %c12[212]]) +
           (poly z [%a00[212], %a01[212], %a02[212], %a03[212], %a04[212], %a05[212],
                    %a06[212], %a07[212], %a08[212], %a09[212], %a10[212], %a11[212], %a12[212]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[213], %s01[213], %s02[213], %s03[213], %s04[213], %s05[213],
                   %s06[213], %s07[213], %s08[213], %s09[213], %s10[213], %s11[213], %s12[213]])
          ((poly z [%a00[213], %a01[213], %a02[213], %a03[213], %a04[213], %a05[213],
                    %a06[213], %a07[213], %a08[213], %a09[213], %a10[213], %a11[213], %a12[213]] *
            poly z [%b00[213], %b01[213], %b02[213], %b03[213], %b04[213], %b05[213],
                    %b06[213], %b07[213], %b08[213], %b09[213], %b10[213], %b11[213], %b12[213]]) +
           (poly z [%c00[213], %c01[213], %c02[213], %c03[213], %c04[213], %c05[213],
                    %c06[213], %c07[213], %c08[213], %c09[213], %c10[213], %c11[213], %c12[213]]) +
           (poly z [%a00[213], %a01[213], %a02[213], %a03[213], %a04[213], %a05[213],
                    %a06[213], %a07[213], %a08[213], %a09[213], %a10[213], %a11[213], %a12[213]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[214], %s01[214], %s02[214], %s03[214], %s04[214], %s05[214],
                   %s06[214], %s07[214], %s08[214], %s09[214], %s10[214], %s11[214], %s12[214]])
          ((poly z [%a00[214], %a01[214], %a02[214], %a03[214], %a04[214], %a05[214],
                    %a06[214], %a07[214], %a08[214], %a09[214], %a10[214], %a11[214], %a12[214]] *
            poly z [%b00[214], %b01[214], %b02[214], %b03[214], %b04[214], %b05[214],
                    %b06[214], %b07[214], %b08[214], %b09[214], %b10[214], %b11[214], %b12[214]]) +
           (poly z [%c00[214], %c01[214], %c02[214], %c03[214], %c04[214], %c05[214],
                    %c06[214], %c07[214], %c08[214], %c09[214], %c10[214], %c11[214], %c12[214]]) +
           (poly z [%a00[214], %a01[214], %a02[214], %a03[214], %a04[214], %a05[214],
                    %a06[214], %a07[214], %a08[214], %a09[214], %a10[214], %a11[214], %a12[214]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[215], %s01[215], %s02[215], %s03[215], %s04[215], %s05[215],
                   %s06[215], %s07[215], %s08[215], %s09[215], %s10[215], %s11[215], %s12[215]])
          ((poly z [%a00[215], %a01[215], %a02[215], %a03[215], %a04[215], %a05[215],
                    %a06[215], %a07[215], %a08[215], %a09[215], %a10[215], %a11[215], %a12[215]] *
            poly z [%b00[215], %b01[215], %b02[215], %b03[215], %b04[215], %b05[215],
                    %b06[215], %b07[215], %b08[215], %b09[215], %b10[215], %b11[215], %b12[215]]) +
           (poly z [%c00[215], %c01[215], %c02[215], %c03[215], %c04[215], %c05[215],
                    %c06[215], %c07[215], %c08[215], %c09[215], %c10[215], %c11[215], %c12[215]]) +
           (poly z [%a00[215], %a01[215], %a02[215], %a03[215], %a04[215], %a05[215],
                    %a06[215], %a07[215], %a08[215], %a09[215], %a10[215], %a11[215], %a12[215]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[216], %s01[216], %s02[216], %s03[216], %s04[216], %s05[216],
                   %s06[216], %s07[216], %s08[216], %s09[216], %s10[216], %s11[216], %s12[216]])
          ((poly z [%a00[216], %a01[216], %a02[216], %a03[216], %a04[216], %a05[216],
                    %a06[216], %a07[216], %a08[216], %a09[216], %a10[216], %a11[216], %a12[216]] *
            poly z [%b00[216], %b01[216], %b02[216], %b03[216], %b04[216], %b05[216],
                    %b06[216], %b07[216], %b08[216], %b09[216], %b10[216], %b11[216], %b12[216]]) +
           (poly z [%c00[216], %c01[216], %c02[216], %c03[216], %c04[216], %c05[216],
                    %c06[216], %c07[216], %c08[216], %c09[216], %c10[216], %c11[216], %c12[216]]) +
           (poly z [%a00[216], %a01[216], %a02[216], %a03[216], %a04[216], %a05[216],
                    %a06[216], %a07[216], %a08[216], %a09[216], %a10[216], %a11[216], %a12[216]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[217], %s01[217], %s02[217], %s03[217], %s04[217], %s05[217],
                   %s06[217], %s07[217], %s08[217], %s09[217], %s10[217], %s11[217], %s12[217]])
          ((poly z [%a00[217], %a01[217], %a02[217], %a03[217], %a04[217], %a05[217],
                    %a06[217], %a07[217], %a08[217], %a09[217], %a10[217], %a11[217], %a12[217]] *
            poly z [%b00[217], %b01[217], %b02[217], %b03[217], %b04[217], %b05[217],
                    %b06[217], %b07[217], %b08[217], %b09[217], %b10[217], %b11[217], %b12[217]]) +
           (poly z [%c00[217], %c01[217], %c02[217], %c03[217], %c04[217], %c05[217],
                    %c06[217], %c07[217], %c08[217], %c09[217], %c10[217], %c11[217], %c12[217]]) +
           (poly z [%a00[217], %a01[217], %a02[217], %a03[217], %a04[217], %a05[217],
                    %a06[217], %a07[217], %a08[217], %a09[217], %a10[217], %a11[217], %a12[217]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[218], %s01[218], %s02[218], %s03[218], %s04[218], %s05[218],
                   %s06[218], %s07[218], %s08[218], %s09[218], %s10[218], %s11[218], %s12[218]])
          ((poly z [%a00[218], %a01[218], %a02[218], %a03[218], %a04[218], %a05[218],
                    %a06[218], %a07[218], %a08[218], %a09[218], %a10[218], %a11[218], %a12[218]] *
            poly z [%b00[218], %b01[218], %b02[218], %b03[218], %b04[218], %b05[218],
                    %b06[218], %b07[218], %b08[218], %b09[218], %b10[218], %b11[218], %b12[218]]) +
           (poly z [%c00[218], %c01[218], %c02[218], %c03[218], %c04[218], %c05[218],
                    %c06[218], %c07[218], %c08[218], %c09[218], %c10[218], %c11[218], %c12[218]]) +
           (poly z [%a00[218], %a01[218], %a02[218], %a03[218], %a04[218], %a05[218],
                    %a06[218], %a07[218], %a08[218], %a09[218], %a10[218], %a11[218], %a12[218]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[219], %s01[219], %s02[219], %s03[219], %s04[219], %s05[219],
                   %s06[219], %s07[219], %s08[219], %s09[219], %s10[219], %s11[219], %s12[219]])
          ((poly z [%a00[219], %a01[219], %a02[219], %a03[219], %a04[219], %a05[219],
                    %a06[219], %a07[219], %a08[219], %a09[219], %a10[219], %a11[219], %a12[219]] *
            poly z [%b00[219], %b01[219], %b02[219], %b03[219], %b04[219], %b05[219],
                    %b06[219], %b07[219], %b08[219], %b09[219], %b10[219], %b11[219], %b12[219]]) +
           (poly z [%c00[219], %c01[219], %c02[219], %c03[219], %c04[219], %c05[219],
                    %c06[219], %c07[219], %c08[219], %c09[219], %c10[219], %c11[219], %c12[219]]) +
           (poly z [%a00[219], %a01[219], %a02[219], %a03[219], %a04[219], %a05[219],
                    %a06[219], %a07[219], %a08[219], %a09[219], %a10[219], %a11[219], %a12[219]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[220], %s01[220], %s02[220], %s03[220], %s04[220], %s05[220],
                   %s06[220], %s07[220], %s08[220], %s09[220], %s10[220], %s11[220], %s12[220]])
          ((poly z [%a00[220], %a01[220], %a02[220], %a03[220], %a04[220], %a05[220],
                    %a06[220], %a07[220], %a08[220], %a09[220], %a10[220], %a11[220], %a12[220]] *
            poly z [%b00[220], %b01[220], %b02[220], %b03[220], %b04[220], %b05[220],
                    %b06[220], %b07[220], %b08[220], %b09[220], %b10[220], %b11[220], %b12[220]]) +
           (poly z [%c00[220], %c01[220], %c02[220], %c03[220], %c04[220], %c05[220],
                    %c06[220], %c07[220], %c08[220], %c09[220], %c10[220], %c11[220], %c12[220]]) +
           (poly z [%a00[220], %a01[220], %a02[220], %a03[220], %a04[220], %a05[220],
                    %a06[220], %a07[220], %a08[220], %a09[220], %a10[220], %a11[220], %a12[220]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[221], %s01[221], %s02[221], %s03[221], %s04[221], %s05[221],
                   %s06[221], %s07[221], %s08[221], %s09[221], %s10[221], %s11[221], %s12[221]])
          ((poly z [%a00[221], %a01[221], %a02[221], %a03[221], %a04[221], %a05[221],
                    %a06[221], %a07[221], %a08[221], %a09[221], %a10[221], %a11[221], %a12[221]] *
            poly z [%b00[221], %b01[221], %b02[221], %b03[221], %b04[221], %b05[221],
                    %b06[221], %b07[221], %b08[221], %b09[221], %b10[221], %b11[221], %b12[221]]) +
           (poly z [%c00[221], %c01[221], %c02[221], %c03[221], %c04[221], %c05[221],
                    %c06[221], %c07[221], %c08[221], %c09[221], %c10[221], %c11[221], %c12[221]]) +
           (poly z [%a00[221], %a01[221], %a02[221], %a03[221], %a04[221], %a05[221],
                    %a06[221], %a07[221], %a08[221], %a09[221], %a10[221], %a11[221], %a12[221]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[222], %s01[222], %s02[222], %s03[222], %s04[222], %s05[222],
                   %s06[222], %s07[222], %s08[222], %s09[222], %s10[222], %s11[222], %s12[222]])
          ((poly z [%a00[222], %a01[222], %a02[222], %a03[222], %a04[222], %a05[222],
                    %a06[222], %a07[222], %a08[222], %a09[222], %a10[222], %a11[222], %a12[222]] *
            poly z [%b00[222], %b01[222], %b02[222], %b03[222], %b04[222], %b05[222],
                    %b06[222], %b07[222], %b08[222], %b09[222], %b10[222], %b11[222], %b12[222]]) +
           (poly z [%c00[222], %c01[222], %c02[222], %c03[222], %c04[222], %c05[222],
                    %c06[222], %c07[222], %c08[222], %c09[222], %c10[222], %c11[222], %c12[222]]) +
           (poly z [%a00[222], %a01[222], %a02[222], %a03[222], %a04[222], %a05[222],
                    %a06[222], %a07[222], %a08[222], %a09[222], %a10[222], %a11[222], %a12[222]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[223], %s01[223], %s02[223], %s03[223], %s04[223], %s05[223],
                   %s06[223], %s07[223], %s08[223], %s09[223], %s10[223], %s11[223], %s12[223]])
          ((poly z [%a00[223], %a01[223], %a02[223], %a03[223], %a04[223], %a05[223],
                    %a06[223], %a07[223], %a08[223], %a09[223], %a10[223], %a11[223], %a12[223]] *
            poly z [%b00[223], %b01[223], %b02[223], %b03[223], %b04[223], %b05[223],
                    %b06[223], %b07[223], %b08[223], %b09[223], %b10[223], %b11[223], %b12[223]]) +
           (poly z [%c00[223], %c01[223], %c02[223], %c03[223], %c04[223], %c05[223],
                    %c06[223], %c07[223], %c08[223], %c09[223], %c10[223], %c11[223], %c12[223]]) +
           (poly z [%a00[223], %a01[223], %a02[223], %a03[223], %a04[223], %a05[223],
                    %a06[223], %a07[223], %a08[223], %a09[223], %a10[223], %a11[223], %a12[223]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[224], %s01[224], %s02[224], %s03[224], %s04[224], %s05[224],
                   %s06[224], %s07[224], %s08[224], %s09[224], %s10[224], %s11[224], %s12[224]])
          ((poly z [%a00[224], %a01[224], %a02[224], %a03[224], %a04[224], %a05[224],
                    %a06[224], %a07[224], %a08[224], %a09[224], %a10[224], %a11[224], %a12[224]] *
            poly z [%b00[224], %b01[224], %b02[224], %b03[224], %b04[224], %b05[224],
                    %b06[224], %b07[224], %b08[224], %b09[224], %b10[224], %b11[224], %b12[224]]) +
           (poly z [%c00[224], %c01[224], %c02[224], %c03[224], %c04[224], %c05[224],
                    %c06[224], %c07[224], %c08[224], %c09[224], %c10[224], %c11[224], %c12[224]]) +
           (poly z [%a00[224], %a01[224], %a02[224], %a03[224], %a04[224], %a05[224],
                    %a06[224], %a07[224], %a08[224], %a09[224], %a10[224], %a11[224], %a12[224]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[225], %s01[225], %s02[225], %s03[225], %s04[225], %s05[225],
                   %s06[225], %s07[225], %s08[225], %s09[225], %s10[225], %s11[225], %s12[225]])
          ((poly z [%a00[225], %a01[225], %a02[225], %a03[225], %a04[225], %a05[225],
                    %a06[225], %a07[225], %a08[225], %a09[225], %a10[225], %a11[225], %a12[225]] *
            poly z [%b00[225], %b01[225], %b02[225], %b03[225], %b04[225], %b05[225],
                    %b06[225], %b07[225], %b08[225], %b09[225], %b10[225], %b11[225], %b12[225]]) +
           (poly z [%c00[225], %c01[225], %c02[225], %c03[225], %c04[225], %c05[225],
                    %c06[225], %c07[225], %c08[225], %c09[225], %c10[225], %c11[225], %c12[225]]) +
           (poly z [%a00[225], %a01[225], %a02[225], %a03[225], %a04[225], %a05[225],
                    %a06[225], %a07[225], %a08[225], %a09[225], %a10[225], %a11[225], %a12[225]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[226], %s01[226], %s02[226], %s03[226], %s04[226], %s05[226],
                   %s06[226], %s07[226], %s08[226], %s09[226], %s10[226], %s11[226], %s12[226]])
          ((poly z [%a00[226], %a01[226], %a02[226], %a03[226], %a04[226], %a05[226],
                    %a06[226], %a07[226], %a08[226], %a09[226], %a10[226], %a11[226], %a12[226]] *
            poly z [%b00[226], %b01[226], %b02[226], %b03[226], %b04[226], %b05[226],
                    %b06[226], %b07[226], %b08[226], %b09[226], %b10[226], %b11[226], %b12[226]]) +
           (poly z [%c00[226], %c01[226], %c02[226], %c03[226], %c04[226], %c05[226],
                    %c06[226], %c07[226], %c08[226], %c09[226], %c10[226], %c11[226], %c12[226]]) +
           (poly z [%a00[226], %a01[226], %a02[226], %a03[226], %a04[226], %a05[226],
                    %a06[226], %a07[226], %a08[226], %a09[226], %a10[226], %a11[226], %a12[226]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[227], %s01[227], %s02[227], %s03[227], %s04[227], %s05[227],
                   %s06[227], %s07[227], %s08[227], %s09[227], %s10[227], %s11[227], %s12[227]])
          ((poly z [%a00[227], %a01[227], %a02[227], %a03[227], %a04[227], %a05[227],
                    %a06[227], %a07[227], %a08[227], %a09[227], %a10[227], %a11[227], %a12[227]] *
            poly z [%b00[227], %b01[227], %b02[227], %b03[227], %b04[227], %b05[227],
                    %b06[227], %b07[227], %b08[227], %b09[227], %b10[227], %b11[227], %b12[227]]) +
           (poly z [%c00[227], %c01[227], %c02[227], %c03[227], %c04[227], %c05[227],
                    %c06[227], %c07[227], %c08[227], %c09[227], %c10[227], %c11[227], %c12[227]]) +
           (poly z [%a00[227], %a01[227], %a02[227], %a03[227], %a04[227], %a05[227],
                    %a06[227], %a07[227], %a08[227], %a09[227], %a10[227], %a11[227], %a12[227]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[228], %s01[228], %s02[228], %s03[228], %s04[228], %s05[228],
                   %s06[228], %s07[228], %s08[228], %s09[228], %s10[228], %s11[228], %s12[228]])
          ((poly z [%a00[228], %a01[228], %a02[228], %a03[228], %a04[228], %a05[228],
                    %a06[228], %a07[228], %a08[228], %a09[228], %a10[228], %a11[228], %a12[228]] *
            poly z [%b00[228], %b01[228], %b02[228], %b03[228], %b04[228], %b05[228],
                    %b06[228], %b07[228], %b08[228], %b09[228], %b10[228], %b11[228], %b12[228]]) +
           (poly z [%c00[228], %c01[228], %c02[228], %c03[228], %c04[228], %c05[228],
                    %c06[228], %c07[228], %c08[228], %c09[228], %c10[228], %c11[228], %c12[228]]) +
           (poly z [%a00[228], %a01[228], %a02[228], %a03[228], %a04[228], %a05[228],
                    %a06[228], %a07[228], %a08[228], %a09[228], %a10[228], %a11[228], %a12[228]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[229], %s01[229], %s02[229], %s03[229], %s04[229], %s05[229],
                   %s06[229], %s07[229], %s08[229], %s09[229], %s10[229], %s11[229], %s12[229]])
          ((poly z [%a00[229], %a01[229], %a02[229], %a03[229], %a04[229], %a05[229],
                    %a06[229], %a07[229], %a08[229], %a09[229], %a10[229], %a11[229], %a12[229]] *
            poly z [%b00[229], %b01[229], %b02[229], %b03[229], %b04[229], %b05[229],
                    %b06[229], %b07[229], %b08[229], %b09[229], %b10[229], %b11[229], %b12[229]]) +
           (poly z [%c00[229], %c01[229], %c02[229], %c03[229], %c04[229], %c05[229],
                    %c06[229], %c07[229], %c08[229], %c09[229], %c10[229], %c11[229], %c12[229]]) +
           (poly z [%a00[229], %a01[229], %a02[229], %a03[229], %a04[229], %a05[229],
                    %a06[229], %a07[229], %a08[229], %a09[229], %a10[229], %a11[229], %a12[229]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[230], %s01[230], %s02[230], %s03[230], %s04[230], %s05[230],
                   %s06[230], %s07[230], %s08[230], %s09[230], %s10[230], %s11[230], %s12[230]])
          ((poly z [%a00[230], %a01[230], %a02[230], %a03[230], %a04[230], %a05[230],
                    %a06[230], %a07[230], %a08[230], %a09[230], %a10[230], %a11[230], %a12[230]] *
            poly z [%b00[230], %b01[230], %b02[230], %b03[230], %b04[230], %b05[230],
                    %b06[230], %b07[230], %b08[230], %b09[230], %b10[230], %b11[230], %b12[230]]) +
           (poly z [%c00[230], %c01[230], %c02[230], %c03[230], %c04[230], %c05[230],
                    %c06[230], %c07[230], %c08[230], %c09[230], %c10[230], %c11[230], %c12[230]]) +
           (poly z [%a00[230], %a01[230], %a02[230], %a03[230], %a04[230], %a05[230],
                    %a06[230], %a07[230], %a08[230], %a09[230], %a10[230], %a11[230], %a12[230]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[231], %s01[231], %s02[231], %s03[231], %s04[231], %s05[231],
                   %s06[231], %s07[231], %s08[231], %s09[231], %s10[231], %s11[231], %s12[231]])
          ((poly z [%a00[231], %a01[231], %a02[231], %a03[231], %a04[231], %a05[231],
                    %a06[231], %a07[231], %a08[231], %a09[231], %a10[231], %a11[231], %a12[231]] *
            poly z [%b00[231], %b01[231], %b02[231], %b03[231], %b04[231], %b05[231],
                    %b06[231], %b07[231], %b08[231], %b09[231], %b10[231], %b11[231], %b12[231]]) +
           (poly z [%c00[231], %c01[231], %c02[231], %c03[231], %c04[231], %c05[231],
                    %c06[231], %c07[231], %c08[231], %c09[231], %c10[231], %c11[231], %c12[231]]) +
           (poly z [%a00[231], %a01[231], %a02[231], %a03[231], %a04[231], %a05[231],
                    %a06[231], %a07[231], %a08[231], %a09[231], %a10[231], %a11[231], %a12[231]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[232], %s01[232], %s02[232], %s03[232], %s04[232], %s05[232],
                   %s06[232], %s07[232], %s08[232], %s09[232], %s10[232], %s11[232], %s12[232]])
          ((poly z [%a00[232], %a01[232], %a02[232], %a03[232], %a04[232], %a05[232],
                    %a06[232], %a07[232], %a08[232], %a09[232], %a10[232], %a11[232], %a12[232]] *
            poly z [%b00[232], %b01[232], %b02[232], %b03[232], %b04[232], %b05[232],
                    %b06[232], %b07[232], %b08[232], %b09[232], %b10[232], %b11[232], %b12[232]]) +
           (poly z [%c00[232], %c01[232], %c02[232], %c03[232], %c04[232], %c05[232],
                    %c06[232], %c07[232], %c08[232], %c09[232], %c10[232], %c11[232], %c12[232]]) +
           (poly z [%a00[232], %a01[232], %a02[232], %a03[232], %a04[232], %a05[232],
                    %a06[232], %a07[232], %a08[232], %a09[232], %a10[232], %a11[232], %a12[232]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[233], %s01[233], %s02[233], %s03[233], %s04[233], %s05[233],
                   %s06[233], %s07[233], %s08[233], %s09[233], %s10[233], %s11[233], %s12[233]])
          ((poly z [%a00[233], %a01[233], %a02[233], %a03[233], %a04[233], %a05[233],
                    %a06[233], %a07[233], %a08[233], %a09[233], %a10[233], %a11[233], %a12[233]] *
            poly z [%b00[233], %b01[233], %b02[233], %b03[233], %b04[233], %b05[233],
                    %b06[233], %b07[233], %b08[233], %b09[233], %b10[233], %b11[233], %b12[233]]) +
           (poly z [%c00[233], %c01[233], %c02[233], %c03[233], %c04[233], %c05[233],
                    %c06[233], %c07[233], %c08[233], %c09[233], %c10[233], %c11[233], %c12[233]]) +
           (poly z [%a00[233], %a01[233], %a02[233], %a03[233], %a04[233], %a05[233],
                    %a06[233], %a07[233], %a08[233], %a09[233], %a10[233], %a11[233], %a12[233]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[234], %s01[234], %s02[234], %s03[234], %s04[234], %s05[234],
                   %s06[234], %s07[234], %s08[234], %s09[234], %s10[234], %s11[234], %s12[234]])
          ((poly z [%a00[234], %a01[234], %a02[234], %a03[234], %a04[234], %a05[234],
                    %a06[234], %a07[234], %a08[234], %a09[234], %a10[234], %a11[234], %a12[234]] *
            poly z [%b00[234], %b01[234], %b02[234], %b03[234], %b04[234], %b05[234],
                    %b06[234], %b07[234], %b08[234], %b09[234], %b10[234], %b11[234], %b12[234]]) +
           (poly z [%c00[234], %c01[234], %c02[234], %c03[234], %c04[234], %c05[234],
                    %c06[234], %c07[234], %c08[234], %c09[234], %c10[234], %c11[234], %c12[234]]) +
           (poly z [%a00[234], %a01[234], %a02[234], %a03[234], %a04[234], %a05[234],
                    %a06[234], %a07[234], %a08[234], %a09[234], %a10[234], %a11[234], %a12[234]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[235], %s01[235], %s02[235], %s03[235], %s04[235], %s05[235],
                   %s06[235], %s07[235], %s08[235], %s09[235], %s10[235], %s11[235], %s12[235]])
          ((poly z [%a00[235], %a01[235], %a02[235], %a03[235], %a04[235], %a05[235],
                    %a06[235], %a07[235], %a08[235], %a09[235], %a10[235], %a11[235], %a12[235]] *
            poly z [%b00[235], %b01[235], %b02[235], %b03[235], %b04[235], %b05[235],
                    %b06[235], %b07[235], %b08[235], %b09[235], %b10[235], %b11[235], %b12[235]]) +
           (poly z [%c00[235], %c01[235], %c02[235], %c03[235], %c04[235], %c05[235],
                    %c06[235], %c07[235], %c08[235], %c09[235], %c10[235], %c11[235], %c12[235]]) +
           (poly z [%a00[235], %a01[235], %a02[235], %a03[235], %a04[235], %a05[235],
                    %a06[235], %a07[235], %a08[235], %a09[235], %a10[235], %a11[235], %a12[235]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[236], %s01[236], %s02[236], %s03[236], %s04[236], %s05[236],
                   %s06[236], %s07[236], %s08[236], %s09[236], %s10[236], %s11[236], %s12[236]])
          ((poly z [%a00[236], %a01[236], %a02[236], %a03[236], %a04[236], %a05[236],
                    %a06[236], %a07[236], %a08[236], %a09[236], %a10[236], %a11[236], %a12[236]] *
            poly z [%b00[236], %b01[236], %b02[236], %b03[236], %b04[236], %b05[236],
                    %b06[236], %b07[236], %b08[236], %b09[236], %b10[236], %b11[236], %b12[236]]) +
           (poly z [%c00[236], %c01[236], %c02[236], %c03[236], %c04[236], %c05[236],
                    %c06[236], %c07[236], %c08[236], %c09[236], %c10[236], %c11[236], %c12[236]]) +
           (poly z [%a00[236], %a01[236], %a02[236], %a03[236], %a04[236], %a05[236],
                    %a06[236], %a07[236], %a08[236], %a09[236], %a10[236], %a11[236], %a12[236]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[237], %s01[237], %s02[237], %s03[237], %s04[237], %s05[237],
                   %s06[237], %s07[237], %s08[237], %s09[237], %s10[237], %s11[237], %s12[237]])
          ((poly z [%a00[237], %a01[237], %a02[237], %a03[237], %a04[237], %a05[237],
                    %a06[237], %a07[237], %a08[237], %a09[237], %a10[237], %a11[237], %a12[237]] *
            poly z [%b00[237], %b01[237], %b02[237], %b03[237], %b04[237], %b05[237],
                    %b06[237], %b07[237], %b08[237], %b09[237], %b10[237], %b11[237], %b12[237]]) +
           (poly z [%c00[237], %c01[237], %c02[237], %c03[237], %c04[237], %c05[237],
                    %c06[237], %c07[237], %c08[237], %c09[237], %c10[237], %c11[237], %c12[237]]) +
           (poly z [%a00[237], %a01[237], %a02[237], %a03[237], %a04[237], %a05[237],
                    %a06[237], %a07[237], %a08[237], %a09[237], %a10[237], %a11[237], %a12[237]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[238], %s01[238], %s02[238], %s03[238], %s04[238], %s05[238],
                   %s06[238], %s07[238], %s08[238], %s09[238], %s10[238], %s11[238], %s12[238]])
          ((poly z [%a00[238], %a01[238], %a02[238], %a03[238], %a04[238], %a05[238],
                    %a06[238], %a07[238], %a08[238], %a09[238], %a10[238], %a11[238], %a12[238]] *
            poly z [%b00[238], %b01[238], %b02[238], %b03[238], %b04[238], %b05[238],
                    %b06[238], %b07[238], %b08[238], %b09[238], %b10[238], %b11[238], %b12[238]]) +
           (poly z [%c00[238], %c01[238], %c02[238], %c03[238], %c04[238], %c05[238],
                    %c06[238], %c07[238], %c08[238], %c09[238], %c10[238], %c11[238], %c12[238]]) +
           (poly z [%a00[238], %a01[238], %a02[238], %a03[238], %a04[238], %a05[238],
                    %a06[238], %a07[238], %a08[238], %a09[238], %a10[238], %a11[238], %a12[238]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[239], %s01[239], %s02[239], %s03[239], %s04[239], %s05[239],
                   %s06[239], %s07[239], %s08[239], %s09[239], %s10[239], %s11[239], %s12[239]])
          ((poly z [%a00[239], %a01[239], %a02[239], %a03[239], %a04[239], %a05[239],
                    %a06[239], %a07[239], %a08[239], %a09[239], %a10[239], %a11[239], %a12[239]] *
            poly z [%b00[239], %b01[239], %b02[239], %b03[239], %b04[239], %b05[239],
                    %b06[239], %b07[239], %b08[239], %b09[239], %b10[239], %b11[239], %b12[239]]) +
           (poly z [%c00[239], %c01[239], %c02[239], %c03[239], %c04[239], %c05[239],
                    %c06[239], %c07[239], %c08[239], %c09[239], %c10[239], %c11[239], %c12[239]]) +
           (poly z [%a00[239], %a01[239], %a02[239], %a03[239], %a04[239], %a05[239],
                    %a06[239], %a07[239], %a08[239], %a09[239], %a10[239], %a11[239], %a12[239]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[240], %s01[240], %s02[240], %s03[240], %s04[240], %s05[240],
                   %s06[240], %s07[240], %s08[240], %s09[240], %s10[240], %s11[240], %s12[240]])
          ((poly z [%a00[240], %a01[240], %a02[240], %a03[240], %a04[240], %a05[240],
                    %a06[240], %a07[240], %a08[240], %a09[240], %a10[240], %a11[240], %a12[240]] *
            poly z [%b00[240], %b01[240], %b02[240], %b03[240], %b04[240], %b05[240],
                    %b06[240], %b07[240], %b08[240], %b09[240], %b10[240], %b11[240], %b12[240]]) +
           (poly z [%c00[240], %c01[240], %c02[240], %c03[240], %c04[240], %c05[240],
                    %c06[240], %c07[240], %c08[240], %c09[240], %c10[240], %c11[240], %c12[240]]) +
           (poly z [%a00[240], %a01[240], %a02[240], %a03[240], %a04[240], %a05[240],
                    %a06[240], %a07[240], %a08[240], %a09[240], %a10[240], %a11[240], %a12[240]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[241], %s01[241], %s02[241], %s03[241], %s04[241], %s05[241],
                   %s06[241], %s07[241], %s08[241], %s09[241], %s10[241], %s11[241], %s12[241]])
          ((poly z [%a00[241], %a01[241], %a02[241], %a03[241], %a04[241], %a05[241],
                    %a06[241], %a07[241], %a08[241], %a09[241], %a10[241], %a11[241], %a12[241]] *
            poly z [%b00[241], %b01[241], %b02[241], %b03[241], %b04[241], %b05[241],
                    %b06[241], %b07[241], %b08[241], %b09[241], %b10[241], %b11[241], %b12[241]]) +
           (poly z [%c00[241], %c01[241], %c02[241], %c03[241], %c04[241], %c05[241],
                    %c06[241], %c07[241], %c08[241], %c09[241], %c10[241], %c11[241], %c12[241]]) +
           (poly z [%a00[241], %a01[241], %a02[241], %a03[241], %a04[241], %a05[241],
                    %a06[241], %a07[241], %a08[241], %a09[241], %a10[241], %a11[241], %a12[241]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[242], %s01[242], %s02[242], %s03[242], %s04[242], %s05[242],
                   %s06[242], %s07[242], %s08[242], %s09[242], %s10[242], %s11[242], %s12[242]])
          ((poly z [%a00[242], %a01[242], %a02[242], %a03[242], %a04[242], %a05[242],
                    %a06[242], %a07[242], %a08[242], %a09[242], %a10[242], %a11[242], %a12[242]] *
            poly z [%b00[242], %b01[242], %b02[242], %b03[242], %b04[242], %b05[242],
                    %b06[242], %b07[242], %b08[242], %b09[242], %b10[242], %b11[242], %b12[242]]) +
           (poly z [%c00[242], %c01[242], %c02[242], %c03[242], %c04[242], %c05[242],
                    %c06[242], %c07[242], %c08[242], %c09[242], %c10[242], %c11[242], %c12[242]]) +
           (poly z [%a00[242], %a01[242], %a02[242], %a03[242], %a04[242], %a05[242],
                    %a06[242], %a07[242], %a08[242], %a09[242], %a10[242], %a11[242], %a12[242]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[243], %s01[243], %s02[243], %s03[243], %s04[243], %s05[243],
                   %s06[243], %s07[243], %s08[243], %s09[243], %s10[243], %s11[243], %s12[243]])
          ((poly z [%a00[243], %a01[243], %a02[243], %a03[243], %a04[243], %a05[243],
                    %a06[243], %a07[243], %a08[243], %a09[243], %a10[243], %a11[243], %a12[243]] *
            poly z [%b00[243], %b01[243], %b02[243], %b03[243], %b04[243], %b05[243],
                    %b06[243], %b07[243], %b08[243], %b09[243], %b10[243], %b11[243], %b12[243]]) +
           (poly z [%c00[243], %c01[243], %c02[243], %c03[243], %c04[243], %c05[243],
                    %c06[243], %c07[243], %c08[243], %c09[243], %c10[243], %c11[243], %c12[243]]) +
           (poly z [%a00[243], %a01[243], %a02[243], %a03[243], %a04[243], %a05[243],
                    %a06[243], %a07[243], %a08[243], %a09[243], %a10[243], %a11[243], %a12[243]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[244], %s01[244], %s02[244], %s03[244], %s04[244], %s05[244],
                   %s06[244], %s07[244], %s08[244], %s09[244], %s10[244], %s11[244], %s12[244]])
          ((poly z [%a00[244], %a01[244], %a02[244], %a03[244], %a04[244], %a05[244],
                    %a06[244], %a07[244], %a08[244], %a09[244], %a10[244], %a11[244], %a12[244]] *
            poly z [%b00[244], %b01[244], %b02[244], %b03[244], %b04[244], %b05[244],
                    %b06[244], %b07[244], %b08[244], %b09[244], %b10[244], %b11[244], %b12[244]]) +
           (poly z [%c00[244], %c01[244], %c02[244], %c03[244], %c04[244], %c05[244],
                    %c06[244], %c07[244], %c08[244], %c09[244], %c10[244], %c11[244], %c12[244]]) +
           (poly z [%a00[244], %a01[244], %a02[244], %a03[244], %a04[244], %a05[244],
                    %a06[244], %a07[244], %a08[244], %a09[244], %a10[244], %a11[244], %a12[244]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[245], %s01[245], %s02[245], %s03[245], %s04[245], %s05[245],
                   %s06[245], %s07[245], %s08[245], %s09[245], %s10[245], %s11[245], %s12[245]])
          ((poly z [%a00[245], %a01[245], %a02[245], %a03[245], %a04[245], %a05[245],
                    %a06[245], %a07[245], %a08[245], %a09[245], %a10[245], %a11[245], %a12[245]] *
            poly z [%b00[245], %b01[245], %b02[245], %b03[245], %b04[245], %b05[245],
                    %b06[245], %b07[245], %b08[245], %b09[245], %b10[245], %b11[245], %b12[245]]) +
           (poly z [%c00[245], %c01[245], %c02[245], %c03[245], %c04[245], %c05[245],
                    %c06[245], %c07[245], %c08[245], %c09[245], %c10[245], %c11[245], %c12[245]]) +
           (poly z [%a00[245], %a01[245], %a02[245], %a03[245], %a04[245], %a05[245],
                    %a06[245], %a07[245], %a08[245], %a09[245], %a10[245], %a11[245], %a12[245]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[246], %s01[246], %s02[246], %s03[246], %s04[246], %s05[246],
                   %s06[246], %s07[246], %s08[246], %s09[246], %s10[246], %s11[246], %s12[246]])
          ((poly z [%a00[246], %a01[246], %a02[246], %a03[246], %a04[246], %a05[246],
                    %a06[246], %a07[246], %a08[246], %a09[246], %a10[246], %a11[246], %a12[246]] *
            poly z [%b00[246], %b01[246], %b02[246], %b03[246], %b04[246], %b05[246],
                    %b06[246], %b07[246], %b08[246], %b09[246], %b10[246], %b11[246], %b12[246]]) +
           (poly z [%c00[246], %c01[246], %c02[246], %c03[246], %c04[246], %c05[246],
                    %c06[246], %c07[246], %c08[246], %c09[246], %c10[246], %c11[246], %c12[246]]) +
           (poly z [%a00[246], %a01[246], %a02[246], %a03[246], %a04[246], %a05[246],
                    %a06[246], %a07[246], %a08[246], %a09[246], %a10[246], %a11[246], %a12[246]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[247], %s01[247], %s02[247], %s03[247], %s04[247], %s05[247],
                   %s06[247], %s07[247], %s08[247], %s09[247], %s10[247], %s11[247], %s12[247]])
          ((poly z [%a00[247], %a01[247], %a02[247], %a03[247], %a04[247], %a05[247],
                    %a06[247], %a07[247], %a08[247], %a09[247], %a10[247], %a11[247], %a12[247]] *
            poly z [%b00[247], %b01[247], %b02[247], %b03[247], %b04[247], %b05[247],
                    %b06[247], %b07[247], %b08[247], %b09[247], %b10[247], %b11[247], %b12[247]]) +
           (poly z [%c00[247], %c01[247], %c02[247], %c03[247], %c04[247], %c05[247],
                    %c06[247], %c07[247], %c08[247], %c09[247], %c10[247], %c11[247], %c12[247]]) +
           (poly z [%a00[247], %a01[247], %a02[247], %a03[247], %a04[247], %a05[247],
                    %a06[247], %a07[247], %a08[247], %a09[247], %a10[247], %a11[247], %a12[247]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[248], %s01[248], %s02[248], %s03[248], %s04[248], %s05[248],
                   %s06[248], %s07[248], %s08[248], %s09[248], %s10[248], %s11[248], %s12[248]])
          ((poly z [%a00[248], %a01[248], %a02[248], %a03[248], %a04[248], %a05[248],
                    %a06[248], %a07[248], %a08[248], %a09[248], %a10[248], %a11[248], %a12[248]] *
            poly z [%b00[248], %b01[248], %b02[248], %b03[248], %b04[248], %b05[248],
                    %b06[248], %b07[248], %b08[248], %b09[248], %b10[248], %b11[248], %b12[248]]) +
           (poly z [%c00[248], %c01[248], %c02[248], %c03[248], %c04[248], %c05[248],
                    %c06[248], %c07[248], %c08[248], %c09[248], %c10[248], %c11[248], %c12[248]]) +
           (poly z [%a00[248], %a01[248], %a02[248], %a03[248], %a04[248], %a05[248],
                    %a06[248], %a07[248], %a08[248], %a09[248], %a10[248], %a11[248], %a12[248]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[249], %s01[249], %s02[249], %s03[249], %s04[249], %s05[249],
                   %s06[249], %s07[249], %s08[249], %s09[249], %s10[249], %s11[249], %s12[249]])
          ((poly z [%a00[249], %a01[249], %a02[249], %a03[249], %a04[249], %a05[249],
                    %a06[249], %a07[249], %a08[249], %a09[249], %a10[249], %a11[249], %a12[249]] *
            poly z [%b00[249], %b01[249], %b02[249], %b03[249], %b04[249], %b05[249],
                    %b06[249], %b07[249], %b08[249], %b09[249], %b10[249], %b11[249], %b12[249]]) +
           (poly z [%c00[249], %c01[249], %c02[249], %c03[249], %c04[249], %c05[249],
                    %c06[249], %c07[249], %c08[249], %c09[249], %c10[249], %c11[249], %c12[249]]) +
           (poly z [%a00[249], %a01[249], %a02[249], %a03[249], %a04[249], %a05[249],
                    %a06[249], %a07[249], %a08[249], %a09[249], %a10[249], %a11[249], %a12[249]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[250], %s01[250], %s02[250], %s03[250], %s04[250], %s05[250],
                   %s06[250], %s07[250], %s08[250], %s09[250], %s10[250], %s11[250], %s12[250]])
          ((poly z [%a00[250], %a01[250], %a02[250], %a03[250], %a04[250], %a05[250],
                    %a06[250], %a07[250], %a08[250], %a09[250], %a10[250], %a11[250], %a12[250]] *
            poly z [%b00[250], %b01[250], %b02[250], %b03[250], %b04[250], %b05[250],
                    %b06[250], %b07[250], %b08[250], %b09[250], %b10[250], %b11[250], %b12[250]]) +
           (poly z [%c00[250], %c01[250], %c02[250], %c03[250], %c04[250], %c05[250],
                    %c06[250], %c07[250], %c08[250], %c09[250], %c10[250], %c11[250], %c12[250]]) +
           (poly z [%a00[250], %a01[250], %a02[250], %a03[250], %a04[250], %a05[250],
                    %a06[250], %a07[250], %a08[250], %a09[250], %a10[250], %a11[250], %a12[250]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[251], %s01[251], %s02[251], %s03[251], %s04[251], %s05[251],
                   %s06[251], %s07[251], %s08[251], %s09[251], %s10[251], %s11[251], %s12[251]])
          ((poly z [%a00[251], %a01[251], %a02[251], %a03[251], %a04[251], %a05[251],
                    %a06[251], %a07[251], %a08[251], %a09[251], %a10[251], %a11[251], %a12[251]] *
            poly z [%b00[251], %b01[251], %b02[251], %b03[251], %b04[251], %b05[251],
                    %b06[251], %b07[251], %b08[251], %b09[251], %b10[251], %b11[251], %b12[251]]) +
           (poly z [%c00[251], %c01[251], %c02[251], %c03[251], %c04[251], %c05[251],
                    %c06[251], %c07[251], %c08[251], %c09[251], %c10[251], %c11[251], %c12[251]]) +
           (poly z [%a00[251], %a01[251], %a02[251], %a03[251], %a04[251], %a05[251],
                    %a06[251], %a07[251], %a08[251], %a09[251], %a10[251], %a11[251], %a12[251]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[252], %s01[252], %s02[252], %s03[252], %s04[252], %s05[252],
                   %s06[252], %s07[252], %s08[252], %s09[252], %s10[252], %s11[252], %s12[252]])
          ((poly z [%a00[252], %a01[252], %a02[252], %a03[252], %a04[252], %a05[252],
                    %a06[252], %a07[252], %a08[252], %a09[252], %a10[252], %a11[252], %a12[252]] *
            poly z [%b00[252], %b01[252], %b02[252], %b03[252], %b04[252], %b05[252],
                    %b06[252], %b07[252], %b08[252], %b09[252], %b10[252], %b11[252], %b12[252]]) +
           (poly z [%c00[252], %c01[252], %c02[252], %c03[252], %c04[252], %c05[252],
                    %c06[252], %c07[252], %c08[252], %c09[252], %c10[252], %c11[252], %c12[252]]) +
           (poly z [%a00[252], %a01[252], %a02[252], %a03[252], %a04[252], %a05[252],
                    %a06[252], %a07[252], %a08[252], %a09[252], %a10[252], %a11[252], %a12[252]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[253], %s01[253], %s02[253], %s03[253], %s04[253], %s05[253],
                   %s06[253], %s07[253], %s08[253], %s09[253], %s10[253], %s11[253], %s12[253]])
          ((poly z [%a00[253], %a01[253], %a02[253], %a03[253], %a04[253], %a05[253],
                    %a06[253], %a07[253], %a08[253], %a09[253], %a10[253], %a11[253], %a12[253]] *
            poly z [%b00[253], %b01[253], %b02[253], %b03[253], %b04[253], %b05[253],
                    %b06[253], %b07[253], %b08[253], %b09[253], %b10[253], %b11[253], %b12[253]]) +
           (poly z [%c00[253], %c01[253], %c02[253], %c03[253], %c04[253], %c05[253],
                    %c06[253], %c07[253], %c08[253], %c09[253], %c10[253], %c11[253], %c12[253]]) +
           (poly z [%a00[253], %a01[253], %a02[253], %a03[253], %a04[253], %a05[253],
                    %a06[253], %a07[253], %a08[253], %a09[253], %a10[253], %a11[253], %a12[253]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[254], %s01[254], %s02[254], %s03[254], %s04[254], %s05[254],
                   %s06[254], %s07[254], %s08[254], %s09[254], %s10[254], %s11[254], %s12[254]])
          ((poly z [%a00[254], %a01[254], %a02[254], %a03[254], %a04[254], %a05[254],
                    %a06[254], %a07[254], %a08[254], %a09[254], %a10[254], %a11[254], %a12[254]] *
            poly z [%b00[254], %b01[254], %b02[254], %b03[254], %b04[254], %b05[254],
                    %b06[254], %b07[254], %b08[254], %b09[254], %b10[254], %b11[254], %b12[254]]) +
           (poly z [%c00[254], %c01[254], %c02[254], %c03[254], %c04[254], %c05[254],
                    %c06[254], %c07[254], %c08[254], %c09[254], %c10[254], %c11[254], %c12[254]]) +
           (poly z [%a00[254], %a01[254], %a02[254], %a03[254], %a04[254], %a05[254],
                    %a06[254], %a07[254], %a08[254], %a09[254], %a10[254], %a11[254], %a12[254]]))
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%s00[255], %s01[255], %s02[255], %s03[255], %s04[255], %s05[255],
                   %s06[255], %s07[255], %s08[255], %s09[255], %s10[255], %s11[255], %s12[255]])
          ((poly z [%a00[255], %a01[255], %a02[255], %a03[255], %a04[255], %a05[255],
                    %a06[255], %a07[255], %a08[255], %a09[255], %a10[255], %a11[255], %a12[255]] *
            poly z [%b00[255], %b01[255], %b02[255], %b03[255], %b04[255], %b05[255],
                    %b06[255], %b07[255], %b08[255], %b09[255], %b10[255], %b11[255], %b12[255]]) +
           (poly z [%c00[255], %c01[255], %c02[255], %c03[255], %c04[255], %c05[255],
                    %c06[255], %c07[255], %c08[255], %c09[255], %c10[255], %c11[255], %c12[255]]) +
           (poly z [%a00[255], %a01[255], %a02[255], %a03[255], %a04[255], %a05[255],
                    %a06[255], %a07[255], %a08[255], %a09[255], %a10[255], %a11[255], %a12[255]]))
          [2, z**13 + z**4 + z**3 + z + 1]
  ]
  &&
  true
}
