(* quine:  -v PQCLEAN_MCELIECE348864_AVX_vec256_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.006537 seconds
Checking well-formedness:               [OK]            0.001070 seconds
Transforming to SSA form:               [OK]            0.000228 seconds
Rewriting assignments:                  [OK]            0.000166 seconds
Verifying program safety:               [OK]            0.059358 seconds
Verifying range specification:          [OK]            0.062948 seconds
Rewriting value-preserved casting:      [OK]            0.000033 seconds
Verifying algebraic specification:      [OK]            0.118621 seconds
Verification result:                    [OK]            0.249515 seconds
bywang@quine:~/Work/code/cryptoline/examples/pqclean/mceliece348864/avx$
*)

proc main (
bit a00,bit a01,bit a02,bit a03,bit a04,bit a05,
bit a06,bit a07,bit a08,bit a09,bit a10,bit a11
,
bit b00,bit b01,bit b02,bit b03,bit b04,bit b05,
bit b06,bit b07,bit b08,bit b09,bit b10,bit b11
) =
{
  true
  &&
  true
}

ghost x@bit, f@bit, g@bit : 
and [
f = a00*(x**0) + a01*(x**1) + a02*(x**2) + a03*(x**3) +
a04*(x**4) + a05*(x**5) + a06*(x**6) + a07*(x**7) +
a08*(x**8) + a09*(x**9) + a10*(x**10) + a11*(x**11) 
,
g = b00*(x**0) + b01*(x**1) + b02*(x**2) + b03*(x**3) +
b04*(x**4) + b05*(x**5) + b06*(x**6) + b07*(x**7) +
b08*(x**8) + b09*(x**9) + b10*(x**10) + b11*(x**11) 
] && true;

mov L0x7ffffff3f740 a00;
mov L0x7ffffff3f760 a01;
mov L0x7ffffff3f780 a02;
mov L0x7ffffff3f7a0 a03;
mov L0x7ffffff3f7c0 a04;
mov L0x7ffffff3f7e0 a05;
mov L0x7ffffff3f800 a06;
mov L0x7ffffff3f820 a07;
mov L0x7ffffff3f840 a08;
mov L0x7ffffff3f860 a09;
mov L0x7ffffff3f880 a10;
mov L0x7ffffff3f8a0 a11;

mov L0x7ffffff431e0 b00;
mov L0x7ffffff43200 b01;
mov L0x7ffffff43220 b02;
mov L0x7ffffff43240 b03;
mov L0x7ffffff43260 b04;
mov L0x7ffffff43280 b05;
mov L0x7ffffff432a0 b06;
mov L0x7ffffff432c0 b07;
mov L0x7ffffff432e0 b08;
mov L0x7ffffff43300 b09;
mov L0x7ffffff43320 b10;
mov L0x7ffffff43340 b11;

(* #! -> SP = 0x7ffffff3da38 *)
#! 0x7ffffff3da38 = 0x7ffffff3da38;
(* #mov    %rsp,%r11                                #! PC = 0x55555556ea20 *)
#mov    %rsp,%r11                                #! 0x55555556ea20 = 0x55555556ea20;
(* #and    $0x1f,%r11                               #! PC = 0x55555556ea23 *)
#and    $0x1f,%r11                               #! 0x55555556ea23 = 0x55555556ea23;
(* #add    $0x0,%r11                                #! PC = 0x55555556ea27 *)
#add    $0x0,%r11                                #! 0x55555556ea27 = 0x55555556ea27;
(* #sub    %r11,%rsp                                #! PC = 0x55555556ea2b *)
#sub    %r11,%rsp                                #! 0x55555556ea2b = 0x55555556ea2b;
(* vmovupd (%rdx),%ymm0                            #! EA = L0x7ffffff3f740; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ea2e *)
mov ymm0 L0x7ffffff3f740;
(* vmovupd 0x160(%rsi),%ymm1                       #! EA = L0x7ffffff43340; Value = 0xffffffffffffffff; PC = 0x55555556ea32 *)
mov ymm1 L0x7ffffff43340;
(* vpand  %ymm1,%ymm0,%ymm2                        #! PC = 0x55555556ea3a *)
mul ymm2 ymm0 ymm1;
(* vpand  0x20(%rdx),%ymm1,%ymm3                   #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ea3e *)
mul ymm3 ymm1 L0x7ffffff3f760;
(* vpand  0x40(%rdx),%ymm1,%ymm4                   #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ea43 *)
mul ymm4 ymm1 L0x7ffffff3f780;
(* vpand  0x60(%rdx),%ymm1,%ymm5                   #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ea48 *)
mul ymm5 ymm1 L0x7ffffff3f7a0;
(* vpand  0x80(%rdx),%ymm1,%ymm6                   #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ea4d *)
mul ymm6 ymm1 L0x7ffffff3f7c0;
(* vpand  0xa0(%rdx),%ymm1,%ymm7                   #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ea55 *)
mul ymm7 ymm1 L0x7ffffff3f7e0;
(* vpand  0xc0(%rdx),%ymm1,%ymm8                   #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ea5d *)
mul ymm8 ymm1 L0x7ffffff3f800;
(* vpand  0xe0(%rdx),%ymm1,%ymm9                   #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ea65 *)
mul ymm9 ymm1 L0x7ffffff3f820;
(* vpand  0x100(%rdx),%ymm1,%ymm10                 #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ea6d *)
mul ymm10 ymm1 L0x7ffffff3f840;
(* vpand  0x120(%rdx),%ymm1,%ymm11                 #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ea75 *)
mul ymm11 ymm1 L0x7ffffff3f860;
(* vpand  0x140(%rdx),%ymm1,%ymm12                 #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ea7d *)
mul ymm12 ymm1 L0x7ffffff3f880;
(* vpand  0x160(%rdx),%ymm1,%ymm1                  #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ea85 *)
mul ymm1 ymm1 L0x7ffffff3f8a0;
(* vpxor  %ymm1,%ymm4,%ymm4                        #! PC = 0x55555556ea8d *)
adds dc ymm4 ymm4 ymm1;
(* vmovapd %ymm1,%ymm1                             #! PC = 0x55555556ea91 *)
mov ymm1 ymm1;
(* vmovupd 0x140(%rsi),%ymm13                      #! EA = L0x7ffffff43320; Value = 0xffffffffffffffff; PC = 0x55555556ea95 *)
mov ymm13 L0x7ffffff43320;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ea9d *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556eaa2 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556eaa7 *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556eaac *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556eab1 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556eab6 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556eabb *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556eac0 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556eac5 *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eacd *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ead2 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556eada *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556eadf *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556eae7 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556eaec *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556eaf4 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556eaf9 *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556eb01 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556eb06 *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556eb0e *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556eb13 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556eb1b *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556eb20 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm12,%ymm12                     #! PC = 0x55555556eb28 *)
adds dc ymm12 ymm12 ymm13;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556eb2d *)
adds dc ymm3 ymm3 ymm12;
(* vmovapd %ymm12,%ymm12                           #! PC = 0x55555556eb32 *)
mov ymm12 ymm12;
(* vmovupd 0x120(%rsi),%ymm13                      #! EA = L0x7ffffff43300; Value = 0xffffffffffffffff; PC = 0x55555556eb37 *)
mov ymm13 L0x7ffffff43300;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556eb3f *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556eb44 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556eb49 *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556eb4e *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556eb53 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556eb58 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556eb5d *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556eb62 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556eb67 *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556eb6f *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556eb74 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eb7c *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556eb81 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556eb89 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556eb8e *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556eb96 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556eb9b *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556eba3 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556eba8 *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ebb0 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ebb5 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ebbd *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ebc2 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm11,%ymm11                     #! PC = 0x55555556ebca *)
adds dc ymm11 ymm11 ymm13;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555556ebcf *)
adds dc ymm2 ymm2 ymm11;
(* vmovapd %ymm11,%ymm11                           #! PC = 0x55555556ebd4 *)
mov ymm11 ymm11;
(* vmovupd 0x100(%rsi),%ymm13                      #! EA = L0x7ffffff432e0; Value = 0xffffffffffffffff; PC = 0x55555556ebd9 *)
mov ymm13 L0x7ffffff432e0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ebe1 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ebe6 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ebeb *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556ebf0 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ebf5 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556ebfa *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ebff *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556ec04 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ec09 *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ec11 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ec16 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556ec1e *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ec23 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ec2b *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ec30 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556ec38 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ec3d *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ec45 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ec4a *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ec52 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ec57 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ec5f *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ec64 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556ec6c *)
adds dc ymm10 ymm10 ymm13;
(* vpxor  %ymm10,%ymm1,%ymm1                       #! PC = 0x55555556ec71 *)
adds dc ymm1 ymm1 ymm10;
(* vmovapd %ymm10,%ymm10                           #! PC = 0x55555556ec76 *)
mov ymm10 ymm10;
(* vmovupd 0xe0(%rsi),%ymm13                       #! EA = L0x7ffffff432c0; Value = 0x0000000000000000; PC = 0x55555556ec7b *)
mov ymm13 L0x7ffffff432c0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ec83 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ec88 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ec8d *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ec92 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ec97 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556ec9c *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556eca1 *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556eca6 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ecab *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556ecb3 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ecb8 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ecc0 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ecc5 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556eccd *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ecd2 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ecda *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ecdf *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556ece7 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ecec *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ecf4 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ecf9 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ed01 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ed06 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ed0e *)
adds dc ymm9 ymm9 ymm13;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x55555556ed13 *)
adds dc ymm12 ymm12 ymm9;
(* vmovapd %ymm9,%ymm9                             #! PC = 0x55555556ed18 *)
mov ymm9 ymm9;
(* vmovupd 0xc0(%rsi),%ymm13                       #! EA = L0x7ffffff432a0; Value = 0xffffffffffffffff; PC = 0x55555556ed1d *)
mov ymm13 L0x7ffffff432a0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ed25 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ed2a *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ed2f *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ed34 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ed39 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ed3e *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ed43 *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556ed48 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ed4d *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556ed55 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ed5a *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556ed62 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ed67 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ed6f *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ed74 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556ed7c *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ed81 *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ed89 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ed8e *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556ed96 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ed9b *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556eda3 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556eda8 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556edb0 *)
adds dc ymm8 ymm8 ymm13;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555556edb5 *)
adds dc ymm11 ymm11 ymm8;
(* vmovapd %ymm8,%ymm8                             #! PC = 0x55555556edba *)
mov ymm8 ymm8;
(* vmovupd 0xa0(%rsi),%ymm13                       #! EA = L0x7ffffff43280; Value = 0x0000000000000000; PC = 0x55555556edbf *)
mov ymm13 L0x7ffffff43280;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556edc7 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556edcc *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556edd1 *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556edd6 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556eddb *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ede0 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ede5 *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556edea *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556edef *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556edf7 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556edfc *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556ee04 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ee09 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556ee11 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ee16 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ee1e *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ee23 *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556ee2b *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ee30 *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ee38 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ee3d *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556ee45 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ee4a *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556ee52 *)
adds dc ymm7 ymm7 ymm13;
(* vpxor  %ymm7,%ymm10,%ymm10                      #! PC = 0x55555556ee57 *)
adds dc ymm10 ymm10 ymm7;
(* vmovapd %ymm7,%ymm7                             #! PC = 0x55555556ee5b *)
mov ymm7 ymm7;
(* vmovupd 0x80(%rsi),%ymm13                       #! EA = L0x7ffffff43260; Value = 0xffffffffffffffff; PC = 0x55555556ee5f *)
mov ymm13 L0x7ffffff43260;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ee67 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ee6c *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ee71 *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ee76 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ee7b *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ee80 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ee85 *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ee8a *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ee8f *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ee97 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ee9c *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556eea4 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556eea9 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556eeb1 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556eeb6 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556eebe *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556eec3 *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556eecb *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556eed0 *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556eed8 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556eedd *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eee5 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556eeea *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556eef2 *)
adds dc ymm6 ymm6 ymm13;
(* vpxor  %ymm6,%ymm9,%ymm9                        #! PC = 0x55555556eef7 *)
adds dc ymm9 ymm9 ymm6;
(* vmovapd %ymm6,%ymm6                             #! PC = 0x55555556eefb *)
mov ymm6 ymm6;
(* vmovupd 0x60(%rsi),%ymm13                       #! EA = L0x7ffffff43240; Value = 0x0000000000000000; PC = 0x55555556eeff *)
mov ymm13 L0x7ffffff43240;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556ef04 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556ef09 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556ef0e *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ef13 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556ef18 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ef1d *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556ef22 *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ef27 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ef2c *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ef34 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556ef39 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556ef41 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556ef46 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556ef4e *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556ef53 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556ef5b *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556ef60 *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556ef68 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556ef6d *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556ef75 *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556ef7a *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556ef82 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556ef87 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556ef8f *)
adds dc ymm5 ymm5 ymm13;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555556ef94 *)
adds dc ymm8 ymm8 ymm5;
(* vmovapd %ymm5,%ymm5                             #! PC = 0x55555556ef98 *)
mov ymm5 ymm5;
(* vmovupd 0x40(%rsi),%ymm13                       #! EA = L0x7ffffff43220; Value = 0xffffffffffffffff; PC = 0x55555556ef9c *)
mov ymm13 L0x7ffffff43220;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556efa1 *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556efa6 *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556efab *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556efb0 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556efb5 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556efba *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556efbf *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556efc4 *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556efc9 *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556efd1 *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556efd6 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556efde *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556efe3 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556efeb *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556eff0 *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556eff8 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556effd *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556f005 *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556f00a *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556f012 *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556f017 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555556f01f *)
adds dc ymm3 ymm3 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556f024 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f02c *)
adds dc ymm4 ymm4 ymm13;
(* vpxor  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555556f031 *)
adds dc ymm7 ymm7 ymm4;
(* vmovapd %ymm4,%ymm4                             #! PC = 0x55555556f035 *)
mov ymm4 ymm4;
(* vmovupd 0x20(%rsi),%ymm13                       #! EA = L0x7ffffff43200; Value = 0xffffffffffffffff; PC = 0x55555556f039 *)
mov ymm13 L0x7ffffff43200;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555556f03e *)
mul ymm14 ymm0 ymm13;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555556f043 *)
adds dc ymm4 ymm4 ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556f048 *)
mul ymm14 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f04d *)
adds dc ymm5 ymm5 ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556f052 *)
mul ymm14 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f057 *)
adds dc ymm6 ymm6 ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556f05c *)
mul ymm14 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f061 *)
adds dc ymm7 ymm7 ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556f066 *)
mul ymm14 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f06e *)
adds dc ymm8 ymm8 ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556f073 *)
mul ymm14 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f07b *)
adds dc ymm9 ymm9 ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556f080 *)
mul ymm14 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f088 *)
adds dc ymm10 ymm10 ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556f08d *)
mul ymm14 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555556f095 *)
adds dc ymm11 ymm11 ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556f09a *)
mul ymm14 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555556f0a2 *)
adds dc ymm12 ymm12 ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556f0a7 *)
mul ymm14 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555556f0af *)
adds dc ymm1 ymm1 ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556f0b4 *)
mul ymm14 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555556f0bc *)
adds dc ymm2 ymm2 ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556f0c1 *)
mul ymm13 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f0c9 *)
adds dc ymm3 ymm3 ymm13;
(* vpxor  %ymm3,%ymm6,%ymm6                        #! PC = 0x55555556f0ce *)
adds dc ymm6 ymm6 ymm3;
(* vmovapd %ymm3,%ymm3                             #! PC = 0x55555556f0d2 *)
mov ymm3 ymm3;
(* vmovupd (%rsi),%ymm13                           #! EA = L0x7ffffff431e0; Value = 0xffffffffffffffff; PC = 0x55555556f0d6 *)
mov ymm13 L0x7ffffff431e0;
(* vpand  %ymm13,%ymm0,%ymm0                       #! PC = 0x55555556f0da *)
mul ymm0 ymm0 ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555556f0df *)
adds dc ymm3 ymm3 ymm0;
(* vpand  0x20(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f760; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555556f0e3 *)
mul ymm0 ymm13 L0x7ffffff3f760;
(* vpxor  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555556f0e8 *)
adds dc ymm4 ymm4 ymm0;
(* vpand  0x40(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f780; Value = 0x0ff00ff00ff00ff0; PC = 0x55555556f0ec *)
mul ymm0 ymm13 L0x7ffffff3f780;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555556f0f1 *)
adds dc ymm5 ymm5 ymm0;
(* vpand  0x60(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f7a0; Value = 0xaa5555aaaa5555aa; PC = 0x55555556f0f5 *)
mul ymm0 ymm13 L0x7ffffff3f7a0;
(* vpxor  %ymm0,%ymm6,%ymm6                        #! PC = 0x55555556f0fa *)
adds dc ymm6 ymm6 ymm0;
(* vpand  0x80(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f7c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556f0fe *)
mul ymm0 ymm13 L0x7ffffff3f7c0;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555556f106 *)
adds dc ymm7 ymm7 ymm0;
(* vpand  0xa0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f7e0; Value = 0x33cccc33cc3333cc; PC = 0x55555556f10a *)
mul ymm0 ymm13 L0x7ffffff3f7e0;
(* vpxor  %ymm0,%ymm8,%ymm8                        #! PC = 0x55555556f112 *)
adds dc ymm8 ymm8 ymm0;
(* vpand  0xc0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f800; Value = 0xffff0000ffff0000; PC = 0x55555556f116 *)
mul ymm0 ymm13 L0x7ffffff3f800;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555556f11e *)
adds dc ymm9 ymm9 ymm0;
(* vpand  0xe0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff3f820; Value = 0xcc33cc3333cc33cc; PC = 0x55555556f122 *)
mul ymm0 ymm13 L0x7ffffff3f820;
(* vpxor  %ymm0,%ymm10,%ymm10                      #! PC = 0x55555556f12a *)
adds dc ymm10 ymm10 ymm0;
(* vpand  0x100(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff3f840; Value = 0x33cc33cc33cc33cc; PC = 0x55555556f12e *)
mul ymm0 ymm13 L0x7ffffff3f840;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555556f136 *)
adds dc ymm11 ymm11 ymm0;
(* vpand  0x120(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff3f860; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555556f13a *)
mul ymm0 ymm13 L0x7ffffff3f860;
(* vpxor  %ymm0,%ymm12,%ymm12                      #! PC = 0x55555556f142 *)
adds dc ymm12 ymm12 ymm0;
(* vpand  0x140(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff3f880; Value = 0xff00ff00ff00ff00; PC = 0x55555556f146 *)
mul ymm0 ymm13 L0x7ffffff3f880;
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555556f14e *)
adds dc ymm1 ymm1 ymm0;
(* vpand  0x160(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff3f8a0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555556f152 *)
mul ymm0 ymm13 L0x7ffffff3f8a0;
(* vpxor  %ymm0,%ymm2,%ymm2                        #! PC = 0x55555556f15a *)
adds dc ymm2 ymm2 ymm0;
(* vmovupd %ymm2,0x160(%rdi)                       #! EA = L0x7ffffff3dc20; PC = 0x55555556f15e *)
mov L0x7ffffff3dc20 ymm2;
(* vmovupd %ymm1,0x140(%rdi)                       #! EA = L0x7ffffff3dc00; PC = 0x55555556f166 *)
mov L0x7ffffff3dc00 ymm1;
(* vmovupd %ymm12,0x120(%rdi)                      #! EA = L0x7ffffff3dbe0; PC = 0x55555556f16e *)
mov L0x7ffffff3dbe0 ymm12;
(* vmovupd %ymm11,0x100(%rdi)                      #! EA = L0x7ffffff3dbc0; PC = 0x55555556f176 *)
mov L0x7ffffff3dbc0 ymm11;
(* vmovupd %ymm10,0xe0(%rdi)                       #! EA = L0x7ffffff3dba0; PC = 0x55555556f17e *)
mov L0x7ffffff3dba0 ymm10;
(* vmovupd %ymm9,0xc0(%rdi)                        #! EA = L0x7ffffff3db80; PC = 0x55555556f186 *)
mov L0x7ffffff3db80 ymm9;
(* vmovupd %ymm8,0xa0(%rdi)                        #! EA = L0x7ffffff3db60; PC = 0x55555556f18e *)
mov L0x7ffffff3db60 ymm8;
(* vmovupd %ymm7,0x80(%rdi)                        #! EA = L0x7ffffff3db40; PC = 0x55555556f196 *)
mov L0x7ffffff3db40 ymm7;
(* vmovupd %ymm6,0x60(%rdi)                        #! EA = L0x7ffffff3db20; PC = 0x55555556f19e *)
mov L0x7ffffff3db20 ymm6;
(* vmovupd %ymm5,0x40(%rdi)                        #! EA = L0x7ffffff3db00; PC = 0x55555556f1a3 *)
mov L0x7ffffff3db00 ymm5;
(* vmovupd %ymm4,0x20(%rdi)                        #! EA = L0x7ffffff3dae0; PC = 0x55555556f1a8 *)
mov L0x7ffffff3dae0 ymm4;
(* vmovupd %ymm3,(%rdi)                            #! EA = L0x7ffffff3dac0; PC = 0x55555556f1ad *)
mov L0x7ffffff3dac0 ymm3;
(* #add    %r11,%rsp                                #! PC = 0x55555556f1b1 *)
#add    %r11,%rsp                                #! 0x55555556f1b1 = 0x55555556f1b1;
(* #! <- SP = 0x7ffffff3da38 *)
#! 0x7ffffff3da38 = 0x7ffffff3da38;
(* #retq                                           #! PC = 0x55555556f1b4 *)
#retq                                           #! 0x55555556f1b4 = 0x55555556f1b4;

mov c00 L0x7ffffff3dac0;
mov c01 L0x7ffffff3dae0;
mov c02 L0x7ffffff3db00;
mov c03 L0x7ffffff3db20;
mov c04 L0x7ffffff3db40;
mov c05 L0x7ffffff3db60;
mov c06 L0x7ffffff3db80;
mov c07 L0x7ffffff3dba0;
mov c08 L0x7ffffff3dbc0;
mov c09 L0x7ffffff3dbe0;
mov c10 L0x7ffffff3dc00;
mov c11 L0x7ffffff3dc20;

ghost h@bit :
h = c00*(x**0) + c01*(x**1) + c02*(x**2) + c03*(x**3) +
c04*(x**4) + c05*(x**5) + c06*(x**6) + c07*(x**7) +
c08*(x**8) + c09*(x**9) + c10*(x**10) + c11*(x**11) 
 && true;

{
  eqmod h (f * g) [2, x**12 + x**3 + 1]
&&
  true
}

