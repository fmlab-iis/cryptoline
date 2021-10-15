(* quine:  -v PQCLEAN_MCELIECE348864_AVX_vec_mul_asm.cl
Parsing Cryptoline file:                [OK]            0.007594 seconds
Checking well-formedness:               [OK]            0.001414 seconds
Transforming to SSA form:               [OK]            0.000402 seconds
Rewriting assignments:                  [OK]            0.000310 seconds
Verifying program safety:               [OK]            0.062577 seconds
Verifying range specification:          [OK]            0.064139 seconds
Rewriting value-preserved casting:      [OK]            0.000035 seconds
Verifying algebraic specification:      [OK]            0.116992 seconds
Verification result:                    [OK]            0.254146 seconds
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

mov L0x7ffffff40f30 a00;
mov L0x7ffffff40f38 a01;
mov L0x7ffffff40f40 a02;
mov L0x7ffffff40f48 a03;
mov L0x7ffffff40f50 a04;
mov L0x7ffffff40f58 a05;
mov L0x7ffffff40f60 a06;
mov L0x7ffffff40f68 a07;
mov L0x7ffffff40f70 a08;
mov L0x7ffffff40f78 a09;
mov L0x7ffffff40f80 a10;
mov L0x7ffffff40f88 a11;

mov L0x7ffffff41280 b00;
mov L0x7ffffff41288 b01;
mov L0x7ffffff41290 b02;
mov L0x7ffffff41298 b03;
mov L0x7ffffff412a0 b04;
mov L0x7ffffff412a8 b05;
mov L0x7ffffff412b0 b06;
mov L0x7ffffff412b8 b07;
mov L0x7ffffff412c0 b08;
mov L0x7ffffff412c8 b09;
mov L0x7ffffff412d0 b10;
mov L0x7ffffff412d8 b11;

(* #! -> SP = 0x7ffffff40eb8 *)
#! 0x7ffffff40eb8 = 0x7ffffff40eb8;
(* #mov    %rsp,%r11                                #! PC = 0x55555559cb00 *)
#mov    %rsp,%%r11                                #! 0x55555559cb00 = 0x55555559cb00;
(* #and    $0x1f,%r11                               #! PC = 0x55555559cb03 *)
#and    $0x1f,%%r11                               #! 0x55555559cb03 = 0x55555559cb03;
(* #add    $0x2a0,%r11                              #! PC = 0x55555559cb07 *)
#add    $0x2a0,%%r11                              #! 0x55555559cb07 = 0x55555559cb07;
(* #sub    %r11,%rsp                                #! PC = 0x55555559cb0e *)
#sub    %%r11,%rsp                                #! 0x55555559cb0e = 0x55555559cb0e;
(* #mov    %r11,0x260(%rsp)                         #! EA = L0x7ffffff40e60; PC = 0x55555559cb11 *)
#mov    %%r11,0x260(%rsp)                         #! L0x7ffffff40e60 = L0x7ffffff40e60; 0x55555559cb11 = 0x55555559cb11;
(* #mov    %r12,0x268(%rsp)                         #! EA = L0x7ffffff40e68; PC = 0x55555559cb19 *)
#mov    %%r12,0x268(%rsp)                         #! L0x7ffffff40e68 = L0x7ffffff40e68; 0x55555559cb19 = 0x55555559cb19;
(* #mov    %r13,0x270(%rsp)                         #! EA = L0x7ffffff40e70; PC = 0x55555559cb21 *)
#mov    %%r13,0x270(%rsp)                         #! L0x7ffffff40e70 = L0x7ffffff40e70; 0x55555559cb21 = 0x55555559cb21;
(* #mov    %r14,0x278(%rsp)                         #! EA = L0x7ffffff40e78; PC = 0x55555559cb29 *)
#mov    %%r14,0x278(%rsp)                         #! L0x7ffffff40e78 = L0x7ffffff40e78; 0x55555559cb29 = 0x55555559cb29;
(* #mov    %r15,0x280(%rsp)                         #! EA = L0x7ffffff40e80; PC = 0x55555559cb31 *)
#mov    %%r15,0x280(%rsp)                         #! L0x7ffffff40e80 = L0x7ffffff40e80; 0x55555559cb31 = 0x55555559cb31;
(* #mov    %rbx,0x288(%rsp)                         #! EA = L0x7ffffff40e88; PC = 0x55555559cb39 *)
#mov    %%rbx,0x288(%rsp)                         #! L0x7ffffff40e88 = L0x7ffffff40e88; 0x55555559cb39 = 0x55555559cb39;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555559cb41 *)
#lea    (%rsp),%rcx                              #! 0x55555559cb41 = 0x55555559cb41;
(* vmovupd (%rsi),%ymm0                            #! EA = L0x7ffffff41280; Value = 0x226eb81b5ab5ce01; PC = 0x55555559cb45 *)
mov ymm0_0 L0x7ffffff41280;
mov ymm0_1 L0x7ffffff41288;
mov ymm0_2 L0x7ffffff41290;
mov ymm0_3 L0x7ffffff41298;
(* vmovupd 0x20(%rsi),%ymm1                        #! EA = L0x7ffffff412a0; Value = 0x8b15628c913e0825; PC = 0x55555559cb49 *)
mov ymm1_0 L0x7ffffff412a0;
mov ymm1_1 L0x7ffffff412a8;
mov ymm1_2 L0x7ffffff412b0;
mov ymm1_3 L0x7ffffff412b8;
(* vmovupd 0x40(%rsi),%ymm2                        #! EA = L0x7ffffff412c0; Value = 0x0c07d5824f863fc0; PC = 0x55555559cb4e *)
mov ymm2_0 L0x7ffffff412c0;
mov ymm2_1 L0x7ffffff412c8;
mov ymm2_2 L0x7ffffff412d0;
mov ymm2_3 L0x7ffffff412d8;
(* vmovupd (%rdx),%ymm3                            #! EA = L0x7ffffff40f30; Value = 0xf3cfc030fc30f003; PC = 0x55555559cb53 *)
mov ymm3_0 L0x7ffffff40f30;
mov ymm3_1 L0x7ffffff40f38;
mov ymm3_2 L0x7ffffff40f40;
mov ymm3_3 L0x7ffffff40f48;
(* vmovupd 0x20(%rdx),%ymm4                        #! EA = L0x7ffffff40f50; Value = 0x0300c03ff303c3f0; PC = 0x55555559cb57 *)
mov ymm4_0 L0x7ffffff40f50;
mov ymm4_1 L0x7ffffff40f58;
mov ymm4_2 L0x7ffffff40f60;
mov ymm4_3 L0x7ffffff40f68;
(* vmovupd 0x40(%rdx),%ymm5                        #! EA = L0x7ffffff40f70; Value = 0x0ff30fffc3fff300; PC = 0x55555559cb5c *)
mov ymm5_0 L0x7ffffff40f70;
mov ymm5_1 L0x7ffffff40f78;
mov ymm5_2 L0x7ffffff40f80;
mov ymm5_3 L0x7ffffff40f88;
(* vpermq $0xfa,%ymm2,%ymm6                        #! PC = 0x55555559cb61 *)
mov perm0 ymm2_2;
mov perm1 ymm2_2;
mov perm2 ymm2_3;
mov perm3 ymm2_3;
mov ymm6_0 perm0;
mov ymm6_1 perm1;
mov ymm6_2 perm2;
mov ymm6_3 perm3;
(* vpermq $0xee,%ymm5,%ymm7                        #! PC = 0x55555559cb67 *)
mov perm0 ymm5_2;
mov perm1 ymm5_3;
mov perm2 ymm5_2;
mov perm3 ymm5_3;
mov ymm7_0 perm0;
mov ymm7_1 perm1;
mov ymm7_2 perm2;
mov ymm7_3 perm3;
(* vpand  %ymm6,%ymm7,%ymm8                        #! PC = 0x55555559cb6d *)
mul ymm8_0 ymm7_0 ymm6_0;
mul ymm8_1 ymm7_1 ymm6_1;
mul ymm8_2 ymm7_2 ymm6_2;
mul ymm8_3 ymm7_3 ymm6_3;
(* vmovupd %ymm8,0x140(%rcx)                       #! EA = L0x7ffffff40d40; PC = 0x55555559cb71 *)
mov L0x7ffffff40d40 ymm8_0;
mov L0x7ffffff40d48 ymm8_1;
mov L0x7ffffff40d50 ymm8_2;
mov L0x7ffffff40d58 ymm8_3;
(* vpermq $0x44,%ymm5,%ymm5                        #! PC = 0x55555559cb79 *)
mov perm0 ymm5_0;
mov perm1 ymm5_1;
mov perm2 ymm5_0;
mov perm3 ymm5_1;
mov ymm5_0 perm0;
mov ymm5_1 perm1;
mov ymm5_2 perm2;
mov ymm5_3 perm3;
(* vpand  %ymm6,%ymm5,%ymm8                        #! PC = 0x55555559cb7f *)
mul ymm8_0 ymm5_0 ymm6_0;
mul ymm8_1 ymm5_1 ymm6_1;
mul ymm8_2 ymm5_2 ymm6_2;
mul ymm8_3 ymm5_3 ymm6_3;
(* vpermq $0xee,%ymm4,%ymm9                        #! PC = 0x55555559cb83 *)
mov perm0 ymm4_2;
mov perm1 ymm4_3;
mov perm2 ymm4_2;
mov perm3 ymm4_3;
mov ymm9_0 perm0;
mov ymm9_1 perm1;
mov ymm9_2 perm2;
mov ymm9_3 perm3;
(* vpand  %ymm6,%ymm9,%ymm10                       #! PC = 0x55555559cb89 *)
mul ymm10_0 ymm9_0 ymm6_0;
mul ymm10_1 ymm9_1 ymm6_1;
mul ymm10_2 ymm9_2 ymm6_2;
mul ymm10_3 ymm9_3 ymm6_3;
(* vpermq $0x44,%ymm4,%ymm4                        #! PC = 0x55555559cb8d *)
mov perm0 ymm4_0;
mov perm1 ymm4_1;
mov perm2 ymm4_0;
mov perm3 ymm4_1;
mov ymm4_0 perm0;
mov ymm4_1 perm1;
mov ymm4_2 perm2;
mov ymm4_3 perm3;
(* vpand  %ymm6,%ymm4,%ymm11                       #! PC = 0x55555559cb93 *)
mul ymm11_0 ymm4_0 ymm6_0;
mul ymm11_1 ymm4_1 ymm6_1;
mul ymm11_2 ymm4_2 ymm6_2;
mul ymm11_3 ymm4_3 ymm6_3;
(* vpermq $0xee,%ymm3,%ymm12                       #! PC = 0x55555559cb97 *)
mov perm0 ymm3_2;
mov perm1 ymm3_3;
mov perm2 ymm3_2;
mov perm3 ymm3_3;
mov ymm12_0 perm0;
mov ymm12_1 perm1;
mov ymm12_2 perm2;
mov ymm12_3 perm3;
(* vpand  %ymm6,%ymm12,%ymm13                      #! PC = 0x55555559cb9d *)
mul ymm13_0 ymm12_0 ymm6_0;
mul ymm13_1 ymm12_1 ymm6_1;
mul ymm13_2 ymm12_2 ymm6_2;
mul ymm13_3 ymm12_3 ymm6_3;
(* vpermq $0x44,%ymm3,%ymm3                        #! PC = 0x55555559cba1 *)
mov perm0 ymm3_0;
mov perm1 ymm3_1;
mov perm2 ymm3_0;
mov perm3 ymm3_1;
mov ymm3_0 perm0;
mov ymm3_1 perm1;
mov ymm3_2 perm2;
mov ymm3_3 perm3;
(* vpand  %ymm6,%ymm3,%ymm6                        #! PC = 0x55555559cba7 *)
mul ymm6_0 ymm3_0 ymm6_0;
mul ymm6_1 ymm3_1 ymm6_1;
mul ymm6_2 ymm3_2 ymm6_2;
mul ymm6_3 ymm3_3 ymm6_3;
(* vpermq $0x50,%ymm2,%ymm2                        #! PC = 0x55555559cbab *)
mov perm0 ymm2_0;
mov perm1 ymm2_0;
mov perm2 ymm2_1;
mov perm3 ymm2_1;
mov ymm2_0 perm0;
mov ymm2_1 perm1;
mov ymm2_2 perm2;
mov ymm2_3 perm3;
(* vpand  %ymm2,%ymm7,%ymm14                       #! PC = 0x55555559cbb1 *)
mul ymm14_0 ymm7_0 ymm2_0;
mul ymm14_1 ymm7_1 ymm2_1;
mul ymm14_2 ymm7_2 ymm2_2;
mul ymm14_3 ymm7_3 ymm2_3;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555559cbb5 *)
adds dc ymm8_0 ymm8_0 ymm14_0;
adds dc ymm8_1 ymm8_1 ymm14_1;
adds dc ymm8_2 ymm8_2 ymm14_2;
adds dc ymm8_3 ymm8_3 ymm14_3;
(* vmovupd %ymm8,0x120(%rcx)                       #! EA = L0x7ffffff40d20; PC = 0x55555559cbba *)
mov L0x7ffffff40d20 ymm8_0;
mov L0x7ffffff40d28 ymm8_1;
mov L0x7ffffff40d30 ymm8_2;
mov L0x7ffffff40d38 ymm8_3;
(* vpand  %ymm2,%ymm5,%ymm8                        #! PC = 0x55555559cbc2 *)
mul ymm8_0 ymm5_0 ymm2_0;
mul ymm8_1 ymm5_1 ymm2_1;
mul ymm8_2 ymm5_2 ymm2_2;
mul ymm8_3 ymm5_3 ymm2_3;
(* vpxor  %ymm8,%ymm10,%ymm10                      #! PC = 0x55555559cbc6 *)
adds dc ymm10_0 ymm10_0 ymm8_0;
adds dc ymm10_1 ymm10_1 ymm8_1;
adds dc ymm10_2 ymm10_2 ymm8_2;
adds dc ymm10_3 ymm10_3 ymm8_3;
(* vpand  %ymm2,%ymm9,%ymm8                        #! PC = 0x55555559cbcb *)
mul ymm8_0 ymm9_0 ymm2_0;
mul ymm8_1 ymm9_1 ymm2_1;
mul ymm8_2 ymm9_2 ymm2_2;
mul ymm8_3 ymm9_3 ymm2_3;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555559cbcf *)
adds dc ymm11_0 ymm11_0 ymm8_0;
adds dc ymm11_1 ymm11_1 ymm8_1;
adds dc ymm11_2 ymm11_2 ymm8_2;
adds dc ymm11_3 ymm11_3 ymm8_3;
(* vpand  %ymm2,%ymm4,%ymm8                        #! PC = 0x55555559cbd4 *)
mul ymm8_0 ymm4_0 ymm2_0;
mul ymm8_1 ymm4_1 ymm2_1;
mul ymm8_2 ymm4_2 ymm2_2;
mul ymm8_3 ymm4_3 ymm2_3;
(* vpxor  %ymm8,%ymm13,%ymm13                      #! PC = 0x55555559cbd8 *)
adds dc ymm13_0 ymm13_0 ymm8_0;
adds dc ymm13_1 ymm13_1 ymm8_1;
adds dc ymm13_2 ymm13_2 ymm8_2;
adds dc ymm13_3 ymm13_3 ymm8_3;
(* vpand  %ymm2,%ymm12,%ymm8                       #! PC = 0x55555559cbdd *)
mul ymm8_0 ymm12_0 ymm2_0;
mul ymm8_1 ymm12_1 ymm2_1;
mul ymm8_2 ymm12_2 ymm2_2;
mul ymm8_3 ymm12_3 ymm2_3;
(* vpxor  %ymm8,%ymm6,%ymm6                        #! PC = 0x55555559cbe1 *)
adds dc ymm6_0 ymm6_0 ymm8_0;
adds dc ymm6_1 ymm6_1 ymm8_1;
adds dc ymm6_2 ymm6_2 ymm8_2;
adds dc ymm6_3 ymm6_3 ymm8_3;
(* vpand  %ymm2,%ymm3,%ymm2                        #! PC = 0x55555559cbe6 *)
mul ymm2_0 ymm3_0 ymm2_0;
mul ymm2_1 ymm3_1 ymm2_1;
mul ymm2_2 ymm3_2 ymm2_2;
mul ymm2_3 ymm3_3 ymm2_3;
(* vpermq $0xfa,%ymm1,%ymm8                        #! PC = 0x55555559cbea *)
mov perm0 ymm1_2;
mov perm1 ymm1_2;
mov perm2 ymm1_3;
mov perm3 ymm1_3;
mov ymm8_0 perm0;
mov ymm8_1 perm1;
mov ymm8_2 perm2;
mov ymm8_3 perm3;
(* vpand  %ymm8,%ymm7,%ymm14                       #! PC = 0x55555559cbf0 *)
mul ymm14_0 ymm7_0 ymm8_0;
mul ymm14_1 ymm7_1 ymm8_1;
mul ymm14_2 ymm7_2 ymm8_2;
mul ymm14_3 ymm7_3 ymm8_3;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555559cbf5 *)
adds dc ymm10_0 ymm10_0 ymm14_0;
adds dc ymm10_1 ymm10_1 ymm14_1;
adds dc ymm10_2 ymm10_2 ymm14_2;
adds dc ymm10_3 ymm10_3 ymm14_3;
(* vmovupd %ymm10,0x100(%rcx)                      #! EA = L0x7ffffff40d00; PC = 0x55555559cbfa *)
mov L0x7ffffff40d00 ymm10_0;
mov L0x7ffffff40d08 ymm10_1;
mov L0x7ffffff40d10 ymm10_2;
mov L0x7ffffff40d18 ymm10_3;
(* vpand  %ymm8,%ymm5,%ymm10                       #! PC = 0x55555559cc02 *)
mul ymm10_0 ymm5_0 ymm8_0;
mul ymm10_1 ymm5_1 ymm8_1;
mul ymm10_2 ymm5_2 ymm8_2;
mul ymm10_3 ymm5_3 ymm8_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555559cc07 *)
adds dc ymm11_0 ymm11_0 ymm10_0;
adds dc ymm11_1 ymm11_1 ymm10_1;
adds dc ymm11_2 ymm11_2 ymm10_2;
adds dc ymm11_3 ymm11_3 ymm10_3;
(* vpand  %ymm8,%ymm9,%ymm10                       #! PC = 0x55555559cc0c *)
mul ymm10_0 ymm9_0 ymm8_0;
mul ymm10_1 ymm9_1 ymm8_1;
mul ymm10_2 ymm9_2 ymm8_2;
mul ymm10_3 ymm9_3 ymm8_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555559cc11 *)
adds dc ymm13_0 ymm13_0 ymm10_0;
adds dc ymm13_1 ymm13_1 ymm10_1;
adds dc ymm13_2 ymm13_2 ymm10_2;
adds dc ymm13_3 ymm13_3 ymm10_3;
(* vpand  %ymm8,%ymm4,%ymm10                       #! PC = 0x55555559cc16 *)
mul ymm10_0 ymm4_0 ymm8_0;
mul ymm10_1 ymm4_1 ymm8_1;
mul ymm10_2 ymm4_2 ymm8_2;
mul ymm10_3 ymm4_3 ymm8_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555559cc1b *)
adds dc ymm6_0 ymm6_0 ymm10_0;
adds dc ymm6_1 ymm6_1 ymm10_1;
adds dc ymm6_2 ymm6_2 ymm10_2;
adds dc ymm6_3 ymm6_3 ymm10_3;
(* vpand  %ymm8,%ymm12,%ymm10                      #! PC = 0x55555559cc20 *)
mul ymm10_0 ymm12_0 ymm8_0;
mul ymm10_1 ymm12_1 ymm8_1;
mul ymm10_2 ymm12_2 ymm8_2;
mul ymm10_3 ymm12_3 ymm8_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555559cc25 *)
adds dc ymm2_0 ymm2_0 ymm10_0;
adds dc ymm2_1 ymm2_1 ymm10_1;
adds dc ymm2_2 ymm2_2 ymm10_2;
adds dc ymm2_3 ymm2_3 ymm10_3;
(* vpand  %ymm8,%ymm3,%ymm8                        #! PC = 0x55555559cc2a *)
mul ymm8_0 ymm3_0 ymm8_0;
mul ymm8_1 ymm3_1 ymm8_1;
mul ymm8_2 ymm3_2 ymm8_2;
mul ymm8_3 ymm3_3 ymm8_3;
(* vpermq $0x50,%ymm1,%ymm1                        #! PC = 0x55555559cc2f *)
mov perm0 ymm1_0;
mov perm1 ymm1_0;
mov perm2 ymm1_1;
mov perm3 ymm1_1;
mov ymm1_0 perm0;
mov ymm1_1 perm1;
mov ymm1_2 perm2;
mov ymm1_3 perm3;
(* vpand  %ymm1,%ymm7,%ymm10                       #! PC = 0x55555559cc35 *)
mul ymm10_0 ymm7_0 ymm1_0;
mul ymm10_1 ymm7_1 ymm1_1;
mul ymm10_2 ymm7_2 ymm1_2;
mul ymm10_3 ymm7_3 ymm1_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555559cc39 *)
adds dc ymm11_0 ymm11_0 ymm10_0;
adds dc ymm11_1 ymm11_1 ymm10_1;
adds dc ymm11_2 ymm11_2 ymm10_2;
adds dc ymm11_3 ymm11_3 ymm10_3;
(* vmovupd %ymm11,0xe0(%rcx)                       #! EA = L0x7ffffff40ce0; PC = 0x55555559cc3e *)
mov L0x7ffffff40ce0 ymm11_0;
mov L0x7ffffff40ce8 ymm11_1;
mov L0x7ffffff40cf0 ymm11_2;
mov L0x7ffffff40cf8 ymm11_3;
(* vpand  %ymm1,%ymm5,%ymm10                       #! PC = 0x55555559cc46 *)
mul ymm10_0 ymm5_0 ymm1_0;
mul ymm10_1 ymm5_1 ymm1_1;
mul ymm10_2 ymm5_2 ymm1_2;
mul ymm10_3 ymm5_3 ymm1_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555559cc4a *)
adds dc ymm13_0 ymm13_0 ymm10_0;
adds dc ymm13_1 ymm13_1 ymm10_1;
adds dc ymm13_2 ymm13_2 ymm10_2;
adds dc ymm13_3 ymm13_3 ymm10_3;
(* vpand  %ymm1,%ymm9,%ymm10                       #! PC = 0x55555559cc4f *)
mul ymm10_0 ymm9_0 ymm1_0;
mul ymm10_1 ymm9_1 ymm1_1;
mul ymm10_2 ymm9_2 ymm1_2;
mul ymm10_3 ymm9_3 ymm1_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555559cc53 *)
adds dc ymm6_0 ymm6_0 ymm10_0;
adds dc ymm6_1 ymm6_1 ymm10_1;
adds dc ymm6_2 ymm6_2 ymm10_2;
adds dc ymm6_3 ymm6_3 ymm10_3;
(* vpand  %ymm1,%ymm4,%ymm10                       #! PC = 0x55555559cc58 *)
mul ymm10_0 ymm4_0 ymm1_0;
mul ymm10_1 ymm4_1 ymm1_1;
mul ymm10_2 ymm4_2 ymm1_2;
mul ymm10_3 ymm4_3 ymm1_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555559cc5c *)
adds dc ymm2_0 ymm2_0 ymm10_0;
adds dc ymm2_1 ymm2_1 ymm10_1;
adds dc ymm2_2 ymm2_2 ymm10_2;
adds dc ymm2_3 ymm2_3 ymm10_3;
(* vpand  %ymm1,%ymm12,%ymm10                      #! PC = 0x55555559cc61 *)
mul ymm10_0 ymm12_0 ymm1_0;
mul ymm10_1 ymm12_1 ymm1_1;
mul ymm10_2 ymm12_2 ymm1_2;
mul ymm10_3 ymm12_3 ymm1_3;
(* vpxor  %ymm10,%ymm8,%ymm8                       #! PC = 0x55555559cc65 *)
adds dc ymm8_0 ymm8_0 ymm10_0;
adds dc ymm8_1 ymm8_1 ymm10_1;
adds dc ymm8_2 ymm8_2 ymm10_2;
adds dc ymm8_3 ymm8_3 ymm10_3;
(* vpand  %ymm1,%ymm3,%ymm1                        #! PC = 0x55555559cc6a *)
mul ymm1_0 ymm3_0 ymm1_0;
mul ymm1_1 ymm3_1 ymm1_1;
mul ymm1_2 ymm3_2 ymm1_2;
mul ymm1_3 ymm3_3 ymm1_3;
(* vpermq $0xfa,%ymm0,%ymm10                       #! PC = 0x55555559cc6e *)
mov perm0 ymm0_2;
mov perm1 ymm0_2;
mov perm2 ymm0_3;
mov perm3 ymm0_3;
mov ymm10_0 perm0;
mov ymm10_1 perm1;
mov ymm10_2 perm2;
mov ymm10_3 perm3;
(* vpand  %ymm10,%ymm7,%ymm11                      #! PC = 0x55555559cc74 *)
mul ymm11_0 ymm7_0 ymm10_0;
mul ymm11_1 ymm7_1 ymm10_1;
mul ymm11_2 ymm7_2 ymm10_2;
mul ymm11_3 ymm7_3 ymm10_3;
(* vpxor  %ymm11,%ymm13,%ymm13                     #! PC = 0x55555559cc79 *)
adds dc ymm13_0 ymm13_0 ymm11_0;
adds dc ymm13_1 ymm13_1 ymm11_1;
adds dc ymm13_2 ymm13_2 ymm11_2;
adds dc ymm13_3 ymm13_3 ymm11_3;
(* vmovupd %ymm13,0xc0(%rcx)                       #! EA = L0x7ffffff40cc0; PC = 0x55555559cc7e *)
mov L0x7ffffff40cc0 ymm13_0;
mov L0x7ffffff40cc8 ymm13_1;
mov L0x7ffffff40cd0 ymm13_2;
mov L0x7ffffff40cd8 ymm13_3;
(* vpand  %ymm10,%ymm5,%ymm11                      #! PC = 0x55555559cc86 *)
mul ymm11_0 ymm5_0 ymm10_0;
mul ymm11_1 ymm5_1 ymm10_1;
mul ymm11_2 ymm5_2 ymm10_2;
mul ymm11_3 ymm5_3 ymm10_3;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555559cc8b *)
adds dc ymm6_0 ymm6_0 ymm11_0;
adds dc ymm6_1 ymm6_1 ymm11_1;
adds dc ymm6_2 ymm6_2 ymm11_2;
adds dc ymm6_3 ymm6_3 ymm11_3;
(* vpand  %ymm10,%ymm9,%ymm11                      #! PC = 0x55555559cc90 *)
mul ymm11_0 ymm9_0 ymm10_0;
mul ymm11_1 ymm9_1 ymm10_1;
mul ymm11_2 ymm9_2 ymm10_2;
mul ymm11_3 ymm9_3 ymm10_3;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555559cc95 *)
adds dc ymm2_0 ymm2_0 ymm11_0;
adds dc ymm2_1 ymm2_1 ymm11_1;
adds dc ymm2_2 ymm2_2 ymm11_2;
adds dc ymm2_3 ymm2_3 ymm11_3;
(* vpand  %ymm10,%ymm4,%ymm11                      #! PC = 0x55555559cc9a *)
mul ymm11_0 ymm4_0 ymm10_0;
mul ymm11_1 ymm4_1 ymm10_1;
mul ymm11_2 ymm4_2 ymm10_2;
mul ymm11_3 ymm4_3 ymm10_3;
(* vpxor  %ymm11,%ymm8,%ymm8                       #! PC = 0x55555559cc9f *)
adds dc ymm8_0 ymm8_0 ymm11_0;
adds dc ymm8_1 ymm8_1 ymm11_1;
adds dc ymm8_2 ymm8_2 ymm11_2;
adds dc ymm8_3 ymm8_3 ymm11_3;
(* vpand  %ymm10,%ymm12,%ymm11                     #! PC = 0x55555559cca4 *)
mul ymm11_0 ymm12_0 ymm10_0;
mul ymm11_1 ymm12_1 ymm10_1;
mul ymm11_2 ymm12_2 ymm10_2;
mul ymm11_3 ymm12_3 ymm10_3;
(* vpxor  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555559cca9 *)
adds dc ymm1_0 ymm1_0 ymm11_0;
adds dc ymm1_1 ymm1_1 ymm11_1;
adds dc ymm1_2 ymm1_2 ymm11_2;
adds dc ymm1_3 ymm1_3 ymm11_3;
(* vpand  %ymm10,%ymm3,%ymm10                      #! PC = 0x55555559ccae *)
mul ymm10_0 ymm3_0 ymm10_0;
mul ymm10_1 ymm3_1 ymm10_1;
mul ymm10_2 ymm3_2 ymm10_2;
mul ymm10_3 ymm3_3 ymm10_3;
(* vpermq $0x50,%ymm0,%ymm0                        #! PC = 0x55555559ccb3 *)
mov perm0 ymm0_0;
mov perm1 ymm0_0;
mov perm2 ymm0_1;
mov perm3 ymm0_1;
mov ymm0_0 perm0;
mov ymm0_1 perm1;
mov ymm0_2 perm2;
mov ymm0_3 perm3;
(* vpand  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555559ccb9 *)
mul ymm7_0 ymm7_0 ymm0_0;
mul ymm7_1 ymm7_1 ymm0_1;
mul ymm7_2 ymm7_2 ymm0_2;
mul ymm7_3 ymm7_3 ymm0_3;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555559ccbd *)
adds dc ymm6_0 ymm6_0 ymm7_0;
adds dc ymm6_1 ymm6_1 ymm7_1;
adds dc ymm6_2 ymm6_2 ymm7_2;
adds dc ymm6_3 ymm6_3 ymm7_3;
(* vmovupd %ymm6,0xa0(%rcx)                        #! EA = L0x7ffffff40ca0; PC = 0x55555559ccc1 *)
mov L0x7ffffff40ca0 ymm6_0;
mov L0x7ffffff40ca8 ymm6_1;
mov L0x7ffffff40cb0 ymm6_2;
mov L0x7ffffff40cb8 ymm6_3;
(* vpand  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555559ccc9 *)
mul ymm5_0 ymm5_0 ymm0_0;
mul ymm5_1 ymm5_1 ymm0_1;
mul ymm5_2 ymm5_2 ymm0_2;
mul ymm5_3 ymm5_3 ymm0_3;
(* vpxor  %ymm5,%ymm2,%ymm2                        #! PC = 0x55555559cccd *)
adds dc ymm2_0 ymm2_0 ymm5_0;
adds dc ymm2_1 ymm2_1 ymm5_1;
adds dc ymm2_2 ymm2_2 ymm5_2;
adds dc ymm2_3 ymm2_3 ymm5_3;
(* vpand  %ymm0,%ymm9,%ymm5                        #! PC = 0x55555559ccd1 *)
mul ymm5_0 ymm9_0 ymm0_0;
mul ymm5_1 ymm9_1 ymm0_1;
mul ymm5_2 ymm9_2 ymm0_2;
mul ymm5_3 ymm9_3 ymm0_3;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555559ccd5 *)
adds dc ymm8_0 ymm8_0 ymm5_0;
adds dc ymm8_1 ymm8_1 ymm5_1;
adds dc ymm8_2 ymm8_2 ymm5_2;
adds dc ymm8_3 ymm8_3 ymm5_3;
(* vpand  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555559ccd9 *)
mul ymm4_0 ymm4_0 ymm0_0;
mul ymm4_1 ymm4_1 ymm0_1;
mul ymm4_2 ymm4_2 ymm0_2;
mul ymm4_3 ymm4_3 ymm0_3;
(* vpxor  %ymm4,%ymm1,%ymm1                        #! PC = 0x55555559ccdd *)
adds dc ymm1_0 ymm1_0 ymm4_0;
adds dc ymm1_1 ymm1_1 ymm4_1;
adds dc ymm1_2 ymm1_2 ymm4_2;
adds dc ymm1_3 ymm1_3 ymm4_3;
(* vpand  %ymm0,%ymm12,%ymm4                       #! PC = 0x55555559cce1 *)
mul ymm4_0 ymm12_0 ymm0_0;
mul ymm4_1 ymm12_1 ymm0_1;
mul ymm4_2 ymm12_2 ymm0_2;
mul ymm4_3 ymm12_3 ymm0_3;
(* vpxor  %ymm4,%ymm10,%ymm10                      #! PC = 0x55555559cce5 *)
adds dc ymm10_0 ymm10_0 ymm4_0;
adds dc ymm10_1 ymm10_1 ymm4_1;
adds dc ymm10_2 ymm10_2 ymm4_2;
adds dc ymm10_3 ymm10_3 ymm4_3;
(* vpand  %ymm0,%ymm3,%ymm0                        #! PC = 0x55555559cce9 *)
mul ymm0_0 ymm3_0 ymm0_0;
mul ymm0_1 ymm3_1 ymm0_1;
mul ymm0_2 ymm3_2 ymm0_2;
mul ymm0_3 ymm3_3 ymm0_3;
(* vmovupd %ymm2,0x80(%rcx)                        #! EA = L0x7ffffff40c80; PC = 0x55555559cced *)
mov L0x7ffffff40c80 ymm2_0;
mov L0x7ffffff40c88 ymm2_1;
mov L0x7ffffff40c90 ymm2_2;
mov L0x7ffffff40c98 ymm2_3;
(* vmovupd %ymm8,0x60(%rcx)                        #! EA = L0x7ffffff40c60; PC = 0x55555559ccf5 *)
mov L0x7ffffff40c60 ymm8_0;
mov L0x7ffffff40c68 ymm8_1;
mov L0x7ffffff40c70 ymm8_2;
mov L0x7ffffff40c78 ymm8_3;
(* vmovupd %ymm1,0x40(%rcx)                        #! EA = L0x7ffffff40c40; PC = 0x55555559ccfa *)
mov L0x7ffffff40c40 ymm1_0;
mov L0x7ffffff40c48 ymm1_1;
mov L0x7ffffff40c50 ymm1_2;
mov L0x7ffffff40c58 ymm1_3;
(* vmovupd %ymm10,0x20(%rcx)                       #! EA = L0x7ffffff40c20; PC = 0x55555559ccff *)
mov L0x7ffffff40c20 ymm10_0;
mov L0x7ffffff40c28 ymm10_1;
mov L0x7ffffff40c30 ymm10_2;
mov L0x7ffffff40c38 ymm10_3;
(* vmovupd %ymm0,(%rcx)                            #! EA = L0x7ffffff40c00; PC = 0x55555559cd04 *)
mov L0x7ffffff40c00 ymm0_0;
mov L0x7ffffff40c08 ymm0_1;
mov L0x7ffffff40c10 ymm0_2;
mov L0x7ffffff40c18 ymm0_3;
(* mov    0x158(%rcx),%rsi                         #! EA = L0x7ffffff40d58; Value = 0x780401e00330c000; PC = 0x55555559cd08 *)
mov rsi L0x7ffffff40d58;
(* mov    %rsi,%rdx                                #! PC = 0x55555559cd0f *)
mov rdx rsi;
(* mov    %rsi,%rsi                                #! PC = 0x55555559cd12 *)
mov rsi rsi;
(* mov    0x150(%rcx),%r8                          #! EA = L0x7ffffff40d50; Value = 0x404751e80438e400; PC = 0x55555559cd15 *)
mov r8 L0x7ffffff40d50;
(* xor    0x148(%rcx),%r8                          #! EA = L0x7ffffff40d48; Value = 0x5c38030030104000; PC = 0x55555559cd1c *)
adds dc r8 r8 L0x7ffffff40d48;
(* mov    %r8,%r9                                  #! PC = 0x55555559cd23 *)
mov r9 r8;
(* mov    %r8,%r8                                  #! PC = 0x55555559cd26 *)
mov r8 r8;
(* mov    0x138(%rcx),%rax                         #! EA = L0x7ffffff40d38; Value = 0x8c54502061900400; PC = 0x55555559cd29 *)
mov rax L0x7ffffff40d38;
(* xor    0x140(%rcx),%rax                         #! EA = L0x7ffffff40d40; Value = 0x40c8330400185400; PC = 0x55555559cd30 *)
adds dc rax rax L0x7ffffff40d40;
(* mov    %rax,%r10                                #! PC = 0x55555559cd37 *)
mov r10 rax;
(* mov    %rax,%rax                                #! PC = 0x55555559cd3a *)
mov rax rax;
(* mov    0x130(%rcx),%r11                         #! EA = L0x7ffffff40d30; Value = 0xc88674cb479b2c00; PC = 0x55555559cd3d *)
mov r11 L0x7ffffff40d30;
(* xor    0x128(%rcx),%r11                         #! EA = L0x7ffffff40d28; Value = 0x51c4328073104400; PC = 0x55555559cd44 *)
adds dc r11 r11 L0x7ffffff40d28;
(* xor    %r11,%rsi                                #! PC = 0x55555559cd4b *)
adds dc rsi rsi r11;
(* mov    %r11,%r11                                #! PC = 0x55555559cd4e *)
mov r11 r11;
(* mov    0x118(%rcx),%r12                         #! EA = L0x7ffffff40d18; Value = 0xbcc3634bd5b3cc00; PC = 0x55555559cd51 *)
mov r12 L0x7ffffff40d18;
(* xor    0x120(%rcx),%r12                         #! EA = L0x7ffffff40d20; Value = 0x0df7d6874c1d6e00; PC = 0x55555559cd58 *)
adds dc r12 r12 L0x7ffffff40d20;
(* xor    %r12,%r8                                 #! PC = 0x55555559cd5f *)
adds dc r8 r8 r12;
(* mov    %r12,%r12                                #! PC = 0x55555559cd62 *)
mov r12 r12;
(* mov    0x110(%rcx),%r13                         #! EA = L0x7ffffff40d10; Value = 0x3496be83ce0011c0; PC = 0x55555559cd65 *)
mov r13 L0x7ffffff40d10;
(* xor    0x108(%rcx),%r13                         #! EA = L0x7ffffff40d08; Value = 0xc43ce17721b14c00; PC = 0x55555559cd6c *)
adds dc r13 r13 L0x7ffffff40d08;
(* xor    %r13,%rax                                #! PC = 0x55555559cd73 *)
adds dc rax rax r13;
(* mov    %r13,%r13                                #! PC = 0x55555559cd76 *)
mov r13 r13;
(* mov    0xf8(%rcx),%r14                          #! EA = L0x7ffffff40cf8; Value = 0x307ac6b816d800c0; PC = 0x55555559cd79 *)
mov r14 L0x7ffffff40cf8;
(* xor    0x100(%rcx),%r14                         #! EA = L0x7ffffff40d00; Value = 0x9d77c6fa0fa22f80; PC = 0x55555559cd80 *)
adds dc r14 r14 L0x7ffffff40d00;
(* xor    %r14,%r11                                #! PC = 0x55555559cd87 *)
adds dc r11 r11 r14;
(* mov    %r14,%r14                                #! PC = 0x55555559cd8a *)
mov r14 r14;
(* mov    0xf0(%rcx),%r15                          #! EA = L0x7ffffff40cf0; Value = 0xb81b03d84875ea30; PC = 0x55555559cd8d *)
mov r15 L0x7ffffff40cf0;
(* xor    0xe8(%rcx),%r15                          #! EA = L0x7ffffff40ce8; Value = 0x4d6fd485be8a4c80; PC = 0x55555559cd94 *)
adds dc r15 r15 L0x7ffffff40ce8;
(* xor    %r15,%r12                                #! PC = 0x55555559cd9b *)
adds dc r12 r12 r15;
(* mov    %r15,%r15                                #! PC = 0x55555559cd9e *)
mov r15 r15;
(* mov    0xd8(%rcx),%rbx                          #! EA = L0x7ffffff40cd8; Value = 0x25462bd89f02e800; PC = 0x55555559cda1 *)
mov rbx L0x7ffffff40cd8;
(* xor    0xe0(%rcx),%rbx                          #! EA = L0x7ffffff40ce0; Value = 0x89b2b971fe067570; PC = 0x55555559cda8 *)
adds dc rbx rbx L0x7ffffff40ce0;
(* xor    %rbx,%r13                                #! PC = 0x55555559cdaf *)
adds dc r13 r13 rbx;
(* mov    %rbx,%rbx                                #! PC = 0x55555559cdb2 *)
mov rbx rbx;
(* xor    0xd0(%rcx),%rdx                          #! EA = L0x7ffffff40cd0; Value = 0x41b5fde620e20d38; PC = 0x55555559cdb5 *)
adds dc rdx rdx L0x7ffffff40cd0;
(* xor    0xc8(%rcx),%rdx                          #! EA = L0x7ffffff40cc8; Value = 0x0fe3405c7fb7d440; PC = 0x55555559cdbc *)
adds dc rdx rdx L0x7ffffff40cc8;
(* xor    %rdx,%r14                                #! PC = 0x55555559cdc3 *)
adds dc r14 r14 rdx;
(* mov    %rdx,%rdx                                #! PC = 0x55555559cdc6 *)
mov rdx rdx;
(* xor    0xb8(%rcx),%r9                           #! EA = L0x7ffffff40cb8; Value = 0xd7dc5911ad8acc08; PC = 0x55555559cdc9 *)
adds dc r9 r9 L0x7ffffff40cb8;
(* xor    0xc0(%rcx),%r9                           #! EA = L0x7ffffff40cc0; Value = 0x0be2d4ad0714fbb8; PC = 0x55555559cdd0 *)
adds dc r9 r9 L0x7ffffff40cc0;
(* xor    %r9,%r15                                 #! PC = 0x55555559cdd7 *)
adds dc r15 r15 r9;
(* mov    %r9,%r9                                  #! PC = 0x55555559cdda *)
mov r9 r9;
(* xor    0xb0(%rcx),%r10                          #! EA = L0x7ffffff40cb0; Value = 0x0a26b978779419b1; PC = 0x55555559cddd *)
adds dc r10 r10 L0x7ffffff40cb0;
(* xor    0xa8(%rcx),%r10                          #! EA = L0x7ffffff40ca8; Value = 0xfd1eca165cee3888; PC = 0x55555559cde4 *)
adds dc r10 r10 L0x7ffffff40ca8;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7ffffff412d8; PC = 0x55555559cdeb *)
mov L0x7ffffff412d8 r10;
(* xor    0x98(%rcx),%rsi                          #! EA = L0x7ffffff40c98; Value = 0x67fb0736344e3880; PC = 0x55555559cdef *)
adds dc rsi rsi L0x7ffffff40c98;
(* xor    0xa0(%rcx),%rsi                          #! EA = L0x7ffffff40ca0; Value = 0xd6c30a41ea4d2462; PC = 0x55555559cdf6 *)
adds dc rsi rsi L0x7ffffff40ca0;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7ffffff412d0; PC = 0x55555559cdfd *)
mov L0x7ffffff412d0 rsi;
(* xor    0x90(%rcx),%r8                           #! EA = L0x7ffffff40c90; Value = 0xe8532c9eeec9ea80; PC = 0x55555559ce01 *)
adds dc r8 r8 L0x7ffffff40c90;
(* xor    0x88(%rcx),%r8                           #! EA = L0x7ffffff40c88; Value = 0xfded8c153b4e4440; PC = 0x55555559ce08 *)
adds dc r8 r8 L0x7ffffff40c88;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7ffffff412c8; PC = 0x55555559ce0f *)
mov L0x7ffffff412c8 r8;
(* xor    0x78(%rcx),%rax                          #! EA = L0x7ffffff40c78; Value = 0x63a83f3be807d880; PC = 0x55555559ce13 *)
adds dc rax rax L0x7ffffff40c78;
(* xor    0x80(%rcx),%rax                          #! EA = L0x7ffffff40c80; Value = 0xc13a601595a3c28c; PC = 0x55555559ce17 *)
adds dc rax rax L0x7ffffff40c80;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7ffffff412c0; PC = 0x55555559ce1e *)
mov L0x7ffffff412c0 rax;
(* xor    0x70(%rcx),%r11                          #! EA = L0x7ffffff40c70; Value = 0x41cc88b6354eff07; PC = 0x55555559ce22 *)
adds dc r11 r11 L0x7ffffff40c70;
(* xor    0x68(%rcx),%r11                          #! EA = L0x7ffffff40c68; Value = 0xa4c42516b775408c; PC = 0x55555559ce26 *)
adds dc r11 r11 L0x7ffffff40c68;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7ffffff412b8; PC = 0x55555559ce2a *)
mov L0x7ffffff412b8 r11;
(* xor    0x58(%rcx),%r12                          #! EA = L0x7ffffff40c58; Value = 0x3354311b56bc2c04; PC = 0x55555559ce2e *)
adds dc r12 r12 L0x7ffffff40c58;
(* xor    0x60(%rcx),%r12                          #! EA = L0x7ffffff40c60; Value = 0xf2e39091a4068f84; PC = 0x55555559ce32 *)
adds dc r12 r12 L0x7ffffff40c60;
(* mov    %r12,0x30(%rdi)                          #! EA = L0x7ffffff412b0; PC = 0x55555559ce36 *)
mov L0x7ffffff412b0 r12;
(* xor    0x50(%rcx),%r13                          #! EA = L0x7ffffff40c50; Value = 0x63ce04ff9f8312c7; PC = 0x55555559ce3a *)
adds dc r13 r13 L0x7ffffff40c50;
(* xor    0x48(%rcx),%r13                          #! EA = L0x7ffffff40c48; Value = 0xed34342b4a947c84; PC = 0x55555559ce3e *)
adds dc r13 r13 L0x7ffffff40c48;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7ffffff412a8; PC = 0x55555559ce42 *)
mov L0x7ffffff412a8 r13;
(* xor    0x38(%rcx),%r14                          #! EA = L0x7ffffff40c38; Value = 0x238a092c0710c0c4; PC = 0x55555559ce46 *)
adds dc r14 r14 L0x7ffffff40c38;
(* xor    0x40(%rcx),%r14                          #! EA = L0x7ffffff40c40; Value = 0x9106dc5ac2f1422d; PC = 0x55555559ce4a *)
adds dc r14 r14 L0x7ffffff40c40;
(* mov    %r14,0x20(%rdi)                          #! EA = L0x7ffffff412a0; PC = 0x55555559ce4e *)
mov L0x7ffffff412a0 r14;
(* xor    0x30(%rcx),%r15                          #! EA = L0x7ffffff40c30; Value = 0x13467c1388b0e035; PC = 0x55555559ce52 *)
adds dc r15 r15 L0x7ffffff40c30;
(* xor    0x28(%rcx),%r15                          #! EA = L0x7ffffff40c28; Value = 0x142106183230400c; PC = 0x55555559ce56 *)
adds dc r15 r15 L0x7ffffff40c28;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7ffffff41298; PC = 0x55555559ce5a *)
mov L0x7ffffff41298 r15;
(* xor    0x18(%rcx),%rbx                          #! EA = L0x7ffffff40c18; Value = 0x3ace0c001c000004; PC = 0x55555559ce5e *)
adds dc rbx rbx L0x7ffffff40c18;
(* xor    0x20(%rcx),%rbx                          #! EA = L0x7ffffff40c20; Value = 0xf04df823f8907002; PC = 0x55555559ce62 *)
adds dc rbx rbx L0x7ffffff40c20;
(* mov    %rbx,0x10(%rdi)                          #! EA = L0x7ffffff41290; PC = 0x55555559ce66 *)
mov L0x7ffffff41290 rbx;
(* xor    0x10(%rcx),%rdx                          #! EA = L0x7ffffff40c10; Value = 0x32ce00205c100003; PC = 0x55555559ce6a *)
adds dc rdx rdx L0x7ffffff40c10;
(* xor    0x8(%rcx),%rdx                           #! EA = L0x7ffffff40c08; Value = 0x224e08001800c000; PC = 0x55555559ce6e *)
adds dc rdx rdx L0x7ffffff40c08;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7ffffff41288; PC = 0x55555559ce72 *)
mov L0x7ffffff41288 rdx;
(* xor    (%rcx),%r9                               #! EA = L0x7ffffff40c00; Value = 0x224e80105830c001; PC = 0x55555559ce76 *)
adds dc r9 r9 L0x7ffffff40c00;
(* mov    %r9,(%rdi)                               #! EA = L0x7ffffff41280; PC = 0x55555559ce79 *)
mov L0x7ffffff41280 r9;
(* #mov    0x260(%rsp),%r11                         #! EA = L0x7ffffff40e60; Value = 0x00000000000002b8; PC = 0x55555559ce7c *)
#mov    0x260(%rsp),%%r11                         #! L0x7ffffff40e60 = L0x7ffffff40e60; 0x00000000000002b8 = 0x00000000000002b8; 0x55555559ce7c = 0x55555559ce7c;
(* #mov    0x268(%rsp),%r12                         #! EA = L0x7ffffff40e68; Value = 0x00007ffffff412e0; PC = 0x55555559ce84 *)
#mov    0x268(%rsp),%%r12                         #! L0x7ffffff40e68 = L0x7ffffff40e68; 0x00007ffffff412e0 = 0x00007ffffff412e0; 0x55555559ce84 = 0x55555559ce84;
(* #mov    0x270(%rsp),%r13                         #! EA = L0x7ffffff40e70; Value = 0x0000ffff00000000; PC = 0x55555559ce8c *)
#mov    0x270(%rsp),%%r13                         #! L0x7ffffff40e70 = L0x7ffffff40e70; 0x0000ffff00000000 = 0x0000ffff00000000; 0x55555559ce8c = 0x55555559ce8c;
(* #mov    0x278(%rsp),%r14                         #! EA = L0x7ffffff40e78; Value = 0x8888888888888888; PC = 0x55555559ce94 *)
#mov    0x278(%rsp),%%r14                         #! L0x7ffffff40e78 = L0x7ffffff40e78; 0x8888888888888888 = 0x8888888888888888; 0x55555559ce94 = 0x55555559ce94;
(* #mov    0x280(%rsp),%r15                         #! EA = L0x7ffffff40e80; Value = 0x2022222002002220; PC = 0x55555559ce9c *)
#mov    0x280(%rsp),%%r15                         #! L0x7ffffff40e80 = L0x7ffffff40e80; 0x2022222002002220 = 0x2022222002002220; 0x55555559ce9c = 0x55555559ce9c;
(* #mov    0x288(%rsp),%rbx                         #! EA = L0x7ffffff40e88; Value = 0x0000000000000001; PC = 0x55555559cea4 *)
#mov    0x288(%rsp),%%rbx                         #! L0x7ffffff40e88 = L0x7ffffff40e88; 0x0000000000000001 = 0x0000000000000001; 0x55555559cea4 = 0x55555559cea4;
(* #add    %r11,%rsp                                #! PC = 0x55555559ceac *)
#add    %%r11,%rsp                                #! 0x55555559ceac = 0x55555559ceac;
(* #! <- SP = 0x7ffffff40eb8 *)
#! 0x7ffffff40eb8 = 0x7ffffff40eb8;
(* #retq                                           #! PC = 0x55555559ceaf *)
#retq                                           #! 0x55555559ceaf = 0x55555559ceaf;

mov c00 L0x7ffffff41280;
mov c01 L0x7ffffff41288;
mov c02 L0x7ffffff41290;
mov c03 L0x7ffffff41298;
mov c04 L0x7ffffff412a0;
mov c05 L0x7ffffff412a8;
mov c06 L0x7ffffff412b0;
mov c07 L0x7ffffff412b8;
mov c08 L0x7ffffff412c0;
mov c09 L0x7ffffff412c8;
mov c10 L0x7ffffff412d0;
mov c11 L0x7ffffff412d8;

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

