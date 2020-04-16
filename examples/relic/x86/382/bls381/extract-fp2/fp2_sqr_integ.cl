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


mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_sqr_integ: *)
/* fp2_sqr_integ:; */
(* #jmpq   0x4162d0 <fp2_sqrm_low>                 #! PC = 0x4210832 *)
#jmpq   0x4162d0 <fp2_sqrm_low>                 #! 0x4210832 = 0x4210832;
(* push   %r12                                     #! PC = 0x4285136 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4285138 *)
/* push rbp; */
(* lea    0x30(%rsi),%rbp                          #! PC = 0x4285139 *)
/* lea    %%EA,%%rbp                          #! 0x4285139 = 0x4285139; */
(* push   %rbx                                     #! PC = 0x4285143 *)
/* push rbx; */
(* mov    %rdi,%r12                                #! PC = 0x4285144 *)
/* mov r12 rdi; */
(* mov    %rsi,%rbx                                #! PC = 0x4285147 *)
/* mov rbx rsi; */
(* mov    %rbp,%rdx                                #! PC = 0x4285150 *)
/* mov rdx rbp; */
(* sub    $0x340,%rsp                              #! PC = 0x4285153 *)
/* subb carry rsp rsp 0x340@uint64; */
(* mov    %rsp,%rdi                                #! PC = 0x4285160 *)
/* mov rdi rsp; */
(* #callq  0x417f7a <fp_addn_low>                  #! PC = 0x4285163 *)
#callq  0x417f7a <fp_addn_low>                  #! 0x4285163 = 0x4285163;
(* xor    %rax,%rax                                #! PC = 0x4292474 *)
mov rax 0@uint64;
(* mov    (%rdx),%r11                              #! EA = L0x7fffffffdd80; Value = 0x4f4c6824b121be72; PC = 0x4292477 *)
mov r11 L0x7fffffffdd80;
(* add    (%rsi),%r11                              #! EA = L0x7fffffffdd50; Value = 0x9bee360cd8df9bbb; PC = 0x4292480 *)
adds carry r11 r11 L0x7fffffffdd50;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd930; PC = 0x4292483 *)
mov L0x7fffffffd930 r11;
(* mov    0x8(%rdx),%r11                           #! EA = L0x7fffffffdd88; Value = 0x1038923e049ec801; PC = 0x4292486 *)
mov r11 L0x7fffffffdd88;
(* adc    0x8(%rsi),%r11                           #! EA = L0x7fffffffdd58; Value = 0x37c28b3565a6b7e1; PC = 0x4292490 *)
adcs carry r11 r11 L0x7fffffffdd58 carry;
(* mov    %r11,0x8(%rdi)                           #! EA = L0x7fffffffd938; PC = 0x4292494 *)
mov L0x7fffffffd938 r11;
(* mov    0x10(%rdx),%r11                          #! EA = L0x7fffffffdd90; Value = 0xd07c47bcb8f89b33; PC = 0x4292498 *)
mov r11 L0x7fffffffdd90;
(* adc    0x10(%rsi),%r11                          #! EA = L0x7fffffffdd60; Value = 0xe5ad45b7d560e577; PC = 0x4292502 *)
adcs carry r11 r11 L0x7fffffffdd60 carry;
(* mov    %r11,0x10(%rdi)                          #! EA = L0x7fffffffd940; PC = 0x4292506 *)
mov L0x7fffffffd940 r11;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffdd98; Value = 0x8332ce1e326cbc05; PC = 0x4292510 *)
mov r11 L0x7fffffffdd98;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdd68; Value = 0x837a9539289636ec; PC = 0x4292514 *)
adcs carry r11 r11 L0x7fffffffdd68 carry;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd948; PC = 0x4292518 *)
mov L0x7fffffffd948 r11;
(* mov    0x20(%rdx),%r11                          #! EA = L0x7fffffffdda0; Value = 0x7c7f13a05ba49c0e; PC = 0x4292522 *)
mov r11 L0x7fffffffdda0;
(* adc    0x20(%rsi),%r11                          #! EA = L0x7fffffffdd70; Value = 0xdb4a7a7184fa0b51; PC = 0x4292526 *)
adcs carry r11 r11 L0x7fffffffdd70 carry;
(* mov    %r11,0x20(%rdi)                          #! EA = L0x7fffffffd950; PC = 0x4292530 *)
mov L0x7fffffffd950 r11;
(* mov    0x28(%rdx),%r11                          #! EA = L0x7fffffffdda8; Value = 0x003aaed6d238377e; PC = 0x4292534 *)
mov r11 L0x7fffffffdda8;
(* adc    0x28(%rsi),%r11                          #! EA = L0x7fffffffdd78; Value = 0x0c97aecb7f2bdcf4; PC = 0x4292538 *)
adc r11 r11 L0x7fffffffdd78 carry;
(* mov    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd958; PC = 0x4292542 *)
mov L0x7fffffffd958 r11;
(* adc    $0x0,%rax                                #! PC = 0x4292546 *)
/* adc rax rax 0x0@uint64 carry; */
(* #retq                                           #! PC = 0x4292550 *)
#retq                                           #! 0x4292550 = 0x4292550;
(* lea    0x60(%rsp),%rdi                          #! PC = 0x4285168 *)
/* lea    %%EA,%%rdi                          #! 0x4285168 = 0x4285168; */
(* mov    %rbp,%rdx                                #! PC = 0x4285173 *)
/* mov rdx rbp; */
(* mov    %rbx,%rsi                                #! PC = 0x4285176 *)
/* mov rsi rbx; */
(* #callq  0x418282 <fp_subm_low>                  #! PC = 0x4285179 *)
#callq  0x418282 <fp_subm_low>                  #! 0x4285179 = 0x4285179;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdd50; Value = 0x9bee360cd8df9bbb; PC = 0x4293256 *)
mov r8 L0x7fffffffdd50;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdd80; Value = 0x4f4c6824b121be72; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffdd80;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd990; PC = 0x4293262 *)
mov L0x7fffffffd990 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffdd58; Value = 0x37c28b3565a6b7e1; PC = 0x4293265 *)
mov r8 L0x7fffffffdd58;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffdd88; Value = 0x1038923e049ec801; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffdd88 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd998; PC = 0x4293273 *)
mov L0x7fffffffd998 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffdd60; Value = 0xe5ad45b7d560e577; PC = 0x4293277 *)
mov r8 L0x7fffffffdd60;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffdd90; Value = 0xd07c47bcb8f89b33; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffdd90 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd9a0; PC = 0x4293285 *)
mov L0x7fffffffd9a0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffdd68; Value = 0x837a9539289636ec; PC = 0x4293289 *)
mov r8 L0x7fffffffdd68;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffdd98; Value = 0x8332ce1e326cbc05; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffdd98 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd9a8; PC = 0x4293297 *)
mov L0x7fffffffd9a8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffdd70; Value = 0xdb4a7a7184fa0b51; PC = 0x4293301 *)
mov r8 L0x7fffffffdd70;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffdda0; Value = 0x7c7f13a05ba49c0e; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffdda0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd9b0; PC = 0x4293309 *)
mov L0x7fffffffd9b0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffdd78; Value = 0x0c97aecb7f2bdcf4; PC = 0x4293313 *)
mov r8 L0x7fffffffdd78;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffdda8; Value = 0x003aaed6d238377e; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffdda8 carry;

mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd9b8; PC = 0x4293321 *)
mov L0x7fffffffd9b8 r8;
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
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffd990; PC = 0x4293401 *)
adds carry L0x7fffffffd990 L0x7fffffffd990 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd998; PC = 0x4293404 *)
adcs carry L0x7fffffffd998 L0x7fffffffd998 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd9a0; PC = 0x4293408 *)
adcs carry L0x7fffffffd9a0 L0x7fffffffd9a0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffd9a8; PC = 0x4293412 *)
adcs carry L0x7fffffffd9a8 L0x7fffffffd9a8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd9b0; PC = 0x4293416 *)
adcs carry L0x7fffffffd9b0 L0x7fffffffd9b0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd9b8; PC = 0x4293420 *)
adcs carry L0x7fffffffd9b8 L0x7fffffffd9b8 r11 carry;

assert true && carry_1 = carry;
assume carry_1 = carry && true;

(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;
(* lea    0xc0(%rsp),%rdi                          #! PC = 0x4285184 *)
/* lea    %%EA,%%rdi                          #! 0x4285184 = 0x4285184; */
(* mov    %rbx,%rsi                                #! PC = 0x4285192 *)
/* mov rsi rbx; */
(* #callq  0x418522 <fp_dbln_low>                  #! PC = 0x4285195 *)
#callq  0x418522 <fp_dbln_low>                  #! 0x4285195 = 0x4285195;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdd50; Value = 0x9bee360cd8df9bbb; PC = 0x4293922 *)
mov r8 L0x7fffffffdd50;
(* add    %r8,%r8                                  #! PC = 0x4293925 *)
adds carry r8 r8 r8;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9f0; PC = 0x4293928 *)
mov L0x7fffffffd9f0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffdd58; Value = 0x37c28b3565a6b7e1; PC = 0x4293931 *)
mov r8 L0x7fffffffdd58;
(* adc    %r8,%r8                                  #! PC = 0x4293935 *)
adcs carry r8 r8 r8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd9f8; PC = 0x4293938 *)
mov L0x7fffffffd9f8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffdd60; Value = 0xe5ad45b7d560e577; PC = 0x4293942 *)
mov r8 L0x7fffffffdd60;
(* adc    %r8,%r8                                  #! PC = 0x4293946 *)
adcs carry r8 r8 r8 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda00; PC = 0x4293949 *)
mov L0x7fffffffda00 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffdd68; Value = 0x837a9539289636ec; PC = 0x4293953 *)
mov r8 L0x7fffffffdd68;
(* adc    %r8,%r8                                  #! PC = 0x4293957 *)
adcs carry r8 r8 r8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x4293960 *)
mov L0x7fffffffda08 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffdd70; Value = 0xdb4a7a7184fa0b51; PC = 0x4293964 *)
mov r8 L0x7fffffffdd70;
(* adc    %r8,%r8                                  #! PC = 0x4293968 *)
adcs carry r8 r8 r8 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda10; PC = 0x4293971 *)
mov L0x7fffffffda10 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffdd78; Value = 0x0c97aecb7f2bdcf4; PC = 0x4293975 *)
mov r8 L0x7fffffffdd78;
(* adc    %r8,%r8                                  #! PC = 0x4293979 *)
adc r8 r8 r8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffda18; PC = 0x4293982 *)
mov L0x7fffffffda18 r8;
(* xor    %rax,%rax                                #! PC = 0x4293986 *)
mov rax 0@uint64;
(* #retq                                           #! PC = 0x4293989 *)
#retq                                           #! 0x4293989 = 0x4293989;
(* lea    0x230(%rsp),%rdi                         #! PC = 0x4285200 *)
/* lea    %%EA,%%rdi                         #! 0x4285200 = 0x4285200; */
(* lea    0xc0(%rsp),%rsi                          #! PC = 0x4285208 *)
/* lea    %%EA,%%rsi                          #! 0x4285208 = 0x4285208; */
(* mov    %rbp,%rdx                                #! PC = 0x4285216 *)
/* mov rdx rbp; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4285219 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4285219 = 0x4285219;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294632 *)
mov rax L0x7fffffffd9f0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffdd80;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffdb60; PC = 0x4294638 *)
mov L0x7fffffffdb60 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294650 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4294667 *)
mov rax L0x7fffffffd9f8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffdd80;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdb68; PC = 0x4294677 *)
mov L0x7fffffffdb68 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294691 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4294708 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4294726 *)
mov rax L0x7fffffffda00;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffdd80;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdb70; PC = 0x4294736 *)
mov L0x7fffffffdb70 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294750 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4294767 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4294785 *)
mov rax L0x7fffffffda00;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4294803 *)
mov rax L0x7fffffffda08;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffdd80;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x4294813 *)
mov L0x7fffffffdb78 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294827 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4294844 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4294862 *)
mov rax L0x7fffffffda00;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4294880 *)
mov rax L0x7fffffffda08;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4294898 *)
mov rax L0x7fffffffda10;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffdd80;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdb80; PC = 0x4294908 *)
mov L0x7fffffffdb80 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9f0; Value = 0x37dc6c19b1bf3776; PC = 0x4294922 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4294939 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4294957 *)
mov rax L0x7fffffffda00;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4294975 *)
mov rax L0x7fffffffda08;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4294993 *)
mov rax L0x7fffffffda10;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295011 *)
mov rax L0x7fffffffda18;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdd80; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffdd80;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffdb88; PC = 0x4295021 *)
mov L0x7fffffffdb88 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9f8; Value = 0x6f85166acb4d6fc3; PC = 0x4295035 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4295053 *)
mov rax L0x7fffffffda00;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4295071 *)
mov rax L0x7fffffffda08;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4295089 *)
mov rax L0x7fffffffda10;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295107 *)
mov rax L0x7fffffffda18;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdd88; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffdd88;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffdb90; PC = 0x4295118 *)
mov L0x7fffffffdb90 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda00; Value = 0xcb5a8b6faac1caee; PC = 0x4295132 *)
mov rax L0x7fffffffda00;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4295150 *)
mov rax L0x7fffffffda08;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4295168 *)
mov rax L0x7fffffffda10;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295186 *)
mov rax L0x7fffffffda18;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdd90; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffdd90;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffdb98; PC = 0x4295197 *)
mov L0x7fffffffdb98 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda08; Value = 0x06f52a72512c6dd9; PC = 0x4295211 *)
mov rax L0x7fffffffda08;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4295229 *)
mov rax L0x7fffffffda10;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295247 *)
mov rax L0x7fffffffda18;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdd98; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffdd98;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffdba0; PC = 0x4295258 *)
mov L0x7fffffffdba0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda10; Value = 0xb694f4e309f416a3; PC = 0x4295272 *)
mov rax L0x7fffffffda10;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295290 *)
mov rax L0x7fffffffda18;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdda0; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffdda0;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdba8; PC = 0x4295301 *)
mov L0x7fffffffdba8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda18; Value = 0x192f5d96fe57b9e9; PC = 0x4295312 *)
mov rax L0x7fffffffda18;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdda8; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffdda8;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdbb0; PC = 0x4295323 *)
mov L0x7fffffffdbb0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdbb8; PC = 0x4295330 *)
mov L0x7fffffffdbb8 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;
(* lea    0x60(%rsp),%rdx                          #! PC = 0x4285224 *)
/* lea    %%EA,%%rdx                          #! 0x4285224 = 0x4285224; */
(* lea    0x120(%rsp),%rdi                         #! PC = 0x4285229 *)
/* lea    %%EA,%%rdi                         #! 0x4285229 = 0x4285229; */
(* mov    %rsp,%rsi                                #! PC = 0x4285237 *)
/* mov rsi rsp; */
(* #callq  0x4187e5 <fp_muln_low>                  #! PC = 0x4285240 *)
#callq  0x4187e5 <fp_muln_low>                  #! 0x4285240 = 0x4285240;
(* mov    %rdx,%rcx                                #! PC = 0x4294629 *)
/* mov rcx rdx; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294632 *)
mov rax L0x7fffffffd930;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4294635 *)
mull rdx rax rax L0x7fffffffd990;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda50; PC = 0x4294638 *)
mov L0x7fffffffda50 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4294641 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4294644 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4294647 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294650 *)
mov rax L0x7fffffffd930;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4294653 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r8                                 #! PC = 0x4294657 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294660 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294663 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4294667 *)
mov rax L0x7fffffffd938;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4294671 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r8                                 #! PC = 0x4294674 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffda58; PC = 0x4294677 *)
mov L0x7fffffffda58 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294681 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294684 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294688 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294691 *)
mov rax L0x7fffffffd930;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294694 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x4294698 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294701 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294704 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4294708 *)
mov rax L0x7fffffffd938;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4294712 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r9                                 #! PC = 0x4294716 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294719 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294722 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4294726 *)
mov rax L0x7fffffffd940;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4294730 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r9                                 #! PC = 0x4294733 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffda60; PC = 0x4294736 *)
mov L0x7fffffffda60 r9;
(* adc    %rdx,%r10                                #! PC = 0x4294740 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294743 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4294747 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294750 *)
mov rax L0x7fffffffd930;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4294753 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x4294757 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294760 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294763 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4294767 *)
mov rax L0x7fffffffd938;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294771 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r10                                #! PC = 0x4294775 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294778 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294781 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4294785 *)
mov rax L0x7fffffffd940;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4294789 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r10                                #! PC = 0x4294793 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4294796 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294799 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4294803 *)
mov rax L0x7fffffffd948;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4294807 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r10                                #! PC = 0x4294810 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffda68; PC = 0x4294813 *)
mov L0x7fffffffda68 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4294817 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4294820 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4294824 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294827 *)
mov rax L0x7fffffffd930;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4294830 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r8                                 #! PC = 0x4294834 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294837 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294840 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4294844 *)
mov rax L0x7fffffffd938;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4294848 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x4294852 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294855 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294858 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4294862 *)
mov rax L0x7fffffffd940;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294866 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x4294870 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294873 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294876 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4294880 *)
mov rax L0x7fffffffd948;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4294884 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r8                                 #! PC = 0x4294888 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4294891 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294894 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4294898 *)
mov rax L0x7fffffffd950;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4294902 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r8                                 #! PC = 0x4294905 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda70; PC = 0x4294908 *)
mov L0x7fffffffda70 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4294912 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4294915 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4294919 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd930; Value = 0xeb3a9e318a015a2d; PC = 0x4294922 *)
mov rax L0x7fffffffd930;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4294925 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r9                                 #! PC = 0x4294929 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294932 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294935 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4294939 *)
mov rax L0x7fffffffd938;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4294943 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r9                                 #! PC = 0x4294947 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294950 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294953 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4294957 *)
mov rax L0x7fffffffd940;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4294961 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x4294965 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294968 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294971 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4294975 *)
mov rax L0x7fffffffd948;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4294979 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r9                                 #! PC = 0x4294983 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4294986 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4294989 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4294993 *)
mov rax L0x7fffffffd950;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4294997 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r9                                 #! PC = 0x4295001 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295004 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295011 *)
mov rax L0x7fffffffd958;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd990; PC = 0x4295015 *)
mull rdx rax rax L0x7fffffffd990;
(* add    %rax,%r9                                 #! PC = 0x4295018 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffda78; PC = 0x4295021 *)
mov L0x7fffffffda78 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295025 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295028 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295032 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd938; Value = 0x47fb1d736a457fe2; PC = 0x4295035 *)
mov rax L0x7fffffffd938;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4295039 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r10                                #! PC = 0x4295043 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295046 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295049 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4295053 *)
mov rax L0x7fffffffd940;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4295057 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r10                                #! PC = 0x4295061 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295064 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295067 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4295071 *)
mov rax L0x7fffffffd948;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295075 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r10                                #! PC = 0x4295079 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295082 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295085 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4295089 *)
mov rax L0x7fffffffd950;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295093 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r10                                #! PC = 0x4295097 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295100 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295103 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295107 *)
mov rax L0x7fffffffd958;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd998; PC = 0x4295111 *)
mull rdx rax rax L0x7fffffffd998;
(* add    %rax,%r10                                #! PC = 0x4295115 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rdi)                          #! EA = L0x7fffffffda80; PC = 0x4295118 *)
mov L0x7fffffffda80 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295122 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295125 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295129 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd940; Value = 0xb6298d748e5980aa; PC = 0x4295132 *)
mov rax L0x7fffffffd940;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4295136 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r8                                 #! PC = 0x4295140 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295143 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295146 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4295150 *)
mov rax L0x7fffffffd948;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4295154 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r8                                 #! PC = 0x4295158 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295161 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295164 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4295168 *)
mov rax L0x7fffffffd950;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295172 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r8                                 #! PC = 0x4295176 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295179 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295182 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295186 *)
mov rax L0x7fffffffd958;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd9a0; PC = 0x4295190 *)
mull rdx rax rax L0x7fffffffd9a0;
(* add    %rax,%r8                                 #! PC = 0x4295194 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rdi)                           #! EA = L0x7fffffffda88; PC = 0x4295197 *)
mov L0x7fffffffda88 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295201 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295204 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295208 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x06ad63575b02f2f2; PC = 0x4295211 *)
mov rax L0x7fffffffd948;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4295215 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r9                                 #! PC = 0x4295219 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295222 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295225 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4295229 *)
mov rax L0x7fffffffd950;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4295233 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r9                                 #! PC = 0x4295237 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295240 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295243 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295247 *)
mov rax L0x7fffffffd958;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd9a8; PC = 0x4295251 *)
mull rdx rax rax L0x7fffffffd9a8;
(* add    %rax,%r9                                 #! PC = 0x4295255 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rdi)                           #! EA = L0x7fffffffda90; PC = 0x4295258 *)
mov L0x7fffffffda90 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295262 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295265 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295269 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x57c98e11e09ea760; PC = 0x4295272 *)
mov rax L0x7fffffffd950;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4295276 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r10                                #! PC = 0x4295280 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295283 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295286 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295290 *)
mov rax L0x7fffffffd958;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd9b0; PC = 0x4295294 *)
mull rdx rax rax L0x7fffffffd9b0;
(* add    %rax,%r10                                #! PC = 0x4295298 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffda98; PC = 0x4295301 *)
mov L0x7fffffffda98 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295305 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295308 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x0cd25da251641473; PC = 0x4295312 *)
mov rax L0x7fffffffd958;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd9b8; PC = 0x4295316 *)
mull rdx rax rax L0x7fffffffd9b8;
(* add    %rax,%r8                                 #! PC = 0x4295320 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rdi)                           #! EA = L0x7fffffffdaa0; PC = 0x4295323 *)
mov L0x7fffffffdaa0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295327 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rdi)                           #! EA = L0x7fffffffdaa8; PC = 0x4295330 *)
mov L0x7fffffffdaa8 r9;
(* #retq                                           #! PC = 0x4295334 *)
#retq                                           #! 0x4295334 = 0x4295334;

assert
  and [
  (limbs 64 [L0x7fffffffda50, L0x7fffffffda58, L0x7fffffffda60, L0x7fffffffda68, L0x7fffffffda70,
         L0x7fffffffda78, L0x7fffffffda80, L0x7fffffffda88, L0x7fffffffda90, L0x7fffffffda98,
         L0x7fffffffdaa0, L0x7fffffffdaa8])
  = (
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) *
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) -
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [L0x7fffffffdb60, L0x7fffffffdb68, L0x7fffffffdb70, L0x7fffffffdb78, L0x7fffffffdb80, L0x7fffffffdb88,
  L0x7fffffffdb90, L0x7fffffffdb98, L0x7fffffffdba0, L0x7fffffffdba8, L0x7fffffffdbb0, L0x7fffffffdbb8])
  = (
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) +
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) *
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a]))
 ] && true;

(* lea    0x120(%rsp),%rsi                         #! PC = 0x4285245 *)
/* lea    %%EA,%%rsi                         #! 0x4285245 = 0x4285245; */
(* mov    %r12,%rdi                                #! PC = 0x4285253 *)
/* mov rdi r12; */
(* #callq  0x4161e0 <fp2_rdcn_low>                 #! PC = 0x4285256 *)
#callq  0x4161e0 <fp2_rdcn_low>                 #! 0x4285256 = 0x4285256;
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
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffda50; Value = 0x3d9db9c7f3748fd5; PC = 0x4297171 *)
mov r8 L0x7fffffffda50;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffda50; PC = 0x4297180 *)
mov L0x7fffffffda50 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda50; Value = 0x537548cb76235081; PC = 0x4297198 *)
mov rax L0x7fffffffda50;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffda58; Value = 0x9dbc9519221d198e; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffda58;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffda58; PC = 0x4297233 *)
mov L0x7fffffffda58 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda50; Value = 0x537548cb76235081; PC = 0x4297253 *)
mov rax L0x7fffffffda50;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda58; Value = 0x96c0b348ea36613e; PC = 0x4297270 *)
mov rax L0x7fffffffda58;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffda60; Value = 0x5791b2ddcd28b48e; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffda60;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffda60; PC = 0x4297306 *)
mov L0x7fffffffda60 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda50; Value = 0x537548cb76235081; PC = 0x4297326 *)
mov rax L0x7fffffffda50;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda58; Value = 0x96c0b348ea36613e; PC = 0x4297343 *)
mov rax L0x7fffffffda58;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0xd7c476cb5d06b8e8; PC = 0x4297361 *)
mov rax L0x7fffffffda60;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffda68; Value = 0xf7c9800a3750019c; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffda68;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffda68; PC = 0x4297397 *)
mov L0x7fffffffda68 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda50; Value = 0x537548cb76235081; PC = 0x4297417 *)
mov rax L0x7fffffffda50;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda58; Value = 0x96c0b348ea36613e; PC = 0x4297434 *)
mov rax L0x7fffffffda58;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0xd7c476cb5d06b8e8; PC = 0x4297452 *)
mov rax L0x7fffffffda60;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0xd4873fec3120b668; PC = 0x4297470 *)
mov rax L0x7fffffffda68;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffda70; Value = 0x2753870e0951590d; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffda70;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffda70; PC = 0x4297506 *)
mov L0x7fffffffda70 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffda50; Value = 0x537548cb76235081; PC = 0x4297526 *)
mov rax L0x7fffffffda50;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda58; Value = 0x96c0b348ea36613e; PC = 0x4297543 *)
mov rax L0x7fffffffda58;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0xd7c476cb5d06b8e8; PC = 0x4297561 *)
mov rax L0x7fffffffda60;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0xd4873fec3120b668; PC = 0x4297579 *)
mov rax L0x7fffffffda68;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xa9e27a37770afc5a; PC = 0x4297597 *)
mov rax L0x7fffffffda70;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffda78; Value = 0x922864f489f320bd; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffda78;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffda78; PC = 0x4297633 *)
mov L0x7fffffffda78 rax;
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
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffda58; Value = 0x96c0b348ea36613e; PC = 0x4297653 *)
mov rax L0x7fffffffda58;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0xd7c476cb5d06b8e8; PC = 0x4297671 *)
mov rax L0x7fffffffda60;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0xd4873fec3120b668; PC = 0x4297689 *)
mov rax L0x7fffffffda68;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xa9e27a37770afc5a; PC = 0x4297707 *)
mov rax L0x7fffffffda70;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda78; Value = 0xeeb9806d14925f57; PC = 0x4297725 *)
mov rax L0x7fffffffda78;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffda80; Value = 0x0e22f05a362ae300; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffda80;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffda80; PC = 0x4297755 *)
mov L0x7fffffffda80 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffda60; Value = 0xd7c476cb5d06b8e8; PC = 0x4297762 *)
mov rax L0x7fffffffda60;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0xd4873fec3120b668; PC = 0x4297780 *)
mov rax L0x7fffffffda68;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xa9e27a37770afc5a; PC = 0x4297798 *)
mov rax L0x7fffffffda70;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda78; Value = 0xeeb9806d14925f57; PC = 0x4297816 *)
mov rax L0x7fffffffda78;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffda88; Value = 0x504e3befb3830038; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffda88;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffda88; PC = 0x4297846 *)
mov L0x7fffffffda88 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda68; Value = 0xd4873fec3120b668; PC = 0x4297853 *)
mov rax L0x7fffffffda68;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xa9e27a37770afc5a; PC = 0x4297871 *)
mov rax L0x7fffffffda70;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda78; Value = 0xeeb9806d14925f57; PC = 0x4297889 *)
mov rax L0x7fffffffda78;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffda90; Value = 0xb46dd6855bbdd312; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffda90;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffda90; PC = 0x4297919 *)
mov L0x7fffffffda90 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffda70; Value = 0xa9e27a37770afc5a; PC = 0x4297926 *)
mov rax L0x7fffffffda70;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda78; Value = 0xeeb9806d14925f57; PC = 0x4297944 *)
mov rax L0x7fffffffda78;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffda98; Value = 0x904554f10f3e2de0; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffda98;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffda98; PC = 0x4297974 *)
mov L0x7fffffffda98 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffda78; Value = 0xeeb9806d14925f57; PC = 0x4297981 *)
mov rax L0x7fffffffda78;
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
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffdaa0; Value = 0x792616d568134565; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffdaa0;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffdaa0; PC = 0x4298011 *)
mov L0x7fffffffdaa0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffdaa8; Value = 0x009e84cf0e956996; PC = 0x4298018 *)
add r10 r10 L0x7fffffffdaa8;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffdaa8; PC = 0x4298022 *)
mov L0x7fffffffdaa8 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffda80; Value = 0x97e21eff6128ba86; PC = 0x4298026 *)
mov r11 L0x7fffffffda80;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffda88; Value = 0x1d2265332e95b673; PC = 0x4298030 *)
mov r12 L0x7fffffffda88;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffda90; Value = 0xd70b8fd9e6e0c993; PC = 0x4298034 *)
mov r13 L0x7fffffffda90;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffda98; Value = 0x7b74e0fb3a70b832; PC = 0x4298038 *)
mov r14 L0x7fffffffda98;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffdaa0; Value = 0xd093ea12047bb314; PC = 0x4298042 *)
mov r15 L0x7fffffffdaa0;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdaa8; Value = 0x18de5b485fce9093; PC = 0x4298046 *)
mov rcx L0x7fffffffdaa8;
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
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffda80; Value = 0x97e21eff6128ba86; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffda80 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffda88; Value = 0x1d2265332e95b673; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffda88 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffda90; Value = 0xd70b8fd9e6e0c993; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffda90 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffda98; Value = 0x7b74e0fb3a70b832; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffda98 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffdaa0; Value = 0xd093ea12047bb314; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffdaa0 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffdaa8; Value = 0x18de5b485fce9093; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffdaa8 rcx;
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
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb60; Value = 0xba0c10f3ce86468c; PC = 0x4297171 *)
mov r8 L0x7fffffffdb60;
(* mov    %r8,%rax                                 #! PC = 0x4297174 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297177 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsi)                              #! EA = L0x7fffffffdb60; PC = 0x4297180 *)
mov L0x7fffffffdb60 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb60; Value = 0x5cdd8dedc0c92c5c; PC = 0x4297198 *)
mov rax L0x7fffffffdb60;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297201 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297205 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297208 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297211 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb68; Value = 0xc96c8911f78414b6; PC = 0x4297215 *)
adds carry r9 r9 L0x7fffffffdb68;
(* adc    $0x0,%r10                                #! PC = 0x4297219 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297223 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297227 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297230 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdb68; PC = 0x4297233 *)
mov L0x7fffffffdb68 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb60; Value = 0x5cdd8dedc0c92c5c; PC = 0x4297253 *)
mov rax L0x7fffffffdb60;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297256 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297260 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297263 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297266 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb68; Value = 0x67e4eb37b44a6778; PC = 0x4297270 *)
mov rax L0x7fffffffdb68;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297274 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297278 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297281 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297284 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb70; Value = 0x8cf15568c8be8c38; PC = 0x4297288 *)
adds carry r10 r10 L0x7fffffffdb70;
(* adc    $0x0,%r8                                 #! PC = 0x4297292 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297296 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297300 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297303 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsi)                          #! EA = L0x7fffffffdb70; PC = 0x4297306 *)
mov L0x7fffffffdb70 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb60; Value = 0x5cdd8dedc0c92c5c; PC = 0x4297326 *)
mov rax L0x7fffffffdb60;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297329 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297333 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297339 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb68; Value = 0x67e4eb37b44a6778; PC = 0x4297343 *)
mov rax L0x7fffffffdb68;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297347 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297351 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297354 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297357 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0856469b2513072b; PC = 0x4297361 *)
mov rax L0x7fffffffdb70;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297365 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297369 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297372 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297375 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsi),%r8                           #! EA = L0x7fffffffdb78; Value = 0xa94e14fe55d33199; PC = 0x4297379 *)
adds carry r8 r8 L0x7fffffffdb78;
(* adc    $0x0,%r9                                 #! PC = 0x4297383 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297387 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4297391 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4297394 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsi)                          #! EA = L0x7fffffffdb78; PC = 0x4297397 *)
mov L0x7fffffffdb78 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb60; Value = 0x5cdd8dedc0c92c5c; PC = 0x4297417 *)
mov rax L0x7fffffffdb60;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297420 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297424 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297427 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb68; Value = 0x67e4eb37b44a6778; PC = 0x4297434 *)
mov rax L0x7fffffffdb68;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297438 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297442 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297445 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297448 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0856469b2513072b; PC = 0x4297452 *)
mov rax L0x7fffffffdb70;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297456 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297460 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297463 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297466 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x13dc2177e05b4feb; PC = 0x4297470 *)
mov rax L0x7fffffffdb78;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297474 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4297478 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297481 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297484 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsi),%r9                           #! EA = L0x7fffffffdb80; Value = 0xd45bda2f0d26187e; PC = 0x4297488 *)
adds carry r9 r9 L0x7fffffffdb80;
(* adc    $0x0,%r10                                #! PC = 0x4297492 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297496 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4297500 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4297503 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsi)                          #! EA = L0x7fffffffdb80; PC = 0x4297506 *)
mov L0x7fffffffdb80 rax;
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
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdb60; Value = 0x5cdd8dedc0c92c5c; PC = 0x4297526 *)
mov rax L0x7fffffffdb60;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297529 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297533 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297536 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297539 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb68; Value = 0x67e4eb37b44a6778; PC = 0x4297543 *)
mov rax L0x7fffffffdb68;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297547 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297551 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297554 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297557 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0856469b2513072b; PC = 0x4297561 *)
mov rax L0x7fffffffdb70;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297565 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297569 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297572 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297575 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x13dc2177e05b4feb; PC = 0x4297579 *)
mov rax L0x7fffffffdb78;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297583 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4297587 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297590 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297593 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0xf7c12893c0d6c073; PC = 0x4297597 *)
mov rax L0x7fffffffdb80;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297601 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4297605 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297608 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297611 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsi),%r10                          #! EA = L0x7fffffffdb88; Value = 0x071d7d58fa4bcf9b; PC = 0x4297615 *)
adds carry r10 r10 L0x7fffffffdb88;
(* adc    $0x0,%r8                                 #! PC = 0x4297619 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297623 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4297627 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4297630 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsi)                          #! EA = L0x7fffffffdb88; PC = 0x4297633 *)
mov L0x7fffffffdb88 rax;
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
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdb68; Value = 0x67e4eb37b44a6778; PC = 0x4297653 *)
mov rax L0x7fffffffdb68;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297657 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0856469b2513072b; PC = 0x4297671 *)
mov rax L0x7fffffffdb70;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297675 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297679 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297682 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297685 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x13dc2177e05b4feb; PC = 0x4297689 *)
mov rax L0x7fffffffdb78;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297693 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4297697 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297700 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297703 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0xf7c12893c0d6c073; PC = 0x4297707 *)
mov rax L0x7fffffffdb80;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297711 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4297715 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297718 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297721 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb88; Value = 0xe603e5096a12eebb; PC = 0x4297725 *)
mov rax L0x7fffffffdb88;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4297729 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4297733 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297736 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297739 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb90; Value = 0xa28901db94d5faab; PC = 0x4297743 *)
adds carry r8 r8 L0x7fffffffdb90;
(* adc    $0x0,%r9                                 #! PC = 0x4297747 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297751 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsi)                           #! EA = L0x7fffffffdb90; PC = 0x4297755 *)
mov L0x7fffffffdb90 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297759 *)
mov r8 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdb70; Value = 0x0856469b2513072b; PC = 0x4297762 *)
mov rax L0x7fffffffdb70;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297766 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4297770 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297773 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297776 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x13dc2177e05b4feb; PC = 0x4297780 *)
mov rax L0x7fffffffdb78;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297784 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4297788 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297791 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297794 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0xf7c12893c0d6c073; PC = 0x4297798 *)
mov rax L0x7fffffffdb80;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297802 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4297806 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297809 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297812 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb88; Value = 0xe603e5096a12eebb; PC = 0x4297816 *)
mov rax L0x7fffffffdb88;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4297820 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4297824 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4297827 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297830 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb98; Value = 0xb2d124cce8167e13; PC = 0x4297834 *)
adds carry r9 r9 L0x7fffffffdb98;
(* adc    $0x0,%r10                                #! PC = 0x4297838 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4297842 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsi)                           #! EA = L0x7fffffffdb98; PC = 0x4297846 *)
mov L0x7fffffffdb98 r9;
(* xor    %r9,%r9                                  #! PC = 0x4297850 *)
mov r9 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdb78; Value = 0x13dc2177e05b4feb; PC = 0x4297853 *)
mov rax L0x7fffffffdb78;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297857 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4297861 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297864 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297867 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0xf7c12893c0d6c073; PC = 0x4297871 *)
mov rax L0x7fffffffdb80;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297875 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4297879 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297882 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297885 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb88; Value = 0xe603e5096a12eebb; PC = 0x4297889 *)
mov rax L0x7fffffffdb88;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4297893 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4297897 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4297900 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297903 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsi),%r10                          #! EA = L0x7fffffffdba0; Value = 0x9bdf85a17b54f6ff; PC = 0x4297907 *)
adds carry r10 r10 L0x7fffffffdba0;
(* adc    $0x0,%r8                                 #! PC = 0x4297911 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4297915 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffdba0; PC = 0x4297919 *)
mov L0x7fffffffdba0 r10;
(* xor    %r10,%r10                                #! PC = 0x4297923 *)
mov r10 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb80; Value = 0xf7c12893c0d6c073; PC = 0x4297926 *)
mov rax L0x7fffffffdb80;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4297930 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4297934 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297937 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297940 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb88; Value = 0xe603e5096a12eebb; PC = 0x4297944 *)
mov rax L0x7fffffffdb88;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4297948 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4297952 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4297955 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4297958 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsi),%r8                           #! EA = L0x7fffffffdba8; Value = 0xdcccc77de5f7ef95; PC = 0x4297962 *)
adds carry r8 r8 L0x7fffffffdba8;
(* adc    $0x0,%r9                                 #! PC = 0x4297966 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4297970 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsi)                           #! EA = L0x7fffffffdba8; PC = 0x4297974 *)
mov L0x7fffffffdba8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4297978 *)
mov r8 0@uint64;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdb88; Value = 0xe603e5096a12eebb; PC = 0x4297981 *)
mov rax L0x7fffffffdb88;
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
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsi),%r9                           #! EA = L0x7fffffffdbb0; Value = 0x50fc2da2a117875d; PC = 0x4297999 *)
adds carry r9 r9 L0x7fffffffdbb0;
(* adc    $0x0,%r10                                #! PC = 0x4298003 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4298007 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsi)                           #! EA = L0x7fffffffdbb0; PC = 0x4298011 *)
mov L0x7fffffffdbb0 r9;
(* xor    %r9,%r9                                  #! PC = 0x4298015 *)
mov r9 0@uint64;
(* add    0x58(%rsi),%r10                          #! EA = L0x7fffffffdbb8; Value = 0x0005c5ee8818df90; PC = 0x4298018 *)
add r10 r10 L0x7fffffffdbb8;
(* mov    %r10,0x58(%rsi)                          #! EA = L0x7fffffffdbb8; PC = 0x4298022 *)
mov L0x7fffffffdbb8 r10;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffdb90; Value = 0x0ca6d93fc8ed8a17; PC = 0x4298026 *)
mov r11 L0x7fffffffdb90;
(* mov    0x38(%rsi),%r12                          #! EA = L0x7fffffffdb98; Value = 0xf1c81a396ae0a2e0; PC = 0x4298030 *)
mov r12 L0x7fffffffdb98;
(* mov    0x40(%rsi),%r13                          #! EA = L0x7fffffffdba0; Value = 0x5fe7d03c595c81fa; PC = 0x4298034 *)
mov r13 L0x7fffffffdba0;
(* mov    0x48(%rsi),%r14                          #! EA = L0x7fffffffdba8; Value = 0x28c7e3a16910e6ec; PC = 0x4298038 *)
mov r14 L0x7fffffffdba8;
(* mov    0x50(%rsi),%r15                          #! EA = L0x7fffffffdbb0; Value = 0x67ee877d68831f59; PC = 0x4298042 *)
mov r15 L0x7fffffffdbb0;
(* mov    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdbb8; Value = 0x1763214e1756f9a8; PC = 0x4298046 *)
mov rcx L0x7fffffffdbb8;
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
(* cmovb  0x30(%rsi),%r11                          #! EA = L0x7fffffffdb90; Value = 0x0ca6d93fc8ed8a17; PC = 0x4298092 *)
cmov r11 carry L0x7fffffffdb90 r11;
(* cmovb  0x38(%rsi),%r12                          #! EA = L0x7fffffffdb98; Value = 0xf1c81a396ae0a2e0; PC = 0x4298097 *)
cmov r12 carry L0x7fffffffdb98 r12;
(* cmovb  0x40(%rsi),%r13                          #! EA = L0x7fffffffdba0; Value = 0x5fe7d03c595c81fa; PC = 0x4298102 *)
cmov r13 carry L0x7fffffffdba0 r13;
(* cmovb  0x48(%rsi),%r14                          #! EA = L0x7fffffffdba8; Value = 0x28c7e3a16910e6ec; PC = 0x4298107 *)
cmov r14 carry L0x7fffffffdba8 r14;
(* cmovb  0x50(%rsi),%r15                          #! EA = L0x7fffffffdbb0; Value = 0x67ee877d68831f59; PC = 0x4298112 *)
cmov r15 carry L0x7fffffffdbb0 r15;
(* cmovb  0x58(%rsi),%rcx                          #! EA = L0x7fffffffdbb8; Value = 0x1763214e1756f9a8; PC = 0x4298117 *)
cmov rcx carry L0x7fffffffdbb8 rcx;
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
(* add    $0x340,%rsp                              #! PC = 0x4285261 *)
/* adds carry rsp rsp 0x340; */
(* pop    %rbx                                     #! PC = 0x4285268 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4285269 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4285270 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4285272 *)
#retq                                           #! 0x4285272 = 0x4285272;

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
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) -
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5])
  )
  (mod (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])),
  (limbs 64 [0, 0, 0, 0, 0, 0, c2_0, c2_1, c2_2, c2_3, c2_4, c2_5])
  = (
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5]) *
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) +
    (limbs 64 [a1_0, a1_1, a1_2, a1_3, a1_4, a1_5]) *
    (limbs 64 [a2_0, a2_1, a2_2, a2_3, a2_4, a2_5])
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
