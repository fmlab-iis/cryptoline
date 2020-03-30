proc main (EA, L0x46c0c8, L0x46c0d0, L0x46c0d8, L0x46c0e0, L0x46c0e8, L0x46c0f0, L0x46c110, L0x5675a0, L0x567650, L0x567658, L0x567660, L0x567668, L0x567670, L0x567678, L0x567680, L0x567688, L0x567690, L0x567698, L0x5676a0, L0x5676a8, L0x5676b0, L0x5676b8, L0x5676c0, L0x5676c8, L0x5676d0, L0x5676d8, L0x5676e0, L0x567778, al, callq, carry, cmp, core_get, dl, ep_curve_opt_a, ep_dbl_projc, ep_dbl_projc_imp, ep_is_infty, fp_add_integ, fp_addm_low, fp_dbl_integ, fp_dblm_low, fp_is_zero, fp_mul_integ, fp_mulm_low, fp_sqr_integ, fp_sqrm_low, fp_sub_integ, fp_subm_low, je, jmpq, jne, lea, movl, movzbl, pop, push, r12, r13, r14, r15, rbp, rbx, rdi, retq, rsi, rsp, sete, subb, test, uint64) =
{
  true
  &&
  true
}

(* ep_dbl_projc: *)
/* ep_dbl_projc:; */
(* push   %rbp                                     #! PC = 0x4245248 *)
/* push rbp; */
(* push   %rbx                                     #! PC = 0x4245249 *)
/* push rbx; */
(* mov    %rdi,%rbp                                #! PC = 0x4245250 *)
mov rbp rdi;
(* mov    %rsi,%rdi                                #! PC = 0x4245253 *)
mov rdi rsi;
(* mov    %rsi,%rbx                                #! PC = 0x4245256 *)
mov rbx rsi;
(* sub    $0x8,%rsp                                #! PC = 0x4245259 *)
subb carry rsp rsp 0x8@uint64;
(* #callq  0x40f030 <ep_is_infty>                  #! PC = 0x4245263 *)
#callq  0x40f030 <ep_is_infty>                  #! 0x4245263 = 0x4245263;
(* sub    $0x8,%rsp                                #! PC = 0x4255792 *)
subb carry rsp rsp 0x8@uint64;
(* add    $0x60,%rdi                               #! PC = 0x4255796 *)
adds carry rdi rdi 0x60;
(* #callq  0x4037a0 <fp_is_zero>                   #! PC = 0x4255800 *)
#callq  0x4037a0 <fp_is_zero>                   #! 0x4255800 = 0x4255800;
(* mov    0x8(%rdi),%rax                           #! EA = L0x5676b8; Value = 0xebf4000bc40c0002; PC = 0x4208544 *)
mov rax L0x5676b8;
(* or     0x10(%rdi),%rax                          #! EA = L0x5676c0; Value = 0x5f48985753c758ba; PC = 0x4208548 *)
or rax L0x5676c0;
(* or     (%rdi),%rax                              #! EA = L0x5676b0; Value = 0x760900000002fffd; PC = 0x4208552 *)
or rax L0x5676b0;
(* or     0x18(%rdi),%rax                          #! EA = L0x5676c8; Value = 0x77ce585370525745; PC = 0x4208555 *)
or rax L0x5676c8;
(* or     0x20(%rdi),%rax                          #! EA = L0x5676d0; Value = 0x5c071a97a256ec6d; PC = 0x4208559 *)
or rax L0x5676d0;
(* or     0x28(%rdi),%rax                          #! EA = L0x5676d8; Value = 0x15f65ec3fa80e493; PC = 0x4208563 *)
or rax L0x5676d8;
(* sete   %dl                                      #! PC = 0x4208567 *)
sete   %dl                                      #! 0x4208567 = 0x4208567;
(* movzbl %dl,%eax                                 #! PC = 0x4208570 *)
movzbl %dl,%%rax                                 #! 0x4208570 = 0x4208570;
(* #retq                                           #! PC = 0x4208573 *)
#retq                                           #! 0x4208573 = 0x4208573;
(* cmp    $0x1,%eax                                #! PC = 0x4255805 *)
cmp    $0x1,%%rax                                #! 0x4255805 = 0x4255805;
(* sete   %al                                      #! PC = 0x4255808 *)
sete   %al                                      #! 0x4255808 = 0x4255808;
(* add    $0x8,%rsp                                #! PC = 0x4255811 *)
adds carry rsp rsp 0x8;
(* movzbl %al,%eax                                 #! PC = 0x4255815 *)
movzbl %al,%%rax                                 #! 0x4255815 = 0x4255815;
(* #retq                                           #! PC = 0x4255818 *)
#retq                                           #! 0x4255818 = 0x4255818;
(* test   %eax,%eax                                #! PC = 0x4245268 *)
test   %%rax,%%rax                                #! 0x4245268 = 0x4245268;
(* #jne    0x40c738 <ep_dbl_projc+56>              #! PC = 0x4245270 *)
#jne    0x40c738 <ep_dbl_projc+56>              #! 0x4245270 = 0x4245270;
(* mov    %rbx,%rdi                                #! PC = 0x4245272 *)
mov rdi rbx;
(* #callq  0x4037a0 <fp_is_zero>                   #! PC = 0x4245275 *)
#callq  0x4037a0 <fp_is_zero>                   #! 0x4245275 = 0x4245275;
(* mov    0x8(%rdi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4208544 *)
mov rax L0x567658;
(* or     0x10(%rdi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4208548 *)
or rax L0x567660;
(* or     (%rdi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4208552 *)
or rax L0x567650;
(* or     0x18(%rdi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4208555 *)
or rax L0x567668;
(* or     0x20(%rdi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4208559 *)
or rax L0x567670;
(* or     0x28(%rdi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4208563 *)
or rax L0x567678;
(* sete   %dl                                      #! PC = 0x4208567 *)
sete   %dl                                      #! 0x4208567 = 0x4208567;
(* movzbl %dl,%eax                                 #! PC = 0x4208570 *)
movzbl %dl,%%rax                                 #! 0x4208570 = 0x4208570;
(* #retq                                           #! PC = 0x4208573 *)
#retq                                           #! 0x4208573 = 0x4208573;
(* test   %eax,%eax                                #! PC = 0x4245280 *)
test   %%rax,%%rax                                #! 0x4245280 = 0x4245280;
(* #jne    0x40c738 <ep_dbl_projc+56>              #! PC = 0x4245282 *)
#jne    0x40c738 <ep_dbl_projc+56>              #! 0x4245282 = 0x4245282;
(* add    $0x8,%rsp                                #! PC = 0x4245284 *)
adds carry rsp rsp 0x8;
(* mov    %rbx,%rsi                                #! PC = 0x4245288 *)
mov rsi rbx;
(* mov    %rbp,%rdi                                #! PC = 0x4245291 *)
mov rdi rbp;
(* pop    %rbx                                     #! PC = 0x4245294 *)
pop rbx;
(* pop    %rbp                                     #! PC = 0x4245295 *)
pop rbp;
(* #jmpq   0x40c020 <ep_dbl_projc_imp>             #! PC = 0x4245296 *)
#jmpq   0x40c020 <ep_dbl_projc_imp>             #! 0x4245296 = 0x4245296;
(* push   %r14                                     #! PC = 0x4243488 *)
push r14;
(* push   %r13                                     #! PC = 0x4243490 *)
push r13;
(* push   %r12                                     #! PC = 0x4243492 *)
push r12;
(* push   %rbp                                     #! PC = 0x4243494 *)
push rbp;
(* mov    %rsi,%rbp                                #! PC = 0x4243495 *)
mov rbp rsi;
(* push   %rbx                                     #! PC = 0x4243498 *)
push rbx;
(* mov    %rdi,%rbx                                #! PC = 0x4243499 *)
mov rbx rdi;
(* sub    $0x120,%rsp                              #! PC = 0x4243502 *)
subb carry rsp rsp 0x120@uint64;
(* mov    0x90(%rsi),%ecx                          #! EA = L0x5676e0; Value = 0x0000000000000001; PC = 0x4243509 *)
mov rcx L0x5676e0;
(* test   %ecx,%ecx                                #! PC = 0x4243515 *)
test   %%rcx,%%rcx                                #! 0x4243515 = 0x4243515;
(* #jne    0x40c04d <ep_dbl_projc_imp+45>          #! PC = 0x4243517 *)
#jne    0x40c04d <ep_dbl_projc_imp+45>          #! 0x4243517 = 0x4243517;
(* #callq  0x40b9a0 <ep_curve_opt_a>               #! PC = 0x4243533 *)
#callq  0x40b9a0 <ep_curve_opt_a>               #! 0x4243533 = 0x4243533;
(* sub    $0x8,%rsp                                #! PC = 0x4241824 *)
subb carry rsp rsp 0x8@uint64;
(* #callq  0x401480 <core_get>                     #! PC = 0x4241828 *)
#callq  0x401480 <core_get>                     #! 0x4241828 = 0x4241828;
(* mov    0x6ac89(%rip),%rax        # 0x46c110 <core_ctx>#! EA = L0x46c110; Value = 0x000000000046c120; PC = 0x4199552 *)
mov rax L0x46c110;
(* #retq                                           #! PC = 0x4199559 *)
#retq                                           #! 0x4199559 = 0x4199559;
(* mov    0xfb480(%rax),%eax                       #! EA = L0x5675a0; Value = 0x0000000500000000; PC = 0x4241833 *)
mov rax L0x5675a0;
(* add    $0x8,%rsp                                #! PC = 0x4241839 *)
adds carry rsp rsp 0x8;
(* #retq                                           #! PC = 0x4241843 *)
#retq                                           #! 0x4241843 = 0x4241843;
(* test   %eax,%eax                                #! PC = 0x4243538 *)
test   %%rax,%%rax                                #! 0x4243538 = 0x4243538;
(* mov    %rbp,%rsi                                #! PC = 0x4243540 *)
mov rsi rbp;
(* mov    %rsp,%rdi                                #! PC = 0x4243543 *)
mov rdi rsp;
(* #je     0x40c1d8 <ep_dbl_projc_imp+440>         #! PC = 0x4243546 *)
#je     0x40c1d8 <ep_dbl_projc_imp+440>         #! 0x4243546 = 0x4243546;
(* lea    0x30(%rbp),%r14                          #! PC = 0x4243928 *)
lea    %%EA,%%r14                          #! 0x4243928 = 0x4243928;
(* lea    0x60(%rbx),%r12                          #! PC = 0x4243932 *)
lea    %%EA,%%r12                          #! 0x4243932 = 0x4243932;
(* #callq  0x429a10 <fp_sqr_integ>                 #! PC = 0x4243936 *)
#callq  0x429a10 <fp_sqr_integ>                 #! 0x4243936 = 0x4243936;
(* #jmpq   0x44a8c0 <fp_sqrm_low>                  #! PC = 0x4364816 *)
#jmpq   0x44a8c0 <fp_sqrm_low>                  #! 0x4364816 = 0x4364816;
(* mov    %rsi,%rdx                                #! PC = 0x4499648 *)
mov rdx rsi;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4499651 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4499651 = 0x4499651;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518520 *)
mov rax L0x567650;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518523 *)
mull rdx rax rax L0x567650;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518539 *)
mov rax L0x567650;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4518542 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518556 *)
mov rax L0x567658;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518560 *)
mull rdx rax rax L0x567650;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518581 *)
mov rax L0x567650;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4518584 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518598 *)
mov rax L0x567658;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4518602 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4518616 *)
mov rax L0x567660;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518620 *)
mull rdx rax rax L0x567650;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518641 *)
mov rax L0x567650;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4518644 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518658 *)
mov rax L0x567658;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4518662 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4518676 *)
mov rax L0x567660;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4518680 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4518694 *)
mov rax L0x567668;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518698 *)
mull rdx rax rax L0x567650;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518719 *)
mov rax L0x567650;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4518722 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518736 *)
mov rax L0x567658;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4518740 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4518754 *)
mov rax L0x567660;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4518758 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4518772 *)
mov rax L0x567668;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4518776 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4518790 *)
mov rax L0x567670;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518794 *)
mull rdx rax rax L0x567650;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4518815 *)
mov rax L0x567650;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4518818 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518832 *)
mov rax L0x567658;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4518836 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4518850 *)
mov rax L0x567660;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4518854 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4518868 *)
mov rax L0x567668;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4518872 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4518886 *)
mov rax L0x567670;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4518890 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4518904 *)
mov rax L0x567678;
(* mulq   (%rcx)                                   #! EA = L0x567650; PC = 0x4518908 *)
mull rdx rax rax L0x567650;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4518929 *)
mov rax L0x567658;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4518933 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4518947 *)
mov rax L0x567660;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4518951 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4518965 *)
mov rax L0x567668;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4518969 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4518983 *)
mov rax L0x567670;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4518987 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4519001 *)
mov rax L0x567678;
(* mulq   0x8(%rcx)                                #! EA = L0x567658; PC = 0x4519005 *)
mull rdx rax rax L0x567658;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4519027 *)
mov rax L0x567660;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4519031 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4519045 *)
mov rax L0x567668;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4519049 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4519063 *)
mov rax L0x567670;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4519067 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4519081 *)
mov rax L0x567678;
(* mulq   0x10(%rcx)                               #! EA = L0x567660; PC = 0x4519085 *)
mull rdx rax rax L0x567660;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4519107 *)
mov rax L0x567668;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4519111 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4519125 *)
mov rax L0x567670;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4519129 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4519143 *)
mov rax L0x567678;
(* mulq   0x18(%rcx)                               #! EA = L0x567668; PC = 0x4519147 *)
mull rdx rax rax L0x567668;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4519169 *)
mov rax L0x567670;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4519173 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4519187 *)
mov rax L0x567678;
(* mulq   0x20(%rcx)                               #! EA = L0x567670; PC = 0x4519191 *)
mull rdx rax rax L0x567670;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4519210 *)
mov rax L0x567678;
(* mulq   0x28(%rcx)                               #! EA = L0x567678; PC = 0x4519214 *)
mull rdx rax rax L0x567678;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0x459e0d9452d611e4; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x1f36a914d1d1ca54; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0xa64fb23cd5f1263a; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x1f36a914d1d1ca54; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x1dac8b3860cf39f6; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0x770e5e3002629638; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x1f36a914d1d1ca54; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x1dac8b3860cf39f6; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xa3db316e48f32787; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0x7900ae1a33e685a3; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x1f36a914d1d1ca54; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x1dac8b3860cf39f6; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xa3db316e48f32787; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x4206b61d0ba28a3c; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0xb5d74f4dd114c1f3; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x1f36a914d1d1ca54; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x1dac8b3860cf39f6; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xa3db316e48f32787; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x4206b61d0ba28a3c; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0xa04ab2c8ea6ca371; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x108a888102d7db07; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x1dac8b3860cf39f6; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xa3db316e48f32787; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x4206b61d0ba28a3c; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0xa04ab2c8ea6ca371; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x59412fb1c4299a69; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0x805bd86ee5490e56; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xa3db316e48f32787; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x4206b61d0ba28a3c; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0xa04ab2c8ea6ca371; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x59412fb1c4299a69; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0xcf76cce9a952ce7a; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x4206b61d0ba28a3c; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0xa04ab2c8ea6ca371; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x59412fb1c4299a69; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x974304235bcf8f05; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0xa04ab2c8ea6ca371; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x59412fb1c4299a69; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0x4154ac1e0d9f63ab; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x59412fb1c4299a69; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x53cd031f64def45c; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x014434c7604afd35; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x9e5c25e1f840429e; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x0bb5e06755c1bb91; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x34b02a9a934e43b1; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x13b6742f7c29eca5; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x53e41a48a899ccd5; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x0a55331f9bb57ced; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x9e5c25e1f840429e; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x0bb5e06755c1bb91; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x34b02a9a934e43b1; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x13b6742f7c29eca5; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x53e41a48a899ccd5; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x0a55331f9bb57ced; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd360; PC = 0x4520264 *)
mov L0x7fffffffd360 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd368; PC = 0x4520267 *)
mov L0x7fffffffd368 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd370; PC = 0x4520271 *)
mov L0x7fffffffd370 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd378; PC = 0x4520275 *)
mov L0x7fffffffd378 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd380; PC = 0x4520279 *)
mov L0x7fffffffd380 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd388; PC = 0x4520283 *)
mov L0x7fffffffd388 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x30(%rsp),%rdi                          #! PC = 0x4243941 *)
lea    %%EA,%%rdi                          #! 0x4243941 = 0x4243941;
(* mov    %r14,%rsi                                #! PC = 0x4243946 *)
mov rsi r14;
(* #callq  0x429a10 <fp_sqr_integ>                 #! PC = 0x4243949 *)
#callq  0x429a10 <fp_sqr_integ>                 #! 0x4243949 = 0x4243949;
(* #jmpq   0x44a8c0 <fp_sqrm_low>                  #! PC = 0x4364816 *)
#jmpq   0x44a8c0 <fp_sqrm_low>                  #! 0x4364816 = 0x4364816;
(* mov    %rsi,%rdx                                #! PC = 0x4499648 *)
mov rdx rsi;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4499651 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4499651 = 0x4499651;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518520 *)
mov rax L0x567680;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518523 *)
mull rdx rax rax L0x567680;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518539 *)
mov rax L0x567680;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4518542 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518556 *)
mov rax L0x567688;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518560 *)
mull rdx rax rax L0x567680;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518581 *)
mov rax L0x567680;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4518584 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518598 *)
mov rax L0x567688;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4518602 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518616 *)
mov rax L0x567690;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518620 *)
mull rdx rax rax L0x567680;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518641 *)
mov rax L0x567680;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4518644 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518658 *)
mov rax L0x567688;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4518662 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518676 *)
mov rax L0x567690;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4518680 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518694 *)
mov rax L0x567698;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518698 *)
mull rdx rax rax L0x567680;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518719 *)
mov rax L0x567680;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4518722 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518736 *)
mov rax L0x567688;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4518740 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518754 *)
mov rax L0x567690;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4518758 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518772 *)
mov rax L0x567698;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4518776 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518790 *)
mov rax L0x5676a0;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518794 *)
mull rdx rax rax L0x567680;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518815 *)
mov rax L0x567680;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4518818 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518832 *)
mov rax L0x567688;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4518836 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518850 *)
mov rax L0x567690;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4518854 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518868 *)
mov rax L0x567698;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4518872 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518886 *)
mov rax L0x5676a0;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4518890 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4518904 *)
mov rax L0x5676a8;
(* mulq   (%rcx)                                   #! EA = L0x567680; PC = 0x4518908 *)
mull rdx rax rax L0x567680;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518929 *)
mov rax L0x567688;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4518933 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518947 *)
mov rax L0x567690;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4518951 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518965 *)
mov rax L0x567698;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4518969 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518983 *)
mov rax L0x5676a0;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4518987 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519001 *)
mov rax L0x5676a8;
(* mulq   0x8(%rcx)                                #! EA = L0x567688; PC = 0x4519005 *)
mull rdx rax rax L0x567688;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4519027 *)
mov rax L0x567690;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4519031 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4519045 *)
mov rax L0x567698;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4519049 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519063 *)
mov rax L0x5676a0;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4519067 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519081 *)
mov rax L0x5676a8;
(* mulq   0x10(%rcx)                               #! EA = L0x567690; PC = 0x4519085 *)
mull rdx rax rax L0x567690;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4519107 *)
mov rax L0x567698;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4519111 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519125 *)
mov rax L0x5676a0;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4519129 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519143 *)
mov rax L0x5676a8;
(* mulq   0x18(%rcx)                               #! EA = L0x567698; PC = 0x4519147 *)
mull rdx rax rax L0x567698;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519169 *)
mov rax L0x5676a0;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4519173 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519187 *)
mov rax L0x5676a8;
(* mulq   0x20(%rcx)                               #! EA = L0x5676a0; PC = 0x4519191 *)
mull rdx rax rax L0x5676a0;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519210 *)
mov rax L0x5676a8;
(* mulq   0x28(%rcx)                               #! EA = L0x5676a8; PC = 0x4519214 *)
mull rdx rax rax L0x5676a8;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0x66ab91f3c49035e1; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x8be55ad110ac5e5d; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0xfb85a5dd0415221e; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x8be55ad110ac5e5d; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x59f791ab764cbcf7; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0x53e528776694b2d5; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x8be55ad110ac5e5d; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x59f791ab764cbcf7; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x261ba831e64c2949; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0x63231917e15741fb; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x8be55ad110ac5e5d; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x59f791ab764cbcf7; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x261ba831e64c2949; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x38b5a17ac9b75a5b; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0x25294e02efac7433; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x8be55ad110ac5e5d; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x59f791ab764cbcf7; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x261ba831e64c2949; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x38b5a17ac9b75a5b; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x216a3d68d57850b2; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x1ffb15926e36ed46; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x59f791ab764cbcf7; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x261ba831e64c2949; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x38b5a17ac9b75a5b; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x216a3d68d57850b2; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xf9a2d02f4a442ae3; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0x2c0f7bff9d2e3ff4; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x261ba831e64c2949; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x38b5a17ac9b75a5b; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x216a3d68d57850b2; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xf9a2d02f4a442ae3; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0xc7bbf4f1960251c4; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x38b5a17ac9b75a5b; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x216a3d68d57850b2; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xf9a2d02f4a442ae3; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x831abb26eef807ee; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x216a3d68d57850b2; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xf9a2d02f4a442ae3; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0x7fad8538c6371d24; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xf9a2d02f4a442ae3; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x81abb369e904349f; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x0089b7d640f57a15; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x9933c781a38d59d3; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0xe713f2b74eae0046; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x55e64af33f57a460; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x84250d7005c93478; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0xb2545123eae082df; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x19e54c16156718db; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x9933c781a38d59d3; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0xe713f2b74eae0046; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x55e64af33f57a460; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x84250d7005c93478; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0xb2545123eae082df; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x19e54c16156718db; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd390; PC = 0x4520264 *)
mov L0x7fffffffd390 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd398; PC = 0x4520267 *)
mov L0x7fffffffd398 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd3a0; PC = 0x4520271 *)
mov L0x7fffffffd3a0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd3a8; PC = 0x4520275 *)
mov L0x7fffffffd3a8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4520279 *)
mov L0x7fffffffd3b0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4520283 *)
mov L0x7fffffffd3b8 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4243954 *)
lea    %%EA,%%rsi                          #! 0x4243954 = 0x4243954;
(* lea    0x60(%rsp),%rdi                          #! PC = 0x4243959 *)
lea    %%EA,%%rdi                          #! 0x4243959 = 0x4243959;
(* #callq  0x429a10 <fp_sqr_integ>                 #! PC = 0x4243964 *)
#callq  0x429a10 <fp_sqr_integ>                 #! 0x4243964 = 0x4243964;
(* #jmpq   0x44a8c0 <fp_sqrm_low>                  #! PC = 0x4364816 *)
#jmpq   0x44a8c0 <fp_sqrm_low>                  #! 0x4364816 = 0x4364816;
(* mov    %rsi,%rdx                                #! PC = 0x4499648 *)
mov rdx rsi;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4499651 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4499651 = 0x4499651;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518520 *)
mov rax L0x7fffffffd390;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518523 *)
mull rdx rax rax L0x7fffffffd390;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518539 *)
mov rax L0x7fffffffd390;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518542 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518556 *)
mov rax L0x7fffffffd398;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518560 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518581 *)
mov rax L0x7fffffffd390;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518584 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518598 *)
mov rax L0x7fffffffd398;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518602 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4518616 *)
mov rax L0x7fffffffd3a0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518620 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518641 *)
mov rax L0x7fffffffd390;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518644 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518658 *)
mov rax L0x7fffffffd398;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518662 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4518676 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518680 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4518694 *)
mov rax L0x7fffffffd3a8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518698 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518719 *)
mov rax L0x7fffffffd390;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518722 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518736 *)
mov rax L0x7fffffffd398;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518740 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4518754 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518758 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4518772 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518776 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4518790 *)
mov rax L0x7fffffffd3b0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518794 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4518815 *)
mov rax L0x7fffffffd390;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4518818 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518832 *)
mov rax L0x7fffffffd398;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518836 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4518850 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518854 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4518868 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518872 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4518886 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518890 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4518904 *)
mov rax L0x7fffffffd3b8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518908 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4518929 *)
mov rax L0x7fffffffd398;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4518933 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4518947 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518951 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4518965 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518969 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4518983 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518987 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4519001 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4519005 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4519027 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519031 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4519045 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519049 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4519063 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4519067 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4519081 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4519085 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4519107 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519111 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4519125 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519129 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4519143 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4519147 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4519169 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519173 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4519187 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519191 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4519210 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519214 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0xfea9df14c3f263e9; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x0600eb2f886dd445; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0x891fd8642ec20cff; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x0600eb2f886dd445; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xb431d8aab0b1906b; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0x62e9866291774d53; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x0600eb2f886dd445; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xb431d8aab0b1906b; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xbf37700f59732809; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0x40461c79071a6d14; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x0600eb2f886dd445; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xb431d8aab0b1906b; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xbf37700f59732809; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x57719ff535f44c5c; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0x4e3835d2a57df6c2; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x0600eb2f886dd445; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xb431d8aab0b1906b; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xbf37700f59732809; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x57719ff535f44c5c; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x6acf411d4381a29c; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x7099083f09e68470; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xb431d8aab0b1906b; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xbf37700f59732809; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x57719ff535f44c5c; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x6acf411d4381a29c; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xe42ba7973a0a4573; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0x2af7f28bc12c8c7f; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xbf37700f59732809; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x57719ff535f44c5c; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x6acf411d4381a29c; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xe42ba7973a0a4573; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0x6908c769e6227e11; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x57719ff535f44c5c; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x6acf411d4381a29c; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xe42ba7973a0a4573; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0xeaf5777cc67be9fe; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x6acf411d4381a29c; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xe42ba7973a0a4573; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0x0f1f9e05de02cf20; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xe42ba7973a0a4573; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x48264deff34297ff; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x029e963d864d8bea; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x48d8e91a30c8e4a0; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0xbc150f9f64afdfa2; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x9a3e8a58c3a99794; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x4002691e7867ef1e; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x902b1ecfc5e8e577; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x19cbf9663311c399; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x48d8e91a30c8e4a0; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0xbc150f9f64afdfa2; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x9a3e8a58c3a99794; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x4002691e7867ef1e; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x902b1ecfc5e8e577; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x19cbf9663311c399; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd3c0; PC = 0x4520264 *)
mov L0x7fffffffd3c0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd3c8; PC = 0x4520267 *)
mov L0x7fffffffd3c8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd3d0; PC = 0x4520271 *)
mov L0x7fffffffd3d0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd3d8; PC = 0x4520275 *)
mov L0x7fffffffd3d8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd3e0; PC = 0x4520279 *)
mov L0x7fffffffd3e0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd3e8; PC = 0x4520283 *)
mov L0x7fffffffd3e8 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4243969 *)
lea    %%EA,%%rsi                          #! 0x4243969 = 0x4243969;
(* mov    %rbp,%rdx                                #! PC = 0x4243974 *)
mov rdx rbp;
(* mov    %rsi,%rdi                                #! PC = 0x4243977 *)
mov rdi rsi;
(* #callq  0x427a00 <fp_add_integ>                 #! PC = 0x4243980 *)
#callq  0x427a00 <fp_add_integ>                 #! 0x4243980 = 0x4243980;
(* #jmpq   0x4198e7 <fp_addm_low>                  #! PC = 0x4356608 *)
#jmpq   0x4198e7 <fp_addm_low>                  #! 0x4356608 = 0x4356608;
(* push   %rbx                                     #! PC = 0x4298983 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4298984 *)
push rbp;
(* push   %r12                                     #! PC = 0x4298985 *)
push r12;
(* push   %r13                                     #! PC = 0x4298987 *)
push r13;
(* mov    (%rdx),%r8                               #! EA = L0x567650; Value = 0x5cb38790fd530c16; PC = 0x4298989 *)
mov r8 L0x567650;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd390; Value = 0x9933c781a38d59d3; PC = 0x4298992 *)
adds carry r8 r8 L0x7fffffffd390;
(* mov    0x8(%rdx),%r9                            #! EA = L0x567658; Value = 0x7817fc679976fff5; PC = 0x4298995 *)
mov r9 L0x567658;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd398; Value = 0xe713f2b74eae0046; PC = 0x4298999 *)
adcs carry r9 r9 L0x7fffffffd398 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x567660; Value = 0x154f95c7143ba1c1; PC = 0x4299003 *)
mov r10 L0x567660;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd3a0; Value = 0x55e64af33f57a460; PC = 0x4299007 *)
adcs carry r10 r10 L0x7fffffffd3a0 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x567668; Value = 0xf0ae6acdf3d0e747; PC = 0x4299011 *)
mov r11 L0x567668;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3a8; Value = 0x84250d7005c93478; PC = 0x4299015 *)
adcs carry r11 r11 L0x7fffffffd3a8 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x567670; Value = 0xedce6ecc21dbf440; PC = 0x4299019 *)
mov r12 L0x567670;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3b0; Value = 0xb2545123eae082df; PC = 0x4299023 *)
adcs carry r12 r12 L0x7fffffffd3b0 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x567678; Value = 0x120177419e0bfb75; PC = 0x4299027 *)
mov r13 L0x567678;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3b8; Value = 0x19e54c16156718db; PC = 0x4299031 *)
adcs carry r13 r13 L0x7fffffffd3b8 carry;
(* mov    %r8,%rax                                 #! PC = 0x4299035 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4299038 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4299041 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4299044 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4299047 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4299050 *)
mov rbp r13;
(* sub    0x52794(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299053 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x52795(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299060 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x52796(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299067 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x52797(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299074 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x52798(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299081 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x52799(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299088 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4299095 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4299099 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4299103 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4299107 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4299111 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4299115 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd390; PC = 0x4299119 *)
mov L0x7fffffffd390 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd398; PC = 0x4299122 *)
mov L0x7fffffffd398 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd3a0; PC = 0x4299126 *)
mov L0x7fffffffd3a0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd3a8; PC = 0x4299130 *)
mov L0x7fffffffd3a8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4299134 *)
mov L0x7fffffffd3b0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4299138 *)
mov L0x7fffffffd3b8 r13;
(* pop    %r13                                     #! PC = 0x4299142 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4299144 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4299146 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4299147 *)
pop rbx;
(* #retq                                           #! PC = 0x4299148 *)
#retq                                           #! 0x4299148 = 0x4299148;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4243985 *)
lea    %%EA,%%rsi                          #! 0x4243985 = 0x4243985;
(* mov    %rsi,%rdi                                #! PC = 0x4243990 *)
mov rdi rsi;
(* #callq  0x429a10 <fp_sqr_integ>                 #! PC = 0x4243993 *)
#callq  0x429a10 <fp_sqr_integ>                 #! 0x4243993 = 0x4243993;
(* #jmpq   0x44a8c0 <fp_sqrm_low>                  #! PC = 0x4364816 *)
#jmpq   0x44a8c0 <fp_sqrm_low>                  #! 0x4364816 = 0x4364816;
(* mov    %rsi,%rdx                                #! PC = 0x4499648 *)
mov rdx rsi;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4499651 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4499651 = 0x4499651;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518520 *)
mov rax L0x7fffffffd390;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518523 *)
mull rdx rax rax L0x7fffffffd390;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518539 *)
mov rax L0x7fffffffd390;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518542 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518556 *)
mov rax L0x7fffffffd398;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518560 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518581 *)
mov rax L0x7fffffffd390;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518584 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518598 *)
mov rax L0x7fffffffd398;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518602 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4518616 *)
mov rax L0x7fffffffd3a0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518620 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518641 *)
mov rax L0x7fffffffd390;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518644 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518658 *)
mov rax L0x7fffffffd398;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518662 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4518676 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518680 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4518694 *)
mov rax L0x7fffffffd3a8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518698 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518719 *)
mov rax L0x7fffffffd390;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518722 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518736 *)
mov rax L0x7fffffffd398;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518740 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4518754 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518758 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4518772 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518776 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4518790 *)
mov rax L0x7fffffffd3b0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518794 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd390; Value = 0x3be84f12a0e0bb3e; PC = 0x4518815 *)
mov rax L0x7fffffffd390;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4518818 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518832 *)
mov rax L0x7fffffffd398;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518836 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4518850 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518854 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4518868 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518872 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4518886 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4518890 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4518904 *)
mov rax L0x7fffffffd3b8;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd390; PC = 0x4518908 *)
mull rdx rax rax L0x7fffffffd390;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd398; Value = 0x407fef2036d1003c; PC = 0x4518929 *)
mov rax L0x7fffffffd398;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4518933 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4518947 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4518951 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4518965 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4518969 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4518983 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4518987 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4519001 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd398; PC = 0x4519005 *)
mull rdx rax rax L0x7fffffffd398;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd3a0; Value = 0x04050e195ce24ffe; PC = 0x4519027 *)
mov rax L0x7fffffffd3a0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519031 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4519045 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519049 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4519063 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4519067 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4519081 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd3a0; PC = 0x4519085 *)
mull rdx rax rax L0x7fffffffd3a0;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd3a8; Value = 0x105c2cb906150900; PC = 0x4519107 *)
mov rax L0x7fffffffd3a8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519111 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4519125 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519129 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4519143 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd3a8; PC = 0x4519147 *)
mull rdx rax rax L0x7fffffffd3a8;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x55071839c970ca49; PC = 0x4519169 *)
mov rax L0x7fffffffd3b0;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519173 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4519187 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd3b0; PC = 0x4519191 *)
mull rdx rax rax L0x7fffffffd3b0;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x11e5b16d79f32db7; PC = 0x4519210 *)
mov rax L0x7fffffffd3b8;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd3b8; PC = 0x4519214 *)
mull rdx rax rax L0x7fffffffd3b8;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0xaca4480db573a304; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x855f1e6ff69916f4; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0xb884096d4ceb7357; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x855f1e6ff69916f4; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x4ea7f7d53c9ea3f7; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0xdb404b6a69403d85; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x855f1e6ff69916f4; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x4ea7f7d53c9ea3f7; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x431e4c59adc399bb; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0x1cf206deec239742; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x855f1e6ff69916f4; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x4ea7f7d53c9ea3f7; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x431e4c59adc399bb; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa38c13fb4f830956; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0x02fac231c76fa316; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x855f1e6ff69916f4; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x4ea7f7d53c9ea3f7; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x431e4c59adc399bb; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa38c13fb4f830956; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x1acc06f0cd4a551d; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x50581c764d70ca76; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x4ea7f7d53c9ea3f7; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x431e4c59adc399bb; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa38c13fb4f830956; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x1acc06f0cd4a551d; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x2fc0024db476433b; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0xa7d263514f4429ab; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x431e4c59adc399bb; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa38c13fb4f830956; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x1acc06f0cd4a551d; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x2fc0024db476433b; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0xd246855ab5e74776; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa38c13fb4f830956; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x1acc06f0cd4a551d; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x2fc0024db476433b; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x06f429486fa1f21f; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x1acc06f0cd4a551d; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x2fc0024db476433b; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0xe5b082c16ded7f96; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x2fc0024db476433b; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x7bad49d25c43fff8; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x01404fa773070a95; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x5263f3ace42b0308; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x0bd1ba0de0886be8; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x3ec03bc9216ce701; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x5ab63b740350367b; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x4981f5da78785445; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x061a02faca0ba1aa; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x5263f3ace42b0308; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x0bd1ba0de0886be8; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0x3ec03bc9216ce701; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x5ab63b740350367b; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x4981f5da78785445; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x061a02faca0ba1aa; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd390; PC = 0x4520264 *)
mov L0x7fffffffd390 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd398; PC = 0x4520267 *)
mov L0x7fffffffd398 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd3a0; PC = 0x4520271 *)
mov L0x7fffffffd3a0 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd3a8; PC = 0x4520275 *)
mov L0x7fffffffd3a8 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4520279 *)
mov L0x7fffffffd3b0 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4520283 *)
mov L0x7fffffffd3b8 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4243998 *)
lea    %%EA,%%rsi                          #! 0x4243998 = 0x4243998;
(* mov    %rsp,%rdx                                #! PC = 0x4244003 *)
mov rdx rsp;
(* mov    %rsi,%rdi                                #! PC = 0x4244006 *)
mov rdi rsi;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244009 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244009 = 0x4244009;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd390; Value = 0x5263f3ace42b0308; PC = 0x4299688 *)
mov r8 L0x7fffffffd390;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd360; Value = 0x9e5c25e1f840429e; PC = 0x4299691 *)
subb carry r8 r8 L0x7fffffffd360;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd390; PC = 0x4299694 *)
mov L0x7fffffffd390 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd398; Value = 0x0bd1ba0de0886be8; PC = 0x4299697 *)
mov r8 L0x7fffffffd398;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd368; Value = 0x0bb5e06755c1bb91; PC = 0x4299701 *)
sbbs carry r8 r8 L0x7fffffffd368 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd398; PC = 0x4299705 *)
mov L0x7fffffffd398 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd3a0; Value = 0x3ec03bc9216ce701; PC = 0x4299709 *)
mov r8 L0x7fffffffd3a0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd370; Value = 0x34b02a9a934e43b1; PC = 0x4299713 *)
sbbs carry r8 r8 L0x7fffffffd370 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd3a0; PC = 0x4299717 *)
mov L0x7fffffffd3a0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd3a8; Value = 0x5ab63b740350367b; PC = 0x4299721 *)
mov r8 L0x7fffffffd3a8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd378; Value = 0x13b6742f7c29eca5; PC = 0x4299725 *)
sbbs carry r8 r8 L0x7fffffffd378 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd3a8; PC = 0x4299729 *)
mov L0x7fffffffd3a8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd3b0; Value = 0x4981f5da78785445; PC = 0x4299733 *)
mov r8 L0x7fffffffd3b0;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd380; Value = 0x53e41a48a899ccd5; PC = 0x4299737 *)
sbbs carry r8 r8 L0x7fffffffd380 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd3b0; PC = 0x4299741 *)
mov L0x7fffffffd3b0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd3b8; Value = 0x061a02faca0ba1aa; PC = 0x4299745 *)
mov r8 L0x7fffffffd3b8;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd388; Value = 0x0a55331f9bb57ced; PC = 0x4299749 *)
sbbs carry r8 r8 L0x7fffffffd388 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd3b8; PC = 0x4299753 *)
mov L0x7fffffffd3b8 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffd390; PC = 0x4299833 *)
adds carry L0x7fffffffd390 L0x7fffffffd390 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd398; PC = 0x4299836 *)
adcs carry L0x7fffffffd398 L0x7fffffffd398 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd3a0; PC = 0x4299840 *)
adcs carry L0x7fffffffd3a0 L0x7fffffffd3a0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffd3a8; PC = 0x4299844 *)
adcs carry L0x7fffffffd3a8 L0x7fffffffd3a8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4299848 *)
adcs carry L0x7fffffffd3b0 L0x7fffffffd3b0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4299852 *)
adcs carry L0x7fffffffd3b8 L0x7fffffffd3b8 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4244014 *)
lea    %%EA,%%rsi                          #! 0x4244014 = 0x4244014;
(* lea    0x60(%rsp),%rdx                          #! PC = 0x4244019 *)
lea    %%EA,%%rdx                          #! 0x4244019 = 0x4244019;
(* mov    %rsi,%rdi                                #! PC = 0x4244024 *)
mov rdi rsi;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244027 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244027 = 0x4244027;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd390; Value = 0x6e06cdcaebea6b15; PC = 0x4299688 *)
mov r8 L0x7fffffffd390;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd3c0; Value = 0x48d8e91a30c8e4a0; PC = 0x4299691 *)
subb carry r8 r8 L0x7fffffffd3c0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd390; PC = 0x4299694 *)
mov L0x7fffffffd390 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd398; Value = 0x1ec7d9a53c1ab056; PC = 0x4299697 *)
mov r8 L0x7fffffffd398;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd3c8; Value = 0xbc150f9f64afdfa2; PC = 0x4299701 *)
sbbs carry r8 r8 L0x7fffffffd3c8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd398; PC = 0x4299705 *)
mov L0x7fffffffd398 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd3a0; Value = 0x7140e3cf84cf9974; PC = 0x4299709 *)
mov r8 L0x7fffffffd3a0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd3d0; Value = 0x9a3e8a58c3a99794; PC = 0x4299713 *)
sbbs carry r8 r8 L0x7fffffffd3d0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd3a0; PC = 0x4299717 *)
mov L0x7fffffffd3a0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd3a8; Value = 0xab7712c97aab5c95; PC = 0x4299721 *)
mov r8 L0x7fffffffd3a8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd3d8; Value = 0x4002691e7867ef1e; PC = 0x4299725 *)
sbbs carry r8 r8 L0x7fffffffd3d8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffd3a8; PC = 0x4299729 *)
mov L0x7fffffffd3a8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd3b0; Value = 0x40b98348132a3447; PC = 0x4299733 *)
mov r8 L0x7fffffffd3b0;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd3e0; Value = 0x902b1ecfc5e8e577; PC = 0x4299737 *)
sbbs carry r8 r8 L0x7fffffffd3e0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffd3b0; PC = 0x4299741 *)
mov L0x7fffffffd3b0 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd3b8; Value = 0x15c5e1c567d60b57; PC = 0x4299745 *)
mov r8 L0x7fffffffd3b8;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd3e8; Value = 0x19cbf9663311c399; PC = 0x4299749 *)
sbbs carry r8 r8 L0x7fffffffd3e8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffd3b8; PC = 0x4299753 *)
mov L0x7fffffffd3b8 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffd390; PC = 0x4299833 *)
adds carry L0x7fffffffd390 L0x7fffffffd390 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd398; PC = 0x4299836 *)
adcs carry L0x7fffffffd398 L0x7fffffffd398 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffd3a0; PC = 0x4299840 *)
adcs carry L0x7fffffffd3a0 L0x7fffffffd3a0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffd3a8; PC = 0x4299844 *)
adcs carry L0x7fffffffd3a8 L0x7fffffffd3a8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4299848 *)
adcs carry L0x7fffffffd3b0 L0x7fffffffd3b0 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4299852 *)
adcs carry L0x7fffffffd3b8 L0x7fffffffd3b8 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4244032 *)
lea    %%EA,%%rsi                          #! 0x4244032 = 0x4244032;
(* mov    %rsi,%rdi                                #! PC = 0x4244037 *)
mov rdi rsi;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244040 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244040 = 0x4244040;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd390; Value = 0xdf2ce4b0bb213120; PC = 0x4300437 *)
mov r8 L0x7fffffffd390;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd398; Value = 0x815eca0488bed0b3; PC = 0x4300443 *)
mov r9 L0x7fffffffd398;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd3a0; Value = 0x3e332c17b7d6f803; PC = 0x4300450 *)
mov r10 L0x7fffffffd3a0;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3a8; Value = 0xcfebf52ff5c88036; PC = 0x4300457 *)
mov r11 L0x7fffffffd3a8;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3b0; Value = 0xfbaa0c2e908cfba7; PC = 0x4300464 *)
mov r12 L0x7fffffffd3b0;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3b8; Value = 0x15fafa496e442e57; PC = 0x4300471 *)
mov r13 L0x7fffffffd3b8;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd390; PC = 0x4300562 *)
mov L0x7fffffffd390 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd398; PC = 0x4300565 *)
mov L0x7fffffffd398 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd3a0; PC = 0x4300569 *)
mov L0x7fffffffd3a0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd3a8; PC = 0x4300573 *)
mov L0x7fffffffd3a8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd3b0; PC = 0x4300577 *)
mov L0x7fffffffd3b0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd3b8; PC = 0x4300581 *)
mov L0x7fffffffd3b8 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x90(%rsp),%rdi                          #! PC = 0x4244045 *)
lea    %%EA,%%rdi                          #! 0x4244045 = 0x4244045;
(* mov    %rsp,%rsi                                #! PC = 0x4244053 *)
mov rsi rsp;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244056 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244056 = 0x4244056;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd360; Value = 0x9e5c25e1f840429e; PC = 0x4300437 *)
mov r8 L0x7fffffffd360;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd368; Value = 0x0bb5e06755c1bb91; PC = 0x4300443 *)
mov r9 L0x7fffffffd368;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd370; Value = 0x34b02a9a934e43b1; PC = 0x4300450 *)
mov r10 L0x7fffffffd370;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd378; Value = 0x13b6742f7c29eca5; PC = 0x4300457 *)
mov r11 L0x7fffffffd378;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffd380; Value = 0x53e41a48a899ccd5; PC = 0x4300464 *)
mov r12 L0x7fffffffd380;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffd388; Value = 0x0a55331f9bb57ced; PC = 0x4300471 *)
mov r13 L0x7fffffffd388;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd3f0; PC = 0x4300562 *)
mov L0x7fffffffd3f0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd3f8; PC = 0x4300565 *)
mov L0x7fffffffd3f8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd400; PC = 0x4300569 *)
mov L0x7fffffffd400 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd408; PC = 0x4300573 *)
mov L0x7fffffffd408 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd410; PC = 0x4300577 *)
mov L0x7fffffffd410 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd418; PC = 0x4300581 *)
mov L0x7fffffffd418 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x90(%rsp),%rsi                          #! PC = 0x4244061 *)
lea    %%EA,%%rsi                          #! 0x4244061 = 0x4244061;
(* mov    %rsp,%rdx                                #! PC = 0x4244069 *)
mov rdx rsp;
(* mov    %rsp,%rdi                                #! PC = 0x4244072 *)
mov rdi rsp;
(* #callq  0x427a00 <fp_add_integ>                 #! PC = 0x4244075 *)
#callq  0x427a00 <fp_add_integ>                 #! 0x4244075 = 0x4244075;
(* #jmpq   0x4198e7 <fp_addm_low>                  #! PC = 0x4356608 *)
#jmpq   0x4198e7 <fp_addm_low>                  #! 0x4356608 = 0x4356608;
(* push   %rbx                                     #! PC = 0x4298983 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4298984 *)
push rbp;
(* push   %r12                                     #! PC = 0x4298985 *)
push r12;
(* push   %r13                                     #! PC = 0x4298987 *)
push r13;
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffd360; Value = 0x9e5c25e1f840429e; PC = 0x4298989 *)
mov r8 L0x7fffffffd360;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffd3f0; Value = 0x3cb84bc3f080853c; PC = 0x4298992 *)
adds carry r8 r8 L0x7fffffffd3f0;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffd368; Value = 0x0bb5e06755c1bb91; PC = 0x4298995 *)
mov r9 L0x7fffffffd368;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffd3f8; Value = 0x176bc0ceab837723; PC = 0x4298999 *)
adcs carry r9 r9 L0x7fffffffd3f8 carry;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd370; Value = 0x34b02a9a934e43b1; PC = 0x4299003 *)
mov r10 L0x7fffffffd370;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffd400; Value = 0x69605535269c8762; PC = 0x4299007 *)
adcs carry r10 r10 L0x7fffffffd400 carry;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd378; Value = 0x13b6742f7c29eca5; PC = 0x4299011 *)
mov r11 L0x7fffffffd378;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffd408; Value = 0x276ce85ef853d94a; PC = 0x4299015 *)
adcs carry r11 r11 L0x7fffffffd408 carry;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffd380; Value = 0x53e41a48a899ccd5; PC = 0x4299019 *)
mov r12 L0x7fffffffd380;
(* adc    0x20(%rsi),%r12                          #! EA = L0x7fffffffd410; Value = 0xa7c83491513399aa; PC = 0x4299023 *)
adcs carry r12 r12 L0x7fffffffd410 carry;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffd388; Value = 0x0a55331f9bb57ced; PC = 0x4299027 *)
mov r13 L0x7fffffffd388;
(* adc    0x28(%rsi),%r13                          #! EA = L0x7fffffffd418; Value = 0x14aa663f376af9da; PC = 0x4299031 *)
adcs carry r13 r13 L0x7fffffffd418 carry;
(* mov    %r8,%rax                                 #! PC = 0x4299035 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4299038 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4299041 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4299044 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4299047 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4299050 *)
mov rbp r13;
(* sub    0x52794(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299053 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x52795(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299060 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x52796(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299067 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x52797(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299074 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x52798(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299081 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x52799(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299088 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4299095 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4299099 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4299103 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4299107 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4299111 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4299115 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd360; PC = 0x4299119 *)
mov L0x7fffffffd360 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd368; PC = 0x4299122 *)
mov L0x7fffffffd368 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd370; PC = 0x4299126 *)
mov L0x7fffffffd370 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd378; PC = 0x4299130 *)
mov L0x7fffffffd378 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd380; PC = 0x4299134 *)
mov L0x7fffffffd380 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd388; PC = 0x4299138 *)
mov L0x7fffffffd388 r13;
(* pop    %r13                                     #! PC = 0x4299142 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4299144 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4299146 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4299147 *)
pop rbx;
(* #retq                                           #! PC = 0x4299148 *)
#retq                                           #! 0x4299148 = 0x4299148;
(* lea    0x90(%rsp),%rdi                          #! PC = 0x4244080 *)
lea    %%EA,%%rdi                          #! 0x4244080 = 0x4244080;
(* mov    %rsp,%rsi                                #! PC = 0x4244088 *)
mov rsi rsp;
(* #callq  0x429a10 <fp_sqr_integ>                 #! PC = 0x4244091 *)
#callq  0x429a10 <fp_sqr_integ>                 #! 0x4244091 = 0x4244091;
(* #jmpq   0x44a8c0 <fp_sqrm_low>                  #! PC = 0x4364816 *)
#jmpq   0x44a8c0 <fp_sqrm_low>                  #! 0x4364816 = 0x4364816;
(* mov    %rsi,%rdx                                #! PC = 0x4499648 *)
mov rdx rsi;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4499651 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4499651 = 0x4499651;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518520 *)
mov rax L0x7fffffffd360;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518523 *)
mull rdx rax rax L0x7fffffffd360;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518539 *)
mov rax L0x7fffffffd360;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518542 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518556 *)
mov rax L0x7fffffffd368;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518560 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518581 *)
mov rax L0x7fffffffd360;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518584 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518598 *)
mov rax L0x7fffffffd368;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518602 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4518616 *)
mov rax L0x7fffffffd370;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518620 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518641 *)
mov rax L0x7fffffffd360;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518644 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518658 *)
mov rax L0x7fffffffd368;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518662 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4518676 *)
mov rax L0x7fffffffd370;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518680 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4518694 *)
mov rax L0x7fffffffd378;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518698 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518719 *)
mov rax L0x7fffffffd360;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518722 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518736 *)
mov rax L0x7fffffffd368;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518740 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4518754 *)
mov rax L0x7fffffffd370;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518758 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4518772 *)
mov rax L0x7fffffffd378;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518776 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4518790 *)
mov rax L0x7fffffffd380;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518794 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd360; Value = 0x211571a5e8c11d2f; PC = 0x4518815 *)
mov rax L0x7fffffffd360;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4518818 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518832 *)
mov rax L0x7fffffffd368;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518836 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4518850 *)
mov rax L0x7fffffffd370;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518854 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4518868 *)
mov rax L0x7fffffffd378;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518872 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4518886 *)
mov rax L0x7fffffffd380;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518890 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4518904 *)
mov rax L0x7fffffffd388;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518908 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd368; Value = 0x0475a1374ff132b5; PC = 0x4518929 *)
mov rax L0x7fffffffd368;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4518933 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4518947 *)
mov rax L0x7fffffffd370;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518951 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4518965 *)
mov rax L0x7fffffffd378;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518969 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4518983 *)
mov rax L0x7fffffffd380;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518987 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4519001 *)
mov rax L0x7fffffffd388;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4519005 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd370; Value = 0x36dfad2ec339d4ef; PC = 0x4519027 *)
mov rax L0x7fffffffd370;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519031 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4519045 *)
mov rax L0x7fffffffd378;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519049 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4519063 *)
mov rax L0x7fffffffd380;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4519067 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4519081 *)
mov rax L0x7fffffffd388;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4519085 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd378; Value = 0xd6ac110980f8b330; PC = 0x4519107 *)
mov rax L0x7fffffffd378;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519111 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4519125 *)
mov rax L0x7fffffffd380;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519129 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4519143 *)
mov rax L0x7fffffffd388;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4519147 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd380; Value = 0xb090a723b681b9a7; PC = 0x4519169 *)
mov rax L0x7fffffffd380;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519173 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4519187 *)
mov rax L0x7fffffffd388;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519191 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x7fffffffd388; Value = 0x04fe877499a0902d; PC = 0x4519210 *)
mov rax L0x7fffffffd388;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519214 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0x4007b3283431aea1; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x244f3e0f5787f41d; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0x9bab206d22a57cab; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x244f3e0f5787f41d; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x88fe4bb4afa43b25; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0xd0721fc5986d6ad5; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x244f3e0f5787f41d; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x88fe4bb4afa43b25; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x576bc23514c69879; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0xfdaa48e580d406d2; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x244f3e0f5787f41d; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x88fe4bb4afa43b25; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x576bc23514c69879; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa4dcbd143b45c984; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0xd0f676ac60292ba1; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x244f3e0f5787f41d; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x88fe4bb4afa43b25; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x576bc23514c69879; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa4dcbd143b45c984; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x21ffc05ae42f9062; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x95f20009e7864fa6; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0x88fe4bb4afa43b25; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x576bc23514c69879; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa4dcbd143b45c984; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x21ffc05ae42f9062; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xdf7907b04b235506; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0x563c219dd8592d5e; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x576bc23514c69879; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa4dcbd143b45c984; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x21ffc05ae42f9062; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xdf7907b04b235506; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0x02471d8eeaa23bea; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xa4dcbd143b45c984; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x21ffc05ae42f9062; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xdf7907b04b235506; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x4542d7063577cbf6; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x21ffc05ae42f9062; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xdf7907b04b235506; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0xc497fbfe7be89206; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xdf7907b04b235506; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x75f30ef0834e6577; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x0018f14cb7da0e42; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x5ef4f4b7aa6054aa; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x85930e660fd6aca2; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xf6e750411619c3f5; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0xf15f47ce76155767; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0xefd60bc6900cedd3; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x16cc2b3127814538; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x5ef4f4b7aa6054aa; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x85930e660fd6aca2; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xf6e750411619c3f5; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0xf15f47ce76155767; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0xefd60bc6900cedd3; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x16cc2b3127814538; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x7fffffffd3f0; PC = 0x4520264 *)
mov L0x7fffffffd3f0 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x7fffffffd3f8; PC = 0x4520267 *)
mov L0x7fffffffd3f8 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x7fffffffd400; PC = 0x4520271 *)
mov L0x7fffffffd400 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x7fffffffd408; PC = 0x4520275 *)
mov L0x7fffffffd408 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x7fffffffd410; PC = 0x4520279 *)
mov L0x7fffffffd410 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x7fffffffd418; PC = 0x4520283 *)
mov L0x7fffffffd418 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x60(%rbp),%rdx                          #! PC = 0x4244096 *)
lea    %%EA,%%rdx                          #! 0x4244096 = 0x4244096;
(* mov    %r14,%rsi                                #! PC = 0x4244100 *)
mov rsi r14;
(* mov    %r12,%rdi                                #! PC = 0x4244103 *)
mov rdi r12;
(* lea    0x30(%rbx),%rbp                          #! PC = 0x4244106 *)
lea    %%EA,%%rbp                          #! 0x4244106 = 0x4244106;
(* #callq  0x4296c0 <fp_mul_integ>                 #! PC = 0x4244110 *)
#callq  0x4296c0 <fp_mul_integ>                 #! 0x4244110 = 0x4244110;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4363968 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4363968 = 0x4363968;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518520 *)
mov rax L0x567680;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518523 *)
mull rdx rax rax L0x5676b0;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518539 *)
mov rax L0x567680;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4518542 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518556 *)
mov rax L0x567688;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518560 *)
mull rdx rax rax L0x5676b0;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518581 *)
mov rax L0x567680;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4518584 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518598 *)
mov rax L0x567688;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4518602 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518616 *)
mov rax L0x567690;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518620 *)
mull rdx rax rax L0x5676b0;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518641 *)
mov rax L0x567680;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4518644 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518658 *)
mov rax L0x567688;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4518662 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518676 *)
mov rax L0x567690;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4518680 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518694 *)
mov rax L0x567698;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518698 *)
mull rdx rax rax L0x5676b0;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518719 *)
mov rax L0x567680;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4518722 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518736 *)
mov rax L0x567688;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4518740 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518754 *)
mov rax L0x567690;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4518758 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518772 *)
mov rax L0x567698;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4518776 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518790 *)
mov rax L0x5676a0;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518794 *)
mull rdx rax rax L0x5676b0;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567680; Value = 0xbaac93d50ce72271; PC = 0x4518815 *)
mov rax L0x567680;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4518818 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518832 *)
mov rax L0x567688;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4518836 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518850 *)
mov rax L0x567690;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4518854 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518868 *)
mov rax L0x567698;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4518872 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518886 *)
mov rax L0x5676a0;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4518890 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4518904 *)
mov rax L0x5676a8;
(* mulq   (%rcx)                                   #! EA = L0x5676b0; PC = 0x4518908 *)
mull rdx rax rax L0x5676b0;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567688; Value = 0x8c22631a7918fd8e; PC = 0x4518929 *)
mov rax L0x567688;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4518933 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4518947 *)
mov rax L0x567690;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4518951 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4518965 *)
mov rax L0x567698;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4518969 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4518983 *)
mov rax L0x5676a0;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4518987 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519001 *)
mov rax L0x5676a8;
(* mulq   0x8(%rcx)                                #! EA = L0x5676b8; PC = 0x4519005 *)
mull rdx rax rax L0x5676b8;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567690; Value = 0xdd595f13570725ce; PC = 0x4519027 *)
mov rax L0x567690;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4519031 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4519045 *)
mov rax L0x567698;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4519049 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519063 *)
mov rax L0x5676a0;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4519067 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519081 *)
mov rax L0x5676a8;
(* mulq   0x10(%rcx)                               #! EA = L0x5676c0; PC = 0x4519085 *)
mull rdx rax rax L0x5676c0;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567698; Value = 0x51ac582950405194; PC = 0x4519107 *)
mov rax L0x567698;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4519111 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519125 *)
mov rax L0x5676a0;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4519129 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519143 *)
mov rax L0x5676a8;
(* mulq   0x18(%rcx)                               #! EA = L0x5676c8; PC = 0x4519147 *)
mull rdx rax rax L0x5676c8;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x5676a0; Value = 0x0e1c8c3fad0059c0; PC = 0x4519169 *)
mov rax L0x5676a0;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4519173 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519187 *)
mov rax L0x5676a8;
(* mulq   0x20(%rcx)                               #! EA = L0x5676d0; PC = 0x4519191 *)
mull rdx rax rax L0x5676d0;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x5676a8; Value = 0x0bbc3efc5008a26a; PC = 0x4519210 *)
mov rax L0x5676a8;
(* mulq   0x28(%rcx)                               #! EA = L0x5676d8; PC = 0x4519214 *)
mull rdx rax rax L0x5676d8;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0xd7726b36409d98ad; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x9011327d742035f9; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0xd6d191ea2eeb7a3b; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x9011327d742035f9; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xed357bee41e0ea04; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0x2583eb0cf3d4874b; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x9011327d742035f9; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xed357bee41e0ea04; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xc82457ae0f405442; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0xdd794013a3cefb0f; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x9011327d742035f9; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xed357bee41e0ea04; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xc82457ae0f405442; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xdf0f1973d242de3b; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0x13f124328a86a8bc; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0x9011327d742035f9; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xed357bee41e0ea04; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xc82457ae0f405442; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xdf0f1973d242de3b; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x7f00ee3d150327c2; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0xe76b4751a9a07427; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xed357bee41e0ea04; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xc82457ae0f405442; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xdf0f1973d242de3b; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x7f00ee3d150327c2; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x699e36ded04db5ba; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0x7785a9ff0ae88acf; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0xc82457ae0f405442; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xdf0f1973d242de3b; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x7f00ee3d150327c2; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x699e36ded04db5ba; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0xd8ff68244099b90e; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0xdf0f1973d242de3b; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x7f00ee3d150327c2; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x699e36ded04db5ba; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x2dc9a6be91524b0e; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x7f00ee3d150327c2; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x699e36ded04db5ba; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0xc97da3a919032864; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0x699e36ded04db5ba; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0x3501ddfe1d934feb; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x0101bc675405fb4f; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0xbaac93d50ce72271; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x8c22631a7918fd8e; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xdd595f13570725ce; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x51ac582950405194; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x0e1c8c3fad0059c0; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x0bbc3efc5008a26a; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0xbaac93d50ce72271; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x8c22631a7918fd8e; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xdd595f13570725ce; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x51ac582950405194; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x0e1c8c3fad0059c0; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x0bbc3efc5008a26a; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x567748; PC = 0x4520264 *)
mov L0x567748 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x567750; PC = 0x4520267 *)
mov L0x567750 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x567758; PC = 0x4520271 *)
mov L0x567758 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x567760; PC = 0x4520275 *)
mov L0x567760 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x567768; PC = 0x4520279 *)
mov L0x567768 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x567770; PC = 0x4520283 *)
mov L0x567770 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* mov    %r12,%rsi                                #! PC = 0x4244115 *)
mov rsi r12;
(* mov    %r12,%rdi                                #! PC = 0x4244118 *)
mov rdi r12;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244121 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244121 = 0x4244121;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x567748; Value = 0xbaac93d50ce72271; PC = 0x4300437 *)
mov r8 L0x567748;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x567750; Value = 0x8c22631a7918fd8e; PC = 0x4300443 *)
mov r9 L0x567750;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x567758; Value = 0xdd595f13570725ce; PC = 0x4300450 *)
mov r10 L0x567758;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x567760; Value = 0x51ac582950405194; PC = 0x4300457 *)
mov r11 L0x567760;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x567768; Value = 0x0e1c8c3fad0059c0; PC = 0x4300464 *)
mov r12 L0x567768;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x567770; Value = 0x0bbc3efc5008a26a; PC = 0x4300471 *)
mov r13 L0x567770;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x567748; PC = 0x4300562 *)
mov L0x567748 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x567750; PC = 0x4300565 *)
mov L0x567750 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x567758; PC = 0x4300569 *)
mov L0x567758 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x567760; PC = 0x4300573 *)
mov L0x567760 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x567768; PC = 0x4300577 *)
mov L0x567768 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x567770; PC = 0x4300581 *)
mov L0x567770 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x30(%rsp),%rdx                          #! PC = 0x4244126 *)
lea    %%EA,%%rdx                          #! 0x4244126 = 0x4244126;
(* lea    0x90(%rsp),%rsi                          #! PC = 0x4244131 *)
lea    %%EA,%%rsi                          #! 0x4244131 = 0x4244131;
(* mov    %rbx,%rdi                                #! PC = 0x4244139 *)
mov rdi rbx;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244142 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244142 = 0x4244142;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd3f0; Value = 0x5ef4f4b7aa6054aa; PC = 0x4299688 *)
mov r8 L0x7fffffffd3f0;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd390; Value = 0x045ac9617642b795; PC = 0x4299691 *)
subb carry r8 r8 L0x7fffffffd390;
(* mov    %r8,(%rdi)                               #! EA = L0x5676e8; PC = 0x4299694 *)
mov L0x5676e8 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd3f8; Value = 0x85930e660fd6aca2; PC = 0x4299697 *)
mov r8 L0x7fffffffd3f8;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd398; Value = 0xe411940a6029a168; PC = 0x4299701 *)
sbbs carry r8 r8 L0x7fffffffd398 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x5676f0; PC = 0x4299705 *)
mov L0x5676f0 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd400; Value = 0xf6e750411619c3f5; PC = 0x4299709 *)
mov r8 L0x7fffffffd400;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd3a0; Value = 0x1535858e78fcf9e2; PC = 0x4299713 *)
sbbs carry r8 r8 L0x7fffffffd3a0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x5676f8; PC = 0x4299717 *)
mov L0x5676f8 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd408; Value = 0xf15f47ce76155767; PC = 0x4299721 *)
mov r8 L0x7fffffffd408;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd3a8; Value = 0x3b609edaf80bedad; PC = 0x4299725 *)
sbbs carry r8 r8 L0x7fffffffd3a8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x567700; PC = 0x4299729 *)
mov L0x567700 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd410; Value = 0xefd60bc6900cedd3; PC = 0x4299733 *)
mov r8 L0x7fffffffd410;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd3b0; Value = 0xac3870a6ddce4a78; PC = 0x4299737 *)
sbbs carry r8 r8 L0x7fffffffd3b0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x567708; PC = 0x4299741 *)
mov L0x567708 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd418; Value = 0x16cc2b3127814538; PC = 0x4299745 *)
mov r8 L0x7fffffffd418;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd3b8; Value = 0x11f4e2a8a3087615; PC = 0x4299749 *)
sbbs carry r8 r8 L0x7fffffffd3b8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x567710; PC = 0x4299753 *)
mov L0x567710 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x5676e8; PC = 0x4299833 *)
adds carry L0x5676e8 L0x5676e8 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x5676f0; PC = 0x4299836 *)
adcs carry L0x5676f0 L0x5676f0 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x5676f8; PC = 0x4299840 *)
adcs carry L0x5676f8 L0x5676f8 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x567700; PC = 0x4299844 *)
adcs carry L0x567700 L0x567700 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x567708; PC = 0x4299848 *)
adcs carry L0x567708 L0x567708 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x567710; PC = 0x4299852 *)
adcs carry L0x567710 L0x567710 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* lea    0x30(%rsp),%rdx                          #! PC = 0x4244147 *)
lea    %%EA,%%rdx                          #! 0x4244147 = 0x4244147;
(* mov    %rbx,%rsi                                #! PC = 0x4244152 *)
mov rsi rbx;
(* mov    %rbx,%rdi                                #! PC = 0x4244155 *)
mov rdi rbx;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244158 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244158 = 0x4244158;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x5676e8; Value = 0x5a9a2b56341d9d15; PC = 0x4299688 *)
mov r8 L0x5676e8;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd390; Value = 0x045ac9617642b795; PC = 0x4299691 *)
subb carry r8 r8 L0x7fffffffd390;
(* mov    %r8,(%rdi)                               #! EA = L0x5676e8; PC = 0x4299694 *)
mov L0x5676e8 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x5676f0; Value = 0xa1817a5bafad0b3a; PC = 0x4299697 *)
mov r8 L0x5676f0;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd398; Value = 0xe411940a6029a168; PC = 0x4299701 *)
sbbs carry r8 r8 L0x7fffffffd398 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x5676f0; PC = 0x4299705 *)
mov L0x5676f0 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x5676f8; Value = 0xe1b1cab29d1cca12; PC = 0x4299709 *)
mov r8 L0x5676f8;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd3a0; Value = 0x1535858e78fcf9e2; PC = 0x4299713 *)
sbbs carry r8 r8 L0x7fffffffd3a0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x5676f8; PC = 0x4299717 *)
mov L0x5676f8 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x567700; Value = 0xb5fea8f37e0969ba; PC = 0x4299721 *)
mov r8 L0x567700;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd3a8; Value = 0x3b609edaf80bedad; PC = 0x4299725 *)
sbbs carry r8 r8 L0x7fffffffd3a8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x567700; PC = 0x4299729 *)
mov L0x567700 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x567708; Value = 0x439d9b1fb23ea35b; PC = 0x4299733 *)
mov r8 L0x567708;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd3b0; Value = 0xac3870a6ddce4a78; PC = 0x4299737 *)
sbbs carry r8 r8 L0x7fffffffd3b0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x567708; PC = 0x4299741 *)
mov L0x567708 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x567710; Value = 0x04d748888478cf23; PC = 0x4299745 *)
mov r8 L0x567710;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd3b8; Value = 0x11f4e2a8a3087615; PC = 0x4299749 *)
sbbs carry r8 r8 L0x7fffffffd3b8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x567710; PC = 0x4299753 *)
mov L0x567710 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x5676e8; PC = 0x4299833 *)
adds carry L0x5676e8 L0x5676e8 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x5676f0; PC = 0x4299836 *)
adcs carry L0x5676f0 L0x5676f0 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x5676f8; PC = 0x4299840 *)
adcs carry L0x5676f8 L0x5676f8 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x567700; PC = 0x4299844 *)
adcs carry L0x567700 L0x567700 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x567708; PC = 0x4299848 *)
adcs carry L0x567708 L0x567708 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x567710; PC = 0x4299852 *)
adcs carry L0x567710 L0x567710 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* lea    0x30(%rsp),%rsi                          #! PC = 0x4244163 *)
lea    %%EA,%%rsi                          #! 0x4244163 = 0x4244163;
(* mov    %rbx,%rdx                                #! PC = 0x4244168 *)
mov rdx rbx;
(* mov    %rbp,%rdi                                #! PC = 0x4244171 *)
mov rdi rbp;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244174 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244174 = 0x4244174;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd390; Value = 0x045ac9617642b795; PC = 0x4299688 *)
mov r8 L0x7fffffffd390;
(* sub    (%rdx),%r8                               #! EA = L0x5676e8; Value = 0x103e61f4bdda902b; PC = 0x4299691 *)
subb carry r8 r8 L0x5676e8;
(* mov    %r8,(%rdi)                               #! EA = L0x567718; PC = 0x4299694 *)
mov L0x567718 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffd398; Value = 0xe411940a6029a168; PC = 0x4299697 *)
mov r8 L0x7fffffffd398;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x5676f0; Value = 0xdc1be65000d769d2; PC = 0x4299701 *)
sbbs carry r8 r8 L0x5676f0 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x567720; PC = 0x4299705 *)
mov L0x567720 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffd3a0; Value = 0x1535858e78fcf9e2; PC = 0x4299709 *)
mov r8 L0x7fffffffd3a0;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x5676f8; Value = 0x33ad17c51ad0c653; PC = 0x4299713 *)
sbbs carry r8 r8 L0x5676f8 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x567728; PC = 0x4299717 *)
mov L0x567728 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffd3a8; Value = 0x3b609edaf80bedad; PC = 0x4299721 *)
mov r8 L0x7fffffffd3a8;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x567700; Value = 0xdf15559d79828ecd; PC = 0x4299725 *)
sbbs carry r8 r8 L0x567700 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x567730; PC = 0x4299729 *)
mov L0x567730 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffd3b0; Value = 0xac3870a6ddce4a78; PC = 0x4299733 *)
mov r8 L0x7fffffffd3b0;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x567708; Value = 0xe280d22f17bc05ba; PC = 0x4299737 *)
sbbs carry r8 r8 L0x567708 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x567738; PC = 0x4299741 *)
mov L0x567738 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffd3b8; Value = 0x11f4e2a8a3087615; PC = 0x4299745 *)
mov r8 L0x7fffffffd3b8;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x567710; Value = 0x0ce377ca1af03fa7; PC = 0x4299749 *)
sbbs carry r8 r8 L0x567710 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x567740; PC = 0x4299753 *)
mov L0x567740 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x567718; PC = 0x4299833 *)
adds carry L0x567718 L0x567718 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x567720; PC = 0x4299836 *)
adcs carry L0x567720 L0x567720 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x567728; PC = 0x4299840 *)
adcs carry L0x567728 L0x567728 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x567730; PC = 0x4299844 *)
adcs carry L0x567730 L0x567730 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x567738; PC = 0x4299848 *)
adcs carry L0x567738 L0x567738 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x567740; PC = 0x4299852 *)
adcs carry L0x567740 L0x567740 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* mov    %rsp,%rdx                                #! PC = 0x4244179 *)
mov rdx rsp;
(* mov    %rbp,%rsi                                #! PC = 0x4244182 *)
mov rsi rbp;
(* mov    %rbp,%rdi                                #! PC = 0x4244185 *)
mov rdi rbp;
(* #callq  0x4296c0 <fp_mul_integ>                 #! PC = 0x4244188 *)
#callq  0x4296c0 <fp_mul_integ>                 #! 0x4244188 = 0x4244188;
(* #jmpq   0x44f260 <fp_mulm_low>                  #! PC = 0x4363968 *)
#jmpq   0x44f260 <fp_mulm_low>                  #! 0x4363968 = 0x4363968;
(* push   %r12                                     #! PC = 0x4518496 *)
push r12;
(* push   %r13                                     #! PC = 0x4518498 *)
push r13;
(* push   %r14                                     #! PC = 0x4518500 *)
push r14;
(* push   %r15                                     #! PC = 0x4518502 *)
push r15;
(* push   %rbx                                     #! PC = 0x4518504 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4518505 *)
push rbp;
(* sub    $0x60,%rsp                               #! PC = 0x4518506 *)
subb carry rsp rsp 0x60@uint64;
(* mov    %rdx,%rcx                                #! PC = 0x4518510 *)
mov rcx rdx;
(* lea    0x1ce50(%rip),%rbx        # 0x46c0c8     #! PC = 0x4518513 *)
lea    %%EA,%%rbx        # 0x46c0c8     #! 0x4518513 = 0x4518513;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518520 *)
mov rax L0x567718;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518523 *)
mull rdx rax rax L0x7fffffffd360;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4518526 *)
mov L0x7fffffffd2c8 rax;
(* mov    %rdx,%r8                                 #! PC = 0x4518530 *)
mov r8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x4518533 *)
mov r9 0@uint64;
(* xor    %r10,%r10                                #! PC = 0x4518536 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518539 *)
mov rax L0x567718;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518542 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4518546 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518549 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518552 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518556 *)
mov rax L0x567720;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518560 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4518563 *)
adds carry r8 r8 rax;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd2d0; PC = 0x4518566 *)
mov L0x7fffffffd2d0 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518571 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518574 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518578 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518581 *)
mov rax L0x567718;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518584 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4518588 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518591 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518594 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518598 *)
mov rax L0x567720;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518602 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4518606 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518609 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518612 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4518616 *)
mov rax L0x567728;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518620 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4518623 *)
adds carry r9 r9 rax;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd2d8; PC = 0x4518626 *)
mov L0x7fffffffd2d8 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518631 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518634 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518638 *)
mov r9 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518641 *)
mov rax L0x567718;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518644 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4518648 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518651 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518654 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518658 *)
mov rax L0x567720;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518662 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4518666 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518669 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518672 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4518676 *)
mov rax L0x567728;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518680 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4518684 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518687 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518690 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4518694 *)
mov rax L0x567730;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518698 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r10                                #! PC = 0x4518701 *)
adds carry r10 r10 rax;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4518704 *)
mov L0x7fffffffd2e0 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4518709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4518716 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518719 *)
mov rax L0x567718;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518722 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4518726 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518729 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518732 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518736 *)
mov rax L0x567720;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518740 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4518744 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518747 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518750 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4518754 *)
mov rax L0x567728;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518758 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4518762 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518765 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518768 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4518772 *)
mov rax L0x567730;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518776 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r8                                 #! PC = 0x4518780 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4518783 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518786 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4518790 *)
mov rax L0x567738;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518794 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r8                                 #! PC = 0x4518797 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd2e8; PC = 0x4518800 *)
mov L0x7fffffffd2e8 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4518805 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4518808 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4518812 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x567718; Value = 0xf41c676cb868276a; PC = 0x4518815 *)
mov rax L0x567718;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4518818 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4518822 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518825 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518828 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518832 *)
mov rax L0x567720;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518836 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4518840 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518843 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518846 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4518850 *)
mov rax L0x567728;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518854 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4518858 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518861 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518864 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4518868 *)
mov rax L0x567730;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518872 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r9                                 #! PC = 0x4518876 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518879 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518882 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4518886 *)
mov rax L0x567738;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4518890 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r9                                 #! PC = 0x4518894 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4518897 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518900 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4518904 *)
mov rax L0x567740;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffd360; PC = 0x4518908 *)
mull rdx rax rax L0x7fffffffd360;
(* add    %rax,%r9                                 #! PC = 0x4518911 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd2f0; PC = 0x4518914 *)
mov L0x7fffffffd2f0 r9;
(* adc    %rdx,%r10                                #! PC = 0x4518919 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4518922 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4518926 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x567720; Value = 0x07f5adba5f523795; PC = 0x4518929 *)
mov rax L0x567720;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4518933 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4518937 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518940 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518943 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4518947 *)
mov rax L0x567728;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4518951 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r10                                #! PC = 0x4518955 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518958 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518961 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4518965 *)
mov rax L0x567730;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4518969 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r10                                #! PC = 0x4518973 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518976 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518979 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4518983 *)
mov rax L0x567738;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4518987 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r10                                #! PC = 0x4518991 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4518994 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4518997 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4519001 *)
mov rax L0x567740;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffd368; PC = 0x4519005 *)
mull rdx rax rax L0x7fffffffd368;
(* add    %rax,%r10                                #! PC = 0x4519009 *)
adds carry r10 r10 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd2f8; PC = 0x4519012 *)
mov L0x7fffffffd2f8 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519017 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519020 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519024 *)
mov r10 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x567728; Value = 0xe1886dc95e2c338f; PC = 0x4519027 *)
mov rax L0x567728;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519031 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4519035 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519038 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519041 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4519045 *)
mov rax L0x567730;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519049 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r8                                 #! PC = 0x4519053 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519056 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519059 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4519063 *)
mov rax L0x567738;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4519067 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r8                                 #! PC = 0x4519071 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519074 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519077 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4519081 *)
mov rax L0x567740;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffd370; PC = 0x4519085 *)
mull rdx rax rax L0x7fffffffd370;
(* add    %rax,%r8                                 #! PC = 0x4519089 *)
adds carry r8 r8 rax;
(* mov    %r8,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519092 *)
mov L0x7fffffffd300 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519097 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519100 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519104 *)
mov r8 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x567730; Value = 0x5c4b493d7e895edf; PC = 0x4519107 *)
mov rax L0x567730;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519111 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r9                                 #! PC = 0x4519115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4519125 *)
mov rax L0x567738;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519129 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r9                                 #! PC = 0x4519133 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519136 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519139 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4519143 *)
mov rax L0x567740;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffd378; PC = 0x4519147 *)
mull rdx rax rax L0x7fffffffd378;
(* add    %rax,%r9                                 #! PC = 0x4519151 *)
adds carry r9 r9 rax;
(* mov    %r9,0x40(%rsp)                           #! EA = L0x7fffffffd308; PC = 0x4519154 *)
mov L0x7fffffffd308 r9;
(* adc    %rdx,%r10                                #! PC = 0x4519159 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519162 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519166 *)
mov r9 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x567738; Value = 0xc9b79e77c61244bd; PC = 0x4519169 *)
mov rax L0x567738;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519173 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r10                                #! PC = 0x4519177 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519180 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519183 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4519187 *)
mov rax L0x567740;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x4519191 *)
mull rdx rax rax L0x7fffffffd380;
(* add    %rax,%r10                                #! PC = 0x4519195 *)
adds carry r10 r10 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd310; PC = 0x4519198 *)
mov L0x7fffffffd310 r10;
(* adc    %rdx,%r8                                 #! PC = 0x4519203 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519206 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsi),%rax                          #! EA = L0x567740; Value = 0x05116ade8818366d; PC = 0x4519210 *)
mov rax L0x567740;
(* mulq   0x28(%rcx)                               #! EA = L0x7fffffffd388; PC = 0x4519214 *)
mull rdx rax rax L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x4519218 *)
adds carry r8 r8 rax;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4519221 *)
mov L0x7fffffffd318 r8;
(* adc    %rdx,%r9                                 #! PC = 0x4519226 *)
adcs carry r9 r9 rdx carry;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd320; PC = 0x4519229 *)
mov L0x7fffffffd320 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519234 *)
mov r9 0@uint64;
(* movabs $0x89f3fffcfffcfffd,%rcx                 #! PC = 0x4519237 *)
mov rcx 0x89f3fffcfffcfffd@uint64;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd2c8; Value = 0x433ce9696e803e76; PC = 0x4519247 *)
mov r8 L0x7fffffffd2c8;
(* mov    %r8,%rax                                 #! PC = 0x4519251 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519254 *)
mull rdx rax rax rcx;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd2c8; PC = 0x4519257 *)
mov L0x7fffffffd2c8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519261 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519264 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519267 *)
adcs carry r9 r9 rdx carry;
(* xor    %r10,%r10                                #! PC = 0x4519270 *)
mov r10 0@uint64;
(* xor    %r8,%r8                                  #! PC = 0x4519273 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0xdd043ce0f91d449e; PC = 0x4519276 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519280 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519284 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519287 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519290 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x8(%rsp),%r9                            #! EA = L0x7fffffffd2d0; Value = 0xa21f514f8771be5e; PC = 0x4519294 *)
adds carry r9 r9 L0x7fffffffd2d0;
(* adc    $0x0,%r10                                #! PC = 0x4519299 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519303 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519307 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519310 *)
mull rdx rax rax rcx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd2d0; PC = 0x4519313 *)
mov L0x7fffffffd2d0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519318 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519321 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519324 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519327 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519331 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0xdd043ce0f91d449e; PC = 0x4519334 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519338 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519342 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519345 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519348 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xdce4c149f6aa8f8a; PC = 0x4519352 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519357 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519361 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519364 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519367 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x10(%rsp),%r10                          #! EA = L0x7fffffffd2d8; Value = 0x14a502afe74a36cb; PC = 0x4519371 *)
adds carry r10 r10 L0x7fffffffd2d8;
(* adc    $0x0,%r8                                 #! PC = 0x4519376 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519380 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519384 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519387 *)
mull rdx rax rax rcx;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd2d8; PC = 0x4519390 *)
mov L0x7fffffffd2d8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519395 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519398 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519401 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519404 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519408 *)
mov r10 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0xdd043ce0f91d449e; PC = 0x4519411 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519415 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519419 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519422 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519425 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xdce4c149f6aa8f8a; PC = 0x4519429 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519434 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519438 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519441 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519444 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x52fe28e90d8b414e; PC = 0x4519448 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519453 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519457 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519460 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519463 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x18(%rsp),%r8                           #! EA = L0x7fffffffd2e0; Value = 0xa06a031786d3d4f7; PC = 0x4519467 *)
adds carry r8 r8 L0x7fffffffd2e0;
(* adc    $0x0,%r9                                 #! PC = 0x4519472 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519476 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,%rax                                 #! PC = 0x4519480 *)
mov rax r8;
(* mul    %rcx                                     #! PC = 0x4519483 *)
mull rdx rax rax rcx;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffd2e0; PC = 0x4519486 *)
mov L0x7fffffffd2e0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519491 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r8                                 #! PC = 0x4519494 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519497 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519500 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %r8,%r8                                  #! PC = 0x4519504 *)
mov r8 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0xdd043ce0f91d449e; PC = 0x4519507 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519511 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519515 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519518 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519521 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xdce4c149f6aa8f8a; PC = 0x4519525 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519530 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519534 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519537 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519540 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x52fe28e90d8b414e; PC = 0x4519544 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519549 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519553 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519556 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519559 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x7980376bf67092e4; PC = 0x4519563 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519568 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r9                                 #! PC = 0x4519572 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519575 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519578 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x20(%rsp),%r9                           #! EA = L0x7fffffffd2e8; Value = 0xd74b87c5a903a012; PC = 0x4519582 *)
adds carry r9 r9 L0x7fffffffd2e8;
(* adc    $0x0,%r10                                #! PC = 0x4519587 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519591 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rax                                 #! PC = 0x4519595 *)
mov rax r9;
(* mul    %rcx                                     #! PC = 0x4519598 *)
mull rdx rax rax rcx;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd2e8; PC = 0x4519601 *)
mov L0x7fffffffd2e8 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519606 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r9                                 #! PC = 0x4519609 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519612 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519615 *)
adcs carry r8 r8 0x0@uint64 carry;
(* xor    %r9,%r9                                  #! PC = 0x4519619 *)
mov r9 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd2c8; Value = 0xdd043ce0f91d449e; PC = 0x4519622 *)
mov rax L0x7fffffffd2c8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519626 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519630 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519633 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519636 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xdce4c149f6aa8f8a; PC = 0x4519640 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519645 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519649 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519652 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519655 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x52fe28e90d8b414e; PC = 0x4519659 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519664 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4519668 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519671 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519674 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x7980376bf67092e4; PC = 0x4519678 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519683 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r10                                #! PC = 0x4519687 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519690 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519693 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x8bb2c8bf6f3d9333; PC = 0x4519697 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519702 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r10                                #! PC = 0x4519706 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519709 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519712 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x28(%rsp),%r10                          #! EA = L0x7fffffffd2f0; Value = 0x0924aeb5ae9226da; PC = 0x4519716 *)
adds carry r10 r10 L0x7fffffffd2f0;
(* adc    $0x0,%r8                                 #! PC = 0x4519721 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519725 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,%rax                                #! PC = 0x4519729 *)
mov rax r10;
(* mul    %rcx                                     #! PC = 0x4519732 *)
mull rdx rax rax rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd2f0; PC = 0x4519735 *)
mov L0x7fffffffd2f0 rax;
(* mulq   (%rbx)                                   #! EA = L0x46c0c8; PC = 0x4519740 *)
mull rdx rax rax L0x46c0c8;
(* add    %rax,%r10                                #! PC = 0x4519743 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519746 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519749 *)
adcs carry r9 r9 0x0@uint64 carry;
(* xor    %r10,%r10                                #! PC = 0x4519753 *)
mov r10 0@uint64;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd2d0; Value = 0xdce4c149f6aa8f8a; PC = 0x4519756 *)
mov rax L0x7fffffffd2d0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519761 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4519765 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519768 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519771 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x52fe28e90d8b414e; PC = 0x4519775 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519780 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4519784 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519787 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519790 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x7980376bf67092e4; PC = 0x4519794 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519799 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r8                                 #! PC = 0x4519803 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519806 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519809 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x8bb2c8bf6f3d9333; PC = 0x4519813 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519818 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r8                                 #! PC = 0x4519822 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519825 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519828 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc4ece778fcc87bf3; PC = 0x4519832 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x8(%rbx)                                #! EA = L0x46c0d0; PC = 0x4519837 *)
mull rdx rax rax L0x46c0d0;
(* add    %rax,%r8                                 #! PC = 0x4519841 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4519844 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4519847 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd2f8; Value = 0xf0955b80aa4a8ea2; PC = 0x4519851 *)
adds carry r8 r8 L0x7fffffffd2f8;
(* adc    $0x0,%r9                                 #! PC = 0x4519856 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4519860 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd2f8; PC = 0x4519864 *)
mov L0x7fffffffd2f8 r8;
(* xor    %r8,%r8                                  #! PC = 0x4519869 *)
mov r8 0@uint64;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd2d8; Value = 0x52fe28e90d8b414e; PC = 0x4519872 *)
mov rax L0x7fffffffd2d8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519877 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4519881 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519884 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519887 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x7980376bf67092e4; PC = 0x4519891 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519896 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r9                                 #! PC = 0x4519900 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519903 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519906 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x8bb2c8bf6f3d9333; PC = 0x4519910 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4519915 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r9                                 #! PC = 0x4519919 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519922 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519925 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc4ece778fcc87bf3; PC = 0x4519929 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x10(%rbx)                               #! EA = L0x46c0d8; PC = 0x4519934 *)
mull rdx rax rax L0x46c0d8;
(* add    %rax,%r9                                 #! PC = 0x4519938 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4519941 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519944 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd300; Value = 0x460aeba34ae70da4; PC = 0x4519948 *)
adds carry r9 r9 L0x7fffffffd300;
(* adc    $0x0,%r10                                #! PC = 0x4519953 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4519957 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd300; PC = 0x4519961 *)
mov L0x7fffffffd300 r9;
(* xor    %r9,%r9                                  #! PC = 0x4519966 *)
mov r9 0@uint64;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd2e0; Value = 0x7980376bf67092e4; PC = 0x4519969 *)
mov rax L0x7fffffffd2e0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4519974 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r10                                #! PC = 0x4519978 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4519981 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4519984 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x8bb2c8bf6f3d9333; PC = 0x4519988 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4519993 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r10                                #! PC = 0x4519997 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520000 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520003 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc4ece778fcc87bf3; PC = 0x4520007 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x18(%rbx)                               #! EA = L0x46c0e0; PC = 0x4520012 *)
mull rdx rax rax L0x46c0e0;
(* add    %rax,%r10                                #! PC = 0x4520016 *)
adds carry r10 r10 rax;
(* adc    %rdx,%r8                                 #! PC = 0x4520019 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520022 *)
adcs carry r9 r9 0x0@uint64 carry;
(* add    0x40(%rsp),%r10                          #! EA = L0x7fffffffd308; Value = 0x4fc1d8f0631a5c38; PC = 0x4520026 *)
adds carry r10 r10 L0x7fffffffd308;
(* adc    $0x0,%r8                                 #! PC = 0x4520031 *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x4520035 *)
adcs carry r9 r9 0x0@uint64 carry;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd308; PC = 0x4520039 *)
mov L0x7fffffffd308 r10;
(* xor    %r10,%r10                                #! PC = 0x4520044 *)
mov r10 0@uint64;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x8bb2c8bf6f3d9333; PC = 0x4520047 *)
mov rax L0x7fffffffd2e8;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520052 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r8                                 #! PC = 0x4520056 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520059 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520062 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc4ece778fcc87bf3; PC = 0x4520066 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x20(%rbx)                               #! EA = L0x46c0e8; PC = 0x4520071 *)
mull rdx rax rax L0x46c0e8;
(* add    %rax,%r8                                 #! PC = 0x4520075 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x4520078 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%r10                                #! PC = 0x4520081 *)
adcs carry r10 r10 0x0@uint64 carry;
(* add    0x48(%rsp),%r8                           #! EA = L0x7fffffffd310; Value = 0x617cbfe8268b3d95; PC = 0x4520085 *)
adds carry r8 r8 L0x7fffffffd310;
(* adc    $0x0,%r9                                 #! PC = 0x4520090 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x4520094 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r8,0x48(%rsp)                           #! EA = L0x7fffffffd310; PC = 0x4520098 *)
mov L0x7fffffffd310 r8;
(* xor    %r8,%r8                                  #! PC = 0x4520103 *)
mov r8 0@uint64;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc4ece778fcc87bf3; PC = 0x4520106 *)
mov rax L0x7fffffffd2f0;
(* mulq   0x28(%rbx)                               #! EA = L0x46c0f0; PC = 0x4520111 *)
mull rdx rax rax L0x46c0f0;
(* add    %rax,%r9                                 #! PC = 0x4520115 *)
adds carry r9 r9 rax;
(* adc    %rdx,%r10                                #! PC = 0x4520118 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520121 *)
adcs carry r8 r8 0x0@uint64 carry;
(* add    0x50(%rsp),%r9                           #! EA = L0x7fffffffd318; Value = 0xa5d8e5b1af32d7d5; PC = 0x4520125 *)
adds carry r9 r9 L0x7fffffffd318;
(* adc    $0x0,%r10                                #! PC = 0x4520130 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r8                                 #! PC = 0x4520134 *)
adcs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,0x50(%rsp)                           #! EA = L0x7fffffffd318; PC = 0x4520138 *)
mov L0x7fffffffd318 r9;
(* xor    %r9,%r9                                  #! PC = 0x4520143 *)
mov r9 0@uint64;
(* add    0x58(%rsp),%r10                          #! EA = L0x7fffffffd320; Value = 0x00194fa20135c616; PC = 0x4520146 *)
adds carry r10 r10 L0x7fffffffd320;
(* mov    %r10,0x58(%rsp)                          #! EA = L0x7fffffffd320; PC = 0x4520151 *)
mov L0x7fffffffd320 r10;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x87e34e61b1625267; PC = 0x4520156 *)
mov r11 L0x7fffffffd2f8;
(* mov    0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x9415bad94162ec1a; PC = 0x4520161 *)
mov r12 L0x7fffffffd300;
(* mov    0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xabd15b5df438da43; PC = 0x4520166 *)
mov r13 L0x7fffffffd308;
(* mov    0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x171b7fc96c70c3f0; PC = 0x4520171 *)
mov r14 L0x7fffffffd310;
(* mov    0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x8b07bd6efce5531f; PC = 0x4520176 *)
mov r15 L0x7fffffffd318;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x141a31d91a80df4a; PC = 0x4520181 *)
mov rcx L0x7fffffffd320;
(* sub    0x1c7c7(%rip),%r11        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4520186 *)
subb carry r11 r11 L0x46c0c8;
(* sbb    0x1c7c8(%rip),%r12        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4520193 *)
sbbs carry r12 r12 L0x46c0d0 carry;
(* sbb    0x1c7c9(%rip),%r13        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4520200 *)
sbbs carry r13 r13 L0x46c0d8 carry;
(* sbb    0x1c7ca(%rip),%r14        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4520207 *)
sbbs carry r14 r14 L0x46c0e0 carry;
(* sbb    0x1c7cb(%rip),%r15        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4520214 *)
sbbs carry r15 r15 L0x46c0e8 carry;
(* sbb    0x1c7cc(%rip),%rcx        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4520221 *)
sbbs carry rcx rcx L0x46c0f0 carry;
(* cmovb  0x30(%rsp),%r11                          #! EA = L0x7fffffffd2f8; Value = 0x87e34e61b1625267; PC = 0x4520228 *)
cmov r11 carry L0x7fffffffd2f8 r11;
(* cmovb  0x38(%rsp),%r12                          #! EA = L0x7fffffffd300; Value = 0x9415bad94162ec1a; PC = 0x4520234 *)
cmov r12 carry L0x7fffffffd300 r12;
(* cmovb  0x40(%rsp),%r13                          #! EA = L0x7fffffffd308; Value = 0xabd15b5df438da43; PC = 0x4520240 *)
cmov r13 carry L0x7fffffffd308 r13;
(* cmovb  0x48(%rsp),%r14                          #! EA = L0x7fffffffd310; Value = 0x171b7fc96c70c3f0; PC = 0x4520246 *)
cmov r14 carry L0x7fffffffd310 r14;
(* cmovb  0x50(%rsp),%r15                          #! EA = L0x7fffffffd318; Value = 0x8b07bd6efce5531f; PC = 0x4520252 *)
cmov r15 carry L0x7fffffffd318 r15;
(* cmovb  0x58(%rsp),%rcx                          #! EA = L0x7fffffffd320; Value = 0x141a31d91a80df4a; PC = 0x4520258 *)
cmov rcx carry L0x7fffffffd320 rcx;
(* mov    %r11,(%rdi)                              #! EA = L0x567718; PC = 0x4520264 *)
mov L0x567718 r11;
(* mov    %r12,0x8(%rdi)                           #! EA = L0x567720; PC = 0x4520267 *)
mov L0x567720 r12;
(* mov    %r13,0x10(%rdi)                          #! EA = L0x567728; PC = 0x4520271 *)
mov L0x567728 r13;
(* mov    %r14,0x18(%rdi)                          #! EA = L0x567730; PC = 0x4520275 *)
mov L0x567730 r14;
(* mov    %r15,0x20(%rdi)                          #! EA = L0x567738; PC = 0x4520279 *)
mov L0x567738 r15;
(* mov    %rcx,0x28(%rdi)                          #! EA = L0x567740; PC = 0x4520283 *)
mov L0x567740 rcx;
(* add    $0x60,%rsp                               #! PC = 0x4520287 *)
adds carry rsp rsp 0x60;
(* pop    %rbp                                     #! PC = 0x4520291 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4520292 *)
pop rbx;
(* pop    %r15                                     #! PC = 0x4520293 *)
pop r15;
(* pop    %r14                                     #! PC = 0x4520295 *)
pop r14;
(* pop    %r13                                     #! PC = 0x4520297 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4520299 *)
pop r12;
(* #retq                                           #! PC = 0x4520301 *)
#retq                                           #! 0x4520301 = 0x4520301;
(* lea    0x60(%rsp),%rsi                          #! PC = 0x4244193 *)
lea    %%EA,%%rsi                          #! 0x4244193 = 0x4244193;
(* mov    %rsi,%rdi                                #! PC = 0x4244198 *)
mov rdi rsi;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244201 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244201 = 0x4244201;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd3c0; Value = 0x48d8e91a30c8e4a0; PC = 0x4300437 *)
mov r8 L0x7fffffffd3c0;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd3c8; Value = 0xbc150f9f64afdfa2; PC = 0x4300443 *)
mov r9 L0x7fffffffd3c8;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd3d0; Value = 0x9a3e8a58c3a99794; PC = 0x4300450 *)
mov r10 L0x7fffffffd3d0;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3d8; Value = 0x4002691e7867ef1e; PC = 0x4300457 *)
mov r11 L0x7fffffffd3d8;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3e0; Value = 0x902b1ecfc5e8e577; PC = 0x4300464 *)
mov r12 L0x7fffffffd3e0;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3e8; Value = 0x19cbf9663311c399; PC = 0x4300471 *)
mov r13 L0x7fffffffd3e8;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd3c0; PC = 0x4300562 *)
mov L0x7fffffffd3c0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd3c8; PC = 0x4300565 *)
mov L0x7fffffffd3c8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd3d0; PC = 0x4300569 *)
mov L0x7fffffffd3d0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd3d8; PC = 0x4300573 *)
mov L0x7fffffffd3d8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd3e0; PC = 0x4300577 *)
mov L0x7fffffffd3e0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd3e8; PC = 0x4300581 *)
mov L0x7fffffffd3e8 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x60(%rsp),%rsi                          #! PC = 0x4244206 *)
lea    %%EA,%%rsi                          #! 0x4244206 = 0x4244206;
(* mov    %rsi,%rdi                                #! PC = 0x4244211 *)
mov rdi rsi;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244214 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244214 = 0x4244214;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd3c0; Value = 0xd7b2d23461921e95; PC = 0x4300437 *)
mov r8 L0x7fffffffd3c0;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd3c8; Value = 0x597e1f40180bbf44; PC = 0x4300443 *)
mov r9 L0x7fffffffd3c8;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd3d0; Value = 0xcd4c421090a23905; PC = 0x4300450 *)
mov r10 L0x7fffffffd3d0;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3d8; Value = 0x1b8d86b7fd4acb7d; PC = 0x4300457 *)
mov r11 L0x7fffffffd3d8;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3e0; Value = 0xd53a95e948861e17; PC = 0x4300464 *)
mov r12 L0x7fffffffd3e0;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3e8; Value = 0x1996e0e22ca3a098; PC = 0x4300471 *)
mov r13 L0x7fffffffd3e8;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd3c0; PC = 0x4300562 *)
mov L0x7fffffffd3c0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd3c8; PC = 0x4300565 *)
mov L0x7fffffffd3c8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd3d0; PC = 0x4300569 *)
mov L0x7fffffffd3d0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd3d8; PC = 0x4300573 *)
mov L0x7fffffffd3d8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd3e0; PC = 0x4300577 *)
mov L0x7fffffffd3e0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd3e8; PC = 0x4300581 *)
mov L0x7fffffffd3e8 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x60(%rsp),%rsi                          #! PC = 0x4244219 *)
lea    %%EA,%%rsi                          #! 0x4244219 = 0x4244219;
(* mov    %rsi,%rdi                                #! PC = 0x4244224 *)
mov rdi rsi;
(* #callq  0x427ba0 <fp_dbl_integ>                 #! PC = 0x4244227 *)
#callq  0x427ba0 <fp_dbl_integ>                 #! 0x4244227 = 0x4244227;
(* #jmpq   0x419e86 <fp_dblm_low>                  #! PC = 0x4357024 *)
#jmpq   0x419e86 <fp_dblm_low>                  #! 0x4357024 = 0x4357024;
(* push   %rbx                                     #! PC = 0x4300422 *)
push rbx;
(* push   %rbp                                     #! PC = 0x4300423 *)
push rbp;
(* push   %r12                                     #! PC = 0x4300424 *)
push r12;
(* push   %r13                                     #! PC = 0x4300426 *)
push r13;
(* xor    %rax,%rax                                #! PC = 0x4300428 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4300431 *)
mov rcx 0@uint64;
(* xor    %rdx,%rdx                                #! PC = 0x4300434 *)
mov rdx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd3c0; Value = 0xf566a468c324927f; PC = 0x4300437 *)
mov r8 L0x7fffffffd3c0;
(* add    %r8,%r8                                  #! PC = 0x4300440 *)
adds carry r8 r8 r8;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd3c8; Value = 0x94503e817ec37e89; PC = 0x4300443 *)
mov r9 L0x7fffffffd3c8;
(* adc    %r9,%r9                                  #! PC = 0x4300447 *)
adcs carry r9 r9 r9 carry;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd3d0; Value = 0x3367b1802a937be6; PC = 0x4300450 *)
mov r10 L0x7fffffffd3d0;
(* adc    %r10,%r10                                #! PC = 0x4300454 *)
adcs carry r10 r10 r10 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd3d8; Value = 0xd2a3c1eb0710843c; PC = 0x4300457 *)
mov r11 L0x7fffffffd3d8;
(* adc    %r11,%r11                                #! PC = 0x4300461 *)
adcs carry r11 r11 r11 carry;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3e0; Value = 0x5f59841c4dc08f56; PC = 0x4300464 *)
mov r12 L0x7fffffffd3e0;
(* adc    %r12,%r12                                #! PC = 0x4300468 *)
adcs carry r12 r12 r12 carry;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3e8; Value = 0x192cafda1fc75a97; PC = 0x4300471 *)
mov r13 L0x7fffffffd3e8;
(* adc    %r13,%r13                                #! PC = 0x4300475 *)
adcs carry r13 r13 r13 carry;
(* mov    %r8,%rax                                 #! PC = 0x4300478 *)
mov rax r8;
(* mov    %r9,%rcx                                 #! PC = 0x4300481 *)
mov rcx r9;
(* mov    %r10,%rdx                                #! PC = 0x4300484 *)
mov rdx r10;
(* mov    %r11,%rsi                                #! PC = 0x4300487 *)
mov rsi r11;
(* mov    %r12,%rbx                                #! PC = 0x4300490 *)
mov rbx r12;
(* mov    %r13,%rbp                                #! PC = 0x4300493 *)
mov rbp r13;
(* sub    0x521f1(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4300496 *)
subb carry rax rax L0x46c0c8;
(* sbb    0x521f2(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4300503 *)
sbbs carry rcx rcx L0x46c0d0 carry;
(* sbb    0x521f3(%rip),%rdx        # 0x46c0d8     #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4300510 *)
sbbs carry rdx rdx L0x46c0d8 carry;
(* sbb    0x521f4(%rip),%rsi        # 0x46c0e0     #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4300517 *)
sbbs carry rsi rsi L0x46c0e0 carry;
(* sbb    0x521f5(%rip),%rbx        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4300524 *)
sbbs carry rbx rbx L0x46c0e8 carry;
(* sbb    0x521f6(%rip),%rbp        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4300531 *)
sbbs carry rbp rbp L0x46c0f0 carry;
(* cmovae %rax,%r8                                 #! PC = 0x4300538 *)
cmov r8 carry r8 rax;
(* cmovae %rcx,%r9                                 #! PC = 0x4300542 *)
cmov r9 carry r9 rcx;
(* cmovae %rdx,%r10                                #! PC = 0x4300546 *)
cmov r10 carry r10 rdx;
(* cmovae %rsi,%r11                                #! PC = 0x4300550 *)
cmov r11 carry r11 rsi;
(* cmovae %rbx,%r12                                #! PC = 0x4300554 *)
cmov r12 carry r12 rbx;
(* cmovae %rbp,%r13                                #! PC = 0x4300558 *)
cmov r13 carry r13 rbp;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd3c0; PC = 0x4300562 *)
mov L0x7fffffffd3c0 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd3c8; PC = 0x4300565 *)
mov L0x7fffffffd3c8 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd3d0; PC = 0x4300569 *)
mov L0x7fffffffd3d0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd3d8; PC = 0x4300573 *)
mov L0x7fffffffd3d8 r11;
(* mov    %r12,0x20(%rdi)                          #! EA = L0x7fffffffd3e0; PC = 0x4300577 *)
mov L0x7fffffffd3e0 r12;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffffd3e8; PC = 0x4300581 *)
mov L0x7fffffffd3e8 r13;
(* xor    %rax,%rax                                #! PC = 0x4300585 *)
mov rax 0@uint64;
(* pop    %r13                                     #! PC = 0x4300588 *)
pop r13;
(* pop    %r12                                     #! PC = 0x4300590 *)
pop r12;
(* pop    %rbp                                     #! PC = 0x4300592 *)
pop rbp;
(* pop    %rbx                                     #! PC = 0x4300593 *)
pop rbx;
(* #retq                                           #! PC = 0x4300594 *)
#retq                                           #! 0x4300594 = 0x4300594;
(* lea    0x60(%rsp),%rdx                          #! PC = 0x4244232 *)
lea    %%EA,%%rdx                          #! 0x4244232 = 0x4244232;
(* mov    %rbp,%rsi                                #! PC = 0x4244237 *)
mov rsi rbp;
(* mov    %rbp,%rdi                                #! PC = 0x4244240 *)
mov rdi rbp;
(* #callq  0x427aa0 <fp_sub_integ>                 #! PC = 0x4244243 *)
#callq  0x427aa0 <fp_sub_integ>                 #! 0x4244243 = 0x4244243;
(* #jmpq   0x419ba2 <fp_subm_low>                  #! PC = 0x4356768 *)
#jmpq   0x419ba2 <fp_subm_low>                  #! 0x4356768 = 0x4356768;
(* xor    %rax,%rax                                #! PC = 0x4299682 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4299685 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x567718; Value = 0x87e34e61b1625267; PC = 0x4299688 *)
mov r8 L0x567718;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffd3c0; Value = 0x30ce48d186497a53; PC = 0x4299691 *)
subb carry r8 r8 L0x7fffffffd3c0;
(* mov    %r8,(%rdi)                               #! EA = L0x567718; PC = 0x4299694 *)
mov L0x567718 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x567720; Value = 0x9415bad94162ec1a; PC = 0x4299697 *)
mov r8 L0x567720;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffd3c8; Value = 0x09f47d044c32fd14; PC = 0x4299701 *)
sbbs carry r8 r8 L0x7fffffffd3c8 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x567720; PC = 0x4299705 *)
mov L0x567720 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x567728; Value = 0xabd15b5df438da43; PC = 0x4299709 *)
mov r8 L0x567728;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffd3d0; Value = 0xff9e905f5e7601a9; PC = 0x4299713 *)
sbbs carry r8 r8 L0x7fffffffd3d0 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x567728; PC = 0x4299717 *)
mov L0x567728 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x567730; Value = 0x171b7fc96c70c3f0; PC = 0x4299721 *)
mov r8 L0x567730;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffd3d8; Value = 0x40d038511a9bf5b8; PC = 0x4299725 *)
sbbs carry r8 r8 L0x7fffffffd3d8 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x567730; PC = 0x4299729 *)
mov L0x567730 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x567738; Value = 0x8b07bd6efce5531f; PC = 0x4299733 *)
mov r8 L0x567738;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffd3e0; Value = 0x73976082583571d6; PC = 0x4299737 *)
sbbs carry r8 r8 L0x7fffffffd3e0 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x567738; PC = 0x4299741 *)
mov L0x567738 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x567740; Value = 0x141a31d91a80df4a; PC = 0x4299745 *)
mov r8 L0x567740;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffd3e8; Value = 0x18584dca060ece94; PC = 0x4299749 *)
sbbs carry r8 r8 L0x7fffffffd3e8 carry;
(* mov    %r8,0x28(%rdi)                           #! EA = L0x567740; PC = 0x4299753 *)
mov L0x567740 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4299757 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4299764 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4299771 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4299778 *)
mov r11 0x0@uint64;
(* cmovb  0x524b7(%rip),%rax        # 0x46c0c8     #! EA = L0x46c0c8; Value = 0xb9feffffffffaaab; PC = 0x4299785 *)
cmov rax carry L0x46c0c8 rax;
(* cmovb  0x524b7(%rip),%rcx        # 0x46c0d0     #! EA = L0x46c0d0; Value = 0x1eabfffeb153ffff; PC = 0x4299793 *)
cmov rcx carry L0x46c0d0 rcx;
(* cmovb  0x524b7(%rip),%r8        # 0x46c0d8      #! EA = L0x46c0d8; Value = 0x6730d2a0f6b0f624; PC = 0x4299801 *)
cmov r8 carry L0x46c0d8 r8;
(* cmovb  0x524b7(%rip),%r9        # 0x46c0e0      #! EA = L0x46c0e0; Value = 0x64774b84f38512bf; PC = 0x4299809 *)
cmov r9 carry L0x46c0e0 r9;
(* cmovb  0x524b7(%rip),%r10        # 0x46c0e8     #! EA = L0x46c0e8; Value = 0x4b1ba7b6434bacd7; PC = 0x4299817 *)
cmov r10 carry L0x46c0e8 r10;
(* cmovb  0x524b7(%rip),%r11        # 0x46c0f0     #! EA = L0x46c0f0; Value = 0x1a0111ea397fe69a; PC = 0x4299825 *)
cmov r11 carry L0x46c0f0 r11;
(* add    %rax,(%rdi)                              #! EA = L0x567718; PC = 0x4299833 *)
adds carry L0x567718 L0x567718 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x567720; PC = 0x4299836 *)
adcs carry L0x567720 L0x567720 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x567728; PC = 0x4299840 *)
adcs carry L0x567728 L0x567728 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x567730; PC = 0x4299844 *)
adcs carry L0x567730 L0x567730 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x567738; PC = 0x4299848 *)
adcs carry L0x567738 L0x567738 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x567740; PC = 0x4299852 *)
adcs carry L0x567740 L0x567740 r11 carry;
(* #retq                                           #! PC = 0x4299856 *)
#retq                                           #! 0x4299856 = 0x4299856;
(* movl   $0x0,0x90(%rbx)                          #! EA = L0x567778; PC = 0x4244248 *)
movl   $0x0,%%L0x567778                          #! L0x567778 = L0x567778; 0x4244248 = 0x4244248;
(* add    $0x120,%rsp                              #! PC = 0x4244258 *)
adds carry rsp rsp 0x120;
(* pop    %rbx                                     #! PC = 0x4244265 *)
pop rbx;
(* pop    %rbp                                     #! PC = 0x4244266 *)
pop rbp;
(* pop    %r12                                     #! PC = 0x4244267 *)
pop r12;
(* pop    %r13                                     #! PC = 0x4244269 *)
pop r13;
(* pop    %r14                                     #! PC = 0x4244271 *)
pop r14;
(* #retq                                           #! PC = 0x4244273 *)
#retq                                           #! 0x4244273 = 0x4244273;

{
  true
  &&
  true
}
