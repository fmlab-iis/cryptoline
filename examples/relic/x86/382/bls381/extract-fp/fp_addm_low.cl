proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [b0, b1, b2, b3, b4, b5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}

mov L0x7fffffffde40 a0;
mov L0x7fffffffde48 a1;
mov L0x7fffffffde50 a2;
mov L0x7fffffffde58 a3;
mov L0x7fffffffde60 a4;
mov L0x7fffffffde68 a5;

mov L0x7fffffffde10 b0;
mov L0x7fffffffde18 b1;
mov L0x7fffffffde20 b2;
mov L0x7fffffffde28 b3;
mov L0x7fffffffde30 b4;
mov L0x7fffffffde38 b5;

mov L0x405030 0xb9feffffffffaaab@uint64;
mov L0x405038 0x1eabfffeb153ffff@uint64;
mov L0x405040 0x6730d2a0f6b0f624@uint64;
mov L0x405048 0x64774b84f38512bf@uint64;
mov L0x405050 0x4b1ba7b6434bacd7@uint64;
mov L0x405058 0x1a0111ea397fe69a@uint64;

(* push   %rbx                                     #! PC = 0x4198997 *)
/* push   %%rbx                                     #! 0x4198997 = 0x4198997; */
(* push   %rbp                                     #! PC = 0x4198998 *)
/* push   %%rbp                                     #! 0x4198998 = 0x4198998; */
(* push   %r12                                     #! PC = 0x4198999 *)
/* push   %%r12                                     #! 0x4198999 = 0x4198999; */
(* push   %r13                                     #! PC = 0x4199001 *)
/* push   %%r13                                     #! 0x4199001 = 0x4199001; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffde10; Value = 0x0000000000000001; PC = 0x4199003 *)
mov r8 L0x7fffffffde10;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4199006 *)
adds carry r8 r8 L0x7fffffffde40;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffde18; Value = 0x00007fffffffde90; PC = 0x4199009 *)
mov r9 L0x7fffffffde18;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4199013 *)
adcs carry r9 r9 L0x7fffffffde48 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffde20; Value = 0x00007ffff7ffe168; PC = 0x4199017 *)
mov r10 L0x7fffffffde20;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4199021 *)
adcs carry r10 r10 L0x7fffffffde50 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffde28; Value = 0x0000000000f0b5ff; PC = 0x4199025 *)
mov r11 L0x7fffffffde28;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4199029 *)
adcs carry r11 r11 L0x7fffffffde58 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde30; Value = 0x0000000000000001; PC = 0x4199033 *)
mov r12 L0x7fffffffde30;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4199037 *)
adcs carry r12 r12 L0x7fffffffde60 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde38; Value = 0x000000000040288d; PC = 0x4199041 *)
mov r13 L0x7fffffffde38;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4199045 *)
adcs carry r13 r13 L0x7fffffffde68 carry;

assert true && carry = 0@1;
assume carry = 0 && true;

(* mov    %r8,%rax                                 #! PC = 0x4199049 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4199052 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4199055 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4199058 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4199061 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4199064 *)
mov rbp r13;
(* sub    0x3d8e(%rip),%rax        # 0x405030      #! EA = L0x405030; Value = 0xb9feffffffffaaab; PC = 0x4199067 *)
subb carry rax rax L0x405030;
(* sbb    0x3d8f(%rip),%rcx        # 0x405038      #! EA = L0x405038; Value = 0x1eabfffeb153ffff; PC = 0x4199074 *)
sbbs carry rcx rcx L0x405038 carry;
(* sbb    0x3d90(%rip),%rdx        # 0x405040      #! EA = L0x405040; Value = 0x6730d2a0f6b0f624; PC = 0x4199081 *)
sbbs carry rdx rdx L0x405040 carry;
(* sbb    0x3d91(%rip),%rsi        # 0x405048      #! EA = L0x405048; Value = 0x64774b84f38512bf; PC = 0x4199088 *)
sbbs carry rsi rsi L0x405048 carry;
(* sbb    0x3d92(%rip),%rbx        # 0x405050      #! EA = L0x405050; Value = 0x4b1ba7b6434bacd7; PC = 0x4199095 *)
sbbs carry rbx rbx L0x405050 carry;
(* sbb    0x3d93(%rip),%rbp        # 0x405058      #! EA = L0x405058; Value = 0x1a0111ea397fe69a; PC = 0x4199102 *)
sbbs carry rbp rbp L0x405058 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4199109 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4199113 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4199117 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4199121 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4199125 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4199129 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdde0; PC = 0x4199133 *)
mov L0x7fffffffdde0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdde8; PC = 0x4199136 *)
mov L0x7fffffffdde8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffddf0; PC = 0x4199140 *)
mov L0x7fffffffddf0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffddf8; PC = 0x4199144 *)
mov L0x7fffffffddf8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffde00; PC = 0x4199148 *)
mov L0x7fffffffde00 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffde08; PC = 0x4199152 *)
mov L0x7fffffffde08 r13;
(* pop    %r13                                     #! PC = 0x4199156 *)
/* pop    %%r13                                     #! 0x4199156 = 0x4199156; */
(* pop    %r12                                     #! PC = 0x4199158 *)
/* pop    %%r12                                     #! 0x4199158 = 0x4199158; */
(* pop    %rbp                                     #! PC = 0x4199160 *)
/* pop    %%rbp                                     #! 0x4199160 = 0x4199160; */
(* pop    %rbx                                     #! PC = 0x4199161 *)
/* pop    %%rbx                                     #! 0x4199161 = 0x4199161; */
(* #retq                                           #! PC = 0x4199162 *)
/* #retq                                           #! 0x4199162 = 0x4199162; */

mov r0 L0x7fffffffdde0;
mov r1 L0x7fffffffdde8;
mov r2 L0x7fffffffddf0;
mov r3 L0x7fffffffddf8;
mov r4 L0x7fffffffde00;
mov r5 L0x7fffffffde08;

{
  eqmod (limbs 64 [r0, r1, r2, r3, r4, r5])
        (limbs 64 [a0, a1, a2, a3, a4, a5] +
         limbs 64 [b0, b1, b2, b3, b4, b5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  limbs 64 [r0, r1, r2, r3, r4, r5] <
  limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
  0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
  0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
}
