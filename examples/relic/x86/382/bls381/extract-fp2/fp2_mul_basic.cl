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

mov L0x7fffffffde10 a1_0;
mov L0x7fffffffde18 a1_1;
mov L0x7fffffffde20 a1_2;
mov L0x7fffffffde28 a1_3;
mov L0x7fffffffde30 a1_4;
mov L0x7fffffffde38 a1_5;

mov L0x7fffffffde40 a2_0;
mov L0x7fffffffde48 a2_1;
mov L0x7fffffffde50 a2_2;
mov L0x7fffffffde58 a2_3;
mov L0x7fffffffde60 a2_4;
mov L0x7fffffffde68 a2_5;


mov L0x7fffffffddb0 b1_0;
mov L0x7fffffffddb8 b1_1;
mov L0x7fffffffddc0 b1_2;
mov L0x7fffffffddc8 b1_3;
mov L0x7fffffffddd0 b1_4;
mov L0x7fffffffddd8 b1_5;

mov L0x7fffffffdde0 b2_0;
mov L0x7fffffffdde8 b2_1;
mov L0x7fffffffddf0 b2_2;
mov L0x7fffffffddf8 b2_3;
mov L0x7fffffffde00 b2_4;
mov L0x7fffffffde08 b2_5;


mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* push   %r14                                     #! PC = 0x4209792 *)
# push r14;
(* push   %r13                                     #! PC = 0x4209794 *)
/* push r13; */
(* lea    0x30(%rsi),%r13                          #! PC = 0x4209796 *)
/* lea    %%EA,%%r13                          #! 0x4209796 = 0x4209796; */
(* push   %r12                                     #! PC = 0x4209800 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4209802 *)
/* push rbp; */
(* mov    %rdx,%r12                                #! PC = 0x4209803 *)
/* mov r12 rdx; */
(* push   %rbx                                     #! PC = 0x4209806 *)
/* push rbx; */
(* mov    %rdi,%rbp                                #! PC = 0x4209807 *)
/* mov rbp rdi; */
(* lea    0x30(%r12),%r14                          #! PC = 0x4209810 *)
/* lea    %%EA,%%r14                          #! 0x4209810 = 0x4209810; */
(* mov    %r13,%rdx                                #! PC = 0x4209815 *)
/* mov rdx r13; */
(* mov    %rsi,%rbx                                #! PC = 0x4209818 *)
/* mov rbx rsi; */
(* sub    $0x550,%rsp                              #! PC = 0x4209821 *)
/* subb carry rsp rsp 0x550@uint64; */
(* lea    0x220(%rsp),%rdi                         #! PC = 0x4209828 *)
/* lea    0x220%%EA,%%rdi                         #! 0x4209828 = 0x4209828; */
(* #callq  0x426ab0 <fp_add_integ>                 #! PC = 0x4209836 *)
#callq  0x426ab0 <fp_add_integ>                 #! 0x4209836 = 0x4209836;
(* #jmpq   0x417fc7 <fp_addm_low>                  #! PC = 0x4352688 *)
#jmpq   0x417fc7 <fp_addm_low>                  #! 0x4352688 = 0x4352688;
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push r13; */

/* NOTE: START fp_add(t2, a[0], a[1]); */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4292557 *)
mov r8 L0x7fffffffde40;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde10;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4292563 *)
mov r9 L0x7fffffffde48;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde18 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4292571 *)
mov r10 L0x7fffffffde50;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde20 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4292579 *)
mov r11 L0x7fffffffde58;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde28 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4292587 *)
mov r12 L0x7fffffffde60;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde30 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4292595 *)
mov r13 L0x7fffffffde68;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4292599 *)
adc r13 r13 L0x7fffffffde38 carry;
(* mov    %r8,%rax                                 #! PC = 0x4292603 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4292606 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4292609 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4292612 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4292615 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4292618 *)
mov rbp r13;
(* sub    0x540bc(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4292621 *)
subb carry rax rax L0x46c0d0;
(* sbb    0x540bd(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4292628 *)
sbbs carry rcx rcx L0x46c0d8 carry;
(* sbb    0x540be(%rip),%rdx        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4292635 *)
sbbs carry rdx rdx L0x46c0e0 carry;
(* sbb    0x540bf(%rip),%rsi        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4292642 *)
sbbs carry rsi rsi L0x46c0e8 carry;
(* sbb    0x540c0(%rip),%rbx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4292649 *)
sbbs carry rbx rbx L0x46c0f0 carry;
(* sbb    0x540c1(%rip),%rbp        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4292656 *)
sbbs carry rbp rbp L0x46c0f8 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4292663 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4292667 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4292671 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4292675 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4292679 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4292683 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9f0; PC = 0x4292687 *)
mov L0x7fffffffd9f0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd9f8; PC = 0x4292690 *)
mov L0x7fffffffd9f8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffda00; PC = 0x4292694 *)
mov L0x7fffffffda00 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda08; PC = 0x4292698 *)
mov L0x7fffffffda08 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x4292702 *)
mov L0x7fffffffda10 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x4292706 *)
mov L0x7fffffffda18 r13;

mov t2_0 L0x7fffffffd9f0;
mov t2_1 L0x7fffffffd9f8;
mov t2_2 L0x7fffffffda00;
mov t2_3 L0x7fffffffda08;
mov t2_4 L0x7fffffffda10;
mov t2_5 L0x7fffffffda18;

assert
  eqmod (limbs 64 [t2_0, t2_1, t2_2, t2_3, t2_4, t2_5])
        (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] +
         limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  limbs 64 [t2_0, t2_1, t2_2, t2_3, t2_4, t2_5] <
  limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
  0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
  0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64];


/* NOTE: END fp_add(t2, a[0], a[1]); */

/* NOTE: START fp_add(t1, b[0], b[1]); */

(* pop    %r13                                     #! PC = 0x4292710 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4292716 *)
#retq                                           #! 0x4292716 = 0x4292716;
(* lea    0x110(%rsp),%rdi                         #! PC = 0x4209841 *)
/* lea    0x110%%EA,%%rdi                         #! 0x4209841 = 0x4209841; */
(* mov    %r12,%rsi                                #! PC = 0x4209849 *)
/* mov rsi r12; */
(* mov    %r14,%rdx                                #! PC = 0x4209852 *)
/* mov rdx r14; */
(* #callq  0x426ab0 <fp_add_integ>                 #! PC = 0x4209855 *)
#callq  0x426ab0 <fp_add_integ>                 #! 0x4209855 = 0x4209855;
(* #jmpq   0x417fc7 <fp_addm_low>                  #! PC = 0x4352688 *)
#jmpq   0x417fc7 <fp_addm_low>                  #! 0x4352688 = 0x4352688;
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push r13; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffdde0; Value = 0x2e1df7fa8946a2ac; PC = 0x4292557 *)
mov r8 L0x7fffffffdde0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffddb0; Value = 0xc98126eae40bd6e8; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffddb0;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffdde8; Value = 0x6dea873ff327d9c6; PC = 0x4292563 *)
mov r9 L0x7fffffffdde8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffddb8; Value = 0x649782fe92f4ca8b; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffddb8 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffddf0; Value = 0xda893de859817a29; PC = 0x4292571 *)
mov r10 L0x7fffffffddf0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffddc0; Value = 0xc019881507d4ca91; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffddc0 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffddf8; Value = 0x8486faf967280b6e; PC = 0x4292579 *)
mov r11 L0x7fffffffddf8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffddc8; Value = 0x06afaedd14b7b16b; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffddc8 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde00; Value = 0xbf5ea7b51cc91f68; PC = 0x4292587 *)
mov r12 L0x7fffffffde00;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffddd0; Value = 0x602924e9bdec3c57; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffddd0 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde08; Value = 0x0fdbd3b2e4cab7ee; PC = 0x4292595 *)
mov r13 L0x7fffffffde08;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffddd8; Value = 0x02e285818969b02a; PC = 0x4292599 *)
adc r13 r13 L0x7fffffffddd8 carry;
(* mov    %r8,%rax                                 #! PC = 0x4292603 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4292606 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4292609 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4292612 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4292615 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4292618 *)
mov rbp r13;
(* sub    0x540bc(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4292621 *)
subb carry rax rax L0x46c0d0;
(* sbb    0x540bd(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4292628 *)
sbbs carry rcx rcx L0x46c0d8 carry;
(* sbb    0x540be(%rip),%rdx        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4292635 *)
sbbs carry rdx rdx L0x46c0e0 carry;
(* sbb    0x540bf(%rip),%rsi        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4292642 *)
sbbs carry rsi rsi L0x46c0e8 carry;
(* sbb    0x540c0(%rip),%rbx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4292649 *)
sbbs carry rbx rbx L0x46c0f0 carry;
(* sbb    0x540c1(%rip),%rbp        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4292656 *)
sbbs carry rbp rbp L0x46c0f8 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4292663 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4292667 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4292671 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4292675 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4292679 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4292683 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd8e0; PC = 0x4292687 *)
mov L0x7fffffffd8e0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd8e8; PC = 0x4292690 *)
mov L0x7fffffffd8e8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd8f0; PC = 0x4292694 *)
mov L0x7fffffffd8f0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd8f8; PC = 0x4292698 *)
mov L0x7fffffffd8f8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd900; PC = 0x4292702 *)
mov L0x7fffffffd900 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd908; PC = 0x4292706 *)
mov L0x7fffffffd908 r13;

mov t1_0 L0x7fffffffd8e0;
mov t1_1 L0x7fffffffd8e8;
mov t1_2 L0x7fffffffd8f0;
mov t1_3 L0x7fffffffd8f8;
mov t1_4 L0x7fffffffd900;
mov t1_5 L0x7fffffffd908;

assert
  eqmod (limbs 64 [t1_0, t1_1, t1_2, t1_3, t1_4, t1_5])
        (limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5] +
         limbs 64 [b2_0, b2_1, b2_2, b2_3, b2_4, b2_5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  limbs 64 [t1_0, t1_1, t1_2, t1_3, t1_4, t1_5] <
  limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
  0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
  0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64];

/* NOTE: END fp_add(t1, b[0], b[1]); */

/* NOTE: START fp_muln_low(t3, t2, t1); */

(* pop    %r13                                     #! PC = 0x4292710 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4292716 *)
#retq                                           #! 0x4292716 = 0x4292716;
(* lea    0x110(%rsp),%rdx                         #! PC = 0x4209860 *)
/* lea    0x110%%EA,%%rdx                         #! 0x4209860 = 0x4209860; */
(* lea    0x220(%rsp),%rsi                         #! PC = 0x4209868 *)
/* lea    0x220%%EA,%%rsi                         #! 0x4209868 = 0x4209868; */
(* lea    0x330(%rsp),%rdi                         #! PC = 0x4209876 *)
/* lea    0x330%%EA,%%rdi                         #! 0x4209876 = 0x4209876; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4209884 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4209884 = 0x4209884;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294632 *)
mov rax L0x7fffffffd9f0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffd8e0;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdb00; PC = 0x4294638 *)
mov L0x7fffffffdb00 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294650 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4294667 *)
mov rax L0x7fffffffd9f8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffd8e0;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdb08; PC = 0x4294677 *)
mov L0x7fffffffdb08 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294691 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4294708 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4294726 *)
mov rax L0x7fffffffda00;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffd8e0;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdb10; PC = 0x4294736 *)
mov L0x7fffffffdb10 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294750 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4294767 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4294785 *)
mov rax L0x7fffffffda00;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4294803 *)
mov rax L0x7fffffffda08;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffd8e0;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x4294813 *)
mov L0x7fffffffdb18 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294827 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4294844 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4294862 *)
mov rax L0x7fffffffda00;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4294880 *)
mov rax L0x7fffffffda08;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4294898 *)
mov rax L0x7fffffffda10;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffd8e0;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdb20; PC = 0x4294908 *)
mov L0x7fffffffdb20 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x2529ec1bb38ed35d; PC = 0x4294922 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4294939 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4294957 *)
mov rax L0x7fffffffda00;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4294975 *)
mov rax L0x7fffffffda08;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4294993 *)
mov rax L0x7fffffffda10;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295011 *)
mov rax L0x7fffffffda18;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd8e0; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffd8e0;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffdb28; PC = 0x4295021 *)
mov L0x7fffffffdb28 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x7fb7b0fc36024e24; PC = 0x4295035 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4295053 *)
mov rax L0x7fffffffda00;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4295071 *)
mov rax L0x7fffffffda08;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4295089 *)
mov rax L0x7fffffffda10;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295107 *)
mov rax L0x7fffffffda18;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd8e8; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffd8e8;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x4295118 *)
mov L0x7fffffffdb30 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0x55bae8dbe9f2c40c; PC = 0x4295132 *)
mov rax L0x7fffffffda00;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4295150 *)
mov rax L0x7fffffffda08;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4295168 *)
mov rax L0x7fffffffda10;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295186 *)
mov rax L0x7fffffffda18;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd8f0; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffd8f0;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdb38; PC = 0x4295197 *)
mov L0x7fffffffdb38 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0xff09dadfd2c23a1f; PC = 0x4295211 *)
mov rax L0x7fffffffda08;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4295229 *)
mov rax L0x7fffffffda10;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295247 *)
mov rax L0x7fffffffda18;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd8f8; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffd8f8;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffdb40; PC = 0x4295258 *)
mov L0x7fffffffdb40 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xab6822e8c5f32b31; PC = 0x4295272 *)
mov rax L0x7fffffffda10;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295290 *)
mov rax L0x7fffffffda18;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd900; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffd900;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x4295301 *)
mov L0x7fffffffdb48 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x04eab901b34857fe; PC = 0x4295312 *)
mov rax L0x7fffffffda18;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd908; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffd908;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdb50; PC = 0x4295323 *)
mov L0x7fffffffdb50 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdb58; PC = 0x4295330 *)
mov L0x7fffffffdb58 r9;

/* NOTE: END fp_muln_low(t3, t2, t1); */

mov t3_0 L0x7fffffffdb00;
mov t3_1 L0x7fffffffdb08;
mov t3_2 L0x7fffffffdb10;
mov t3_3 L0x7fffffffdb18;
mov t3_4 L0x7fffffffdb20;
mov t3_5 L0x7fffffffdb28;
mov t3_6 L0x7fffffffdb30;
mov t3_7 L0x7fffffffdb38;
mov t3_8 L0x7fffffffdb40;
mov t3_9 L0x7fffffffdb48;
mov t3_10 L0x7fffffffdb50;
mov t3_11 L0x7fffffffdb58;

assert
  eqmod (limbs 64 [t3_0, t3_1, t3_2, t3_3, t3_4, t3_5, t3_6, t3_7, t3_8, t3_9, t3_10, t3_11])
        (limbs 64 [t1_0, t1_1, t1_2, t1_3, t1_4, t1_5] *
         limbs 64 [t2_0, t2_1, t2_2, t2_3, t2_4, t2_5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  && true;



(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
(* mov    %r12,%rdx                                #! PC = 0x4209889 *)
/* mov rdx r12; */
(* mov    %rbx,%rsi                                #! PC = 0x4209892 *)
/* mov rsi rbx; */
(* mov    %rsp,%rdi                                #! PC = 0x4209895 *)
/* mov rdi rsp; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4209898 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4209898 = 0x4209898;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)

/* NOTE: START fp_muln_low(t0, a[0], b[0]); */

/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294632 *)
mov rax L0x7fffffffde10;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffddb0;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd7d0; PC = 0x4294638 *)
mov L0x7fffffffd7d0 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294650 *)
mov rax L0x7fffffffde10;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4294667 *)
mov rax L0x7fffffffde18;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffddb0;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd7d8; PC = 0x4294677 *)
mov L0x7fffffffd7d8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294691 *)
mov rax L0x7fffffffde10;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4294708 *)
mov rax L0x7fffffffde18;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4294726 *)
mov rax L0x7fffffffde20;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffddb0;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd7e0; PC = 0x4294736 *)
mov L0x7fffffffd7e0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294750 *)
mov rax L0x7fffffffde10;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4294767 *)
mov rax L0x7fffffffde18;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4294785 *)
mov rax L0x7fffffffde20;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4294803 *)
mov rax L0x7fffffffde28;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffddb0;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd7e8; PC = 0x4294813 *)
mov L0x7fffffffd7e8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294827 *)
mov rax L0x7fffffffde10;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4294844 *)
mov rax L0x7fffffffde18;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4294862 *)
mov rax L0x7fffffffde20;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4294880 *)
mov rax L0x7fffffffde28;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4294898 *)
mov rax L0x7fffffffde30;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffddb0;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd7f0; PC = 0x4294908 *)
mov L0x7fffffffd7f0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde10; Value = 0x35b60758d2e7bbdf; PC = 0x4294922 *)
mov rax L0x7fffffffde10;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4294939 *)
mov rax L0x7fffffffde18;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4294957 *)
mov rax L0x7fffffffde20;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4294975 *)
mov rax L0x7fffffffde28;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4294993 *)
mov rax L0x7fffffffde30;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295011 *)
mov rax L0x7fffffffde38;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffddb0; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffddb0;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffd7f8; PC = 0x4295021 *)
mov L0x7fffffffd7f8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde18; Value = 0x9f1c08184880a664; PC = 0x4295035 *)
mov rax L0x7fffffffde18;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4295053 *)
mov rax L0x7fffffffde20;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4295071 *)
mov rax L0x7fffffffde28;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4295089 *)
mov rax L0x7fffffffde30;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295107 *)
mov rax L0x7fffffffde38;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffddb8; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffddb8;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffd800; PC = 0x4295118 *)
mov L0x7fffffffd800 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde20; Value = 0xbf23ba3c1ed5487c; PC = 0x4295132 *)
mov rax L0x7fffffffde20;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4295150 *)
mov rax L0x7fffffffde28;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4295168 *)
mov rax L0x7fffffffde30;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295186 *)
mov rax L0x7fffffffde38;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddc0; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffddc0;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd808; PC = 0x4295197 *)
mov L0x7fffffffd808 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde28; Value = 0xc8fef73aba2d375b; PC = 0x4295211 *)
mov rax L0x7fffffffde28;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4295229 *)
mov rax L0x7fffffffde30;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295247 *)
mov rax L0x7fffffffde38;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddc8; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffddc8;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffd810; PC = 0x4295258 *)
mov L0x7fffffffd810 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde30; Value = 0x2a9a43676f5b37c1; PC = 0x4295272 *)
mov rax L0x7fffffffde30;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295290 *)
mov rax L0x7fffffffde38;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffddd0; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffddd0;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffd818; PC = 0x4295301 *)
mov L0x7fffffffd818 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde38; Value = 0x0167c51c2ceaf6b8; PC = 0x4295312 *)
mov rax L0x7fffffffde38;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffddd8; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffddd8;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd820; PC = 0x4295323 *)
mov L0x7fffffffd820 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffd828; PC = 0x4295330 *)
mov L0x7fffffffd828 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
/* NOTE: END fp_muln_low(t0, a[0], b[0]); */

mov t0_0 L0x7fffffffd7d0;
mov t0_1 L0x7fffffffd7d8;
mov t0_2 L0x7fffffffd7e0;
mov t0_3 L0x7fffffffd7e8;
mov t0_4 L0x7fffffffd7f0;
mov t0_5 L0x7fffffffd7f8;
mov t0_6 L0x7fffffffd800;
mov t0_7 L0x7fffffffd808;
mov t0_8 L0x7fffffffd810;
mov t0_9 L0x7fffffffd818;
mov t0_10 L0x7fffffffd820;
mov t0_11 L0x7fffffffd828;

assert
  eqmod (limbs 64 [t0_0, t0_1, t0_2, t0_3, t0_4, t0_5, t0_6, t0_7, t0_8, t0_9, t0_10, t0_11])
        (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] *
         limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  && true;

(* lea    0x440(%rsp),%rdi                         #! PC = 0x4209903 *)
/* lea    0x440%%EA,%%rdi                         #! 0x4209903 = 0x4209903; */
(* mov    %r14,%rdx                                #! PC = 0x4209911 *)
/* mov rdx r14; */
(* mov    %r13,%rsi                                #! PC = 0x4209914 *)
/* mov rsi r13; */
(* mov    $0xffffffff,%r12d                        #! PC = 0x4209917 *)
/* mov    $0xffffffff,%r12d                        #! 0x4209917 = 0x4209917; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4209923 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4209923 = 0x4209923;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294632 *)

/* NOTE: START fp_muln_low(t4, a[1], b[1]); */

mov rax L0x7fffffffde40;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffdde0;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdc10; PC = 0x4294638 *)
mov L0x7fffffffdc10 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294650 *)
mov rax L0x7fffffffde40;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4294667 *)
mov rax L0x7fffffffde48;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffdde0;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdc18; PC = 0x4294677 *)
mov L0x7fffffffdc18 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294691 *)
mov rax L0x7fffffffde40;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4294708 *)
mov rax L0x7fffffffde48;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4294726 *)
mov rax L0x7fffffffde50;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffdde0;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdc20; PC = 0x4294736 *)
mov L0x7fffffffdc20 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294750 *)
mov rax L0x7fffffffde40;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4294767 *)
mov rax L0x7fffffffde48;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4294785 *)
mov rax L0x7fffffffde50;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4294803 *)
mov rax L0x7fffffffde58;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffdde0;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffdc28; PC = 0x4294813 *)
mov L0x7fffffffdc28 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294827 *)
mov rax L0x7fffffffde40;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4294844 *)
mov rax L0x7fffffffde48;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4294862 *)
mov rax L0x7fffffffde50;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4294880 *)
mov rax L0x7fffffffde58;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4294898 *)
mov rax L0x7fffffffde60;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffdde0;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdc30; PC = 0x4294908 *)
mov L0x7fffffffdc30 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffde40; Value = 0xef73e4c2e0a7177e; PC = 0x4294922 *)
mov rax L0x7fffffffde40;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4294939 *)
mov rax L0x7fffffffde48;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4294957 *)
mov rax L0x7fffffffde50;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4294975 *)
mov rax L0x7fffffffde58;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4294993 *)
mov rax L0x7fffffffde60;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295011 *)
mov rax L0x7fffffffde68;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdde0; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffdde0;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffdc38; PC = 0x4295021 *)
mov L0x7fffffffdc38 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffde48; Value = 0xe09ba8e3ed81a7bf; PC = 0x4295035 *)
mov rax L0x7fffffffde48;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4295053 *)
mov rax L0x7fffffffde50;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4295071 *)
mov rax L0x7fffffffde58;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4295089 *)
mov rax L0x7fffffffde60;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295107 *)
mov rax L0x7fffffffde68;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdde8; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffdde8;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffdc40; PC = 0x4295118 *)
mov L0x7fffffffdc40 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffde50; Value = 0x96972e9fcb1d7b8f; PC = 0x4295132 *)
mov rax L0x7fffffffde50;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4295150 *)
mov rax L0x7fffffffde58;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4295168 *)
mov rax L0x7fffffffde60;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295186 *)
mov rax L0x7fffffffde68;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffddf0; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffddf0;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdc48; PC = 0x4295197 *)
mov L0x7fffffffdc48 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffde58; Value = 0x360ae3a5189502c3; PC = 0x4295211 *)
mov rax L0x7fffffffde58;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4295229 *)
mov rax L0x7fffffffde60;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295247 *)
mov rax L0x7fffffffde68;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffddf8; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffddf8;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffdc50; PC = 0x4295258 *)
mov L0x7fffffffdc50 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffde60; Value = 0x80cddf815697f370; PC = 0x4295272 *)
mov rax L0x7fffffffde60;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295290 *)
mov rax L0x7fffffffde68;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde00; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffde00;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdc58; PC = 0x4295301 *)
mov L0x7fffffffdc58 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffde68; Value = 0x0382f3e5865d6146; PC = 0x4295312 *)
mov rax L0x7fffffffde68;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde08; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffde08;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdc60; PC = 0x4295323 *)
mov L0x7fffffffdc60 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdc68; PC = 0x4295330 *)
mov L0x7fffffffdc68 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;

/* NOTE: END fp_muln_low(t4, a[1], b[1]); */

(* lea    0x440(%rsp),%rdx                         #! PC = 0x4209928 *)
/* lea    0x440%%EA,%%rdx                         #! 0x4209928 = 0x4209928; */
(* lea    0x220(%rsp),%rdi                         #! PC = 0x4209936 *)
/* lea    0x220%%EA,%%rdi                         #! 0x4209936 = 0x4209936; */
(* mov    %rsp,%rsi                                #! PC = 0x4209944 *)
/* mov rsi rsp; */
(* #callq  0x4180fb <fp_addc_low>                  #! PC = 0x4209947 *)
#callq  0x4180fb <fp_addc_low>                  #! 0x4209947 = 0x4209947;
(* push   %rbx                                     #! PC = 0x4292859 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4292860 *)
/* push rbp; */
(* push   %r12                                     #! PC = 0x4292861 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4292863 *)
/* push r13; */

/* NOTE: START fp_addc_low(t2, t0, t4); */

(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd7d0; Value = 0x33d62fea87a3ac18; PC = 0x4292865 *)
mov r8 L0x7fffffffd7d0;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffdc10; Value = 0xf8416167879584a8; PC = 0x4292868 *)
adds carry r8 r8 L0x7fffffffdc10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9f0; PC = 0x4292871 *)
mov L0x7fffffffd9f0 r8;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffdc18; Value = 0xe4492c485e938943; PC = 0x4292874 *)
mov r11 L0x7fffffffdc18;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffd7d8; Value = 0xcf2f2f51d14414f0; PC = 0x4292878 *)
adcs carry r11 r11 L0x7fffffffd7d8 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd9f8; PC = 0x4292882 *)
mov L0x7fffffffd9f8 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffdc20; Value = 0x44f6948b3e661fe2; PC = 0x4292886 *)
mov r11 L0x7fffffffdc20;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffd7e0; Value = 0x0db02be7738154e0; PC = 0x4292890 *)
adcs carry r11 r11 L0x7fffffffd7e0 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffda00; PC = 0x4292894 *)
mov L0x7fffffffda00 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffdc28; Value = 0x000cbec494f55806; PC = 0x4292898 *)
mov r11 L0x7fffffffdc28;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd7e8; Value = 0x2bf0a82ee2cb6dbd; PC = 0x4292902 *)
adcs carry r11 r11 L0x7fffffffd7e8 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda08; PC = 0x4292906 *)
mov L0x7fffffffda08 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffdc30; Value = 0x4851b4529a6aef28; PC = 0x4292910 *)
mov r11 L0x7fffffffdc30;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffd7f0; Value = 0xb41cc6a992100175; PC = 0x4292914 *)
adcs carry r11 r11 L0x7fffffffd7f0 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x4292918 *)
mov L0x7fffffffda10 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffdc38; Value = 0x131d9764b92ec6b0; PC = 0x4292922 *)
mov r11 L0x7fffffffdc38;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffd7f8; Value = 0x63df6434d1e6d148; PC = 0x4292926 *)
adcs carry r11 r11 L0x7fffffffd7f8 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x4292930 *)
mov L0x7fffffffda18 r11;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffd800; Value = 0x6b112999d9691288; PC = 0x4292934 *)
mov r8 L0x7fffffffd800;
(* adc    0x30(%rdx),%r8                           #! EA = L0x7fffffffdc40; Value = 0x7b267f4d3ea2d664; PC = 0x4292938 *)
adcs carry r8 r8 L0x7fffffffdc40 carry;
(* mov    0x38(%rsi),%r9                           #! EA = L0x7fffffffd808; Value = 0x2231297b2776e249; PC = 0x4292942 *)
mov r9 L0x7fffffffd808;
(* adc    0x38(%rdx),%r9                           #! EA = L0x7fffffffdc48; Value = 0x46a2e497f8b0de86; PC = 0x4292946 *)
adcs carry r9 r9 L0x7fffffffdc48 carry;
(* mov    0x40(%rsi),%r10                          #! EA = L0x7fffffffd810; Value = 0xcc673ac908680d54; PC = 0x4292950 *)
mov r10 L0x7fffffffd810;
(* adc    0x40(%rdx),%r10                          #! EA = L0x7fffffffdc50; Value = 0x875899ca12c50a09; PC = 0x4292954 *)
adcs carry r10 r10 L0x7fffffffdc50 carry;
(* mov    0x48(%rsi),%r11                          #! EA = L0x7fffffffd818; Value = 0x18e6dad6f6a9d033; PC = 0x4292958 *)
mov r11 L0x7fffffffd818;
(* adc    0x48(%rdx),%r11                          #! EA = L0x7fffffffdc58; Value = 0xdfbc27845ad85aea; PC = 0x4292962 *)
adcs carry r11 r11 L0x7fffffffdc58 carry;
(* mov    0x50(%rsi),%r12                          #! EA = L0x7fffffffd820; Value = 0x7327d54b98016b6a; PC = 0x4292966 *)
mov r12 L0x7fffffffd820;
(* adc    0x50(%rdx),%r12                          #! EA = L0x7fffffffdc60; Value = 0x7e760281f4651367; PC = 0x4292970 *)
adcs carry r12 r12 L0x7fffffffdc60 carry;
(* mov    0x58(%rsi),%r13                          #! EA = L0x7fffffffd828; Value = 0x00040de1daac90e7; PC = 0x4292974 *)
mov r13 L0x7fffffffd828;
(* adc    0x58(%rdx),%r13                          #! EA = L0x7fffffffdc68; Value = 0x0037b0387b7096fe; PC = 0x4292978 *)
adc r13 r13 L0x7fffffffdc68 carry;
(* mov    %r8,%rax                                 #! PC = 0x4292982 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4292985 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4292988 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4292991 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4292994 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4292997 *)
mov rbp r13;
(* sub    0x53f41(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4293000 *)
subb carry rax rax L0x46c0d0;
(* sbb    0x53f42(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4293007 *)
sbbs carry rcx rcx L0x46c0d8 carry;
(* sbb    0x53f43(%rip),%rdx        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4293014 *)
sbbs carry rdx rdx L0x46c0e0 carry;
(* sbb    0x53f44(%rip),%rsi        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4293021 *)
sbbs carry rsi rsi L0x46c0e8 carry;
(* sbb    0x53f45(%rip),%rbx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4293028 *)
sbbs carry rbx rbx L0x46c0f0 carry;
(* sbb    0x53f46(%rip),%rbp        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4293035 *)
sbbs carry rbp rbp L0x46c0f8 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4293042 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4293046 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4293050 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4293054 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4293058 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4293062 *)
cmov r13 carry r13 rbp;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffda20; PC = 0x4293066 *)
mov L0x7fffffffda20 r8;
(* mov    %r9,0x38(%rdi)                           #! EA = L0x7fffffffda28; PC = 0x4293070 *)
mov L0x7fffffffda28 r9;
(* mov    %r10,0x40(%rdi)                          #! EA = L0x7fffffffda30; PC = 0x4293074 *)
mov L0x7fffffffda30 r10;
(* mov    %r11,0x48(%rdi)                          #! EA = L0x7fffffffda38; PC = 0x4293078 *)
mov L0x7fffffffda38 r11;
(* mov    %r12,0x50(%rdi)                          #! EA = L0x7fffffffda40; PC = 0x4293082 *)
mov L0x7fffffffda40 r12;
(* mov    %r13,0x58(%rdi)                          #! EA = L0x7fffffffda48; PC = 0x4293086 *)
mov L0x7fffffffda48 r13;
(* xor    %rax,%rax                                #! PC = 0x4293090 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4293093 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4293095 *)
/* pop r12; */
(* pop    %rbp                                     #! PC = 0x4293097 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4293098 *)
/* pop rbx; */
(* #retq                                           #! PC = 0x4293099 *)
#retq                                           #! 0x4293099 = 0x4293099;

/* NOTE: END fp_addc_low(t2, t0, t4); */



(* lea    0x440(%rsp),%rdx                         #! PC = 0x4209952 *)
/* lea    0x440%%EA,%%rdx                         #! 0x4209952 = 0x4209952; */
(* lea    0x110(%rsp),%rdi                         #! PC = 0x4209960 *)
/* lea    0x110%%EA,%%rdi                         #! 0x4209960 = 0x4209960; */
(* mov    %rsp,%rsi                                #! PC = 0x4209968 *)
/* mov rsi rsp; */
(* #callq  0x4183bf <fp_subc_low>                  #! PC = 0x4209971 *)
#callq  0x4183bf <fp_subc_low>                  #! 0x4209971 = 0x4209971;

/* NOTE: START fp_subc_low(t1, t0, t4); */

(* xor    %rax,%rax                                #! PC = 0x4293567 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293570 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd7d0; Value = 0x33d62fea87a3ac18; PC = 0x4293573 *)
mov r8 L0x7fffffffd7d0;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdc10; Value = 0xf8416167879584a8; PC = 0x4293576 *)
subb carry r8 r8 L0x7fffffffdc10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd8e0; PC = 0x4293579 *)
mov L0x7fffffffd8e0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd7d8; Value = 0xcf2f2f51d14414f0; PC = 0x4293582 *)
mov r8 L0x7fffffffd7d8;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffdc18; Value = 0xe4492c485e938943; PC = 0x4293586 *)
sbbs carry r8 r8 L0x7fffffffdc18 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd8e8; PC = 0x4293590 *)
mov L0x7fffffffd8e8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd7e0; Value = 0x0db02be7738154e0; PC = 0x4293594 *)
mov r8 L0x7fffffffd7e0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffdc20; Value = 0x44f6948b3e661fe2; PC = 0x4293598 *)
sbbs carry r8 r8 L0x7fffffffdc20 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd8f0; PC = 0x4293602 *)
mov L0x7fffffffd8f0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd7e8; Value = 0x2bf0a82ee2cb6dbd; PC = 0x4293606 *)
mov r8 L0x7fffffffd7e8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffdc28; Value = 0x000cbec494f55806; PC = 0x4293610 *)
sbbs carry r8 r8 L0x7fffffffdc28 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd8f8; PC = 0x4293614 *)
mov L0x7fffffffd8f8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd7f0; Value = 0xb41cc6a992100175; PC = 0x4293618 *)
mov r8 L0x7fffffffd7f0;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffdc30; Value = 0x4851b4529a6aef28; PC = 0x4293622 *)
sbbs carry r8 r8 L0x7fffffffdc30 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd900; PC = 0x4293626 *)
mov L0x7fffffffd900 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd7f8; Value = 0x63df6434d1e6d148; PC = 0x4293630 *)
mov r8 L0x7fffffffd7f8;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffdc38; Value = 0x131d9764b92ec6b0; PC = 0x4293634 *)
sbbs carry r8 r8 L0x7fffffffdc38 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd908; PC = 0x4293638 *)
mov L0x7fffffffd908 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffd800; Value = 0x6b112999d9691288; PC = 0x4293642 *)
mov r8 L0x7fffffffd800;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffdc40; Value = 0x7b267f4d3ea2d664; PC = 0x4293646 *)
sbbs carry r8 r8 L0x7fffffffdc40 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffd910; PC = 0x4293650 *)
mov L0x7fffffffd910 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffd808; Value = 0x2231297b2776e249; PC = 0x4293654 *)
mov r8 L0x7fffffffd808;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffdc48; Value = 0x46a2e497f8b0de86; PC = 0x4293658 *)
sbbs carry r8 r8 L0x7fffffffdc48 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffd918; PC = 0x4293662 *)
mov L0x7fffffffd918 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffd810; Value = 0xcc673ac908680d54; PC = 0x4293666 *)
mov r8 L0x7fffffffd810;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffdc50; Value = 0x875899ca12c50a09; PC = 0x4293670 *)
sbbs carry r8 r8 L0x7fffffffdc50 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffd920; PC = 0x4293674 *)
mov L0x7fffffffd920 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffd818; Value = 0x18e6dad6f6a9d033; PC = 0x4293678 *)
mov r8 L0x7fffffffd818;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffdc58; Value = 0xdfbc27845ad85aea; PC = 0x4293682 *)
sbbs carry r8 r8 L0x7fffffffdc58 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd928; PC = 0x4293686 *)
mov L0x7fffffffd928 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffd820; Value = 0x7327d54b98016b6a; PC = 0x4293690 *)
mov r8 L0x7fffffffd820;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffdc60; Value = 0x7e760281f4651367; PC = 0x4293694 *)
sbbs carry r8 r8 L0x7fffffffdc60 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffd930; PC = 0x4293698 *)
mov L0x7fffffffd930 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffd828; Value = 0x00040de1daac90e7; PC = 0x4293702 *)
mov r8 L0x7fffffffd828;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffdc68; Value = 0x0037b0387b7096fe; PC = 0x4293706 *)
sbbs carry r8 r8 L0x7fffffffdc68 carry;

mov carry_1 carry;

(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffd938; PC = 0x4293710 *)
mov L0x7fffffffd938 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4293714 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4293721 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4293728 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4293735 *)
mov r11 0x0@uint64;
(* cmovb  0x53c5a(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4293742 *)
cmov rax carry L0x46c0d0 rax;
(* cmovb  0x53c5a(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4293750 *)
cmov rcx carry L0x46c0d8 rcx;
(* cmovb  0x53c5a(%rip),%r8        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4293758 *)
cmov r8 carry L0x46c0e0 r8;
(* cmovb  0x53c5a(%rip),%r9        # 0x46c0e8      #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4293766 *)
cmov r9 carry L0x46c0e8 r9;
(* cmovb  0x53c5a(%rip),%r10        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4293774 *)
cmov r10 carry L0x46c0f0 r10;
(* cmovb  0x53c5a(%rip),%r11        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4293782 *)
cmov r11 carry L0x46c0f8 r11;
(* add    %rax,0x30(%rdi)                          #! EA = L0x7fffffffd910; PC = 0x4293790 *)
adds carry L0x7fffffffd910 L0x7fffffffd910 rax;
(* adc    %rcx,0x38(%rdi)                          #! EA = L0x7fffffffd918; PC = 0x4293794 *)
adcs carry L0x7fffffffd918 L0x7fffffffd918 rcx carry;
(* adc    %r8,0x40(%rdi)                           #! EA = L0x7fffffffd920; PC = 0x4293798 *)
adcs carry L0x7fffffffd920 L0x7fffffffd920 r8 carry;
(* adc    %r9,0x48(%rdi)                           #! EA = L0x7fffffffd928; PC = 0x4293802 *)
adcs carry L0x7fffffffd928 L0x7fffffffd928 r9 carry;
(* adc    %r10,0x50(%rdi)                          #! EA = L0x7fffffffd930; PC = 0x4293806 *)
adcs carry L0x7fffffffd930 L0x7fffffffd930 r10 carry;
(* adc    %r11,0x58(%rdi)                          #! EA = L0x7fffffffd938; PC = 0x4293810 *)
adcs carry L0x7fffffffd938 L0x7fffffffd938 r11 carry;
/* NOTE: this carry is needed */
assert true && carry = carry_1;
assume carry = carry_1 && true;


(* #retq                                           #! PC = 0x4293814 *)
#retq                                           #! 0x4293814 = 0x4293814;

/* NOTE: END fp_subc_low(t1, t0, t4); */


(* #jmp    0x403d5c <fp2_mul_basic+220>            #! PC = 0x4209976 *)
#jmp    0x403d5c <fp2_mul_basic+220>            #! 0x4209976 = 0x4209976;
(* #callq  0x401df0 <fp_prime_get_qnr>             #! PC = 0x4210012 *)
#callq  0x401df0 <fp_prime_get_qnr>             #! 0x4210012 = 0x4210012;
(* sub    $0x8,%rsp                                #! PC = 0x4201968 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x4014c0 <core_get>                     #! PC = 0x4201972 *)
#callq  0x4014c0 <core_get>                     #! 0x4201972 = 0x4201972;
(* mov    0x6ac49(%rip),%rax        # 0x46c110 <core_ctx>#! EA = L0x46c110; Value = 0x000000000046c120; PC = 0x4199616 *)
/* mov rax L0x46c110; */
(* #retq                                           #! PC = 0x4199623 *)
#retq                                           #! 0x4199623 = 0x4199623;
(* mov    0xfa9d0(%rax),%eax                       #! EA = L0x566af0; Value = 0x00000002ffffffff; PC = 0x4201977 *)
/* mov rax L0x566af0; */
(* add    $0x8,%rsp                                #! PC = 0x4201983 *)
/* adds carry rsp rsp 0x8; */
(* #retq                                           #! PC = 0x4201987 *)
#retq                                           #! 0x4201987 = 0x4201987;
(* cmp    %eax,%r12d                               #! PC = 0x4210017 *)
/* cmp    %%rax,%r12d                               #! 0x4210017 = 0x4210017; */
(* #jg     0x403d40 <fp2_mul_basic+192>            #! PC = 0x4210020 *)
#jg     0x403d40 <fp2_mul_basic+192>            #! 0x4210020 = 0x4210020;
(* mov    $0x1,%ebx                                #! PC = 0x4210022 *)
mov rbx 0x1@uint64;
(* #jmp    0x403d8b <fp2_mul_basic+267>            #! PC = 0x4210027 *)
#jmp    0x403d8b <fp2_mul_basic+267>            #! 0x4210027 = 0x4210027;
(* #callq  0x401df0 <fp_prime_get_qnr>             #! PC = 0x4210059 *)
#callq  0x401df0 <fp_prime_get_qnr>             #! 0x4210059 = 0x4210059;
(* sub    $0x8,%rsp                                #! PC = 0x4201968 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x4014c0 <core_get>                     #! PC = 0x4201972 *)
#callq  0x4014c0 <core_get>                     #! 0x4201972 = 0x4201972;
(* mov    0x6ac49(%rip),%rax        # 0x46c110 <core_ctx>#! EA = L0x46c110; Value = 0x000000000046c120; PC = 0x4199616 *)
/* mov rax L0x46c110; */
(* #retq                                           #! PC = 0x4199623 *)
#retq                                           #! 0x4199623 = 0x4199623;
(* mov    0xfa9d0(%rax),%eax                       #! EA = L0x566af0; Value = 0x00000002ffffffff; PC = 0x4201977 *)
/* mov rax L0x566af0; */
(* add    $0x8,%rsp                                #! PC = 0x4201983 *)
/* adds carry rsp rsp 0x8; */
(* #retq                                           #! PC = 0x4201987 *)
#retq                                           #! 0x4201987 = 0x4201987;
(* cmp    %eax,%ebx                                #! PC = 0x4210064 *)
/* cmp    %%rax,%%rbx                                #! 0x4210064 = 0x4210064; */
(* #jl     0x403d70 <fp2_mul_basic+240>            #! PC = 0x4210066 *)
#jl     0x403d70 <fp2_mul_basic+240>            #! 0x4210066 = 0x4210066;
(* lea    0x110(%rsp),%rsi                         #! PC = 0x4210068 *)
/* lea    0x110%%EA,%%rsi                         #! 0x4210068 = 0x4210068; */
(* mov    %rbp,%rdi                                #! PC = 0x4210076 *)
/* mov rdi rbp; */
(* #callq  0x403250 <fp_rdc_monty_comba>           #! PC = 0x4210079 *)
#callq  0x403250 <fp_rdc_monty_comba>           #! 0x4210079 = 0x4210079;
(* #jmpq   0x4191b5 <fp_rdcn_low>                  #! PC = 0x4207184 *)
#jmpq   0x4191b5 <fp_rdcn_low>                  #! 0x4207184 = 0x4207184;
(* push   %r12                                     #! PC = 0x4297141 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4297143 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4297145 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4297147 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4297149 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4297150 *)
/* push rbp; */
(* lea    0x52f0a(%rip),%rbx        # 0x46c0d0     #! PC = 0x4297151 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4297151 = 0x4297151; */

/* NOTE START fp_rdc(c[0], t1); */
(* xor    %r9,%r9                                  #! PC = 0x4297158 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297161 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd8e0; Value = 0x3b94ce83000e2770; PC = 0x4297171 *)
mov r8 L0x7fffffffd8e0;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffd8e0; PC = 0x4297180 *)
mov L0x7fffffffd8e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297183 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297186 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297189 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4297192 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4297195 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x684e1dfc898589b0; PC = 0x4297198 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffd8e8; Value = 0xeae6030972b08bac; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffd8e8;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffd8e8; PC = 0x4297233 *)
mov L0x7fffffffd8e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297237 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297240 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 + 0 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297243 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297246 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297250 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x684e1dfc898589b0; PC = 0x4297253 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd8e8; Value = 0xd088a0bb7e3feccc; PC = 0x4297270 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffd8f0; Value = 0xc8b9975c351b34fd; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffd8f0;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffd8f0; PC = 0x4297306 *)
mov L0x7fffffffd8f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297310 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297313 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 + 0 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297316 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297319 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297323 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x684e1dfc898589b0; PC = 0x4297326 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd8e8; Value = 0xd088a0bb7e3feccc; PC = 0x4297343 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd8f0; Value = 0xea65885e5ea3818f; PC = 0x4297361 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffd8f8; Value = 0x2be3e96a4dd615b6; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffd8f8;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffd8f8; PC = 0x4297397 *)
mov L0x7fffffffd8f8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297401 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297404 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297407 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297410 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297414 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x684e1dfc898589b0; PC = 0x4297417 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd8e8; Value = 0xd088a0bb7e3feccc; PC = 0x4297434 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd8f0; Value = 0xea65885e5ea3818f; PC = 0x4297452 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x1e0bcafbc6c0002f; PC = 0x4297470 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffd900; Value = 0x6bcb1256f7a5124d; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffd900;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffd900; PC = 0x4297506 *)
mov L0x7fffffffd900 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297510 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297513 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 + 0 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297516 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297519 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297523 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x684e1dfc898589b0; PC = 0x4297526 *)
mov rax L0x7fffffffd8e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd8e8; Value = 0xd088a0bb7e3feccc; PC = 0x4297543 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd8f0; Value = 0xea65885e5ea3818f; PC = 0x4297561 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x1e0bcafbc6c0002f; PC = 0x4297579 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd900; Value = 0x2af6dcbabf8abfa1; PC = 0x4297597 *)
mov rax L0x7fffffffd900;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffd908; Value = 0x50c1ccd018b80a98; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffd908;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffd908; PC = 0x4297633 *)
mov L0x7fffffffd908 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297637 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297640 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 + 0 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297643 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297646 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297650 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd8e8; Value = 0xd088a0bb7e3feccc; PC = 0x4297653 *)
mov rax L0x7fffffffd8e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd8f0; Value = 0xea65885e5ea3818f; PC = 0x4297671 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x1e0bcafbc6c0002f; PC = 0x4297689 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd900; Value = 0x2af6dcbabf8abfa1; PC = 0x4297707 *)
mov rax L0x7fffffffd900;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x763e90321bb37a40; PC = 0x4297725 *)
mov rax L0x7fffffffd908;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffd910; Value = 0xa9e9aa4c9ac5e6cf; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffd910;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffd910; PC = 0x4297755 *)
mov L0x7fffffffd910 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd8f0; Value = 0xea65885e5ea3818f; PC = 0x4297762 *)
mov rax L0x7fffffffd8f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x1e0bcafbc6c0002f; PC = 0x4297780 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd900; Value = 0x2af6dcbabf8abfa1; PC = 0x4297798 *)
mov rax L0x7fffffffd900;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x763e90321bb37a40; PC = 0x4297816 *)
mov rax L0x7fffffffd908;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffd918; Value = 0xfa3a44e1e01a03c2; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffd918;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffd918; PC = 0x4297846 *)
mov L0x7fffffffd918 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x1e0bcafbc6c0002f; PC = 0x4297853 *)
mov rax L0x7fffffffd8f8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd900; Value = 0x2af6dcbabf8abfa1; PC = 0x4297871 *)
mov rax L0x7fffffffd900;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x763e90321bb37a40; PC = 0x4297889 *)
mov rax L0x7fffffffd908;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffd920; Value = 0xac3f739fec53f96e; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffd920;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd920; PC = 0x4297919 *)
mov L0x7fffffffd920 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd900; Value = 0x2af6dcbabf8abfa1; PC = 0x4297926 *)
mov rax L0x7fffffffd900;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x763e90321bb37a40; PC = 0x4297944 *)
mov rax L0x7fffffffd908;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffd928; Value = 0x9da1fed78f568808; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffd928;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffd928; PC = 0x4297974 *)
mov L0x7fffffffd928 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x763e90321bb37a40; PC = 0x4297981 *)
mov rax L0x7fffffffd908;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297985 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297989 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297992 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4297995 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffd930; Value = 0x3fcd7a7fe6e804d9; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffd930;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffd930; PC = 0x4298011 *)
mov L0x7fffffffd930 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x19cd6f9398bbe083; PC = 0x4298018 *)
add r10 r10 L0x7fffffffd938;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffd938; PC = 0x4298022 *)
mov L0x7fffffffd938 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffd910; Value = 0x656e1e2566e72906; PC = 0x4298026 *)
mov r11 L0x7fffffffd910;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffd918; Value = 0x9e25d70fb0a95eca; PC = 0x4298030 *)
mov r12 L0x7fffffffd918;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffd920; Value = 0x0410c20b15ce6188; PC = 0x4298034 *)
mov r13 L0x7fffffffd920;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffd928; Value = 0x176eac9c5e56139e; PC = 0x4298038 *)
mov r14 L0x7fffffffd928;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffd930; Value = 0xa67e4afc219f866e; PC = 0x4298042 *)
mov r15 L0x7fffffffd930;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffd938; Value = 0x25d048bd971059ed; PC = 0x4298046 *)
mov rcx L0x7fffffffd938;
(* sub    0x52b87(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4298050 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52b88(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4298057 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52b89(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4298064 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52b8a(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4298071 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52b8b(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4298078 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52b8c(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4298085 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffd910; Value = 0x656e1e2566e72906; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffd910 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffd918; Value = 0x9e25d70fb0a95eca; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffd918 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffd920; Value = 0x0410c20b15ce6188; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffd920 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffd928; Value = 0x176eac9c5e56139e; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffd928 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffd930; Value = 0xa67e4afc219f866e; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffd930 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffd938; Value = 0x25d048bd971059ed; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffd938 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdd50; PC = 0x4298122 *)
mov L0x7fffffffdd50 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdd58; PC = 0x4298125 *)
mov L0x7fffffffdd58 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdd60; PC = 0x4298129 *)
mov L0x7fffffffdd60 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdd68; PC = 0x4298133 *)
mov L0x7fffffffdd68 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4298137 *)
mov L0x7fffffffdd70 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4298141 *)
mov L0x7fffffffdd78 rcx;
(* pop    %rbp                                     #! PC = 0x4298145 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4298146 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4298147 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4298149 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4298151 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4298153 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4298155 *)
#retq                                           #! 0x4298155 = 0x4298155;

/* NOTE END fp_rdc(c[0], t1); */

(* lea    0x220(%rsp),%rdx                         #! PC = 0x4210084 *)
/* lea    0x220%%EA,%%rdx                         #! 0x4210084 = 0x4210084; */
(* lea    0x330(%rsp),%rsi                         #! PC = 0x4210092 *)
/* lea    0x330%%EA,%%rsi                         #! 0x4210092 = 0x4210092; */
(* lea    0x440(%rsp),%rdi                         #! PC = 0x4210100 *)
/* lea    0x440%%EA,%%rdi                         #! 0x4210100 = 0x4210100; */
(* #callq  0x4183bf <fp_subc_low>                  #! PC = 0x4210108 *)
#callq  0x4183bf <fp_subc_low>                  #! 0x4210108 = 0x4210108;

/* NOTE START fp_subc_low(t4, t3, t2); */

(* xor    %rax,%rax                                #! PC = 0x4293567 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293570 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb00; Value = 0x1673e3d19d4326c4; PC = 0x4293573 *)
mov r8 L0x7fffffffdb00;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd9f0; Value = 0x2c1791520f3930c0; PC = 0x4293576 *)
subb carry r8 r8 L0x7fffffffd9f0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc10; PC = 0x4293579 *)
mov L0x7fffffffdc10 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffdb08; Value = 0x5ac526745f0e3f4f; PC = 0x4293582 *)
mov r8 L0x7fffffffdb08;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd9f8; Value = 0xb3785b9a2fd79e34; PC = 0x4293586 *)
sbbs carry r8 r8 L0x7fffffffd9f8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdc18; PC = 0x4293590 *)
mov L0x7fffffffdc18 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffdb10; Value = 0xa747577b174cc82d; PC = 0x4293594 *)
mov r8 L0x7fffffffdb10;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffda00; Value = 0x52a6c072b1e774c3; PC = 0x4293598 *)
sbbs carry r8 r8 L0x7fffffffda00 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdc20; PC = 0x4293602 *)
mov L0x7fffffffdc20 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffdb18; Value = 0x5d0c69f0deae7ca6; PC = 0x4293606 *)
mov r8 L0x7fffffffdb18;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffda08; Value = 0x2bfd66f377c0c5c3; PC = 0x4293610 *)
sbbs carry r8 r8 L0x7fffffffda08 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdc28; PC = 0x4293614 *)
mov L0x7fffffffdc28 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffdb20; Value = 0x9752f573b4a3b027; PC = 0x4293618 *)
mov r8 L0x7fffffffdb20;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffda10; Value = 0xfc6e7afc2c7af09d; PC = 0x4293622 *)
sbbs carry r8 r8 L0x7fffffffda10 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdc30; PC = 0x4293626 *)
mov L0x7fffffffdc30 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffdb28; Value = 0xabebb9f831df169f; PC = 0x4293630 *)
mov r8 L0x7fffffffdb28;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffda18; Value = 0x76fcfb998b1597f8; PC = 0x4293634 *)
sbbs carry r8 r8 L0x7fffffffda18 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdc38; PC = 0x4293638 *)
mov L0x7fffffffdc38 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb30; Value = 0x46de73d2d7572ac7; PC = 0x4293642 *)
mov r8 L0x7fffffffdb30;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffda20; Value = 0xe637a8e7180be8ec; PC = 0x4293646 *)
sbbs carry r8 r8 L0x7fffffffda20 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffdc40; PC = 0x4293650 *)
mov L0x7fffffffdc40 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffdb38; Value = 0x40768d53fefc7d4a; PC = 0x4293654 *)
mov r8 L0x7fffffffdb38;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffda28; Value = 0x68d40e132027c0cf; PC = 0x4293658 *)
sbbs carry r8 r8 L0x7fffffffda28 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdc48; PC = 0x4293662 *)
mov L0x7fffffffdc48 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffdb40; Value = 0xd18979b5a6f80f9c; PC = 0x4293666 *)
mov r8 L0x7fffffffdb40;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffda30; Value = 0x53bfd4931b2d175d; PC = 0x4293670 *)
sbbs carry r8 r8 L0x7fffffffda30 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffdc50; PC = 0x4293674 *)
mov L0x7fffffffdc50 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffdb48; Value = 0x63668cd8bd96c979; PC = 0x4293678 *)
mov r8 L0x7fffffffdb48;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffda38; Value = 0xf8a3025b51822b1e; PC = 0x4293682 *)
sbbs carry r8 r8 L0x7fffffffda38 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffdc58; PC = 0x4293686 *)
mov L0x7fffffffdc58 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffdb50; Value = 0xee6b3dae5c43da41; PC = 0x4293690 *)
mov r8 L0x7fffffffdb50;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffda40; Value = 0xf19dd7cd8c667ed1; PC = 0x4293694 *)
sbbs carry r8 r8 L0x7fffffffda40 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdc60; PC = 0x4293698 *)
mov L0x7fffffffdc60 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffdb58; Value = 0x005c28ee09fb2eb9; PC = 0x4293702 *)
mov r8 L0x7fffffffdb58;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffda48; Value = 0x003bbe1a561d27e5; PC = 0x4293706 *)
sbbs carry r8 r8 L0x7fffffffda48 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffdc68; PC = 0x4293710 *)
mov L0x7fffffffdc68 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4293714 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4293721 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4293728 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4293735 *)
mov r11 0x0@uint64;
(* cmovb  0x53c5a(%rip),%rax        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4293742 *)
cmov rax carry L0x46c0d0 rax;
(* cmovb  0x53c5a(%rip),%rcx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4293750 *)
cmov rcx carry L0x46c0d8 rcx;
(* cmovb  0x53c5a(%rip),%r8        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4293758 *)
cmov r8 carry L0x46c0e0 r8;
(* cmovb  0x53c5a(%rip),%r9        # 0x46c0e8      #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4293766 *)
cmov r9 carry L0x46c0e8 r9;
(* cmovb  0x53c5a(%rip),%r10        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4293774 *)
cmov r10 carry L0x46c0f0 r10;
(* cmovb  0x53c5a(%rip),%r11        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4293782 *)
cmov r11 carry L0x46c0f8 r11;
(* add    %rax,0x30(%rdi)                          #! EA = L0x7fffffffdc40; PC = 0x4293790 *)
adds carry L0x7fffffffdc40 L0x7fffffffdc40 rax;
(* adc    %rcx,0x38(%rdi)                          #! EA = L0x7fffffffdc48; PC = 0x4293794 *)
adcs carry L0x7fffffffdc48 L0x7fffffffdc48 rcx carry;
(* adc    %r8,0x40(%rdi)                           #! EA = L0x7fffffffdc50; PC = 0x4293798 *)
adcs carry L0x7fffffffdc50 L0x7fffffffdc50 r8 carry;
(* adc    %r9,0x48(%rdi)                           #! EA = L0x7fffffffdc58; PC = 0x4293802 *)
adcs carry L0x7fffffffdc58 L0x7fffffffdc58 r9 carry;
(* adc    %r10,0x50(%rdi)                          #! EA = L0x7fffffffdc60; PC = 0x4293806 *)
adcs carry L0x7fffffffdc60 L0x7fffffffdc60 r10 carry;
(* adc    %r11,0x58(%rdi)                          #! EA = L0x7fffffffdc68; PC = 0x4293810 *)
adcs carry L0x7fffffffdc68 L0x7fffffffdc68 r11 carry;
assert true && carry = carry_1;
assume carry = carry_1 && true;
(* #retq                                           #! PC = 0x4293814 *)
#retq                                           #! 0x4293814 = 0x4293814;

/* NOTE END fp_subc_low(t4, t3, t2); */

(* lea    0x30(%rbp),%rdi                          #! PC = 0x4210113 *)
/* lea    %%EA,%%rdi                          #! 0x4210113 = 0x4210113; */
(* lea    0x440(%rsp),%rsi                         #! PC = 0x4210117 *)
/* lea    0x440%%EA,%%rsi                         #! 0x4210117 = 0x4210117; */
(* #callq  0x403250 <fp_rdc_monty_comba>           #! PC = 0x4210125 *)
#callq  0x403250 <fp_rdc_monty_comba>           #! 0x4210125 = 0x4210125;
(* #jmpq   0x4191b5 <fp_rdcn_low>                  #! PC = 0x4207184 *)
#jmpq   0x4191b5 <fp_rdcn_low>                  #! 0x4207184 = 0x4207184;
(* push   %r12                                     #! PC = 0x4297141 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4297143 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4297145 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4297147 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4297149 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4297150 *)
/* push rbp; */
(* lea    0x52f0a(%rip),%rbx        # 0x46c0d0     #! PC = 0x4297151 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4297151 = 0x4297151; */

/* NOTE START fp_rdc(c[1], t4); */
(* xor    %r9,%r9                                  #! PC = 0x4297158 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297161 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdc10; Value = 0xea5c527f8e09f604; PC = 0x4297171 *)
mov r8 L0x7fffffffdc10;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffdc10; PC = 0x4297180 *)
mov L0x7fffffffdc10 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297183 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297186 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297189 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4297192 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4297195 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc10; Value = 0x3f1e7c5773d61df4; PC = 0x4297198 *)
mov rax L0x7fffffffdc10;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffdc18; Value = 0xa74ccada2f36a11a; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffdc18;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdc18; PC = 0x4297233 *)
mov L0x7fffffffdc18 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297237 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297240 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 + 0 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297243 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297246 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297250 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc10; Value = 0x3f1e7c5773d61df4; PC = 0x4297253 *)
mov rax L0x7fffffffdc10;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc18; Value = 0xcd1953b8681a5be2; PC = 0x4297270 *)
mov rax L0x7fffffffdc18;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffdc20; Value = 0x54a0970865655369; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffdc20;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffdc20; PC = 0x4297306 *)
mov L0x7fffffffdc20 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297310 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297313 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 + 0 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297316 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297319 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297323 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc10; Value = 0x3f1e7c5773d61df4; PC = 0x4297326 *)
mov rax L0x7fffffffdc10;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc18; Value = 0xcd1953b8681a5be2; PC = 0x4297343 *)
mov rax L0x7fffffffdc18;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdc20; Value = 0x3276a4568a26699f; PC = 0x4297361 *)
mov rax L0x7fffffffdc20;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffdc28; Value = 0x310f02fd66edb6e3; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffdc28;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffdc28; PC = 0x4297397 *)
mov L0x7fffffffdc28 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297401 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297404 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 + 0 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297407 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297410 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297414 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc10; Value = 0x3f1e7c5773d61df4; PC = 0x4297417 *)
mov rax L0x7fffffffdc10;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc18; Value = 0xcd1953b8681a5be2; PC = 0x4297434 *)
mov rax L0x7fffffffdc18;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdc20; Value = 0x3276a4568a26699f; PC = 0x4297452 *)
mov rax L0x7fffffffdc20;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdc28; Value = 0xb586b1351f2e16af; PC = 0x4297470 *)
mov rax L0x7fffffffdc28;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffdc30; Value = 0x9ae47a778828bf8a; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffdc30;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffdc30; PC = 0x4297506 *)
mov L0x7fffffffdc30 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297510 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297513 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 + 0 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297516 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297519 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297523 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc10; Value = 0x3f1e7c5773d61df4; PC = 0x4297526 *)
mov rax L0x7fffffffdc10;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc18; Value = 0xcd1953b8681a5be2; PC = 0x4297543 *)
mov rax L0x7fffffffdc18;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdc20; Value = 0x3276a4568a26699f; PC = 0x4297561 *)
mov rax L0x7fffffffdc20;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdc28; Value = 0xb586b1351f2e16af; PC = 0x4297579 *)
mov rax L0x7fffffffdc28;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdc30; Value = 0x3891e8dfd8c5d10c; PC = 0x4297597 *)
mov rax L0x7fffffffdc30;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffdc38; Value = 0x34eebe5ea6c97ea6; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffdc38;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffdc38; PC = 0x4297633 *)
mov L0x7fffffffdc38 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297637 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297640 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 + 0 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297643 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297646 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297650 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc18; Value = 0xcd1953b8681a5be2; PC = 0x4297653 *)
mov rax L0x7fffffffdc18;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdc20; Value = 0x3276a4568a26699f; PC = 0x4297671 *)
mov rax L0x7fffffffdc20;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdc28; Value = 0xb586b1351f2e16af; PC = 0x4297689 *)
mov rax L0x7fffffffdc28;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdc30; Value = 0x3891e8dfd8c5d10c; PC = 0x4297707 *)
mov rax L0x7fffffffdc30;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdc38; Value = 0x7986f53828e44522; PC = 0x4297725 *)
mov rax L0x7fffffffdc38;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdc40; Value = 0x60a6caebbf4b41db; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffdc40;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffdc40; PC = 0x4297755 *)
mov L0x7fffffffdc40 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdc20; Value = 0x3276a4568a26699f; PC = 0x4297762 *)
mov rax L0x7fffffffdc20;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdc28; Value = 0xb586b1351f2e16af; PC = 0x4297780 *)
mov rax L0x7fffffffdc28;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdc30; Value = 0x3891e8dfd8c5d10c; PC = 0x4297798 *)
mov rax L0x7fffffffdc30;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdc38; Value = 0x7986f53828e44522; PC = 0x4297816 *)
mov rax L0x7fffffffdc38;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffdc48; Value = 0xd7a27f40ded4bc7a; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffdc48;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffdc48; PC = 0x4297846 *)
mov L0x7fffffffdc48 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdc28; Value = 0xb586b1351f2e16af; PC = 0x4297853 *)
mov rax L0x7fffffffdc28;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdc30; Value = 0x3891e8dfd8c5d10c; PC = 0x4297871 *)
mov rax L0x7fffffffdc30;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdc38; Value = 0x7986f53828e44522; PC = 0x4297889 *)
mov rax L0x7fffffffdc38;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffdc50; Value = 0x7dc9a5228bcaf83e; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffdc50;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffdc50; PC = 0x4297919 *)
mov L0x7fffffffdc50 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdc30; Value = 0x3891e8dfd8c5d10c; PC = 0x4297926 *)
mov rax L0x7fffffffdc30;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdc38; Value = 0x7986f53828e44522; PC = 0x4297944 *)
mov rax L0x7fffffffdc38;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffdc58; Value = 0x6ac38a7d6c149e5b; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffdc58;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffdc58; PC = 0x4297974 *)
mov L0x7fffffffdc58 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdc38; Value = 0x7986f53828e44522; PC = 0x4297981 *)
mov rax L0x7fffffffdc38;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297985 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297989 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297992 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4297995 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffdc60; Value = 0xfccd65e0cfdd5b6f; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffdc60;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffdc60; PC = 0x4298011 *)
mov L0x7fffffffdc60 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffdc68; Value = 0x00206ad3b3de06d3; PC = 0x4298018 *)
add r10 r10 L0x7fffffffdc68;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffdc68; PC = 0x4298022 *)
mov L0x7fffffffdc68 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffdc40; Value = 0x290737acc9758a09; PC = 0x4298026 *)
mov r11 L0x7fffffffdc40;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffdc48; Value = 0x81a74d45cb56ddbc; PC = 0x4298030 *)
mov r12 L0x7fffffffdc48;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffdc50; Value = 0xb07b5c816020f21a; PC = 0x4298034 *)
mov r13 L0x7fffffffdc50;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffdc58; Value = 0x0ec6949c16beb56a; PC = 0x4298038 *)
mov r14 L0x7fffffffdc58;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffdc60; Value = 0xec0ba6fc555b4fca; PC = 0x4298042 *)
mov r15 L0x7fffffffdc60;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdc68; Value = 0x0c78a1c3842e02cf; PC = 0x4298046 *)
mov rcx L0x7fffffffdc68;
(* sub    0x52b87(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4298050 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52b88(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4298057 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52b89(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4298064 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52b8a(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4298071 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52b8b(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4298078 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52b8c(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4298085 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffdc40; Value = 0x290737acc9758a09; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffdc40 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffdc48; Value = 0x81a74d45cb56ddbc; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffdc48 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffdc50; Value = 0xb07b5c816020f21a; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffdc50 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffdc58; Value = 0x0ec6949c16beb56a; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffdc58 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffdc60; Value = 0xec0ba6fc555b4fca; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffdc60 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffdc68; Value = 0x0c78a1c3842e02cf; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffdc68 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdd80; PC = 0x4298122 *)
mov L0x7fffffffdd80 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdd88; PC = 0x4298125 *)
mov L0x7fffffffdd88 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x4298129 *)
mov L0x7fffffffdd90 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x4298133 *)
mov L0x7fffffffdd98 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4298137 *)
mov L0x7fffffffdda0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4298141 *)
mov L0x7fffffffdda8 rcx;
(* pop    %rbp                                     #! PC = 0x4298145 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4298146 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4298147 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4298149 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4298151 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4298153 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4298155 *)
#retq                                           #! 0x4298155 = 0x4298155;
(* add    $0x550,%rsp                              #! PC = 0x4210130 *)
/* adds carry rsp rsp 0x550; */
(* pop    %rbx                                     #! PC = 0x4210137 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4210138 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4210139 *)
/* pop r12; */
(* pop    %r13                                     #! PC = 0x4210141 *)
/* pop r13; */
(* pop    %r14                                     #! PC = 0x4210143 *)
/* pop r14; */
(* #retq                                           #! PC = 0x4210145 *)
#retq                                           #! 0x4210145 = 0x4210145;

/* NOTE END fp_rdc(c[1], t4); */
mov c1_0 L0x7fffffffdd50;
mov c1_1 L0x7fffffffdd58;
mov c1_2 L0x7fffffffdd60;
mov c1_3 L0x7fffffffdd68;
mov c1_4 L0x7fffffffdd70;
mov c1_5 L0x7fffffffdd78;

mov c2_0 L0x7fffffffdd80;
mov c2_1 L0x7fffffffdd88;
mov c2_2 L0x7fffffffdd90;
mov c2_3 L0x7fffffffdd98;
mov c2_4 L0x7fffffffdda0;
mov c2_5 L0x7fffffffdda8;

{
  and [
  (limbs 64 [0, 0, 0, 0, 0, 0, c1_0, c1_1, c1_2, c1_3, c1_4, c1_5])
  = (
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) *
    (limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5]) -
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [b2_0, b2_1, b2_2, b2_3, b2_4, b2_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, c2_0, c2_1, c2_2, c2_3, c2_4, c2_5])
  = (
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5]) +
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) *
    (limbs 64 [b2_0, b2_1, b2_2, b2_3, b2_4, b2_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ]
  &&
  and [
      limbs 64 [c1_0, c1_1, c1_2, c1_3, c1_4, c1_5] <
      limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
      0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
      0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
      limbs 64 [c2_0, c2_1, c2_2, c2_3, c2_4, c2_5] <
      limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
      0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
      0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}
