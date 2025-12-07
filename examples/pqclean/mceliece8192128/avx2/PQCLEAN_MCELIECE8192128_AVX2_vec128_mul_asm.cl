(*
Run on iruka with command:
$ cv -v -jobs 4 -isafety -slicing -no_carry_constraint PQCLEAN_MCELIECE8192128_AVX2_vec128_mul_asm.cl

Parsing CryptoLine file:                        [OK]            0.4949 seconds
Checking well-formedness:                       [OK]            0.2028 seconds

Procedure main
==============
Transforming to SSA form:                       [OK]            0.0952 seconds
Normalizing specification:                      [OK]            0.1147 seconds
Rewriting assignments:                          [OK]            0.0805 seconds
Verifying program safety:
        ...
        Overall                                 [OK]            228.6873 seconds
Verifying range specification:                  [OK]            0.0042 seconds
Rewriting value-preserved casting:              [OK]            0.0109 seconds
Verifying algebraic specification:              [OK]            8.2212 seconds

Procedure Summary
-----------------
Procedure verification:                         [OK]            237.2833 seconds

Summary
=======
Verification result:                            [OK]            237.9826 seconds
*)

# mceliece8192128
# KEM with m = 13, n = 8192, t = 128.
# Field polynomials:
# - f(z) = z^13 + z^4 + z^3 + z + 1, and
# - F(y) = y^128 + y^7 + y^2 + y + 1.

proc main (bit z,
           bit[128] %a00, bit[128] %a01, bit[128] %a02, bit[128] %a03,
           bit[128] %a04, bit[128] %a05, bit[128] %a06, bit[128] %a07,
           bit[128] %a08, bit[128] %a09, bit[128] %a10, bit[128] %a11,
           bit[128] %a12,
           bit[128] %b00, bit[128] %b01, bit[128] %b02, bit[128] %b03,
           bit[128] %b04, bit[128] %b05, bit[128] %b06, bit[128] %b07,
           bit[128] %b08, bit[128] %b09, bit[128] %b10, bit[128] %b11,
           bit[128] %b12) =
{
  true
  &&
  true
}

nondet %ymm4@bit[256];
nondet %ymm6@bit[256];
nondet %ymm8@bit[256];
nondet %ymm10@bit[256];
nondet %ymm12@bit[256];

mov %L0x7fffffd44f70 %a00;
mov %L0x7fffffd44f80 %a01;
mov %L0x7fffffd44f90 %a02;
mov %L0x7fffffd44fa0 %a03;
mov %L0x7fffffd44fb0 %a04;
mov %L0x7fffffd44fc0 %a05;
mov %L0x7fffffd44fd0 %a06;
mov %L0x7fffffd44fe0 %a07;
mov %L0x7fffffd44ff0 %a08;
mov %L0x7fffffd45000 %a09;
mov %L0x7fffffd45010 %a10;
mov %L0x7fffffd45020 %a11;
mov %L0x7fffffd45030 %a12;

mov %L0x7fffffd452a0 %b00;
mov %L0x7fffffd452b0 %b01;
mov %L0x7fffffd452c0 %b02;
mov %L0x7fffffd452d0 %b03;
mov %L0x7fffffd452e0 %b04;
mov %L0x7fffffd452f0 %b05;
mov %L0x7fffffd45300 %b06;
mov %L0x7fffffd45310 %b07;
mov %L0x7fffffd45320 %b08;
mov %L0x7fffffd45330 %b09;
mov %L0x7fffffd45340 %b10;
mov %L0x7fffffd45350 %b11;
mov %L0x7fffffd45360 %b12;


(* PQCLEAN_MCELIECE8192128_AVX2_vec128_mul_asm: *)
(* #! -> SP = 0x7fffffd44cb8 *)
#! 0x7fffffd44cb8 = 0x7fffffd44cb8;
(* mov    %rsp,%r11                                #! PC = 0x55555556a8c0 *)
(* and    $0x1f,%r11                               #! PC = 0x55555556a8c3 *)
(* add    $0x260,%r11                              #! PC = 0x55555556a8c7 *)
(* sub    %r11,%rsp                                #! PC = 0x55555556a8ce *)
(* lea    (%rsp),%r8                               #! PC = 0x55555556a8d1 *)
(* mov    %rcx,%r9                                 #! PC = 0x55555556a8d5 *)
(* imul   $0xc,%r9,%r9                             #! PC = 0x55555556a8d8 *)
(* add    %r9,%rdx                                 #! PC = 0x55555556a8dc *)
(* vbroadcasti128 (%rdx),%ymm0                     #! EA = L0x7fffffd45030; Value = 0x0000000000000000; PC = 0x55555556a8df *)
mov %ymm0 (%L0x7fffffd45030 ++ %L0x7fffffd45030);
(* sub    %rcx,%rdx                                #! PC = 0x55555556a8e4 *)
(* vpxor  %ymm1,%ymm1,%ymm1                        #! PC = 0x55555556a8e7 *)
mov %ymm1 ([0@bit] ++ 256);
(* vinsertf128 $0x0,0x60(%rsi),%ymm1,%ymm1         #! EA = L0x7fffffd45300; Value = 0x02f3c3af95a73f71; PC = 0x55555556a8eb *)
mov %ymm1 (%L0x7fffffd45300 ++ %ymm1[128:256]);
(* vpand  %ymm0,%ymm1,%ymm2                        #! PC = 0x55555556a8f2 *)
mul %ymm2 %ymm1 %ymm0;
(* vmovupd %ymm2,0x240(%r8)                        #! EA = L0x7fffffd44c80; PC = 0x55555556a8f6 *)
mov %L0x7fffffd44c80 %ymm2[0:128];
mov %L0x7fffffd44c90 %ymm2[128:256];
(* vinsertf128 $0x0,0x50(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffd452f0; Value = 0x0787517abc2f6c5d; PC = 0x55555556a8ff *)
mov %ymm2 (%L0x7fffffd452f0 ++ %ymm2[128:256]);
(* vinsertf128 $0x1,0xc0(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffd45360; Value = 0x814e6e0d2cd79e80; PC = 0x55555556a906 *)
mov %ymm2 (%ymm2[0:128] ++ %L0x7fffffd45360);
(* vpand  %ymm0,%ymm2,%ymm3                        #! PC = 0x55555556a910 *)
mul %ymm3 %ymm2 %ymm0;
(* vinsertf128 $0x0,0x40(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffd452e0; Value = 0xb5837fbdf64edf96; PC = 0x55555556a914 *)
mov %ymm4 (%L0x7fffffd452e0 ++ %ymm4[128:256]);
(* vinsertf128 $0x1,0xb0(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffd45350; Value = 0xb8122ed69f0c69e8; PC = 0x55555556a91b *)
mov %ymm4 (%ymm4[0:128] ++ %L0x7fffffd45350);
(* vpand  %ymm0,%ymm4,%ymm5                        #! PC = 0x55555556a925 *)
mul %ymm5 %ymm4 %ymm0;
(* vinsertf128 $0x0,0x30(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffd452d0; Value = 0x95e8a29960d183aa; PC = 0x55555556a929 *)
mov %ymm6 (%L0x7fffffd452d0 ++ %ymm6[128:256]);
(* vinsertf128 $0x1,0xa0(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffd45340; Value = 0xcfc4aff6c0168adb; PC = 0x55555556a930 *)
mov %ymm6 (%ymm6[0:128] ++ %L0x7fffffd45340);
(* vpand  %ymm0,%ymm6,%ymm7                        #! PC = 0x55555556a93a *)
mul %ymm7 %ymm6 %ymm0;
(* vinsertf128 $0x0,0x20(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffd452c0; Value = 0x00d2c2060749af18; PC = 0x55555556a93e *)
mov %ymm8 (%L0x7fffffd452c0 ++ %ymm8[128:256]);
(* vinsertf128 $0x1,0x90(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffd45330; Value = 0x34bf9df8a451c16d; PC = 0x55555556a945 *)
mov %ymm8 (%ymm8[0:128] ++ %L0x7fffffd45330);
(* vpand  %ymm0,%ymm8,%ymm9                        #! PC = 0x55555556a94f *)
mul %ymm9 %ymm8 %ymm0;
(* vinsertf128 $0x0,0x10(%rsi),%ymm10,%ymm10       #! EA = L0x7fffffd452b0; Value = 0xae28bc9d4a530aae; PC = 0x55555556a953 *)
mov %ymm10 (%L0x7fffffd452b0 ++ %ymm10[128:256]);
(* vinsertf128 $0x1,0x80(%rsi),%ymm10,%ymm10       #! EA = L0x7fffffd45320; Value = 0x1039d67a0776870b; PC = 0x55555556a95a *)
mov %ymm10 (%ymm10[0:128] ++ %L0x7fffffd45320);
(* vpand  %ymm0,%ymm10,%ymm11                      #! PC = 0x55555556a964 *)
mul %ymm11 %ymm10 %ymm0;
(* vinsertf128 $0x0,(%rsi),%ymm12,%ymm12           #! EA = L0x7fffffd452a0; Value = 0x9a8f57be9e1a6488; PC = 0x55555556a968 *)
mov %ymm12 (%L0x7fffffd452a0 ++ %ymm12[128:256]);
(* vinsertf128 $0x1,0x70(%rsi),%ymm12,%ymm12       #! EA = L0x7fffffd45310; Value = 0x1a485eac6813a30a; PC = 0x55555556a96e *)
mov %ymm12 (%ymm12[0:128] ++ %L0x7fffffd45310);
(* vpand  %ymm0,%ymm12,%ymm0                       #! PC = 0x55555556a975 *)
mul %ymm0 %ymm12 %ymm0;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd45020; Value = 0x0000000000000000; PC = 0x55555556a979 *)
mov %ymm13 (%L0x7fffffd45020 ++ %L0x7fffffd45020);
(* sub    %rcx,%rdx                                #! PC = 0x55555556a97e *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556a981 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556a986 *)
adds %_ %ymm3 %ymm3 %ymm14;
(* vmovupd %ymm3,0x220(%r8)                        #! EA = L0x7fffffd44c60; PC = 0x55555556a98b *)
mov %L0x7fffffd44c60 %ymm3[0:128];
mov %L0x7fffffd44c70 %ymm3[128:256];
(* vpand  %ymm13,%ymm2,%ymm3                       #! PC = 0x55555556a994 *)
mul %ymm3 %ymm2 %ymm13;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555556a999 *)
adds %_ %ymm5 %ymm5 %ymm3;
(* vpand  %ymm13,%ymm4,%ymm3                       #! PC = 0x55555556a99d *)
mul %ymm3 %ymm4 %ymm13;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555556a9a2 *)
adds %_ %ymm7 %ymm7 %ymm3;
(* vpand  %ymm13,%ymm6,%ymm3                       #! PC = 0x55555556a9a6 *)
mul %ymm3 %ymm6 %ymm13;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556a9ab *)
adds %_ %ymm9 %ymm9 %ymm3;
(* vpand  %ymm13,%ymm8,%ymm3                       #! PC = 0x55555556a9af *)
mul %ymm3 %ymm8 %ymm13;
(* vpxor  %ymm3,%ymm11,%ymm11                      #! PC = 0x55555556a9b4 *)
adds %_ %ymm11 %ymm11 %ymm3;
(* vpand  %ymm13,%ymm10,%ymm3                      #! PC = 0x55555556a9b8 *)
mul %ymm3 %ymm10 %ymm13;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555556a9bd *)
adds %_ %ymm0 %ymm0 %ymm3;
(* vpand  %ymm13,%ymm12,%ymm3                      #! PC = 0x55555556a9c1 *)
mul %ymm3 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd45010; Value = 0xffffffffffffffff; PC = 0x55555556a9c6 *)
mov %ymm13 (%L0x7fffffd45010 ++ %L0x7fffffd45010);
(* sub    %rcx,%rdx                                #! PC = 0x55555556a9cb *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556a9ce *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556a9d3 *)
adds %_ %ymm5 %ymm5 %ymm14;
(* vmovupd %ymm5,0x200(%r8)                        #! EA = L0x7fffffd44c40; PC = 0x55555556a9d8 *)
mov %L0x7fffffd44c40 %ymm5[0:128];
mov %L0x7fffffd44c50 %ymm5[128:256];
(* vpand  %ymm13,%ymm2,%ymm5                       #! PC = 0x55555556a9e1 *)
mul %ymm5 %ymm2 %ymm13;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555556a9e6 *)
adds %_ %ymm7 %ymm7 %ymm5;
(* vpand  %ymm13,%ymm4,%ymm5                       #! PC = 0x55555556a9ea *)
mul %ymm5 %ymm4 %ymm13;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555556a9ef *)
adds %_ %ymm9 %ymm9 %ymm5;
(* vpand  %ymm13,%ymm6,%ymm5                       #! PC = 0x55555556a9f3 *)
mul %ymm5 %ymm6 %ymm13;
(* vpxor  %ymm5,%ymm11,%ymm11                      #! PC = 0x55555556a9f8 *)
adds %_ %ymm11 %ymm11 %ymm5;
(* vpand  %ymm13,%ymm8,%ymm5                       #! PC = 0x55555556a9fc *)
mul %ymm5 %ymm8 %ymm13;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555556aa01 *)
adds %_ %ymm0 %ymm0 %ymm5;
(* vpand  %ymm13,%ymm10,%ymm5                      #! PC = 0x55555556aa05 *)
mul %ymm5 %ymm10 %ymm13;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556aa0a *)
adds %_ %ymm3 %ymm3 %ymm5;
(* vpand  %ymm13,%ymm12,%ymm5                      #! PC = 0x55555556aa0e *)
mul %ymm5 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd45000; Value = 0x0000000000000000; PC = 0x55555556aa13 *)
mov %ymm13 (%L0x7fffffd45000 ++ %L0x7fffffd45000);
(* sub    %rcx,%rdx                                #! PC = 0x55555556aa18 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556aa1b *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556aa20 *)
adds %_ %ymm7 %ymm7 %ymm14;
(* vmovupd %ymm7,0x1e0(%r8)                        #! EA = L0x7fffffd44c20; PC = 0x55555556aa25 *)
mov %L0x7fffffd44c20 %ymm7[0:128];
mov %L0x7fffffd44c30 %ymm7[128:256];
(* vpand  %ymm13,%ymm2,%ymm7                       #! PC = 0x55555556aa2e *)
mul %ymm7 %ymm2 %ymm13;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555556aa33 *)
adds %_ %ymm9 %ymm9 %ymm7;
(* vpand  %ymm13,%ymm4,%ymm7                       #! PC = 0x55555556aa37 *)
mul %ymm7 %ymm4 %ymm13;
(* vpxor  %ymm7,%ymm11,%ymm11                      #! PC = 0x55555556aa3c *)
adds %_ %ymm11 %ymm11 %ymm7;
(* vpand  %ymm13,%ymm6,%ymm7                       #! PC = 0x55555556aa40 *)
mul %ymm7 %ymm6 %ymm13;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555556aa45 *)
adds %_ %ymm0 %ymm0 %ymm7;
(* vpand  %ymm13,%ymm8,%ymm7                       #! PC = 0x55555556aa49 *)
mul %ymm7 %ymm8 %ymm13;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555556aa4e *)
adds %_ %ymm3 %ymm3 %ymm7;
(* vpand  %ymm13,%ymm10,%ymm7                      #! PC = 0x55555556aa52 *)
mul %ymm7 %ymm10 %ymm13;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556aa57 *)
adds %_ %ymm5 %ymm5 %ymm7;
(* vpand  %ymm13,%ymm12,%ymm7                      #! PC = 0x55555556aa5b *)
mul %ymm7 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44ff0; Value = 0xffffffffffffffff; PC = 0x55555556aa60 *)
mov %ymm13 (%L0x7fffffd44ff0 ++ %L0x7fffffd44ff0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556aa65 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556aa68 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556aa6d *)
adds %_ %ymm9 %ymm9 %ymm14;
(* vmovupd %ymm9,0x1c0(%r8)                        #! EA = L0x7fffffd44c00; PC = 0x55555556aa72 *)
mov %L0x7fffffd44c00 %ymm9[0:128];
mov %L0x7fffffd44c10 %ymm9[128:256];
(* vpand  %ymm13,%ymm2,%ymm9                       #! PC = 0x55555556aa7b *)
mul %ymm9 %ymm2 %ymm13;
(* vpxor  %ymm9,%ymm11,%ymm11                      #! PC = 0x55555556aa80 *)
adds %_ %ymm11 %ymm11 %ymm9;
(* vpand  %ymm13,%ymm4,%ymm9                       #! PC = 0x55555556aa85 *)
mul %ymm9 %ymm4 %ymm13;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555556aa8a *)
adds %_ %ymm0 %ymm0 %ymm9;
(* vpand  %ymm13,%ymm6,%ymm9                       #! PC = 0x55555556aa8f *)
mul %ymm9 %ymm6 %ymm13;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555556aa94 *)
adds %_ %ymm3 %ymm3 %ymm9;
(* vpand  %ymm13,%ymm8,%ymm9                       #! PC = 0x55555556aa99 *)
mul %ymm9 %ymm8 %ymm13;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556aa9e *)
adds %_ %ymm5 %ymm5 %ymm9;
(* vpand  %ymm13,%ymm10,%ymm9                      #! PC = 0x55555556aaa3 *)
mul %ymm9 %ymm10 %ymm13;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555556aaa8 *)
adds %_ %ymm7 %ymm7 %ymm9;
(* vpand  %ymm13,%ymm12,%ymm9                      #! PC = 0x55555556aaad *)
mul %ymm9 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44fe0; Value = 0x0000000000000000; PC = 0x55555556aab2 *)
mov %ymm13 (%L0x7fffffd44fe0 ++ %L0x7fffffd44fe0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556aab7 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556aaba *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556aabf *)
adds %_ %ymm11 %ymm11 %ymm14;
(* vmovupd %ymm11,0x1a0(%r8)                       #! EA = L0x7fffffd44be0; PC = 0x55555556aac4 *)
mov %L0x7fffffd44be0 %ymm11[0:128];
mov %L0x7fffffd44bf0 %ymm11[128:256];
(* vpand  %ymm13,%ymm2,%ymm11                      #! PC = 0x55555556aacd *)
mul %ymm11 %ymm2 %ymm13;
(* vpxor  %ymm11,%ymm0,%ymm0                       #! PC = 0x55555556aad2 *)
adds %_ %ymm0 %ymm0 %ymm11;
(* vpand  %ymm13,%ymm4,%ymm11                      #! PC = 0x55555556aad7 *)
mul %ymm11 %ymm4 %ymm13;
(* vpxor  %ymm11,%ymm3,%ymm3                       #! PC = 0x55555556aadc *)
adds %_ %ymm3 %ymm3 %ymm11;
(* vpand  %ymm13,%ymm6,%ymm11                      #! PC = 0x55555556aae1 *)
mul %ymm11 %ymm6 %ymm13;
(* vpxor  %ymm11,%ymm5,%ymm5                       #! PC = 0x55555556aae6 *)
adds %_ %ymm5 %ymm5 %ymm11;
(* vpand  %ymm13,%ymm8,%ymm11                      #! PC = 0x55555556aaeb *)
mul %ymm11 %ymm8 %ymm13;
(* vpxor  %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556aaf0 *)
adds %_ %ymm7 %ymm7 %ymm11;
(* vpand  %ymm13,%ymm10,%ymm11                     #! PC = 0x55555556aaf5 *)
mul %ymm11 %ymm10 %ymm13;
(* vpxor  %ymm11,%ymm9,%ymm9                       #! PC = 0x55555556aafa *)
adds %_ %ymm9 %ymm9 %ymm11;
(* vpand  %ymm13,%ymm12,%ymm11                     #! PC = 0x55555556aaff *)
mul %ymm11 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44fd0; Value = 0xffffffffffffffff; PC = 0x55555556ab04 *)
mov %ymm13 (%L0x7fffffd44fd0 ++ %L0x7fffffd44fd0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556ab09 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556ab0c *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm0,%ymm0                       #! PC = 0x55555556ab11 *)
adds %_ %ymm0 %ymm0 %ymm14;
(* vmovupd %ymm0,0x180(%r8)                        #! EA = L0x7fffffd44bc0; PC = 0x55555556ab16 *)
mov %L0x7fffffd44bc0 %ymm0[0:128];
mov %L0x7fffffd44bd0 %ymm0[128:256];
(* vpand  %ymm13,%ymm2,%ymm0                       #! PC = 0x55555556ab1f *)
mul %ymm0 %ymm2 %ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555556ab24 *)
adds %_ %ymm3 %ymm3 %ymm0;
(* vpand  %ymm13,%ymm4,%ymm0                       #! PC = 0x55555556ab28 *)
mul %ymm0 %ymm4 %ymm13;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555556ab2d *)
adds %_ %ymm5 %ymm5 %ymm0;
(* vpand  %ymm13,%ymm6,%ymm0                       #! PC = 0x55555556ab31 *)
mul %ymm0 %ymm6 %ymm13;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555556ab36 *)
adds %_ %ymm7 %ymm7 %ymm0;
(* vpand  %ymm13,%ymm8,%ymm0                       #! PC = 0x55555556ab3a *)
mul %ymm0 %ymm8 %ymm13;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555556ab3f *)
adds %_ %ymm9 %ymm9 %ymm0;
(* vpand  %ymm13,%ymm10,%ymm0                      #! PC = 0x55555556ab43 *)
mul %ymm0 %ymm10 %ymm13;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555556ab48 *)
adds %_ %ymm11 %ymm11 %ymm0;
(* vpand  %ymm13,%ymm12,%ymm0                      #! PC = 0x55555556ab4c *)
mul %ymm0 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44fc0; Value = 0xffffffffffffffff; PC = 0x55555556ab51 *)
mov %ymm13 (%L0x7fffffd44fc0 ++ %L0x7fffffd44fc0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556ab56 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556ab59 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ab5e *)
adds %_ %ymm3 %ymm3 %ymm14;
(* vmovupd %ymm3,0x160(%r8)                        #! EA = L0x7fffffd44ba0; PC = 0x55555556ab63 *)
mov %L0x7fffffd44ba0 %ymm3[0:128];
mov %L0x7fffffd44bb0 %ymm3[128:256];
(* vpand  %ymm13,%ymm2,%ymm3                       #! PC = 0x55555556ab6c *)
mul %ymm3 %ymm2 %ymm13;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555556ab71 *)
adds %_ %ymm5 %ymm5 %ymm3;
(* vpand  %ymm13,%ymm4,%ymm3                       #! PC = 0x55555556ab75 *)
mul %ymm3 %ymm4 %ymm13;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555556ab7a *)
adds %_ %ymm7 %ymm7 %ymm3;
(* vpand  %ymm13,%ymm6,%ymm3                       #! PC = 0x55555556ab7e *)
mul %ymm3 %ymm6 %ymm13;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556ab83 *)
adds %_ %ymm9 %ymm9 %ymm3;
(* vpand  %ymm13,%ymm8,%ymm3                       #! PC = 0x55555556ab87 *)
mul %ymm3 %ymm8 %ymm13;
(* vpxor  %ymm3,%ymm11,%ymm11                      #! PC = 0x55555556ab8c *)
adds %_ %ymm11 %ymm11 %ymm3;
(* vpand  %ymm13,%ymm10,%ymm3                      #! PC = 0x55555556ab90 *)
mul %ymm3 %ymm10 %ymm13;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555556ab95 *)
adds %_ %ymm0 %ymm0 %ymm3;
(* vpand  %ymm13,%ymm12,%ymm3                      #! PC = 0x55555556ab99 *)
mul %ymm3 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44fb0; Value = 0x0000000000000000; PC = 0x55555556ab9e *)
mov %ymm13 (%L0x7fffffd44fb0 ++ %L0x7fffffd44fb0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556aba3 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556aba6 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556abab *)
adds %_ %ymm5 %ymm5 %ymm14;
(* vmovupd %ymm5,0x140(%r8)                        #! EA = L0x7fffffd44b80; PC = 0x55555556abb0 *)
mov %L0x7fffffd44b80 %ymm5[0:128];
mov %L0x7fffffd44b90 %ymm5[128:256];
(* vpand  %ymm13,%ymm2,%ymm5                       #! PC = 0x55555556abb9 *)
mul %ymm5 %ymm2 %ymm13;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555556abbe *)
adds %_ %ymm7 %ymm7 %ymm5;
(* vpand  %ymm13,%ymm4,%ymm5                       #! PC = 0x55555556abc2 *)
mul %ymm5 %ymm4 %ymm13;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555556abc7 *)
adds %_ %ymm9 %ymm9 %ymm5;
(* vpand  %ymm13,%ymm6,%ymm5                       #! PC = 0x55555556abcb *)
mul %ymm5 %ymm6 %ymm13;
(* vpxor  %ymm5,%ymm11,%ymm11                      #! PC = 0x55555556abd0 *)
adds %_ %ymm11 %ymm11 %ymm5;
(* vpand  %ymm13,%ymm8,%ymm5                       #! PC = 0x55555556abd4 *)
mul %ymm5 %ymm8 %ymm13;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555556abd9 *)
adds %_ %ymm0 %ymm0 %ymm5;
(* vpand  %ymm13,%ymm10,%ymm5                      #! PC = 0x55555556abdd *)
mul %ymm5 %ymm10 %ymm13;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556abe2 *)
adds %_ %ymm3 %ymm3 %ymm5;
(* vpand  %ymm13,%ymm12,%ymm5                      #! PC = 0x55555556abe6 *)
mul %ymm5 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44fa0; Value = 0xffffffffffffffff; PC = 0x55555556abeb *)
mov %ymm13 (%L0x7fffffd44fa0 ++ %L0x7fffffd44fa0);
(* sub    %rcx,%rdx                                #! PC = 0x55555556abf0 *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556abf3 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556abf8 *)
adds %_ %ymm7 %ymm7 %ymm14;
(* vmovupd %ymm7,0x120(%r8)                        #! EA = L0x7fffffd44b60; PC = 0x55555556abfd *)
mov %L0x7fffffd44b60 %ymm7[0:128];
mov %L0x7fffffd44b70 %ymm7[128:256];
(* vpand  %ymm13,%ymm2,%ymm7                       #! PC = 0x55555556ac06 *)
mul %ymm7 %ymm2 %ymm13;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555556ac0b *)
adds %_ %ymm9 %ymm9 %ymm7;
(* vpand  %ymm13,%ymm4,%ymm7                       #! PC = 0x55555556ac0f *)
mul %ymm7 %ymm4 %ymm13;
(* vpxor  %ymm7,%ymm11,%ymm11                      #! PC = 0x55555556ac14 *)
adds %_ %ymm11 %ymm11 %ymm7;
(* vpand  %ymm13,%ymm6,%ymm7                       #! PC = 0x55555556ac18 *)
mul %ymm7 %ymm6 %ymm13;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555556ac1d *)
adds %_ %ymm0 %ymm0 %ymm7;
(* vpand  %ymm13,%ymm8,%ymm7                       #! PC = 0x55555556ac21 *)
mul %ymm7 %ymm8 %ymm13;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555556ac26 *)
adds %_ %ymm3 %ymm3 %ymm7;
(* vpand  %ymm13,%ymm10,%ymm7                      #! PC = 0x55555556ac2a *)
mul %ymm7 %ymm10 %ymm13;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556ac2f *)
adds %_ %ymm5 %ymm5 %ymm7;
(* vpand  %ymm13,%ymm12,%ymm7                      #! PC = 0x55555556ac33 *)
mul %ymm7 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44f90; Value = 0x0000000000000000; PC = 0x55555556ac38 *)
mov %ymm13 (%L0x7fffffd44f90 ++ %L0x7fffffd44f90);
(* sub    %rcx,%rdx                                #! PC = 0x55555556ac3d *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556ac40 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ac45 *)
adds %_ %ymm9 %ymm9 %ymm14;
(* vmovupd %ymm9,0x100(%r8)                        #! EA = L0x7fffffd44b40; PC = 0x55555556ac4a *)
mov %L0x7fffffd44b40 %ymm9[0:128];
mov %L0x7fffffd44b50 %ymm9[128:256];
(* vpand  %ymm13,%ymm2,%ymm9                       #! PC = 0x55555556ac53 *)
mul %ymm9 %ymm2 %ymm13;
(* vpxor  %ymm9,%ymm11,%ymm11                      #! PC = 0x55555556ac58 *)
adds %_ %ymm11 %ymm11 %ymm9;
(* vpand  %ymm13,%ymm4,%ymm9                       #! PC = 0x55555556ac5d *)
mul %ymm9 %ymm4 %ymm13;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555556ac62 *)
adds %_ %ymm0 %ymm0 %ymm9;
(* vpand  %ymm13,%ymm6,%ymm9                       #! PC = 0x55555556ac67 *)
mul %ymm9 %ymm6 %ymm13;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555556ac6c *)
adds %_ %ymm3 %ymm3 %ymm9;
(* vpand  %ymm13,%ymm8,%ymm9                       #! PC = 0x55555556ac71 *)
mul %ymm9 %ymm8 %ymm13;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556ac76 *)
adds %_ %ymm5 %ymm5 %ymm9;
(* vpand  %ymm13,%ymm10,%ymm9                      #! PC = 0x55555556ac7b *)
mul %ymm9 %ymm10 %ymm13;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555556ac80 *)
adds %_ %ymm7 %ymm7 %ymm9;
(* vpand  %ymm13,%ymm12,%ymm9                      #! PC = 0x55555556ac85 *)
mul %ymm9 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44f80; Value = 0xffffffffffffffff; PC = 0x55555556ac8a *)
mov %ymm13 (%L0x7fffffd44f80 ++ %L0x7fffffd44f80);
(* sub    %rcx,%rdx                                #! PC = 0x55555556ac8f *)
(* vpand  %ymm13,%ymm1,%ymm14                      #! PC = 0x55555556ac92 *)
mul %ymm14 %ymm1 %ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ac97 *)
adds %_ %ymm11 %ymm11 %ymm14;
(* vmovupd %ymm11,0xe0(%r8)                        #! EA = L0x7fffffd44b20; PC = 0x55555556ac9c *)
mov %L0x7fffffd44b20 %ymm11[0:128];
mov %L0x7fffffd44b30 %ymm11[128:256];
(* vpand  %ymm13,%ymm2,%ymm11                      #! PC = 0x55555556aca5 *)
mul %ymm11 %ymm2 %ymm13;
(* vpxor  %ymm11,%ymm0,%ymm0                       #! PC = 0x55555556acaa *)
adds %_ %ymm0 %ymm0 %ymm11;
(* vpand  %ymm13,%ymm4,%ymm11                      #! PC = 0x55555556acaf *)
mul %ymm11 %ymm4 %ymm13;
(* vpxor  %ymm11,%ymm3,%ymm3                       #! PC = 0x55555556acb4 *)
adds %_ %ymm3 %ymm3 %ymm11;
(* vpand  %ymm13,%ymm6,%ymm11                      #! PC = 0x55555556acb9 *)
mul %ymm11 %ymm6 %ymm13;
(* vpxor  %ymm11,%ymm5,%ymm5                       #! PC = 0x55555556acbe *)
adds %_ %ymm5 %ymm5 %ymm11;
(* vpand  %ymm13,%ymm8,%ymm11                      #! PC = 0x55555556acc3 *)
mul %ymm11 %ymm8 %ymm13;
(* vpxor  %ymm11,%ymm7,%ymm7                       #! PC = 0x55555556acc8 *)
adds %_ %ymm7 %ymm7 %ymm11;
(* vpand  %ymm13,%ymm10,%ymm11                     #! PC = 0x55555556accd *)
mul %ymm11 %ymm10 %ymm13;
(* vpxor  %ymm11,%ymm9,%ymm9                       #! PC = 0x55555556acd2 *)
adds %_ %ymm9 %ymm9 %ymm11;
(* vpand  %ymm13,%ymm12,%ymm11                     #! PC = 0x55555556acd7 *)
mul %ymm11 %ymm12 %ymm13;
(* vbroadcasti128 (%rdx),%ymm13                    #! EA = L0x7fffffd44f70; Value = 0x0000000000000000; PC = 0x55555556acdc *)
mov %ymm13 (%L0x7fffffd44f70 ++ %L0x7fffffd44f70);
(* sub    %rcx,%rdx                                #! PC = 0x55555556ace1 *)
(* vpand  %ymm13,%ymm1,%ymm1                       #! PC = 0x55555556ace4 *)
mul %ymm1 %ymm1 %ymm13;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555556ace9 *)
adds %_ %ymm0 %ymm0 %ymm1;
(* vmovupd %ymm0,0xc0(%r8)                         #! EA = L0x7fffffd44b00; PC = 0x55555556aced *)
mov %L0x7fffffd44b00 %ymm0[0:128];
mov %L0x7fffffd44b10 %ymm0[128:256];
(* vpand  %ymm13,%ymm2,%ymm0                       #! PC = 0x55555556acf6 *)
mul %ymm0 %ymm2 %ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555556acfb *)
adds %_ %ymm3 %ymm3 %ymm0;
(* vpand  %ymm13,%ymm4,%ymm0                       #! PC = 0x55555556acff *)
mul %ymm0 %ymm4 %ymm13;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555556ad04 *)
adds %_ %ymm5 %ymm5 %ymm0;
(* vpand  %ymm13,%ymm6,%ymm0                       #! PC = 0x55555556ad08 *)
mul %ymm0 %ymm6 %ymm13;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555556ad0d *)
adds %_ %ymm7 %ymm7 %ymm0;
(* vpand  %ymm13,%ymm8,%ymm0                       #! PC = 0x55555556ad11 *)
mul %ymm0 %ymm8 %ymm13;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555556ad16 *)
adds %_ %ymm9 %ymm9 %ymm0;
(* vpand  %ymm13,%ymm10,%ymm0                      #! PC = 0x55555556ad1a *)
mul %ymm0 %ymm10 %ymm13;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555556ad1f *)
adds %_ %ymm11 %ymm11 %ymm0;
(* vpand  %ymm13,%ymm12,%ymm0                      #! PC = 0x55555556ad23 *)
mul %ymm0 %ymm12 %ymm13;
(* vmovupd %ymm3,0xa0(%r8)                         #! EA = L0x7fffffd44ae0; PC = 0x55555556ad28 *)
mov %L0x7fffffd44ae0 %ymm3[0:128];
mov %L0x7fffffd44af0 %ymm3[128:256];
(* vmovupd %ymm5,0x80(%r8)                         #! EA = L0x7fffffd44ac0; PC = 0x55555556ad31 *)
mov %L0x7fffffd44ac0 %ymm5[0:128];
mov %L0x7fffffd44ad0 %ymm5[128:256];
(* vmovupd %ymm7,0x60(%r8)                         #! EA = L0x7fffffd44aa0; PC = 0x55555556ad3a *)
mov %L0x7fffffd44aa0 %ymm7[0:128];
mov %L0x7fffffd44ab0 %ymm7[128:256];
(* vmovupd %ymm9,0x40(%r8)                         #! EA = L0x7fffffd44a80; PC = 0x55555556ad40 *)
mov %L0x7fffffd44a80 %ymm9[0:128];
mov %L0x7fffffd44a90 %ymm9[128:256];
(* vmovupd %ymm11,0x20(%r8)                        #! EA = L0x7fffffd44a60; PC = 0x55555556ad46 *)
mov %L0x7fffffd44a60 %ymm11[0:128];
mov %L0x7fffffd44a70 %ymm11[128:256];
(* vmovupd %ymm0,(%r8)                             #! EA = L0x7fffffd44a40; PC = 0x55555556ad4c *)
mov %L0x7fffffd44a40 %ymm0[0:128];
mov %L0x7fffffd44a50 %ymm0[128:256];
(* vzeroupper                                      #! PC = 0x55555556ad51 *)
mov %xmm0 %ymm0[0:128];
mov %xmm1 %ymm1[0:128];
mov %xmm2 %ymm2[0:128];
mov %xmm3 %ymm3[0:128];
mov %xmm4 %ymm4[0:128];
mov %xmm5 %ymm5[0:128];
mov %xmm6 %ymm6[0:128];
mov %xmm7 %ymm7[0:128];
mov %xmm8 %ymm8[0:128];
mov %xmm9 %ymm9[0:128];
mov %xmm10 %ymm10[0:128];
mov %xmm11 %ymm11[0:128];
mov %xmm12 %ymm12[0:128];
mov %xmm13 %ymm13[0:128];
mov %xmm14 %ymm14[0:128];
(* movdqu 0x230(%r8),%xmm0                         #! EA = L0x7fffffd44c70; Value = 0x0000000000000000; PC = 0x55555556ad54 *)
mov %xmm0 %L0x7fffffd44c70;
(* movdqa %xmm0,%xmm1                              #! PC = 0x55555556ad5d *)
mov %xmm1 %xmm0;
(* movdqa %xmm0,%xmm2                              #! PC = 0x55555556ad61 *)
mov %xmm2 %xmm0;
(* movdqa %xmm0,%xmm3                              #! PC = 0x55555556ad65 *)
mov %xmm3 %xmm0;
(* movdqa %xmm0,%xmm0                              #! PC = 0x55555556ad69 *)
mov %xmm0 %xmm0;
(* movdqu 0x210(%r8),%xmm4                         #! EA = L0x7fffffd44c50; Value = 0x0000000000000000; PC = 0x55555556ad6d *)
mov %xmm4 %L0x7fffffd44c50;
(* movdqa %xmm4,%xmm5                              #! PC = 0x55555556ad76 *)
mov %xmm5 %xmm4;
(* vpxor  %xmm4,%xmm1,%xmm1                        #! PC = 0x55555556ad7a *)
adds %_ %xmm1 %xmm1 %xmm4;
(* movdqa %xmm4,%xmm6                              #! PC = 0x55555556ad7e *)
mov %xmm6 %xmm4;
(* vpxor  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555556ad82 *)
adds %_ %xmm3 %xmm3 %xmm4;
(* movdqu 0x1f0(%r8),%xmm4                         #! EA = L0x7fffffd44c30; Value = 0x814e6e0d2cd79e80; PC = 0x55555556ad86 *)
mov %xmm4 %L0x7fffffd44c30;
(* movdqa %xmm4,%xmm7                              #! PC = 0x55555556ad8f *)
mov %xmm7 %xmm4;
(* vpxor  %xmm4,%xmm5,%xmm5                        #! PC = 0x55555556ad93 *)
adds %_ %xmm5 %xmm5 %xmm4;
(* vpxor  %xmm4,%xmm2,%xmm2                        #! PC = 0x55555556ad97 *)
adds %_ %xmm2 %xmm2 %xmm4;
(* vpxor  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555556ad9b *)
adds %_ %xmm4 %xmm6 %xmm4;
(* movdqu 0x1d0(%r8),%xmm6                         #! EA = L0x7fffffd44c10; Value = 0xb8122ed69f0c69e8; PC = 0x55555556ad9f *)
mov %xmm6 %L0x7fffffd44c10;
(* movdqa %xmm6,%xmm8                              #! PC = 0x55555556ada8 *)
mov %xmm8 %xmm6;
(* vpxor  %xmm6,%xmm7,%xmm7                        #! PC = 0x55555556adad *)
adds %_ %xmm7 %xmm7 %xmm6;
(* vpxor  %xmm6,%xmm1,%xmm1                        #! PC = 0x55555556adb1 *)
adds %_ %xmm1 %xmm1 %xmm6;
(* vpxor  %xmm6,%xmm2,%xmm2                        #! PC = 0x55555556adb5 *)
adds %_ %xmm2 %xmm2 %xmm6;
(* movdqu 0x1b0(%r8),%xmm6                         #! EA = L0x7fffffd44bf0; Value = 0x4e8ac1fbecc1145b; PC = 0x55555556adb9 *)
mov %xmm6 %L0x7fffffd44bf0;
(* movdqa %xmm6,%xmm9                              #! PC = 0x55555556adc2 *)
mov %xmm9 %xmm6;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x55555556adc7 *)
adds %_ %xmm8 %xmm8 %xmm6;
(* vpxor  %xmm6,%xmm5,%xmm5                        #! PC = 0x55555556adcb *)
adds %_ %xmm5 %xmm5 %xmm6;
(* vpxor  %xmm6,%xmm1,%xmm1                        #! PC = 0x55555556adcf *)
adds %_ %xmm1 %xmm1 %xmm6;
(* movdqu 0x190(%r8),%xmm6                         #! EA = L0x7fffffd44bd0; Value = 0x8cadb32e3b5da885; PC = 0x55555556add3 *)
mov %xmm6 %L0x7fffffd44bd0;
(* movdqa %xmm6,%xmm10                             #! PC = 0x55555556addc *)
mov %xmm10 %xmm6;
(* vpxor  %xmm6,%xmm9,%xmm9                        #! PC = 0x55555556ade1 *)
adds %_ %xmm9 %xmm9 %xmm6;
(* vpxor  %xmm6,%xmm7,%xmm7                        #! PC = 0x55555556ade5 *)
adds %_ %xmm7 %xmm7 %xmm6;
(* vpxor  %xmm6,%xmm5,%xmm5                        #! PC = 0x55555556ade9 *)
adds %_ %xmm5 %xmm5 %xmm6;
(* movdqu 0x170(%r8),%xmm6                         #! EA = L0x7fffffd44bb0; Value = 0x5eb31781ebb79350; PC = 0x55555556aded *)
mov %xmm6 %L0x7fffffd44bb0;
(* vpxor  0x240(%r8),%xmm6,%xmm6                   #! EA = L0x7fffffd44c80; Value = 0x0000000000000000; PC = 0x55555556adf6 *)
adds %_ %xmm6 %xmm6 %L0x7fffffd44c80;
(* movdqa %xmm6,%xmm11                             #! PC = 0x55555556adff *)
mov %xmm11 %xmm6;
(* vpxor  %xmm6,%xmm10,%xmm10                      #! PC = 0x55555556ae04 *)
adds %_ %xmm10 %xmm10 %xmm6;
(* vpxor  %xmm6,%xmm8,%xmm8                        #! PC = 0x55555556ae08 *)
adds %_ %xmm8 %xmm8 %xmm6;
(* vpxor  %xmm6,%xmm7,%xmm6                        #! PC = 0x55555556ae0c *)
adds %_ %xmm6 %xmm7 %xmm6;
(* movdqu 0x150(%r8),%xmm7                         #! EA = L0x7fffffd44b90; Value = 0x17ab838f7f99950f; PC = 0x55555556ae10 *)
mov %xmm7 %L0x7fffffd44b90;
(* vpxor  0x220(%r8),%xmm7,%xmm7                   #! EA = L0x7fffffd44c60; Value = 0x0000000000000000; PC = 0x55555556ae19 *)
adds %_ %xmm7 %xmm7 %L0x7fffffd44c60;
(* movdqa %xmm7,%xmm12                             #! PC = 0x55555556ae22 *)
mov %xmm12 %xmm7;
(* vpxor  %xmm7,%xmm11,%xmm11                      #! PC = 0x55555556ae27 *)
adds %_ %xmm11 %xmm11 %xmm7;
(* vpxor  %xmm7,%xmm9,%xmm9                        #! PC = 0x55555556ae2b *)
adds %_ %xmm9 %xmm9 %xmm7;
(* vpxor  %xmm7,%xmm8,%xmm7                        #! PC = 0x55555556ae2f *)
adds %_ %xmm7 %xmm8 %xmm7;
(* movdqu 0x130(%r8),%xmm8                         #! EA = L0x7fffffd44b70; Value = 0x67ef575a586c6438; PC = 0x55555556ae33 *)
mov %xmm8 %L0x7fffffd44b70;
(* vpxor  0x200(%r8),%xmm8,%xmm8                   #! EA = L0x7fffffd44c40; Value = 0x02f3c3af95a73f71; PC = 0x55555556ae3c *)
adds %_ %xmm8 %xmm8 %L0x7fffffd44c40;
(* movdqa %xmm8,%xmm13                             #! PC = 0x55555556ae45 *)
mov %xmm13 %xmm8;
(* vpxor  %xmm8,%xmm12,%xmm12                      #! PC = 0x55555556ae4a *)
adds %_ %xmm12 %xmm12 %xmm8;
(* vpxor  %xmm8,%xmm10,%xmm10                      #! PC = 0x55555556ae4f *)
adds %_ %xmm10 %xmm10 %xmm8;
(* vpxor  %xmm8,%xmm9,%xmm8                        #! PC = 0x55555556ae54 *)
adds %_ %xmm8 %xmm9 %xmm8;
(* vpxor  0x110(%r8),%xmm0,%xmm0                   #! EA = L0x7fffffd44b50; Value = 0x607d02af2083763c; PC = 0x55555556ae59 *)
adds %_ %xmm0 %xmm0 %L0x7fffffd44b50;
(* vpxor  0x1e0(%r8),%xmm0,%xmm0                   #! EA = L0x7fffffd44c20; Value = 0x0787517abc2f6c5d; PC = 0x55555556ae62 *)
adds %_ %xmm0 %xmm0 %L0x7fffffd44c20;
(* movdqa %xmm0,%xmm9                              #! PC = 0x55555556ae6b *)
mov %xmm9 %xmm0;
(* vpxor  %xmm0,%xmm13,%xmm13                      #! PC = 0x55555556ae70 *)
adds %_ %xmm13 %xmm13 %xmm0;
(* vpxor  %xmm0,%xmm11,%xmm11                      #! PC = 0x55555556ae74 *)
adds %_ %xmm11 %xmm11 %xmm0;
(* vpxor  %xmm0,%xmm10,%xmm0                       #! PC = 0x55555556ae78 *)
adds %_ %xmm0 %xmm10 %xmm0;
(* vpxor  0xf0(%r8),%xmm3,%xmm3                    #! EA = L0x7fffffd44b30; Value = 0x9c9465543c2b2f8e; PC = 0x55555556ae7c *)
adds %_ %xmm3 %xmm3 %L0x7fffffd44b30;
(* vpxor  0x1c0(%r8),%xmm3,%xmm3                   #! EA = L0x7fffffd44c00; Value = 0xb770bc1263e9e0e7; PC = 0x55555556ae85 *)
adds %_ %xmm3 %xmm3 %L0x7fffffd44c00;
(* movdqa %xmm3,%xmm10                             #! PC = 0x55555556ae8e *)
mov %xmm10 %xmm3;
(* vpxor  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555556ae93 *)
adds %_ %xmm9 %xmm9 %xmm3;
(* vpxor  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555556ae97 *)
adds %_ %xmm12 %xmm12 %xmm3;
(* vpxor  %xmm3,%xmm11,%xmm3                       #! PC = 0x55555556ae9b *)
adds %_ %xmm3 %xmm11 %xmm3;
(* vpxor  0xd0(%r8),%xmm4,%xmm4                    #! EA = L0x7fffffd44b10; Value = 0x44fb492d83a4305a; PC = 0x55555556ae9f *)
adds %_ %xmm4 %xmm4 %L0x7fffffd44b10;
(* vpxor  0x1a0(%r8),%xmm4,%xmm4                   #! EA = L0x7fffffd44be0; Value = 0x926ff3e3dcfeeff7; PC = 0x55555556aea8 *)
adds %_ %xmm4 %xmm4 %L0x7fffffd44be0;
(* movdqa %xmm4,%xmm11                             #! PC = 0x55555556aeb1 *)
mov %xmm11 %xmm4;
(* vpxor  %xmm4,%xmm10,%xmm10                      #! PC = 0x55555556aeb6 *)
adds %_ %xmm10 %xmm10 %xmm4;
(* vpxor  %xmm4,%xmm13,%xmm13                      #! PC = 0x55555556aeba *)
adds %_ %xmm13 %xmm13 %xmm4;
(* vpxor  %xmm4,%xmm12,%xmm4                       #! PC = 0x55555556aebe *)
adds %_ %xmm4 %xmm12 %xmm4;
(* vpxor  0x180(%r8),%xmm2,%xmm2                   #! EA = L0x7fffffd44bc0; Value = 0xb7a27e1464a04fff; PC = 0x55555556aec2 *)
adds %_ %xmm2 %xmm2 %L0x7fffffd44bc0;
(* vpxor  0xb0(%r8),%xmm2,%xmm2                    #! EA = L0x7fffffd44af0; Value = 0x96e5ed82534e0b8f; PC = 0x55555556aecb *)
adds %_ %xmm2 %xmm2 %L0x7fffffd44af0;
(* movdqu %xmm2,0xc0(%rdi)                         #! EA = L0x7fffffd44f60; PC = 0x55555556aed4 *)
mov %L0x7fffffd44f60 %xmm2;
(* vpxor  0x160(%r8),%xmm1,%xmm1                   #! EA = L0x7fffffd44ba0; Value = 0x3eb48cd1030ada28; PC = 0x55555556aedc *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44ba0;
(* vpxor  0x90(%r8),%xmm1,%xmm1                    #! EA = L0x7fffffd44ad0; Value = 0xdffd798cc7600dd0; PC = 0x55555556aee5 *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44ad0;
(* movdqu %xmm1,0xb0(%rdi)                         #! EA = L0x7fffffd44f50; PC = 0x55555556aeee *)
mov %L0x7fffffd44f50 %xmm1;
(* vpxor  0x140(%r8),%xmm5,%xmm1                   #! EA = L0x7fffffd44b80; Value = 0x2859bb7fd332785b; PC = 0x55555556aef6 *)
adds %_ %xmm1 %xmm5 %L0x7fffffd44b80;
(* vpxor  0x70(%r8),%xmm1,%xmm1                    #! EA = L0x7fffffd44ab0; Value = 0x2ef7c354cc426267; PC = 0x55555556aeff *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44ab0;
(* movdqu %xmm1,0xa0(%rdi)                         #! EA = L0x7fffffd44f40; PC = 0x55555556af05 *)
mov %L0x7fffffd44f40 %xmm1;
(* vpxor  0x120(%r8),%xmm6,%xmm1                   #! EA = L0x7fffffd44b60; Value = 0x8cb0a216496b69e3; PC = 0x55555556af0d *)
adds %_ %xmm1 %xmm6 %L0x7fffffd44b60;
(* vpxor  0x50(%r8),%xmm1,%xmm1                    #! EA = L0x7fffffd44a90; Value = 0x1039d67a0776870b; PC = 0x55555556af16 *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44a90;
(* movdqu %xmm1,0x90(%rdi)                         #! EA = L0x7fffffd44f30; PC = 0x55555556af1c *)
mov %L0x7fffffd44f30 %xmm1;
(* vpxor  0x100(%r8),%xmm7,%xmm1                   #! EA = L0x7fffffd44b40; Value = 0x0832665b45ad2467; PC = 0x55555556af24 *)
adds %_ %xmm1 %xmm7 %L0x7fffffd44b40;
(* vpxor  0x30(%r8),%xmm1,%xmm1                    #! EA = L0x7fffffd44a70; Value = 0x1a485eac6813a30a; PC = 0x55555556af2d *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44a70;
(* movdqu %xmm1,0x80(%rdi)                         #! EA = L0x7fffffd44f20; PC = 0x55555556af33 *)
mov %L0x7fffffd44f20 %xmm1;
(* vpxor  0xe0(%r8),%xmm8,%xmm1                    #! EA = L0x7fffffd44b20; Value = 0x198ac2892ef34551; PC = 0x55555556af3b *)
adds %_ %xmm1 %xmm8 %L0x7fffffd44b20;
(* vpxor  0x10(%r8),%xmm1,%xmm1                    #! EA = L0x7fffffd44a50; Value = 0x0000000000000000; PC = 0x55555556af44 *)
adds %_ %xmm1 %xmm1 %L0x7fffffd44a50;
(* movdqu %xmm1,0x70(%rdi)                         #! EA = L0x7fffffd44f10; PC = 0x55555556af4a *)
mov %L0x7fffffd44f10 %xmm1;
(* vpxor  0xc0(%r8),%xmm0,%xmm0                    #! EA = L0x7fffffd44b00; Value = 0xa6c818c008b781d1; PC = 0x55555556af4f *)
adds %_ %xmm0 %xmm0 %L0x7fffffd44b00;
(* movdqu %xmm0,0x60(%rdi)                         #! EA = L0x7fffffd44f00; PC = 0x55555556af58 *)
mov %L0x7fffffd44f00 %xmm0;
(* vpxor  0xa0(%r8),%xmm3,%xmm0                    #! EA = L0x7fffffd44ae0; Value = 0x2fdeea056f1d1406; PC = 0x55555556af5d *)
adds %_ %xmm0 %xmm3 %L0x7fffffd44ae0;
(* movdqu %xmm0,0x50(%rdi)                         #! EA = L0x7fffffd44ef0; PC = 0x55555556af66 *)
mov %L0x7fffffd44ef0 %xmm0;
(* vpxor  0x80(%r8),%xmm4,%xmm0                    #! EA = L0x7fffffd44ac0; Value = 0x3bc01e042a828904; PC = 0x55555556af6b *)
adds %_ %xmm0 %xmm4 %L0x7fffffd44ac0;
(* movdqu %xmm0,0x40(%rdi)                         #! EA = L0x7fffffd44ee0; PC = 0x55555556af74 *)
mov %L0x7fffffd44ee0 %xmm0;
(* vpxor  0x60(%r8),%xmm13,%xmm0                   #! EA = L0x7fffffd44aa0; Value = 0x9a5d95b89953cb90; PC = 0x55555556af79 *)
adds %_ %xmm0 %xmm13 %L0x7fffffd44aa0;
(* movdqu %xmm0,0x30(%rdi)                         #! EA = L0x7fffffd44ed0; PC = 0x55555556af7f *)
mov %L0x7fffffd44ed0 %xmm0;
(* vpxor  0x40(%r8),%xmm9,%xmm0                    #! EA = L0x7fffffd44a80; Value = 0xae28bc9d4a530aae; PC = 0x55555556af84 *)
adds %_ %xmm0 %xmm9 %L0x7fffffd44a80;
(* movdqu %xmm0,0x20(%rdi)                         #! EA = L0x7fffffd44ec0; PC = 0x55555556af8a *)
mov %L0x7fffffd44ec0 %xmm0;
(* vpxor  0x20(%r8),%xmm10,%xmm0                   #! EA = L0x7fffffd44a60; Value = 0x9a8f57be9e1a6488; PC = 0x55555556af8f *)
adds %_ %xmm0 %xmm10 %L0x7fffffd44a60;
(* movdqu %xmm0,0x10(%rdi)                         #! EA = L0x7fffffd44eb0; PC = 0x55555556af95 *)
mov %L0x7fffffd44eb0 %xmm0;
(* vpxor  (%r8),%xmm11,%xmm0                       #! EA = L0x7fffffd44a40; Value = 0x0000000000000000; PC = 0x55555556af9a *)
adds %_ %xmm0 %xmm11 %L0x7fffffd44a40;
(* movdqu %xmm0,(%rdi)                             #! EA = L0x7fffffd44ea0; PC = 0x55555556af9f *)
mov %L0x7fffffd44ea0 %xmm0;
(* add    %r11,%rsp                                #! PC = 0x55555556afa3 *)
(* #! <- SP = 0x7fffffd44cb8 *)
#! 0x7fffffd44cb8 = 0x7fffffd44cb8;
(* #ret                                            #! PC = 0x55555556afa6 *)
#ret                                            #! 0x55555556afa6 = 0x55555556afa6;


mov %r00 %L0x7fffffd44ea0;
mov %r01 %L0x7fffffd44eb0;
mov %r02 %L0x7fffffd44ec0;
mov %r03 %L0x7fffffd44ed0;
mov %r04 %L0x7fffffd44ee0;
mov %r05 %L0x7fffffd44ef0;
mov %r06 %L0x7fffffd44f00;
mov %r07 %L0x7fffffd44f10;
mov %r08 %L0x7fffffd44f20;
mov %r09 %L0x7fffffd44f30;
mov %r10 %L0x7fffffd44f40;
mov %r11 %L0x7fffffd44f50;
mov %r12 %L0x7fffffd44f60;

{
  and [
    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                   %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
           poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                   %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[1], %r01[1], %r02[1], %r03[1], %r04[1], %r05[1],
                   %r06[1], %r07[1], %r08[1], %r09[1], %r10[1], %r11[1], %r12[1]])
          (poly z [%a00[1], %a01[1], %a02[1], %a03[1], %a04[1], %a05[1],
                   %a06[1], %a07[1], %a08[1], %a09[1], %a10[1], %a11[1], %a12[1]] *
           poly z [%b00[1], %b01[1], %b02[1], %b03[1], %b04[1], %b05[1],
                   %b06[1], %b07[1], %b08[1], %b09[1], %b10[1], %b11[1], %b12[1]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[2], %r01[2], %r02[2], %r03[2], %r04[2], %r05[2],
                   %r06[2], %r07[2], %r08[2], %r09[2], %r10[2], %r11[2], %r12[2]])
          (poly z [%a00[2], %a01[2], %a02[2], %a03[2], %a04[2], %a05[2],
                   %a06[2], %a07[2], %a08[2], %a09[2], %a10[2], %a11[2], %a12[2]] *
           poly z [%b00[2], %b01[2], %b02[2], %b03[2], %b04[2], %b05[2],
                   %b06[2], %b07[2], %b08[2], %b09[2], %b10[2], %b11[2], %b12[2]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[3], %r01[3], %r02[3], %r03[3], %r04[3], %r05[3],
                   %r06[3], %r07[3], %r08[3], %r09[3], %r10[3], %r11[3], %r12[3]])
          (poly z [%a00[3], %a01[3], %a02[3], %a03[3], %a04[3], %a05[3],
                   %a06[3], %a07[3], %a08[3], %a09[3], %a10[3], %a11[3], %a12[3]] *
           poly z [%b00[3], %b01[3], %b02[3], %b03[3], %b04[3], %b05[3],
                   %b06[3], %b07[3], %b08[3], %b09[3], %b10[3], %b11[3], %b12[3]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[4], %r01[4], %r02[4], %r03[4], %r04[4], %r05[4],
                   %r06[4], %r07[4], %r08[4], %r09[4], %r10[4], %r11[4], %r12[4]])
          (poly z [%a00[4], %a01[4], %a02[4], %a03[4], %a04[4], %a05[4],
                   %a06[4], %a07[4], %a08[4], %a09[4], %a10[4], %a11[4], %a12[4]] *
           poly z [%b00[4], %b01[4], %b02[4], %b03[4], %b04[4], %b05[4],
                   %b06[4], %b07[4], %b08[4], %b09[4], %b10[4], %b11[4], %b12[4]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[5], %r01[5], %r02[5], %r03[5], %r04[5], %r05[5],
                   %r06[5], %r07[5], %r08[5], %r09[5], %r10[5], %r11[5], %r12[5]])
          (poly z [%a00[5], %a01[5], %a02[5], %a03[5], %a04[5], %a05[5],
                   %a06[5], %a07[5], %a08[5], %a09[5], %a10[5], %a11[5], %a12[5]] *
           poly z [%b00[5], %b01[5], %b02[5], %b03[5], %b04[5], %b05[5],
                   %b06[5], %b07[5], %b08[5], %b09[5], %b10[5], %b11[5], %b12[5]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[6], %r01[6], %r02[6], %r03[6], %r04[6], %r05[6],
                   %r06[6], %r07[6], %r08[6], %r09[6], %r10[6], %r11[6], %r12[6]])
          (poly z [%a00[6], %a01[6], %a02[6], %a03[6], %a04[6], %a05[6],
                   %a06[6], %a07[6], %a08[6], %a09[6], %a10[6], %a11[6], %a12[6]] *
           poly z [%b00[6], %b01[6], %b02[6], %b03[6], %b04[6], %b05[6],
                   %b06[6], %b07[6], %b08[6], %b09[6], %b10[6], %b11[6], %b12[6]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[7], %r01[7], %r02[7], %r03[7], %r04[7], %r05[7],
                   %r06[7], %r07[7], %r08[7], %r09[7], %r10[7], %r11[7], %r12[7]])
          (poly z [%a00[7], %a01[7], %a02[7], %a03[7], %a04[7], %a05[7],
                   %a06[7], %a07[7], %a08[7], %a09[7], %a10[7], %a11[7], %a12[7]] *
           poly z [%b00[7], %b01[7], %b02[7], %b03[7], %b04[7], %b05[7],
                   %b06[7], %b07[7], %b08[7], %b09[7], %b10[7], %b11[7], %b12[7]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[8], %r01[8], %r02[8], %r03[8], %r04[8], %r05[8],
                   %r06[8], %r07[8], %r08[8], %r09[8], %r10[8], %r11[8], %r12[8]])
          (poly z [%a00[8], %a01[8], %a02[8], %a03[8], %a04[8], %a05[8],
                   %a06[8], %a07[8], %a08[8], %a09[8], %a10[8], %a11[8], %a12[8]] *
           poly z [%b00[8], %b01[8], %b02[8], %b03[8], %b04[8], %b05[8],
                   %b06[8], %b07[8], %b08[8], %b09[8], %b10[8], %b11[8], %b12[8]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[9], %r01[9], %r02[9], %r03[9], %r04[9], %r05[9],
                   %r06[9], %r07[9], %r08[9], %r09[9], %r10[9], %r11[9], %r12[9]])
          (poly z [%a00[9], %a01[9], %a02[9], %a03[9], %a04[9], %a05[9],
                   %a06[9], %a07[9], %a08[9], %a09[9], %a10[9], %a11[9], %a12[9]] *
           poly z [%b00[9], %b01[9], %b02[9], %b03[9], %b04[9], %b05[9],
                   %b06[9], %b07[9], %b08[9], %b09[9], %b10[9], %b11[9], %b12[9]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[10], %r01[10], %r02[10], %r03[10], %r04[10], %r05[10],
                   %r06[10], %r07[10], %r08[10], %r09[10], %r10[10], %r11[10], %r12[10]])
          (poly z [%a00[10], %a01[10], %a02[10], %a03[10], %a04[10], %a05[10],
                   %a06[10], %a07[10], %a08[10], %a09[10], %a10[10], %a11[10], %a12[10]] *
           poly z [%b00[10], %b01[10], %b02[10], %b03[10], %b04[10], %b05[10],
                   %b06[10], %b07[10], %b08[10], %b09[10], %b10[10], %b11[10], %b12[10]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[11], %r01[11], %r02[11], %r03[11], %r04[11], %r05[11],
                   %r06[11], %r07[11], %r08[11], %r09[11], %r10[11], %r11[11], %r12[11]])
          (poly z [%a00[11], %a01[11], %a02[11], %a03[11], %a04[11], %a05[11],
                   %a06[11], %a07[11], %a08[11], %a09[11], %a10[11], %a11[11], %a12[11]] *
           poly z [%b00[11], %b01[11], %b02[11], %b03[11], %b04[11], %b05[11],
                   %b06[11], %b07[11], %b08[11], %b09[11], %b10[11], %b11[11], %b12[11]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[12], %r01[12], %r02[12], %r03[12], %r04[12], %r05[12],
                   %r06[12], %r07[12], %r08[12], %r09[12], %r10[12], %r11[12], %r12[12]])
          (poly z [%a00[12], %a01[12], %a02[12], %a03[12], %a04[12], %a05[12],
                   %a06[12], %a07[12], %a08[12], %a09[12], %a10[12], %a11[12], %a12[12]] *
           poly z [%b00[12], %b01[12], %b02[12], %b03[12], %b04[12], %b05[12],
                   %b06[12], %b07[12], %b08[12], %b09[12], %b10[12], %b11[12], %b12[12]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[13], %r01[13], %r02[13], %r03[13], %r04[13], %r05[13],
                   %r06[13], %r07[13], %r08[13], %r09[13], %r10[13], %r11[13], %r12[13]])
          (poly z [%a00[13], %a01[13], %a02[13], %a03[13], %a04[13], %a05[13],
                   %a06[13], %a07[13], %a08[13], %a09[13], %a10[13], %a11[13], %a12[13]] *
           poly z [%b00[13], %b01[13], %b02[13], %b03[13], %b04[13], %b05[13],
                   %b06[13], %b07[13], %b08[13], %b09[13], %b10[13], %b11[13], %b12[13]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[14], %r01[14], %r02[14], %r03[14], %r04[14], %r05[14],
                   %r06[14], %r07[14], %r08[14], %r09[14], %r10[14], %r11[14], %r12[14]])
          (poly z [%a00[14], %a01[14], %a02[14], %a03[14], %a04[14], %a05[14],
                   %a06[14], %a07[14], %a08[14], %a09[14], %a10[14], %a11[14], %a12[14]] *
           poly z [%b00[14], %b01[14], %b02[14], %b03[14], %b04[14], %b05[14],
                   %b06[14], %b07[14], %b08[14], %b09[14], %b10[14], %b11[14], %b12[14]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[15], %r01[15], %r02[15], %r03[15], %r04[15], %r05[15],
                   %r06[15], %r07[15], %r08[15], %r09[15], %r10[15], %r11[15], %r12[15]])
          (poly z [%a00[15], %a01[15], %a02[15], %a03[15], %a04[15], %a05[15],
                   %a06[15], %a07[15], %a08[15], %a09[15], %a10[15], %a11[15], %a12[15]] *
           poly z [%b00[15], %b01[15], %b02[15], %b03[15], %b04[15], %b05[15],
                   %b06[15], %b07[15], %b08[15], %b09[15], %b10[15], %b11[15], %b12[15]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[16], %r01[16], %r02[16], %r03[16], %r04[16], %r05[16],
                   %r06[16], %r07[16], %r08[16], %r09[16], %r10[16], %r11[16], %r12[16]])
          (poly z [%a00[16], %a01[16], %a02[16], %a03[16], %a04[16], %a05[16],
                   %a06[16], %a07[16], %a08[16], %a09[16], %a10[16], %a11[16], %a12[16]] *
           poly z [%b00[16], %b01[16], %b02[16], %b03[16], %b04[16], %b05[16],
                   %b06[16], %b07[16], %b08[16], %b09[16], %b10[16], %b11[16], %b12[16]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[17], %r01[17], %r02[17], %r03[17], %r04[17], %r05[17],
                   %r06[17], %r07[17], %r08[17], %r09[17], %r10[17], %r11[17], %r12[17]])
          (poly z [%a00[17], %a01[17], %a02[17], %a03[17], %a04[17], %a05[17],
                   %a06[17], %a07[17], %a08[17], %a09[17], %a10[17], %a11[17], %a12[17]] *
           poly z [%b00[17], %b01[17], %b02[17], %b03[17], %b04[17], %b05[17],
                   %b06[17], %b07[17], %b08[17], %b09[17], %b10[17], %b11[17], %b12[17]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[18], %r01[18], %r02[18], %r03[18], %r04[18], %r05[18],
                   %r06[18], %r07[18], %r08[18], %r09[18], %r10[18], %r11[18], %r12[18]])
          (poly z [%a00[18], %a01[18], %a02[18], %a03[18], %a04[18], %a05[18],
                   %a06[18], %a07[18], %a08[18], %a09[18], %a10[18], %a11[18], %a12[18]] *
           poly z [%b00[18], %b01[18], %b02[18], %b03[18], %b04[18], %b05[18],
                   %b06[18], %b07[18], %b08[18], %b09[18], %b10[18], %b11[18], %b12[18]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[19], %r01[19], %r02[19], %r03[19], %r04[19], %r05[19],
                   %r06[19], %r07[19], %r08[19], %r09[19], %r10[19], %r11[19], %r12[19]])
          (poly z [%a00[19], %a01[19], %a02[19], %a03[19], %a04[19], %a05[19],
                   %a06[19], %a07[19], %a08[19], %a09[19], %a10[19], %a11[19], %a12[19]] *
           poly z [%b00[19], %b01[19], %b02[19], %b03[19], %b04[19], %b05[19],
                   %b06[19], %b07[19], %b08[19], %b09[19], %b10[19], %b11[19], %b12[19]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[20], %r01[20], %r02[20], %r03[20], %r04[20], %r05[20],
                   %r06[20], %r07[20], %r08[20], %r09[20], %r10[20], %r11[20], %r12[20]])
          (poly z [%a00[20], %a01[20], %a02[20], %a03[20], %a04[20], %a05[20],
                   %a06[20], %a07[20], %a08[20], %a09[20], %a10[20], %a11[20], %a12[20]] *
           poly z [%b00[20], %b01[20], %b02[20], %b03[20], %b04[20], %b05[20],
                   %b06[20], %b07[20], %b08[20], %b09[20], %b10[20], %b11[20], %b12[20]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[21], %r01[21], %r02[21], %r03[21], %r04[21], %r05[21],
                   %r06[21], %r07[21], %r08[21], %r09[21], %r10[21], %r11[21], %r12[21]])
          (poly z [%a00[21], %a01[21], %a02[21], %a03[21], %a04[21], %a05[21],
                   %a06[21], %a07[21], %a08[21], %a09[21], %a10[21], %a11[21], %a12[21]] *
           poly z [%b00[21], %b01[21], %b02[21], %b03[21], %b04[21], %b05[21],
                   %b06[21], %b07[21], %b08[21], %b09[21], %b10[21], %b11[21], %b12[21]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[22], %r01[22], %r02[22], %r03[22], %r04[22], %r05[22],
                   %r06[22], %r07[22], %r08[22], %r09[22], %r10[22], %r11[22], %r12[22]])
          (poly z [%a00[22], %a01[22], %a02[22], %a03[22], %a04[22], %a05[22],
                   %a06[22], %a07[22], %a08[22], %a09[22], %a10[22], %a11[22], %a12[22]] *
           poly z [%b00[22], %b01[22], %b02[22], %b03[22], %b04[22], %b05[22],
                   %b06[22], %b07[22], %b08[22], %b09[22], %b10[22], %b11[22], %b12[22]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[23], %r01[23], %r02[23], %r03[23], %r04[23], %r05[23],
                   %r06[23], %r07[23], %r08[23], %r09[23], %r10[23], %r11[23], %r12[23]])
          (poly z [%a00[23], %a01[23], %a02[23], %a03[23], %a04[23], %a05[23],
                   %a06[23], %a07[23], %a08[23], %a09[23], %a10[23], %a11[23], %a12[23]] *
           poly z [%b00[23], %b01[23], %b02[23], %b03[23], %b04[23], %b05[23],
                   %b06[23], %b07[23], %b08[23], %b09[23], %b10[23], %b11[23], %b12[23]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[24], %r01[24], %r02[24], %r03[24], %r04[24], %r05[24],
                   %r06[24], %r07[24], %r08[24], %r09[24], %r10[24], %r11[24], %r12[24]])
          (poly z [%a00[24], %a01[24], %a02[24], %a03[24], %a04[24], %a05[24],
                   %a06[24], %a07[24], %a08[24], %a09[24], %a10[24], %a11[24], %a12[24]] *
           poly z [%b00[24], %b01[24], %b02[24], %b03[24], %b04[24], %b05[24],
                   %b06[24], %b07[24], %b08[24], %b09[24], %b10[24], %b11[24], %b12[24]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[25], %r01[25], %r02[25], %r03[25], %r04[25], %r05[25],
                   %r06[25], %r07[25], %r08[25], %r09[25], %r10[25], %r11[25], %r12[25]])
          (poly z [%a00[25], %a01[25], %a02[25], %a03[25], %a04[25], %a05[25],
                   %a06[25], %a07[25], %a08[25], %a09[25], %a10[25], %a11[25], %a12[25]] *
           poly z [%b00[25], %b01[25], %b02[25], %b03[25], %b04[25], %b05[25],
                   %b06[25], %b07[25], %b08[25], %b09[25], %b10[25], %b11[25], %b12[25]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[26], %r01[26], %r02[26], %r03[26], %r04[26], %r05[26],
                   %r06[26], %r07[26], %r08[26], %r09[26], %r10[26], %r11[26], %r12[26]])
          (poly z [%a00[26], %a01[26], %a02[26], %a03[26], %a04[26], %a05[26],
                   %a06[26], %a07[26], %a08[26], %a09[26], %a10[26], %a11[26], %a12[26]] *
           poly z [%b00[26], %b01[26], %b02[26], %b03[26], %b04[26], %b05[26],
                   %b06[26], %b07[26], %b08[26], %b09[26], %b10[26], %b11[26], %b12[26]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[27], %r01[27], %r02[27], %r03[27], %r04[27], %r05[27],
                   %r06[27], %r07[27], %r08[27], %r09[27], %r10[27], %r11[27], %r12[27]])
          (poly z [%a00[27], %a01[27], %a02[27], %a03[27], %a04[27], %a05[27],
                   %a06[27], %a07[27], %a08[27], %a09[27], %a10[27], %a11[27], %a12[27]] *
           poly z [%b00[27], %b01[27], %b02[27], %b03[27], %b04[27], %b05[27],
                   %b06[27], %b07[27], %b08[27], %b09[27], %b10[27], %b11[27], %b12[27]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[28], %r01[28], %r02[28], %r03[28], %r04[28], %r05[28],
                   %r06[28], %r07[28], %r08[28], %r09[28], %r10[28], %r11[28], %r12[28]])
          (poly z [%a00[28], %a01[28], %a02[28], %a03[28], %a04[28], %a05[28],
                   %a06[28], %a07[28], %a08[28], %a09[28], %a10[28], %a11[28], %a12[28]] *
           poly z [%b00[28], %b01[28], %b02[28], %b03[28], %b04[28], %b05[28],
                   %b06[28], %b07[28], %b08[28], %b09[28], %b10[28], %b11[28], %b12[28]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[29], %r01[29], %r02[29], %r03[29], %r04[29], %r05[29],
                   %r06[29], %r07[29], %r08[29], %r09[29], %r10[29], %r11[29], %r12[29]])
          (poly z [%a00[29], %a01[29], %a02[29], %a03[29], %a04[29], %a05[29],
                   %a06[29], %a07[29], %a08[29], %a09[29], %a10[29], %a11[29], %a12[29]] *
           poly z [%b00[29], %b01[29], %b02[29], %b03[29], %b04[29], %b05[29],
                   %b06[29], %b07[29], %b08[29], %b09[29], %b10[29], %b11[29], %b12[29]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[30], %r01[30], %r02[30], %r03[30], %r04[30], %r05[30],
                   %r06[30], %r07[30], %r08[30], %r09[30], %r10[30], %r11[30], %r12[30]])
          (poly z [%a00[30], %a01[30], %a02[30], %a03[30], %a04[30], %a05[30],
                   %a06[30], %a07[30], %a08[30], %a09[30], %a10[30], %a11[30], %a12[30]] *
           poly z [%b00[30], %b01[30], %b02[30], %b03[30], %b04[30], %b05[30],
                   %b06[30], %b07[30], %b08[30], %b09[30], %b10[30], %b11[30], %b12[30]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[31], %r01[31], %r02[31], %r03[31], %r04[31], %r05[31],
                   %r06[31], %r07[31], %r08[31], %r09[31], %r10[31], %r11[31], %r12[31]])
          (poly z [%a00[31], %a01[31], %a02[31], %a03[31], %a04[31], %a05[31],
                   %a06[31], %a07[31], %a08[31], %a09[31], %a10[31], %a11[31], %a12[31]] *
           poly z [%b00[31], %b01[31], %b02[31], %b03[31], %b04[31], %b05[31],
                   %b06[31], %b07[31], %b08[31], %b09[31], %b10[31], %b11[31], %b12[31]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[32], %r01[32], %r02[32], %r03[32], %r04[32], %r05[32],
                   %r06[32], %r07[32], %r08[32], %r09[32], %r10[32], %r11[32], %r12[32]])
          (poly z [%a00[32], %a01[32], %a02[32], %a03[32], %a04[32], %a05[32],
                   %a06[32], %a07[32], %a08[32], %a09[32], %a10[32], %a11[32], %a12[32]] *
           poly z [%b00[32], %b01[32], %b02[32], %b03[32], %b04[32], %b05[32],
                   %b06[32], %b07[32], %b08[32], %b09[32], %b10[32], %b11[32], %b12[32]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[33], %r01[33], %r02[33], %r03[33], %r04[33], %r05[33],
                   %r06[33], %r07[33], %r08[33], %r09[33], %r10[33], %r11[33], %r12[33]])
          (poly z [%a00[33], %a01[33], %a02[33], %a03[33], %a04[33], %a05[33],
                   %a06[33], %a07[33], %a08[33], %a09[33], %a10[33], %a11[33], %a12[33]] *
           poly z [%b00[33], %b01[33], %b02[33], %b03[33], %b04[33], %b05[33],
                   %b06[33], %b07[33], %b08[33], %b09[33], %b10[33], %b11[33], %b12[33]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[34], %r01[34], %r02[34], %r03[34], %r04[34], %r05[34],
                   %r06[34], %r07[34], %r08[34], %r09[34], %r10[34], %r11[34], %r12[34]])
          (poly z [%a00[34], %a01[34], %a02[34], %a03[34], %a04[34], %a05[34],
                   %a06[34], %a07[34], %a08[34], %a09[34], %a10[34], %a11[34], %a12[34]] *
           poly z [%b00[34], %b01[34], %b02[34], %b03[34], %b04[34], %b05[34],
                   %b06[34], %b07[34], %b08[34], %b09[34], %b10[34], %b11[34], %b12[34]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[35], %r01[35], %r02[35], %r03[35], %r04[35], %r05[35],
                   %r06[35], %r07[35], %r08[35], %r09[35], %r10[35], %r11[35], %r12[35]])
          (poly z [%a00[35], %a01[35], %a02[35], %a03[35], %a04[35], %a05[35],
                   %a06[35], %a07[35], %a08[35], %a09[35], %a10[35], %a11[35], %a12[35]] *
           poly z [%b00[35], %b01[35], %b02[35], %b03[35], %b04[35], %b05[35],
                   %b06[35], %b07[35], %b08[35], %b09[35], %b10[35], %b11[35], %b12[35]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[36], %r01[36], %r02[36], %r03[36], %r04[36], %r05[36],
                   %r06[36], %r07[36], %r08[36], %r09[36], %r10[36], %r11[36], %r12[36]])
          (poly z [%a00[36], %a01[36], %a02[36], %a03[36], %a04[36], %a05[36],
                   %a06[36], %a07[36], %a08[36], %a09[36], %a10[36], %a11[36], %a12[36]] *
           poly z [%b00[36], %b01[36], %b02[36], %b03[36], %b04[36], %b05[36],
                   %b06[36], %b07[36], %b08[36], %b09[36], %b10[36], %b11[36], %b12[36]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[37], %r01[37], %r02[37], %r03[37], %r04[37], %r05[37],
                   %r06[37], %r07[37], %r08[37], %r09[37], %r10[37], %r11[37], %r12[37]])
          (poly z [%a00[37], %a01[37], %a02[37], %a03[37], %a04[37], %a05[37],
                   %a06[37], %a07[37], %a08[37], %a09[37], %a10[37], %a11[37], %a12[37]] *
           poly z [%b00[37], %b01[37], %b02[37], %b03[37], %b04[37], %b05[37],
                   %b06[37], %b07[37], %b08[37], %b09[37], %b10[37], %b11[37], %b12[37]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[38], %r01[38], %r02[38], %r03[38], %r04[38], %r05[38],
                   %r06[38], %r07[38], %r08[38], %r09[38], %r10[38], %r11[38], %r12[38]])
          (poly z [%a00[38], %a01[38], %a02[38], %a03[38], %a04[38], %a05[38],
                   %a06[38], %a07[38], %a08[38], %a09[38], %a10[38], %a11[38], %a12[38]] *
           poly z [%b00[38], %b01[38], %b02[38], %b03[38], %b04[38], %b05[38],
                   %b06[38], %b07[38], %b08[38], %b09[38], %b10[38], %b11[38], %b12[38]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[39], %r01[39], %r02[39], %r03[39], %r04[39], %r05[39],
                   %r06[39], %r07[39], %r08[39], %r09[39], %r10[39], %r11[39], %r12[39]])
          (poly z [%a00[39], %a01[39], %a02[39], %a03[39], %a04[39], %a05[39],
                   %a06[39], %a07[39], %a08[39], %a09[39], %a10[39], %a11[39], %a12[39]] *
           poly z [%b00[39], %b01[39], %b02[39], %b03[39], %b04[39], %b05[39],
                   %b06[39], %b07[39], %b08[39], %b09[39], %b10[39], %b11[39], %b12[39]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[40], %r01[40], %r02[40], %r03[40], %r04[40], %r05[40],
                   %r06[40], %r07[40], %r08[40], %r09[40], %r10[40], %r11[40], %r12[40]])
          (poly z [%a00[40], %a01[40], %a02[40], %a03[40], %a04[40], %a05[40],
                   %a06[40], %a07[40], %a08[40], %a09[40], %a10[40], %a11[40], %a12[40]] *
           poly z [%b00[40], %b01[40], %b02[40], %b03[40], %b04[40], %b05[40],
                   %b06[40], %b07[40], %b08[40], %b09[40], %b10[40], %b11[40], %b12[40]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[41], %r01[41], %r02[41], %r03[41], %r04[41], %r05[41],
                   %r06[41], %r07[41], %r08[41], %r09[41], %r10[41], %r11[41], %r12[41]])
          (poly z [%a00[41], %a01[41], %a02[41], %a03[41], %a04[41], %a05[41],
                   %a06[41], %a07[41], %a08[41], %a09[41], %a10[41], %a11[41], %a12[41]] *
           poly z [%b00[41], %b01[41], %b02[41], %b03[41], %b04[41], %b05[41],
                   %b06[41], %b07[41], %b08[41], %b09[41], %b10[41], %b11[41], %b12[41]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[42], %r01[42], %r02[42], %r03[42], %r04[42], %r05[42],
                   %r06[42], %r07[42], %r08[42], %r09[42], %r10[42], %r11[42], %r12[42]])
          (poly z [%a00[42], %a01[42], %a02[42], %a03[42], %a04[42], %a05[42],
                   %a06[42], %a07[42], %a08[42], %a09[42], %a10[42], %a11[42], %a12[42]] *
           poly z [%b00[42], %b01[42], %b02[42], %b03[42], %b04[42], %b05[42],
                   %b06[42], %b07[42], %b08[42], %b09[42], %b10[42], %b11[42], %b12[42]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[43], %r01[43], %r02[43], %r03[43], %r04[43], %r05[43],
                   %r06[43], %r07[43], %r08[43], %r09[43], %r10[43], %r11[43], %r12[43]])
          (poly z [%a00[43], %a01[43], %a02[43], %a03[43], %a04[43], %a05[43],
                   %a06[43], %a07[43], %a08[43], %a09[43], %a10[43], %a11[43], %a12[43]] *
           poly z [%b00[43], %b01[43], %b02[43], %b03[43], %b04[43], %b05[43],
                   %b06[43], %b07[43], %b08[43], %b09[43], %b10[43], %b11[43], %b12[43]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[44], %r01[44], %r02[44], %r03[44], %r04[44], %r05[44],
                   %r06[44], %r07[44], %r08[44], %r09[44], %r10[44], %r11[44], %r12[44]])
          (poly z [%a00[44], %a01[44], %a02[44], %a03[44], %a04[44], %a05[44],
                   %a06[44], %a07[44], %a08[44], %a09[44], %a10[44], %a11[44], %a12[44]] *
           poly z [%b00[44], %b01[44], %b02[44], %b03[44], %b04[44], %b05[44],
                   %b06[44], %b07[44], %b08[44], %b09[44], %b10[44], %b11[44], %b12[44]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[45], %r01[45], %r02[45], %r03[45], %r04[45], %r05[45],
                   %r06[45], %r07[45], %r08[45], %r09[45], %r10[45], %r11[45], %r12[45]])
          (poly z [%a00[45], %a01[45], %a02[45], %a03[45], %a04[45], %a05[45],
                   %a06[45], %a07[45], %a08[45], %a09[45], %a10[45], %a11[45], %a12[45]] *
           poly z [%b00[45], %b01[45], %b02[45], %b03[45], %b04[45], %b05[45],
                   %b06[45], %b07[45], %b08[45], %b09[45], %b10[45], %b11[45], %b12[45]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[46], %r01[46], %r02[46], %r03[46], %r04[46], %r05[46],
                   %r06[46], %r07[46], %r08[46], %r09[46], %r10[46], %r11[46], %r12[46]])
          (poly z [%a00[46], %a01[46], %a02[46], %a03[46], %a04[46], %a05[46],
                   %a06[46], %a07[46], %a08[46], %a09[46], %a10[46], %a11[46], %a12[46]] *
           poly z [%b00[46], %b01[46], %b02[46], %b03[46], %b04[46], %b05[46],
                   %b06[46], %b07[46], %b08[46], %b09[46], %b10[46], %b11[46], %b12[46]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[47], %r01[47], %r02[47], %r03[47], %r04[47], %r05[47],
                   %r06[47], %r07[47], %r08[47], %r09[47], %r10[47], %r11[47], %r12[47]])
          (poly z [%a00[47], %a01[47], %a02[47], %a03[47], %a04[47], %a05[47],
                   %a06[47], %a07[47], %a08[47], %a09[47], %a10[47], %a11[47], %a12[47]] *
           poly z [%b00[47], %b01[47], %b02[47], %b03[47], %b04[47], %b05[47],
                   %b06[47], %b07[47], %b08[47], %b09[47], %b10[47], %b11[47], %b12[47]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[48], %r01[48], %r02[48], %r03[48], %r04[48], %r05[48],
                   %r06[48], %r07[48], %r08[48], %r09[48], %r10[48], %r11[48], %r12[48]])
          (poly z [%a00[48], %a01[48], %a02[48], %a03[48], %a04[48], %a05[48],
                   %a06[48], %a07[48], %a08[48], %a09[48], %a10[48], %a11[48], %a12[48]] *
           poly z [%b00[48], %b01[48], %b02[48], %b03[48], %b04[48], %b05[48],
                   %b06[48], %b07[48], %b08[48], %b09[48], %b10[48], %b11[48], %b12[48]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[49], %r01[49], %r02[49], %r03[49], %r04[49], %r05[49],
                   %r06[49], %r07[49], %r08[49], %r09[49], %r10[49], %r11[49], %r12[49]])
          (poly z [%a00[49], %a01[49], %a02[49], %a03[49], %a04[49], %a05[49],
                   %a06[49], %a07[49], %a08[49], %a09[49], %a10[49], %a11[49], %a12[49]] *
           poly z [%b00[49], %b01[49], %b02[49], %b03[49], %b04[49], %b05[49],
                   %b06[49], %b07[49], %b08[49], %b09[49], %b10[49], %b11[49], %b12[49]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[50], %r01[50], %r02[50], %r03[50], %r04[50], %r05[50],
                   %r06[50], %r07[50], %r08[50], %r09[50], %r10[50], %r11[50], %r12[50]])
          (poly z [%a00[50], %a01[50], %a02[50], %a03[50], %a04[50], %a05[50],
                   %a06[50], %a07[50], %a08[50], %a09[50], %a10[50], %a11[50], %a12[50]] *
           poly z [%b00[50], %b01[50], %b02[50], %b03[50], %b04[50], %b05[50],
                   %b06[50], %b07[50], %b08[50], %b09[50], %b10[50], %b11[50], %b12[50]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[51], %r01[51], %r02[51], %r03[51], %r04[51], %r05[51],
                   %r06[51], %r07[51], %r08[51], %r09[51], %r10[51], %r11[51], %r12[51]])
          (poly z [%a00[51], %a01[51], %a02[51], %a03[51], %a04[51], %a05[51],
                   %a06[51], %a07[51], %a08[51], %a09[51], %a10[51], %a11[51], %a12[51]] *
           poly z [%b00[51], %b01[51], %b02[51], %b03[51], %b04[51], %b05[51],
                   %b06[51], %b07[51], %b08[51], %b09[51], %b10[51], %b11[51], %b12[51]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[52], %r01[52], %r02[52], %r03[52], %r04[52], %r05[52],
                   %r06[52], %r07[52], %r08[52], %r09[52], %r10[52], %r11[52], %r12[52]])
          (poly z [%a00[52], %a01[52], %a02[52], %a03[52], %a04[52], %a05[52],
                   %a06[52], %a07[52], %a08[52], %a09[52], %a10[52], %a11[52], %a12[52]] *
           poly z [%b00[52], %b01[52], %b02[52], %b03[52], %b04[52], %b05[52],
                   %b06[52], %b07[52], %b08[52], %b09[52], %b10[52], %b11[52], %b12[52]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[53], %r01[53], %r02[53], %r03[53], %r04[53], %r05[53],
                   %r06[53], %r07[53], %r08[53], %r09[53], %r10[53], %r11[53], %r12[53]])
          (poly z [%a00[53], %a01[53], %a02[53], %a03[53], %a04[53], %a05[53],
                   %a06[53], %a07[53], %a08[53], %a09[53], %a10[53], %a11[53], %a12[53]] *
           poly z [%b00[53], %b01[53], %b02[53], %b03[53], %b04[53], %b05[53],
                   %b06[53], %b07[53], %b08[53], %b09[53], %b10[53], %b11[53], %b12[53]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[54], %r01[54], %r02[54], %r03[54], %r04[54], %r05[54],
                   %r06[54], %r07[54], %r08[54], %r09[54], %r10[54], %r11[54], %r12[54]])
          (poly z [%a00[54], %a01[54], %a02[54], %a03[54], %a04[54], %a05[54],
                   %a06[54], %a07[54], %a08[54], %a09[54], %a10[54], %a11[54], %a12[54]] *
           poly z [%b00[54], %b01[54], %b02[54], %b03[54], %b04[54], %b05[54],
                   %b06[54], %b07[54], %b08[54], %b09[54], %b10[54], %b11[54], %b12[54]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[55], %r01[55], %r02[55], %r03[55], %r04[55], %r05[55],
                   %r06[55], %r07[55], %r08[55], %r09[55], %r10[55], %r11[55], %r12[55]])
          (poly z [%a00[55], %a01[55], %a02[55], %a03[55], %a04[55], %a05[55],
                   %a06[55], %a07[55], %a08[55], %a09[55], %a10[55], %a11[55], %a12[55]] *
           poly z [%b00[55], %b01[55], %b02[55], %b03[55], %b04[55], %b05[55],
                   %b06[55], %b07[55], %b08[55], %b09[55], %b10[55], %b11[55], %b12[55]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[56], %r01[56], %r02[56], %r03[56], %r04[56], %r05[56],
                   %r06[56], %r07[56], %r08[56], %r09[56], %r10[56], %r11[56], %r12[56]])
          (poly z [%a00[56], %a01[56], %a02[56], %a03[56], %a04[56], %a05[56],
                   %a06[56], %a07[56], %a08[56], %a09[56], %a10[56], %a11[56], %a12[56]] *
           poly z [%b00[56], %b01[56], %b02[56], %b03[56], %b04[56], %b05[56],
                   %b06[56], %b07[56], %b08[56], %b09[56], %b10[56], %b11[56], %b12[56]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[57], %r01[57], %r02[57], %r03[57], %r04[57], %r05[57],
                   %r06[57], %r07[57], %r08[57], %r09[57], %r10[57], %r11[57], %r12[57]])
          (poly z [%a00[57], %a01[57], %a02[57], %a03[57], %a04[57], %a05[57],
                   %a06[57], %a07[57], %a08[57], %a09[57], %a10[57], %a11[57], %a12[57]] *
           poly z [%b00[57], %b01[57], %b02[57], %b03[57], %b04[57], %b05[57],
                   %b06[57], %b07[57], %b08[57], %b09[57], %b10[57], %b11[57], %b12[57]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[58], %r01[58], %r02[58], %r03[58], %r04[58], %r05[58],
                   %r06[58], %r07[58], %r08[58], %r09[58], %r10[58], %r11[58], %r12[58]])
          (poly z [%a00[58], %a01[58], %a02[58], %a03[58], %a04[58], %a05[58],
                   %a06[58], %a07[58], %a08[58], %a09[58], %a10[58], %a11[58], %a12[58]] *
           poly z [%b00[58], %b01[58], %b02[58], %b03[58], %b04[58], %b05[58],
                   %b06[58], %b07[58], %b08[58], %b09[58], %b10[58], %b11[58], %b12[58]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[59], %r01[59], %r02[59], %r03[59], %r04[59], %r05[59],
                   %r06[59], %r07[59], %r08[59], %r09[59], %r10[59], %r11[59], %r12[59]])
          (poly z [%a00[59], %a01[59], %a02[59], %a03[59], %a04[59], %a05[59],
                   %a06[59], %a07[59], %a08[59], %a09[59], %a10[59], %a11[59], %a12[59]] *
           poly z [%b00[59], %b01[59], %b02[59], %b03[59], %b04[59], %b05[59],
                   %b06[59], %b07[59], %b08[59], %b09[59], %b10[59], %b11[59], %b12[59]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[60], %r01[60], %r02[60], %r03[60], %r04[60], %r05[60],
                   %r06[60], %r07[60], %r08[60], %r09[60], %r10[60], %r11[60], %r12[60]])
          (poly z [%a00[60], %a01[60], %a02[60], %a03[60], %a04[60], %a05[60],
                   %a06[60], %a07[60], %a08[60], %a09[60], %a10[60], %a11[60], %a12[60]] *
           poly z [%b00[60], %b01[60], %b02[60], %b03[60], %b04[60], %b05[60],
                   %b06[60], %b07[60], %b08[60], %b09[60], %b10[60], %b11[60], %b12[60]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[61], %r01[61], %r02[61], %r03[61], %r04[61], %r05[61],
                   %r06[61], %r07[61], %r08[61], %r09[61], %r10[61], %r11[61], %r12[61]])
          (poly z [%a00[61], %a01[61], %a02[61], %a03[61], %a04[61], %a05[61],
                   %a06[61], %a07[61], %a08[61], %a09[61], %a10[61], %a11[61], %a12[61]] *
           poly z [%b00[61], %b01[61], %b02[61], %b03[61], %b04[61], %b05[61],
                   %b06[61], %b07[61], %b08[61], %b09[61], %b10[61], %b11[61], %b12[61]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[62], %r01[62], %r02[62], %r03[62], %r04[62], %r05[62],
                   %r06[62], %r07[62], %r08[62], %r09[62], %r10[62], %r11[62], %r12[62]])
          (poly z [%a00[62], %a01[62], %a02[62], %a03[62], %a04[62], %a05[62],
                   %a06[62], %a07[62], %a08[62], %a09[62], %a10[62], %a11[62], %a12[62]] *
           poly z [%b00[62], %b01[62], %b02[62], %b03[62], %b04[62], %b05[62],
                   %b06[62], %b07[62], %b08[62], %b09[62], %b10[62], %b11[62], %b12[62]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[63], %r01[63], %r02[63], %r03[63], %r04[63], %r05[63],
                   %r06[63], %r07[63], %r08[63], %r09[63], %r10[63], %r11[63], %r12[63]])
          (poly z [%a00[63], %a01[63], %a02[63], %a03[63], %a04[63], %a05[63],
                   %a06[63], %a07[63], %a08[63], %a09[63], %a10[63], %a11[63], %a12[63]] *
           poly z [%b00[63], %b01[63], %b02[63], %b03[63], %b04[63], %b05[63],
                   %b06[63], %b07[63], %b08[63], %b09[63], %b10[63], %b11[63], %b12[63]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[64], %r01[64], %r02[64], %r03[64], %r04[64], %r05[64],
                   %r06[64], %r07[64], %r08[64], %r09[64], %r10[64], %r11[64], %r12[64]])
          (poly z [%a00[64], %a01[64], %a02[64], %a03[64], %a04[64], %a05[64],
                   %a06[64], %a07[64], %a08[64], %a09[64], %a10[64], %a11[64], %a12[64]] *
           poly z [%b00[64], %b01[64], %b02[64], %b03[64], %b04[64], %b05[64],
                   %b06[64], %b07[64], %b08[64], %b09[64], %b10[64], %b11[64], %b12[64]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[65], %r01[65], %r02[65], %r03[65], %r04[65], %r05[65],
                   %r06[65], %r07[65], %r08[65], %r09[65], %r10[65], %r11[65], %r12[65]])
          (poly z [%a00[65], %a01[65], %a02[65], %a03[65], %a04[65], %a05[65],
                   %a06[65], %a07[65], %a08[65], %a09[65], %a10[65], %a11[65], %a12[65]] *
           poly z [%b00[65], %b01[65], %b02[65], %b03[65], %b04[65], %b05[65],
                   %b06[65], %b07[65], %b08[65], %b09[65], %b10[65], %b11[65], %b12[65]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[66], %r01[66], %r02[66], %r03[66], %r04[66], %r05[66],
                   %r06[66], %r07[66], %r08[66], %r09[66], %r10[66], %r11[66], %r12[66]])
          (poly z [%a00[66], %a01[66], %a02[66], %a03[66], %a04[66], %a05[66],
                   %a06[66], %a07[66], %a08[66], %a09[66], %a10[66], %a11[66], %a12[66]] *
           poly z [%b00[66], %b01[66], %b02[66], %b03[66], %b04[66], %b05[66],
                   %b06[66], %b07[66], %b08[66], %b09[66], %b10[66], %b11[66], %b12[66]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[67], %r01[67], %r02[67], %r03[67], %r04[67], %r05[67],
                   %r06[67], %r07[67], %r08[67], %r09[67], %r10[67], %r11[67], %r12[67]])
          (poly z [%a00[67], %a01[67], %a02[67], %a03[67], %a04[67], %a05[67],
                   %a06[67], %a07[67], %a08[67], %a09[67], %a10[67], %a11[67], %a12[67]] *
           poly z [%b00[67], %b01[67], %b02[67], %b03[67], %b04[67], %b05[67],
                   %b06[67], %b07[67], %b08[67], %b09[67], %b10[67], %b11[67], %b12[67]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[68], %r01[68], %r02[68], %r03[68], %r04[68], %r05[68],
                   %r06[68], %r07[68], %r08[68], %r09[68], %r10[68], %r11[68], %r12[68]])
          (poly z [%a00[68], %a01[68], %a02[68], %a03[68], %a04[68], %a05[68],
                   %a06[68], %a07[68], %a08[68], %a09[68], %a10[68], %a11[68], %a12[68]] *
           poly z [%b00[68], %b01[68], %b02[68], %b03[68], %b04[68], %b05[68],
                   %b06[68], %b07[68], %b08[68], %b09[68], %b10[68], %b11[68], %b12[68]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[69], %r01[69], %r02[69], %r03[69], %r04[69], %r05[69],
                   %r06[69], %r07[69], %r08[69], %r09[69], %r10[69], %r11[69], %r12[69]])
          (poly z [%a00[69], %a01[69], %a02[69], %a03[69], %a04[69], %a05[69],
                   %a06[69], %a07[69], %a08[69], %a09[69], %a10[69], %a11[69], %a12[69]] *
           poly z [%b00[69], %b01[69], %b02[69], %b03[69], %b04[69], %b05[69],
                   %b06[69], %b07[69], %b08[69], %b09[69], %b10[69], %b11[69], %b12[69]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[70], %r01[70], %r02[70], %r03[70], %r04[70], %r05[70],
                   %r06[70], %r07[70], %r08[70], %r09[70], %r10[70], %r11[70], %r12[70]])
          (poly z [%a00[70], %a01[70], %a02[70], %a03[70], %a04[70], %a05[70],
                   %a06[70], %a07[70], %a08[70], %a09[70], %a10[70], %a11[70], %a12[70]] *
           poly z [%b00[70], %b01[70], %b02[70], %b03[70], %b04[70], %b05[70],
                   %b06[70], %b07[70], %b08[70], %b09[70], %b10[70], %b11[70], %b12[70]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[71], %r01[71], %r02[71], %r03[71], %r04[71], %r05[71],
                   %r06[71], %r07[71], %r08[71], %r09[71], %r10[71], %r11[71], %r12[71]])
          (poly z [%a00[71], %a01[71], %a02[71], %a03[71], %a04[71], %a05[71],
                   %a06[71], %a07[71], %a08[71], %a09[71], %a10[71], %a11[71], %a12[71]] *
           poly z [%b00[71], %b01[71], %b02[71], %b03[71], %b04[71], %b05[71],
                   %b06[71], %b07[71], %b08[71], %b09[71], %b10[71], %b11[71], %b12[71]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[72], %r01[72], %r02[72], %r03[72], %r04[72], %r05[72],
                   %r06[72], %r07[72], %r08[72], %r09[72], %r10[72], %r11[72], %r12[72]])
          (poly z [%a00[72], %a01[72], %a02[72], %a03[72], %a04[72], %a05[72],
                   %a06[72], %a07[72], %a08[72], %a09[72], %a10[72], %a11[72], %a12[72]] *
           poly z [%b00[72], %b01[72], %b02[72], %b03[72], %b04[72], %b05[72],
                   %b06[72], %b07[72], %b08[72], %b09[72], %b10[72], %b11[72], %b12[72]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[73], %r01[73], %r02[73], %r03[73], %r04[73], %r05[73],
                   %r06[73], %r07[73], %r08[73], %r09[73], %r10[73], %r11[73], %r12[73]])
          (poly z [%a00[73], %a01[73], %a02[73], %a03[73], %a04[73], %a05[73],
                   %a06[73], %a07[73], %a08[73], %a09[73], %a10[73], %a11[73], %a12[73]] *
           poly z [%b00[73], %b01[73], %b02[73], %b03[73], %b04[73], %b05[73],
                   %b06[73], %b07[73], %b08[73], %b09[73], %b10[73], %b11[73], %b12[73]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[74], %r01[74], %r02[74], %r03[74], %r04[74], %r05[74],
                   %r06[74], %r07[74], %r08[74], %r09[74], %r10[74], %r11[74], %r12[74]])
          (poly z [%a00[74], %a01[74], %a02[74], %a03[74], %a04[74], %a05[74],
                   %a06[74], %a07[74], %a08[74], %a09[74], %a10[74], %a11[74], %a12[74]] *
           poly z [%b00[74], %b01[74], %b02[74], %b03[74], %b04[74], %b05[74],
                   %b06[74], %b07[74], %b08[74], %b09[74], %b10[74], %b11[74], %b12[74]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[75], %r01[75], %r02[75], %r03[75], %r04[75], %r05[75],
                   %r06[75], %r07[75], %r08[75], %r09[75], %r10[75], %r11[75], %r12[75]])
          (poly z [%a00[75], %a01[75], %a02[75], %a03[75], %a04[75], %a05[75],
                   %a06[75], %a07[75], %a08[75], %a09[75], %a10[75], %a11[75], %a12[75]] *
           poly z [%b00[75], %b01[75], %b02[75], %b03[75], %b04[75], %b05[75],
                   %b06[75], %b07[75], %b08[75], %b09[75], %b10[75], %b11[75], %b12[75]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[76], %r01[76], %r02[76], %r03[76], %r04[76], %r05[76],
                   %r06[76], %r07[76], %r08[76], %r09[76], %r10[76], %r11[76], %r12[76]])
          (poly z [%a00[76], %a01[76], %a02[76], %a03[76], %a04[76], %a05[76],
                   %a06[76], %a07[76], %a08[76], %a09[76], %a10[76], %a11[76], %a12[76]] *
           poly z [%b00[76], %b01[76], %b02[76], %b03[76], %b04[76], %b05[76],
                   %b06[76], %b07[76], %b08[76], %b09[76], %b10[76], %b11[76], %b12[76]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[77], %r01[77], %r02[77], %r03[77], %r04[77], %r05[77],
                   %r06[77], %r07[77], %r08[77], %r09[77], %r10[77], %r11[77], %r12[77]])
          (poly z [%a00[77], %a01[77], %a02[77], %a03[77], %a04[77], %a05[77],
                   %a06[77], %a07[77], %a08[77], %a09[77], %a10[77], %a11[77], %a12[77]] *
           poly z [%b00[77], %b01[77], %b02[77], %b03[77], %b04[77], %b05[77],
                   %b06[77], %b07[77], %b08[77], %b09[77], %b10[77], %b11[77], %b12[77]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[78], %r01[78], %r02[78], %r03[78], %r04[78], %r05[78],
                   %r06[78], %r07[78], %r08[78], %r09[78], %r10[78], %r11[78], %r12[78]])
          (poly z [%a00[78], %a01[78], %a02[78], %a03[78], %a04[78], %a05[78],
                   %a06[78], %a07[78], %a08[78], %a09[78], %a10[78], %a11[78], %a12[78]] *
           poly z [%b00[78], %b01[78], %b02[78], %b03[78], %b04[78], %b05[78],
                   %b06[78], %b07[78], %b08[78], %b09[78], %b10[78], %b11[78], %b12[78]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[79], %r01[79], %r02[79], %r03[79], %r04[79], %r05[79],
                   %r06[79], %r07[79], %r08[79], %r09[79], %r10[79], %r11[79], %r12[79]])
          (poly z [%a00[79], %a01[79], %a02[79], %a03[79], %a04[79], %a05[79],
                   %a06[79], %a07[79], %a08[79], %a09[79], %a10[79], %a11[79], %a12[79]] *
           poly z [%b00[79], %b01[79], %b02[79], %b03[79], %b04[79], %b05[79],
                   %b06[79], %b07[79], %b08[79], %b09[79], %b10[79], %b11[79], %b12[79]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[80], %r01[80], %r02[80], %r03[80], %r04[80], %r05[80],
                   %r06[80], %r07[80], %r08[80], %r09[80], %r10[80], %r11[80], %r12[80]])
          (poly z [%a00[80], %a01[80], %a02[80], %a03[80], %a04[80], %a05[80],
                   %a06[80], %a07[80], %a08[80], %a09[80], %a10[80], %a11[80], %a12[80]] *
           poly z [%b00[80], %b01[80], %b02[80], %b03[80], %b04[80], %b05[80],
                   %b06[80], %b07[80], %b08[80], %b09[80], %b10[80], %b11[80], %b12[80]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[81], %r01[81], %r02[81], %r03[81], %r04[81], %r05[81],
                   %r06[81], %r07[81], %r08[81], %r09[81], %r10[81], %r11[81], %r12[81]])
          (poly z [%a00[81], %a01[81], %a02[81], %a03[81], %a04[81], %a05[81],
                   %a06[81], %a07[81], %a08[81], %a09[81], %a10[81], %a11[81], %a12[81]] *
           poly z [%b00[81], %b01[81], %b02[81], %b03[81], %b04[81], %b05[81],
                   %b06[81], %b07[81], %b08[81], %b09[81], %b10[81], %b11[81], %b12[81]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[82], %r01[82], %r02[82], %r03[82], %r04[82], %r05[82],
                   %r06[82], %r07[82], %r08[82], %r09[82], %r10[82], %r11[82], %r12[82]])
          (poly z [%a00[82], %a01[82], %a02[82], %a03[82], %a04[82], %a05[82],
                   %a06[82], %a07[82], %a08[82], %a09[82], %a10[82], %a11[82], %a12[82]] *
           poly z [%b00[82], %b01[82], %b02[82], %b03[82], %b04[82], %b05[82],
                   %b06[82], %b07[82], %b08[82], %b09[82], %b10[82], %b11[82], %b12[82]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[83], %r01[83], %r02[83], %r03[83], %r04[83], %r05[83],
                   %r06[83], %r07[83], %r08[83], %r09[83], %r10[83], %r11[83], %r12[83]])
          (poly z [%a00[83], %a01[83], %a02[83], %a03[83], %a04[83], %a05[83],
                   %a06[83], %a07[83], %a08[83], %a09[83], %a10[83], %a11[83], %a12[83]] *
           poly z [%b00[83], %b01[83], %b02[83], %b03[83], %b04[83], %b05[83],
                   %b06[83], %b07[83], %b08[83], %b09[83], %b10[83], %b11[83], %b12[83]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[84], %r01[84], %r02[84], %r03[84], %r04[84], %r05[84],
                   %r06[84], %r07[84], %r08[84], %r09[84], %r10[84], %r11[84], %r12[84]])
          (poly z [%a00[84], %a01[84], %a02[84], %a03[84], %a04[84], %a05[84],
                   %a06[84], %a07[84], %a08[84], %a09[84], %a10[84], %a11[84], %a12[84]] *
           poly z [%b00[84], %b01[84], %b02[84], %b03[84], %b04[84], %b05[84],
                   %b06[84], %b07[84], %b08[84], %b09[84], %b10[84], %b11[84], %b12[84]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[85], %r01[85], %r02[85], %r03[85], %r04[85], %r05[85],
                   %r06[85], %r07[85], %r08[85], %r09[85], %r10[85], %r11[85], %r12[85]])
          (poly z [%a00[85], %a01[85], %a02[85], %a03[85], %a04[85], %a05[85],
                   %a06[85], %a07[85], %a08[85], %a09[85], %a10[85], %a11[85], %a12[85]] *
           poly z [%b00[85], %b01[85], %b02[85], %b03[85], %b04[85], %b05[85],
                   %b06[85], %b07[85], %b08[85], %b09[85], %b10[85], %b11[85], %b12[85]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[86], %r01[86], %r02[86], %r03[86], %r04[86], %r05[86],
                   %r06[86], %r07[86], %r08[86], %r09[86], %r10[86], %r11[86], %r12[86]])
          (poly z [%a00[86], %a01[86], %a02[86], %a03[86], %a04[86], %a05[86],
                   %a06[86], %a07[86], %a08[86], %a09[86], %a10[86], %a11[86], %a12[86]] *
           poly z [%b00[86], %b01[86], %b02[86], %b03[86], %b04[86], %b05[86],
                   %b06[86], %b07[86], %b08[86], %b09[86], %b10[86], %b11[86], %b12[86]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[87], %r01[87], %r02[87], %r03[87], %r04[87], %r05[87],
                   %r06[87], %r07[87], %r08[87], %r09[87], %r10[87], %r11[87], %r12[87]])
          (poly z [%a00[87], %a01[87], %a02[87], %a03[87], %a04[87], %a05[87],
                   %a06[87], %a07[87], %a08[87], %a09[87], %a10[87], %a11[87], %a12[87]] *
           poly z [%b00[87], %b01[87], %b02[87], %b03[87], %b04[87], %b05[87],
                   %b06[87], %b07[87], %b08[87], %b09[87], %b10[87], %b11[87], %b12[87]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[88], %r01[88], %r02[88], %r03[88], %r04[88], %r05[88],
                   %r06[88], %r07[88], %r08[88], %r09[88], %r10[88], %r11[88], %r12[88]])
          (poly z [%a00[88], %a01[88], %a02[88], %a03[88], %a04[88], %a05[88],
                   %a06[88], %a07[88], %a08[88], %a09[88], %a10[88], %a11[88], %a12[88]] *
           poly z [%b00[88], %b01[88], %b02[88], %b03[88], %b04[88], %b05[88],
                   %b06[88], %b07[88], %b08[88], %b09[88], %b10[88], %b11[88], %b12[88]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[89], %r01[89], %r02[89], %r03[89], %r04[89], %r05[89],
                   %r06[89], %r07[89], %r08[89], %r09[89], %r10[89], %r11[89], %r12[89]])
          (poly z [%a00[89], %a01[89], %a02[89], %a03[89], %a04[89], %a05[89],
                   %a06[89], %a07[89], %a08[89], %a09[89], %a10[89], %a11[89], %a12[89]] *
           poly z [%b00[89], %b01[89], %b02[89], %b03[89], %b04[89], %b05[89],
                   %b06[89], %b07[89], %b08[89], %b09[89], %b10[89], %b11[89], %b12[89]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[90], %r01[90], %r02[90], %r03[90], %r04[90], %r05[90],
                   %r06[90], %r07[90], %r08[90], %r09[90], %r10[90], %r11[90], %r12[90]])
          (poly z [%a00[90], %a01[90], %a02[90], %a03[90], %a04[90], %a05[90],
                   %a06[90], %a07[90], %a08[90], %a09[90], %a10[90], %a11[90], %a12[90]] *
           poly z [%b00[90], %b01[90], %b02[90], %b03[90], %b04[90], %b05[90],
                   %b06[90], %b07[90], %b08[90], %b09[90], %b10[90], %b11[90], %b12[90]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[91], %r01[91], %r02[91], %r03[91], %r04[91], %r05[91],
                   %r06[91], %r07[91], %r08[91], %r09[91], %r10[91], %r11[91], %r12[91]])
          (poly z [%a00[91], %a01[91], %a02[91], %a03[91], %a04[91], %a05[91],
                   %a06[91], %a07[91], %a08[91], %a09[91], %a10[91], %a11[91], %a12[91]] *
           poly z [%b00[91], %b01[91], %b02[91], %b03[91], %b04[91], %b05[91],
                   %b06[91], %b07[91], %b08[91], %b09[91], %b10[91], %b11[91], %b12[91]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[92], %r01[92], %r02[92], %r03[92], %r04[92], %r05[92],
                   %r06[92], %r07[92], %r08[92], %r09[92], %r10[92], %r11[92], %r12[92]])
          (poly z [%a00[92], %a01[92], %a02[92], %a03[92], %a04[92], %a05[92],
                   %a06[92], %a07[92], %a08[92], %a09[92], %a10[92], %a11[92], %a12[92]] *
           poly z [%b00[92], %b01[92], %b02[92], %b03[92], %b04[92], %b05[92],
                   %b06[92], %b07[92], %b08[92], %b09[92], %b10[92], %b11[92], %b12[92]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[93], %r01[93], %r02[93], %r03[93], %r04[93], %r05[93],
                   %r06[93], %r07[93], %r08[93], %r09[93], %r10[93], %r11[93], %r12[93]])
          (poly z [%a00[93], %a01[93], %a02[93], %a03[93], %a04[93], %a05[93],
                   %a06[93], %a07[93], %a08[93], %a09[93], %a10[93], %a11[93], %a12[93]] *
           poly z [%b00[93], %b01[93], %b02[93], %b03[93], %b04[93], %b05[93],
                   %b06[93], %b07[93], %b08[93], %b09[93], %b10[93], %b11[93], %b12[93]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[94], %r01[94], %r02[94], %r03[94], %r04[94], %r05[94],
                   %r06[94], %r07[94], %r08[94], %r09[94], %r10[94], %r11[94], %r12[94]])
          (poly z [%a00[94], %a01[94], %a02[94], %a03[94], %a04[94], %a05[94],
                   %a06[94], %a07[94], %a08[94], %a09[94], %a10[94], %a11[94], %a12[94]] *
           poly z [%b00[94], %b01[94], %b02[94], %b03[94], %b04[94], %b05[94],
                   %b06[94], %b07[94], %b08[94], %b09[94], %b10[94], %b11[94], %b12[94]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[95], %r01[95], %r02[95], %r03[95], %r04[95], %r05[95],
                   %r06[95], %r07[95], %r08[95], %r09[95], %r10[95], %r11[95], %r12[95]])
          (poly z [%a00[95], %a01[95], %a02[95], %a03[95], %a04[95], %a05[95],
                   %a06[95], %a07[95], %a08[95], %a09[95], %a10[95], %a11[95], %a12[95]] *
           poly z [%b00[95], %b01[95], %b02[95], %b03[95], %b04[95], %b05[95],
                   %b06[95], %b07[95], %b08[95], %b09[95], %b10[95], %b11[95], %b12[95]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[96], %r01[96], %r02[96], %r03[96], %r04[96], %r05[96],
                   %r06[96], %r07[96], %r08[96], %r09[96], %r10[96], %r11[96], %r12[96]])
          (poly z [%a00[96], %a01[96], %a02[96], %a03[96], %a04[96], %a05[96],
                   %a06[96], %a07[96], %a08[96], %a09[96], %a10[96], %a11[96], %a12[96]] *
           poly z [%b00[96], %b01[96], %b02[96], %b03[96], %b04[96], %b05[96],
                   %b06[96], %b07[96], %b08[96], %b09[96], %b10[96], %b11[96], %b12[96]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[97], %r01[97], %r02[97], %r03[97], %r04[97], %r05[97],
                   %r06[97], %r07[97], %r08[97], %r09[97], %r10[97], %r11[97], %r12[97]])
          (poly z [%a00[97], %a01[97], %a02[97], %a03[97], %a04[97], %a05[97],
                   %a06[97], %a07[97], %a08[97], %a09[97], %a10[97], %a11[97], %a12[97]] *
           poly z [%b00[97], %b01[97], %b02[97], %b03[97], %b04[97], %b05[97],
                   %b06[97], %b07[97], %b08[97], %b09[97], %b10[97], %b11[97], %b12[97]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[98], %r01[98], %r02[98], %r03[98], %r04[98], %r05[98],
                   %r06[98], %r07[98], %r08[98], %r09[98], %r10[98], %r11[98], %r12[98]])
          (poly z [%a00[98], %a01[98], %a02[98], %a03[98], %a04[98], %a05[98],
                   %a06[98], %a07[98], %a08[98], %a09[98], %a10[98], %a11[98], %a12[98]] *
           poly z [%b00[98], %b01[98], %b02[98], %b03[98], %b04[98], %b05[98],
                   %b06[98], %b07[98], %b08[98], %b09[98], %b10[98], %b11[98], %b12[98]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[99], %r01[99], %r02[99], %r03[99], %r04[99], %r05[99],
                   %r06[99], %r07[99], %r08[99], %r09[99], %r10[99], %r11[99], %r12[99]])
          (poly z [%a00[99], %a01[99], %a02[99], %a03[99], %a04[99], %a05[99],
                   %a06[99], %a07[99], %a08[99], %a09[99], %a10[99], %a11[99], %a12[99]] *
           poly z [%b00[99], %b01[99], %b02[99], %b03[99], %b04[99], %b05[99],
                   %b06[99], %b07[99], %b08[99], %b09[99], %b10[99], %b11[99], %b12[99]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[100], %r01[100], %r02[100], %r03[100], %r04[100], %r05[100],
                   %r06[100], %r07[100], %r08[100], %r09[100], %r10[100], %r11[100], %r12[100]])
          (poly z [%a00[100], %a01[100], %a02[100], %a03[100], %a04[100], %a05[100],
                   %a06[100], %a07[100], %a08[100], %a09[100], %a10[100], %a11[100], %a12[100]] *
           poly z [%b00[100], %b01[100], %b02[100], %b03[100], %b04[100], %b05[100],
                   %b06[100], %b07[100], %b08[100], %b09[100], %b10[100], %b11[100], %b12[100]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[101], %r01[101], %r02[101], %r03[101], %r04[101], %r05[101],
                   %r06[101], %r07[101], %r08[101], %r09[101], %r10[101], %r11[101], %r12[101]])
          (poly z [%a00[101], %a01[101], %a02[101], %a03[101], %a04[101], %a05[101],
                   %a06[101], %a07[101], %a08[101], %a09[101], %a10[101], %a11[101], %a12[101]] *
           poly z [%b00[101], %b01[101], %b02[101], %b03[101], %b04[101], %b05[101],
                   %b06[101], %b07[101], %b08[101], %b09[101], %b10[101], %b11[101], %b12[101]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[102], %r01[102], %r02[102], %r03[102], %r04[102], %r05[102],
                   %r06[102], %r07[102], %r08[102], %r09[102], %r10[102], %r11[102], %r12[102]])
          (poly z [%a00[102], %a01[102], %a02[102], %a03[102], %a04[102], %a05[102],
                   %a06[102], %a07[102], %a08[102], %a09[102], %a10[102], %a11[102], %a12[102]] *
           poly z [%b00[102], %b01[102], %b02[102], %b03[102], %b04[102], %b05[102],
                   %b06[102], %b07[102], %b08[102], %b09[102], %b10[102], %b11[102], %b12[102]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[103], %r01[103], %r02[103], %r03[103], %r04[103], %r05[103],
                   %r06[103], %r07[103], %r08[103], %r09[103], %r10[103], %r11[103], %r12[103]])
          (poly z [%a00[103], %a01[103], %a02[103], %a03[103], %a04[103], %a05[103],
                   %a06[103], %a07[103], %a08[103], %a09[103], %a10[103], %a11[103], %a12[103]] *
           poly z [%b00[103], %b01[103], %b02[103], %b03[103], %b04[103], %b05[103],
                   %b06[103], %b07[103], %b08[103], %b09[103], %b10[103], %b11[103], %b12[103]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[104], %r01[104], %r02[104], %r03[104], %r04[104], %r05[104],
                   %r06[104], %r07[104], %r08[104], %r09[104], %r10[104], %r11[104], %r12[104]])
          (poly z [%a00[104], %a01[104], %a02[104], %a03[104], %a04[104], %a05[104],
                   %a06[104], %a07[104], %a08[104], %a09[104], %a10[104], %a11[104], %a12[104]] *
           poly z [%b00[104], %b01[104], %b02[104], %b03[104], %b04[104], %b05[104],
                   %b06[104], %b07[104], %b08[104], %b09[104], %b10[104], %b11[104], %b12[104]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[105], %r01[105], %r02[105], %r03[105], %r04[105], %r05[105],
                   %r06[105], %r07[105], %r08[105], %r09[105], %r10[105], %r11[105], %r12[105]])
          (poly z [%a00[105], %a01[105], %a02[105], %a03[105], %a04[105], %a05[105],
                   %a06[105], %a07[105], %a08[105], %a09[105], %a10[105], %a11[105], %a12[105]] *
           poly z [%b00[105], %b01[105], %b02[105], %b03[105], %b04[105], %b05[105],
                   %b06[105], %b07[105], %b08[105], %b09[105], %b10[105], %b11[105], %b12[105]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[106], %r01[106], %r02[106], %r03[106], %r04[106], %r05[106],
                   %r06[106], %r07[106], %r08[106], %r09[106], %r10[106], %r11[106], %r12[106]])
          (poly z [%a00[106], %a01[106], %a02[106], %a03[106], %a04[106], %a05[106],
                   %a06[106], %a07[106], %a08[106], %a09[106], %a10[106], %a11[106], %a12[106]] *
           poly z [%b00[106], %b01[106], %b02[106], %b03[106], %b04[106], %b05[106],
                   %b06[106], %b07[106], %b08[106], %b09[106], %b10[106], %b11[106], %b12[106]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[107], %r01[107], %r02[107], %r03[107], %r04[107], %r05[107],
                   %r06[107], %r07[107], %r08[107], %r09[107], %r10[107], %r11[107], %r12[107]])
          (poly z [%a00[107], %a01[107], %a02[107], %a03[107], %a04[107], %a05[107],
                   %a06[107], %a07[107], %a08[107], %a09[107], %a10[107], %a11[107], %a12[107]] *
           poly z [%b00[107], %b01[107], %b02[107], %b03[107], %b04[107], %b05[107],
                   %b06[107], %b07[107], %b08[107], %b09[107], %b10[107], %b11[107], %b12[107]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[108], %r01[108], %r02[108], %r03[108], %r04[108], %r05[108],
                   %r06[108], %r07[108], %r08[108], %r09[108], %r10[108], %r11[108], %r12[108]])
          (poly z [%a00[108], %a01[108], %a02[108], %a03[108], %a04[108], %a05[108],
                   %a06[108], %a07[108], %a08[108], %a09[108], %a10[108], %a11[108], %a12[108]] *
           poly z [%b00[108], %b01[108], %b02[108], %b03[108], %b04[108], %b05[108],
                   %b06[108], %b07[108], %b08[108], %b09[108], %b10[108], %b11[108], %b12[108]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[109], %r01[109], %r02[109], %r03[109], %r04[109], %r05[109],
                   %r06[109], %r07[109], %r08[109], %r09[109], %r10[109], %r11[109], %r12[109]])
          (poly z [%a00[109], %a01[109], %a02[109], %a03[109], %a04[109], %a05[109],
                   %a06[109], %a07[109], %a08[109], %a09[109], %a10[109], %a11[109], %a12[109]] *
           poly z [%b00[109], %b01[109], %b02[109], %b03[109], %b04[109], %b05[109],
                   %b06[109], %b07[109], %b08[109], %b09[109], %b10[109], %b11[109], %b12[109]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[110], %r01[110], %r02[110], %r03[110], %r04[110], %r05[110],
                   %r06[110], %r07[110], %r08[110], %r09[110], %r10[110], %r11[110], %r12[110]])
          (poly z [%a00[110], %a01[110], %a02[110], %a03[110], %a04[110], %a05[110],
                   %a06[110], %a07[110], %a08[110], %a09[110], %a10[110], %a11[110], %a12[110]] *
           poly z [%b00[110], %b01[110], %b02[110], %b03[110], %b04[110], %b05[110],
                   %b06[110], %b07[110], %b08[110], %b09[110], %b10[110], %b11[110], %b12[110]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[111], %r01[111], %r02[111], %r03[111], %r04[111], %r05[111],
                   %r06[111], %r07[111], %r08[111], %r09[111], %r10[111], %r11[111], %r12[111]])
          (poly z [%a00[111], %a01[111], %a02[111], %a03[111], %a04[111], %a05[111],
                   %a06[111], %a07[111], %a08[111], %a09[111], %a10[111], %a11[111], %a12[111]] *
           poly z [%b00[111], %b01[111], %b02[111], %b03[111], %b04[111], %b05[111],
                   %b06[111], %b07[111], %b08[111], %b09[111], %b10[111], %b11[111], %b12[111]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[112], %r01[112], %r02[112], %r03[112], %r04[112], %r05[112],
                   %r06[112], %r07[112], %r08[112], %r09[112], %r10[112], %r11[112], %r12[112]])
          (poly z [%a00[112], %a01[112], %a02[112], %a03[112], %a04[112], %a05[112],
                   %a06[112], %a07[112], %a08[112], %a09[112], %a10[112], %a11[112], %a12[112]] *
           poly z [%b00[112], %b01[112], %b02[112], %b03[112], %b04[112], %b05[112],
                   %b06[112], %b07[112], %b08[112], %b09[112], %b10[112], %b11[112], %b12[112]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[113], %r01[113], %r02[113], %r03[113], %r04[113], %r05[113],
                   %r06[113], %r07[113], %r08[113], %r09[113], %r10[113], %r11[113], %r12[113]])
          (poly z [%a00[113], %a01[113], %a02[113], %a03[113], %a04[113], %a05[113],
                   %a06[113], %a07[113], %a08[113], %a09[113], %a10[113], %a11[113], %a12[113]] *
           poly z [%b00[113], %b01[113], %b02[113], %b03[113], %b04[113], %b05[113],
                   %b06[113], %b07[113], %b08[113], %b09[113], %b10[113], %b11[113], %b12[113]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[114], %r01[114], %r02[114], %r03[114], %r04[114], %r05[114],
                   %r06[114], %r07[114], %r08[114], %r09[114], %r10[114], %r11[114], %r12[114]])
          (poly z [%a00[114], %a01[114], %a02[114], %a03[114], %a04[114], %a05[114],
                   %a06[114], %a07[114], %a08[114], %a09[114], %a10[114], %a11[114], %a12[114]] *
           poly z [%b00[114], %b01[114], %b02[114], %b03[114], %b04[114], %b05[114],
                   %b06[114], %b07[114], %b08[114], %b09[114], %b10[114], %b11[114], %b12[114]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[115], %r01[115], %r02[115], %r03[115], %r04[115], %r05[115],
                   %r06[115], %r07[115], %r08[115], %r09[115], %r10[115], %r11[115], %r12[115]])
          (poly z [%a00[115], %a01[115], %a02[115], %a03[115], %a04[115], %a05[115],
                   %a06[115], %a07[115], %a08[115], %a09[115], %a10[115], %a11[115], %a12[115]] *
           poly z [%b00[115], %b01[115], %b02[115], %b03[115], %b04[115], %b05[115],
                   %b06[115], %b07[115], %b08[115], %b09[115], %b10[115], %b11[115], %b12[115]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[116], %r01[116], %r02[116], %r03[116], %r04[116], %r05[116],
                   %r06[116], %r07[116], %r08[116], %r09[116], %r10[116], %r11[116], %r12[116]])
          (poly z [%a00[116], %a01[116], %a02[116], %a03[116], %a04[116], %a05[116],
                   %a06[116], %a07[116], %a08[116], %a09[116], %a10[116], %a11[116], %a12[116]] *
           poly z [%b00[116], %b01[116], %b02[116], %b03[116], %b04[116], %b05[116],
                   %b06[116], %b07[116], %b08[116], %b09[116], %b10[116], %b11[116], %b12[116]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[117], %r01[117], %r02[117], %r03[117], %r04[117], %r05[117],
                   %r06[117], %r07[117], %r08[117], %r09[117], %r10[117], %r11[117], %r12[117]])
          (poly z [%a00[117], %a01[117], %a02[117], %a03[117], %a04[117], %a05[117],
                   %a06[117], %a07[117], %a08[117], %a09[117], %a10[117], %a11[117], %a12[117]] *
           poly z [%b00[117], %b01[117], %b02[117], %b03[117], %b04[117], %b05[117],
                   %b06[117], %b07[117], %b08[117], %b09[117], %b10[117], %b11[117], %b12[117]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[118], %r01[118], %r02[118], %r03[118], %r04[118], %r05[118],
                   %r06[118], %r07[118], %r08[118], %r09[118], %r10[118], %r11[118], %r12[118]])
          (poly z [%a00[118], %a01[118], %a02[118], %a03[118], %a04[118], %a05[118],
                   %a06[118], %a07[118], %a08[118], %a09[118], %a10[118], %a11[118], %a12[118]] *
           poly z [%b00[118], %b01[118], %b02[118], %b03[118], %b04[118], %b05[118],
                   %b06[118], %b07[118], %b08[118], %b09[118], %b10[118], %b11[118], %b12[118]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[119], %r01[119], %r02[119], %r03[119], %r04[119], %r05[119],
                   %r06[119], %r07[119], %r08[119], %r09[119], %r10[119], %r11[119], %r12[119]])
          (poly z [%a00[119], %a01[119], %a02[119], %a03[119], %a04[119], %a05[119],
                   %a06[119], %a07[119], %a08[119], %a09[119], %a10[119], %a11[119], %a12[119]] *
           poly z [%b00[119], %b01[119], %b02[119], %b03[119], %b04[119], %b05[119],
                   %b06[119], %b07[119], %b08[119], %b09[119], %b10[119], %b11[119], %b12[119]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[120], %r01[120], %r02[120], %r03[120], %r04[120], %r05[120],
                   %r06[120], %r07[120], %r08[120], %r09[120], %r10[120], %r11[120], %r12[120]])
          (poly z [%a00[120], %a01[120], %a02[120], %a03[120], %a04[120], %a05[120],
                   %a06[120], %a07[120], %a08[120], %a09[120], %a10[120], %a11[120], %a12[120]] *
           poly z [%b00[120], %b01[120], %b02[120], %b03[120], %b04[120], %b05[120],
                   %b06[120], %b07[120], %b08[120], %b09[120], %b10[120], %b11[120], %b12[120]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[121], %r01[121], %r02[121], %r03[121], %r04[121], %r05[121],
                   %r06[121], %r07[121], %r08[121], %r09[121], %r10[121], %r11[121], %r12[121]])
          (poly z [%a00[121], %a01[121], %a02[121], %a03[121], %a04[121], %a05[121],
                   %a06[121], %a07[121], %a08[121], %a09[121], %a10[121], %a11[121], %a12[121]] *
           poly z [%b00[121], %b01[121], %b02[121], %b03[121], %b04[121], %b05[121],
                   %b06[121], %b07[121], %b08[121], %b09[121], %b10[121], %b11[121], %b12[121]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[122], %r01[122], %r02[122], %r03[122], %r04[122], %r05[122],
                   %r06[122], %r07[122], %r08[122], %r09[122], %r10[122], %r11[122], %r12[122]])
          (poly z [%a00[122], %a01[122], %a02[122], %a03[122], %a04[122], %a05[122],
                   %a06[122], %a07[122], %a08[122], %a09[122], %a10[122], %a11[122], %a12[122]] *
           poly z [%b00[122], %b01[122], %b02[122], %b03[122], %b04[122], %b05[122],
                   %b06[122], %b07[122], %b08[122], %b09[122], %b10[122], %b11[122], %b12[122]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[123], %r01[123], %r02[123], %r03[123], %r04[123], %r05[123],
                   %r06[123], %r07[123], %r08[123], %r09[123], %r10[123], %r11[123], %r12[123]])
          (poly z [%a00[123], %a01[123], %a02[123], %a03[123], %a04[123], %a05[123],
                   %a06[123], %a07[123], %a08[123], %a09[123], %a10[123], %a11[123], %a12[123]] *
           poly z [%b00[123], %b01[123], %b02[123], %b03[123], %b04[123], %b05[123],
                   %b06[123], %b07[123], %b08[123], %b09[123], %b10[123], %b11[123], %b12[123]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[124], %r01[124], %r02[124], %r03[124], %r04[124], %r05[124],
                   %r06[124], %r07[124], %r08[124], %r09[124], %r10[124], %r11[124], %r12[124]])
          (poly z [%a00[124], %a01[124], %a02[124], %a03[124], %a04[124], %a05[124],
                   %a06[124], %a07[124], %a08[124], %a09[124], %a10[124], %a11[124], %a12[124]] *
           poly z [%b00[124], %b01[124], %b02[124], %b03[124], %b04[124], %b05[124],
                   %b06[124], %b07[124], %b08[124], %b09[124], %b10[124], %b11[124], %b12[124]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[125], %r01[125], %r02[125], %r03[125], %r04[125], %r05[125],
                   %r06[125], %r07[125], %r08[125], %r09[125], %r10[125], %r11[125], %r12[125]])
          (poly z [%a00[125], %a01[125], %a02[125], %a03[125], %a04[125], %a05[125],
                   %a06[125], %a07[125], %a08[125], %a09[125], %a10[125], %a11[125], %a12[125]] *
           poly z [%b00[125], %b01[125], %b02[125], %b03[125], %b04[125], %b05[125],
                   %b06[125], %b07[125], %b08[125], %b09[125], %b10[125], %b11[125], %b12[125]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[126], %r01[126], %r02[126], %r03[126], %r04[126], %r05[126],
                   %r06[126], %r07[126], %r08[126], %r09[126], %r10[126], %r11[126], %r12[126]])
          (poly z [%a00[126], %a01[126], %a02[126], %a03[126], %a04[126], %a05[126],
                   %a06[126], %a07[126], %a08[126], %a09[126], %a10[126], %a11[126], %a12[126]] *
           poly z [%b00[126], %b01[126], %b02[126], %b03[126], %b04[126], %b05[126],
                   %b06[126], %b07[126], %b08[126], %b09[126], %b10[126], %b11[126], %b12[126]])
          [2, z**13 + z**4 + z**3 + z + 1],
    eqmod (poly z [%r00[127], %r01[127], %r02[127], %r03[127], %r04[127], %r05[127],
                   %r06[127], %r07[127], %r08[127], %r09[127], %r10[127], %r11[127], %r12[127]])
          (poly z [%a00[127], %a01[127], %a02[127], %a03[127], %a04[127], %a05[127],
                   %a06[127], %a07[127], %a08[127], %a09[127], %a10[127], %a11[127], %a12[127]] *
           poly z [%b00[127], %b01[127], %b02[127], %b03[127], %b04[127], %b05[127],
                   %b06[127], %b07[127], %b08[127], %b09[127], %b10[127], %b11[127], %b12[127]])
          [2, z**13 + z**4 + z**3 + z + 1]
  ] &&
  true
}
