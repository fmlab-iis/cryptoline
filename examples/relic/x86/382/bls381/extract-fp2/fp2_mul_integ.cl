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

mov L0x7fffffffdd50 a1_0;
mov L0x7fffffffdd58 a1_1;
mov L0x7fffffffdd60 a1_2;
mov L0x7fffffffdd68 a1_3;
mov L0x7fffffffdd70 a1_4;
mov L0x7fffffffdd78 a1_5;

mov L0x7fffffffdd80 a2_0;
mov L0x7fffffffdd88 a2_1;
mov L0x7fffffffdd90 a2_2;
mov L0x7fffffffdd98 a2_3;
mov L0x7fffffffdda0 a2_4;
mov L0x7fffffffdda8 a2_5;

mov L0x7fffffffdcf0 b1_0;
mov L0x7fffffffdcf8 b1_1;
mov L0x7fffffffdd00 b1_2;
mov L0x7fffffffdd08 b1_3;
mov L0x7fffffffdd10 b1_4;
mov L0x7fffffffdd18 b1_5;

mov L0x7fffffffdd20 b2_0;
mov L0x7fffffffdd28 b2_1;
mov L0x7fffffffdd30 b2_2;
mov L0x7fffffffdd38 b2_3;
mov L0x7fffffffdd40 b2_4;
mov L0x7fffffffdd48 b2_5;

mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;


(* fp2_mul_integ: *)
/* fp2_mul_integ:; */
(* #jmpq   0x415df0 <fp2_mulm_low>                 #! PC = 0x4210256 *)
#jmpq   0x415df0 <fp2_mulm_low>                 #! 0x4210256 = 0x4210256;
(* push   %r14                                     #! PC = 0x4283888 *)
/* push r14; */
(* push   %r13                                     #! PC = 0x4283890 *)
/* push r13; */
(* mov    %rdi,%r14                                #! PC = 0x4283892 *)
/* mov r14 rdi; */
(* push   %r12                                     #! PC = 0x4283895 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4283897 *)
/* push rbp; */
(* lea    0x30(%rsi),%r12                          #! PC = 0x4283898 *)
/* lea    %%EA,%%r12                          #! 0x4283898 = 0x4283898; */
(* push   %rbx                                     #! PC = 0x4283902 *)
/* push rbx; */
(* mov    %rdx,%rbp                                #! PC = 0x4283903 *)
/* mov rbp rdx; */
(* mov    %rsi,%rbx                                #! PC = 0x4283906 *)
/* mov rbx rsi; */
(* lea    0x30(%rbp),%r13                          #! PC = 0x4283909 *)
/* lea    %%EA,%%r13                          #! 0x4283909 = 0x4283909; */
(* mov    %r12,%rdx                                #! PC = 0x4283913 *)
/* mov rdx r12; */
(* sub    $0x340,%rsp                              #! PC = 0x4283916 *)
/* subb carry rsp rsp 0x340@uint64; */
(* mov    %rsp,%rdi                                #! PC = 0x4283923 *)
/* mov rdi rsp; */
(* #callq  0x417f7a <fp_addn_low>                  #! PC = 0x4283926 *)
#callq  0x417f7a <fp_addn_low>                  #! 0x4283926 = 0x4283926;
(* xor    %rax,%rax                                #! PC = 0x4292474 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4292477 *)
mov r11 L0x7fffffffdd80;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4292480 *)
adds carry r11 r11 L0x7fffffffdd50;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd920; PC = 0x4292483 *)
mov L0x7fffffffd920 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4292486 *)
mov r11 L0x7fffffffdd88;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4292490 *)
adcs carry r11 r11 L0x7fffffffdd58 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd928; PC = 0x4292494 *)
mov L0x7fffffffd928 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4292498 *)
mov r11 L0x7fffffffdd90;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4292502 *)
adcs carry r11 r11 L0x7fffffffdd60 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffd930; PC = 0x4292506 *)
mov L0x7fffffffd930 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4292510 *)
mov r11 L0x7fffffffdd98;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4292514 *)
adcs carry r11 r11 L0x7fffffffdd68 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd938; PC = 0x4292518 *)
mov L0x7fffffffd938 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4292522 *)
mov r11 L0x7fffffffdda0;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4292526 *)
adcs carry r11 r11 L0x7fffffffdd70 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffd940; PC = 0x4292530 *)
mov L0x7fffffffd940 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4292534 *)
mov r11 L0x7fffffffdda8;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4292538 *)
adcs carry r11 r11 L0x7fffffffdd78 carry;

assert true && carry = 0@1;
assume carry = 0 && carry = 0@1;

(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd948; PC = 0x4292542 *)
mov L0x7fffffffd948 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292546 *)
adc rax rax 0x0@uint64 carry;
(* #retq                                           #! PC = 0x4292550 *)
#retq                                           #! 0x4292550 = 0x4292550;
(* lea    0x60(%rsp),%rdi                          #! PC = 0x4283931 *)
/* lea    %%EA,%%rdi                          #! 0x4283931 = 0x4283931; */
(* mov    %r13,%rdx                                #! PC = 0x4283936 *)
/* mov rdx r13; */
(* mov    %rbp,%rsi                                #! PC = 0x4283939 *)
/* mov rsi rbp; */
(* #callq  0x417f7a <fp_addn_low>                  #! PC = 0x4283942 *)
#callq  0x417f7a <fp_addn_low>                  #! 0x4283942 = 0x4283942;
(* xor    %rax,%rax                                #! PC = 0x4292474 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffdd20; Value = 0xa006973fe783c6c1; PC = 0x4292477 *)
mov r11 L0x7fffffffdd20;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffdcf0; Value = 0xdfe5ff4cdf26d85e; PC = 0x4292480 *)
adds carry r11 r11 L0x7fffffffdcf0;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd980; PC = 0x4292483 *)
mov L0x7fffffffd980 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffdd28; Value = 0x06828c1cfb27fd97; PC = 0x4292486 *)
mov r11 L0x7fffffffdd28;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffdcf8; Value = 0xdf439a3fed1e8c17; PC = 0x4292490 *)
adcs carry r11 r11 L0x7fffffffdcf8 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd988; PC = 0x4292494 *)
mov L0x7fffffffd988 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffdd30; Value = 0x966e736c0ad31f48; PC = 0x4292498 *)
mov r11 L0x7fffffffdd30;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffdd00; Value = 0x0bfb8db239dc8299; PC = 0x4292502 *)
adcs carry r11 r11 L0x7fffffffdd00 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffd990; PC = 0x4292506 *)
mov L0x7fffffffd990 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffdd38; Value = 0x9c6e4e1a4984cf95; PC = 0x4292510 *)
mov r11 L0x7fffffffdd38;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdd08; Value = 0x7ea66fe3804f0602; PC = 0x4292514 *)
adcs carry r11 r11 L0x7fffffffdd08 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd998; PC = 0x4292518 *)
mov L0x7fffffffd998 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffdd40; Value = 0x14856bb2ebd6b4c3; PC = 0x4292522 *)
mov r11 L0x7fffffffdd40;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffdd10; Value = 0x6e1cfa389f4e8875; PC = 0x4292526 *)
adcs carry r11 r11 L0x7fffffffdd10 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffd9a0; PC = 0x4292530 *)
mov L0x7fffffffd9a0 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffdd48; Value = 0x1298a8d5797df5ee; PC = 0x4292534 *)
mov r11 L0x7fffffffdd48;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffdd18; Value = 0x09dab4eea8842efe; PC = 0x4292538 *)
adcs carry r11 r11 L0x7fffffffdd18 carry;

assert true && carry = 0@1;
assume carry = 0 && carry = 0@1;

(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd9a8; PC = 0x4292542 *)
mov L0x7fffffffd9a8 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292546 *)
adc rax rax 0x0@uint64 carry;
(* #retq                                           #! PC = 0x4292550 *)
#retq                                           #! 0x4292550 = 0x4292550;
(* mov    %rbx,%rsi                                #! PC = 0x4283947 *)
/* mov rsi rbx; */
(* lea    0x120(%rsp),%rdi                         #! PC = 0x4283950 *)
/* lea    %%EA,%%rdi                         #! 0x4283950 = 0x4283950; */
(* lea    0x230(%rsp),%rbx                         #! PC = 0x4283958 *)
/* lea    %%EA,%%rbx                         #! 0x4283958 = 0x4283958; */
(* mov    %rbp,%rdx                                #! PC = 0x4283966 *)
/* mov rdx rbp; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4283969 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4283969 = 0x4283969;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294632 *)
mov rax L0x7fffffffdd50;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffdcf0;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda40; PC = 0x4294638 *)
mov L0x7fffffffda40 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294650 *)
mov rax L0x7fffffffdd50;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4294667 *)
mov rax L0x7fffffffdd58;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffdcf0;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffda48; PC = 0x4294677 *)
mov L0x7fffffffda48 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294691 *)
mov rax L0x7fffffffdd50;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4294708 *)
mov rax L0x7fffffffdd58;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4294726 *)
mov rax L0x7fffffffdd60;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffdcf0;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffda50; PC = 0x4294736 *)
mov L0x7fffffffda50 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294750 *)
mov rax L0x7fffffffdd50;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4294767 *)
mov rax L0x7fffffffdd58;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4294785 *)
mov rax L0x7fffffffdd60;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4294803 *)
mov rax L0x7fffffffdd68;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffdcf0;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffda58; PC = 0x4294813 *)
mov L0x7fffffffda58 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294827 *)
mov rax L0x7fffffffdd50;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4294844 *)
mov rax L0x7fffffffdd58;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4294862 *)
mov rax L0x7fffffffdd60;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4294880 *)
mov rax L0x7fffffffdd68;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4294898 *)
mov rax L0x7fffffffdd70;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffdcf0;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda60; PC = 0x4294908 *)
mov L0x7fffffffda60 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd50; Value = 0x00522ff7a57ba8fc; PC = 0x4294922 *)
mov rax L0x7fffffffdd50;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4294939 *)
mov rax L0x7fffffffdd58;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4294957 *)
mov rax L0x7fffffffdd60;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4294975 *)
mov rax L0x7fffffffdd68;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4294993 *)
mov rax L0x7fffffffdd70;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295011 *)
mov rax L0x7fffffffdd78;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcf0; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffdcf0;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffda68; PC = 0x4295021 *)
mov L0x7fffffffda68 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd58; Value = 0x3f92d00ee5aef8cf; PC = 0x4295035 *)
mov rax L0x7fffffffdd58;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4295053 *)
mov rax L0x7fffffffdd60;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4295071 *)
mov rax L0x7fffffffdd68;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4295089 *)
mov rax L0x7fffffffdd70;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295107 *)
mov rax L0x7fffffffdd78;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcf8; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffdcf8;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffda70; PC = 0x4295118 *)
mov L0x7fffffffda70 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd60; Value = 0x25aaee9a98f044de; PC = 0x4295132 *)
mov rax L0x7fffffffdd60;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4295150 *)
mov rax L0x7fffffffdd68;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4295168 *)
mov rax L0x7fffffffdd70;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295186 *)
mov rax L0x7fffffffdd78;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd00; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffdd00;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffda78; PC = 0x4295197 *)
mov L0x7fffffffda78 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd68; Value = 0x444b057d218d2059; PC = 0x4295211 *)
mov rax L0x7fffffffdd68;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4295229 *)
mov rax L0x7fffffffdd70;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295247 *)
mov rax L0x7fffffffdd78;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd08; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffdd08;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffda80; PC = 0x4295258 *)
mov L0x7fffffffda80 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd70; Value = 0x2bd2f57831bcda1c; PC = 0x4295272 *)
mov rax L0x7fffffffdd70;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295290 *)
mov rax L0x7fffffffdd78;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd10; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffdd10;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffda88; PC = 0x4295301 *)
mov L0x7fffffffda88 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd78; Value = 0x111d9d144c14cf00; PC = 0x4295312 *)
mov rax L0x7fffffffdd78;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd18; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffdd18;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffda90; PC = 0x4295323 *)
mov L0x7fffffffda90 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffda98; PC = 0x4295330 *)
mov L0x7fffffffda98 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
(* mov    %r13,%rdx                                #! PC = 0x4283974 *)
/* mov rdx r13; */
(* mov    %r12,%rsi                                #! PC = 0x4283977 *)
/* mov rsi r12; */
(* mov    %rbx,%rdi                                #! PC = 0x4283980 *)
/* mov rdi rbx; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4283983 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4283983 = 0x4283983;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
mov rcx rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294632 *)
mov rax L0x7fffffffdd80;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffdd20;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdb50; PC = 0x4294638 *)
mov L0x7fffffffdb50 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294650 *)
mov rax L0x7fffffffdd80;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4294667 *)
mov rax L0x7fffffffdd88;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffdd20;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdb58; PC = 0x4294677 *)
mov L0x7fffffffdb58 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294691 *)
mov rax L0x7fffffffdd80;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4294708 *)
mov rax L0x7fffffffdd88;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4294726 *)
mov rax L0x7fffffffdd90;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffdd20;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdb60; PC = 0x4294736 *)
mov L0x7fffffffdb60 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294750 *)
mov rax L0x7fffffffdd80;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4294767 *)
mov rax L0x7fffffffdd88;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4294785 *)
mov rax L0x7fffffffdd90;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4294803 *)
mov rax L0x7fffffffdd98;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffdd20;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x4294813 *)
mov L0x7fffffffdb68 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294827 *)
mov rax L0x7fffffffdd80;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4294844 *)
mov rax L0x7fffffffdd88;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4294862 *)
mov rax L0x7fffffffdd90;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4294880 *)
mov rax L0x7fffffffdd98;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4294898 *)
mov rax L0x7fffffffdda0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffdd20;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdb70; PC = 0x4294908 *)
mov L0x7fffffffdb70 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdd80; Value = 0x202674312aa9f185; PC = 0x4294922 *)
mov rax L0x7fffffffdd80;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4294939 *)
mov rax L0x7fffffffdd88;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4294957 *)
mov rax L0x7fffffffdd90;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4294975 *)
mov rax L0x7fffffffdd98;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4294993 *)
mov rax L0x7fffffffdda0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295011 *)
mov rax L0x7fffffffdda8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd20; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffdd20;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffdb78; PC = 0x4295021 *)
mov L0x7fffffffdb78 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdd88; Value = 0x8f2efdd900e7f6ff; PC = 0x4295035 *)
mov rax L0x7fffffffdd88;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4295053 *)
mov rax L0x7fffffffdd90;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4295071 *)
mov rax L0x7fffffffdd98;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4295089 *)
mov rax L0x7fffffffdda0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295107 *)
mov rax L0x7fffffffdda8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd28; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffdd28;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x4295118 *)
mov L0x7fffffffdb80 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd90; Value = 0x334a7f18ddbb1cbf; PC = 0x4295132 *)
mov rax L0x7fffffffdd90;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4295150 *)
mov rax L0x7fffffffdd98;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4295168 *)
mov rax L0x7fffffffdda0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295186 *)
mov rax L0x7fffffffdda8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd30; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffdd30;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdb88; PC = 0x4295197 *)
mov L0x7fffffffdb88 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd98; Value = 0x3980a83ee21fe8bc; PC = 0x4295211 *)
mov rax L0x7fffffffdd98;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4295229 *)
mov rax L0x7fffffffdda0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295247 *)
mov rax L0x7fffffffdda8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd38; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffdd38;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffdb90; PC = 0x4295258 *)
mov L0x7fffffffdb90 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdda0; Value = 0xaf7a93134daf8d2e; PC = 0x4295272 *)
mov rax L0x7fffffffdda0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295290 *)
mov rax L0x7fffffffdda8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdd40; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffdd40;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdb98; PC = 0x4295301 *)
mov L0x7fffffffdb98 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdda8; Value = 0x00eb3ad1cd2d6cf5; PC = 0x4295312 *)
mov rax L0x7fffffffdda8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdd48; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffdd48;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdba0; PC = 0x4295323 *)
mov L0x7fffffffdba0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdba8; PC = 0x4295330 *)
mov L0x7fffffffdba8 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
(* lea    0x60(%rsp),%rdx                          #! PC = 0x4283988 *)
/* lea    %%EA,%%rdx                          #! 0x4283988 = 0x4283988; */
(* lea    0xc0(%rsp),%rdi                          #! PC = 0x4283993 *)
/* lea    %%EA,%%rdi                          #! 0x4283993 = 0x4283993; */
(* mov    %rsp,%rsi                                #! PC = 0x4284001 *)
/* mov rsi rsp; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4284004 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4284004 = 0x4284004;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294632 *)
mov rax L0x7fffffffd920;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffd980;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd9e0; PC = 0x4294638 *)
mov L0x7fffffffd9e0 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294650 *)
mov rax L0x7fffffffd920;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4294667 *)
mov rax L0x7fffffffd928;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffd980;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd9e8; PC = 0x4294677 *)
mov L0x7fffffffd9e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294691 *)
mov rax L0x7fffffffd920;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4294708 *)
mov rax L0x7fffffffd928;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4294726 *)
mov rax L0x7fffffffd930;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffd980;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd9f0; PC = 0x4294736 *)
mov L0x7fffffffd9f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294750 *)
mov rax L0x7fffffffd920;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4294767 *)
mov rax L0x7fffffffd928;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4294785 *)
mov rax L0x7fffffffd930;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4294803 *)
mov rax L0x7fffffffd938;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffd980;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd9f8; PC = 0x4294813 *)
mov L0x7fffffffd9f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294827 *)
mov rax L0x7fffffffd920;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4294844 *)
mov rax L0x7fffffffd928;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4294862 *)
mov rax L0x7fffffffd930;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4294880 *)
mov rax L0x7fffffffd938;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4294898 *)
mov rax L0x7fffffffd940;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffd980;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda00; PC = 0x4294908 *)
mov L0x7fffffffda00 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd920; Value = 0x2078a428d0259a81; PC = 0x4294922 *)
mov rax L0x7fffffffd920;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4294939 *)
mov rax L0x7fffffffd928;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4294957 *)
mov rax L0x7fffffffd930;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4294975 *)
mov rax L0x7fffffffd938;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4294993 *)
mov rax L0x7fffffffd940;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295011 *)
mov rax L0x7fffffffd948;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd980; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffd980;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x4295021 *)
mov L0x7fffffffda08 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd928; Value = 0xcec1cde7e696efce; PC = 0x4295035 *)
mov rax L0x7fffffffd928;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4295053 *)
mov rax L0x7fffffffd930;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4295071 *)
mov rax L0x7fffffffd938;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4295089 *)
mov rax L0x7fffffffd940;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295107 *)
mov rax L0x7fffffffd948;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd988; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffd988;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x4295118 *)
mov L0x7fffffffda10 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x58f56db376ab619d; PC = 0x4295132 *)
mov rax L0x7fffffffd930;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4295150 *)
mov rax L0x7fffffffd938;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4295168 *)
mov rax L0x7fffffffd940;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295186 *)
mov rax L0x7fffffffd948;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd990; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffda18; PC = 0x4295197 *)
mov L0x7fffffffda18 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd938; Value = 0x7dcbadbc03ad0915; PC = 0x4295211 *)
mov rax L0x7fffffffd938;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4295229 *)
mov rax L0x7fffffffd940;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295247 *)
mov rax L0x7fffffffd948;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd998; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffda20; PC = 0x4295258 *)
mov L0x7fffffffda20 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xdb4d888b7f6c674a; PC = 0x4295272 *)
mov rax L0x7fffffffd940;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295290 *)
mov rax L0x7fffffffd948;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffda28; PC = 0x4295301 *)
mov L0x7fffffffda28 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1208d7e619423bf5; PC = 0x4295312 *)
mov rax L0x7fffffffd948;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffda30; PC = 0x4295323 *)
mov L0x7fffffffda30 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffda38; PC = 0x4295330 *)
mov L0x7fffffffda38 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
(* lea    0x120(%rsp),%rsi                         #! PC = 0x4284009 *)
/* lea    %%EA,%%rsi                         #! 0x4284009 = 0x4284009; */
(* mov    %rbx,%rdx                                #! PC = 0x4284017 *)
/* mov rdx rbx; */
(* mov    %rsp,%rdi                                #! PC = 0x4284020 *)
/* mov rdi rsp; */
(* #callq  0x41806d <fp_addd_low>                  #! PC = 0x4284023 *)
#callq  0x41806d <fp_addd_low>                  #! 0x4284023 = 0x4284023;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffdb50; Value = 0x53e9b0b134faf345; PC = 0x4292717 *)
mov r11 L0x7fffffffdb50;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffda40; Value = 0x4a0507edb364ac88; PC = 0x4292720 *)
adds carry r11 r11 L0x7fffffffda40;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd920; PC = 0x4292723 *)
mov L0x7fffffffd920 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffdb58; Value = 0x8883728d0e7c6560; PC = 0x4292726 *)
mov r11 L0x7fffffffdb58;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffda48; Value = 0x27da35bf68195214; PC = 0x4292730 *)
adcs carry r11 r11 L0x7fffffffda48 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd928; PC = 0x4292734 *)
mov L0x7fffffffd928 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffdb60; Value = 0x39f5bf09122aad20; PC = 0x4292738 *)
mov r11 L0x7fffffffdb60;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffda50; Value = 0x713245b6da9a1238; PC = 0x4292742 *)
adcs carry r11 r11 L0x7fffffffda50 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffd930; PC = 0x4292746 *)
mov L0x7fffffffd930 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb68; Value = 0x13790db994a78fb7; PC = 0x4292750 *)
mov r11 L0x7fffffffdb68;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda58; Value = 0x299350224b913ecf; PC = 0x4292754 *)
adcs carry r11 r11 L0x7fffffffda58 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd938; PC = 0x4292758 *)
mov L0x7fffffffd938 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffdb70; Value = 0xf7713f71ef99d288; PC = 0x4292762 *)
mov r11 L0x7fffffffdb70;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffda60; Value = 0x994ec25872d21bec; PC = 0x4292766 *)
adcs carry r11 r11 L0x7fffffffda60 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffd940; PC = 0x4292770 *)
mov L0x7fffffffd940 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffdb78; Value = 0xb1f223e00ec9daf7; PC = 0x4292774 *)
mov r11 L0x7fffffffdb78;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffda68; Value = 0xd2fe4b8c9e9559b6; PC = 0x4292778 *)
adcs carry r11 r11 L0x7fffffffda68 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd948; PC = 0x4292782 *)
mov L0x7fffffffd948 r11;
(* mov    0x30(%rdx),%r11                          #! EA = L0x7fffffffdb80; Value = 0x26800a414ed56017; PC = 0x4292786 *)
mov r11 L0x7fffffffdb80;
(* adc    0x30(%rsi),%r11                          #! EA = L0x7fffffffda70; Value = 0xb0ca1c709324ac95; PC = 0x4292790 *)
adcs carry r11 r11 L0x7fffffffda70 carry;
(* mov    %r11,0x30(%rdi)                          #! EA = L0x7fffffffd950; PC = 0x4292794 *)
mov L0x7fffffffd950 r11;
(* mov    0x38(%rdx),%r11                          #! EA = L0x7fffffffdb88; Value = 0x60bd7c910c90d120; PC = 0x4292798 *)
mov r11 L0x7fffffffdb88;
(* adc    0x38(%rsi),%r11                          #! EA = L0x7fffffffda78; Value = 0x3e0c28f55e73ce95; PC = 0x4292802 *)
adcs carry r11 r11 L0x7fffffffda78 carry;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7fffffffd958; PC = 0x4292806 *)
mov L0x7fffffffd958 r11;
(* mov    0x40(%rdx),%r11                          #! EA = L0x7fffffffdb90; Value = 0xf0a9e8e20e0a8ae9; PC = 0x4292810 *)
mov r11 L0x7fffffffdb90;
(* adc    0x40(%rsi),%r11                          #! EA = L0x7fffffffda80; Value = 0x6421bf2e1d5a9074; PC = 0x4292814 *)
adcs carry r11 r11 L0x7fffffffda80 carry;
(* mov    %r11,0x40(%rdi)                          #! EA = L0x7fffffffd960; PC = 0x4292818 *)
mov L0x7fffffffd960 r11;
(* mov    0x48(%rdx),%r11                          #! EA = L0x7fffffffdb98; Value = 0x9d5c92c5807ecb0c; PC = 0x4292822 *)
mov r11 L0x7fffffffdb98;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffda88; Value = 0x52e0710f9afd099e; PC = 0x4292826 *)
adcs carry r11 r11 L0x7fffffffda88 carry;
(* mov    %r11,0x48(%rdi)                          #! EA = L0x7fffffffd968; PC = 0x4292830 *)
mov L0x7fffffffd968 r11;
(* mov    0x50(%rdx),%r11                          #! EA = L0x7fffffffdba0; Value = 0x5afdadfa96dbfdf2; PC = 0x4292834 *)
mov r11 L0x7fffffffdba0;
(* adc    0x50(%rsi),%r11                          #! EA = L0x7fffffffda90; Value = 0x49f1591802f341c7; PC = 0x4292838 *)
adcs carry r11 r11 L0x7fffffffda90 carry;
(* mov    %r11,0x50(%rdi)                          #! EA = L0x7fffffffd970; PC = 0x4292842 *)
mov L0x7fffffffd970 r11;
(* mov    0x58(%rdx),%r11                          #! EA = L0x7fffffffdba8; Value = 0x00111668cfc04662; PC = 0x4292846 *)
mov r11 L0x7fffffffdba8;
(* adc    0x58(%rsi),%r11                          #! EA = L0x7fffffffda98; Value = 0x00a8a9d6413418db; PC = 0x4292850 *)
adc r11 r11 L0x7fffffffda98 carry;
(* mov    %r11,0x58(%rdi)                          #! EA = L0x7fffffffd978; PC = 0x4292854 *)
mov L0x7fffffffd978 r11;
(* #retq                                           #! PC = 0x4292858 *)
#retq                                           #! 0x4292858 = 0x4292858;
(* lea    0x120(%rsp),%rsi                         #! PC = 0x4284028 *)
/* lea    %%EA,%%rsi                         #! 0x4284028 = 0x4284028; */
(* mov    %rbx,%rdx                                #! PC = 0x4284036 *)
/* mov rdx rbx; */
(* mov    %rsi,%rdi                                #! PC = 0x4284039 *)
/* mov rdi rsi; */
(* #callq  0x4183bf <fp_subc_low>                  #! PC = 0x4284042 *)
#callq  0x4183bf <fp_subc_low>                  #! 0x4284042 = 0x4284042;
(* xor    %rax,%rax                                #! PC = 0x4293567 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293570 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda40; Value = 0x4a0507edb364ac88; PC = 0x4293573 *)
mov r8 L0x7fffffffda40;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdb50; Value = 0x53e9b0b134faf345; PC = 0x4293576 *)
subb carry r8 r8 L0x7fffffffdb50;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffda40; PC = 0x4293579 *)
mov L0x7fffffffda40 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffda48; Value = 0x27da35bf68195214; PC = 0x4293582 *)
mov r8 L0x7fffffffda48;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffdb58; Value = 0x8883728d0e7c6560; PC = 0x4293586 *)
sbbs carry r8 r8 L0x7fffffffdb58 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffda48; PC = 0x4293590 *)
mov L0x7fffffffda48 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffda50; Value = 0x713245b6da9a1238; PC = 0x4293594 *)
mov r8 L0x7fffffffda50;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffdb60; Value = 0x39f5bf09122aad20; PC = 0x4293598 *)
sbbs carry r8 r8 L0x7fffffffdb60 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda50; PC = 0x4293602 *)
mov L0x7fffffffda50 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffda58; Value = 0x299350224b913ecf; PC = 0x4293606 *)
mov r8 L0x7fffffffda58;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffdb68; Value = 0x13790db994a78fb7; PC = 0x4293610 *)
sbbs carry r8 r8 L0x7fffffffdb68 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffda58; PC = 0x4293614 *)
mov L0x7fffffffda58 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffda60; Value = 0x994ec25872d21bec; PC = 0x4293618 *)
mov r8 L0x7fffffffda60;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffdb70; Value = 0xf7713f71ef99d288; PC = 0x4293622 *)
sbbs carry r8 r8 L0x7fffffffdb70 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda60; PC = 0x4293626 *)
mov L0x7fffffffda60 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffda68; Value = 0xd2fe4b8c9e9559b6; PC = 0x4293630 *)
mov r8 L0x7fffffffda68;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffdb78; Value = 0xb1f223e00ec9daf7; PC = 0x4293634 *)
sbbs carry r8 r8 L0x7fffffffdb78 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffda68; PC = 0x4293638 *)
mov L0x7fffffffda68 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffda70; Value = 0xb0ca1c709324ac95; PC = 0x4293642 *)
mov r8 L0x7fffffffda70;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffdb80; Value = 0x26800a414ed56017; PC = 0x4293646 *)
sbbs carry r8 r8 L0x7fffffffdb80 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffda70; PC = 0x4293650 *)
mov L0x7fffffffda70 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffda78; Value = 0x3e0c28f55e73ce95; PC = 0x4293654 *)
mov r8 L0x7fffffffda78;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffdb88; Value = 0x60bd7c910c90d120; PC = 0x4293658 *)
sbbs carry r8 r8 L0x7fffffffdb88 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffda78; PC = 0x4293662 *)
mov L0x7fffffffda78 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffda80; Value = 0x6421bf2e1d5a9074; PC = 0x4293666 *)
mov r8 L0x7fffffffda80;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffdb90; Value = 0xf0a9e8e20e0a8ae9; PC = 0x4293670 *)
sbbs carry r8 r8 L0x7fffffffdb90 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffda80; PC = 0x4293674 *)
mov L0x7fffffffda80 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffda88; Value = 0x52e0710f9afd099e; PC = 0x4293678 *)
mov r8 L0x7fffffffda88;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffdb98; Value = 0x9d5c92c5807ecb0c; PC = 0x4293682 *)
sbbs carry r8 r8 L0x7fffffffdb98 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffda88; PC = 0x4293686 *)
mov L0x7fffffffda88 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffda90; Value = 0x49f1591802f341c7; PC = 0x4293690 *)
mov r8 L0x7fffffffda90;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffdba0; Value = 0x5afdadfa96dbfdf2; PC = 0x4293694 *)
sbbs carry r8 r8 L0x7fffffffdba0 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffda90; PC = 0x4293698 *)
mov L0x7fffffffda90 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffda98; Value = 0x00a8a9d6413418db; PC = 0x4293702 *)
mov r8 L0x7fffffffda98;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffdba8; Value = 0x00111668cfc04662; PC = 0x4293706 *)
sbbs carry r8 r8 L0x7fffffffdba8 carry;

mov carry_1 carry;

(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffda98; PC = 0x4293710 *)
mov L0x7fffffffda98 r8;
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
(* add    %rax,0x30(%rdi)                          #! EA = L0x7fffffffda70; PC = 0x4293790 *)
adds carry L0x7fffffffda70 L0x7fffffffda70 rax;
(* adc    %rcx,0x38(%rdi)                          #! EA = L0x7fffffffda78; PC = 0x4293794 *)
adcs carry L0x7fffffffda78 L0x7fffffffda78 rcx carry;
(* adc    %r8,0x40(%rdi)                           #! EA = L0x7fffffffda80; PC = 0x4293798 *)
adcs carry L0x7fffffffda80 L0x7fffffffda80 r8 carry;
(* adc    %r9,0x48(%rdi)                           #! EA = L0x7fffffffda88; PC = 0x4293802 *)
adcs carry L0x7fffffffda88 L0x7fffffffda88 r9 carry;
(* adc    %r10,0x50(%rdi)                          #! EA = L0x7fffffffda90; PC = 0x4293806 *)
adcs carry L0x7fffffffda90 L0x7fffffffda90 r10 carry;
(* adc    %r11,0x58(%rdi)                          #! EA = L0x7fffffffda98; PC = 0x4293810 *)
adcs carry L0x7fffffffda98 L0x7fffffffda98 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;

(* #retq                                           #! PC = 0x4293814 *)
#retq                                           #! 0x4293814 = 0x4293814;
(* lea    0xc0(%rsp),%rsi                          #! PC = 0x4284047 *)
/* lea    %%EA,%%rsi                          #! 0x4284047 = 0x4284047; */
(* mov    %rsp,%rdx                                #! PC = 0x4284055 *)
/* mov rdx rsp; */
(* mov    %rbx,%rdi                                #! PC = 0x4284058 *)
/* mov rdi rbx; */
(* #callq  0x418331 <fp_subd_low>                  #! PC = 0x4284061 *)
#callq  0x418331 <fp_subd_low>                  #! 0x4284061 = 0x4284061;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd9e0; Value = 0xbbac9d3cef2dd49f; PC = 0x4293425 *)
mov r8 L0x7fffffffd9e0;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd920; Value = 0x9deeb89ee85f9fcd; PC = 0x4293428 *)
subb carry r8 r8 L0x7fffffffd920;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb50; PC = 0x4293431 *)
mov L0x7fffffffdb50 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd9e8; Value = 0x4938435ceeecd0fc; PC = 0x4293434 *)
mov r8 L0x7fffffffd9e8;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd928; Value = 0xb05da84c7695b774; PC = 0x4293438 *)
sbbs carry r8 r8 L0x7fffffffd928 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdb58; PC = 0x4293442 *)
mov L0x7fffffffdb58 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd9f0; Value = 0xb80a0b377d1704cc; PC = 0x4293446 *)
mov r8 L0x7fffffffd9f0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd930; Value = 0xab2804bfecc4bf58; PC = 0x4293450 *)
sbbs carry r8 r8 L0x7fffffffd930 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdb60; PC = 0x4293454 *)
mov L0x7fffffffdb60 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd9f8; Value = 0xc175f0576d9b7263; PC = 0x4293458 *)
mov r8 L0x7fffffffd9f8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd938; Value = 0x3d0c5ddbe038ce86; PC = 0x4293462 *)
sbbs carry r8 r8 L0x7fffffffd938 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdb68; PC = 0x4293466 *)
mov L0x7fffffffdb68 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffda00; Value = 0x91f2e6a90b08d69a; PC = 0x4293470 *)
mov r8 L0x7fffffffda00;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd940; Value = 0x90c001ca626bee74; PC = 0x4293474 *)
sbbs carry r8 r8 L0x7fffffffd940 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdb70; PC = 0x4293478 *)
mov L0x7fffffffdb70 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffda08; Value = 0xf285772d1cba2f7e; PC = 0x4293482 *)
mov r8 L0x7fffffffda08;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd948; Value = 0x84f06f6cad5f34ae; PC = 0x4293486 *)
sbbs carry r8 r8 L0x7fffffffd948 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdb78; PC = 0x4293490 *)
mov L0x7fffffffdb78 r8;
(* mov    0x30(%rsi),%r8                           #! EA = L0x7fffffffda10; Value = 0xd2412ccc3e24369a; PC = 0x4293494 *)
mov r8 L0x7fffffffda10;
(* sbb    0x30(%rdx),%r8                           #! EA = L0x7fffffffd950; Value = 0xd74a26b1e1fa0cad; PC = 0x4293498 *)
sbbs carry r8 r8 L0x7fffffffd950 carry;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffdb80; PC = 0x4293502 *)
mov L0x7fffffffdb80 r8;
(* mov    0x38(%rsi),%r8                           #! EA = L0x7fffffffda18; Value = 0x0b3608fd7e902dad; PC = 0x4293506 *)
mov r8 L0x7fffffffda18;
(* sbb    0x38(%rdx),%r8                           #! EA = L0x7fffffffd958; Value = 0x9ec9a5866b049fb5; PC = 0x4293510 *)
sbbs carry r8 r8 L0x7fffffffd958 carry;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdb88; PC = 0x4293514 *)
mov L0x7fffffffdb88 r8;
(* mov    0x40(%rsi),%r8                           #! EA = L0x7fffffffda20; Value = 0xde860cb99fd77477; PC = 0x4293518 *)
mov r8 L0x7fffffffda20;
(* sbb    0x40(%rdx),%r8                           #! EA = L0x7fffffffd960; Value = 0x54cba8102b651b5d; PC = 0x4293522 *)
sbbs carry r8 r8 L0x7fffffffd960 carry;
(* mov    %r8,0x40(%rdi)                           #! EA = L0x7fffffffdb90; PC = 0x4293526 *)
mov L0x7fffffffdb90 r8;
(* mov    0x48(%rsi),%r8                           #! EA = L0x7fffffffda28; Value = 0x8920ea2795547d27; PC = 0x4293530 *)
mov r8 L0x7fffffffda28;
(* sbb    0x48(%rdx),%r8                           #! EA = L0x7fffffffd968; Value = 0xf03d03d51b7bd4ab; PC = 0x4293534 *)
sbbs carry r8 r8 L0x7fffffffd968 carry;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffdb98; PC = 0x4293538 *)
mov L0x7fffffffdb98 r8;
(* mov    0x50(%rsi),%r8                           #! EA = L0x7fffffffda30; Value = 0x60ca883bf0a430af; PC = 0x4293542 *)
mov r8 L0x7fffffffda30;
(* sbb    0x50(%rdx),%r8                           #! EA = L0x7fffffffd970; Value = 0xa4ef071299cf3fb9; PC = 0x4293546 *)
sbbs carry r8 r8 L0x7fffffffd970 carry;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdba0; PC = 0x4293550 *)
mov L0x7fffffffdba0 r8;
(* mov    0x58(%rsi),%r8                           #! EA = L0x7fffffffda38; Value = 0x020118312eb9ce00; PC = 0x4293554 *)
mov r8 L0x7fffffffda38;
(* sbb    0x58(%rdx),%r8                           #! EA = L0x7fffffffd978; Value = 0x00b9c03f10f45f3d; PC = 0x4293558 *)
sbbs carry r8 r8 L0x7fffffffd978 carry;

mov carry_2 carry;

(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffdba8; PC = 0x4293562 *)
mov L0x7fffffffdba8 r8;
(* #retq                                           #! PC = 0x4293566 *)
#retq                                           #! 0x4293566 = 0x4293566;
(* lea    0x120(%rsp),%rsi                         #! PC = 0x4284066 *)
/* lea    %%EA,%%rsi                         #! 0x4284066 = 0x4284066; */
(* mov    %r14,%rdi                                #! PC = 0x4284074 *)
/* mov rdi r14; */
(* #callq  0x4161e0 <fp2_rdcn_low>                 #! PC = 0x4284077 *)
#callq  0x4161e0 <fp2_rdcn_low>                 #! 0x4284077 = 0x4284077;
(* push   %rbp                                     #! PC = 0x4284896 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4284897 *)
/* push rbx; */
(* mov    %rsi,%rbp                                #! PC = 0x4284898 *)
/* mov rbp rsi; */
(* mov    %rdi,%rbx                                #! PC = 0x4284901 *)
/* mov rbx rdi; */
(* sub    $0x8,%rsp                                #! PC = 0x4284904 *)
/* subb carry rsp rsp 0x8@uint64; */
(* #callq  0x4191b5 <fp_rdcn_low>                  #! PC = 0x4284908 *)
#callq  0x4191b5 <fp_rdcn_low>                  #! 0x4284908 = 0x4284908;
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
(* xor    %r9,%r9                                  #! PC = 0x4297158 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297161 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda40; Value = 0xf61b573c7e69b943; PC = 0x4297171 *)
mov r8 L0x7fffffffda40;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffda40; PC = 0x4297180 *)
mov L0x7fffffffda40 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda40; Value = 0x0b97534458f9d437; PC = 0x4297198 *)
mov rax L0x7fffffffda40;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffda48; Value = 0x9f56c332599cecb3; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffda48;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffda48; PC = 0x4297233 *)
mov L0x7fffffffda48 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297237 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297240 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297243 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297246 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297250 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda40; Value = 0x0b97534458f9d437; PC = 0x4297253 *)
mov rax L0x7fffffffda40;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda48; Value = 0xfd1a6ef9434d407e; PC = 0x4297270 *)
mov rax L0x7fffffffda48;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffda50; Value = 0x373c86adc86f6517; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffda50;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffda50; PC = 0x4297306 *)
mov L0x7fffffffda50 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297310 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297313 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297316 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297319 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297323 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda40; Value = 0x0b97534458f9d437; PC = 0x4297326 *)
mov rax L0x7fffffffda40;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda48; Value = 0xfd1a6ef9434d407e; PC = 0x4297343 *)
mov rax L0x7fffffffda48;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda50; Value = 0x03abab7046ca5e30; PC = 0x4297361 *)
mov rax L0x7fffffffda50;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffda58; Value = 0x161a4268b6e9af18; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffda58;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffda58; PC = 0x4297397 *)
mov L0x7fffffffda58 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297401 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297404 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297407 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297410 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297414 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda40; Value = 0x0b97534458f9d437; PC = 0x4297417 *)
mov rax L0x7fffffffda40;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda48; Value = 0xfd1a6ef9434d407e; PC = 0x4297434 *)
mov rax L0x7fffffffda48;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda50; Value = 0x03abab7046ca5e30; PC = 0x4297452 *)
mov rax L0x7fffffffda50;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda58; Value = 0x959823cd708c5ca3; PC = 0x4297470 *)
mov rax L0x7fffffffda58;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffda60; Value = 0xa1dd82e683384964; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffda60;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffda60; PC = 0x4297506 *)
mov L0x7fffffffda60 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297510 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297513 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297516 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297519 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297523 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda40; Value = 0x0b97534458f9d437; PC = 0x4297526 *)
mov rax L0x7fffffffda40;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda48; Value = 0xfd1a6ef9434d407e; PC = 0x4297543 *)
mov rax L0x7fffffffda48;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda50; Value = 0x03abab7046ca5e30; PC = 0x4297561 *)
mov rax L0x7fffffffda50;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda58; Value = 0x959823cd708c5ca3; PC = 0x4297579 *)
mov rax L0x7fffffffda58;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0x2d9dd47036acb1eb; PC = 0x4297597 *)
mov rax L0x7fffffffda60;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffda68; Value = 0x210c27ac8fcb7ebe; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffda68;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffda68; PC = 0x4297633 *)
mov L0x7fffffffda68 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297637 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297640 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297643 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297646 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297650 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda48; Value = 0xfd1a6ef9434d407e; PC = 0x4297653 *)
mov rax L0x7fffffffda48;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda50; Value = 0x03abab7046ca5e30; PC = 0x4297671 *)
mov rax L0x7fffffffda50;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda58; Value = 0x959823cd708c5ca3; PC = 0x4297689 *)
mov rax L0x7fffffffda58;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0x2d9dd47036acb1eb; PC = 0x4297707 *)
mov rax L0x7fffffffda60;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0x77cdda018ce5966e; PC = 0x4297725 *)
mov rax L0x7fffffffda68;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffda70; Value = 0x8a4a122f444f4c7e; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffda70;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffda70; PC = 0x4297755 *)
mov L0x7fffffffda70 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda50; Value = 0x03abab7046ca5e30; PC = 0x4297762 *)
mov rax L0x7fffffffda50;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda58; Value = 0x959823cd708c5ca3; PC = 0x4297780 *)
mov rax L0x7fffffffda58;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0x2d9dd47036acb1eb; PC = 0x4297798 *)
mov rax L0x7fffffffda60;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0x77cdda018ce5966e; PC = 0x4297816 *)
mov rax L0x7fffffffda68;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffda78; Value = 0xdd4eac6451e2fd75; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffda78;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffda78; PC = 0x4297846 *)
mov L0x7fffffffda78 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda58; Value = 0x959823cd708c5ca3; PC = 0x4297853 *)
mov rax L0x7fffffffda58;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0x2d9dd47036acb1eb; PC = 0x4297871 *)
mov rax L0x7fffffffda60;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0x77cdda018ce5966e; PC = 0x4297889 *)
mov rax L0x7fffffffda68;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffda80; Value = 0x7377d64c0f50058a; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffda80;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffda80; PC = 0x4297919 *)
mov L0x7fffffffda80 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0x2d9dd47036acb1eb; PC = 0x4297926 *)
mov rax L0x7fffffffda60;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0x77cdda018ce5966e; PC = 0x4297944 *)
mov rax L0x7fffffffda68;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffda88; Value = 0xb583de4a1a7e3e91; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffda88;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffda88; PC = 0x4297974 *)
mov L0x7fffffffda88 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0x77cdda018ce5966e; PC = 0x4297981 *)
mov rax L0x7fffffffda68;
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
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffda90; Value = 0xeef3ab1d6c1743d4; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffda90;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffda90; PC = 0x4298011 *)
mov L0x7fffffffda90 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffda98; Value = 0x0097936d7173d278; PC = 0x4298018 *)
add r10 r10 L0x7fffffffda98;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffda98; PC = 0x4298022 *)
mov L0x7fffffffda98 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffda70; Value = 0x92d7df321df90098; PC = 0x4298026 *)
mov r11 L0x7fffffffda70;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffda78; Value = 0x9b50b762bcffc681; PC = 0x4298030 *)
mov r12 L0x7fffffffda78;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffda80; Value = 0xacd0cbdf47f7c8af; PC = 0x4298034 *)
mov r13 L0x7fffffffda80;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffda88; Value = 0xdafcf97759916d5e; PC = 0x4298038 *)
mov r14 L0x7fffffffda88;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffda90; Value = 0x64d980060b085130; PC = 0x4298042 *)
mov r15 L0x7fffffffda90;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffda98; Value = 0x0cc2fbc1bc50c100; PC = 0x4298046 *)
mov rcx L0x7fffffffda98;
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
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffda70; Value = 0x92d7df321df90098; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffda70 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffda78; Value = 0x9b50b762bcffc681; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffda78 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffda80; Value = 0xacd0cbdf47f7c8af; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffda80 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffda88; Value = 0xdafcf97759916d5e; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffda88 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffda90; Value = 0x64d980060b085130; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffda90 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffda98; Value = 0x0cc2fbc1bc50c100; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffda98 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdc90; PC = 0x4298122 *)
mov L0x7fffffffdc90 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdc98; PC = 0x4298125 *)
mov L0x7fffffffdc98 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x4298129 *)
mov L0x7fffffffdca0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x4298133 *)
mov L0x7fffffffdca8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdcb0; PC = 0x4298137 *)
mov L0x7fffffffdcb0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdcb8; PC = 0x4298141 *)
mov L0x7fffffffdcb8 rcx;
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
(* add    $0x8,%rsp                                #! PC = 0x4284913 *)
/* adds carry rsp rsp 0x8; */
(* lea    0x110(%rbp),%rsi                         #! PC = 0x4284917 *)
/* lea    %%EA,%%rsi                         #! 0x4284917 = 0x4284917; */
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4284924 *)
/* lea    %%EA,%%rdi                          #! 0x4284924 = 0x4284924; */
(* pop    %rbx                                     #! PC = 0x4284928 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4284929 *)
/* pop rbp; */
(* #jmpq   0x4191b5 <fp_rdcn_low>                  #! PC = 0x4284930 *)
#jmpq   0x4191b5 <fp_rdcn_low>                  #! 0x4284930 = 0x4284930;
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
(* xor    %r9,%r9                                  #! PC = 0x4297158 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4297161 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb50; Value = 0x1dbde49e06ce34d2; PC = 0x4297171 *)
mov r8 L0x7fffffffdb50;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffdb50; PC = 0x4297180 *)
mov L0x7fffffffdb50 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb50; Value = 0x9ea99f454d1f618a; PC = 0x4297198 *)
mov rax L0x7fffffffdb50;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x98da9b1078571988; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffdb58;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x4297233 *)
mov L0x7fffffffdb58 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297237 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297240 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297243 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297246 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297250 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb50; Value = 0x9ea99f454d1f618a; PC = 0x4297253 *)
mov rax L0x7fffffffdb50;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb58; Value = 0xc5757a2203a8f772; PC = 0x4297270 *)
mov rax L0x7fffffffdb58;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0ce2067790524573; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffdb60;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffdb60; PC = 0x4297306 *)
mov L0x7fffffffdb60 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297310 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297313 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297316 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297319 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297323 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb50; Value = 0x9ea99f454d1f618a; PC = 0x4297326 *)
mov rax L0x7fffffffdb50;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb58; Value = 0xc5757a2203a8f772; PC = 0x4297343 *)
mov rax L0x7fffffffdb58;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xec1963607f3adc98; PC = 0x4297361 *)
mov rax L0x7fffffffdb60;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffdb68; Value = 0x8469927b8d62a3dd; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffdb68;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffdb68; PC = 0x4297397 *)
mov L0x7fffffffdb68 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297401 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4297404 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4297407 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297410 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4297414 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb50; Value = 0x9ea99f454d1f618a; PC = 0x4297417 *)
mov rax L0x7fffffffdb50;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb58; Value = 0xc5757a2203a8f772; PC = 0x4297434 *)
mov rax L0x7fffffffdb58;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xec1963607f3adc98; PC = 0x4297452 *)
mov rax L0x7fffffffdb60;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb68; Value = 0x11e180ff3191e5ab; PC = 0x4297470 *)
mov rax L0x7fffffffdb68;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffdb70; Value = 0x0132e4dea89ce826; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffdb70;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffdb70; PC = 0x4297506 *)
mov L0x7fffffffdb70 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297510 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4297513 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4297516 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297519 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4297523 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb50; Value = 0x9ea99f454d1f618a; PC = 0x4297526 *)
mov rax L0x7fffffffdb50;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb58; Value = 0xc5757a2203a8f772; PC = 0x4297543 *)
mov rax L0x7fffffffdb58;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xec1963607f3adc98; PC = 0x4297561 *)
mov rax L0x7fffffffdb60;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb68; Value = 0x11e180ff3191e5ab; PC = 0x4297579 *)
mov rax L0x7fffffffdb68;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x7569916e02c4c03a; PC = 0x4297597 *)
mov rax L0x7fffffffdb70;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffdb78; Value = 0x6d9507c06f5afad0; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffdb78;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffdb78; PC = 0x4297633 *)
mov L0x7fffffffdb78 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4297637 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4297640 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4297643 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297646 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4297650 *)
mov r10 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb58; Value = 0xc5757a2203a8f772; PC = 0x4297653 *)
mov rax L0x7fffffffdb58;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xec1963607f3adc98; PC = 0x4297671 *)
mov rax L0x7fffffffdb60;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb68; Value = 0x11e180ff3191e5ab; PC = 0x4297689 *)
mov rax L0x7fffffffdb68;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x7569916e02c4c03a; PC = 0x4297707 *)
mov rax L0x7fffffffdb70;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x70728673138bbe10; PC = 0x4297725 *)
mov rax L0x7fffffffdb78;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb80; Value = 0xfaf7061a5c2a29ed; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffdb80;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffdb80; PC = 0x4297755 *)
mov L0x7fffffffdb80 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xec1963607f3adc98; PC = 0x4297762 *)
mov rax L0x7fffffffdb60;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb68; Value = 0x11e180ff3191e5ab; PC = 0x4297780 *)
mov rax L0x7fffffffdb68;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x7569916e02c4c03a; PC = 0x4297798 *)
mov rax L0x7fffffffdb70;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x70728673138bbe10; PC = 0x4297816 *)
mov rax L0x7fffffffdb78;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb88; Value = 0x6c6c6377138b8df7; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffdb88;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffdb88; PC = 0x4297846 *)
mov L0x7fffffffdb88 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb68; Value = 0x11e180ff3191e5ab; PC = 0x4297853 *)
mov rax L0x7fffffffdb68;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x7569916e02c4c03a; PC = 0x4297871 *)
mov rax L0x7fffffffdb70;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x70728673138bbe10; PC = 0x4297889 *)
mov rax L0x7fffffffdb78;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x89ba64a974725919; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffdb90;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffdb90; PC = 0x4297919 *)
mov L0x7fffffffdb90 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x7569916e02c4c03a; PC = 0x4297926 *)
mov rax L0x7fffffffdb70;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x70728673138bbe10; PC = 0x4297944 *)
mov rax L0x7fffffffdb78;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffdb98; Value = 0x98e3e65279d8a87c; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffdb98;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffdb98; PC = 0x4297974 *)
mov L0x7fffffffdb98 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x70728673138bbe10; PC = 0x4297981 *)
mov rax L0x7fffffffdb78;
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
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffdba0; Value = 0xbbdb812956d4f0f5; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffdba0;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffdba0; PC = 0x4298011 *)
mov L0x7fffffffdba0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffdba8; Value = 0x014757f21dc56ec2; PC = 0x4298018 *)
adds carry r10 r10 L0x7fffffffdba8;

assert true && carry = carry_2;
assume carry = carry_2 && true;

(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffdba8; PC = 0x4298022 *)
mov L0x7fffffffdba8 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffdb80; Value = 0x2059c54c2a680e0a; PC = 0x4298026 *)
mov r11 L0x7fffffffdb80;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffdb88; Value = 0xe5b1c7e95eca6521; PC = 0x4298030 *)
mov r12 L0x7fffffffdb88;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffdb90; Value = 0x9cf56a127410f7e2; PC = 0x4298034 *)
mov r13 L0x7fffffffdb90;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffdb98; Value = 0xf2d7c8118be716ee; PC = 0x4298038 *)
mov r14 L0x7fffffffdb98;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffdba0; Value = 0x485249c05660eac6; PC = 0x4298042 *)
mov r15 L0x7fffffffdba0;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdba8; Value = 0x0cb371ead112eb23; PC = 0x4298046 *)
mov rcx L0x7fffffffdba8;
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
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffdb80; Value = 0x2059c54c2a680e0a; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffdb80 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffdb88; Value = 0xe5b1c7e95eca6521; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffdb88 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffdb90; Value = 0x9cf56a127410f7e2; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffdb90 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffdb98; Value = 0xf2d7c8118be716ee; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffdb98 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffdba0; Value = 0x485249c05660eac6; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffdba0 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffdba8; Value = 0x0cb371ead112eb23; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffdba8 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdcc0; PC = 0x4298122 *)
mov L0x7fffffffdcc0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdcc8; PC = 0x4298125 *)
mov L0x7fffffffdcc8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdcd0; PC = 0x4298129 *)
mov L0x7fffffffdcd0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdcd8; PC = 0x4298133 *)
mov L0x7fffffffdcd8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdce0; PC = 0x4298137 *)
mov L0x7fffffffdce0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdce8; PC = 0x4298141 *)
mov L0x7fffffffdce8 rcx;
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
(* add    $0x340,%rsp                              #! PC = 0x4284082 *)
/* adds carry rsp rsp 0x340; */
(* pop    %rbx                                     #! PC = 0x4284089 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4284090 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4284091 *)
/* pop r12; */
(* pop    %r13                                     #! PC = 0x4284093 *)
/* pop r13; */
(* pop    %r14                                     #! PC = 0x4284095 *)
/* pop r14; */
(* #retq                                           #! PC = 0x4284097 *)
#retq                                           #! 0x4284097 = 0x4284097;

mov c1_0 L0x7fffffffdc90;
mov c1_1 L0x7fffffffdc98;
mov c1_2 L0x7fffffffdca0;
mov c1_3 L0x7fffffffdca8;
mov c1_4 L0x7fffffffdcb0;
mov c1_5 L0x7fffffffdcb8;

mov c2_0 L0x7fffffffdcc0;
mov c2_1 L0x7fffffffdcc8;
mov c2_2 L0x7fffffffdcd0;
mov c2_3 L0x7fffffffdcd8;
mov c2_4 L0x7fffffffdce0;
mov c2_5 L0x7fffffffdce8;

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
