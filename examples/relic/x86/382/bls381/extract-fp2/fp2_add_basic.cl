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

mov L0x7fffffffddb0 a1_0;
mov L0x7fffffffddb8 a1_1;
mov L0x7fffffffddc0 a1_2;
mov L0x7fffffffddc8 a1_3;
mov L0x7fffffffddd0 a1_4;
mov L0x7fffffffddd8 a1_5;

mov L0x7fffffffdde0 a2_0;
mov L0x7fffffffdde8 a2_1;
mov L0x7fffffffddf0 a2_2;
mov L0x7fffffffddf8 a2_3;
mov L0x7fffffffde00 a2_4;
mov L0x7fffffffde08 a2_5;

mov L0x7fffffffde10 b1_0;
mov L0x7fffffffde18 b1_1;
mov L0x7fffffffde20 b1_2;
mov L0x7fffffffde28 b1_3;
mov L0x7fffffffde30 b1_4;
mov L0x7fffffffde38 b1_5;

mov L0x7fffffffde40 b2_0;
mov L0x7fffffffde48 b2_1;
mov L0x7fffffffde50 b2_2;
mov L0x7fffffffde58 b2_3;
mov L0x7fffffffde60 b2_4;
mov L0x7fffffffde68 b2_5;

mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_add_basic: *)
/* fp2_add_basic:; */
(* push   %r12                                     #! PC = 0x4210848 *)
/* push   %%r12                                     #! 0x4210848 = 0x4210848; */
(* push   %rbp                                     #! PC = 0x4210850 *)
/* push   %%rbp                                     #! 0x4210850 = 0x4210850; */
(* mov    %rdx,%r12                                #! PC = 0x4210851 *)
/* mov r12 rdx; */
(* push   %rbx                                     #! PC = 0x4210854 *)
/* push   %%rbx                                     #! 0x4210854 = 0x4210854; */
(* mov    %rsi,%rbp                                #! PC = 0x4210855 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4210858 *)
/* mov    %rdi,%%rbx                                #! 0x4210858 = 0x4210858; */
(* #callq  0x426ab0 <fp_add_integ>                 #! PC = 0x4210861 *)
/* #callq  0x426ab0 <fp_add_integ>                 #! 0x4210861 = 0x4210861; */
(* #jmpq   0x417fc7 <fp_addm_low>                  #! PC = 0x4352688 *)
/* #jmpq   0x417fc7 <fp_addm_low>                  #! 0x4352688 = 0x4352688; */
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push   %%rbx                                     #! 0x4292551 = 0x4292551; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push   %%rbp                                     #! 0x4292552 = 0x4292552; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push   %%r12                                     #! 0x4292553 = 0x4292553; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push   %%r13                                     #! 0x4292555 = 0x4292555; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffddb0; Value = 0xfe03ef3f51fe1cbf; PC = 0x4292557 *)
mov r8 L0x7fffffffddb0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0xc2b0d62689c42739; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde10;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffddb8; Value = 0xac91ba75b236a459; PC = 0x4292563 *)
mov r9 L0x7fffffffddb8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0xfa0c705044bc9f49; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde18 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffddc0; Value = 0x96f854ed6a43828c; PC = 0x4292571 *)
mov r10 L0x7fffffffddc0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0x6625cba627250179; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde20 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffddc8; Value = 0xfb702a16c8623ea7; PC = 0x4292579 *)
mov r11 L0x7fffffffddc8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xb250c0f1133fe1dd; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde28 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffddd0; Value = 0x5cccd0117e5cc5b2; PC = 0x4292587 *)
mov r12 L0x7fffffffddd0;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xf8a98b1b2f5ecd38; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde30 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffddd8; Value = 0x0c904127020f8461; PC = 0x4292595 *)
mov r13 L0x7fffffffddd8;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x16f52e8a1b9b5622; PC = 0x4292599 *)
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd50; PC = 0x4292687 *)
mov L0x7fffffffdd50 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd58; PC = 0x4292690 *)
mov L0x7fffffffdd58 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd60; PC = 0x4292694 *)
mov L0x7fffffffdd60 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd68; PC = 0x4292698 *)
mov L0x7fffffffdd68 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4292702 *)
mov L0x7fffffffdd70 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4292706 *)
mov L0x7fffffffdd78 r13;
(* pop    %r13                                     #! PC = 0x4292710 *)
/* pop    %%r13                                     #! 0x4292710 = 0x4292710; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop    %%r12                                     #! 0x4292712 = 0x4292712; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop    %%rbp                                     #! 0x4292714 = 0x4292714; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop    %%rbx                                     #! 0x4292715 = 0x4292715; */
(* #retq                                           #! PC = 0x4292716 *)
/* #retq                                           #! 0x4292716 = 0x4292716; */
(* lea    0x30(%r12),%rdx                          #! PC = 0x4210866 *)
/* lea    0x30(%%r12),%%rdx                          #! 0x4210866 = 0x4210866; */
(* lea    0x30(%rbp),%rsi                          #! PC = 0x4210871 *)
/* lea    0x30(%%rbp),%%rsi                          #! 0x4210871 = 0x4210871; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4210875 *)
/* lea    0x30(%%rbx),%rdi                          #! 0x4210875 = 0x4210875; */
(* pop    %rbx                                     #! PC = 0x4210879 *)
/* pop    %%rbx                                     #! 0x4210879 = 0x4210879; */
(* pop    %rbp                                     #! PC = 0x4210880 *)
/* pop    %%rbp                                     #! 0x4210880 = 0x4210880; */
(* pop    %r12                                     #! PC = 0x4210881 *)
/* pop    %%r12                                     #! 0x4210881 = 0x4210881; */
(* #jmpq   0x426ab0 <fp_add_integ>                 #! PC = 0x4210883 *)
/* #jmpq   0x426ab0 <fp_add_integ>                 #! 0x4210883 = 0x4210883; */
(* #jmpq   0x417fc7 <fp_addm_low>                  #! PC = 0x4352688 *)
/* #jmpq   0x417fc7 <fp_addm_low>                  #! 0x4352688 = 0x4352688; */
(* push   %rbx                                     #! PC = 0x4292551 *)
/* push   %%rbx                                     #! 0x4292551 = 0x4292551; */
(* push   %rbp                                     #! PC = 0x4292552 *)
/* push   %%rbp                                     #! 0x4292552 = 0x4292552; */
(* push   %r12                                     #! PC = 0x4292553 *)
/* push   %%r12                                     #! 0x4292553 = 0x4292553; */
(* push   %r13                                     #! PC = 0x4292555 *)
/* push   %%r13                                     #! 0x4292555 = 0x4292555; */
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffdde0; Value = 0x41adff1277769857; PC = 0x4292557 *)
mov r8 L0x7fffffffdde0;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x5cca93c76048f647; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde40;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffdde8; Value = 0x82775e31a529e685; PC = 0x4292563 *)
mov r9 L0x7fffffffdde8;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde48; Value = 0x074092f6e229c24e; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde48 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffddf0; Value = 0x37c2cc7c76258ff0; PC = 0x4292571 *)
mov r10 L0x7fffffffddf0;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde50; Value = 0x8c1f7c6238c59eff; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde50 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffddf8; Value = 0x2293d1396c3cdbbb; PC = 0x4292579 *)
mov r11 L0x7fffffffddf8;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde58; Value = 0xbc9dbf08cf2f6854; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde58 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde00; Value = 0xdb3b95c567e60a43; PC = 0x4292587 *)
mov r12 L0x7fffffffde00;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde60; Value = 0x344084db6a00a0f8; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde60 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde08; Value = 0x0d29732f3bc54262; PC = 0x4292595 *)
mov r13 L0x7fffffffde08;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde68; Value = 0x035f675a16253106; PC = 0x4292599 *)
adc r13 r13 L0x7fffffffde68 carry;
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdd80; PC = 0x4292687 *)
mov L0x7fffffffdd80 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdd88; PC = 0x4292690 *)
mov L0x7fffffffdd88 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x4292694 *)
mov L0x7fffffffdd90 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x4292698 *)
mov L0x7fffffffdd98 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4292702 *)
mov L0x7fffffffdda0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4292706 *)
mov L0x7fffffffdda8 r13;
(* pop    %r13                                     #! PC = 0x4292710 *)
/* pop    %%r13                                     #! 0x4292710 = 0x4292710; */
(* pop    %r12                                     #! PC = 0x4292712 *)
/* pop    %%r12                                     #! 0x4292712 = 0x4292712; */
(* pop    %rbp                                     #! PC = 0x4292714 *)
/* pop    %%rbp                                     #! 0x4292714 = 0x4292714; */
(* pop    %rbx                                     #! PC = 0x4292715 *)
/* pop    %%rbx                                     #! 0x4292715 = 0x4292715; */
(* #retq                                           #! PC = 0x4292716 *)
/* #retq                                           #! 0x4292716 = 0x4292716; */

mov r1_0 L0x7fffffffdd50;
mov r1_1 L0x7fffffffdd58;
mov r1_2 L0x7fffffffdd60;
mov r1_3 L0x7fffffffdd68;
mov r1_4 L0x7fffffffdd70;
mov r1_5 L0x7fffffffdd78;

mov r2_0 L0x7fffffffdd80;
mov r2_1 L0x7fffffffdd88;
mov r2_2 L0x7fffffffdd90;
mov r2_3 L0x7fffffffdd98;
mov r2_4 L0x7fffffffdda0;
mov r2_5 L0x7fffffffdda8;


{
  and [
      eqmod (limbs 64 [r1_0, r1_1, r1_2, r1_3, r1_4, r1_5])
      (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5] +
      limbs 64 [b1_0, b1_1, b1_2, b1_3, b1_4, b1_5])
      (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
      0x6730d2a0f6b0f624, 0x64774b84f38512bf,
      0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]),
      eqmod (limbs 64 [r2_0, r2_1, r2_2, r2_3, r2_4, r2_5])
      (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5] +
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
