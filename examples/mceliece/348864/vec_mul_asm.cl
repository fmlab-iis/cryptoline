(* quine:  -v vec_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.006393 seconds
Checking well-formedness:               [OK]            0.001890 seconds
Transforming to SSA form:               [OK]            0.000535 seconds
Rewriting assignments:                  [OK]            0.000421 seconds
Verifying program safety:               [OK]            0.061759 seconds
Verifying range specification:          [OK]            0.064057 seconds
Rewriting value-preserved casting:      [OK]            0.000035 seconds
Verifying algebraic specification:      [OK]            0.118796 seconds
Verification result:                    [OK]            0.254727 seconds
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

mov L0x7fffffff0300 a00;
mov L0x7fffffff0308 a01;
mov L0x7fffffff0310 a02;
mov L0x7fffffff0318 a03;
mov L0x7fffffff0320 a04;
mov L0x7fffffff0328 a05;
mov L0x7fffffff0330 a06;
mov L0x7fffffff0338 a07;
mov L0x7fffffff0340 a08;
mov L0x7fffffff0348 a09;
mov L0x7fffffff0350 a10;
mov L0x7fffffff0358 a11;

mov L0x7fffffff04e0 b00;
mov L0x7fffffff04e8 b01;
mov L0x7fffffff04f0 b02;
mov L0x7fffffff04f8 b03;
mov L0x7fffffff0500 b04;
mov L0x7fffffff0508 b05;
mov L0x7fffffff0510 b06;
mov L0x7fffffff0518 b07;
mov L0x7fffffff0520 b08;
mov L0x7fffffff0528 b09;
mov L0x7fffffff0530 b10;
mov L0x7fffffff0538 b11;

(* #! -> SP = 0x7fffffff00d8 *)
#! 0x7fffffff00d8 = 0x7fffffff00d8;
(* #mov    %rsp,%r11                                #! PC = 0x55555557f8a0 *)
#mov    %rsp,%%r11                                #! 0x55555557f8a0 = 0x55555557f8a0;
(* #and    $0x1f,%r11                               #! PC = 0x55555557f8a3 *)
#and    $0x1f,%%r11                               #! 0x55555557f8a3 = 0x55555557f8a3;
(* #add    $0x2a0,%r11                              #! PC = 0x55555557f8a7 *)
#add    $0x2a0,%%r11                              #! 0x55555557f8a7 = 0x55555557f8a7;
(* #sub    %r11,%rsp                                #! PC = 0x55555557f8ae *)
#sub    %%r11,%rsp                                #! 0x55555557f8ae = 0x55555557f8ae;
(* #mov    %r11,0x260(%rsp)                         #! EA = L0x7fffffff0080; PC = 0x55555557f8b1 *)
#mov    %%r11,0x260(%rsp)                         #! L0x7fffffff0080 = L0x7fffffff0080; 0x55555557f8b1 = 0x55555557f8b1;
(* #mov    %r12,0x268(%rsp)                         #! EA = L0x7fffffff0088; PC = 0x55555557f8b9 *)
#mov    %%r12,0x268(%rsp)                         #! L0x7fffffff0088 = L0x7fffffff0088; 0x55555557f8b9 = 0x55555557f8b9;
(* #mov    %r13,0x270(%rsp)                         #! EA = L0x7fffffff0090; PC = 0x55555557f8c1 *)
#mov    %%r13,0x270(%rsp)                         #! L0x7fffffff0090 = L0x7fffffff0090; 0x55555557f8c1 = 0x55555557f8c1;
(* #mov    %r14,0x278(%rsp)                         #! EA = L0x7fffffff0098; PC = 0x55555557f8c9 *)
#mov    %%r14,0x278(%rsp)                         #! L0x7fffffff0098 = L0x7fffffff0098; 0x55555557f8c9 = 0x55555557f8c9;
(* #mov    %r15,0x280(%rsp)                         #! EA = L0x7fffffff00a0; PC = 0x55555557f8d1 *)
#mov    %%r15,0x280(%rsp)                         #! L0x7fffffff00a0 = L0x7fffffff00a0; 0x55555557f8d1 = 0x55555557f8d1;
(* #mov    %rbx,0x288(%rsp)                         #! EA = L0x7fffffff00a8; PC = 0x55555557f8d9 *)
#mov    %%rbx,0x288(%rsp)                         #! L0x7fffffff00a8 = L0x7fffffff00a8; 0x55555557f8d9 = 0x55555557f8d9;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555557f8e1 *)
#lea    (%rsp),%rcx                              #! 0x55555557f8e1 = 0x55555557f8e1;
(* vmovupd (%rsi),%ymm0                            #! EA = L0x7fffffff04e0; Value = 0x97edff5d0a8f8505; PC = 0x55555557f8e5 *)
mov ymm0_0 L0x7fffffff04e0;
mov ymm0_1 L0x7fffffff04e8;
mov ymm0_2 L0x7fffffff04f0;
mov ymm0_3 L0x7fffffff04f8;
(* vmovupd 0x20(%rsi),%ymm1                        #! EA = L0x7fffffff0500; Value = 0x25c9b68fc451afa6; PC = 0x55555557f8e9 *)
mov ymm1_0 L0x7fffffff0500;
mov ymm1_1 L0x7fffffff0508;
mov ymm1_2 L0x7fffffff0510;
mov ymm1_3 L0x7fffffff0518;
(* vmovupd 0x40(%rsi),%ymm2                        #! EA = L0x7fffffff0520; Value = 0x0ce195f68faf2909; PC = 0x55555557f8ee *)
mov ymm2_0 L0x7fffffff0520;
mov ymm2_1 L0x7fffffff0528;
mov ymm2_2 L0x7fffffff0530;
mov ymm2_3 L0x7fffffff0538;
(* vmovupd (%rdx),%ymm3                            #! EA = L0x7fffffff0300; Value = 0xffffffffffffffff; PC = 0x55555557f8f3 *)
mov ymm3_0 L0x7fffffff0300;
mov ymm3_1 L0x7fffffff0308;
mov ymm3_2 L0x7fffffff0310;
mov ymm3_3 L0x7fffffff0318;
(* vmovupd 0x20(%rdx),%ymm4                        #! EA = L0x7fffffff0320; Value = 0x0000000000000000; PC = 0x55555557f8f7 *)
mov ymm4_0 L0x7fffffff0320;
mov ymm4_1 L0x7fffffff0328;
mov ymm4_2 L0x7fffffff0330;
mov ymm4_3 L0x7fffffff0338;
(* vmovupd 0x40(%rdx),%ymm5                        #! EA = L0x7fffffff0340; Value = 0x0000000000000000; PC = 0x55555557f8fc *)
mov ymm5_0 L0x7fffffff0340;
mov ymm5_1 L0x7fffffff0348;
mov ymm5_2 L0x7fffffff0350;
mov ymm5_3 L0x7fffffff0358;
(* vpermq $0xfa,%ymm2,%ymm6                        #! PC = 0x55555557f901 *)
mov perm0 ymm2_2;
mov perm1 ymm2_2;
mov perm2 ymm2_3;
mov perm3 ymm2_3;
mov ymm6_0 perm0;
mov ymm6_1 perm1;
mov ymm6_2 perm2;
mov ymm6_3 perm3;
(* vpermq $0xee,%ymm5,%ymm7                        #! PC = 0x55555557f907 *)
mov perm0 ymm5_2;
mov perm1 ymm5_3;
mov perm2 ymm5_2;
mov perm3 ymm5_3;
mov ymm7_0 perm0;
mov ymm7_1 perm1;
mov ymm7_2 perm2;
mov ymm7_3 perm3;
(* vpand  %ymm6,%ymm7,%ymm8                        #! PC = 0x55555557f90d *)
mul ymm8_0 ymm7_0 ymm6_0;
mul ymm8_1 ymm7_1 ymm6_1;
mul ymm8_2 ymm7_2 ymm6_2;
mul ymm8_3 ymm7_3 ymm6_3;
(* vmovupd %ymm8,0x140(%rcx)                       #! EA = L0x7ffffffeff60; PC = 0x55555557f911 *)
mov L0x7ffffffeff60 ymm8_0;
mov L0x7ffffffeff68 ymm8_1;
mov L0x7ffffffeff70 ymm8_2;
mov L0x7ffffffeff78 ymm8_3;
(* vpermq $0x44,%ymm5,%ymm5                        #! PC = 0x55555557f919 *)
mov perm0 ymm5_0;
mov perm1 ymm5_1;
mov perm2 ymm5_0;
mov perm3 ymm5_1;
mov ymm5_0 perm0;
mov ymm5_1 perm1;
mov ymm5_2 perm2;
mov ymm5_3 perm3;
(* vpand  %ymm6,%ymm5,%ymm8                        #! PC = 0x55555557f91f *)
mul ymm8_0 ymm5_0 ymm6_0;
mul ymm8_1 ymm5_1 ymm6_1;
mul ymm8_2 ymm5_2 ymm6_2;
mul ymm8_3 ymm5_3 ymm6_3;
(* vpermq $0xee,%ymm4,%ymm9                        #! PC = 0x55555557f923 *)
mov perm0 ymm4_2;
mov perm1 ymm4_3;
mov perm2 ymm4_2;
mov perm3 ymm4_3;
mov ymm9_0 perm0;
mov ymm9_1 perm1;
mov ymm9_2 perm2;
mov ymm9_3 perm3;
(* vpand  %ymm6,%ymm9,%ymm10                       #! PC = 0x55555557f929 *)
mul ymm10_0 ymm9_0 ymm6_0;
mul ymm10_1 ymm9_1 ymm6_1;
mul ymm10_2 ymm9_2 ymm6_2;
mul ymm10_3 ymm9_3 ymm6_3;
(* vpermq $0x44,%ymm4,%ymm4                        #! PC = 0x55555557f92d *)
mov perm0 ymm4_0;
mov perm1 ymm4_1;
mov perm2 ymm4_0;
mov perm3 ymm4_1;
mov ymm4_0 perm0;
mov ymm4_1 perm1;
mov ymm4_2 perm2;
mov ymm4_3 perm3;
(* vpand  %ymm6,%ymm4,%ymm11                       #! PC = 0x55555557f933 *)
mul ymm11_0 ymm4_0 ymm6_0;
mul ymm11_1 ymm4_1 ymm6_1;
mul ymm11_2 ymm4_2 ymm6_2;
mul ymm11_3 ymm4_3 ymm6_3;
(* vpermq $0xee,%ymm3,%ymm12                       #! PC = 0x55555557f937 *)
mov perm0 ymm3_2;
mov perm1 ymm3_3;
mov perm2 ymm3_2;
mov perm3 ymm3_3;
mov ymm12_0 perm0;
mov ymm12_1 perm1;
mov ymm12_2 perm2;
mov ymm12_3 perm3;
(* vpand  %ymm6,%ymm12,%ymm13                      #! PC = 0x55555557f93d *)
mul ymm13_0 ymm12_0 ymm6_0;
mul ymm13_1 ymm12_1 ymm6_1;
mul ymm13_2 ymm12_2 ymm6_2;
mul ymm13_3 ymm12_3 ymm6_3;
(* vpermq $0x44,%ymm3,%ymm3                        #! PC = 0x55555557f941 *)
mov perm0 ymm3_0;
mov perm1 ymm3_1;
mov perm2 ymm3_0;
mov perm3 ymm3_1;
mov ymm3_0 perm0;
mov ymm3_1 perm1;
mov ymm3_2 perm2;
mov ymm3_3 perm3;
(* vpand  %ymm6,%ymm3,%ymm6                        #! PC = 0x55555557f947 *)
mul ymm6_0 ymm3_0 ymm6_0;
mul ymm6_1 ymm3_1 ymm6_1;
mul ymm6_2 ymm3_2 ymm6_2;
mul ymm6_3 ymm3_3 ymm6_3;
(* vpermq $0x50,%ymm2,%ymm2                        #! PC = 0x55555557f94b *)
mov perm0 ymm2_0;
mov perm1 ymm2_0;
mov perm2 ymm2_1;
mov perm3 ymm2_1;
mov ymm2_0 perm0;
mov ymm2_1 perm1;
mov ymm2_2 perm2;
mov ymm2_3 perm3;
(* vpand  %ymm2,%ymm7,%ymm14                       #! PC = 0x55555557f951 *)
mul ymm14_0 ymm7_0 ymm2_0;
mul ymm14_1 ymm7_1 ymm2_1;
mul ymm14_2 ymm7_2 ymm2_2;
mul ymm14_3 ymm7_3 ymm2_3;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f955 *)
adds dc ymm8_0 ymm8_0 ymm14_0;
adds dc ymm8_1 ymm8_1 ymm14_1;
adds dc ymm8_2 ymm8_2 ymm14_2;
adds dc ymm8_3 ymm8_3 ymm14_3;
(* vmovupd %ymm8,0x120(%rcx)                       #! EA = L0x7ffffffeff40; PC = 0x55555557f95a *)
mov L0x7ffffffeff40 ymm8_0;
mov L0x7ffffffeff48 ymm8_1;
mov L0x7ffffffeff50 ymm8_2;
mov L0x7ffffffeff58 ymm8_3;
(* vpand  %ymm2,%ymm5,%ymm8                        #! PC = 0x55555557f962 *)
mul ymm8_0 ymm5_0 ymm2_0;
mul ymm8_1 ymm5_1 ymm2_1;
mul ymm8_2 ymm5_2 ymm2_2;
mul ymm8_3 ymm5_3 ymm2_3;
(* vpxor  %ymm8,%ymm10,%ymm10                      #! PC = 0x55555557f966 *)
adds dc ymm10_0 ymm10_0 ymm8_0;
adds dc ymm10_1 ymm10_1 ymm8_1;
adds dc ymm10_2 ymm10_2 ymm8_2;
adds dc ymm10_3 ymm10_3 ymm8_3;
(* vpand  %ymm2,%ymm9,%ymm8                        #! PC = 0x55555557f96b *)
mul ymm8_0 ymm9_0 ymm2_0;
mul ymm8_1 ymm9_1 ymm2_1;
mul ymm8_2 ymm9_2 ymm2_2;
mul ymm8_3 ymm9_3 ymm2_3;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557f96f *)
adds dc ymm11_0 ymm11_0 ymm8_0;
adds dc ymm11_1 ymm11_1 ymm8_1;
adds dc ymm11_2 ymm11_2 ymm8_2;
adds dc ymm11_3 ymm11_3 ymm8_3;
(* vpand  %ymm2,%ymm4,%ymm8                        #! PC = 0x55555557f974 *)
mul ymm8_0 ymm4_0 ymm2_0;
mul ymm8_1 ymm4_1 ymm2_1;
mul ymm8_2 ymm4_2 ymm2_2;
mul ymm8_3 ymm4_3 ymm2_3;
(* vpxor  %ymm8,%ymm13,%ymm13                      #! PC = 0x55555557f978 *)
adds dc ymm13_0 ymm13_0 ymm8_0;
adds dc ymm13_1 ymm13_1 ymm8_1;
adds dc ymm13_2 ymm13_2 ymm8_2;
adds dc ymm13_3 ymm13_3 ymm8_3;
(* vpand  %ymm2,%ymm12,%ymm8                       #! PC = 0x55555557f97d *)
mul ymm8_0 ymm12_0 ymm2_0;
mul ymm8_1 ymm12_1 ymm2_1;
mul ymm8_2 ymm12_2 ymm2_2;
mul ymm8_3 ymm12_3 ymm2_3;
(* vpxor  %ymm8,%ymm6,%ymm6                        #! PC = 0x55555557f981 *)
adds dc ymm6_0 ymm6_0 ymm8_0;
adds dc ymm6_1 ymm6_1 ymm8_1;
adds dc ymm6_2 ymm6_2 ymm8_2;
adds dc ymm6_3 ymm6_3 ymm8_3;
(* vpand  %ymm2,%ymm3,%ymm2                        #! PC = 0x55555557f986 *)
mul ymm2_0 ymm3_0 ymm2_0;
mul ymm2_1 ymm3_1 ymm2_1;
mul ymm2_2 ymm3_2 ymm2_2;
mul ymm2_3 ymm3_3 ymm2_3;
(* vpermq $0xfa,%ymm1,%ymm8                        #! PC = 0x55555557f98a *)
mov perm0 ymm1_2;
mov perm1 ymm1_2;
mov perm2 ymm1_3;
mov perm3 ymm1_3;
mov ymm8_0 perm0;
mov ymm8_1 perm1;
mov ymm8_2 perm2;
mov ymm8_3 perm3;
(* vpand  %ymm8,%ymm7,%ymm14                       #! PC = 0x55555557f990 *)
mul ymm14_0 ymm7_0 ymm8_0;
mul ymm14_1 ymm7_1 ymm8_1;
mul ymm14_2 ymm7_2 ymm8_2;
mul ymm14_3 ymm7_3 ymm8_3;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f995 *)
adds dc ymm10_0 ymm10_0 ymm14_0;
adds dc ymm10_1 ymm10_1 ymm14_1;
adds dc ymm10_2 ymm10_2 ymm14_2;
adds dc ymm10_3 ymm10_3 ymm14_3;
(* vmovupd %ymm10,0x100(%rcx)                      #! EA = L0x7ffffffeff20; PC = 0x55555557f99a *)
mov L0x7ffffffeff20 ymm10_0;
mov L0x7ffffffeff28 ymm10_1;
mov L0x7ffffffeff30 ymm10_2;
mov L0x7ffffffeff38 ymm10_3;
(* vpand  %ymm8,%ymm5,%ymm10                       #! PC = 0x55555557f9a2 *)
mul ymm10_0 ymm5_0 ymm8_0;
mul ymm10_1 ymm5_1 ymm8_1;
mul ymm10_2 ymm5_2 ymm8_2;
mul ymm10_3 ymm5_3 ymm8_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557f9a7 *)
adds dc ymm11_0 ymm11_0 ymm10_0;
adds dc ymm11_1 ymm11_1 ymm10_1;
adds dc ymm11_2 ymm11_2 ymm10_2;
adds dc ymm11_3 ymm11_3 ymm10_3;
(* vpand  %ymm8,%ymm9,%ymm10                       #! PC = 0x55555557f9ac *)
mul ymm10_0 ymm9_0 ymm8_0;
mul ymm10_1 ymm9_1 ymm8_1;
mul ymm10_2 ymm9_2 ymm8_2;
mul ymm10_3 ymm9_3 ymm8_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557f9b1 *)
adds dc ymm13_0 ymm13_0 ymm10_0;
adds dc ymm13_1 ymm13_1 ymm10_1;
adds dc ymm13_2 ymm13_2 ymm10_2;
adds dc ymm13_3 ymm13_3 ymm10_3;
(* vpand  %ymm8,%ymm4,%ymm10                       #! PC = 0x55555557f9b6 *)
mul ymm10_0 ymm4_0 ymm8_0;
mul ymm10_1 ymm4_1 ymm8_1;
mul ymm10_2 ymm4_2 ymm8_2;
mul ymm10_3 ymm4_3 ymm8_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557f9bb *)
adds dc ymm6_0 ymm6_0 ymm10_0;
adds dc ymm6_1 ymm6_1 ymm10_1;
adds dc ymm6_2 ymm6_2 ymm10_2;
adds dc ymm6_3 ymm6_3 ymm10_3;
(* vpand  %ymm8,%ymm12,%ymm10                      #! PC = 0x55555557f9c0 *)
mul ymm10_0 ymm12_0 ymm8_0;
mul ymm10_1 ymm12_1 ymm8_1;
mul ymm10_2 ymm12_2 ymm8_2;
mul ymm10_3 ymm12_3 ymm8_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557f9c5 *)
adds dc ymm2_0 ymm2_0 ymm10_0;
adds dc ymm2_1 ymm2_1 ymm10_1;
adds dc ymm2_2 ymm2_2 ymm10_2;
adds dc ymm2_3 ymm2_3 ymm10_3;
(* vpand  %ymm8,%ymm3,%ymm8                        #! PC = 0x55555557f9ca *)
mul ymm8_0 ymm3_0 ymm8_0;
mul ymm8_1 ymm3_1 ymm8_1;
mul ymm8_2 ymm3_2 ymm8_2;
mul ymm8_3 ymm3_3 ymm8_3;
(* vpermq $0x50,%ymm1,%ymm1                        #! PC = 0x55555557f9cf *)
mov perm0 ymm1_0;
mov perm1 ymm1_0;
mov perm2 ymm1_1;
mov perm3 ymm1_1;
mov ymm1_0 perm0;
mov ymm1_1 perm1;
mov ymm1_2 perm2;
mov ymm1_3 perm3;
(* vpand  %ymm1,%ymm7,%ymm10                       #! PC = 0x55555557f9d5 *)
mul ymm10_0 ymm7_0 ymm1_0;
mul ymm10_1 ymm7_1 ymm1_1;
mul ymm10_2 ymm7_2 ymm1_2;
mul ymm10_3 ymm7_3 ymm1_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557f9d9 *)
adds dc ymm11_0 ymm11_0 ymm10_0;
adds dc ymm11_1 ymm11_1 ymm10_1;
adds dc ymm11_2 ymm11_2 ymm10_2;
adds dc ymm11_3 ymm11_3 ymm10_3;
(* vmovupd %ymm11,0xe0(%rcx)                       #! EA = L0x7ffffffeff00; PC = 0x55555557f9de *)
mov L0x7ffffffeff00 ymm11_0;
mov L0x7ffffffeff08 ymm11_1;
mov L0x7ffffffeff10 ymm11_2;
mov L0x7ffffffeff18 ymm11_3;
(* vpand  %ymm1,%ymm5,%ymm10                       #! PC = 0x55555557f9e6 *)
mul ymm10_0 ymm5_0 ymm1_0;
mul ymm10_1 ymm5_1 ymm1_1;
mul ymm10_2 ymm5_2 ymm1_2;
mul ymm10_3 ymm5_3 ymm1_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557f9ea *)
adds dc ymm13_0 ymm13_0 ymm10_0;
adds dc ymm13_1 ymm13_1 ymm10_1;
adds dc ymm13_2 ymm13_2 ymm10_2;
adds dc ymm13_3 ymm13_3 ymm10_3;
(* vpand  %ymm1,%ymm9,%ymm10                       #! PC = 0x55555557f9ef *)
mul ymm10_0 ymm9_0 ymm1_0;
mul ymm10_1 ymm9_1 ymm1_1;
mul ymm10_2 ymm9_2 ymm1_2;
mul ymm10_3 ymm9_3 ymm1_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557f9f3 *)
adds dc ymm6_0 ymm6_0 ymm10_0;
adds dc ymm6_1 ymm6_1 ymm10_1;
adds dc ymm6_2 ymm6_2 ymm10_2;
adds dc ymm6_3 ymm6_3 ymm10_3;
(* vpand  %ymm1,%ymm4,%ymm10                       #! PC = 0x55555557f9f8 *)
mul ymm10_0 ymm4_0 ymm1_0;
mul ymm10_1 ymm4_1 ymm1_1;
mul ymm10_2 ymm4_2 ymm1_2;
mul ymm10_3 ymm4_3 ymm1_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557f9fc *)
adds dc ymm2_0 ymm2_0 ymm10_0;
adds dc ymm2_1 ymm2_1 ymm10_1;
adds dc ymm2_2 ymm2_2 ymm10_2;
adds dc ymm2_3 ymm2_3 ymm10_3;
(* vpand  %ymm1,%ymm12,%ymm10                      #! PC = 0x55555557fa01 *)
mul ymm10_0 ymm12_0 ymm1_0;
mul ymm10_1 ymm12_1 ymm1_1;
mul ymm10_2 ymm12_2 ymm1_2;
mul ymm10_3 ymm12_3 ymm1_3;
(* vpxor  %ymm10,%ymm8,%ymm8                       #! PC = 0x55555557fa05 *)
adds dc ymm8_0 ymm8_0 ymm10_0;
adds dc ymm8_1 ymm8_1 ymm10_1;
adds dc ymm8_2 ymm8_2 ymm10_2;
adds dc ymm8_3 ymm8_3 ymm10_3;
(* vpand  %ymm1,%ymm3,%ymm1                        #! PC = 0x55555557fa0a *)
mul ymm1_0 ymm3_0 ymm1_0;
mul ymm1_1 ymm3_1 ymm1_1;
mul ymm1_2 ymm3_2 ymm1_2;
mul ymm1_3 ymm3_3 ymm1_3;
(* vpermq $0xfa,%ymm0,%ymm10                       #! PC = 0x55555557fa0e *)
mov perm0 ymm0_2;
mov perm1 ymm0_2;
mov perm2 ymm0_3;
mov perm3 ymm0_3;
mov ymm10_0 perm0;
mov ymm10_1 perm1;
mov ymm10_2 perm2;
mov ymm10_3 perm3;
(* vpand  %ymm10,%ymm7,%ymm11                      #! PC = 0x55555557fa14 *)
mul ymm11_0 ymm7_0 ymm10_0;
mul ymm11_1 ymm7_1 ymm10_1;
mul ymm11_2 ymm7_2 ymm10_2;
mul ymm11_3 ymm7_3 ymm10_3;
(* vpxor  %ymm11,%ymm13,%ymm13                     #! PC = 0x55555557fa19 *)
adds dc ymm13_0 ymm13_0 ymm11_0;
adds dc ymm13_1 ymm13_1 ymm11_1;
adds dc ymm13_2 ymm13_2 ymm11_2;
adds dc ymm13_3 ymm13_3 ymm11_3;
(* vmovupd %ymm13,0xc0(%rcx)                       #! EA = L0x7ffffffefee0; PC = 0x55555557fa1e *)
mov L0x7ffffffefee0 ymm13_0;
mov L0x7ffffffefee8 ymm13_1;
mov L0x7ffffffefef0 ymm13_2;
mov L0x7ffffffefef8 ymm13_3;
(* vpand  %ymm10,%ymm5,%ymm11                      #! PC = 0x55555557fa26 *)
mul ymm11_0 ymm5_0 ymm10_0;
mul ymm11_1 ymm5_1 ymm10_1;
mul ymm11_2 ymm5_2 ymm10_2;
mul ymm11_3 ymm5_3 ymm10_3;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555557fa2b *)
adds dc ymm6_0 ymm6_0 ymm11_0;
adds dc ymm6_1 ymm6_1 ymm11_1;
adds dc ymm6_2 ymm6_2 ymm11_2;
adds dc ymm6_3 ymm6_3 ymm11_3;
(* vpand  %ymm10,%ymm9,%ymm11                      #! PC = 0x55555557fa30 *)
mul ymm11_0 ymm9_0 ymm10_0;
mul ymm11_1 ymm9_1 ymm10_1;
mul ymm11_2 ymm9_2 ymm10_2;
mul ymm11_3 ymm9_3 ymm10_3;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557fa35 *)
adds dc ymm2_0 ymm2_0 ymm11_0;
adds dc ymm2_1 ymm2_1 ymm11_1;
adds dc ymm2_2 ymm2_2 ymm11_2;
adds dc ymm2_3 ymm2_3 ymm11_3;
(* vpand  %ymm10,%ymm4,%ymm11                      #! PC = 0x55555557fa3a *)
mul ymm11_0 ymm4_0 ymm10_0;
mul ymm11_1 ymm4_1 ymm10_1;
mul ymm11_2 ymm4_2 ymm10_2;
mul ymm11_3 ymm4_3 ymm10_3;
(* vpxor  %ymm11,%ymm8,%ymm8                       #! PC = 0x55555557fa3f *)
adds dc ymm8_0 ymm8_0 ymm11_0;
adds dc ymm8_1 ymm8_1 ymm11_1;
adds dc ymm8_2 ymm8_2 ymm11_2;
adds dc ymm8_3 ymm8_3 ymm11_3;
(* vpand  %ymm10,%ymm12,%ymm11                     #! PC = 0x55555557fa44 *)
mul ymm11_0 ymm12_0 ymm10_0;
mul ymm11_1 ymm12_1 ymm10_1;
mul ymm11_2 ymm12_2 ymm10_2;
mul ymm11_3 ymm12_3 ymm10_3;
(* vpxor  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557fa49 *)
adds dc ymm1_0 ymm1_0 ymm11_0;
adds dc ymm1_1 ymm1_1 ymm11_1;
adds dc ymm1_2 ymm1_2 ymm11_2;
adds dc ymm1_3 ymm1_3 ymm11_3;
(* vpand  %ymm10,%ymm3,%ymm10                      #! PC = 0x55555557fa4e *)
mul ymm10_0 ymm3_0 ymm10_0;
mul ymm10_1 ymm3_1 ymm10_1;
mul ymm10_2 ymm3_2 ymm10_2;
mul ymm10_3 ymm3_3 ymm10_3;
(* vpermq $0x50,%ymm0,%ymm0                        #! PC = 0x55555557fa53 *)
mov perm0 ymm0_0;
mov perm1 ymm0_0;
mov perm2 ymm0_1;
mov perm3 ymm0_1;
mov ymm0_0 perm0;
mov ymm0_1 perm1;
mov ymm0_2 perm2;
mov ymm0_3 perm3;
(* vpand  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557fa59 *)
mul ymm7_0 ymm7_0 ymm0_0;
mul ymm7_1 ymm7_1 ymm0_1;
mul ymm7_2 ymm7_2 ymm0_2;
mul ymm7_3 ymm7_3 ymm0_3;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555557fa5d *)
adds dc ymm6_0 ymm6_0 ymm7_0;
adds dc ymm6_1 ymm6_1 ymm7_1;
adds dc ymm6_2 ymm6_2 ymm7_2;
adds dc ymm6_3 ymm6_3 ymm7_3;
(* vmovupd %ymm6,0xa0(%rcx)                        #! EA = L0x7ffffffefec0; PC = 0x55555557fa61 *)
mov L0x7ffffffefec0 ymm6_0;
mov L0x7ffffffefec8 ymm6_1;
mov L0x7ffffffefed0 ymm6_2;
mov L0x7ffffffefed8 ymm6_3;
(* vpand  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557fa69 *)
mul ymm5_0 ymm5_0 ymm0_0;
mul ymm5_1 ymm5_1 ymm0_1;
mul ymm5_2 ymm5_2 ymm0_2;
mul ymm5_3 ymm5_3 ymm0_3;
(* vpxor  %ymm5,%ymm2,%ymm2                        #! PC = 0x55555557fa6d *)
adds dc ymm2_0 ymm2_0 ymm5_0;
adds dc ymm2_1 ymm2_1 ymm5_1;
adds dc ymm2_2 ymm2_2 ymm5_2;
adds dc ymm2_3 ymm2_3 ymm5_3;
(* vpand  %ymm0,%ymm9,%ymm5                        #! PC = 0x55555557fa71 *)
mul ymm5_0 ymm9_0 ymm0_0;
mul ymm5_1 ymm9_1 ymm0_1;
mul ymm5_2 ymm9_2 ymm0_2;
mul ymm5_3 ymm9_3 ymm0_3;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557fa75 *)
adds dc ymm8_0 ymm8_0 ymm5_0;
adds dc ymm8_1 ymm8_1 ymm5_1;
adds dc ymm8_2 ymm8_2 ymm5_2;
adds dc ymm8_3 ymm8_3 ymm5_3;
(* vpand  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557fa79 *)
mul ymm4_0 ymm4_0 ymm0_0;
mul ymm4_1 ymm4_1 ymm0_1;
mul ymm4_2 ymm4_2 ymm0_2;
mul ymm4_3 ymm4_3 ymm0_3;
(* vpxor  %ymm4,%ymm1,%ymm1                        #! PC = 0x55555557fa7d *)
adds dc ymm1_0 ymm1_0 ymm4_0;
adds dc ymm1_1 ymm1_1 ymm4_1;
adds dc ymm1_2 ymm1_2 ymm4_2;
adds dc ymm1_3 ymm1_3 ymm4_3;
(* vpand  %ymm0,%ymm12,%ymm4                       #! PC = 0x55555557fa81 *)
mul ymm4_0 ymm12_0 ymm0_0;
mul ymm4_1 ymm12_1 ymm0_1;
mul ymm4_2 ymm12_2 ymm0_2;
mul ymm4_3 ymm12_3 ymm0_3;
(* vpxor  %ymm4,%ymm10,%ymm10                      #! PC = 0x55555557fa85 *)
adds dc ymm10_0 ymm10_0 ymm4_0;
adds dc ymm10_1 ymm10_1 ymm4_1;
adds dc ymm10_2 ymm10_2 ymm4_2;
adds dc ymm10_3 ymm10_3 ymm4_3;
(* vpand  %ymm0,%ymm3,%ymm0                        #! PC = 0x55555557fa89 *)
mul ymm0_0 ymm3_0 ymm0_0;
mul ymm0_1 ymm3_1 ymm0_1;
mul ymm0_2 ymm3_2 ymm0_2;
mul ymm0_3 ymm3_3 ymm0_3;
(* vmovupd %ymm2,0x80(%rcx)                        #! EA = L0x7ffffffefea0; PC = 0x55555557fa8d *)
mov L0x7ffffffefea0 ymm2_0;
mov L0x7ffffffefea8 ymm2_1;
mov L0x7ffffffefeb0 ymm2_2;
mov L0x7ffffffefeb8 ymm2_3;
(* vmovupd %ymm8,0x60(%rcx)                        #! EA = L0x7ffffffefe80; PC = 0x55555557fa95 *)
mov L0x7ffffffefe80 ymm8_0;
mov L0x7ffffffefe88 ymm8_1;
mov L0x7ffffffefe90 ymm8_2;
mov L0x7ffffffefe98 ymm8_3;
(* vmovupd %ymm1,0x40(%rcx)                        #! EA = L0x7ffffffefe60; PC = 0x55555557fa9a *)
mov L0x7ffffffefe60 ymm1_0;
mov L0x7ffffffefe68 ymm1_1;
mov L0x7ffffffefe70 ymm1_2;
mov L0x7ffffffefe78 ymm1_3;
(* vmovupd %ymm10,0x20(%rcx)                       #! EA = L0x7ffffffefe40; PC = 0x55555557fa9f *)
mov L0x7ffffffefe40 ymm10_0;
mov L0x7ffffffefe48 ymm10_1;
mov L0x7ffffffefe50 ymm10_2;
mov L0x7ffffffefe58 ymm10_3;
(* vmovupd %ymm0,(%rcx)                            #! EA = L0x7ffffffefe20; PC = 0x55555557faa4 *)
mov L0x7ffffffefe20 ymm0_0;
mov L0x7ffffffefe28 ymm0_1;
mov L0x7ffffffefe30 ymm0_2;
mov L0x7ffffffefe38 ymm0_3;
(* mov    0x158(%rcx),%rsi                         #! EA = L0x7ffffffeff78; Value = 0x8f83fa884bf91c77; PC = 0x55555557faa8 *)
mov rsi L0x7ffffffeff78;
(* mov    %rsi,%rdx                                #! PC = 0x55555557faaf *)
mov rdx rsi;
(* mov    %rsi,%rsi                                #! PC = 0x55555557fab2 *)
mov rsi rsi;
(* mov    0x150(%rcx),%r8                          #! EA = L0x7ffffffeff70; Value = 0x8f83fa884bf91c77; PC = 0x55555557fab5 *)
mov r8 L0x7ffffffeff70;
(* xor    0x148(%rcx),%r8                          #! EA = L0x7ffffffeff68; Value = 0x8e0d615b6c0d3b13; PC = 0x55555557fabc *)
adds dc r8 r8 L0x7ffffffeff68;
(* mov    %r8,%r9                                  #! PC = 0x55555557fac3 *)
mov r9 r8;
(* mov    %r8,%r8                                  #! PC = 0x55555557fac6 *)
mov r8 r8;
(* mov    0x138(%rcx),%rax                         #! EA = L0x7ffffffeff58; Value = 0x4f61ca2e4322941d; PC = 0x55555557fac9 *)
mov rax L0x7ffffffeff58;
(* xor    0x140(%rcx),%rax                         #! EA = L0x7ffffffeff60; Value = 0x8e0d615b6c0d3b13; PC = 0x55555557fad0 *)
adds dc rax rax L0x7ffffffeff60;
(* mov    %rax,%r10                                #! PC = 0x55555557fad7 *)
mov r10 rax;
(* mov    %rax,%rax                                #! PC = 0x55555557fada *)
mov rax rax;
(* mov    0x130(%rcx),%r11                         #! EA = L0x7ffffffeff50; Value = 0xc0e230a608db886a; PC = 0x55555557fadd *)
mov r11 L0x7ffffffeff50;
(* xor    0x128(%rcx),%r11                         #! EA = L0x7ffffffeff48; Value = 0x82ecf4ade3a2121a; PC = 0x55555557fae4 *)
adds dc r11 r11 L0x7ffffffeff48;
(* xor    %r11,%rsi                                #! PC = 0x55555557faeb *)
adds dc rsi rsi r11;
(* mov    %r11,%r11                                #! PC = 0x55555557faee *)
mov r11 r11;
(* mov    0x118(%rcx),%r12                         #! EA = L0x7ffffffeff38; Value = 0xf9e1c36677604867; PC = 0x55555557faf1 *)
mov r12 L0x7ffffffeff38;
(* xor    0x120(%rcx),%r12                         #! EA = L0x7ffffffeff40; Value = 0x0ce195f68faf2909; PC = 0x55555557faf8 *)
adds dc r12 r12 L0x7ffffffeff40;
(* xor    %r12,%r8                                 #! PC = 0x55555557faff *)
adds dc r8 r8 r12;
(* mov    %r12,%r12                                #! PC = 0x55555557fb02 *)
mov r12 r12;
(* mov    0x110(%rcx),%r13                         #! EA = L0x7ffffffeff30; Value = 0xb68009483442dc7a; PC = 0x55555557fb05 *)
mov r13 L0x7ffffffeff30;
(* xor    0x108(%rcx),%r13                         #! EA = L0x7ffffffeff28; Value = 0xda81058191371710; PC = 0x55555557fb0c *)
adds dc r13 r13 L0x7ffffffeff28;
(* xor    %r13,%rax                                #! PC = 0x55555557fb13 *)
adds dc rax rax r13;
(* mov    %r13,%r13                                #! PC = 0x55555557fb16 *)
mov r13 r13;
(* mov    0xf8(%rcx),%r14                          #! EA = L0x7ffffffeff18; Value = 0x74600f9b9cd38180; PC = 0x55555557fb19 *)
mov r14 L0x7ffffffeff18;
(* xor    0x100(%rcx),%r14                         #! EA = L0x7ffffffeff20; Value = 0x586df12c7295050a; PC = 0x55555557fb20 *)
adds dc r14 r14 L0x7ffffffeff20;
(* xor    %r14,%r11                                #! PC = 0x55555557fb27 *)
adds dc r11 r11 r14;
(* mov    %r14,%r14                                #! PC = 0x55555557fb2a *)
mov r14 r14;
(* mov    0xf0(%rcx),%r15                          #! EA = L0x7ffffffeff10; Value = 0x8d81ccfdebb3c9e7; PC = 0x55555557fb2d *)
mov r15 L0x7ffffffeff10;
(* xor    0xe8(%rcx),%r15                          #! EA = L0x7ffffffeff08; Value = 0xff48b30e5566b8b6; PC = 0x55555557fb34 *)
adds dc r15 r15 L0x7ffffffeff08;
(* xor    %r15,%r12                                #! PC = 0x55555557fb3b *)
adds dc r12 r12 r15;
(* mov    %r15,%r15                                #! PC = 0x55555557fb3e *)
mov r15 r15;
(* mov    0xd8(%rcx),%rbx                          #! EA = L0x7ffffffefef8; Value = 0xbf82edf0422b1ff6; PC = 0x55555557fb41 *)
mov rbx L0x7ffffffefef8;
(* xor    0xe0(%rcx),%rbx                          #! EA = L0x7ffffffeff00; Value = 0x25c9b68fc451afa6; PC = 0x55555557fb48 *)
adds dc rbx rbx L0x7ffffffeff00;
(* xor    %rbx,%r13                                #! PC = 0x55555557fb4f *)
adds dc r13 r13 rbx;
(* mov    %rbx,%rbx                                #! PC = 0x55555557fb52 *)
mov rbx rbx;
(* xor    0xd0(%rcx),%rdx                          #! EA = L0x7ffffffefef0; Value = 0x446118e395018201; PC = 0x55555557fb55 *)
adds dc rdx rdx L0x7ffffffefef0;
(* xor    0xc8(%rcx),%rdx                          #! EA = L0x7ffffffefee8; Value = 0x14f1c7b67c24ded6; PC = 0x55555557fb5c *)
adds dc rdx rdx L0x7ffffffefee8;
(* xor    %rdx,%r14                                #! PC = 0x55555557fb63 *)
adds dc r14 r14 rdx;
(* mov    %rdx,%rdx                                #! PC = 0x55555557fb66 *)
mov rdx rdx;
(* xor    0xb8(%rcx),%r9                           #! EA = L0x7ffffffefed8; Value = 0x6a9a17b31243f514; PC = 0x55555557fb69 *)
adds dc r9 r9 L0x7ffffffefed8;
(* xor    0xc0(%rcx),%r9                           #! EA = L0x7ffffffefee0; Value = 0x65b415e3454f5d73; PC = 0x55555557fb70 *)
adds dc r9 r9 L0x7ffffffefee0;
(* xor    %r9,%r15                                 #! PC = 0x55555557fb77 *)
adds dc r15 r15 r9;
(* mov    %r9,%r9                                  #! PC = 0x55555557fb7a *)
mov r9 r9;
(* xor    0xb0(%rcx),%r10                          #! EA = L0x7ffffffefed0; Value = 0x9a79306d134a7eff; PC = 0x55555557fb7d *)
adds dc r10 r10 L0x7ffffffefed0;
(* xor    0xa8(%rcx),%r10                          #! EA = L0x7ffffffefec8; Value = 0x8ffdad1df90472da; PC = 0x55555557fb84 *)
adds dc r10 r10 L0x7ffffffefec8;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffff0298; PC = 0x55555557fb8b *)
mov L0x7fffffff0298 r10;
(* xor    0x98(%rcx),%rsi                          #! EA = L0x7ffffffefeb8; Value = 0xdc1a1efb2601296e; PC = 0x55555557fb8f *)
adds dc rsi rsi L0x7ffffffefeb8;
(* xor    0xa0(%rcx),%rsi                          #! EA = L0x7ffffffefec0; Value = 0x19e09e066682be16; PC = 0x55555557fb96 *)
adds dc rsi rsi L0x7ffffffefec0;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffff0290; PC = 0x55555557fb9d *)
mov L0x7fffffff0290 rsi;
(* xor    0x90(%rcx),%r8                           #! EA = L0x7ffffffefeb0; Value = 0xc0e230a608db886a; PC = 0x55555557fba1 *)
adds dc r8 r8 L0x7ffffffefeb0;
(* xor    0x88(%rcx),%r8                           #! EA = L0x7ffffffefea8; Value = 0xd7905c318b9177d0; PC = 0x55555557fba8 *)
adds dc r8 r8 L0x7ffffffefea8;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffff0288; PC = 0x55555557fbaf *)
mov L0x7fffffff0288 r8;
(* xor    0x78(%rcx),%rax                          #! EA = L0x7ffffffefe98; Value = 0x519bd206cdb2e089; PC = 0x55555557fbb3 *)
adds dc rax rax L0x7ffffffefe98;
(* xor    0x80(%rcx),%rax                          #! EA = L0x7ffffffefea0; Value = 0x0ce195f68faf2909; PC = 0x55555557fbb7 *)
adds dc rax rax L0x7ffffffefea0;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffff0280; PC = 0x55555557fbbe *)
mov L0x7fffffff0280 rax;
(* xor    0x70(%rcx),%r11                          #! EA = L0x7ffffffefe90; Value = 0xb68009483442dc7a; PC = 0x55555557fbc2 *)
adds dc r11 r11 L0x7ffffffefe90;
(* xor    0x68(%rcx),%r11                          #! EA = L0x7ffffffefe88; Value = 0xf259eabe4fc0d876; PC = 0x55555557fbc6 *)
adds dc r11 r11 L0x7ffffffefe88;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7fffffff0278; PC = 0x55555557fbca *)
mov L0x7fffffff0278 r11;
(* xor    0x58(%rcx),%r12                          #! EA = L0x7ffffffefe78; Value = 0x15facae558b36288; PC = 0x55555557fbce *)
adds dc r12 r12 L0x7ffffffefe78;
(* xor    0x60(%rcx),%r12                          #! EA = L0x7ffffffefe80; Value = 0x586df12c7295050a; PC = 0x55555557fbd2 *)
adds dc r12 r12 L0x7ffffffefe80;
(* mov    %r12,0x30(%rdi)                          #! EA = L0x7fffffff0270; PC = 0x55555557fbd6 *)
mov L0x7fffffff0270 r12;
(* xor    0x50(%rcx),%r13                          #! EA = L0x7ffffffefe70; Value = 0x8d81ccfdebb3c9e7; PC = 0x55555557fbda *)
adds dc r13 r13 L0x7ffffffefe70;
(* xor    0x48(%rcx),%r13                          #! EA = L0x7ffffffefe68; Value = 0x97edff5d0a8f8505; PC = 0x55555557fbde *)
adds dc r13 r13 L0x7ffffffefe68;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffff0268; PC = 0x55555557fbe2 *)
mov L0x7fffffff0268 r13;
(* xor    0x38(%rcx),%r14                          #! EA = L0x7ffffffefe58; Value = 0x0000000000000000; PC = 0x55555557fbe6 *)
adds dc r14 r14 L0x7ffffffefe58;
(* xor    0x40(%rcx),%r14                          #! EA = L0x7ffffffefe60; Value = 0x25c9b68fc451afa6; PC = 0x55555557fbea *)
adds dc r14 r14 L0x7ffffffefe60;
(* mov    %r14,0x20(%rdi)                          #! EA = L0x7fffffff0260; PC = 0x55555557fbee *)
mov L0x7fffffff0260 r14;
(* xor    0x30(%rcx),%r15                          #! EA = L0x7ffffffefe50; Value = 0x446118e395018201; PC = 0x55555557fbf2 *)
adds dc r15 r15 L0x7ffffffefe50;
(* xor    0x28(%rcx),%r15                          #! EA = L0x7ffffffefe48; Value = 0x0000000000000000; PC = 0x55555557fbf6 *)
adds dc r15 r15 L0x7ffffffefe48;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7fffffff0258; PC = 0x55555557fbfa *)
mov L0x7fffffff0258 r15;
(* xor    0x18(%rcx),%rbx                          #! EA = L0x7ffffffefe38; Value = 0x0000000000000000; PC = 0x55555557fbfe *)
adds dc rbx rbx L0x7ffffffefe38;
(* xor    0x20(%rcx),%rbx                          #! EA = L0x7ffffffefe40; Value = 0x65b415e3454f5d73; PC = 0x55555557fc02 *)
adds dc rbx rbx L0x7ffffffefe40;
(* mov    %rbx,0x10(%rdi)                          #! EA = L0x7fffffff0250; PC = 0x55555557fc06 *)
mov L0x7fffffff0250 rbx;
(* xor    0x10(%rcx),%rdx                          #! EA = L0x7ffffffefe30; Value = 0x15facae558b36288; PC = 0x55555557fc0a *)
adds dc rdx rdx L0x7ffffffefe30;
(* xor    0x8(%rcx),%rdx                           #! EA = L0x7ffffffefe28; Value = 0x0000000000000000; PC = 0x55555557fc0e *)
adds dc rdx rdx L0x7ffffffefe28;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7fffffff0248; PC = 0x55555557fc12 *)
mov L0x7fffffff0248 rdx;
(* xor    (%rcx),%r9                               #! EA = L0x7ffffffefe20; Value = 0x97edff5d0a8f8505; PC = 0x55555557fc16 *)
adds dc r9 r9 L0x7ffffffefe20;
(* mov    %r9,(%rdi)                               #! EA = L0x7fffffff0240; PC = 0x55555557fc19 *)
mov L0x7fffffff0240 r9;
(* #mov    0x260(%rsp),%r11                         #! EA = L0x7fffffff0080; Value = 0x00000000000002b8; PC = 0x55555557fc1c *)
#mov    0x260(%rsp),%%r11                         #! L0x7fffffff0080 = L0x7fffffff0080; 0x00000000000002b8 = 0x00000000000002b8; 0x55555557fc1c = 0x55555557fc1c;
(* #mov    0x268(%rsp),%r12                         #! EA = L0x7fffffff0088; Value = 0x0000000000000000; PC = 0x55555557fc24 *)
#mov    0x268(%rsp),%%r12                         #! L0x7fffffff0088 = L0x7fffffff0088; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc24 = 0x55555557fc24;
(* #mov    0x270(%rsp),%r13                         #! EA = L0x7fffffff0090; Value = 0x0000000000000000; PC = 0x55555557fc2c *)
#mov    0x270(%rsp),%%r13                         #! L0x7fffffff0090 = L0x7fffffff0090; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc2c = 0x55555557fc2c;
(* #mov    0x278(%rsp),%r14                         #! EA = L0x7fffffff0098; Value = 0x0000000000000000; PC = 0x55555557fc34 *)
#mov    0x278(%rsp),%%r14                         #! L0x7fffffff0098 = L0x7fffffff0098; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc34 = 0x55555557fc34;
(* #mov    0x280(%rsp),%r15                         #! EA = L0x7fffffff00a0; Value = 0x0000000000000000; PC = 0x55555557fc3c *)
#mov    0x280(%rsp),%%r15                         #! L0x7fffffff00a0 = L0x7fffffff00a0; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc3c = 0x55555557fc3c;
(* #mov    0x288(%rsp),%rbx                         #! EA = L0x7fffffff00a8; Value = 0x0000000000000000; PC = 0x55555557fc44 *)
#mov    0x288(%rsp),%%rbx                         #! L0x7fffffff00a8 = L0x7fffffff00a8; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc44 = 0x55555557fc44;
(* #add    %r11,%rsp                                #! PC = 0x55555557fc4c *)
#add    %%r11,%rsp                                #! 0x55555557fc4c = 0x55555557fc4c;
(* #! <- SP = 0x7fffffff00d8 *)
#! 0x7fffffff00d8 = 0x7fffffff00d8;
(* #retq                                           #! PC = 0x55555557fc4f *)
#retq                                           #! 0x55555557fc4f = 0x55555557fc4f;

mov c00 L0x7fffffff0240;
mov c01 L0x7fffffff0248;
mov c02 L0x7fffffff0250;
mov c03 L0x7fffffff0258;
mov c04 L0x7fffffff0260;
mov c05 L0x7fffffff0268;
mov c06 L0x7fffffff0270;
mov c07 L0x7fffffff0278;
mov c08 L0x7fffffff0280;
mov c09 L0x7fffffff0288;
mov c10 L0x7fffffff0290;
mov c11 L0x7fffffff0298;

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

