proc main (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
             uint64 b1_0, uint64 b1_1, uint64 b1_2, uint64 b1_3, uint64 b1_4, uint64 b1_5,
             uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5,
             uint64 b2_0, uint64 b2_1, uint64 b2_2, uint64 b2_3, uint64 b2_4, uint64 b2_5) =
{
  true
&&
  and [
    limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [b2_0, b2_1, b2_2, b2_3, b2_4, b2_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]

  ]
}

mov L0x7fffffffde40 a1_0;
mov L0x7fffffffde48 a1_1;
mov L0x7fffffffde50 a1_2;
mov L0x7fffffffde58 a1_3;
mov L0x7fffffffde60 a1_4;
mov L0x7fffffffde68 a1_5;

mov L0x7fffffffde10 a2_0;
mov L0x7fffffffde18 a2_1;
mov L0x7fffffffde20 a2_2;
mov L0x7fffffffde28 a2_3;
mov L0x7fffffffde30 a2_4;
mov L0x7fffffffde38 a2_5;


mov L0x7fffffffdde0 b1_0;
mov L0x7fffffffdde8 b1_1;
mov L0x7fffffffddf0 b1_2;
mov L0x7fffffffddf8 b1_3;
mov L0x7fffffffde00 b1_4;
mov L0x7fffffffde08 b1_5;

mov L0x7fffffffddb0 b2_0;
mov L0x7fffffffddb8 b2_1;
mov L0x7fffffffddc0 b2_2;
mov L0x7fffffffddc8 b2_3;
mov L0x7fffffffddd0 b2_4;
mov L0x7fffffffddd8 b2_5;

mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_sub_integ: *)
/* fp2_sub_integ:; */
(* #jmpq   0x415630 <fp2_subm_low>                 #! PC = 0x4211008 *)
#jmpq   0x415630 <fp2_subm_low>                 #! 0x4211008 = 0x4211008;
(* push   %r12                                     #! PC = 0x4281904 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4281906 *)
/* push rbp; */
(* mov    %rdx,%r12                                #! PC = 0x4281907 *)
/* mov r12 rdx; */
(* push   %rbx                                     #! PC = 0x4281910 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4281911 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4281914 *)
/* mov rbx rdi; */
(* #callq  0x418282 <fp_subm_low>                  #! PC = 0x4281917 *)
#callq  0x418282 <fp_subm_low>                  #! 0x4281917 = 0x4281917;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x61af70d625ae41dc; PC = 0x4293256 *)
mov r8 L0x7fffffffde10;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffddb0; Value = 0x6554f03fa676ebc2; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffddb0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd50; PC = 0x4293262 *)
mov L0x7fffffffdd50 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde18; Value = 0xb5028de6c3f873ae; PC = 0x4293265 *)
mov r8 L0x7fffffffde18;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffddb8; Value = 0x671deefe5e9b6ee0; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffddb8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdd58; PC = 0x4293273 *)
mov L0x7fffffffdd58 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde20; Value = 0x321478394dd04c39; PC = 0x4293277 *)
mov r8 L0x7fffffffde20;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffddc0; Value = 0x90417a044420b036; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffddc0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd60; PC = 0x4293285 *)
mov L0x7fffffffdd60 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde28; Value = 0xf479c47ee7c81292; PC = 0x4293289 *)
mov r8 L0x7fffffffde28;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffddc8; Value = 0x043e0b1855e71450; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffddc8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdd68; PC = 0x4293297 *)
mov L0x7fffffffdd68 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde30; Value = 0x02618ad44aec0f93; PC = 0x4293301 *)
mov r8 L0x7fffffffde30;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffddd0; Value = 0xcd6353a76ada3a27; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffddd0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdd70; PC = 0x4293309 *)
mov L0x7fffffffdd70 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde38; Value = 0x02a6618448a16259; PC = 0x4293313 *)
mov r8 L0x7fffffffde38;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffddd8; Value = 0x0725bf73124b9a62; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffddd8 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdd78; PC = 0x4293321 *)
mov L0x7fffffffdd78 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4293325 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4293332 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4293339 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4293346 *)
mov r11 0x0@uint64;
(* cmovb  0x53ddf(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4293353 *)
cmov rax carry L0x46c0d0 rax;
(* cmovb  0x53ddf(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4293361 *)
cmov rcx carry L0x46c0d8 rcx;
(* cmovb  0x53ddf(%rip),%r8        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4293369 *)
cmov r8 carry L0x46c0e0 r8;
(* cmovb  0x53ddf(%rip),%r9        # 0x46c0e8      #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4293377 *)
cmov r9 carry L0x46c0e8 r9;
(* cmovb  0x53ddf(%rip),%r10        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4293385 *)
cmov r10 carry L0x46c0f0 r10;
(* cmovb  0x53ddf(%rip),%r11        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4293393 *)
cmov r11 carry L0x46c0f8 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdd50; PC = 0x4293401 *)
adds carry L0x7fffffffdd50 L0x7fffffffdd50 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdd58; PC = 0x4293404 *)
adcs carry L0x7fffffffdd58 L0x7fffffffdd58 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd60; PC = 0x4293408 *)
adcs carry L0x7fffffffdd60 L0x7fffffffdd60 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdd68; PC = 0x4293412 *)
adcs carry L0x7fffffffdd68 L0x7fffffffdd68 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4293416 *)
adcs carry L0x7fffffffdd70 L0x7fffffffdd70 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4293420 *)
adcs carry L0x7fffffffdd78 L0x7fffffffdd78 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;

(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;
(* lea    0x30(%r12),%rdx                          #! PC = 0x4281922 *)
/* lea    %%EA,%%rdx                          #! 0x4281922 = 0x4281922; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4281927 *)
/* lea    %%EA,%%rsi                          #! 0x4281927 = 0x4281927; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4281931 *)
/* lea    %%EA,%%rdi                          #! 0x4281931 = 0x4281931; */
(* pop    %rbx                                     #! PC = 0x4281935 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4281936 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4281937 *)
/* pop r12; */
(* #jmpq   0x418282 <fp_subm_low>                  #! PC = 0x4281939 *)
#jmpq   0x418282 <fp_subm_low>                  #! 0x4281939 = 0x4281939;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x1532f0df3f146daa; PC = 0x4293256 *)
mov r8 L0x7fffffffde40;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdde0; Value = 0x7f3db5a828e80302; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffdde0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd80; PC = 0x4293262 *)
mov L0x7fffffffdd80 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde48; Value = 0x999646578ba5a4d3; PC = 0x4293265 *)
mov r8 L0x7fffffffde48;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffdde8; Value = 0x084debd1084a79b1; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffdde8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdd88; PC = 0x4293273 *)
mov L0x7fffffffdd88 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde50; Value = 0x5c1786ddd135d9bf; PC = 0x4293277 *)
mov r8 L0x7fffffffde50;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffddf0; Value = 0xa84f4f5449ae9de8; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffddf0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd90; PC = 0x4293285 *)
mov L0x7fffffffdd90 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde58; Value = 0x8d49bdb61b783d36; PC = 0x4293289 *)
mov r8 L0x7fffffffde58;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffddf8; Value = 0x0be1e75c11a8b49b; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffddf8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdd98; PC = 0x4293297 *)
mov L0x7fffffffdd98 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde60; Value = 0x6c8876daa6495909; PC = 0x4293301 *)
mov r8 L0x7fffffffde60;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffde00; Value = 0x552536a997c4efa4; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffde00 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdda0; PC = 0x4293309 *)
mov L0x7fffffffdda0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde68; Value = 0x080b1a7f7b9dc094; PC = 0x4293313 *)
mov r8 L0x7fffffffde68;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffde08; Value = 0x0ed1baf42e741570; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffde08 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdda8; PC = 0x4293321 *)
mov L0x7fffffffdda8 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4293325 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4293332 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4293339 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4293346 *)
mov r11 0x0@uint64;
(* cmovb  0x53ddf(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4293353 *)
cmov rax carry L0x46c0d0 rax;
(* cmovb  0x53ddf(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4293361 *)
cmov rcx carry L0x46c0d8 rcx;
(* cmovb  0x53ddf(%rip),%r8        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4293369 *)
cmov r8 carry L0x46c0e0 r8;
(* cmovb  0x53ddf(%rip),%r9        # 0x46c0e8      #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4293377 *)
cmov r9 carry L0x46c0e8 r9;
(* cmovb  0x53ddf(%rip),%r10        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4293385 *)
cmov r10 carry L0x46c0f0 r10;
(* cmovb  0x53ddf(%rip),%r11        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4293393 *)
cmov r11 carry L0x46c0f8 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdd80; PC = 0x4293401 *)
adds carry L0x7fffffffdd80 L0x7fffffffdd80 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdd88; PC = 0x4293404 *)
adcs carry L0x7fffffffdd88 L0x7fffffffdd88 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdd90; PC = 0x4293408 *)
adcs carry L0x7fffffffdd90 L0x7fffffffdd90 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdd98; PC = 0x4293412 *)
adcs carry L0x7fffffffdd98 L0x7fffffffdd98 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4293416 *)
adcs carry L0x7fffffffdda0 L0x7fffffffdda0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4293420 *)
adcs carry L0x7fffffffdda8 L0x7fffffffdda8 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;
(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;

mov r1_0 L0x7fffffffdd80;
mov r1_1 L0x7fffffffdd88;
mov r1_2 L0x7fffffffdd90;
mov r1_3 L0x7fffffffdd98;
mov r1_4 L0x7fffffffdda0;
mov r1_5 L0x7fffffffdda8;

mov r2_0 L0x7fffffffdd50;
mov r2_1 L0x7fffffffdd58;
mov r2_2 L0x7fffffffdd60;
mov r2_3 L0x7fffffffdd68;
mov r2_4 L0x7fffffffdd70;
mov r2_5 L0x7fffffffdd78;

{
  and [
      eqmod (limbs 64 [r1_0, r1_1, r1_2, r1_3, r1_4, r1_5])
      (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] -
      limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5])
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5])
      (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] -
      limbs 64 [b2_0, b2_1, b2_2, b2_3, b2_4, b2_5])
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])

         ]
  &&
  and [
      limbs 64 [r1_0, r1_1, r1_2, r1_3, r1_4, r1_5] <
      limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
      0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
      0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
      limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5] <
      limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
      0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
      0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]

  ]
}
