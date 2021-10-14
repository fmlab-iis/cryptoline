(* quine:  -v vec128_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.006461 seconds
Checking well-formedness:               [OK]            0.001344 seconds
Transforming to SSA form:               [OK]            0.000349 seconds
Rewriting assignments:                  [OK]            0.000265 seconds
Verifying program safety:               [OK]            0.060008 seconds
Verifying range specification:          [OK]            0.092012 seconds
Rewriting value-preserved casting:      [OK]            0.000035 seconds
Verifying algebraic specification:      [OK]            0.114284 seconds
Verification result:                    [OK]            0.275420 seconds
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

nondet ymm1_1@bit; nondet ymm4_1@bit; nondet ymm6_1@bit; nondet ymm8_1@bit;
nondet ymm10_1@bit;

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

mov L0x7fffffff6930 a00;
mov L0x7fffffff6940 a01;
mov L0x7fffffff6950 a02;
mov L0x7fffffff6960 a03;
mov L0x7fffffff6970 a04;
mov L0x7fffffff6980 a05;
mov L0x7fffffff6990 a06;
mov L0x7fffffff69a0 a07;
mov L0x7fffffff69b0 a08;
mov L0x7fffffff69c0 a09;
mov L0x7fffffff69d0 a10;
mov L0x7fffffff69e0 a11;

mov L0x7fffffff6b00 b00;
mov L0x7fffffff6b10 b01;
mov L0x7fffffff6b20 b02;
mov L0x7fffffff6b30 b03;
mov L0x7fffffff6b40 b04;
mov L0x7fffffff6b50 b05;
mov L0x7fffffff6b60 b06;
mov L0x7fffffff6b70 b07;
mov L0x7fffffff6b80 b08;
mov L0x7fffffff6b90 b09;
mov L0x7fffffff6ba0 b10;
mov L0x7fffffff6bb0 b11;

(* #! -> SP = 0x7fffffff6578 *)
#! 0x7fffffff6578 = 0x7fffffff6578;
(* #mov    %rsp,%r11                                #! PC = 0x55555557ebc0 *)
#mov    %rsp,%r11                                #! 0x55555557ebc0 = 0x55555557ebc0;
(* #and    $0x1f,%r11                               #! PC = 0x55555557ebc3 *)
#and    $0x1f,%r11                               #! 0x55555557ebc3 = 0x55555557ebc3;
(* #add    $0x260,%r11                              #! PC = 0x55555557ebc7 *)
#add    $0x260,%r11                              #! 0x55555557ebc7 = 0x55555557ebc7;
(* #sub    %r11,%rsp                                #! PC = 0x55555557ebce *)
#sub    %r11,%rsp                                #! 0x55555557ebce = 0x55555557ebce;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555557ebd1 *)
#lea    (%rsp),%rcx                              #! 0x55555557ebd1 = 0x55555557ebd1;
(* vbroadcasti128 0xb0(%rdx),%ymm0                 #! EA = L0x7fffffff69e0; Value = 0x0000000000000000; PC = 0x55555557ebd5 *)
mov ymm0_0 L0x7fffffff69e0;
mov ymm0_1 L0x7fffffff69e0;
(* vinsertf128 $0x0,0x50(%rsi),%ymm1,%ymm1         #! EA = L0x7fffffff6b50; Value = 0x0f0aa94f8bd0c1ae; PC = 0x55555557ebde *)
mov ymm1_0 L0x7fffffff6b50;
mov ymm1_1 ymm1_1;
(* vinsertf128 $0x1,0xb0(%rsi),%ymm1,%ymm1         #! EA = L0x7fffffff6bb0; Value = 0x48422151e04fc0b1; PC = 0x55555557ebe5 *)
mov ymm1_0 ymm1_0;
mov ymm1_1 L0x7fffffff6bb0;
(* vpand  %ymm0,%ymm1,%ymm2                        #! PC = 0x55555557ebef *)
mul ymm2_0 ymm1_0 ymm0_0;
mul ymm2_1 ymm1_1 ymm0_1;
(* vmovupd %ymm2,0x200(%rcx)                       #! EA = L0x7fffffff6500; PC = 0x55555557ebf3 *)
mov L0x7fffffff6500 ymm2_0;
mov L0x7fffffff6510 ymm2_1;
(* vinsertf128 $0x0,0x40(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffff6b40; Value = 0xb5d02fb44c7afa0d; PC = 0x55555557ebfb *)
mov ymm2_0 L0x7fffffff6b40;
mov ymm2_1 ymm2_1;
(* vinsertf128 $0x1,0xa0(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffff6ba0; Value = 0x607a77d2b1e87075; PC = 0x55555557ec02 *)
mov ymm2_0 ymm2_0;
mov ymm2_1 L0x7fffffff6ba0;
(* vpand  %ymm0,%ymm2,%ymm3                        #! PC = 0x55555557ec0c *)
mul ymm3_0 ymm2_0 ymm0_0;
mul ymm3_1 ymm2_1 ymm0_1;
(* vinsertf128 $0x0,0x30(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffff6b30; Value = 0x6179bc25454c1be8; PC = 0x55555557ec10 *)
mov ymm4_0 L0x7fffffff6b30;
mov ymm4_1 ymm4_1;
(* vinsertf128 $0x1,0x90(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffff6b90; Value = 0x797453373c22680c; PC = 0x55555557ec17 *)
mov ymm4_0 ymm4_0;
mov ymm4_1 L0x7fffffff6b90;
(* vpand  %ymm0,%ymm4,%ymm5                        #! PC = 0x55555557ec21 *)
mul ymm5_0 ymm4_0 ymm0_0;
mul ymm5_1 ymm4_1 ymm0_1;
(* vinsertf128 $0x0,0x20(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffff6b20; Value = 0x488bb7b57e38cc9a; PC = 0x55555557ec25 *)
mov ymm6_0 L0x7fffffff6b20;
mov ymm6_1 ymm6_1;
(* vinsertf128 $0x1,0x80(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffff6b80; Value = 0x337a173d0c576036; PC = 0x55555557ec2c *)
mov ymm6_0 ymm6_0;
mov ymm6_1 L0x7fffffff6b80;
(* vpand  %ymm0,%ymm6,%ymm7                        #! PC = 0x55555557ec36 *)
mul ymm7_0 ymm6_0 ymm0_0;
mul ymm7_1 ymm6_1 ymm0_1;
(* vinsertf128 $0x0,0x10(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffff6b10; Value = 0xcde3e8b3b32c164e; PC = 0x55555557ec3a *)
mov ymm8_0 L0x7fffffff6b10;
mov ymm8_1 ymm8_1;
(* vinsertf128 $0x1,0x70(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffff6b70; Value = 0x9279cd8dbd503d36; PC = 0x55555557ec41 *)
mov ymm8_0 ymm8_0;
mov ymm8_1 L0x7fffffff6b70;
(* vpand  %ymm0,%ymm8,%ymm9                        #! PC = 0x55555557ec48 *)
mul ymm9_0 ymm8_0 ymm0_0;
mul ymm9_1 ymm8_1 ymm0_1;
(* vinsertf128 $0x0,(%rsi),%ymm10,%ymm10           #! EA = L0x7fffffff6b00; Value = 0x7af3bef3b95920ce; PC = 0x55555557ec4c *)
mov ymm10_0 L0x7fffffff6b00;
mov ymm10_1 ymm10_1;
(* vinsertf128 $0x1,0x60(%rsi),%ymm10,%ymm10       #! EA = L0x7fffffff6b60; Value = 0x1b76699d0cb0f11c; PC = 0x55555557ec52 *)
mov ymm10_0 ymm10_0;
mov ymm10_1 L0x7fffffff6b60;
(* vpand  %ymm0,%ymm10,%ymm0                       #! PC = 0x55555557ec59 *)
mul ymm0_0 ymm10_0 ymm0_0;
mul ymm0_1 ymm10_1 ymm0_1;
(* vbroadcasti128 0xa0(%rdx),%ymm11                #! EA = L0x7fffffff69d0; Value = 0x0000000000000000; PC = 0x55555557ec5d *)
mov ymm11_0 L0x7fffffff69d0;
mov ymm11_1 L0x7fffffff69d0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ec66 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557ec6b *)
adds dc ymm3_0 ymm3_0 ymm12_0;
adds dc ymm3_1 ymm3_1 ymm12_1;
(* vmovupd %ymm3,0x1e0(%rcx)                       #! EA = L0x7fffffff64e0; PC = 0x55555557ec70 *)
mov L0x7fffffff64e0 ymm3_0;
mov L0x7fffffff64f0 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555557ec78 *)
mul ymm3_0 ymm2_0 ymm11_0;
mul ymm3_1 ymm2_1 ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555557ec7d *)
adds dc ymm5_0 ymm5_0 ymm3_0;
adds dc ymm5_1 ymm5_1 ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555557ec81 *)
mul ymm3_0 ymm4_0 ymm11_0;
mul ymm3_1 ymm4_1 ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555557ec86 *)
adds dc ymm7_0 ymm7_0 ymm3_0;
adds dc ymm7_1 ymm7_1 ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555557ec8a *)
mul ymm3_0 ymm6_0 ymm11_0;
mul ymm3_1 ymm6_1 ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555557ec8f *)
adds dc ymm9_0 ymm9_0 ymm3_0;
adds dc ymm9_1 ymm9_1 ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555557ec93 *)
mul ymm3_0 ymm8_0 ymm11_0;
mul ymm3_1 ymm8_1 ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555557ec98 *)
adds dc ymm0_0 ymm0_0 ymm3_0;
adds dc ymm0_1 ymm0_1 ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555557ec9c *)
mul ymm3_0 ymm10_0 ymm11_0;
mul ymm3_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x90(%rdx),%ymm11                #! EA = L0x7fffffff69c0; Value = 0x0000000000000000; PC = 0x55555557eca1 *)
mov ymm11_0 L0x7fffffff69c0;
mov ymm11_1 L0x7fffffff69c0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ecaa *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555557ecaf *)
adds dc ymm5_0 ymm5_0 ymm12_0;
adds dc ymm5_1 ymm5_1 ymm12_1;
(* vmovupd %ymm5,0x1c0(%rcx)                       #! EA = L0x7fffffff64c0; PC = 0x55555557ecb4 *)
mov L0x7fffffff64c0 ymm5_0;
mov L0x7fffffff64d0 ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555557ecbc *)
mul ymm5_0 ymm2_0 ymm11_0;
mul ymm5_1 ymm2_1 ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555557ecc1 *)
adds dc ymm7_0 ymm7_0 ymm5_0;
adds dc ymm7_1 ymm7_1 ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555557ecc5 *)
mul ymm5_0 ymm4_0 ymm11_0;
mul ymm5_1 ymm4_1 ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555557ecca *)
adds dc ymm9_0 ymm9_0 ymm5_0;
adds dc ymm9_1 ymm9_1 ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555557ecce *)
mul ymm5_0 ymm6_0 ymm11_0;
mul ymm5_1 ymm6_1 ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555557ecd3 *)
adds dc ymm0_0 ymm0_0 ymm5_0;
adds dc ymm0_1 ymm0_1 ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555557ecd7 *)
mul ymm5_0 ymm8_0 ymm11_0;
mul ymm5_1 ymm8_1 ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555557ecdc *)
adds dc ymm3_0 ymm3_0 ymm5_0;
adds dc ymm3_1 ymm3_1 ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555557ece0 *)
mul ymm5_0 ymm10_0 ymm11_0;
mul ymm5_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x80(%rdx),%ymm11                #! EA = L0x7fffffff69b0; Value = 0xffffffff00000000; PC = 0x55555557ece5 *)
mov ymm11_0 L0x7fffffff69b0;
mov ymm11_1 L0x7fffffff69b0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ecee *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555557ecf3 *)
adds dc ymm7_0 ymm7_0 ymm12_0;
adds dc ymm7_1 ymm7_1 ymm12_1;
(* vmovupd %ymm7,0x1a0(%rcx)                       #! EA = L0x7fffffff64a0; PC = 0x55555557ecf8 *)
mov L0x7fffffff64a0 ymm7_0;
mov L0x7fffffff64b0 ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555557ed00 *)
mul ymm7_0 ymm2_0 ymm11_0;
mul ymm7_1 ymm2_1 ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555557ed05 *)
adds dc ymm9_0 ymm9_0 ymm7_0;
adds dc ymm9_1 ymm9_1 ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555557ed09 *)
mul ymm7_0 ymm4_0 ymm11_0;
mul ymm7_1 ymm4_1 ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555557ed0e *)
adds dc ymm0_0 ymm0_0 ymm7_0;
adds dc ymm0_1 ymm0_1 ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555557ed12 *)
mul ymm7_0 ymm6_0 ymm11_0;
mul ymm7_1 ymm6_1 ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555557ed17 *)
adds dc ymm3_0 ymm3_0 ymm7_0;
adds dc ymm3_1 ymm3_1 ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555557ed1b *)
mul ymm7_0 ymm8_0 ymm11_0;
mul ymm7_1 ymm8_1 ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555557ed20 *)
adds dc ymm5_0 ymm5_0 ymm7_0;
adds dc ymm5_1 ymm5_1 ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555557ed24 *)
mul ymm7_0 ymm10_0 ymm11_0;
mul ymm7_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x70(%rdx),%ymm11                #! EA = L0x7fffffff69a0; Value = 0x0000000000000000; PC = 0x55555557ed29 *)
mov ymm11_0 L0x7fffffff69a0;
mov ymm11_1 L0x7fffffff69a0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ed2f *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555557ed34 *)
adds dc ymm9_0 ymm9_0 ymm12_0;
adds dc ymm9_1 ymm9_1 ymm12_1;
(* vmovupd %ymm9,0x180(%rcx)                       #! EA = L0x7fffffff6480; PC = 0x55555557ed39 *)
mov L0x7fffffff6480 ymm9_0;
mov L0x7fffffff6490 ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555557ed41 *)
mul ymm9_0 ymm2_0 ymm11_0;
mul ymm9_1 ymm2_1 ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555557ed46 *)
adds dc ymm0_0 ymm0_0 ymm9_0;
adds dc ymm0_1 ymm0_1 ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555557ed4b *)
mul ymm9_0 ymm4_0 ymm11_0;
mul ymm9_1 ymm4_1 ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555557ed50 *)
adds dc ymm3_0 ymm3_0 ymm9_0;
adds dc ymm3_1 ymm3_1 ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555557ed55 *)
mul ymm9_0 ymm6_0 ymm11_0;
mul ymm9_1 ymm6_1 ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555557ed5a *)
adds dc ymm5_0 ymm5_0 ymm9_0;
adds dc ymm5_1 ymm5_1 ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555557ed5f *)
mul ymm9_0 ymm8_0 ymm11_0;
mul ymm9_1 ymm8_1 ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555557ed64 *)
adds dc ymm7_0 ymm7_0 ymm9_0;
adds dc ymm7_1 ymm7_1 ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555557ed69 *)
mul ymm9_0 ymm10_0 ymm11_0;
mul ymm9_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x60(%rdx),%ymm11                #! EA = L0x7fffffff6990; Value = 0x0000000000000000; PC = 0x55555557ed6e *)
mov ymm11_0 L0x7fffffff6990;
mov ymm11_1 L0x7fffffff6990;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ed74 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555557ed79 *)
adds dc ymm0_0 ymm0_0 ymm12_0;
adds dc ymm0_1 ymm0_1 ymm12_1;
(* vmovupd %ymm0,0x160(%rcx)                       #! EA = L0x7fffffff6460; PC = 0x55555557ed7e *)
mov L0x7fffffff6460 ymm0_0;
mov L0x7fffffff6470 ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555557ed86 *)
mul ymm0_0 ymm2_0 ymm11_0;
mul ymm0_1 ymm2_1 ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557ed8b *)
adds dc ymm3_0 ymm3_0 ymm0_0;
adds dc ymm3_1 ymm3_1 ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555557ed8f *)
mul ymm0_0 ymm4_0 ymm11_0;
mul ymm0_1 ymm4_1 ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557ed94 *)
adds dc ymm5_0 ymm5_0 ymm0_0;
adds dc ymm5_1 ymm5_1 ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555557ed98 *)
mul ymm0_0 ymm6_0 ymm11_0;
mul ymm0_1 ymm6_1 ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557ed9d *)
adds dc ymm7_0 ymm7_0 ymm0_0;
adds dc ymm7_1 ymm7_1 ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555557eda1 *)
mul ymm0_0 ymm8_0 ymm11_0;
mul ymm0_1 ymm8_1 ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557eda6 *)
adds dc ymm9_0 ymm9_0 ymm0_0;
adds dc ymm9_1 ymm9_1 ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555557edaa *)
mul ymm0_0 ymm10_0 ymm11_0;
mul ymm0_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x50(%rdx),%ymm11                #! EA = L0x7fffffff6980; Value = 0xffffffff00000000; PC = 0x55555557edaf *)
mov ymm11_0 L0x7fffffff6980;
mov ymm11_1 L0x7fffffff6980;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557edb5 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557edba *)
adds dc ymm3_0 ymm3_0 ymm12_0;
adds dc ymm3_1 ymm3_1 ymm12_1;
(* vmovupd %ymm3,0x140(%rcx)                       #! EA = L0x7fffffff6440; PC = 0x55555557edbf *)
mov L0x7fffffff6440 ymm3_0;
mov L0x7fffffff6450 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555557edc7 *)
mul ymm3_0 ymm2_0 ymm11_0;
mul ymm3_1 ymm2_1 ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555557edcc *)
adds dc ymm5_0 ymm5_0 ymm3_0;
adds dc ymm5_1 ymm5_1 ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555557edd0 *)
mul ymm3_0 ymm4_0 ymm11_0;
mul ymm3_1 ymm4_1 ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555557edd5 *)
adds dc ymm7_0 ymm7_0 ymm3_0;
adds dc ymm7_1 ymm7_1 ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555557edd9 *)
mul ymm3_0 ymm6_0 ymm11_0;
mul ymm3_1 ymm6_1 ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555557edde *)
adds dc ymm9_0 ymm9_0 ymm3_0;
adds dc ymm9_1 ymm9_1 ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555557ede2 *)
mul ymm3_0 ymm8_0 ymm11_0;
mul ymm3_1 ymm8_1 ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555557ede7 *)
adds dc ymm0_0 ymm0_0 ymm3_0;
adds dc ymm0_1 ymm0_1 ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555557edeb *)
mul ymm3_0 ymm10_0 ymm11_0;
mul ymm3_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x40(%rdx),%ymm11                #! EA = L0x7fffffff6970; Value = 0x0000000000000000; PC = 0x55555557edf0 *)
mov ymm11_0 L0x7fffffff6970;
mov ymm11_1 L0x7fffffff6970;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557edf6 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555557edfb *)
adds dc ymm5_0 ymm5_0 ymm12_0;
adds dc ymm5_1 ymm5_1 ymm12_1;
(* vmovupd %ymm5,0x120(%rcx)                       #! EA = L0x7fffffff6420; PC = 0x55555557ee00 *)
mov L0x7fffffff6420 ymm5_0;
mov L0x7fffffff6430 ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555557ee08 *)
mul ymm5_0 ymm2_0 ymm11_0;
mul ymm5_1 ymm2_1 ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555557ee0d *)
adds dc ymm7_0 ymm7_0 ymm5_0;
adds dc ymm7_1 ymm7_1 ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555557ee11 *)
mul ymm5_0 ymm4_0 ymm11_0;
mul ymm5_1 ymm4_1 ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555557ee16 *)
adds dc ymm9_0 ymm9_0 ymm5_0;
adds dc ymm9_1 ymm9_1 ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555557ee1a *)
mul ymm5_0 ymm6_0 ymm11_0;
mul ymm5_1 ymm6_1 ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555557ee1f *)
adds dc ymm0_0 ymm0_0 ymm5_0;
adds dc ymm0_1 ymm0_1 ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555557ee23 *)
mul ymm5_0 ymm8_0 ymm11_0;
mul ymm5_1 ymm8_1 ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555557ee28 *)
adds dc ymm3_0 ymm3_0 ymm5_0;
adds dc ymm3_1 ymm3_1 ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555557ee2c *)
mul ymm5_0 ymm10_0 ymm11_0;
mul ymm5_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x30(%rdx),%ymm11                #! EA = L0x7fffffff6960; Value = 0x0000000000000000; PC = 0x55555557ee31 *)
mov ymm11_0 L0x7fffffff6960;
mov ymm11_1 L0x7fffffff6960;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ee37 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555557ee3c *)
adds dc ymm7_0 ymm7_0 ymm12_0;
adds dc ymm7_1 ymm7_1 ymm12_1;
(* vmovupd %ymm7,0x100(%rcx)                       #! EA = L0x7fffffff6400; PC = 0x55555557ee41 *)
mov L0x7fffffff6400 ymm7_0;
mov L0x7fffffff6410 ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555557ee49 *)
mul ymm7_0 ymm2_0 ymm11_0;
mul ymm7_1 ymm2_1 ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555557ee4e *)
adds dc ymm9_0 ymm9_0 ymm7_0;
adds dc ymm9_1 ymm9_1 ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555557ee52 *)
mul ymm7_0 ymm4_0 ymm11_0;
mul ymm7_1 ymm4_1 ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555557ee57 *)
adds dc ymm0_0 ymm0_0 ymm7_0;
adds dc ymm0_1 ymm0_1 ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555557ee5b *)
mul ymm7_0 ymm6_0 ymm11_0;
mul ymm7_1 ymm6_1 ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555557ee60 *)
adds dc ymm3_0 ymm3_0 ymm7_0;
adds dc ymm3_1 ymm3_1 ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555557ee64 *)
mul ymm7_0 ymm8_0 ymm11_0;
mul ymm7_1 ymm8_1 ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555557ee69 *)
adds dc ymm5_0 ymm5_0 ymm7_0;
adds dc ymm5_1 ymm5_1 ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555557ee6d *)
mul ymm7_0 ymm10_0 ymm11_0;
mul ymm7_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x20(%rdx),%ymm11                #! EA = L0x7fffffff6950; Value = 0xffffffff00000000; PC = 0x55555557ee72 *)
mov ymm11_0 L0x7fffffff6950;
mov ymm11_1 L0x7fffffff6950;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ee78 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555557ee7d *)
adds dc ymm9_0 ymm9_0 ymm12_0;
adds dc ymm9_1 ymm9_1 ymm12_1;
(* vmovupd %ymm9,0xe0(%rcx)                        #! EA = L0x7fffffff63e0; PC = 0x55555557ee82 *)
mov L0x7fffffff63e0 ymm9_0;
mov L0x7fffffff63f0 ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555557ee8a *)
mul ymm9_0 ymm2_0 ymm11_0;
mul ymm9_1 ymm2_1 ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555557ee8f *)
adds dc ymm0_0 ymm0_0 ymm9_0;
adds dc ymm0_1 ymm0_1 ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555557ee94 *)
mul ymm9_0 ymm4_0 ymm11_0;
mul ymm9_1 ymm4_1 ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555557ee99 *)
adds dc ymm3_0 ymm3_0 ymm9_0;
adds dc ymm3_1 ymm3_1 ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555557ee9e *)
mul ymm9_0 ymm6_0 ymm11_0;
mul ymm9_1 ymm6_1 ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555557eea3 *)
adds dc ymm5_0 ymm5_0 ymm9_0;
adds dc ymm5_1 ymm5_1 ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555557eea8 *)
mul ymm9_0 ymm8_0 ymm11_0;
mul ymm9_1 ymm8_1 ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555557eead *)
adds dc ymm7_0 ymm7_0 ymm9_0;
adds dc ymm7_1 ymm7_1 ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555557eeb2 *)
mul ymm9_0 ymm10_0 ymm11_0;
mul ymm9_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x10(%rdx),%ymm11                #! EA = L0x7fffffff6940; Value = 0xffffffff00000000; PC = 0x55555557eeb7 *)
mov ymm11_0 L0x7fffffff6940;
mov ymm11_1 L0x7fffffff6940;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557eebd *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555557eec2 *)
adds dc ymm0_0 ymm0_0 ymm12_0;
adds dc ymm0_1 ymm0_1 ymm12_1;
(* vmovupd %ymm0,0xc0(%rcx)                        #! EA = L0x7fffffff63c0; PC = 0x55555557eec7 *)
mov L0x7fffffff63c0 ymm0_0;
mov L0x7fffffff63d0 ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555557eecf *)
mul ymm0_0 ymm2_0 ymm11_0;
mul ymm0_1 ymm2_1 ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557eed4 *)
adds dc ymm3_0 ymm3_0 ymm0_0;
adds dc ymm3_1 ymm3_1 ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555557eed8 *)
mul ymm0_0 ymm4_0 ymm11_0;
mul ymm0_1 ymm4_1 ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557eedd *)
adds dc ymm5_0 ymm5_0 ymm0_0;
adds dc ymm5_1 ymm5_1 ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555557eee1 *)
mul ymm0_0 ymm6_0 ymm11_0;
mul ymm0_1 ymm6_1 ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557eee6 *)
adds dc ymm7_0 ymm7_0 ymm0_0;
adds dc ymm7_1 ymm7_1 ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555557eeea *)
mul ymm0_0 ymm8_0 ymm11_0;
mul ymm0_1 ymm8_1 ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557eeef *)
adds dc ymm9_0 ymm9_0 ymm0_0;
adds dc ymm9_1 ymm9_1 ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555557eef3 *)
mul ymm0_0 ymm10_0 ymm11_0;
mul ymm0_1 ymm10_1 ymm11_1;
(* vbroadcasti128 (%rdx),%ymm11                    #! EA = L0x7fffffff6930; Value = 0x00000000ffffffff; PC = 0x55555557eef8 *)
mov ymm11_0 L0x7fffffff6930;
mov ymm11_1 L0x7fffffff6930;
(* vpand  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557eefd *)
mul ymm1_0 ymm1_0 ymm11_0;
mul ymm1_1 ymm1_1 ymm11_1;
(* vpxor  %ymm1,%ymm3,%ymm3                        #! PC = 0x55555557ef02 *)
adds dc ymm3_0 ymm3_0 ymm1_0;
adds dc ymm3_1 ymm3_1 ymm1_1;
(* vmovupd %ymm3,0xa0(%rcx)                        #! EA = L0x7fffffff63a0; PC = 0x55555557ef06 *)
mov L0x7fffffff63a0 ymm3_0;
mov L0x7fffffff63b0 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm1                       #! PC = 0x55555557ef0e *)
mul ymm1_0 ymm2_0 ymm11_0;
mul ymm1_1 ymm2_1 ymm11_1;
(* vpxor  %ymm1,%ymm5,%ymm5                        #! PC = 0x55555557ef13 *)
adds dc ymm5_0 ymm5_0 ymm1_0;
adds dc ymm5_1 ymm5_1 ymm1_1;
(* vpand  %ymm11,%ymm4,%ymm1                       #! PC = 0x55555557ef17 *)
mul ymm1_0 ymm4_0 ymm11_0;
mul ymm1_1 ymm4_1 ymm11_1;
(* vpxor  %ymm1,%ymm7,%ymm7                        #! PC = 0x55555557ef1c *)
adds dc ymm7_0 ymm7_0 ymm1_0;
adds dc ymm7_1 ymm7_1 ymm1_1;
(* vpand  %ymm11,%ymm6,%ymm1                       #! PC = 0x55555557ef20 *)
mul ymm1_0 ymm6_0 ymm11_0;
mul ymm1_1 ymm6_1 ymm11_1;
(* vpxor  %ymm1,%ymm9,%ymm9                        #! PC = 0x55555557ef25 *)
adds dc ymm9_0 ymm9_0 ymm1_0;
adds dc ymm9_1 ymm9_1 ymm1_1;
(* vpand  %ymm11,%ymm8,%ymm1                       #! PC = 0x55555557ef29 *)
mul ymm1_0 ymm8_0 ymm11_0;
mul ymm1_1 ymm8_1 ymm11_1;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555557ef2e *)
adds dc ymm0_0 ymm0_0 ymm1_0;
adds dc ymm0_1 ymm0_1 ymm1_1;
(* vpand  %ymm11,%ymm10,%ymm1                      #! PC = 0x55555557ef32 *)
mul ymm1_0 ymm10_0 ymm11_0;
mul ymm1_1 ymm10_1 ymm11_1;
(* vmovupd %ymm5,0x80(%rcx)                        #! EA = L0x7fffffff6380; PC = 0x55555557ef37 *)
mov L0x7fffffff6380 ymm5_0;
mov L0x7fffffff6390 ymm5_1;
(* vmovupd %ymm7,0x60(%rcx)                        #! EA = L0x7fffffff6360; PC = 0x55555557ef3f *)
mov L0x7fffffff6360 ymm7_0;
mov L0x7fffffff6370 ymm7_1;
(* vmovupd %ymm9,0x40(%rcx)                        #! EA = L0x7fffffff6340; PC = 0x55555557ef44 *)
mov L0x7fffffff6340 ymm9_0;
mov L0x7fffffff6350 ymm9_1;
(* vmovupd %ymm0,0x20(%rcx)                        #! EA = L0x7fffffff6320; PC = 0x55555557ef49 *)
mov L0x7fffffff6320 ymm0_0;
mov L0x7fffffff6330 ymm0_1;
(* vmovupd %ymm1,(%rcx)                            #! EA = L0x7fffffff6300; PC = 0x55555557ef4e *)
mov L0x7fffffff6300 ymm1_0;
mov L0x7fffffff6310 ymm1_1;
(* vzeroupper                                      #! PC = 0x55555557ef52 *)
mov xmm0 ymm0_0;
mov xmm1 ymm1_0;
mov xmm2 ymm2_0;
mov xmm3 ymm3_0;
mov xmm4 ymm4_0;
mov xmm5 ymm5_0;
mov xmm6 ymm6_0;
mov xmm7 ymm7_0;
mov xmm8 ymm8_0;
mov xmm9 ymm9_0;
mov xmm10 ymm10_0;
mov xmm11 ymm11_0;
(* movdqu 0x210(%rcx),%xmm0                        #! EA = L0x7fffffff6510; Value = 0x0000000000000000; PC = 0x55555557ef55 *)
mov xmm0 L0x7fffffff6510;
(* movdqa %xmm0,%xmm1                              #! PC = 0x55555557ef5d *)
mov xmm1 xmm0;
(* movdqa %xmm0,%xmm0                              #! PC = 0x55555557ef61 *)
mov xmm0 xmm0;
(* movdqu 0x1f0(%rcx),%xmm2                        #! EA = L0x7fffffff64f0; Value = 0x0000000000000000; PC = 0x55555557ef65 *)
mov xmm2 L0x7fffffff64f0;
(* movdqa %xmm2,%xmm3                              #! PC = 0x55555557ef6d *)
mov xmm3 xmm2;
(* movdqa %xmm2,%xmm2                              #! PC = 0x55555557ef71 *)
mov xmm2 xmm2;
(* movdqu 0x1d0(%rcx),%xmm4                        #! EA = L0x7fffffff64d0; Value = 0x0000000000000000; PC = 0x55555557ef75 *)
mov xmm4 L0x7fffffff64d0;
(* movdqa %xmm4,%xmm5                              #! PC = 0x55555557ef7d *)
mov xmm5 xmm4;
(* movdqa %xmm4,%xmm4                              #! PC = 0x55555557ef81 *)
mov xmm4 xmm4;
(* movdqu 0x1b0(%rcx),%xmm6                        #! EA = L0x7fffffff64b0; Value = 0x4842215100000000; PC = 0x55555557ef85 *)
mov xmm6 L0x7fffffff64b0;
(* vpxor  %xmm6,%xmm0,%xmm0                        #! PC = 0x55555557ef8d *)
adds dc xmm0 xmm0 xmm6;
(* movdqa %xmm6,%xmm6                              #! PC = 0x55555557ef91 *)
mov xmm6 xmm6;
(* movdqu 0x190(%rcx),%xmm7                        #! EA = L0x7fffffff6490; Value = 0x607a77d200000000; PC = 0x55555557ef95 *)
mov xmm7 L0x7fffffff6490;
(* vpxor  %xmm7,%xmm2,%xmm2                        #! PC = 0x55555557ef9d *)
adds dc xmm2 xmm2 xmm7;
(* movdqa %xmm7,%xmm7                              #! PC = 0x55555557efa1 *)
mov xmm7 xmm7;
(* movdqu 0x170(%rcx),%xmm8                        #! EA = L0x7fffffff6470; Value = 0x7974533700000000; PC = 0x55555557efa5 *)
mov xmm8 L0x7fffffff6470;
(* vpxor  %xmm8,%xmm4,%xmm4                        #! PC = 0x55555557efae *)
adds dc xmm4 xmm4 xmm8;
(* movdqa %xmm8,%xmm8                              #! PC = 0x55555557efb3 *)
mov xmm8 xmm8;
(* movdqu 0x150(%rcx),%xmm9                        #! EA = L0x7fffffff6450; Value = 0x7b38366c00000000; PC = 0x55555557efb8 *)
mov xmm9 L0x7fffffff6450;
(* vpxor  0x200(%rcx),%xmm9,%xmm9                  #! EA = L0x7fffffff6500; Value = 0x0000000000000000; PC = 0x55555557efc1 *)
adds dc xmm9 xmm9 L0x7fffffff6500;
(* vpxor  %xmm9,%xmm6,%xmm6                        #! PC = 0x55555557efc9 *)
adds dc xmm6 xmm6 xmm9;
(* movdqa %xmm9,%xmm9                              #! PC = 0x55555557efce *)
mov xmm9 xmm9;
(* movdqu 0x130(%rcx),%xmm10                       #! EA = L0x7fffffff6430; Value = 0xf203ba5f00000000; PC = 0x55555557efd3 *)
mov xmm10 L0x7fffffff6430;
(* vpxor  0x1e0(%rcx),%xmm10,%xmm10                #! EA = L0x7fffffff64e0; Value = 0x0000000000000000; PC = 0x55555557efdc *)
adds dc xmm10 xmm10 L0x7fffffff64e0;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x55555557efe4 *)
adds dc xmm7 xmm7 xmm10;
(* movdqa %xmm10,%xmm10                            #! PC = 0x55555557efe9 *)
mov xmm10 xmm10;
(* movdqu 0x110(%rcx),%xmm11                       #! EA = L0x7fffffff6410; Value = 0x62023aaa00000000; PC = 0x55555557efee *)
mov xmm11 L0x7fffffff6410;
(* vpxor  0x1c0(%rcx),%xmm11,%xmm11                #! EA = L0x7fffffff64c0; Value = 0x0000000000000000; PC = 0x55555557eff7 *)
adds dc xmm11 xmm11 L0x7fffffff64c0;
(* vpxor  %xmm11,%xmm8,%xmm8                       #! PC = 0x55555557efff *)
adds dc xmm8 xmm8 xmm11;
(* movdqa %xmm11,%xmm11                            #! PC = 0x55555557f004 *)
mov xmm11 xmm11;
(* vpxor  0xf0(%rcx),%xmm1,%xmm1                   #! EA = L0x7fffffff63f0; Value = 0x7b38366c00000000; PC = 0x55555557f009 *)
adds dc xmm1 xmm1 L0x7fffffff63f0;
(* vpxor  0x1a0(%rcx),%xmm1,%xmm1                  #! EA = L0x7fffffff64a0; Value = 0x0f0aa94f00000000; PC = 0x55555557f011 *)
adds dc xmm1 xmm1 L0x7fffffff64a0;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557f019 *)
adds dc xmm9 xmm9 xmm1;
(* movdqa %xmm1,%xmm1                              #! PC = 0x55555557f01d *)
mov xmm1 xmm1;
(* vpxor  0xd0(%rcx),%xmm3,%xmm3                   #! EA = L0x7fffffff63d0; Value = 0xba419b0e00000000; PC = 0x55555557f021 *)
adds dc xmm3 xmm3 L0x7fffffff63d0;
(* vpxor  0x180(%rcx),%xmm3,%xmm3                  #! EA = L0x7fffffff6480; Value = 0xb5d02fb400000000; PC = 0x55555557f029 *)
adds dc xmm3 xmm3 L0x7fffffff6480;
(* vpxor  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557f031 *)
adds dc xmm10 xmm10 xmm3;
(* movdqa %xmm3,%xmm3                              #! PC = 0x55555557f035 *)
mov xmm3 xmm3;
(* vpxor  0x160(%rcx),%xmm5,%xmm5                  #! EA = L0x7fffffff6460; Value = 0x6179bc2500000000; PC = 0x55555557f039 *)
adds dc xmm5 xmm5 L0x7fffffff6460;
(* vpxor  0xb0(%rcx),%xmm5,%xmm5                   #! EA = L0x7fffffff63b0; Value = 0x02784d78e04fc0b1; PC = 0x55555557f041 *)
adds dc xmm5 xmm5 L0x7fffffff63b0;
(* movdqu %xmm5,0xb0(%rdi)                         #! EA = L0x7fffffff6bb0; PC = 0x55555557f049 *)
mov L0x7fffffff6bb0 xmm5;
(* vpxor  0x140(%rcx),%xmm0,%xmm0                  #! EA = L0x7fffffff6440; Value = 0x47811efa00000000; PC = 0x55555557f051 *)
adds dc xmm0 xmm0 L0x7fffffff6440;
(* vpxor  0x90(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6390; Value = 0x4a0e440ab1e87075; PC = 0x55555557f059 *)
adds dc xmm0 xmm0 L0x7fffffff6390;
(* movdqu %xmm0,0xa0(%rdi)                         #! EA = L0x7fffffff6ba0; PC = 0x55555557f061 *)
mov L0x7fffffff6ba0 xmm0;
(* vpxor  0x120(%rcx),%xmm2,%xmm0                  #! EA = L0x7fffffff6420; Value = 0x7833c70700000000; PC = 0x55555557f069 *)
adds dc xmm0 xmm2 L0x7fffffff6420;
(* vpxor  0x70(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6370; Value = 0xa103dab03c22680c; PC = 0x55555557f071 *)
adds dc xmm0 xmm0 L0x7fffffff6370;
(* movdqu %xmm0,0x90(%rdi)                         #! EA = L0x7fffffff6b90; PC = 0x55555557f076 *)
mov L0x7fffffff6b90 xmm0;
(* vpxor  0x100(%rcx),%xmm4,%xmm0                  #! EA = L0x7fffffff6400; Value = 0x1b8a02d600000000; PC = 0x55555557f07e *)
adds dc xmm0 xmm4 L0x7fffffff6400;
(* vpxor  0x50(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6350; Value = 0x890fa4100c576036; PC = 0x55555557f086 *)
adds dc xmm0 xmm0 L0x7fffffff6350;
(* movdqu %xmm0,0x80(%rdi)                         #! EA = L0x7fffffff6b80; PC = 0x55555557f08b *)
mov L0x7fffffff6b80 xmm0;
(* vpxor  0xe0(%rcx),%xmm6,%xmm0                   #! EA = L0x7fffffff63e0; Value = 0x47811efa00000000; PC = 0x55555557f093 *)
adds dc xmm0 xmm6 L0x7fffffff63e0;
(* vpxor  0x30(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6330; Value = 0x1b76699dbd503d36; PC = 0x55555557f09b *)
adds dc xmm0 xmm0 L0x7fffffff6330;
(* movdqu %xmm0,0x70(%rdi)                         #! EA = L0x7fffffff6b70; PC = 0x55555557f0a0 *)
mov L0x7fffffff6b70 xmm0;
(* vpxor  0xc0(%rcx),%xmm7,%xmm0                   #! EA = L0x7fffffff63c0; Value = 0x77396e4800000000; PC = 0x55555557f0a5 *)
adds dc xmm0 xmm7 L0x7fffffff63c0;
(* vpxor  0x10(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6310; Value = 0x000000000cb0f11c; PC = 0x55555557f0ad *)
adds dc xmm0 xmm0 L0x7fffffff6310;
(* movdqu %xmm0,0x60(%rdi)                         #! EA = L0x7fffffff6b60; PC = 0x55555557f0b2 *)
mov L0x7fffffff6b60 xmm0;
(* vpxor  0xa0(%rcx),%xmm8,%xmm0                   #! EA = L0x7fffffff63a0; Value = 0xae5a2d628bd0c1ae; PC = 0x55555557f0b7 *)
adds dc xmm0 xmm8 L0x7fffffff63a0;
(* movdqu %xmm0,0x50(%rdi)                         #! EA = L0x7fffffff6b50; PC = 0x55555557f0bf *)
mov L0x7fffffff6b50 xmm0;
(* vpxor  0x80(%rcx),%xmm9,%xmm0                   #! EA = L0x7fffffff6380; Value = 0x29f20b904c7afa0d; PC = 0x55555557f0c4 *)
adds dc xmm0 xmm9 L0x7fffffff6380;
(* movdqu %xmm0,0x40(%rdi)                         #! EA = L0x7fffffff6b40; PC = 0x55555557f0cc *)
mov L0x7fffffff6b40 xmm0;
(* vpxor  0x60(%rcx),%xmm10,%xmm0                  #! EA = L0x7fffffff6360; Value = 0x85685f06454c1be8; PC = 0x55555557f0d1 *)
adds dc xmm0 xmm10 L0x7fffffff6360;
(* movdqu %xmm0,0x30(%rdi)                         #! EA = L0x7fffffff6b30; PC = 0x55555557f0d6 *)
mov L0x7fffffff6b30 xmm0;
(* vpxor  0x40(%rcx),%xmm11,%xmm0                  #! EA = L0x7fffffff6340; Value = 0xb71056407e38cc9a; PC = 0x55555557f0db *)
adds dc xmm0 xmm11 L0x7fffffff6340;
(* movdqu %xmm0,0x20(%rdi)                         #! EA = L0x7fffffff6b20; PC = 0x55555557f0e0 *)
mov L0x7fffffff6b20 xmm0;
(* vpxor  0x20(%rcx),%xmm1,%xmm0                   #! EA = L0x7fffffff6320; Value = 0x7af3bef3b32c164e; PC = 0x55555557f0e5 *)
adds dc xmm0 xmm1 L0x7fffffff6320;
(* movdqu %xmm0,0x10(%rdi)                         #! EA = L0x7fffffff6b10; PC = 0x55555557f0ea *)
mov L0x7fffffff6b10 xmm0;
(* vpxor  (%rcx),%xmm3,%xmm0                       #! EA = L0x7fffffff6300; Value = 0x00000000b95920ce; PC = 0x55555557f0ef *)
adds dc xmm0 xmm3 L0x7fffffff6300;
(* movdqu %xmm0,(%rdi)                             #! EA = L0x7fffffff6b00; PC = 0x55555557f0f3 *)
mov L0x7fffffff6b00 xmm0;
(* #add    %r11,%rsp                                #! PC = 0x55555557f0f7 *)
#add    %r11,%rsp                                #! 0x55555557f0f7 = 0x55555557f0f7;
(* #! <- SP = 0x7fffffff6578 *)
#! 0x7fffffff6578 = 0x7fffffff6578;
(* #retq                                           #! PC = 0x55555557f0fa *)
#retq                                           #! 0x55555557f0fa = 0x55555557f0fa;
mov c00 L0x7fffffff6b00;
mov c01 L0x7fffffff6b10;
mov c02 L0x7fffffff6b20;
mov c03 L0x7fffffff6b30;
mov c04 L0x7fffffff6b40;
mov c05 L0x7fffffff6b50;
mov c06 L0x7fffffff6b60;
mov c07 L0x7fffffff6b70;
mov c08 L0x7fffffff6b80;
mov c09 L0x7fffffff6b90;
mov c10 L0x7fffffff6ba0;
mov c11 L0x7fffffff6bb0;

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


