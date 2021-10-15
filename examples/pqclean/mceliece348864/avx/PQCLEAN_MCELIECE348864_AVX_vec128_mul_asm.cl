(* quine:  -v PQCLEAN_MCELIECE348864_AVX_vec128_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.008074 seconds
Checking well-formedness:               [OK]            0.001237 seconds
Transforming to SSA form:               [OK]            0.000315 seconds
Rewriting assignments:                  [OK]            0.000233 seconds
Verifying program safety:               [OK]            0.061969 seconds
Verifying range specification:          [OK]            0.063769 seconds
Rewriting value-preserved casting:      [OK]            0.000035 seconds
Verifying algebraic specification:      [OK]            0.116995 seconds
Verification result:                    [OK]            0.253248 seconds
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

mov L0x7ffffffb5390 a00;
mov L0x7ffffffb53a0 a01;
mov L0x7ffffffb53b0 a02;
mov L0x7ffffffb53c0 a03;
mov L0x7ffffffb53d0 a04;
mov L0x7ffffffb53e0 a05;
mov L0x7ffffffb53f0 a06;
mov L0x7ffffffb5400 a07;
mov L0x7ffffffb5410 a08;
mov L0x7ffffffb5420 a09;
mov L0x7ffffffb5430 a10;
mov L0x7ffffffb5440 a11;

mov L0x7ffffffb5580 b00;
mov L0x7ffffffb5590 b01;
mov L0x7ffffffb55a0 b02;
mov L0x7ffffffb55b0 b03;
mov L0x7ffffffb55c0 b04;
mov L0x7ffffffb55d0 b05;
mov L0x7ffffffb55e0 b06;
mov L0x7ffffffb55f0 b07;
mov L0x7ffffffb5600 b08;
mov L0x7ffffffb5610 b09;
mov L0x7ffffffb5620 b10;
mov L0x7ffffffb5630 b11;

(* #! -> SP = 0x7ffffffb4fc8 *)
#! 0x7ffffffb4fc8 = 0x7ffffffb4fc8;
(* #mov    %rsp,%r11                                #! PC = 0x55555556e4e0 *)
#mov    %rsp,%r11                                #! 0x55555556e4e0 = 0x55555556e4e0;
(* #and    $0x1f,%r11                               #! PC = 0x55555556e4e3 *)
#and    $0x1f,%r11                               #! 0x55555556e4e3 = 0x55555556e4e3;
(* #add    $0x260,%r11                              #! PC = 0x55555556e4e7 *)
#add    $0x260,%r11                              #! 0x55555556e4e7 = 0x55555556e4e7;
(* #sub    %r11,%rsp                                #! PC = 0x55555556e4ee *)
#sub    %r11,%rsp                                #! 0x55555556e4ee = 0x55555556e4ee;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555556e4f1 *)
#lea    (%rsp),%rcx                              #! 0x55555556e4f1 = 0x55555556e4f1;
(* vbroadcasti128 0xb0(%rdx),%ymm0                 #! EA = L0x7ffffffb5440; Value = 0x0000000000000000; PC = 0x55555556e4f5 *)
mov ymm0_0 L0x7ffffffb5440;
mov ymm0_1 L0x7ffffffb5440;
(* vinsertf128 $0x0,0x50(%rsi),%ymm1,%ymm1         #! EA = L0x7ffffffb55d0; Value = 0x59ee241a6e92a5a9; PC = 0x55555556e4fe *)
mov ymm1_0 L0x7ffffffb55d0;
mov ymm1_1 ymm1_1;
(* vinsertf128 $0x1,0xb0(%rsi),%ymm1,%ymm1         #! EA = L0x7ffffffb5630; Value = 0x5897c6a540bd9676; PC = 0x55555556e505 *)
mov ymm1_0 ymm1_0;
mov ymm1_1 L0x7ffffffb5630;
(* vpand  %ymm0,%ymm1,%ymm2                        #! PC = 0x55555556e50f *)
mul ymm2_0 ymm1_0 ymm0_0;
mul ymm2_1 ymm1_1 ymm0_1;
(* vmovupd %ymm2,0x200(%rcx)                       #! EA = L0x7ffffffb4f60; PC = 0x55555556e513 *)
mov L0x7ffffffb4f60 ymm2_0;
mov L0x7ffffffb4f70 ymm2_1;
(* vinsertf128 $0x0,0x40(%rsi),%ymm2,%ymm2         #! EA = L0x7ffffffb55c0; Value = 0x741ce288fd57b0f3; PC = 0x55555556e51b *)
mov ymm2_0 L0x7ffffffb55c0;
mov ymm2_1 ymm2_1;
(* vinsertf128 $0x1,0xa0(%rsi),%ymm2,%ymm2         #! EA = L0x7ffffffb5620; Value = 0xc6a97f697c54a102; PC = 0x55555556e522 *)
mov ymm2_0 ymm2_0;
mov ymm2_1 L0x7ffffffb5620;
(* vpand  %ymm0,%ymm2,%ymm3                        #! PC = 0x55555556e52c *)
mul ymm3_0 ymm2_0 ymm0_0;
mul ymm3_1 ymm2_1 ymm0_1;
(* vinsertf128 $0x0,0x30(%rsi),%ymm4,%ymm4         #! EA = L0x7ffffffb55b0; Value = 0x99cc2f5aaa926db3; PC = 0x55555556e530 *)
mov ymm4_0 L0x7ffffffb55b0;
mov ymm4_1 ymm4_1;
(* vinsertf128 $0x1,0x90(%rsi),%ymm4,%ymm4         #! EA = L0x7ffffffb5610; Value = 0x32f321b5e9c46ce9; PC = 0x55555556e537 *)
mov ymm4_0 ymm4_0;
mov ymm4_1 L0x7ffffffb5610;
(* vpand  %ymm0,%ymm4,%ymm5                        #! PC = 0x55555556e541 *)
mul ymm5_0 ymm4_0 ymm0_0;
mul ymm5_1 ymm4_1 ymm0_1;
(* vinsertf128 $0x0,0x20(%rsi),%ymm6,%ymm6         #! EA = L0x7ffffffb55a0; Value = 0xdbf9f1033c3df0fa; PC = 0x55555556e545 *)
mov ymm6_0 L0x7ffffffb55a0;
mov ymm6_1 ymm6_1;
(* vinsertf128 $0x1,0x80(%rsi),%ymm6,%ymm6         #! EA = L0x7ffffffb5600; Value = 0x132d86f51455fcec; PC = 0x55555556e54c *)
mov ymm6_0 ymm6_0;
mov ymm6_1 L0x7ffffffb5600;
(* vpand  %ymm0,%ymm6,%ymm7                        #! PC = 0x55555556e556 *)
mul ymm7_0 ymm6_0 ymm0_0;
mul ymm7_1 ymm6_1 ymm0_1;
(* vinsertf128 $0x0,0x10(%rsi),%ymm8,%ymm8         #! EA = L0x7ffffffb5590; Value = 0xef2b24c4af3a0a37; PC = 0x55555556e55a *)
mov ymm8_0 L0x7ffffffb5590;
mov ymm8_1 ymm8_1;
(* vinsertf128 $0x1,0x70(%rsi),%ymm8,%ymm8         #! EA = L0x7ffffffb55f0; Value = 0xdad7fb6121423d38; PC = 0x55555556e561 *)
mov ymm8_0 ymm8_0;
mov ymm8_1 L0x7ffffffb55f0;
(* vpand  %ymm0,%ymm8,%ymm9                        #! PC = 0x55555556e568 *)
mul ymm9_0 ymm8_0 ymm0_0;
mul ymm9_1 ymm8_1 ymm0_1;
(* vinsertf128 $0x0,(%rsi),%ymm10,%ymm10           #! EA = L0x7ffffffb5580; Value = 0xc582ecfa9a8ef52f; PC = 0x55555556e56c *)
mov ymm10_0 L0x7ffffffb5580;
mov ymm10_1 ymm10_1;
(* vinsertf128 $0x1,0x60(%rsi),%ymm10,%ymm10       #! EA = L0x7ffffffb55e0; Value = 0xcb02a64f483ba61e; PC = 0x55555556e572 *)
mov ymm10_0 ymm10_0;
mov ymm10_1 L0x7ffffffb55e0;
(* vpand  %ymm0,%ymm10,%ymm0                       #! PC = 0x55555556e579 *)
mul ymm0_0 ymm10_0 ymm0_0;
mul ymm0_1 ymm10_1 ymm0_1;
(* vbroadcasti128 0xa0(%rdx),%ymm11                #! EA = L0x7ffffffb5430; Value = 0x0000000000000000; PC = 0x55555556e57d *)
mov ymm11_0 L0x7ffffffb5430;
mov ymm11_1 L0x7ffffffb5430;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e586 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e58b *)
adds dc ymm3_0 ymm3_0 ymm12_0;
adds dc ymm3_1 ymm3_1 ymm12_1;
(* vmovupd %ymm3,0x1e0(%rcx)                       #! EA = L0x7ffffffb4f40; PC = 0x55555556e590 *)
mov L0x7ffffffb4f40 ymm3_0;
mov L0x7ffffffb4f50 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555556e598 *)
mul ymm3_0 ymm2_0 ymm11_0;
mul ymm3_1 ymm2_1 ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555556e59d *)
adds dc ymm5_0 ymm5_0 ymm3_0;
adds dc ymm5_1 ymm5_1 ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555556e5a1 *)
mul ymm3_0 ymm4_0 ymm11_0;
mul ymm3_1 ymm4_1 ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555556e5a6 *)
adds dc ymm7_0 ymm7_0 ymm3_0;
adds dc ymm7_1 ymm7_1 ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555556e5aa *)
mul ymm3_0 ymm6_0 ymm11_0;
mul ymm3_1 ymm6_1 ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556e5af *)
adds dc ymm9_0 ymm9_0 ymm3_0;
adds dc ymm9_1 ymm9_1 ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556e5b3 *)
mul ymm3_0 ymm8_0 ymm11_0;
mul ymm3_1 ymm8_1 ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555556e5b8 *)
adds dc ymm0_0 ymm0_0 ymm3_0;
adds dc ymm0_1 ymm0_1 ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555556e5bc *)
mul ymm3_0 ymm10_0 ymm11_0;
mul ymm3_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x90(%rdx),%ymm11                #! EA = L0x7ffffffb5420; Value = 0x0000000000000000; PC = 0x55555556e5c1 *)
mov ymm11_0 L0x7ffffffb5420;
mov ymm11_1 L0x7ffffffb5420;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e5ca *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556e5cf *)
adds dc ymm5_0 ymm5_0 ymm12_0;
adds dc ymm5_1 ymm5_1 ymm12_1;
(* vmovupd %ymm5,0x1c0(%rcx)                       #! EA = L0x7ffffffb4f20; PC = 0x55555556e5d4 *)
mov L0x7ffffffb4f20 ymm5_0;
mov L0x7ffffffb4f30 ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555556e5dc *)
mul ymm5_0 ymm2_0 ymm11_0;
mul ymm5_1 ymm2_1 ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555556e5e1 *)
adds dc ymm7_0 ymm7_0 ymm5_0;
adds dc ymm7_1 ymm7_1 ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555556e5e5 *)
mul ymm5_0 ymm4_0 ymm11_0;
mul ymm5_1 ymm4_1 ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555556e5ea *)
adds dc ymm9_0 ymm9_0 ymm5_0;
adds dc ymm9_1 ymm9_1 ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555556e5ee *)
mul ymm5_0 ymm6_0 ymm11_0;
mul ymm5_1 ymm6_1 ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555556e5f3 *)
adds dc ymm0_0 ymm0_0 ymm5_0;
adds dc ymm0_1 ymm0_1 ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555556e5f7 *)
mul ymm5_0 ymm8_0 ymm11_0;
mul ymm5_1 ymm8_1 ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556e5fc *)
adds dc ymm3_0 ymm3_0 ymm5_0;
adds dc ymm3_1 ymm3_1 ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555556e600 *)
mul ymm5_0 ymm10_0 ymm11_0;
mul ymm5_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x80(%rdx),%ymm11                #! EA = L0x7ffffffb5410; Value = 0xffffffff00000000; PC = 0x55555556e605 *)
mov ymm11_0 L0x7ffffffb5410;
mov ymm11_1 L0x7ffffffb5410;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e60e *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556e613 *)
adds dc ymm7_0 ymm7_0 ymm12_0;
adds dc ymm7_1 ymm7_1 ymm12_1;
(* vmovupd %ymm7,0x1a0(%rcx)                       #! EA = L0x7ffffffb4f00; PC = 0x55555556e618 *)
mov L0x7ffffffb4f00 ymm7_0;
mov L0x7ffffffb4f10 ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555556e620 *)
mul ymm7_0 ymm2_0 ymm11_0;
mul ymm7_1 ymm2_1 ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555556e625 *)
adds dc ymm9_0 ymm9_0 ymm7_0;
adds dc ymm9_1 ymm9_1 ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555556e629 *)
mul ymm7_0 ymm4_0 ymm11_0;
mul ymm7_1 ymm4_1 ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555556e62e *)
adds dc ymm0_0 ymm0_0 ymm7_0;
adds dc ymm0_1 ymm0_1 ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555556e632 *)
mul ymm7_0 ymm6_0 ymm11_0;
mul ymm7_1 ymm6_1 ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555556e637 *)
adds dc ymm3_0 ymm3_0 ymm7_0;
adds dc ymm3_1 ymm3_1 ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555556e63b *)
mul ymm7_0 ymm8_0 ymm11_0;
mul ymm7_1 ymm8_1 ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556e640 *)
adds dc ymm5_0 ymm5_0 ymm7_0;
adds dc ymm5_1 ymm5_1 ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555556e644 *)
mul ymm7_0 ymm10_0 ymm11_0;
mul ymm7_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x70(%rdx),%ymm11                #! EA = L0x7ffffffb5400; Value = 0x0000000000000000; PC = 0x55555556e649 *)
mov ymm11_0 L0x7ffffffb5400;
mov ymm11_1 L0x7ffffffb5400;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e64f *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556e654 *)
adds dc ymm9_0 ymm9_0 ymm12_0;
adds dc ymm9_1 ymm9_1 ymm12_1;
(* vmovupd %ymm9,0x180(%rcx)                       #! EA = L0x7ffffffb4ee0; PC = 0x55555556e659 *)
mov L0x7ffffffb4ee0 ymm9_0;
mov L0x7ffffffb4ef0 ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555556e661 *)
mul ymm9_0 ymm2_0 ymm11_0;
mul ymm9_1 ymm2_1 ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555556e666 *)
adds dc ymm0_0 ymm0_0 ymm9_0;
adds dc ymm0_1 ymm0_1 ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555556e66b *)
mul ymm9_0 ymm4_0 ymm11_0;
mul ymm9_1 ymm4_1 ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555556e670 *)
adds dc ymm3_0 ymm3_0 ymm9_0;
adds dc ymm3_1 ymm3_1 ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555556e675 *)
mul ymm9_0 ymm6_0 ymm11_0;
mul ymm9_1 ymm6_1 ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556e67a *)
adds dc ymm5_0 ymm5_0 ymm9_0;
adds dc ymm5_1 ymm5_1 ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555556e67f *)
mul ymm9_0 ymm8_0 ymm11_0;
mul ymm9_1 ymm8_1 ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555556e684 *)
adds dc ymm7_0 ymm7_0 ymm9_0;
adds dc ymm7_1 ymm7_1 ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555556e689 *)
mul ymm9_0 ymm10_0 ymm11_0;
mul ymm9_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x60(%rdx),%ymm11                #! EA = L0x7ffffffb53f0; Value = 0x0000000000000000; PC = 0x55555556e68e *)
mov ymm11_0 L0x7ffffffb53f0;
mov ymm11_1 L0x7ffffffb53f0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e694 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555556e699 *)
adds dc ymm0_0 ymm0_0 ymm12_0;
adds dc ymm0_1 ymm0_1 ymm12_1;
(* vmovupd %ymm0,0x160(%rcx)                       #! EA = L0x7ffffffb4ec0; PC = 0x55555556e69e *)
mov L0x7ffffffb4ec0 ymm0_0;
mov L0x7ffffffb4ed0 ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555556e6a6 *)
mul ymm0_0 ymm2_0 ymm11_0;
mul ymm0_1 ymm2_1 ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555556e6ab *)
adds dc ymm3_0 ymm3_0 ymm0_0;
adds dc ymm3_1 ymm3_1 ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555556e6af *)
mul ymm0_0 ymm4_0 ymm11_0;
mul ymm0_1 ymm4_1 ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555556e6b4 *)
adds dc ymm5_0 ymm5_0 ymm0_0;
adds dc ymm5_1 ymm5_1 ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555556e6b8 *)
mul ymm0_0 ymm6_0 ymm11_0;
mul ymm0_1 ymm6_1 ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555556e6bd *)
adds dc ymm7_0 ymm7_0 ymm0_0;
adds dc ymm7_1 ymm7_1 ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555556e6c1 *)
mul ymm0_0 ymm8_0 ymm11_0;
mul ymm0_1 ymm8_1 ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555556e6c6 *)
adds dc ymm9_0 ymm9_0 ymm0_0;
adds dc ymm9_1 ymm9_1 ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555556e6ca *)
mul ymm0_0 ymm10_0 ymm11_0;
mul ymm0_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x50(%rdx),%ymm11                #! EA = L0x7ffffffb53e0; Value = 0xffffffff00000000; PC = 0x55555556e6cf *)
mov ymm11_0 L0x7ffffffb53e0;
mov ymm11_1 L0x7ffffffb53e0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e6d5 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e6da *)
adds dc ymm3_0 ymm3_0 ymm12_0;
adds dc ymm3_1 ymm3_1 ymm12_1;
(* vmovupd %ymm3,0x140(%rcx)                       #! EA = L0x7ffffffb4ea0; PC = 0x55555556e6df *)
mov L0x7ffffffb4ea0 ymm3_0;
mov L0x7ffffffb4eb0 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555556e6e7 *)
mul ymm3_0 ymm2_0 ymm11_0;
mul ymm3_1 ymm2_1 ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555556e6ec *)
adds dc ymm5_0 ymm5_0 ymm3_0;
adds dc ymm5_1 ymm5_1 ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555556e6f0 *)
mul ymm3_0 ymm4_0 ymm11_0;
mul ymm3_1 ymm4_1 ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555556e6f5 *)
adds dc ymm7_0 ymm7_0 ymm3_0;
adds dc ymm7_1 ymm7_1 ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555556e6f9 *)
mul ymm3_0 ymm6_0 ymm11_0;
mul ymm3_1 ymm6_1 ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555556e6fe *)
adds dc ymm9_0 ymm9_0 ymm3_0;
adds dc ymm9_1 ymm9_1 ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556e702 *)
mul ymm3_0 ymm8_0 ymm11_0;
mul ymm3_1 ymm8_1 ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555556e707 *)
adds dc ymm0_0 ymm0_0 ymm3_0;
adds dc ymm0_1 ymm0_1 ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555556e70b *)
mul ymm3_0 ymm10_0 ymm11_0;
mul ymm3_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x40(%rdx),%ymm11                #! EA = L0x7ffffffb53d0; Value = 0x0000000000000000; PC = 0x55555556e710 *)
mov ymm11_0 L0x7ffffffb53d0;
mov ymm11_1 L0x7ffffffb53d0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e716 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556e71b *)
adds dc ymm5_0 ymm5_0 ymm12_0;
adds dc ymm5_1 ymm5_1 ymm12_1;
(* vmovupd %ymm5,0x120(%rcx)                       #! EA = L0x7ffffffb4e80; PC = 0x55555556e720 *)
mov L0x7ffffffb4e80 ymm5_0;
mov L0x7ffffffb4e90 ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555556e728 *)
mul ymm5_0 ymm2_0 ymm11_0;
mul ymm5_1 ymm2_1 ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555556e72d *)
adds dc ymm7_0 ymm7_0 ymm5_0;
adds dc ymm7_1 ymm7_1 ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555556e731 *)
mul ymm5_0 ymm4_0 ymm11_0;
mul ymm5_1 ymm4_1 ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555556e736 *)
adds dc ymm9_0 ymm9_0 ymm5_0;
adds dc ymm9_1 ymm9_1 ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555556e73a *)
mul ymm5_0 ymm6_0 ymm11_0;
mul ymm5_1 ymm6_1 ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555556e73f *)
adds dc ymm0_0 ymm0_0 ymm5_0;
adds dc ymm0_1 ymm0_1 ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555556e743 *)
mul ymm5_0 ymm8_0 ymm11_0;
mul ymm5_1 ymm8_1 ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555556e748 *)
adds dc ymm3_0 ymm3_0 ymm5_0;
adds dc ymm3_1 ymm3_1 ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555556e74c *)
mul ymm5_0 ymm10_0 ymm11_0;
mul ymm5_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x30(%rdx),%ymm11                #! EA = L0x7ffffffb53c0; Value = 0x0000000000000000; PC = 0x55555556e751 *)
mov ymm11_0 L0x7ffffffb53c0;
mov ymm11_1 L0x7ffffffb53c0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e757 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556e75c *)
adds dc ymm7_0 ymm7_0 ymm12_0;
adds dc ymm7_1 ymm7_1 ymm12_1;
(* vmovupd %ymm7,0x100(%rcx)                       #! EA = L0x7ffffffb4e60; PC = 0x55555556e761 *)
mov L0x7ffffffb4e60 ymm7_0;
mov L0x7ffffffb4e70 ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555556e769 *)
mul ymm7_0 ymm2_0 ymm11_0;
mul ymm7_1 ymm2_1 ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555556e76e *)
adds dc ymm9_0 ymm9_0 ymm7_0;
adds dc ymm9_1 ymm9_1 ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555556e772 *)
mul ymm7_0 ymm4_0 ymm11_0;
mul ymm7_1 ymm4_1 ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555556e777 *)
adds dc ymm0_0 ymm0_0 ymm7_0;
adds dc ymm0_1 ymm0_1 ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555556e77b *)
mul ymm7_0 ymm6_0 ymm11_0;
mul ymm7_1 ymm6_1 ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555556e780 *)
adds dc ymm3_0 ymm3_0 ymm7_0;
adds dc ymm3_1 ymm3_1 ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555556e784 *)
mul ymm7_0 ymm8_0 ymm11_0;
mul ymm7_1 ymm8_1 ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555556e789 *)
adds dc ymm5_0 ymm5_0 ymm7_0;
adds dc ymm5_1 ymm5_1 ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555556e78d *)
mul ymm7_0 ymm10_0 ymm11_0;
mul ymm7_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x20(%rdx),%ymm11                #! EA = L0x7ffffffb53b0; Value = 0xffffffff00000000; PC = 0x55555556e792 *)
mov ymm11_0 L0x7ffffffb53b0;
mov ymm11_1 L0x7ffffffb53b0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e798 *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556e79d *)
adds dc ymm9_0 ymm9_0 ymm12_0;
adds dc ymm9_1 ymm9_1 ymm12_1;
(* vmovupd %ymm9,0xe0(%rcx)                        #! EA = L0x7ffffffb4e40; PC = 0x55555556e7a2 *)
mov L0x7ffffffb4e40 ymm9_0;
mov L0x7ffffffb4e50 ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555556e7aa *)
mul ymm9_0 ymm2_0 ymm11_0;
mul ymm9_1 ymm2_1 ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555556e7af *)
adds dc ymm0_0 ymm0_0 ymm9_0;
adds dc ymm0_1 ymm0_1 ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555556e7b4 *)
mul ymm9_0 ymm4_0 ymm11_0;
mul ymm9_1 ymm4_1 ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555556e7b9 *)
adds dc ymm3_0 ymm3_0 ymm9_0;
adds dc ymm3_1 ymm3_1 ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555556e7be *)
mul ymm9_0 ymm6_0 ymm11_0;
mul ymm9_1 ymm6_1 ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555556e7c3 *)
adds dc ymm5_0 ymm5_0 ymm9_0;
adds dc ymm5_1 ymm5_1 ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555556e7c8 *)
mul ymm9_0 ymm8_0 ymm11_0;
mul ymm9_1 ymm8_1 ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555556e7cd *)
adds dc ymm7_0 ymm7_0 ymm9_0;
adds dc ymm7_1 ymm7_1 ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555556e7d2 *)
mul ymm9_0 ymm10_0 ymm11_0;
mul ymm9_1 ymm10_1 ymm11_1;
(* vbroadcasti128 0x10(%rdx),%ymm11                #! EA = L0x7ffffffb53a0; Value = 0xffffffff00000000; PC = 0x55555556e7d7 *)
mov ymm11_0 L0x7ffffffb53a0;
mov ymm11_1 L0x7ffffffb53a0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555556e7dd *)
mul ymm12_0 ymm1_0 ymm11_0;
mul ymm12_1 ymm1_1 ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555556e7e2 *)
adds dc ymm0_0 ymm0_0 ymm12_0;
adds dc ymm0_1 ymm0_1 ymm12_1;
(* vmovupd %ymm0,0xc0(%rcx)                        #! EA = L0x7ffffffb4e20; PC = 0x55555556e7e7 *)
mov L0x7ffffffb4e20 ymm0_0;
mov L0x7ffffffb4e30 ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555556e7ef *)
mul ymm0_0 ymm2_0 ymm11_0;
mul ymm0_1 ymm2_1 ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555556e7f4 *)
adds dc ymm3_0 ymm3_0 ymm0_0;
adds dc ymm3_1 ymm3_1 ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555556e7f8 *)
mul ymm0_0 ymm4_0 ymm11_0;
mul ymm0_1 ymm4_1 ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555556e7fd *)
adds dc ymm5_0 ymm5_0 ymm0_0;
adds dc ymm5_1 ymm5_1 ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555556e801 *)
mul ymm0_0 ymm6_0 ymm11_0;
mul ymm0_1 ymm6_1 ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555556e806 *)
adds dc ymm7_0 ymm7_0 ymm0_0;
adds dc ymm7_1 ymm7_1 ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555556e80a *)
mul ymm0_0 ymm8_0 ymm11_0;
mul ymm0_1 ymm8_1 ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555556e80f *)
adds dc ymm9_0 ymm9_0 ymm0_0;
adds dc ymm9_1 ymm9_1 ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555556e813 *)
mul ymm0_0 ymm10_0 ymm11_0;
mul ymm0_1 ymm10_1 ymm11_1;
(* vbroadcasti128 (%rdx),%ymm11                    #! EA = L0x7ffffffb5390; Value = 0x00000000ffffffff; PC = 0x55555556e818 *)
mov ymm11_0 L0x7ffffffb5390;
mov ymm11_1 L0x7ffffffb5390;
(* vpand  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555556e81d *)
mul ymm1_0 ymm1_0 ymm11_0;
mul ymm1_1 ymm1_1 ymm11_1;
(* vpxor  %ymm1,%ymm3,%ymm3                        #! PC = 0x55555556e822 *)
adds dc ymm3_0 ymm3_0 ymm1_0;
adds dc ymm3_1 ymm3_1 ymm1_1;
(* vmovupd %ymm3,0xa0(%rcx)                        #! EA = L0x7ffffffb4e00; PC = 0x55555556e826 *)
mov L0x7ffffffb4e00 ymm3_0;
mov L0x7ffffffb4e10 ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm1                       #! PC = 0x55555556e82e *)
mul ymm1_0 ymm2_0 ymm11_0;
mul ymm1_1 ymm2_1 ymm11_1;
(* vpxor  %ymm1,%ymm5,%ymm5                        #! PC = 0x55555556e833 *)
adds dc ymm5_0 ymm5_0 ymm1_0;
adds dc ymm5_1 ymm5_1 ymm1_1;
(* vpand  %ymm11,%ymm4,%ymm1                       #! PC = 0x55555556e837 *)
mul ymm1_0 ymm4_0 ymm11_0;
mul ymm1_1 ymm4_1 ymm11_1;
(* vpxor  %ymm1,%ymm7,%ymm7                        #! PC = 0x55555556e83c *)
adds dc ymm7_0 ymm7_0 ymm1_0;
adds dc ymm7_1 ymm7_1 ymm1_1;
(* vpand  %ymm11,%ymm6,%ymm1                       #! PC = 0x55555556e840 *)
mul ymm1_0 ymm6_0 ymm11_0;
mul ymm1_1 ymm6_1 ymm11_1;
(* vpxor  %ymm1,%ymm9,%ymm9                        #! PC = 0x55555556e845 *)
adds dc ymm9_0 ymm9_0 ymm1_0;
adds dc ymm9_1 ymm9_1 ymm1_1;
(* vpand  %ymm11,%ymm8,%ymm1                       #! PC = 0x55555556e849 *)
mul ymm1_0 ymm8_0 ymm11_0;
mul ymm1_1 ymm8_1 ymm11_1;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555556e84e *)
adds dc ymm0_0 ymm0_0 ymm1_0;
adds dc ymm0_1 ymm0_1 ymm1_1;
(* vpand  %ymm11,%ymm10,%ymm1                      #! PC = 0x55555556e852 *)
mul ymm1_0 ymm10_0 ymm11_0;
mul ymm1_1 ymm10_1 ymm11_1;
(* vmovupd %ymm5,0x80(%rcx)                        #! EA = L0x7ffffffb4de0; PC = 0x55555556e857 *)
mov L0x7ffffffb4de0 ymm5_0;
mov L0x7ffffffb4df0 ymm5_1;
(* vmovupd %ymm7,0x60(%rcx)                        #! EA = L0x7ffffffb4dc0; PC = 0x55555556e85f *)
mov L0x7ffffffb4dc0 ymm7_0;
mov L0x7ffffffb4dd0 ymm7_1;
(* vmovupd %ymm9,0x40(%rcx)                        #! EA = L0x7ffffffb4da0; PC = 0x55555556e864 *)
mov L0x7ffffffb4da0 ymm9_0;
mov L0x7ffffffb4db0 ymm9_1;
(* vmovupd %ymm0,0x20(%rcx)                        #! EA = L0x7ffffffb4d80; PC = 0x55555556e869 *)
mov L0x7ffffffb4d80 ymm0_0;
mov L0x7ffffffb4d90 ymm0_1;
(* vmovupd %ymm1,(%rcx)                            #! EA = L0x7ffffffb4d60; PC = 0x55555556e86e *)
mov L0x7ffffffb4d60 ymm1_0;
mov L0x7ffffffb4d70 ymm1_1;
(* vzeroupper                                      #! PC = 0x55555556e872 *)
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
(* movdqu 0x210(%rcx),%xmm0                        #! EA = L0x7ffffffb4f70; Value = 0x0000000000000000; PC = 0x55555556e875 *)
mov xmm0 L0x7ffffffb4f70;
(* movdqa %xmm0,%xmm1                              #! PC = 0x55555556e87d *)
mov xmm1 xmm0;
(* movdqa %xmm0,%xmm0                              #! PC = 0x55555556e881 *)
mov xmm0 xmm0;
(* movdqu 0x1f0(%rcx),%xmm2                        #! EA = L0x7ffffffb4f50; Value = 0x0000000000000000; PC = 0x55555556e885 *)
mov xmm2 L0x7ffffffb4f50;
(* movdqa %xmm2,%xmm3                              #! PC = 0x55555556e88d *)
mov xmm3 xmm2;
(* movdqa %xmm2,%xmm2                              #! PC = 0x55555556e891 *)
mov xmm2 xmm2;
(* movdqu 0x1d0(%rcx),%xmm4                        #! EA = L0x7ffffffb4f30; Value = 0x0000000000000000; PC = 0x55555556e895 *)
mov xmm4 L0x7ffffffb4f30;
(* movdqa %xmm4,%xmm5                              #! PC = 0x55555556e89d *)
mov xmm5 xmm4;
(* movdqa %xmm4,%xmm4                              #! PC = 0x55555556e8a1 *)
mov xmm4 xmm4;
(* movdqu 0x1b0(%rcx),%xmm6                        #! EA = L0x7ffffffb4f10; Value = 0x5897c6a500000000; PC = 0x55555556e8a5 *)
mov xmm6 L0x7ffffffb4f10;
(* vpxor  %xmm6,%xmm0,%xmm0                        #! PC = 0x55555556e8ad *)
adds dc xmm0 xmm0 xmm6;
(* movdqa %xmm6,%xmm6                              #! PC = 0x55555556e8b1 *)
mov xmm6 xmm6;
(* movdqu 0x190(%rcx),%xmm7                        #! EA = L0x7ffffffb4ef0; Value = 0xc6a97f6900000000; PC = 0x55555556e8b5 *)
mov xmm7 L0x7ffffffb4ef0;
(* vpxor  %xmm7,%xmm2,%xmm2                        #! PC = 0x55555556e8bd *)
adds dc xmm2 xmm2 xmm7;
(* movdqa %xmm7,%xmm7                              #! PC = 0x55555556e8c1 *)
mov xmm7 xmm7;
(* movdqu 0x170(%rcx),%xmm8                        #! EA = L0x7ffffffb4ed0; Value = 0x32f321b500000000; PC = 0x55555556e8c5 *)
mov xmm8 L0x7ffffffb4ed0;
(* vpxor  %xmm8,%xmm4,%xmm4                        #! PC = 0x55555556e8ce *)
adds dc xmm4 xmm4 xmm8;
(* movdqa %xmm8,%xmm8                              #! PC = 0x55555556e8d3 *)
mov xmm8 xmm8;
(* movdqu 0x150(%rcx),%xmm9                        #! EA = L0x7ffffffb4eb0; Value = 0x4bba405000000000; PC = 0x55555556e8d8 *)
mov xmm9 L0x7ffffffb4eb0;
(* vpxor  0x200(%rcx),%xmm9,%xmm9                  #! EA = L0x7ffffffb4f60; Value = 0x0000000000000000; PC = 0x55555556e8e1 *)
adds dc xmm9 xmm9 L0x7ffffffb4f60;
(* vpxor  %xmm9,%xmm6,%xmm6                        #! PC = 0x55555556e8e9 *)
adds dc xmm6 xmm6 xmm9;
(* movdqa %xmm9,%xmm9                              #! PC = 0x55555556e8ee *)
mov xmm9 xmm9;
(* movdqu 0x130(%rcx),%xmm10                       #! EA = L0x7ffffffb4e90; Value = 0x1c7e840800000000; PC = 0x55555556e8f3 *)
mov xmm10 L0x7ffffffb4e90;
(* vpxor  0x1e0(%rcx),%xmm10,%xmm10                #! EA = L0x7ffffffb4f40; Value = 0x0000000000000000; PC = 0x55555556e8fc *)
adds dc xmm10 xmm10 L0x7ffffffb4f40;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x55555556e904 *)
adds dc xmm7 xmm7 xmm10;
(* movdqa %xmm10,%xmm10                            #! PC = 0x55555556e909 *)
mov xmm10 xmm10;
(* movdqu 0x110(%rcx),%xmm11                       #! EA = L0x7ffffffb4e70; Value = 0xf9f187fa00000000; PC = 0x55555556e90e *)
mov xmm11 L0x7ffffffb4e70;
(* vpxor  0x1c0(%rcx),%xmm11,%xmm11                #! EA = L0x7ffffffb4f20; Value = 0x0000000000000000; PC = 0x55555556e917 *)
adds dc xmm11 xmm11 L0x7ffffffb4f20;
(* vpxor  %xmm11,%xmm8,%xmm8                       #! PC = 0x55555556e91f *)
adds dc xmm8 xmm8 xmm11;
(* movdqa %xmm11,%xmm11                            #! PC = 0x55555556e924 *)
mov xmm11 xmm11;
(* vpxor  0xf0(%rcx),%xmm1,%xmm1                   #! EA = L0x7ffffffb4e50; Value = 0x4bba405000000000; PC = 0x55555556e929 *)
adds dc xmm1 xmm1 L0x7ffffffb4e50;
(* vpxor  0x1a0(%rcx),%xmm1,%xmm1                  #! EA = L0x7ffffffb4f00; Value = 0x59ee241a00000000; PC = 0x55555556e931 *)
adds dc xmm1 xmm1 L0x7ffffffb4f00;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555556e939 *)
adds dc xmm9 xmm9 xmm1;
(* movdqa %xmm1,%xmm1                              #! PC = 0x55555556e93d *)
mov xmm1 xmm1;
(* vpxor  0xd0(%rcx),%xmm3,%xmm3                   #! EA = L0x7ffffffb4e30; Value = 0x44e942ad00000000; PC = 0x55555556e941 *)
adds dc xmm3 xmm3 L0x7ffffffb4e30;
(* vpxor  0x180(%rcx),%xmm3,%xmm3                  #! EA = L0x7ffffffb4ee0; Value = 0x741ce28800000000; PC = 0x55555556e949 *)
adds dc xmm3 xmm3 L0x7ffffffb4ee0;
(* vpxor  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555556e951 *)
adds dc xmm10 xmm10 xmm3;
(* movdqa %xmm3,%xmm3                              #! PC = 0x55555556e955 *)
mov xmm3 xmm3;
(* vpxor  0x160(%rcx),%xmm5,%xmm5                  #! EA = L0x7ffffffb4ec0; Value = 0x99cc2f5a00000000; PC = 0x55555556e959 *)
adds dc xmm5 xmm5 L0x7ffffffb4ec0;
(* vpxor  0xb0(%rcx),%xmm5,%xmm5                   #! EA = L0x7ffffffb4e10; Value = 0x3f58f89340bd9676; PC = 0x55555556e961 *)
adds dc xmm5 xmm5 L0x7ffffffb4e10;
(* movdqu %xmm5,0xb0(%rdi)                         #! EA = L0x7ffffffb5630; PC = 0x55555556e969 *)
mov L0x7ffffffb5630 xmm5;
(* vpxor  0x140(%rcx),%xmm0,%xmm0                  #! EA = L0x7ffffffb4ea0; Value = 0x8217d51900000000; PC = 0x55555556e971 *)
adds dc xmm0 xmm0 L0x7ffffffb4ea0;
(* vpxor  0x90(%rcx),%xmm0,%xmm0                   #! EA = L0x7ffffffb4df0; Value = 0x21dea7407c54a102; PC = 0x55555556e979 *)
adds dc xmm0 xmm0 L0x7ffffffb4df0;
(* movdqu %xmm0,0xa0(%rdi)                         #! EA = L0x7ffffffb5620; PC = 0x55555556e981 *)
mov L0x7ffffffb5620 xmm0;
(* vpxor  0x120(%rcx),%xmm2,%xmm0                  #! EA = L0x7ffffffb4e80; Value = 0x9b37c64c00000000; PC = 0x55555556e989 *)
adds dc xmm0 xmm2 L0x7ffffffb4e80;
(* vpxor  0x70(%rcx),%xmm0,%xmm0                   #! EA = L0x7ffffffb4dd0; Value = 0xc9fa7d94e9c46ce9; PC = 0x55555556e991 *)
adds dc xmm0 xmm0 L0x7ffffffb4dd0;
(* movdqu %xmm0,0x90(%rdi)                         #! EA = L0x7ffffffb5610; PC = 0x55555556e996 *)
mov L0x7ffffffb5610 xmm0;
(* vpxor  0x100(%rcx),%xmm4,%xmm0                  #! EA = L0x7ffffffb4e60; Value = 0x5c4ec3a000000000; PC = 0x55555556e99e *)
adds dc xmm0 xmm4 L0x7ffffffb4e60;
(* vpxor  0x50(%rcx),%xmm0,%xmm0                   #! EA = L0x7ffffffb4db0; Value = 0x11d55d2e1455fcec; PC = 0x55555556e9a6 *)
adds dc xmm0 xmm0 L0x7ffffffb4db0;
(* movdqu %xmm0,0x80(%rdi)                         #! EA = L0x7ffffffb5600; PC = 0x55555556e9ab *)
mov L0x7ffffffb5600 xmm0;
(* vpxor  0xe0(%rcx),%xmm6,%xmm0                   #! EA = L0x7ffffffb4e40; Value = 0x8217d51900000000; PC = 0x55555556e9b3 *)
adds dc xmm0 xmm6 L0x7ffffffb4e40;
(* vpxor  0x30(%rcx),%xmm0,%xmm0                   #! EA = L0x7ffffffb4d90; Value = 0xcb02a64f21423d38; PC = 0x55555556e9bb *)
adds dc xmm0 xmm0 L0x7ffffffb4d90;
(* movdqu %xmm0,0x70(%rdi)                         #! EA = L0x7ffffffb55f0; PC = 0x55555556e9c0 *)
mov L0x7ffffffb55f0 xmm0;
(* vpxor  0xc0(%rcx),%xmm7,%xmm0                   #! EA = L0x7ffffffb4e20; Value = 0xc2d9e25600000000; PC = 0x55555556e9c5 *)
adds dc xmm0 xmm7 L0x7ffffffb4e20;
(* vpxor  0x10(%rcx),%xmm0,%xmm0                   #! EA = L0x7ffffffb4d70; Value = 0x00000000483ba61e; PC = 0x55555556e9cd *)
adds dc xmm0 xmm0 L0x7ffffffb4d70;
(* movdqu %xmm0,0x60(%rdi)                         #! EA = L0x7ffffffb55e0; PC = 0x55555556e9d2 *)
mov L0x7ffffffb55e0 xmm0;
(* vpxor  0xa0(%rcx),%xmm8,%xmm0                   #! EA = L0x7ffffffb4e00; Value = 0x285221286e92a5a9; PC = 0x55555556e9d7 *)
adds dc xmm0 xmm8 L0x7ffffffb4e00;
(* movdqu %xmm0,0x50(%rdi)                         #! EA = L0x7ffffffb55d0; PC = 0x55555556e9df *)
mov L0x7ffffffb55d0 xmm0;
(* vpxor  0x80(%rcx),%xmm9,%xmm0                   #! EA = L0x7ffffffb4de0; Value = 0x4235de59fd57b0f3; PC = 0x55555556e9e4 *)
adds dc xmm0 xmm9 L0x7ffffffb4de0;
(* movdqu %xmm0,0x40(%rdi)                         #! EA = L0x7ffffffb55c0; PC = 0x55555556e9ec *)
mov L0x7ffffffb55c0 xmm0;
(* vpxor  0x60(%rcx),%xmm10,%xmm0                  #! EA = L0x7ffffffb4dc0; Value = 0x34d2d5c7aa926db3; PC = 0x55555556e9f1 *)
adds dc xmm0 xmm10 L0x7ffffffb4dc0;
(* movdqu %xmm0,0x30(%rdi)                         #! EA = L0x7ffffffb55b0; PC = 0x55555556e9f6 *)
mov L0x7ffffffb55b0 xmm0;
(* vpxor  0x40(%rcx),%xmm11,%xmm0                  #! EA = L0x7ffffffb4da0; Value = 0x2aa9c83e3c3df0fa; PC = 0x55555556e9fb *)
adds dc xmm0 xmm11 L0x7ffffffb4da0;
(* movdqu %xmm0,0x20(%rdi)                         #! EA = L0x7ffffffb55a0; PC = 0x55555556ea00 *)
mov L0x7ffffffb55a0 xmm0;
(* vpxor  0x20(%rcx),%xmm1,%xmm0                   #! EA = L0x7ffffffb4d80; Value = 0xc582ecfaaf3a0a37; PC = 0x55555556ea05 *)
adds dc xmm0 xmm1 L0x7ffffffb4d80;
(* movdqu %xmm0,0x10(%rdi)                         #! EA = L0x7ffffffb5590; PC = 0x55555556ea0a *)
mov L0x7ffffffb5590 xmm0;
(* vpxor  (%rcx),%xmm3,%xmm0                       #! EA = L0x7ffffffb4d60; Value = 0x000000009a8ef52f; PC = 0x55555556ea0f *)
adds dc xmm0 xmm3 L0x7ffffffb4d60;
(* movdqu %xmm0,(%rdi)                             #! EA = L0x7ffffffb5580; PC = 0x55555556ea13 *)
mov L0x7ffffffb5580 xmm0;
(* #add    %r11,%rsp                                #! PC = 0x55555556ea17 *)
#add    %r11,%rsp                                #! 0x55555556ea17 = 0x55555556ea17;
(* #! <- SP = 0x7ffffffb4fc8 *)
#! 0x7ffffffb4fc8 = 0x7ffffffb4fc8;
(* #retq                                           #! PC = 0x55555556ea1a *)
#retq                                           #! 0x55555556ea1a = 0x55555556ea1a;

mov c00 L0x7ffffffb5580;
mov c01 L0x7ffffffb5590;
mov c02 L0x7ffffffb55a0;
mov c03 L0x7ffffffb55b0;
mov c04 L0x7ffffffb55c0;
mov c05 L0x7ffffffb55d0;
mov c06 L0x7ffffffb55e0;
mov c07 L0x7ffffffb55f0;
mov c08 L0x7ffffffb5600;
mov c09 L0x7ffffffb5610;
mov c10 L0x7ffffffb5620;
mov c11 L0x7ffffffb5630;

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


