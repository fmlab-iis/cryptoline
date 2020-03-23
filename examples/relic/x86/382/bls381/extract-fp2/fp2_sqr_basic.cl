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


mov L0x46c0d0 0xb9feffffffffaaab@uint64;
mov L0x46c0d8 0x1eabfffeb153ffff@uint64;
mov L0x46c0e0 0x6730d2a0f6b0f624@uint64;
mov L0x46c0e8 0x64774b84f38512bf@uint64;
mov L0x46c0f0 0x4b1ba7b6434bacd7@uint64;
mov L0x46c0f8 0x1a0111ea397fe69a@uint64;

(* fp2_sqr_basic: *)
/* fp2_sqr_basic:; */
(* push   %r14                                     #! PC = 0x4210480 *)
/* push r14; */
(* push   %r13                                     #! PC = 0x4210482 *)
/* push r13; */
(* mov    %rsi,%r13                                #! PC = 0x4210484 *)
/* mov r13 rsi; */
(* push   %r12                                     #! PC = 0x4210487 *)
/* push r12; */
(* push   %rbp                                     #! PC = 0x4210489 *)
/* push rbp; */
(* lea    0x30(%rsi),%r12                          #! PC = 0x4210490 *)
/* lea    %%EA,%%r12                          #! 0x4210490 = 0x4210490; */
(* push   %rbx                                     #! PC = 0x4210494 *)
/* push rbx; */
(* mov    %rdi,%rbx                                #! PC = 0x4210495 *)
/* mov rbx rdi; */
(* mov    $0xffffffff,%r14d                        #! PC = 0x4210498 *)
/* mov    $0xffffffff,%r14d                        #! 0x4210498 = 0x4210498; */
(* mov    %r12,%rdx                                #! PC = 0x4210504 *)
/* mov rdx r12; */
(* sub    $0x90,%rsp                               #! PC = 0x4210507 *)
/* subb carry rsp rsp 0x90@uint64; */
(* mov    %rsp,%rdi                                #! PC = 0x4210514 *)
/* mov rdi rsp; */
(* #callq  0x426ab0 <fp_add_integ>                 #! PC = 0x4210517 *)
#callq  0x426ab0 <fp_add_integ>                 #! 0x4210517 = 0x4210517;
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
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffde40; Value = 0x949c661b78e3b249; PC = 0x4292557 *)
mov r8 L0x7fffffffde40;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x10bdc5b7e5300f6a; PC = 0x4292560 *)
adds carry r8 r8 L0x7fffffffde10;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffde48; Value = 0x062a4962b51143f4; PC = 0x4292563 *)
mov r9 L0x7fffffffde48;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0x569de22c4b6e65b2; PC = 0x4292567 *)
adcs carry r9 r9 L0x7fffffffde18 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffde50; Value = 0x4b356cc27d6817f2; PC = 0x4292571 *)
mov r10 L0x7fffffffde50;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0x0883924a4e293293; PC = 0x4292575 *)
adcs carry r10 r10 L0x7fffffffde20 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffde58; Value = 0x4783f3b8034eb8f4; PC = 0x4292579 *)
mov r11 L0x7fffffffde58;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xcd8c24b9be1651d6; PC = 0x4292583 *)
adcs carry r11 r11 L0x7fffffffde28 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffde60; Value = 0xfe6463e95aed3e60; PC = 0x4292587 *)
mov r12 L0x7fffffffde60;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xf06829bf2aee4b57; PC = 0x4292591 *)
adcs carry r12 r12 L0x7fffffffde30 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffde68; Value = 0x08b818dac81fed86; PC = 0x4292595 *)
mov r13 L0x7fffffffde68;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x0405236f470ef8e7; PC = 0x4292599 *)
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc90; PC = 0x4292687 *)
mov L0x7fffffffdc90 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc98; PC = 0x4292690 *)
mov L0x7fffffffdc98 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdca0; PC = 0x4292694 *)
mov L0x7fffffffdca0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdca8; PC = 0x4292698 *)
mov L0x7fffffffdca8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdcb0; PC = 0x4292702 *)
mov L0x7fffffffdcb0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdcb8; PC = 0x4292706 *)
mov L0x7fffffffdcb8 r13;
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
(* lea    0x30(%rsp),%rdi                          #! PC = 0x4210522 *)
/* lea    %%EA,%%rdi                          #! 0x4210522 = 0x4210522; */
(* mov    %r12,%rdx                                #! PC = 0x4210527 *)
/* mov rdx r12; */
(* mov    %r13,%rsi                                #! PC = 0x4210530 *)
/* mov rsi r13; */
(* #callq  0x426b50 <fp_sub_integ>                 #! PC = 0x4210533 *)
#callq  0x426b50 <fp_sub_integ>                 #! 0x4210533 = 0x4210533;
(* #jmpq   0x418282 <fp_subm_low>                  #! PC = 0x4352848 *)
#jmpq   0x418282 <fp_subm_low>                  #! 0x4352848 = 0x4352848;
(* xor    %rax,%rax                                #! PC = 0x4293250 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4293253 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x10bdc5b7e5300f6a; PC = 0x4293256 *)
mov r8 L0x7fffffffde10;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffde40; Value = 0x949c661b78e3b249; PC = 0x4293259 *)
subb carry r8 r8 L0x7fffffffde40;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdcc0; PC = 0x4293262 *)
mov L0x7fffffffdcc0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde18; Value = 0x569de22c4b6e65b2; PC = 0x4293265 *)
mov r8 L0x7fffffffde18;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffde48; Value = 0x062a4962b51143f4; PC = 0x4293269 *)
sbbs carry r8 r8 L0x7fffffffde48 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdcc8; PC = 0x4293273 *)
mov L0x7fffffffdcc8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde20; Value = 0x0883924a4e293293; PC = 0x4293277 *)
mov r8 L0x7fffffffde20;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffde50; Value = 0x4b356cc27d6817f2; PC = 0x4293281 *)
sbbs carry r8 r8 L0x7fffffffde50 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdcd0; PC = 0x4293285 *)
mov L0x7fffffffdcd0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde28; Value = 0xcd8c24b9be1651d6; PC = 0x4293289 *)
mov r8 L0x7fffffffde28;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffde58; Value = 0x4783f3b8034eb8f4; PC = 0x4293293 *)
sbbs carry r8 r8 L0x7fffffffde58 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffdcd8; PC = 0x4293297 *)
mov L0x7fffffffdcd8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde30; Value = 0xf06829bf2aee4b57; PC = 0x4293301 *)
mov r8 L0x7fffffffde30;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffde60; Value = 0xfe6463e95aed3e60; PC = 0x4293305 *)
sbbs carry r8 r8 L0x7fffffffde60 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffdce0; PC = 0x4293309 *)
mov L0x7fffffffdce0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde38; Value = 0x0405236f470ef8e7; PC = 0x4293313 *)
mov r8 L0x7fffffffde38;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffde68; Value = 0x08b818dac81fed86; PC = 0x4293317 *)
sbbs carry r8 r8 L0x7fffffffde68 carry;

mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffdce8; PC = 0x4293321 *)
mov L0x7fffffffdce8 r8;
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
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdcc0; PC = 0x4293401 *)
adds carry L0x7fffffffdcc0 L0x7fffffffdcc0 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdcc8; PC = 0x4293404 *)
adcs carry L0x7fffffffdcc8 L0x7fffffffdcc8 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffdcd0; PC = 0x4293408 *)
adcs carry L0x7fffffffdcd0 L0x7fffffffdcd0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffdcd8; PC = 0x4293412 *)
adcs carry L0x7fffffffdcd8 L0x7fffffffdcd8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdce0; PC = 0x4293416 *)
adcs carry L0x7fffffffdce0 L0x7fffffffdce0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffdce8; PC = 0x4293420 *)
adcs carry L0x7fffffffdce8 L0x7fffffffdce8 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;

(* #retq                                           #! PC = 0x4293424 *)
#retq                                           #! 0x4293424 = 0x4293424;
(* #jmp    0x403f84 <fp2_sqr_basic+84>             #! PC = 0x4210538 *)
#jmp    0x403f84 <fp2_sqr_basic+84>             #! 0x4210538 = 0x4210538;
(* #callq  0x401df0 <fp_prime_get_qnr>             #! PC = 0x4210564 *)
#callq  0x401df0 <fp_prime_get_qnr>             #! 0x4210564 = 0x4210564;
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
(* cmp    %eax,%r14d                               #! PC = 0x4210569 *)
/* cmp    %%rax,%r14d                               #! 0x4210569 = 0x4210569; */
(* #jg     0x403f70 <fp2_sqr_basic+64>             #! PC = 0x4210572 *)
#jg     0x403f70 <fp2_sqr_basic+64>             #! 0x4210572 = 0x4210572;
(* mov    $0x1,%ebp                                #! PC = 0x4210574 *)
/* mov rbp 0x1@uint64; */
(* #jmp    0x403fab <fp2_sqr_basic+123>            #! PC = 0x4210579 *)
#jmp    0x403fab <fp2_sqr_basic+123>            #! 0x4210579 = 0x4210579;
(* #callq  0x401df0 <fp_prime_get_qnr>             #! PC = 0x4210603 *)
#callq  0x401df0 <fp_prime_get_qnr>             #! 0x4210603 = 0x4210603;
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
(* cmp    %eax,%ebp                                #! PC = 0x4210608 *)
/* cmp    %%rax,%%rbp                                #! 0x4210608 = 0x4210608; */
(* #jl     0x403f98 <fp2_sqr_basic+104>            #! PC = 0x4210610 *)
#jl     0x403f98 <fp2_sqr_basic+104>            #! 0x4210610 = 0x4210610;
(* #callq  0x401df0 <fp_prime_get_qnr>             #! PC = 0x4210612 *)
#callq  0x401df0 <fp_prime_get_qnr>             #! 0x4210612 = 0x4210612;
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
(* cmp    $0xffffffff,%eax                         #! PC = 0x4210617 *)
/* cmp    $0xffffffff,%%rax                         #! 0x4210617 = 0x4210617; */
(* #je     0x404050 <fp2_sqr_basic+288>            #! PC = 0x4210620 *)
#je     0x404050 <fp2_sqr_basic+288>            #! 0x4210620 = 0x4210620;
(* lea    0x60(%rsp),%rdi                          #! PC = 0x4210768 *)
/* lea    %%EA,%%rdi                          #! 0x4210768 = 0x4210768; */
(* mov    %r13,%rsi                                #! PC = 0x4210773 *)
/* mov rsi r13; */
(* #callq  0x426c50 <fp_dbl_integ>                 #! PC = 0x4210776 *)
#callq  0x426c50 <fp_dbl_integ>                 #! 0x4210776 = 0x4210776;
(* #jmpq   0x418566 <fp_dblm_low>                  #! PC = 0x4353104 *)
#jmpq   0x418566 <fp_dblm_low>                  #! 0x4353104 = 0x4353104;
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
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde10; Value = 0x10bdc5b7e5300f6a; PC = 0x4294005 *)
mov r8 L0x7fffffffde10;
(* add    %r8,%r8                                  #! PC = 0x4294008 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffde18; Value = 0x569de22c4b6e65b2; PC = 0x4294011 *)
mov r9 L0x7fffffffde18;
(* adc    %r9,%r9                                  #! PC = 0x4294015 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffde20; Value = 0x0883924a4e293293; PC = 0x4294018 *)
mov r10 L0x7fffffffde20;
(* adc    %r10,%r10                                #! PC = 0x4294022 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffde28; Value = 0xcd8c24b9be1651d6; PC = 0x4294025 *)
mov r11 L0x7fffffffde28;
(* adc    %r11,%r11                                #! PC = 0x4294029 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffde30; Value = 0xf06829bf2aee4b57; PC = 0x4294032 *)
mov r12 L0x7fffffffde30;
(* adc    %r12,%r12                                #! PC = 0x4294036 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffde38; Value = 0x0405236f470ef8e7; PC = 0x4294039 *)
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
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdcf0; PC = 0x4294130 *)
mov L0x7fffffffdcf0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdcf8; PC = 0x4294133 *)
mov L0x7fffffffdcf8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdd00; PC = 0x4294137 *)
mov L0x7fffffffdd00 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdd08; PC = 0x4294141 *)
mov L0x7fffffffdd08 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffdd10; PC = 0x4294145 *)
mov L0x7fffffffdd10 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffdd18; PC = 0x4294149 *)
mov L0x7fffffffdd18 r13;
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
(* lea    0x30(%rbx),%rdi                          #! PC = 0x4210781 *)
/* lea    %%EA,%%rdi                          #! 0x4210781 = 0x4210781; */
(* lea    0x60(%rsp),%rsi                          #! PC = 0x4210785 *)
/* lea    %%EA,%%rsi                          #! 0x4210785 = 0x4210785; */
(* mov    %r12,%rdx                                #! PC = 0x4210790 *)
/* mov rdx r12; */
(* #callq  0x428770 <fp_mul_integ>                 #! PC = 0x4210793 *)
#callq  0x428770 <fp_mul_integ>                 #! 0x4210793 = 0x4210793;
(* #jmpq   0x418aa7 <fp_mulm_low>                  #! PC = 0x4360048 *)
#jmpq   0x418aa7 <fp_mulm_low>                  #! 0x4360048 = 0x4360048;
(* push   %r12                                     #! PC = 0x4295335 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4295337 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4295339 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4295341 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4295343 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4295344 *)
/* push rbp; */
(* sub    $0x60,%rsp                               #! PC = 0x4295345 *)
/* subb carry rsp rsp 0x60@uint64; */
(* mov    %rdx,%rcx                                #! PC = 0x4295349 *)
/* mov rcx rdx; */
(* lea    0x53611(%rip),%rbx        # 0x46c0d0     #! PC = 0x4295352 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4295352 = 0x4295352; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295359 *)
mov rax L0x7fffffffdcf0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295362 *)
mull rdx rax rax L0x7fffffffde40;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdbf8; PC = 0x4295365 *)
mov L0x7fffffffdbf8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4295369 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4295372 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4295375 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295378 *)
mov rax L0x7fffffffdcf0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295381 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r8                                 #! PC = 0x4295385 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295388 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295391 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295395 *)
mov rax L0x7fffffffdcf8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295399 *)
mull rdx rax rax L0x7fffffffde40;
(* add    %rax,%r8                                 #! PC = 0x4295402 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffdc00; PC = 0x4295405 *)
mov L0x7fffffffdc00 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295410 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295413 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295417 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295420 *)
mov rax L0x7fffffffdcf0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295423 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r9                                 #! PC = 0x4295427 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295430 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295433 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295437 *)
mov rax L0x7fffffffdcf8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295441 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r9                                 #! PC = 0x4295445 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295448 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295451 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295455 *)
mov rax L0x7fffffffdd00;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295459 *)
mull rdx rax rax L0x7fffffffde40;
(* add    %rax,%r9                                 #! PC = 0x4295462 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffdc08; PC = 0x4295465 *)
mov L0x7fffffffdc08 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295470 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295473 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295477 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295480 *)
mov rax L0x7fffffffdcf0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295483 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r10                                #! PC = 0x4295487 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295490 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295493 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295497 *)
mov rax L0x7fffffffdcf8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295501 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r10                                #! PC = 0x4295505 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295508 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295511 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295515 *)
mov rax L0x7fffffffdd00;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295519 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r10                                #! PC = 0x4295523 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295526 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295529 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295533 *)
mov rax L0x7fffffffdd08;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295537 *)
mull rdx rax rax L0x7fffffffde40;
(* add    %rax,%r10                                #! PC = 0x4295540 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffdc10; PC = 0x4295543 *)
mov L0x7fffffffdc10 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295548 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295551 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295555 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295558 *)
mov rax L0x7fffffffdcf0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4295561 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r8                                 #! PC = 0x4295565 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295568 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295571 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295575 *)
mov rax L0x7fffffffdcf8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295579 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r8                                 #! PC = 0x4295583 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295586 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295589 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295593 *)
mov rax L0x7fffffffdd00;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295597 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r8                                 #! PC = 0x4295601 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295604 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295607 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295611 *)
mov rax L0x7fffffffdd08;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295615 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r8                                 #! PC = 0x4295619 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295622 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295625 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4295629 *)
mov rax L0x7fffffffdd10;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295633 *)
mull rdx rax rax L0x7fffffffde40;
(* add    %rax,%r8                                 #! PC = 0x4295636 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffdc18; PC = 0x4295639 *)
mov L0x7fffffffdc18 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295644 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295647 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295651 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdcf0; Value = 0x217b8b6fca601ed4; PC = 0x4295654 *)
mov rax L0x7fffffffdcf0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4295657 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r9                                 #! PC = 0x4295661 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295664 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295667 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295671 *)
mov rax L0x7fffffffdcf8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4295675 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r9                                 #! PC = 0x4295679 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295682 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295685 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295689 *)
mov rax L0x7fffffffdd00;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295693 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r9                                 #! PC = 0x4295697 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295700 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295703 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295707 *)
mov rax L0x7fffffffdd08;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295711 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r9                                 #! PC = 0x4295715 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295718 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295721 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4295725 *)
mov rax L0x7fffffffdd10;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295729 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r9                                 #! PC = 0x4295733 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295736 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295739 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4295743 *)
mov rax L0x7fffffffdd18;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffde40; PC = 0x4295747 *)
mull rdx rax rax L0x7fffffffde40;
(* add    %rax,%r9                                 #! PC = 0x4295750 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffdc20; PC = 0x4295753 *)
mov L0x7fffffffdc20 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295758 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295761 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295765 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdcf8; Value = 0xad3bc45896dccb64; PC = 0x4295768 *)
mov rax L0x7fffffffdcf8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4295772 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r10                                #! PC = 0x4295776 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295779 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295782 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295786 *)
mov rax L0x7fffffffdd00;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4295790 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r10                                #! PC = 0x4295794 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295797 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295800 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295804 *)
mov rax L0x7fffffffdd08;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295808 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r10                                #! PC = 0x4295812 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295815 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295818 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4295822 *)
mov rax L0x7fffffffdd10;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295826 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r10                                #! PC = 0x4295830 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295833 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295836 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4295840 *)
mov rax L0x7fffffffdd18;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffde48; PC = 0x4295844 *)
mull rdx rax rax L0x7fffffffde48;
(* add    %rax,%r10                                #! PC = 0x4295848 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffdc28; PC = 0x4295851 *)
mov L0x7fffffffdc28 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295856 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295859 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295863 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdd00; Value = 0x110724949c526526; PC = 0x4295866 *)
mov rax L0x7fffffffdd00;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4295870 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r8                                 #! PC = 0x4295874 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295877 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295880 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295884 *)
mov rax L0x7fffffffdd08;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4295888 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r8                                 #! PC = 0x4295892 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295895 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295898 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4295902 *)
mov rax L0x7fffffffdd10;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295906 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r8                                 #! PC = 0x4295910 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295913 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295916 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4295920 *)
mov rax L0x7fffffffdd18;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffde50; PC = 0x4295924 *)
mull rdx rax rax L0x7fffffffde50;
(* add    %rax,%r8                                 #! PC = 0x4295928 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffdc30; PC = 0x4295931 *)
mov L0x7fffffffdc30 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295936 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295939 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295943 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdd08; Value = 0x9b1849737c2ca3ac; PC = 0x4295946 *)
mov rax L0x7fffffffdd08;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4295950 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r9                                 #! PC = 0x4295954 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295957 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295960 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4295964 *)
mov rax L0x7fffffffdd10;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4295968 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r9                                 #! PC = 0x4295972 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295975 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295978 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4295982 *)
mov rax L0x7fffffffdd18;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffde58; PC = 0x4295986 *)
mull rdx rax rax L0x7fffffffde58;
(* add    %rax,%r9                                 #! PC = 0x4295990 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffdc38; PC = 0x4295993 *)
mov L0x7fffffffdc38 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295998 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296001 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296005 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdd10; Value = 0xe0d0537e55dc96af; PC = 0x4296008 *)
mov rax L0x7fffffffdd10;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4296012 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r10                                #! PC = 0x4296016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296022 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4296026 *)
mov rax L0x7fffffffdd18;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffde60; PC = 0x4296030 *)
mull rdx rax rax L0x7fffffffde60;
(* add    %rax,%r10                                #! PC = 0x4296034 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffdc40; PC = 0x4296037 *)
mov L0x7fffffffdc40 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4296042 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296045 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdd18; Value = 0x080a46de8e1df1cf; PC = 0x4296049 *)
mov rax L0x7fffffffdd18;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffde68; PC = 0x4296053 *)
mull rdx rax rax L0x7fffffffde68;
(* add    %rax,%r8                                 #! PC = 0x4296057 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffdc48; PC = 0x4296060 *)
mov L0x7fffffffdc48 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4296065 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffdc50; PC = 0x4296068 *)
mov L0x7fffffffdc50 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296073 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4296076 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffdbf8; Value = 0x7bc7b7a240d43274; PC = 0x4296086 *)
mov r8 L0x7fffffffdbf8;
(* mov    %r8,%rax                                 #! PC = 0x4296090 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4296093 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdbf8; PC = 0x4296096 *)
mov L0x7fffffffdbf8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296100 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4296103 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4296106 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4296109 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4296112 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0xcdd57f40a62768a4; PC = 0x4296115 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296119 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4296123 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296126 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296129 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffdc00; Value = 0xc0a8d7ee2a553aa0; PC = 0x4296133 *)
adds carry r9 r9 L0x7fffffffdc00;
(* adc    $0x0,%r10                                #! PC = 0x4296138 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296142 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4296146 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4296149 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffdc00; PC = 0x4296152 *)
mov L0x7fffffffdc00 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296157 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4296160 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4296163 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296166 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296170 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0xcdd57f40a62768a4; PC = 0x4296173 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296177 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4296181 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296184 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296187 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x72af68f93ddf6440; PC = 0x4296191 *)
mov rax L0x7fffffffdc00;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296196 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4296200 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296206 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffdc08; Value = 0x7b2741000af57b7d; PC = 0x4296210 *)
adds carry r10 r10 L0x7fffffffdc08;
(* adc    $0x0,%r8                                 #! PC = 0x4296215 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296219 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4296223 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4296226 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffdc08; PC = 0x4296229 *)
mov L0x7fffffffdc08 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296234 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4296237 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4296240 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296243 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4296247 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0xcdd57f40a62768a4; PC = 0x4296250 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296254 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4296258 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296261 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296264 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x72af68f93ddf6440; PC = 0x4296268 *)
mov rax L0x7fffffffdc00;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296273 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4296277 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296280 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296283 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0x556b06f090dfd110; PC = 0x4296287 *)
mov rax L0x7fffffffdc08;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296292 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4296296 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296299 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296302 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffdc10; Value = 0xc17d2af0499d33f9; PC = 0x4296306 *)
adds carry r8 r8 L0x7fffffffdc10;
(* adc    $0x0,%r9                                 #! PC = 0x4296311 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296315 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4296319 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4296322 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffdc10; PC = 0x4296325 *)
mov L0x7fffffffdc10 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296330 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4296333 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4296336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296339 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4296343 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0xcdd57f40a62768a4; PC = 0x4296346 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296350 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4296354 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296357 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296360 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x72af68f93ddf6440; PC = 0x4296364 *)
mov rax L0x7fffffffdc00;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296369 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4296373 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296376 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296379 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0x556b06f090dfd110; PC = 0x4296383 *)
mov rax L0x7fffffffdc08;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296388 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4296392 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296395 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296398 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xae8b835b021fd9f7; PC = 0x4296402 *)
mov rax L0x7fffffffdc10;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296407 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4296411 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296414 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296417 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffdc18; Value = 0x70a3e41cc4e00f54; PC = 0x4296421 *)
adds carry r9 r9 L0x7fffffffdc18;
(* adc    $0x0,%r10                                #! PC = 0x4296426 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4296434 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4296437 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffdc18; PC = 0x4296440 *)
mov L0x7fffffffdc18 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296445 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4296448 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4296451 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296454 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296458 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0xcdd57f40a62768a4; PC = 0x4296461 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296465 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4296469 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296472 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296475 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x72af68f93ddf6440; PC = 0x4296479 *)
mov rax L0x7fffffffdc00;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296484 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4296488 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296491 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296494 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0x556b06f090dfd110; PC = 0x4296498 *)
mov rax L0x7fffffffdc08;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296503 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4296507 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296510 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296513 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xae8b835b021fd9f7; PC = 0x4296517 *)
mov rax L0x7fffffffdc10;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296522 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4296526 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296529 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296532 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x7f2c168db330f859; PC = 0x4296536 *)
mov rax L0x7fffffffdc18;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296541 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4296545 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296548 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296551 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffdc20; Value = 0xfd0c2454cb51c559; PC = 0x4296555 *)
adds carry r10 r10 L0x7fffffffdc20;
(* adc    $0x0,%r8                                 #! PC = 0x4296560 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296564 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4296568 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4296571 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffdc20; PC = 0x4296574 *)
mov L0x7fffffffdc20 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296579 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4296582 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4296585 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296588 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4296592 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x72af68f93ddf6440; PC = 0x4296595 *)
mov rax L0x7fffffffdc00;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296600 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4296604 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296607 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296610 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0x556b06f090dfd110; PC = 0x4296614 *)
mov rax L0x7fffffffdc08;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296619 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4296623 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296626 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296629 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xae8b835b021fd9f7; PC = 0x4296633 *)
mov rax L0x7fffffffdc10;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296638 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4296642 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296645 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296648 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x7f2c168db330f859; PC = 0x4296652 *)
mov rax L0x7fffffffdc18;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296657 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4296661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x7d4e7964c71c8e52; PC = 0x4296671 *)
mov rax L0x7fffffffdc20;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296676 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4296680 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296683 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296686 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffdc28; Value = 0x60ffb96a897cd9dd; PC = 0x4296690 *)
adds carry r8 r8 L0x7fffffffdc28;
(* adc    $0x0,%r9                                 #! PC = 0x4296695 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296699 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffdc28; PC = 0x4296703 *)
mov L0x7fffffffdc28 r8;
(* xor    %r8,%r8                                  #! PC = 0x4296708 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0x556b06f090dfd110; PC = 0x4296711 *)
mov rax L0x7fffffffdc08;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296716 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4296720 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296723 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296726 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xae8b835b021fd9f7; PC = 0x4296730 *)
mov rax L0x7fffffffdc10;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296735 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4296739 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296742 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296745 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x7f2c168db330f859; PC = 0x4296749 *)
mov rax L0x7fffffffdc18;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296754 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4296758 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296761 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296764 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x7d4e7964c71c8e52; PC = 0x4296768 *)
mov rax L0x7fffffffdc20;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296773 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4296777 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296780 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296783 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffdc30; Value = 0x834d3ea6acde9699; PC = 0x4296787 *)
adds carry r9 r9 L0x7fffffffdc30;
(* adc    $0x0,%r10                                #! PC = 0x4296792 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296796 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffdc30; PC = 0x4296800 *)
mov L0x7fffffffdc30 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296805 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xae8b835b021fd9f7; PC = 0x4296808 *)
mov rax L0x7fffffffdc10;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296813 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4296817 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296820 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296823 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x7f2c168db330f859; PC = 0x4296827 *)
mov rax L0x7fffffffdc18;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296832 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4296836 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296839 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296842 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x7d4e7964c71c8e52; PC = 0x4296846 *)
mov rax L0x7fffffffdc20;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296851 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4296855 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296858 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296861 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffdc38; Value = 0xf8a1b8b7de7b0be0; PC = 0x4296865 *)
adds carry r10 r10 L0x7fffffffdc38;
(* adc    $0x0,%r8                                 #! PC = 0x4296870 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296874 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffdc38; PC = 0x4296878 *)
mov L0x7fffffffdc38 r10;
(* xor    %r10,%r10                                #! PC = 0x4296883 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x7f2c168db330f859; PC = 0x4296886 *)
mov rax L0x7fffffffdc18;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296891 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4296895 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296898 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296901 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x7d4e7964c71c8e52; PC = 0x4296905 *)
mov rax L0x7fffffffdc20;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296910 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4296914 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296917 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296920 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffdc40; Value = 0xf20bf86c82a1ae83; PC = 0x4296924 *)
adds carry r8 r8 L0x7fffffffdc40;
(* adc    $0x0,%r9                                 #! PC = 0x4296929 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296933 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffdc40; PC = 0x4296937 *)
mov L0x7fffffffdc40 r8;
(* xor    %r8,%r8                                  #! PC = 0x4296942 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x7d4e7964c71c8e52; PC = 0x4296945 *)
mov rax L0x7fffffffdc20;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296950 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4296954 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296957 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4296960 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffdc48; Value = 0x55909683889f68cf; PC = 0x4296964 *)
adds carry r9 r9 L0x7fffffffdc48;
(* adc    $0x0,%r10                                #! PC = 0x4296969 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4296973 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffdc48; PC = 0x4296977 *)
mov L0x7fffffffdc48 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296982 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffdc50; Value = 0x00461a61ba1553fe; PC = 0x4296985 *)
add r10 r10 L0x7fffffffdc50;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffdc50; PC = 0x4296990 *)
mov L0x7fffffffdc50 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffdc28; Value = 0x48b7f440879ffd03; PC = 0x4296995 *)
mov r11 L0x7fffffffdc28;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffdc30; Value = 0xc1e6f956f9854da3; PC = 0x4297000 *)
mov r12 L0x7fffffffdc30;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffdc38; Value = 0x0bd4e40475a5daf9; PC = 0x4297005 *)
mov r13 L0x7fffffffdc38;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffdc40; Value = 0x60bd4d75a9cb95c7; PC = 0x4297010 *)
mov r14 L0x7fffffffdc40;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffdc48; Value = 0xdab85d215357bd08; PC = 0x4297015 *)
mov r15 L0x7fffffffdc48;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffdc50; Value = 0x0d0098c94ba2bcbb; PC = 0x4297020 *)
mov rcx L0x7fffffffdc50;
(* sub    0x52f88(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4297025 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52f89(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4297032 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52f8a(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4297039 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52f8b(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4297046 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52f8c(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4297053 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52f8d(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4297060 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffdc28; Value = 0x48b7f440879ffd03; PC = 0x4297067 *)
cmov r11 carry L0x7fffffffdc28 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffdc30; Value = 0xc1e6f956f9854da3; PC = 0x4297073 *)
cmov r12 carry L0x7fffffffdc30 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffdc38; Value = 0x0bd4e40475a5daf9; PC = 0x4297079 *)
cmov r13 carry L0x7fffffffdc38 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffdc40; Value = 0x60bd4d75a9cb95c7; PC = 0x4297085 *)
cmov r14 carry L0x7fffffffdc40 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffdc48; Value = 0xdab85d215357bd08; PC = 0x4297091 *)
cmov r15 carry L0x7fffffffdc48 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffdc50; Value = 0x0d0098c94ba2bcbb; PC = 0x4297097 *)
cmov rcx carry L0x7fffffffdc50 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdd80; PC = 0x4297103 *)
mov L0x7fffffffdd80 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdd88; PC = 0x4297106 *)
mov L0x7fffffffdd88 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdd90; PC = 0x4297110 *)
mov L0x7fffffffdd90 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdd98; PC = 0x4297114 *)
mov L0x7fffffffdd98 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdda0; PC = 0x4297118 *)
mov L0x7fffffffdda0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdda8; PC = 0x4297122 *)
mov L0x7fffffffdda8 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4297126 *)
/* adds carry rsp rsp 0x60; */
(* pop    %rbp                                     #! PC = 0x4297130 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4297131 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4297132 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4297134 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4297136 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4297138 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4297140 *)
#retq                                           #! 0x4297140 = 0x4297140;
(* lea    0x30(%rsp),%rdx                          #! PC = 0x4210798 *)
/* lea    %%EA,%%rdx                          #! 0x4210798 = 0x4210798; */
(* mov    %rsp,%rsi                                #! PC = 0x4210803 *)
/* mov rsi rsp; */
(* mov    %rbx,%rdi                                #! PC = 0x4210806 *)
/* mov rdi rbx; */
(* #callq  0x428770 <fp_mul_integ>                 #! PC = 0x4210809 *)
#callq  0x428770 <fp_mul_integ>                 #! 0x4210809 = 0x4210809;
(* #jmpq   0x418aa7 <fp_mulm_low>                  #! PC = 0x4360048 *)
#jmpq   0x418aa7 <fp_mulm_low>                  #! 0x4360048 = 0x4360048;
(* push   %r12                                     #! PC = 0x4295335 *)
/* push r12; */
(* push   %r13                                     #! PC = 0x4295337 *)
/* push r13; */
(* push   %r14                                     #! PC = 0x4295339 *)
/* push r14; */
(* push   %r15                                     #! PC = 0x4295341 *)
/* push r15; */
(* push   %rbx                                     #! PC = 0x4295343 *)
/* push rbx; */
(* push   %rbp                                     #! PC = 0x4295344 *)
/* push rbp; */
(* sub    $0x60,%rsp                               #! PC = 0x4295345 *)
/* subb carry rsp rsp 0x60@uint64; */
(* mov    %rdx,%rcx                                #! PC = 0x4295349 *)
/* mov rcx rdx; */
(* lea    0x53611(%rip),%rbx        # 0x46c0d0     #! PC = 0x4295352 *)
/* lea    %%EA,%%rbx        # 0x46c0d0     #! 0x4295352 = 0x4295352; */
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295359 *)
mov rax L0x7fffffffdc90;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295362 *)
mull rdx rax rax L0x7fffffffdcc0;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdbf8; PC = 0x4295365 *)
mov L0x7fffffffdbf8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4295369 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4295372 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4295375 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295378 *)
mov rax L0x7fffffffdc90;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295381 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r8                                 #! PC = 0x4295385 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295388 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295391 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295395 *)
mov rax L0x7fffffffdc98;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295399 *)
mull rdx rax rax L0x7fffffffdcc0;
(* add    %rax,%r8                                 #! PC = 0x4295402 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffdc00; PC = 0x4295405 *)
mov L0x7fffffffdc00 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295410 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295413 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295417 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295420 *)
mov rax L0x7fffffffdc90;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295423 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r9                                 #! PC = 0x4295427 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295430 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295433 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295437 *)
mov rax L0x7fffffffdc98;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295441 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r9                                 #! PC = 0x4295445 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295448 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295451 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295455 *)
mov rax L0x7fffffffdca0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295459 *)
mull rdx rax rax L0x7fffffffdcc0;
(* add    %rax,%r9                                 #! PC = 0x4295462 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffdc08; PC = 0x4295465 *)
mov L0x7fffffffdc08 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295470 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295473 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295477 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295480 *)
mov rax L0x7fffffffdc90;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295483 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r10                                #! PC = 0x4295487 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295490 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295493 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295497 *)
mov rax L0x7fffffffdc98;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295501 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r10                                #! PC = 0x4295505 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295508 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295511 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295515 *)
mov rax L0x7fffffffdca0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295519 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r10                                #! PC = 0x4295523 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295526 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295529 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295533 *)
mov rax L0x7fffffffdca8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295537 *)
mull rdx rax rax L0x7fffffffdcc0;
(* add    %rax,%r10                                #! PC = 0x4295540 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffdc10; PC = 0x4295543 *)
mov L0x7fffffffdc10 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295548 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295551 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295555 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295558 *)
mov rax L0x7fffffffdc90;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4295561 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r8                                 #! PC = 0x4295565 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295568 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295571 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295575 *)
mov rax L0x7fffffffdc98;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295579 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r8                                 #! PC = 0x4295583 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295586 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295589 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295593 *)
mov rax L0x7fffffffdca0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295597 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r8                                 #! PC = 0x4295601 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295604 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295607 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295611 *)
mov rax L0x7fffffffdca8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295615 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r8                                 #! PC = 0x4295619 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295622 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295625 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4295629 *)
mov rax L0x7fffffffdcb0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295633 *)
mull rdx rax rax L0x7fffffffdcc0;
(* add    %rax,%r8                                 #! PC = 0x4295636 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffdc18; PC = 0x4295639 *)
mov L0x7fffffffdc18 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295644 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295647 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295651 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffdc90; Value = 0xa55a2bd35e13c1b3; PC = 0x4295654 *)
mov rax L0x7fffffffdc90;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4295657 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r9                                 #! PC = 0x4295661 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295664 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295667 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295671 *)
mov rax L0x7fffffffdc98;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4295675 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r9                                 #! PC = 0x4295679 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295682 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295685 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295689 *)
mov rax L0x7fffffffdca0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295693 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r9                                 #! PC = 0x4295697 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295700 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295703 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295707 *)
mov rax L0x7fffffffdca8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295711 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r9                                 #! PC = 0x4295715 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295718 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295721 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4295725 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295729 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r9                                 #! PC = 0x4295733 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295736 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295739 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4295743 *)
mov rax L0x7fffffffdcb8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffdcc0; PC = 0x4295747 *)
mull rdx rax rax L0x7fffffffdcc0;
(* add    %rax,%r9                                 #! PC = 0x4295750 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffdc20; PC = 0x4295753 *)
mov L0x7fffffffdc20 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295758 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295761 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4295765 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffdc98; Value = 0x5cc82b8f007fa9a6; PC = 0x4295768 *)
mov rax L0x7fffffffdc98;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4295772 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r10                                #! PC = 0x4295776 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295779 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295782 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295786 *)
mov rax L0x7fffffffdca0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4295790 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r10                                #! PC = 0x4295794 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295797 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295800 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295804 *)
mov rax L0x7fffffffdca8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295808 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r10                                #! PC = 0x4295812 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295815 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295818 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4295822 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295826 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r10                                #! PC = 0x4295830 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4295833 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295836 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4295840 *)
mov rax L0x7fffffffdcb8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffdcc8; PC = 0x4295844 *)
mull rdx rax rax L0x7fffffffdcc8;
(* add    %rax,%r10                                #! PC = 0x4295848 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffdc28; PC = 0x4295851 *)
mov L0x7fffffffdc28 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4295856 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4295859 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4295863 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffdca0; Value = 0x53b8ff0ccb914a85; PC = 0x4295866 *)
mov rax L0x7fffffffdca0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4295870 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r8                                 #! PC = 0x4295874 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295877 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295880 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295884 *)
mov rax L0x7fffffffdca8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4295888 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r8                                 #! PC = 0x4295892 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295895 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295898 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4295902 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295906 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r8                                 #! PC = 0x4295910 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4295913 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295916 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4295920 *)
mov rax L0x7fffffffdcb8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffdcd0; PC = 0x4295924 *)
mull rdx rax rax L0x7fffffffdcd0;
(* add    %rax,%r8                                 #! PC = 0x4295928 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffdc30; PC = 0x4295931 *)
mov L0x7fffffffdc30 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4295936 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4295939 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4295943 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffdca8; Value = 0x15101871c1650aca; PC = 0x4295946 *)
mov rax L0x7fffffffdca8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4295950 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r9                                 #! PC = 0x4295954 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295957 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295960 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4295964 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4295968 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r9                                 #! PC = 0x4295972 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4295975 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4295978 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4295982 *)
mov rax L0x7fffffffdcb8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffdcd8; PC = 0x4295986 *)
mull rdx rax rax L0x7fffffffdcd8;
(* add    %rax,%r9                                 #! PC = 0x4295990 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffdc38; PC = 0x4295993 *)
mov L0x7fffffffdc38 r9;
(* adc    %rdx,%r10                                #! PC = 0x4295998 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296001 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296005 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffdcb0; Value = 0xeecc8da885db89b8; PC = 0x4296008 *)
mov rax L0x7fffffffdcb0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4296012 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r10                                #! PC = 0x4296016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296022 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4296026 *)
mov rax L0x7fffffffdcb8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffdce0; PC = 0x4296030 *)
mull rdx rax rax L0x7fffffffdce0;
(* add    %rax,%r10                                #! PC = 0x4296034 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffdc40; PC = 0x4296037 *)
mov L0x7fffffffdc40 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4296042 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296045 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffdcb8; Value = 0x0cbd3c4a0f2ee66e; PC = 0x4296049 *)
mov rax L0x7fffffffdcb8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffdce8; PC = 0x4296053 *)
mull rdx rax rax L0x7fffffffdce8;
(* add    %rax,%r8                                 #! PC = 0x4296057 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffdc48; PC = 0x4296060 *)
mov L0x7fffffffdc48 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4296065 *)
adc r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffdc50; PC = 0x4296068 *)
mov L0x7fffffffdc50 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296073 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4296076 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffdbf8; Value = 0x0ac96daa872e3fa4; PC = 0x4296086 *)
mov r8 L0x7fffffffdbf8;
(* mov    %r8,%rax                                 #! PC = 0x4296090 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4296093 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffdbf8; PC = 0x4296096 *)
mov L0x7fffffffdbf8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296100 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4296103 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4296106 *)
adc r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4296109 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4296112 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0x6d696289ab894114; PC = 0x4296115 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296119 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4296123 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296126 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296129 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffdc00; Value = 0xa06646446a6506c5; PC = 0x4296133 *)
adds carry r9 r9 L0x7fffffffdc00;
(* adc    $0x0,%r10                                #! PC = 0x4296138 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296142 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4296146 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4296149 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffdc00; PC = 0x4296152 *)
mov L0x7fffffffdc00 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296157 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4296160 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4296163 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296166 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296170 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0x6d696289ab894114; PC = 0x4296173 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296177 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4296181 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296184 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296187 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x649c20303e8cf318; PC = 0x4296191 *)
mov rax L0x7fffffffdc00;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296196 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4296200 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296206 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffdc08; Value = 0x6b78da5d0dbfa1a4; PC = 0x4296210 *)
adds carry r10 r10 L0x7fffffffdc08;
(* adc    $0x0,%r8                                 #! PC = 0x4296215 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296219 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4296223 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4296226 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffdc08; PC = 0x4296229 *)
mov L0x7fffffffdc08 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296234 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4296237 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4296240 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296243 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4296247 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0x6d696289ab894114; PC = 0x4296250 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296254 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4296258 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296261 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296264 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x649c20303e8cf318; PC = 0x4296268 *)
mov rax L0x7fffffffdc00;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296273 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4296277 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296280 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296283 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0xe6b4eb53346dc0e0; PC = 0x4296287 *)
mov rax L0x7fffffffdc08;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296292 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4296296 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296299 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296302 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffdc10; Value = 0x1f51538b4c0e4ab0; PC = 0x4296306 *)
adds carry r8 r8 L0x7fffffffdc10;
(* adc    $0x0,%r9                                 #! PC = 0x4296311 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296315 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4296319 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4296322 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffdc10; PC = 0x4296325 *)
mov L0x7fffffffdc10 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296330 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4296333 *)
adds carry r8 r8 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r8 0 (2**64) && true;
assume r8 = 0 && true;
(* adc    %rdx,%r9                                 #! PC = 0x4296336 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296339 *)
adc r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4296343 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0x6d696289ab894114; PC = 0x4296346 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296350 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4296354 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296357 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296360 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x649c20303e8cf318; PC = 0x4296364 *)
mov rax L0x7fffffffdc00;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296369 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4296373 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296376 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296379 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0xe6b4eb53346dc0e0; PC = 0x4296383 *)
mov rax L0x7fffffffdc08;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296388 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4296392 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296395 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296398 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xa78c50f3513de152; PC = 0x4296402 *)
mov rax L0x7fffffffdc10;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296407 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4296411 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296414 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296417 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffdc18; Value = 0x79842547d8aef5c9; PC = 0x4296421 *)
adds carry r9 r9 L0x7fffffffdc18;
(* adc    $0x0,%r10                                #! PC = 0x4296426 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296430 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4296434 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4296437 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffdc18; PC = 0x4296440 *)
mov L0x7fffffffdc18 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296445 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4296448 *)
adds carry r9 r9 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r9 0 (2**64) && true;
assume r9 = 0 && true;
(* adc    %rdx,%r10                                #! PC = 0x4296451 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296454 *)
adc r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4296458 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdbf8; Value = 0x6d696289ab894114; PC = 0x4296461 *)
mov rax L0x7fffffffdbf8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296465 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4296469 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296472 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296475 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x649c20303e8cf318; PC = 0x4296479 *)
mov rax L0x7fffffffdc00;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296484 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4296488 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296491 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296494 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0xe6b4eb53346dc0e0; PC = 0x4296498 *)
mov rax L0x7fffffffdc08;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296503 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4296507 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296510 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296513 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xa78c50f3513de152; PC = 0x4296517 *)
mov rax L0x7fffffffdc10;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296522 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4296526 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296529 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296532 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x3ffd15d49a817a77; PC = 0x4296536 *)
mov rax L0x7fffffffdc18;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296541 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4296545 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296548 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296551 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffdc20; Value = 0x9a8418861cd4bae0; PC = 0x4296555 *)
adds carry r10 r10 L0x7fffffffdc20;
(* adc    $0x0,%r8                                 #! PC = 0x4296560 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296564 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4296568 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4296571 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffdc20; PC = 0x4296574 *)
mov L0x7fffffffdc20 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0d0; PC = 0x4296579 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4296582 *)
adds carry r10 r10 rax;
(* NOTE: Montgomery reduction *)
assert eqmod r10 0 (2**64) && true;
assume r10 = 0 && true;
(* adc    %rdx,%r8                                 #! PC = 0x4296585 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296588 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4296592 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffdc00; Value = 0x649c20303e8cf318; PC = 0x4296595 *)
mov rax L0x7fffffffdc00;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296600 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4296604 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296607 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296610 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0xe6b4eb53346dc0e0; PC = 0x4296614 *)
mov rax L0x7fffffffdc08;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296619 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4296623 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296626 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296629 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xa78c50f3513de152; PC = 0x4296633 *)
mov rax L0x7fffffffdc10;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296638 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4296642 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296645 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296648 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x3ffd15d49a817a77; PC = 0x4296652 *)
mov rax L0x7fffffffdc18;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296657 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4296661 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296664 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296667 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x0b72d351f58b9341; PC = 0x4296671 *)
mov rax L0x7fffffffdc20;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d8; PC = 0x4296676 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4296680 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296683 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296686 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffdc28; Value = 0xdfaf9654bd46d261; PC = 0x4296690 *)
adds carry r8 r8 L0x7fffffffdc28;
(* adc    $0x0,%r9                                 #! PC = 0x4296695 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296699 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffdc28; PC = 0x4296703 *)
mov L0x7fffffffdc28 r8;
(* xor    %r8,%r8                                  #! PC = 0x4296708 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffdc08; Value = 0xe6b4eb53346dc0e0; PC = 0x4296711 *)
mov rax L0x7fffffffdc08;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296716 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4296720 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296723 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296726 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xa78c50f3513de152; PC = 0x4296730 *)
mov rax L0x7fffffffdc10;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296735 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4296739 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296742 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296745 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x3ffd15d49a817a77; PC = 0x4296749 *)
mov rax L0x7fffffffdc18;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296754 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4296758 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296761 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296764 *)
adc r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x0b72d351f58b9341; PC = 0x4296768 *)
mov rax L0x7fffffffdc20;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0e0; PC = 0x4296773 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4296777 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296780 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296783 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffdc30; Value = 0xa42bb0090270ffee; PC = 0x4296787 *)
adds carry r9 r9 L0x7fffffffdc30;
(* adc    $0x0,%r10                                #! PC = 0x4296792 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4296796 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffdc30; PC = 0x4296800 *)
mov L0x7fffffffdc30 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296805 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffdc10; Value = 0xa78c50f3513de152; PC = 0x4296808 *)
mov rax L0x7fffffffdc10;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296813 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r10                                #! PC = 0x4296817 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296820 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296823 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x3ffd15d49a817a77; PC = 0x4296827 *)
mov rax L0x7fffffffdc18;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296832 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4296836 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296839 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296842 *)
adc r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x0b72d351f58b9341; PC = 0x4296846 *)
mov rax L0x7fffffffdc20;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e8; PC = 0x4296851 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4296855 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4296858 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296861 *)
adc r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffdc38; Value = 0xfded48dfde23461d; PC = 0x4296865 *)
adds carry r10 r10 L0x7fffffffdc38;
(* adc    $0x0,%r8                                 #! PC = 0x4296870 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4296874 *)
adc r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffdc38; PC = 0x4296878 *)
mov L0x7fffffffdc38 r10;
(* xor    %r10,%r10                                #! PC = 0x4296883 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffdc18; Value = 0x3ffd15d49a817a77; PC = 0x4296886 *)
mov rax L0x7fffffffdc18;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296891 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r8                                 #! PC = 0x4296895 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296898 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296901 *)
adc r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x0b72d351f58b9341; PC = 0x4296905 *)
mov rax L0x7fffffffdc20;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0f0; PC = 0x4296910 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4296914 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4296917 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4296920 *)
adc r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffdc40; Value = 0xb531c10607354ff5; PC = 0x4296924 *)
adds carry r8 r8 L0x7fffffffdc40;
(* adc    $0x0,%r9                                 #! PC = 0x4296929 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4296933 *)
adc r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffdc40; PC = 0x4296937 *)
mov L0x7fffffffdc40 r8;
(* xor    %r8,%r8                                  #! PC = 0x4296942 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffdc20; Value = 0x0b72d351f58b9341; PC = 0x4296945 *)
mov rax L0x7fffffffdc20;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f8; PC = 0x4296950 *)
mull rdx rax rax L0x46c0f8;
(* add    %rax,%r9                                 #! PC = 0x4296954 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4296957 *)
adcs carry r10 r10 rdx carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4296960 *)
adc r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffdc48; Value = 0xb2bfcf142b6c5382; PC = 0x4296964 *)
adds carry r9 r9 L0x7fffffffdc48;
(* adc    $0x0,%r10                                #! PC = 0x4296969 *)
adcs carry r10 r10 0x0@uint64 carry;
(* NOTE: cannot carry *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* adc    $0x0,%r8                                 #! PC = 0x4296973 *)
adc r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffdc48; PC = 0x4296977 *)
mov L0x7fffffffdc48 r9;
(* xor    %r9,%r9                                  #! PC = 0x4296982 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffdc50; Value = 0x010f690572b8c7fd; PC = 0x4296985 *)
add r10 r10 L0x7fffffffdc50;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffdc50; PC = 0x4296990 *)
mov L0x7fffffffdc50 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffdc28; Value = 0x686ab0b1653798b3; PC = 0x4296995 *)
mov r11 L0x7fffffffdc28;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffdc30; Value = 0x54c738be05f326e8; PC = 0x4297000 *)
mov r12 L0x7fffffffdc30;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffdc38; Value = 0x9bf828470a69ad3a; PC = 0x4297005 *)
mov r13 L0x7fffffffdc38;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffdc40; Value = 0x9cff84426b871dd7; PC = 0x4297010 *)
mov r14 L0x7fffffffdc40;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffdc48; Value = 0xc27c38a330b06130; PC = 0x4297015 *)
mov r15 L0x7fffffffdc48;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffdc50; Value = 0x02391ebbb28ace0a; PC = 0x4297020 *)
mov rcx L0x7fffffffdc50;
(* sub    0x52f88(%rip),%r11        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0xb9feffffffffaaab; PC = 0x4297025 *)
subb carry r11 r11 L0x46c0d0;
(* sbb    0x52f89(%rip),%r12        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x1eabfffeb153ffff; PC = 0x4297032 *)
sbbs carry r12 r12 L0x46c0d8 carry;
(* sbb    0x52f8a(%rip),%r13        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x6730d2a0f6b0f624; PC = 0x4297039 *)
sbbs carry r13 r13 L0x46c0e0 carry;
(* sbb    0x52f8b(%rip),%r14        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x64774b84f38512bf; PC = 0x4297046 *)
sbbs carry r14 r14 L0x46c0e8 carry;
(* sbb    0x52f8c(%rip),%r15        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x4b1ba7b6434bacd7; PC = 0x4297053 *)
sbbs carry r15 r15 L0x46c0f0 carry;
(* sbb    0x52f8d(%rip),%rcx        # 0x46c0f8     #! EA = L0x46c0f8; Value = 0x1a0111ea397fe69a; PC = 0x4297060 *)
sbbs carry rcx rcx L0x46c0f8 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffdc28; Value = 0x686ab0b1653798b3; PC = 0x4297067 *)
cmov r11 carry L0x7fffffffdc28 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffdc30; Value = 0x54c738be05f326e8; PC = 0x4297073 *)
cmov r12 carry L0x7fffffffdc30 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffdc38; Value = 0x9bf828470a69ad3a; PC = 0x4297079 *)
cmov r13 carry L0x7fffffffdc38 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffdc40; Value = 0x9cff84426b871dd7; PC = 0x4297085 *)
cmov r14 carry L0x7fffffffdc40 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffdc48; Value = 0xc27c38a330b06130; PC = 0x4297091 *)
cmov r15 carry L0x7fffffffdc48 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffdc50; Value = 0x02391ebbb28ace0a; PC = 0x4297097 *)
cmov rcx carry L0x7fffffffdc50 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffdd50; PC = 0x4297103 *)
mov L0x7fffffffdd50 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffdd58; PC = 0x4297106 *)
mov L0x7fffffffdd58 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffdd60; PC = 0x4297110 *)
mov L0x7fffffffdd60 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffdd68; PC = 0x4297114 *)
mov L0x7fffffffdd68 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffdd70; PC = 0x4297118 *)
mov L0x7fffffffdd70 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffdd78; PC = 0x4297122 *)
mov L0x7fffffffdd78 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4297126 *)
/* adds carry rsp rsp 0x60; */
(* pop    %rbp                                     #! PC = 0x4297130 *)
/* pop rbp; */
(* pop    %rbx                                     #! PC = 0x4297131 *)
/* pop rbx; */
(* pop    %r15                                     #! PC = 0x4297132 *)
/* pop r15; */
(* pop    %r14                                     #! PC = 0x4297134 *)
/* pop r14; */
(* pop    %r13                                     #! PC = 0x4297136 *)
/* pop r13; */
(* pop    %r12                                     #! PC = 0x4297138 *)
/* pop r12; */
(* #retq                                           #! PC = 0x4297140 *)
#retq                                           #! 0x4297140 = 0x4297140;
(* add    $0x90,%rsp                               #! PC = 0x4210814 *)
/* adds carry rsp rsp 0x90; */
(* pop    %rbx                                     #! PC = 0x4210821 *)
/* pop rbx; */
(* pop    %rbp                                     #! PC = 0x4210822 *)
/* pop rbp; */
(* pop    %r12                                     #! PC = 0x4210823 *)
/* pop r12; */
(* pop    %r13                                     #! PC = 0x4210825 *)
/* pop r13; */
(* pop    %r14                                     #! PC = 0x4210827 *)
/* pop r14; */
(* #retq                                           #! PC = 0x4210829 *)
#retq                                           #! 0x4210829 = 0x4210829;

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
