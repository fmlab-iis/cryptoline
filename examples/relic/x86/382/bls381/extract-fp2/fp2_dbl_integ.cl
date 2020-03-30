proc main (uint64 a1_0, uint64 a1_1, uint64 a1_2, uint64 a1_3, uint64 a1_4, uint64 a1_5,
           uint64 a2_0, uint64 a2_1, uint64 a2_2, uint64 a2_3, uint64 a2_4, uint64 a2_5) =
{
  true
&&
  and [
    limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] <
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

mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_dbl_integ: *)
/* fp2_dbl_integ:; */
(* #jmpq   0x415710 <fp2_dblm_low>                 #! PC = 0x4211024 *)
#jmpq   0x415710 <fp2_dblm_low>                 #! 0x4211024 = 0x4211024;
(* push   %rbp                                     #! PC = 0x4282128 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4282129 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4282130 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4282133 *)
/* mov rbx rdi; */
(* sub    $0x8,%rsp                                #! PC = 0x4282136 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x418566 <fp_dblm_low>                  #! PC = 0x4282140 *)
#callq  0x418566 <fp_dblm_low>                  #! 0x4282140 = 0x4282140;
(* push   %rbx                                     #! PC = 0x4293990 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4293991 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4293992 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4293994 *)
/* push r13; */
(* xor    %rax,%rax                                #! PC = 0x4293996 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293999 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4294002 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x218e66fb99ccde4d; PC = 0x4294005 *)
mov r8 L0x7fffffffde10;
(* add    %r8,%r8                                  #! PC = 0x4294008 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0x967f68357ef55c75; PC = 0x4294011 *)
mov r9 L0x7fffffffde18;
(* adc    %r9,%r9                                  #! PC = 0x4294015 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0xeaab249ff402b964; PC = 0x4294018 *)
mov r10 L0x7fffffffde20;
(* adc    %r10,%r10                                #! PC = 0x4294022 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xaebb22f2e66ff00d; PC = 0x4294025 *)
mov r11 L0x7fffffffde28;
(* adc    %r11,%r11                                #! PC = 0x4294029 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xabdd9fc5bd1d03d5; PC = 0x4294032 *)
mov r12 L0x7fffffffde30;
(* adc    %r12,%r12                                #! PC = 0x4294036 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x12497b59b1d01b77; PC = 0x4294039 *)
mov r13 L0x7fffffffde38;
(* adc    %r13,%r13                                #! PC = 0x4294043 *)
adc r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4294046 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4294049 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4294052 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4294055 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4294058 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4294061 *)
mov rbp r13;
(* sub    0x53b19(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4294064 *)
subb carry rax rax L0x46c0d0;
(* sbb    0x53b1a(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4294071 *)
sbbs carry rcx rcx L0x46c0d8 carry;
(* sbb    0x53b1b(%rip),%rdx        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4294078 *)
sbbs carry rdx rdx L0x46c0e0 carry;
(* sbb    0x53b1c(%rip),%rsi        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4294085 *)
sbbs carry rsi rsi L0x46c0e8 carry;
(* sbb    0x53b1d(%rip),%rbx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4294092 *)
sbbs carry rbx rbx L0x46c0f0 carry;
(* sbb    0x53b1e(%rip),%rbp        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4294099 *)
sbbs carry rbp rbp L0x46c0f8 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4294106 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4294110 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4294114 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4294118 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4294122 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4294126 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd50; PC = 0x4294130 *)
mov L0x7fffffffdd50 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd58; PC = 0x4294133 *)
mov L0x7fffffffdd58 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd60; PC = 0x4294137 *)
mov L0x7fffffffdd60 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd68; PC = 0x4294141 *)
mov L0x7fffffffdd68 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4294145 *)
mov L0x7fffffffdd70 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4294149 *)
mov L0x7fffffffdd78 r13;
(* xor    %rax,%rax                                #! PC = 0x4294153 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4294156 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4294158 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4294160 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4294161 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4294162 *)
#retq                                           #! 0x4294162 = 0x4294162;
(* add    $0x8,%rsp                                #! PC = 0x4282145 *)
/* adds carry rsp rsp 0x8; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4282149 *)
/* lea    %%EA,%%rsi                          #! 0x4282149 = 0x4282149; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4282153 *)
/* lea    %%EA,%%rdi                          #! 0x4282153 = 0x4282153; */
(* pop    %rbx                                     #! PC = 0x4282157 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4282158 *)
/* pop rbp; */
(* #jmpq   0x418566 <fp_dblm_low>                  #! PC = 0x4282159 *)
#jmpq   0x418566 <fp_dblm_low>                  #! 0x4282159 = 0x4282159;
(* push   %rbx                                     #! PC = 0x4293990 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4293991 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4293992 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4293994 *)
/* push r13; */
(* xor    %rax,%rax                                #! PC = 0x4293996 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293999 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4294002 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0xf841ac9defb5a4eb; PC = 0x4294005 *)
mov r8 L0x7fffffffde40;
(* add    %r8,%r8                                  #! PC = 0x4294008 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde48; Value = 0x037fbce7fc1d6b89; PC = 0x4294011 *)
mov r9 L0x7fffffffde48;
(* adc    %r9,%r9                                  #! PC = 0x4294015 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde50; Value = 0x676f4b9ddf9dc687; PC = 0x4294018 *)
mov r10 L0x7fffffffde50;
(* adc    %r10,%r10                                #! PC = 0x4294022 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde58; Value = 0xb473fb2fae837f82; PC = 0x4294025 *)
mov r11 L0x7fffffffde58;
(* adc    %r11,%r11                                #! PC = 0x4294029 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde60; Value = 0xcaca76383ee0e1b2; PC = 0x4294032 *)
mov r12 L0x7fffffffde60;
(* adc    %r12,%r12                                #! PC = 0x4294036 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde68; Value = 0x0ae0f776a021746d; PC = 0x4294039 *)
mov r13 L0x7fffffffde68;
(* adc    %r13,%r13                                #! PC = 0x4294043 *)
adc r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4294046 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4294049 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4294052 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4294055 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4294058 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4294061 *)
mov rbp r13;
(* sub    0x53b19(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4294064 *)
subb carry rax rax L0x46c0d0;
(* sbb    0x53b1a(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4294071 *)
sbbs carry rcx rcx L0x46c0d8 carry;
(* sbb    0x53b1b(%rip),%rdx        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4294078 *)
sbbs carry rdx rdx L0x46c0e0 carry;
(* sbb    0x53b1c(%rip),%rsi        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4294085 *)
sbbs carry rsi rsi L0x46c0e8 carry;
(* sbb    0x53b1d(%rip),%rbx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4294092 *)
sbbs carry rbx rbx L0x46c0f0 carry;
(* sbb    0x53b1e(%rip),%rbp        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4294099 *)
sbbs carry rbp rbp L0x46c0f8 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4294106 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4294110 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4294114 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4294118 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4294122 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4294126 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd80; PC = 0x4294130 *)
mov L0x7fffffffdd80 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd88; PC = 0x4294133 *)
mov L0x7fffffffdd88 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x4294137 *)
mov L0x7fffffffdd90 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x4294141 *)
mov L0x7fffffffdd98 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4294145 *)
mov L0x7fffffffdda0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4294149 *)
mov L0x7fffffffdda8 r13;
(* xor    %rax,%rax                                #! PC = 0x4294153 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4294156 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4294158 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4294160 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4294161 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4294162 *)
#retq                                           #! 0x4294162 = 0x4294162;

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
      (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] * 2)
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5])
      (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] * 2)
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
